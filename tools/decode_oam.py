#!/usr/bin/env python3
"""Repository-aware Wario Land 4 OAM auditor, decoder, and region generator.

Recommended evidence-based workflow from the repository root::

    python3 tools/decode_oam.py stage_ejection --audit
    python3 tools/decode_oam.py stage_ejection --auto
    python3 tools/decode_oam.py stage_ejection --auto --apply

Automatic mode classifies direct OAM frames, OAM frame-pointer tables, and
AnimationFrame tables from C declarations, consumers, address ownership, and
binary structure. Data copied to OBJ/BG VRAM or palette RAM is excluded.
Symbol names are never sufficient evidence for automatic rewriting.

The legacy s...Oam animation-table workflow remains available without --auto.
Preview is the default. Source files are modified only with --apply.
"""
from __future__ import annotations

import argparse
import dataclasses
import hashlib
import os
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path
from typing import Iterable, NoReturn, Sequence

ROM_BASE = 0x08000000

SIZE_NAMES = {
    (0, 0): "SPRITE_SIZE_8x8",
    (0, 1): "SPRITE_SIZE_16x16",
    (0, 2): "SPRITE_SIZE_32x32",
    (0, 3): "SPRITE_SIZE_64x64",
    (1, 0): "SPRITE_SIZE_16x8",
    (1, 1): "SPRITE_SIZE_32x8",
    (1, 2): "SPRITE_SIZE_32x16",
    (1, 3): "SPRITE_SIZE_64x32",
    (2, 0): "SPRITE_SIZE_8x16",
    (2, 1): "SPRITE_SIZE_8x32",
    (2, 2): "SPRITE_SIZE_16x32",
    (2, 3): "SPRITE_SIZE_32x64",
}

ANIM_SYMBOL_RE = re.compile(r"\b(s[A-Za-z0-9_]*Oam)\b")
SYMBOL_RE = re.compile(r"\b(s[A-Za-z_][A-Za-z0-9_]*)\b")
EXTERN_ARRAY_RE = re.compile(
    r"\bextern\s+(?P<type>[^;{}]+?)\s+(?P<name>s[A-Za-z_][A-Za-z0-9_]*)"
    r"\s*\[(?P<count>[^]]*)\]\s*;",
    re.S,
)
REGION_HEADER_RE = re.compile(
    r"Shared\s+sprite\s+data\s+region:\s*0x([0-9A-Fa-f]{8})\s*-\s*0x([0-9A-Fa-f]{8})",
    re.I,
)
ADDRESS_COMMENT_RE = re.compile(
    r"/\*\s*0x([0-9A-Fa-f]{8})(?:\s*-\s*0x([0-9A-Fa-f]{8}))?[^*]*\*/"
)
RANGE_ARRAY_RE = re.compile(
    r"(?P<comment>/\*\s*0x(?P<start>[0-9A-Fa-f]{8})\s*-\s*"
    r"0x(?P<end>[0-9A-Fa-f]{8})[^*]*\*/\s*)"
    r"(?:static\s+)?const\s+(?:unsigned\s+char|u8)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*\[\s*(?:0x[0-9A-Fa-f]+|[0-9]+)?\s*\]"
    r"(?:\s*__attribute__\s*\(\(.*?\)\))?\s*=\s*\{"
    r"(?P<body>.*?)\n\s*\};",
    re.S,
)
HEX_BYTE_RE = re.compile(r"0x([0-9A-Fa-f]{1,2})\b")
GLOBAL_LABEL_RE_TEMPLATE = (
    r"(?:^|\n)\s*\.global\s+{symbol}\s*\n\s*{symbol}:\s*\n\s*"
    r"baserom_blob\s+0x([0-9A-Fa-f]+)\s*,\s*0x([0-9A-Fa-f]+)"
)


class ToolError(RuntimeError):
    pass


@dataclasses.dataclass(frozen=True)
class RegionFile:
    path: Path
    start: int
    end: int


@dataclasses.dataclass(frozen=True)
class RawArray:
    path: Path
    name: str
    start: int
    end: int
    data: bytes
    match_start: int
    match_end: int

    @property
    def size(self) -> int:
        return self.end - self.start


@dataclasses.dataclass(frozen=True)
class AnimationRange:
    name: str
    start: int
    end: int
    asm_path: Path


@dataclasses.dataclass(frozen=True)
class AnimationEntry:
    frame_address: int | None
    duration: int

    @property
    def is_terminator(self) -> bool:
        return self.frame_address is None


@dataclasses.dataclass(frozen=True)
class OamEntry:
    attr0: int
    attr1: int
    attr2: int
    x: int
    y: int
    size_name: str
    flip: str
    tile: int
    palette: int
    priority: int


@dataclasses.dataclass(frozen=True)
class OamFrame:
    address: int
    name: str
    entries: tuple[OamEntry, ...]

    @property
    def size(self) -> int:
        return 2 + 6 * len(self.entries)


@dataclasses.dataclass(frozen=True)
class SymbolDeclaration:
    name: str
    type_text: str
    count_text: str
    path: Path


@dataclasses.dataclass(frozen=True)
class OamCandidate:
    name: str
    kind: str
    confidence: str
    reasons: tuple[str, ...]
    declaration: SymbolDeclaration | None
    start: int | None = None
    end: int | None = None
    selected: bool = False
    error: str | None = None


@dataclasses.dataclass(frozen=True)
class PointerTableEntry:
    frame_address: int
    frame_name: str


@dataclasses.dataclass(frozen=True)
class OamPointerTable:
    name: str
    start: int
    end: int
    entries: tuple[PointerTableEntry, ...]


@dataclasses.dataclass(frozen=True)
class TypedObject:
    start: int
    end: int
    name: str
    code: str
    kind: str
    data: bytes = b""


@dataclasses.dataclass(frozen=True)
class AsmBlobSegment:
    start: int
    end: int
    label: str | None


@dataclasses.dataclass(frozen=True)
class AsmBlobLayout:
    path: Path
    start: int
    end: int
    segments: tuple[AsmBlobSegment, ...]
    safe_to_replace: bool
    unsafe_lines: tuple[str, ...]


@dataclasses.dataclass(frozen=True)
class RegionPlan:
    layout: AsmBlobLayout
    output_path: Path
    objects: tuple[TypedObject, ...]
    linker_path: Path | None
    linker_old_token: str | None
    linker_new_token: str | None
    blockers: tuple[str, ...]


@dataclasses.dataclass
class Discovery:
    root: Path
    module: str
    source_path: Path
    rom_path: Path | None
    symbols: list[str]
    animations: list[AnimationRange]
    arrays: list[RawArray]
    regions: list[RegionFile]
    frames: list[OamFrame]
    typed_objects: list[TypedObject]
    candidates: list[OamCandidate] = dataclasses.field(default_factory=list)
    pointer_tables: list[OamPointerTable] = dataclasses.field(default_factory=list)
    diagnostics: list[str] = dataclasses.field(default_factory=list)
    mode: str = "legacy"


def die(message: str) -> NoReturn:
    raise ToolError(message)


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def signed(value: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (value ^ sign) - sign


def camel_module(module: str) -> str:
    return "".join(part[:1].upper() + part[1:] for part in module.split("_"))


def repository_root(start: Path) -> Path:
    start = start.resolve()
    try:
        output = subprocess.check_output(
            ["git", "-C", str(start), "rev-parse", "--show-toplevel"],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        return Path(output)
    except (subprocess.CalledProcessError, FileNotFoundError):
        for candidate in [start, *start.parents]:
            if (candidate / "src").is_dir() and (candidate / "include").is_dir():
                return candidate
    die("run this tool inside the Wario Land 4 repository")


def infer_module(root: Path) -> str:
    try:
        branch = subprocess.check_output(
            ["git", "-C", str(root), "branch", "--show-current"], text=True
        ).strip()
    except (subprocess.CalledProcessError, FileNotFoundError):
        branch = ""
    match = re.search(r"Match_disasm_([A-Za-z0-9_]+)", branch)
    if match:
        return match.group(1)

    try:
        changed = subprocess.check_output(
            ["git", "-C", str(root), "status", "--porcelain"], text=True
        ).splitlines()
    except (subprocess.CalledProcessError, FileNotFoundError):
        changed = []
    modules = set()
    for line in changed:
        path = line[3:].strip()
        match = re.fullmatch(r"src/sprite_ai/([A-Za-z0-9_]+)\.c", path)
        if match:
            modules.add(match.group(1))
    if len(modules) == 1:
        return next(iter(modules))
    die("could not infer the module; use: python3 tools/decode_oam.py pinball")


def find_source(root: Path, module: str) -> Path:
    candidates = [
        root / "src" / "sprite_ai" / f"{module}.c",
        root / "src" / "minigames" / f"{module}.c",
        root / "src" / f"{module}.c",
    ]
    for path in candidates:
        if path.is_file():
            return path
    die(f"could not find the source file for module '{module}'")


def find_rom_optional(root: Path) -> Path | None:
    candidates = [
        root / "baserom.us.gba",
        root / "baserom_us.gba",
        root / "baserom.gba",
        root / "rom.gba",
    ]
    candidates.extend(sorted(root.glob("baserom*.gba")))
    seen: set[Path] = set()
    for path in candidates:
        if path in seen:
            continue
        seen.add(path)
        if path.is_file():
            return path
    return None


def find_rom(root: Path) -> Path:
    path = find_rom_optional(root)
    if path is not None:
        return path
    die("could not find baserom.us.gba (or another baserom*.gba) in the repository root")


def referenced_animation_symbols(source_path: Path, module: str) -> list[str]:
    text = source_path.read_text(encoding="utf-8", errors="replace")
    symbols = sorted(set(ANIM_SYMBOL_RE.findall(text)))
    prefix = f"s{camel_module(module)}"
    preferred = [symbol for symbol in symbols if symbol.startswith(prefix)]
    return preferred or symbols




def local_include_paths(root: Path, source_path: Path) -> list[Path]:
    """Return the source and recursively included project headers.

    Only quote includes are followed. System/SDK headers are intentionally not
    searched, and declarations are later filtered to symbols used by the module.
    """
    result: list[Path] = []
    queue = [source_path]
    seen: set[Path] = set()
    include_re = re.compile(r'^\s*#\s*include\s+"([^"]+)"', re.M)
    while queue:
        path = queue.pop(0).resolve()
        if path in seen or not path.is_file():
            continue
        seen.add(path)
        result.append(path)
        text = path.read_text(encoding="utf-8", errors="replace")
        for name in include_re.findall(text):
            candidates = [path.parent / name, root / "include" / name, root / name]
            for candidate in candidates:
                if candidate.is_file():
                    queue.append(candidate)
                    break
    return result


def parse_symbol_declarations(root: Path, source_path: Path) -> dict[str, SymbolDeclaration]:
    source_text = source_path.read_text(encoding="utf-8", errors="replace")
    referenced = set(SYMBOL_RE.findall(source_text))
    declarations: dict[str, SymbolDeclaration] = {}
    for path in local_include_paths(root, source_path):
        text = path.read_text(encoding="utf-8", errors="replace")
        text = re.sub(r"/\*.*?\*/", " ", text, flags=re.S)
        text = re.sub(r"//.*", " ", text)
        for match in EXTERN_ARRAY_RE.finditer(text):
            name = match.group("name")
            if name not in referenced:
                continue
            declaration = SymbolDeclaration(
                name=name,
                type_text=" ".join(match.group("type").split()),
                count_text=match.group("count").strip(),
                path=path,
            )
            previous = declarations.get(name)
            if previous is not None and previous.type_text != declaration.type_text:
                die(
                    f"conflicting declarations for {name}: {previous.type_text} in "
                    f"{previous.path.relative_to(root)} and {declaration.type_text} in "
                    f"{path.relative_to(root)}"
                )
            declarations[name] = declaration
    return declarations


def normalized_type(type_text: str) -> str:
    return re.sub(r"\s+", "", type_text).replace("struct", "struct")


def direct_frame_usage(source_text: str, symbol: str) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    escaped = re.escape(symbol)
    for assignment in re.finditer(rf"\b([A-Za-z_][A-Za-z0-9_]*)\s*=\s*{escaped}\s*;", source_text):
        variable = assignment.group(1)
        declaration_re = re.compile(rf"\b(?:const\s+)?u16\s*\*[^;\n]*\b{re.escape(variable)}\b")
        if not declaration_re.search(source_text):
            continue
        window = source_text[assignment.end():assignment.end() + 2200]
        if re.search(rf"\*\s*{re.escape(variable)}\b", window) and re.search(
            rf"\b{re.escape(variable)}\s*\+\+|\+\+\s*{re.escape(variable)}\b", window
        ):
            reasons.append(
                f"assigned to const u16 pointer '{variable}', then dereferenced and advanced as an OAM stream"
            )
            return True, reasons
    return False, reasons


def pointer_table_usage(source_text: str, symbol: str) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    escaped = re.escape(symbol)
    indexed = re.search(rf"\b{escaped}\s*\[[^]]+\]", source_text)
    assigned = re.search(rf"\b([A-Za-z_][A-Za-z0-9_]*)\s*=\s*{escaped}\s*;", source_text)
    if indexed:
        reasons.append("indexed directly as a table")
        return True, reasons
    if assigned:
        variable = assigned.group(1)
        window = source_text[assigned.end():assigned.end() + 1200]
        if re.search(rf"\b{re.escape(variable)}\s*\[[^]]+\]", window):
            reasons.append(f"assigned to '{variable}' and indexed as a frame-pointer table")
            return True, reasons
    return False, reasons


def dma_classification(source_text: str, symbol: str) -> tuple[str | None, list[str]]:
    """Classify data copied to a hardware memory class.

    The destination, not the symbol name, is the authoritative signal.
    """
    reasons: list[str] = []
    escaped = re.escape(symbol)
    src_re = re.compile(rf"->src\s*=\s*[^;]*\b{escaped}\b[^;]*;")
    for match in src_re.finditer(source_text):
        window = source_text[match.end():match.end() + 600]
        next_src = window.find("->src")
        if next_src >= 0:
            window = window[:next_src]
        dst_match = re.search(r"->dst\s*=\s*([^;]+);", window)
        if not dst_match:
            continue
        destination = re.sub(r"\s+", "", dst_match.group(1))
        numeric_match = re.search(r"0x([0-9A-Fa-f]{8})", destination)
        address = int(numeric_match.group(1), 16) if numeric_match else None
        if address is not None:
            if 0x05000200 <= address < 0x05000400:
                reasons.append(f"DMA destination 0x{address:08X} is OBJ palette RAM")
                return "obj-palette", reasons
            if 0x05000000 <= address < 0x05000200:
                reasons.append(f"DMA destination 0x{address:08X} is BG palette RAM")
                return "bg-palette", reasons
            if 0x06010000 <= address < 0x06018000:
                reasons.append(f"DMA destination 0x{address:08X} is OBJ VRAM")
                return "obj-tiles", reasons
            if 0x06000000 <= address < 0x06010000:
                # A screen base destination strongly indicates a tilemap.
                if address & 0x7FF == 0 and address >= 0x06008000:
                    reasons.append(f"DMA destination 0x{address:08X} is a BG screen block")
                    return "bg-tilemap", reasons
                reasons.append(f"DMA destination 0x{address:08X} is BG character VRAM")
                return "bg-tiles", reasons
        upper = destination.upper()
        symbolic = {
            "OBJ_PLTT": "obj-palette",
            "OBJ_PALETTE": "obj-palette",
            "OBJ_VRAM": "obj-tiles",
            "OBJ_VRAM0": "obj-tiles",
            "BG_PLTT": "bg-palette",
            "BG_PALETTE": "bg-palette",
            "BG_VRAM": "bg-tiles",
        }
        for token, kind in symbolic.items():
            if token in upper:
                reasons.append(f"DMA destination '{dst_match.group(1).strip()}' identifies {kind}")
                return kind, reasons
    return None, reasons


def declaration_kind(declaration: SymbolDeclaration, source_text: str) -> tuple[str, str, list[str]]:
    type_text = normalized_type(declaration.type_text)
    reasons = [f"declared as '{declaration.type_text}[]'"]
    dma_kind, dma_reasons = dma_classification(source_text, declaration.name)
    if dma_kind is not None:
        return dma_kind, "NO", reasons + dma_reasons
    if "AnimationFrameU16" in declaration.type_text:
        return "animation-u16", "NO", reasons + [
            "AnimationFrameU16 requires a separate 16-bit-duration decoder"
        ]
    if re.search(r"\bAnimationFrame\b", declaration.type_text):
        return "animation", "HIGH", reasons
    if "u16" in type_text and "*" in type_text:
        used, usage_reasons = pointer_table_usage(source_text, declaration.name)
        confidence = "HIGH" if used else "MEDIUM"
        return "pointer-table", confidence, reasons + usage_reasons
    if type_text in {"constu16", "u16", "volatileconstu16"}:
        used, usage_reasons = direct_frame_usage(source_text, declaration.name)
        confidence = "HIGH" if used else "MEDIUM"
        return "frame", confidence, reasons + usage_reasons
    if any(token in type_text for token in ("u8", "s8", "u16", "s16", "u32", "s32")):
        return "numeric-table", "NO", reasons + ["scalar array with no OAM consumer evidence"]
    return "unknown", "LOW", reasons


def parse_symbol_overrides(values: Sequence[str]) -> dict[str, str]:
    allowed = {"animation", "pointer-table", "frame", "ignore"}
    result: dict[str, str] = {}
    for value in values:
        if ":" not in value:
            die(f"invalid --symbol '{value}'; expected NAME:animation|pointer-table|frame|ignore")
        name, kind = value.rsplit(":", 1)
        if not re.fullmatch(r"s[A-Za-z_][A-Za-z0-9_]*", name):
            die(f"invalid symbol name in --symbol: {name}")
        if kind not in allowed:
            die(f"invalid --symbol kind '{kind}' for {name}; choose one of {sorted(allowed)}")
        result[name] = kind
    return result



def parse_typed_definitions(root: Path) -> dict[str, tuple[str, Path]]:
    patterns = [
        ("animation", re.compile(r"^\s*(?:static\s+)?const\s+struct\s+AnimationFrame\s+(s[A-Za-z_][A-Za-z0-9_]*)\s*\[", re.M)),
        ("pointer-table", re.compile(r"^\s*(?:static\s+)?const\s+u16\s*\*\s*const\s+(s[A-Za-z_][A-Za-z0-9_]*)\s*\[", re.M)),
        ("frame", re.compile(r"^\s*(?:static\s+)?const\s+u16\s+(s[A-Za-z_][A-Za-z0-9_]*)\s*\[", re.M)),
    ]
    result: dict[str, tuple[str, Path]] = {}
    for path in candidate_region_paths(root):
        text = path.read_text(encoding="utf-8", errors="replace")
        for kind, pattern in patterns:
            for name in pattern.findall(text):
                previous = result.get(name)
                if previous is not None and previous != (kind, path):
                    die(
                        f"typed symbol {name} has multiple definitions: "
                        f"{previous[1].relative_to(root)} and {path.relative_to(root)}"
                    )
                result[name] = (kind, path)
    return result


def exact_array_by_name(arrays: list[RawArray], name: str) -> RawArray | None:
    matches = [array for array in arrays if array.name == name]
    if len(matches) > 1:
        locations = ", ".join(str(item.path) for item in matches)
        die(f"raw symbol {name} has multiple Method 3 definitions: {locations}")
    return matches[0] if matches else None


def candidate_asm_range(root: Path, name: str) -> AnimationRange | None:
    matches = find_asm_animation_ranges(root, [name])
    return matches[0] if matches else None


def classify_candidates(
    root: Path,
    source_path: Path,
    arrays: list[RawArray],
    overrides: dict[str, str],
) -> list[OamCandidate]:
    source_text = source_path.read_text(encoding="utf-8", errors="replace")
    declarations = parse_symbol_declarations(root, source_path)
    typed_definitions = parse_typed_definitions(root)
    candidates: list[OamCandidate] = []
    for name, declaration in sorted(declarations.items()):
        kind, confidence, reasons = declaration_kind(declaration, source_text)
        if name in overrides:
            override = overrides[name]
            if override == "ignore":
                kind, confidence = "ignored", "NO"
                reasons.append("explicitly ignored by --symbol")
            else:
                kind, confidence = override, "HIGH"
                reasons.append(f"explicit --symbol override selected kind '{override}'")
        raw = exact_array_by_name(arrays, name)
        typed = typed_definitions.get(name)
        if raw is None and typed is not None:
            typed_kind, typed_path = typed
            kind = f"already-{typed_kind}"
            confidence = "NO"
            reasons.append(f"already decoded in {typed_path.relative_to(root)}")
        asm_range = None if raw is not None or typed is not None else candidate_asm_range(root, name)
        start = raw.start if raw else (asm_range.start if asm_range else None)
        end = raw.end if raw else (asm_range.end if asm_range else None)
        if start is None and typed is None:
            reasons.append("no named Method 3 array or ASM label was found")
            if confidence == "HIGH":
                confidence = "MEDIUM"
        selected = confidence == "HIGH" and kind in {"animation", "pointer-table", "frame"}
        candidates.append(
            OamCandidate(
                name=name,
                kind=kind,
                confidence=confidence,
                reasons=tuple(reasons),
                declaration=declaration,
                start=start,
                end=end,
                selected=selected,
            )
        )
    # Preserve a low-confidence fallback for legacy source references that lack
    # declarations, but never auto-apply based on a name alone.
    declared = set(declarations)
    for name in sorted(set(ANIM_SYMBOL_RE.findall(source_text)) - declared):
        raw = exact_array_by_name(arrays, name)
        candidates.append(
            OamCandidate(
                name=name,
                kind="unknown-oam-name",
                confidence="LOW",
                reasons=("symbol name ends in Oam, but no usable declaration or consumer proof was found",),
                declaration=None,
                start=raw.start if raw else None,
                end=raw.end if raw else None,
                selected=False,
            )
        )
    return candidates

def find_asm_animation_ranges(root: Path, symbols: Iterable[str]) -> list[AnimationRange]:
    """Find labels and the first following baserom_blob, tolerating spacing/directives."""
    asm_paths = list((root / "asm").rglob("*.s")) if (root / "asm").is_dir() else []
    wanted = set(symbols)
    found_by_symbol: dict[str, list[AnimationRange]] = {name: [] for name in wanted}
    global_re = re.compile(r"^\s*\.global\s+([A-Za-z_][A-Za-z0-9_]*)\s*$")
    label_re = re.compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*):\s*$")
    blob_re = re.compile(r"^\s*baserom_blob\s+0x([0-9A-Fa-f]+)\s*,\s*0x([0-9A-Fa-f]+)")
    for path in asm_paths:
        lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
        globals_seen: set[str] = set()
        for i, line in enumerate(lines):
            gm = global_re.match(line)
            if gm:
                globals_seen.add(gm.group(1))
                continue
            lm = label_re.match(line)
            if not lm or lm.group(1) not in wanted:
                continue
            symbol = lm.group(1)
            # Search forward until another non-local label; allow .align/.section/comments/blank lines.
            for follow in lines[i + 1 :]:
                next_label = label_re.match(follow)
                if next_label and not next_label.group(1).startswith(".L"):
                    break
                bm = blob_re.match(follow)
                if bm:
                    found_by_symbol[symbol].append(AnimationRange(
                        symbol, ROM_BASE + int(bm.group(1), 16),
                        ROM_BASE + int(bm.group(2), 16), path))
                    break
    ranges: list[AnimationRange] = []
    missing: list[str] = []
    for symbol in sorted(wanted):
        found = found_by_symbol[symbol]
        if len(found) == 1:
            ranges.append(found[0])
        elif len(found) > 1:
            locations = ", ".join(str(item.asm_path.relative_to(root)) for item in found)
            die(f"assembly symbol {symbol} has multiple definitions: {locations}")
        else:
            missing.append(symbol)
    return sorted(ranges, key=lambda item: item.start)

def find_raw_animation_ranges(arrays: list[RawArray], symbols: Iterable[str]) -> list[AnimationRange]:
    """Resolve animation symbols already migrated into Method 3 raw C arrays.

    Blob splitting removes the legacy ASM label but preserves the symbol as a
    named ``const u8`` array. Treat that named array as an animation candidate;
    structural ROM decoding will trim a broad raw range to its real terminator.
    """
    wanted = set(symbols)
    found: dict[str, list[RawArray]] = {name: [] for name in wanted}
    for array in arrays:
        if array.name in wanted:
            found[array.name].append(array)

    ranges: list[AnimationRange] = []
    for symbol in sorted(wanted):
        matches = found[symbol]
        if len(matches) > 1:
            locations = ", ".join(str(item.path) for item in matches)
            die(f"raw Method 3 symbol {symbol} has multiple definitions: {locations}")
        if len(matches) == 1:
            item = matches[0]
            ranges.append(AnimationRange(symbol, item.start, item.end, item.path))
    return sorted(ranges, key=lambda item: item.start)


def candidate_region_paths(root: Path) -> list[Path]:
    paths: list[Path] = []
    ignored = {"build", ".git", "tools", "vendor", "node_modules"}
    for path in root.rglob("*.c"):
        try:
            rel = path.relative_to(root)
        except ValueError:
            continue
        if any(part in ignored for part in rel.parts):
            continue
        # Ignore accidental recursively copied source trees such as
        # src/data/src/... . They are never legitimate Method 3 owners.
        parts = rel.parts
        if parts[:3] == ("src", "data", "src"):
            continue
        paths.append(path)
    return sorted(set(paths))

def parse_regions(root: Path) -> list[RegionFile]:
    regions: list[RegionFile] = []
    filename_re = re.compile(r"sprite_data_([0-9A-Fa-f]{6,8})_([0-9A-Fa-f]{6,8})\.c$")
    for path in candidate_region_paths(root):
        text = path.read_text(encoding="utf-8", errors="replace")
        match = REGION_HEADER_RE.search(text)
        if match:
            regions.append(RegionFile(path, int(match.group(1), 16), int(match.group(2), 16)))
            continue
        fm = filename_re.search(path.name)
        if fm:
            a, b = int(fm.group(1), 16), int(fm.group(2), 16)
            if a < ROM_BASE: a += ROM_BASE
            if b < ROM_BASE: b += ROM_BASE
            regions.append(RegionFile(path, a, b))
    return regions


def parse_region_arrays(root: Path, diagnostics: list[str] | None = None) -> list[RawArray]:
    arrays: list[RawArray] = []
    diagnostics = diagnostics if diagnostics is not None else []
    for path in candidate_region_paths(root):
        text = path.read_text(encoding="utf-8", errors="replace")
        for match in RANGE_ARRAY_RE.finditer(text):
            start = int(match.group("start"), 16)
            end = int(match.group("end"), 16)
            data = bytes(int(value, 16) for value in HEX_BYTE_RE.findall(match.group("body")))
            expected = end - start
            if len(data) != expected:
                diagnostics.append(
                    f"skipped malformed raw array {path.relative_to(root)}:{match.group('name')}: "
                    f"range 0x{start:08X}-0x{end:08X} declares {expected} bytes but contains {len(data)}"
                )
                continue
            arrays.append(RawArray(path, match.group("name"), start, end, data, match.start(), match.end()))
    return arrays




def refine_animation_ranges(
    animations: list[AnimationRange],
    arrays: list[RawArray],
    regions: list[RegionFile],
) -> list[AnimationRange]:
    """Refine broad ASM blob bounds using Method 3 object boundaries.

    A labeled ``baserom_blob`` may continue past the logical animation table
    until the next assembly label. Method 3 files provide finer object starts
    through raw-array ranges and address comments. Prefer those boundaries.
    """
    comments_by_path: dict[Path, list[int]] = {}
    for region in regions:
        text = region.path.read_text(encoding="utf-8", errors="replace")
        starts = sorted({int(m.group(1), 16) for m in ADDRESS_COMMENT_RE.finditer(text)})
        comments_by_path[region.path] = starts

    refined: list[AnimationRange] = []
    for animation in animations:
        region = region_for(regions, animation.start, animation.end)
        candidates: list[int] = []

        # Best case: a raw array begins exactly at the symbol address.
        for array in arrays:
            if array.path == region.path and array.start == animation.start:
                candidates.append(array.end)

        # Otherwise use the next documented object start in the owning region.
        for address in comments_by_path.get(region.path, []):
            if animation.start < address <= animation.end:
                candidates.append(address)
                break

        end = min(candidates) if candidates else animation.end
        if end <= animation.start:
            die(f"invalid refined range for {animation.name}: 0x{animation.start:08X}-0x{end:08X}")
        refined.append(AnimationRange(animation.name, animation.start, end, animation.asm_path))
    return sorted(refined, key=lambda item: item.start)


def refine_legacy_animation_ranges(
    animations: list[AnimationRange], rom: bytes
) -> list[AnimationRange]:
    """Trim broad legacy ASM blobs to the last valid animation terminator.

    Some labels own a baserom_blob that also contains pointed OAM frames or other
    data. Walk 8-byte AnimationFrame records while they remain structurally
    valid. Internal terminators are preserved; the range ends at the last
    terminator before the first invalid record or partial trailing record.
    """
    refined: list[AnimationRange] = []
    rom_size = len(rom)
    for animation in animations:
        start_off = animation.start - ROM_BASE
        end_off = min(animation.end - ROM_BASE, rom_size)
        if start_off < 0 or start_off >= end_off:
            die(f"legacy ASM range for {animation.name} is outside the baserom")

        offset = 0
        last_terminator_end: int | None = None
        while start_off + offset + 8 <= end_off:
            pointer = u32(rom, start_off + offset)
            duration = rom[start_off + offset + 4]
            reserved = rom[start_off + offset + 5 : start_off + offset + 8]

            if any(reserved):
                break
            if pointer == 0:
                if duration != 0:
                    break
                last_terminator_end = offset + 8
                offset += 8
                continue

            # Animation frame pointers are absolute GBA ROM pointers.
            if pointer < ROM_BASE or pointer + 2 > ROM_BASE + rom_size or (pointer & 1):
                break

            frame_off = pointer - ROM_BASE
            count = u16(rom, frame_off)
            frame_size = 2 + count * 6
            if count > 128 or frame_off + frame_size > rom_size:
                break
            offset += 8

        if last_terminator_end is None:
            die(
                f"could not find a valid AnimationFrame terminator for {animation.name} "
                f"inside 0x{animation.start:08X}-0x{animation.end:08X}"
            )
        refined.append(
            AnimationRange(
                animation.name,
                animation.start,
                animation.start + last_terminator_end,
                animation.asm_path,
            )
        )
    return sorted(refined, key=lambda item: item.start)

def region_for(
    regions: list[RegionFile], start: int, end: int, required: bool = True
) -> RegionFile | None:
    owners = [region for region in regions if region.start <= start and end <= region.end]
    if len(owners) == 1:
        return owners[0]
    if not owners:
        if required:
            die(f"no Method 3 region file owns 0x{start:08X}-0x{end:08X}")
        return None
    locations = ", ".join(str(item.path) for item in owners)
    die(f"multiple Method 3 region files own 0x{start:08X}-0x{end:08X}: {locations}")


def owner_for(arrays: list[RawArray], start: int, end: int, required: bool = True) -> RawArray | None:
    owners = [array for array in arrays if array.start <= start and end <= array.end]
    if len(owners) == 1:
        return owners[0]
    if not owners:
        if required:
            die(f"no raw Method 3 array owns 0x{start:08X}-0x{end:08X}")
        return None
    locations = ", ".join(f"{item.path}:{item.name}" for item in owners)
    die(f"multiple raw arrays own 0x{start:08X}-0x{end:08X}: {locations}")


def bytes_for(discovery_arrays: list[RawArray], rom: bytes | None, start: int, end: int) -> bytes:
    owner = owner_for(discovery_arrays, start, end, required=False)
    if owner is not None:
        begin = start - owner.start
        return owner.data[begin : begin + (end - start)]
    if rom is None:
        die(
            f"range 0x{start:08X}-0x{end:08X} is not covered by a valid Method 3 raw array "
            "and no baserom is available"
        )
    rom_start = start - ROM_BASE
    rom_end = end - ROM_BASE
    if rom_start < 0 or rom_end > len(rom):
        die(f"range 0x{start:08X}-0x{end:08X} is outside the baserom")
    return rom[rom_start:rom_end]

def decode_animation(data: bytes, animation: AnimationRange) -> list[AnimationEntry]:
    if len(data) % 8 != 0:
        die(f"{animation.name} size 0x{len(data):X} is not divisible by 8")

    entries: list[AnimationEntry] = []
    for offset in range(0, len(data), 8):
        pointer = u32(data, offset)
        duration = data[offset + 4]
        reserved = data[offset + 5 : offset + 8]

        if any(reserved):
            die(
                f"nonzero reserved bytes in {animation.name} entry at "
                f"0x{animation.start + offset:08X}: {reserved.hex(' ')}"
            )

        if pointer == 0:
            if duration != 0:
                die(
                    f"null frame pointer with nonzero duration 0x{duration:02X} in "
                    f"{animation.name} at 0x{animation.start + offset:08X}"
                )
            # Some symbols contain several consecutive animation sequences.
            # Preserve every internal terminator instead of stopping at the first one.
            entries.append(AnimationEntry(None, 0))
            continue

        entries.append(AnimationEntry(pointer, duration))

    if not entries or not entries[-1].is_terminator:
        die(f"{animation.name} has no terminating zero AnimationFrame entry at the end")
    return entries


def frame_name_map(
    animations: list[tuple[AnimationRange, list[AnimationEntry]]],
) -> dict[int, str]:
    names: dict[int, str] = {}
    use_counts: dict[str, int] = {}
    for animation, entries in animations:
        real_entries = [entry for entry in entries if not entry.is_terminator]
        real_index = 0
        for entry in entries:
            if entry.is_terminator:
                continue
            assert entry.frame_address is not None
            if entry.frame_address in names:
                real_index += 1
                continue
            base = f"{animation.name}Frame"
            if len(real_entries) > 1:
                base += str(real_index)
            count = use_counts.get(base, 0)
            use_counts[base] = count + 1
            names[entry.frame_address] = base if count == 0 else f"{base}_{count + 1}"
            real_index += 1
    return names


def decode_oam_frame(arrays: list[RawArray], rom: bytes | None, address: int, name: str) -> OamFrame:
    header = bytes_for(arrays, rom, address, address + 2)
    count = u16(header, 0)
    if count > 128:
        die(f"invalid OAM count {count} at 0x{address:08X}")
    size = 2 + count * 6
    data = bytes_for(arrays, rom, address, address + size)
    entries: list[OamEntry] = []
    for offset in range(2, size, 6):
        attr0, attr1, attr2 = struct.unpack_from("<HHH", data, offset)
        shape = (attr0 >> 14) & 3
        sprite_size = (attr1 >> 14) & 3
        if (shape, sprite_size) not in SIZE_NAMES:
            die(f"unsupported OBJ shape/size {shape}/{sprite_size} at 0x{address + offset:08X}")
        # Flip bits are meaningful only for non-affine objects. The project macro always emits affine-off.
        affine_mode = (attr0 >> 8) & 3
        if affine_mode != 0:
            die(
                f"affine OAM entry at 0x{address + offset:08X} cannot be represented by the project's OAM_ENTRY macro"
            )
        if attr0 & 0x3C00:
            die(
                f"mosaic/8bpp/object-mode bits at 0x{address + offset:08X} cannot be represented safely by OAM_ENTRY"
            )
        flips: list[str] = []
        if attr1 & 0x1000:
            flips.append("ST_OAM_HFLIP")
        if attr1 & 0x2000:
            flips.append("ST_OAM_VFLIP")
        flip = " | ".join(flips) if flips else "0"
        entries.append(
            OamEntry(
                attr0=attr0,
                attr1=attr1,
                attr2=attr2,
                x=signed(attr1 & 0x1FF, 9),
                y=signed(attr0 & 0xFF, 8),
                size_name=SIZE_NAMES[(shape, sprite_size)],
                flip=flip,
                tile=attr2 & 0x3FF,
                palette=(attr2 >> 12) & 0xF,
                priority=(attr2 >> 10) & 3,
            )
        )
    return OamFrame(address, name, tuple(entries))



def encode_oam_frame(frame: OamFrame) -> bytes:
    data = bytearray(struct.pack("<H", len(frame.entries)))
    for entry in frame.entries:
        data.extend(struct.pack("<HHH", entry.attr0, entry.attr1, entry.attr2))
    return bytes(data)


def encode_animation(entries: Sequence[AnimationEntry]) -> bytes:
    data = bytearray()
    for entry in entries:
        pointer = 0 if entry.frame_address is None else entry.frame_address
        data.extend(struct.pack("<IBBBB", pointer, entry.duration, 0, 0, 0))
    return bytes(data)


def decode_pointer_table(
    arrays: list[RawArray],
    rom: bytes | None,
    name: str,
    start: int,
    end: int,
) -> list[int]:
    size = end - start
    if size <= 0 or size % 4 != 0:
        die(f"{name} pointer-table size 0x{size:X} is not a positive multiple of 4")
    data = bytes_for(arrays, rom, start, end)
    pointers: list[int] = []
    for offset in range(0, len(data), 4):
        pointer = u32(data, offset)
        if pointer < ROM_BASE or pointer & 1:
            die(
                f"invalid OAM frame pointer 0x{pointer:08X} in {name} at "
                f"0x{start + offset:08X}"
            )
        pointers.append(pointer)
    if not pointers:
        die(f"{name} contains no frame pointers")
    return pointers


def emit_pointer_table(table: OamPointerTable) -> str:
    lines = [
        f"/* 0x{table.start:08X}: decoded OAM frame-pointer table. */",
        f"const u16 *const {table.name}[] = {{",
    ]
    for entry in table.entries:
        lines.append(f"    {entry.frame_name}, /* 0x{entry.frame_address:08X} */")
    lines.append("};")
    return "\n".join(lines)


def encode_pointer_table(table: OamPointerTable) -> bytes:
    return b"".join(struct.pack("<I", entry.frame_address) for entry in table.entries)


def emit_frame(frame: OamFrame) -> str:
    lines = [
        f"/* 0x{frame.address:08X}: decoded OAM frame. */",
        f"const u16 {frame.name}[] = {{",
        f"    {len(frame.entries)},",
    ]
    for entry in frame.entries:
        lines.append(f"    /* {entry.attr0:04X} {entry.attr1:04X} {entry.attr2:04X} */")
        lines.append(
            "    OAM_ENTRY("
            f"{entry.x}, {entry.y}, {entry.size_name}, {entry.flip}, "
            f"{entry.tile}, {entry.palette}, {entry.priority}),"
        )
    lines.append("};")
    return "\n".join(lines)


def emit_animation(
    animation: AnimationRange,
    entries: list[AnimationEntry],
    frame_names: dict[int, str],
) -> str:
    lines = [
        f"/* 0x{animation.start:08X}: decoded animation table. */",
        f"const struct AnimationFrame {animation.name}[] = {{",
    ]
    for entry in entries:
        if entry.is_terminator:
            lines.append("    ANIMATION_TERMINATOR,")
            continue
        assert entry.frame_address is not None
        duration = "U8_MAX" if entry.duration == 0xFF else (str(entry.duration) if entry.duration < 10 else f"0x{entry.duration:X}")
        lines.append(f"    {{{frame_names[entry.frame_address]}, {duration}}},")
    lines.append("};")
    return "\n".join(lines)


def raw_array_code(start: int, end: int, data: bytes, name: str | None = None) -> str:
    name = name or f"sUnk_{start:08X}"
    lines = [
        f"/* 0x{start:08X} - 0x{end:08X}: not yet typed. */",
        f"const u8 {name}[] = {{",
    ]
    for offset in range(0, len(data), 16):
        chunk = data[offset : offset + 16]
        values = ", ".join(f"0x{value:02X}" for value in chunk)
        lines.append(f"    {values},")
    lines.append("};")
    return "\n".join(lines)


def build_discovery(root: Path, module: str, rom_override: Path | None = None, source_override: Path | None = None) -> Discovery:
    source_path = (source_override if source_override and source_override.is_absolute() else root / source_override) if source_override else find_source(root, module)
    rom_path = (rom_override if rom_override and rom_override.is_absolute() else root / rom_override) if rom_override else find_rom(root)
    symbols = referenced_animation_symbols(source_path, module)
    if not symbols:
        die(f"no s...Oam references were found in {source_path.relative_to(root)}")
    asm_animations = find_asm_animation_ranges(root, symbols)
    # Method 3 region files are optional for preview/check. Clean decomp branches
    # often still contain only the legacy labeled ASM blob. In that case decode
    # directly from the baserom using the exact baserom_blob bounds.
    try:
        arrays = parse_region_arrays(root)
    except ToolError as error:
        if "no Method 3 raw const-u8 arrays" not in str(error):
            raise
        arrays = []

    try:
        regions = parse_regions(root)
    except ToolError as error:
        if "no Method 3 shared-region headers" not in str(error):
            raise
        regions = []

    raw_animations = find_raw_animation_ranges(arrays, symbols)
    by_name: dict[str, AnimationRange] = {item.name: item for item in asm_animations}
    for item in raw_animations:
        previous = by_name.get(item.name)
        if previous is not None and (previous.start != item.start or previous.end != item.end):
            die(
                f"animation symbol {item.name} has conflicting ASM and Method 3 ranges: "
                f"0x{previous.start:08X}-0x{previous.end:08X} vs "
                f"0x{item.start:08X}-0x{item.end:08X}"
            )
        by_name[item.name] = item
    animations = sorted(by_name.values(), key=lambda item: item.start)
    unresolved = sorted(set(symbols) - set(by_name))
    if unresolved:
        print(
            "warning: source animation symbols without ASM labels or named Method 3 arrays were skipped:\n  "
            + "\n  ".join(unresolved),
            file=sys.stderr,
        )
    if not animations:
        die(
            "no OAM animation definitions were found for this module; checked "
            "ASM labels and named Method 3 raw arrays"
        )

    if not source_path.is_file():
        die(f"source file not found: {source_path}")
    if not rom_path.is_file():
        die(f"baserom not found: {rom_path}")
    rom = rom_path.read_bytes()
    # Structural decoding from the ROM is the authority for logical table ends.
    # ASM blob bounds and Method 3 raw-array bounds may both be intentionally broad.
    animations = refine_legacy_animation_ranges(animations, rom)
    if arrays and not regions:
        print("warning: raw address arrays were found without region ownership metadata; using legacy preview mode", file=sys.stderr)
        arrays = []
   
    # Do not require every discovered animation table to already have a
    # Method 3 C-region owner. A module may span multiple legacy ASM blobs.
    # Preview/--check decode all valid ROM-backed tables; --apply performs the
    # strict ownership check later via unowned_typed_objects().

    decoded_animations: list[tuple[AnimationRange, list[AnimationEntry]]] = []
    for animation in animations:
        data = bytes_for(arrays, rom, animation.start, animation.end)
        decoded_animations.append((animation, decode_animation(data, animation)))

    names = frame_name_map(decoded_animations)
    frames = [decode_oam_frame(arrays, rom, address, name) for address, name in sorted(names.items())]

    typed_objects: list[TypedObject] = []
    for frame in frames:
        typed_objects.append(
            TypedObject(
                frame.address, frame.address + frame.size, frame.name, emit_frame(frame),
                "frame", encode_oam_frame(frame)
            )
        )
    for animation, entries in decoded_animations:
        typed_objects.append(
            TypedObject(
                animation.start,
                animation.end,
                animation.name,
                emit_animation(animation, entries, names),
                "animation",
                encode_animation(entries),
            )
        )
    typed_objects.sort(key=lambda item: (item.start, item.end))
    for previous, current in zip(typed_objects, typed_objects[1:]):
        if current.start < previous.end:
            die(
                f"generated objects overlap: {previous.name} 0x{previous.start:08X}-0x{previous.end:08X} "
                f"and {current.name} 0x{current.start:08X}-0x{current.end:08X}"
            )

    return Discovery(
        root=root,
        module=module,
        source_path=source_path,
        rom_path=rom_path,
        symbols=symbols,
        animations=animations,
        arrays=arrays,
        regions=regions,
        frames=frames,
        typed_objects=typed_objects,
    )



def pointer_frame_name(table_name: str, index: int) -> str:
    if table_name.endswith("Frames"):
        base = table_name[:-1]
    elif table_name.endswith("Table"):
        base = table_name[:-5] + "Frame"
    else:
        base = table_name + "Frame"
    return f"{base}{index}"


def candidate_range_with_declared_count(candidate: OamCandidate) -> tuple[int, int]:
    if candidate.start is None or candidate.end is None:
        die(f"{candidate.name} has no resolvable data range")
    end = candidate.end
    count_text = candidate.declaration.count_text if candidate.declaration else ""
    if count_text and re.fullmatch(r"(?:0x[0-9A-Fa-f]+|[0-9]+)", count_text):
        count = int(count_text, 0)
        if candidate.kind == "pointer-table":
            proposed = candidate.start + count * 4
            if proposed <= candidate.end:
                end = proposed
    return candidate.start, end


def validate_typed_object_bytes(
    arrays: list[RawArray], rom: bytes | None, obj: TypedObject
) -> None:
    if not obj.data:
        return
    original = bytes_for(arrays, rom, obj.start, obj.end)
    if original != obj.data:
        for index, (left, right) in enumerate(zip(original, obj.data)):
            if left != right:
                die(
                    f"round-trip mismatch for {obj.name} at 0x{obj.start + index:08X}: "
                    f"source 0x{left:02X}, emitted 0x{right:02X}"
                )
        die(
            f"round-trip size mismatch for {obj.name}: source {len(original)} bytes, "
            f"emitted {len(obj.data)} bytes"
        )


def build_auto_discovery(
    root: Path,
    module: str,
    rom_override: Path | None = None,
    source_override: Path | None = None,
    symbol_overrides: Sequence[str] = (),
) -> Discovery:
    source_path = (
        source_override if source_override and source_override.is_absolute() else root / source_override
    ) if source_override else find_source(root, module)
    if not source_path.is_file():
        die(f"source file not found: {source_path}")

    diagnostics: list[str] = []
    arrays = parse_region_arrays(root, diagnostics)
    regions = parse_regions(root)
    overrides = parse_symbol_overrides(symbol_overrides)
    candidates = classify_candidates(root, source_path, arrays, overrides)

    if rom_override:
        rom_path = rom_override if rom_override.is_absolute() else root / rom_override
        if not rom_path.is_file():
            die(f"baserom not found: {rom_path}")
    else:
        rom_path = find_rom_optional(root)
    rom = rom_path.read_bytes() if rom_path is not None else None

    selected = [candidate for candidate in candidates if candidate.selected]
    if not selected:
        already = [candidate.name for candidate in candidates if candidate.kind.startswith("already-")]
        if already:
            die("no new OAM objects need decoding; already typed: " + ", ".join(already))
        die(
            "no HIGH-confidence OAM candidates were found; run --audit and use "
            "--symbol NAME:frame|pointer-table|animation for a reviewed override"
        )

    animations_data: list[tuple[OamCandidate, AnimationRange, list[AnimationEntry]]] = []
    pointer_data: list[tuple[OamCandidate, int, int, list[int]]] = []
    direct_data: list[tuple[OamCandidate, int]] = []
    candidate_updates: dict[str, OamCandidate] = {}

    for candidate in selected:
        try:
            start, end = candidate_range_with_declared_count(candidate)
            if candidate.kind == "animation":
                animation = AnimationRange(candidate.name, start, end, source_path)
                data = bytes_for(arrays, rom, start, end)
                entries = decode_animation(data, animation)
                animations_data.append((candidate, animation, entries))
            elif candidate.kind == "pointer-table":
                pointers = decode_pointer_table(arrays, rom, candidate.name, start, end)
                pointer_data.append((candidate, start, end, pointers))
            elif candidate.kind == "frame":
                # Decode exactly one frame from the symbol start. The owning raw
                # array may intentionally contain consecutive frames.
                decode_oam_frame(arrays, rom, start, candidate.name)
                direct_data.append((candidate, start))
            else:
                continue
            candidate_updates[candidate.name] = dataclasses.replace(
                candidate,
                confidence="HIGH",
                reasons=candidate.reasons + ("binary structure validated",),
                selected=True,
            )
        except ToolError as error:
            candidate_updates[candidate.name] = dataclasses.replace(
                candidate,
                confidence="NO",
                reasons=candidate.reasons + ("binary structure validation failed",),
                selected=False,
                error=str(error),
            )

    candidates = [candidate_updates.get(candidate.name, candidate) for candidate in candidates]
    valid_names = {candidate.name for candidate in candidates if candidate.selected}
    animations_data = [item for item in animations_data if item[0].name in valid_names]
    pointer_data = [item for item in pointer_data if item[0].name in valid_names]
    direct_data = [item for item in direct_data if item[0].name in valid_names]
    if not (animations_data or pointer_data or direct_data):
        errors = [candidate.error for candidate in candidates if candidate.error]
        die("all selected OAM candidates failed structural validation:\n  " + "\n  ".join(errors))

    frame_names: dict[int, str] = {}
    # A direct symbol is the strongest canonical frame name.
    for candidate, address in direct_data:
        frame_names.setdefault(address, candidate.name)

    pointer_tables: list[OamPointerTable] = []
    for candidate, start, end, pointers in pointer_data:
        entries: list[PointerTableEntry] = []
        for index, address in enumerate(pointers):
            name = frame_names.setdefault(address, pointer_frame_name(candidate.name, index))
            entries.append(PointerTableEntry(address, name))
        pointer_tables.append(OamPointerTable(candidate.name, start, end, tuple(entries)))

    # Animation frame names fill only addresses not already named by direct or
    # pointer-table evidence.
    animation_pairs = [(animation, entries) for _, animation, entries in animations_data]
    generated_names = frame_name_map(animation_pairs)
    for address, name in generated_names.items():
        frame_names.setdefault(address, name)

    frames = [
        decode_oam_frame(arrays, rom, address, name)
        for address, name in sorted(frame_names.items())
    ]

    typed_objects: list[TypedObject] = []
    for frame in frames:
        typed_objects.append(
            TypedObject(
                frame.address,
                frame.address + frame.size,
                frame.name,
                emit_frame(frame),
                "frame",
                encode_oam_frame(frame),
            )
        )
    for _, animation, entries in animations_data:
        typed_objects.append(
            TypedObject(
                animation.start,
                animation.end,
                animation.name,
                emit_animation(animation, entries, frame_names),
                "animation",
                encode_animation(entries),
            )
        )
    for table in pointer_tables:
        typed_objects.append(
            TypedObject(
                table.start,
                table.end,
                table.name,
                emit_pointer_table(table),
                "pointer-table",
                encode_pointer_table(table),
            )
        )

    typed_objects.sort(key=lambda item: (item.start, item.end, item.name))
    for previous, current in zip(typed_objects, typed_objects[1:]):
        if current.start < previous.end:
            die(
                f"generated objects overlap: {previous.name} "
                f"0x{previous.start:08X}-0x{previous.end:08X} and {current.name} "
                f"0x{current.start:08X}-0x{current.end:08X}"
            )
    for obj in typed_objects:
        validate_typed_object_bytes(arrays, rom, obj)

    return Discovery(
        root=root,
        module=module,
        source_path=source_path,
        rom_path=rom_path,
        symbols=[candidate.name for candidate in candidates if candidate.selected],
        animations=[animation for _, animation, _ in animations_data],
        arrays=arrays,
        regions=regions,
        frames=frames,
        typed_objects=typed_objects,
        candidates=candidates,
        pointer_tables=pointer_tables,
        diagnostics=diagnostics,
        mode="auto",
    )


def audit_discovery(
    root: Path,
    module: str,
    rom_override: Path | None = None,
    source_override: Path | None = None,
    symbol_overrides: Sequence[str] = (),
) -> tuple[Path, list[OamCandidate], list[str]]:
    source_path = (
        source_override if source_override and source_override.is_absolute() else root / source_override
    ) if source_override else find_source(root, module)
    diagnostics: list[str] = []
    arrays = parse_region_arrays(root, diagnostics)
    candidates = classify_candidates(
        root, source_path, arrays, parse_symbol_overrides(symbol_overrides)
    )
    if rom_override:
        rom_path = rom_override if rom_override.is_absolute() else root / rom_override
        if not rom_path.is_file():
            die(f"baserom not found: {rom_path}")
    else:
        rom_path = find_rom_optional(root)
    rom = rom_path.read_bytes() if rom_path is not None else None

    validated: list[OamCandidate] = []
    for candidate in candidates:
        if not candidate.selected:
            validated.append(candidate)
            continue
        try:
            start, end = candidate_range_with_declared_count(candidate)
            if candidate.kind == "animation":
                animation = AnimationRange(candidate.name, start, end, source_path)
                entries = decode_animation(bytes_for(arrays, rom, start, end), animation)
                for entry in entries:
                    if entry.frame_address is not None:
                        decode_oam_frame(arrays, rom, entry.frame_address, candidate.name + "AuditFrame")
            elif candidate.kind == "pointer-table":
                pointers = decode_pointer_table(arrays, rom, candidate.name, start, end)
                for address in pointers:
                    decode_oam_frame(arrays, rom, address, candidate.name + "AuditFrame")
            elif candidate.kind == "frame":
                decode_oam_frame(arrays, rom, start, candidate.name)
            validated.append(dataclasses.replace(
                candidate,
                confidence="HIGH",
                reasons=candidate.reasons + ("binary structure and nested frame pointers validated",),
                selected=True,
            ))
        except ToolError as error:
            unavailable = "no baserom is available" in str(error)
            validated.append(dataclasses.replace(
                candidate,
                confidence="MEDIUM" if unavailable else "NO",
                reasons=candidate.reasons + ((
                    "binary validation needs a baserom or complete Method 3 coverage"
                    if unavailable else "binary structure validation failed"
                ),),
                selected=False,
                error=str(error),
            ))
    return source_path, validated, diagnostics


def print_candidate_audit(root: Path, source_path: Path, candidates: list[OamCandidate], diagnostics: list[str]) -> None:
    print(f"Module source: {source_path.relative_to(root)}")
    print("OAM classification audit:")
    for candidate in candidates:
        address = "unresolved" if candidate.start is None else (
            f"0x{candidate.start:08X}-0x{candidate.end:08X}"
        )
        print(
            f"  {candidate.confidence:<6} {candidate.name:<48} "
            f"{candidate.kind:<16} {address}"
        )
        for reason in candidate.reasons:
            print(f"         - {reason}")
        if candidate.error:
            print(f"         - ERROR: {candidate.error}")
    if diagnostics:
        print("Non-fatal repository diagnostics:")
        for message in diagnostics:
            print(f"  - {message}")


def auto_report(discovery: Discovery, preview_path: Path | None = None) -> None:
    print(f"Module: {discovery.module}")
    print(f"Source: {discovery.source_path.relative_to(discovery.root)}")
    if discovery.rom_path is None:
        print("Baserom: not required; all selected ranges came from valid Method 3 arrays")
    else:
        print(f"Baserom: {discovery.rom_path.relative_to(discovery.root)}")
    print_candidate_audit(
        discovery.root, discovery.source_path, discovery.candidates, discovery.diagnostics
    )
    print(f"Selected animation tables: {len(discovery.animations)}")
    print(f"Selected frame-pointer tables: {len(discovery.pointer_tables)}")
    print(f"Unique OAM frames decoded: {len(discovery.frames)}")
    print(f"Typed objects emitted: {len(discovery.typed_objects)}")
    if preview_path:
        print(f"Generated preview: {preview_path.relative_to(discovery.root)}")
    print("Round-trip source bytes: MATCH for every emitted object")



def parse_asm_blob_layout(path: Path) -> AsmBlobLayout | None:
    """Parse a pure baserom-blob ASM file and determine whether it can be replaced safely.

    Safe files may contain comments, blank lines, .include/.section/.align directives,
    .global directives, labels, and baserom_blob lines. Any real instruction or data
    directive makes automatic replacement unsafe.
    """
    text = path.read_text(encoding="utf-8", errors="replace")
    lines = text.splitlines()
    blob_re = re.compile(r"^\s*baserom_blob\s+0x([0-9A-Fa-f]+)\s*,\s*0x([0-9A-Fa-f]+)\s*(?:@.*)?$")
    global_re = re.compile(r"^\s*\.global\s+([A-Za-z_][A-Za-z0-9_]*)\s*$")
    label_re = re.compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*):\s*$")
    allowed_directive_re = re.compile(r"^\s*\.(?:include|section|align|balign|p2align|syntax|thumb|arm)\b")
    segments: list[AsmBlobSegment] = []
    unsafe: list[str] = []
    pending_label: str | None = None
    in_block_comment = False
    for number, original in enumerate(lines, 1):
        line = original
        # Strip C block comments conservatively for directive classification.
        cleaned = ""
        i = 0
        while i < len(line):
            if in_block_comment:
                end = line.find("*/", i)
                if end < 0:
                    i = len(line)
                    continue
                in_block_comment = False
                i = end + 2
                continue
            start = line.find("/*", i)
            if start < 0:
                cleaned += line[i:]
                break
            cleaned += line[i:start]
            in_block_comment = True
            i = start + 2
        cleaned = cleaned.split("@", 1)[0].strip()
        if not cleaned:
            continue
        gm = global_re.match(cleaned)
        if gm:
            continue
        lm = label_re.match(cleaned)
        if lm:
            pending_label = lm.group(1)
            continue
        bm = blob_re.match(cleaned)
        if bm:
            start = ROM_BASE + int(bm.group(1), 16)
            end = ROM_BASE + int(bm.group(2), 16)
            if end <= start:
                unsafe.append(f"line {number}: invalid baserom_blob range")
            segments.append(AsmBlobSegment(start, end, pending_label))
            pending_label = None
            continue
        if allowed_directive_re.match(cleaned):
            continue
        unsafe.append(f"line {number}: {cleaned[:100]}")
    if not segments:
        return None
    ordered = sorted(segments, key=lambda item: item.start)
    for previous, current in zip(ordered, ordered[1:]):
        if previous.end != current.start:
            unsafe.append(
                f"non-contiguous ranges 0x{previous.start:08X}-0x{previous.end:08X} and "
                f"0x{current.start:08X}-0x{current.end:08X}"
            )
    return AsmBlobLayout(
        path=path,
        start=ordered[0].start,
        end=ordered[-1].end,
        segments=tuple(ordered),
        safe_to_replace=not unsafe,
        unsafe_lines=tuple(unsafe),
    )


def discover_asm_blob_layouts(root: Path) -> list[AsmBlobLayout]:
    layouts: list[AsmBlobLayout] = []
    asm_root = root / "asm"
    if not asm_root.is_dir():
        return layouts
    for path in sorted(asm_root.rglob("*.s")):
        layout = parse_asm_blob_layout(path)
        if layout is not None:
            layouts.append(layout)
    return layouts


def asm_layout_for_address(layouts: list[AsmBlobLayout], start: int, end: int) -> AsmBlobLayout | None:
    owners = [layout for layout in layouts if layout.start <= start and end <= layout.end]
    if len(owners) == 1:
        return owners[0]
    if len(owners) > 1:
        paths = ", ".join(str(layout.path) for layout in owners)
        die(f"multiple ASM blob files own 0x{start:08X}-0x{end:08X}: {paths}")
    return None


def linker_candidate_paths(root: Path) -> list[Path]:
    """Return linker script inputs that may contain explicit object references."""
    paths: list[Path] = []
    for pattern in ("*.ld", "*.lds", "ldscript.in", "ldscript.txt"):
        paths.extend(root.glob(pattern))
    # Some repositories keep linker scripts in subdirectories.
    for pattern in ("*.ld", "*.lds"):
        paths.extend(root.rglob(pattern))
    unique: list[Path] = []
    for path in sorted(set(paths)):
        try:
            rel = path.relative_to(root)
        except ValueError:
            continue
        if any(part in {"build", ".git"} for part in rel.parts):
            continue
        if path.is_file() and path not in unique:
            unique.append(path)
    return unique


def find_object_tokens(linker_text: str, object_basename: str) -> list[str]:
    """Find linker object path tokens ending in object_basename.

    This intentionally matches by basename so all of these are accepted:
      obj/blob_0xAAAA-0xBBBB.o(.rodata)
      asm/blob_0xAAAA-0xBBBB.o(.rodata)
      build/us/obj/asm/blob_0xAAAA-0xBBBB.o(.rodata)
    """
    token_re = re.compile(
        rf"(?<![A-Za-z0-9_.$@+~:/\\-])"
        rf"(?P<token>(?:[A-Za-z0-9_.$@+~:-]+[/\\])*){re.escape(object_basename)}"
        rf"(?=\s*(?:\(|;|$))"
    )
    return [match.group("token") + object_basename for match in token_re.finditer(linker_text)]


def find_linker_replacement(root: Path, asm_path: Path, output_path: Path) -> tuple[Path | None, str | None, str | None, list[str]]:
    blockers: list[str] = []
    asm_rel = asm_path.relative_to(root).with_suffix("").as_posix() + ".o"
    asm_parts = asm_path.relative_to(root).with_suffix("").parts
    asm_without_top = Path(*asm_parts[1:]).as_posix() + ".o" if len(asm_parts) > 1 else Path(asm_rel).name
    asm_basename = asm_path.with_suffix(".o").name

    output_rel = output_path.relative_to(root).with_suffix("")
    # This project maps src/foo.c to build/.../obj/foo.o (the leading src/ is omitted).
    if output_rel.parts and output_rel.parts[0] == "src":
        output_rel = Path(*output_rel.parts[1:])
    new_rel = output_rel.as_posix() + ".o"

    candidates: list[tuple[Path, str, str]] = []
    for linker in linker_candidate_paths(root):
        text = linker.read_text(encoding="utf-8", errors="replace")
        for old_token in find_object_tokens(text, asm_basename):
            # Prefer preserving the object-root prefix, not necessarily the whole old directory.
            # Examples:
            #   build/us/obj/asm/data/blob.o -> build/us/obj/data/sprite_data.o
            #   obj/blob.o                   -> obj/data/sprite_data.o
            if old_token.endswith(asm_rel):
                prefix = old_token[:-len(asm_rel)]
            elif old_token.endswith(asm_without_top):
                prefix = old_token[:-len(asm_without_top)]
            elif old_token.endswith(asm_basename):
                prefix = old_token[:-len(asm_basename)]
            else:
                continue
            candidates.append((linker, old_token, prefix + new_rel))

    # Deduplicate exact matches.
    unique: list[tuple[Path, str, str]] = []
    for item in candidates:
        if item not in unique:
            unique.append(item)

    if len(unique) == 1:
        return (*unique[0], blockers)
    if not unique:
        scanned = ", ".join(path.relative_to(root).as_posix() for path in linker_candidate_paths(root)) or "no linker scripts"
        blockers.append(
            f"no linker .o reference matching {asm_basename} was found "
            f"(also tried {asm_rel}; scanned {scanned})"
        )
    else:
        blockers.append(
            "multiple linker references match the ASM object: "
            + ", ".join(f"{p.relative_to(root)}:{old}" for p, old, _ in unique)
        )
    return None, None, None, blockers


def region_output_path(root: Path, layout: AsmBlobLayout) -> Path:
    return root / "src" / "data" / f"sprite_data_{layout.start-ROM_BASE:06X}_{layout.end-ROM_BASE:06X}.c"


def build_region_plans(discovery: Discovery, max_region_size: int) -> list[RegionPlan]:
    missing = unowned_typed_objects(discovery)
    if not missing:
        return []
    layouts = discover_asm_blob_layouts(discovery.root)
    grouped: dict[Path, tuple[AsmBlobLayout, list[TypedObject]]] = {}
    orphaned: list[TypedObject] = []
    for obj in missing:
        layout = asm_layout_for_address(layouts, obj.start, obj.end)
        if layout is None:
            orphaned.append(obj)
            continue
        if layout.path not in grouped:
            grouped[layout.path] = (layout, [])
        grouped[layout.path][1].append(obj)
    if orphaned:
        sample = "\n  ".join(f"0x{o.start:08X}-0x{o.end:08X} {o.name}" for o in orphaned[:20])
        die("no ASM baserom_blob file owns these missing objects:\n  " + sample)

    plans: list[RegionPlan] = []
    for layout, objects in grouped.values():
        blockers: list[str] = []
        output = region_output_path(discovery.root, layout)
        size = layout.end - layout.start
        if size > max_region_size:
            blockers.append(
                f"full ASM object is 0x{size:X} bytes, above --max-region-size 0x{max_region_size:X}"
            )
        if not layout.safe_to_replace:
            blockers.append("ASM file is not a pure baserom_blob object: " + "; ".join(layout.unsafe_lines[:8]))
        overlaps = [r for r in discovery.regions if not (layout.end <= r.start or r.end <= layout.start)]
        if overlaps:
            blockers.append(
                "proposed range overlaps existing Method 3 region(s): "
                + ", ".join(f"{r.path.relative_to(discovery.root)} 0x{r.start:08X}-0x{r.end:08X}" for r in overlaps)
            )
        if output.exists():
            blockers.append(f"output file already exists: {output.relative_to(discovery.root)}")
        linker_path, old_token, new_token, linker_blockers = find_linker_replacement(
            discovery.root, layout.path, output
        )
        blockers.extend(linker_blockers)
        plans.append(RegionPlan(
            layout=layout,
            output_path=output,
            objects=tuple(sorted(objects, key=lambda o: (o.start, o.end))),
            linker_path=linker_path,
            linker_old_token=old_token,
            linker_new_token=new_token,
            blockers=tuple(blockers),
        ))
    return sorted(plans, key=lambda plan: plan.layout.start)


def render_raw_region(discovery: Discovery, plan: RegionPlan) -> str:
    rom = discovery.rom_path.read_bytes()
    lines = [
        '#include "types.h"',
        '#include "oam.h"',
        '',
        '/*',
        f' * Shared sprite data region: 0x{plan.layout.start:08X} - 0x{plan.layout.end:08X}',
        ' *',
        ' * Generated by tools/decode_oam.py from the complete linked ASM blob object.',
        ' * Keep definitions in ascending ROM-address order. Preserve original labels.',
        ' */',
        '',
    ]
    used_names: set[str] = set()
    for segment in plan.layout.segments:
        start_off = segment.start - ROM_BASE
        end_off = segment.end - ROM_BASE
        if start_off < 0 or end_off > len(rom):
            die(
                f"ASM segment 0x{segment.start:08X}-0x{segment.end:08X} is outside {discovery.rom_path}"
            )
        name = segment.label or f"sSpriteDataRaw_{segment.start:08X}"
        if name in used_names:
            die(f"duplicate ASM label while generating region: {name}")
        used_names.add(name)
        lines.append(raw_array_code(segment.start, segment.end, rom[start_off:end_off], name))
        lines.append('')
    return "\n".join(lines).rstrip() + "\n"


def print_region_plan(discovery: Discovery, plans: list[RegionPlan]) -> None:
    if not plans:
        print("All decoded objects are already covered by Method 3 region files.")
        return
    print("Missing Method 3 coverage plan:")
    for plan in plans:
        print(f"\nASM object: {plan.layout.path.relative_to(discovery.root)}")
        print(f"Full linked range: 0x{plan.layout.start:08X}-0x{plan.layout.end:08X} "
              f"(0x{plan.layout.end-plan.layout.start:X} bytes)")
        print(f"Proposed region: {plan.output_path.relative_to(discovery.root)}")
        print("Objects requiring this region:")
        for obj in plan.objects:
            print(f"  0x{obj.start:08X}-0x{obj.end:08X} {obj.name} ({obj.kind})")
        if plan.linker_path and plan.linker_old_token and plan.linker_new_token:
            print(f"Linker update: {plan.linker_path.relative_to(discovery.root)}")
            print(f"  {plan.linker_old_token} -> {plan.linker_new_token}")
        if plan.blockers:
            print("Automatic creation blocked:")
            for blocker in plan.blockers:
                print(f"  - {blocker}")
        else:
            print("Automatic creation: SAFE")


def create_regions(discovery: Discovery, plans: list[RegionPlan], backup_dir: Path) -> list[Path]:
    if not plans:
        return []
    blocked = [plan for plan in plans if plan.blockers]
    if blocked:
        print_region_plan(discovery, plans)
        die("automatic region creation is not safe; resolve the blockers above")
    backup_dir.mkdir(parents=True, exist_ok=True)
    changed: list[Path] = []
    # Write all C files first, then patch linker files. Rollback is straightforward via backups.
    for plan in plans:
        plan.output_path.parent.mkdir(parents=True, exist_ok=True)
        plan.output_path.write_text(render_raw_region(discovery, plan), encoding="utf-8")
        changed.append(plan.output_path)
    linker_updates: dict[Path, list[tuple[str, str]]] = {}
    for plan in plans:
        assert plan.linker_path and plan.linker_old_token and plan.linker_new_token
        linker_updates.setdefault(plan.linker_path, []).append((plan.linker_old_token, plan.linker_new_token))
    for linker, replacements in linker_updates.items():
        relative = linker.relative_to(discovery.root)
        backup = backup_dir / relative
        backup.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(linker, backup)
        text = linker.read_text(encoding="utf-8")
        for old, new in replacements:
            if text.count(old) != 1:
                die(f"linker token changed unexpectedly before apply: {old}")
            text = text.replace(old, new, 1)
        linker.write_text(text, encoding="utf-8")
        changed.append(linker)
    return changed


def table_frame_references(discovery: Discovery) -> list[str]:
    frame_names = {frame.name for frame in discovery.frames}
    referenced: set[str] = set()
    for obj in discovery.typed_objects:
        if obj.kind not in {"animation", "pointer-table"}:
            continue
        referenced.update(name for name in frame_names if re.search(rf"\b{re.escape(name)}\b", obj.code))
    return sorted(referenced)


def insert_forward_declarations(text: str, names: Sequence[str]) -> str:
    include_matches = list(re.finditer(r'^\s*#\s*include[^\n]*\n', text, re.M))
    offset = include_matches[-1].end() if include_matches else 0
    declaration_scope = text[:offset]
    missing = [
        name for name in names
        if not re.search(rf"\bextern\s+const\s+u16\s+{re.escape(name)}\s*\[", declaration_scope)
    ]
    if not missing:
        return text
    declarations = "\n".join(f"extern const u16 {name}[];" for name in missing) + "\n"
    prefix = "\n" if offset and not text[offset:offset + 1] == "\n" else ""
    return text[:offset] + prefix + declarations + text[offset:]


def generated_preview(discovery: Discovery) -> str:
    header = [
        '#include "oam.h"',
        '#include "types.h"',
        "",
        f"/* Generated preview for {discovery.module}. */",
        "/* Definitions are ordered by original ROM address. */",
        "",
    ]
    text = "\n\n".join(["\n".join(header), *(obj.code for obj in discovery.typed_objects)]) + "\n"
    return insert_forward_declarations(text, table_frame_references(discovery))


def affected_arrays(discovery: Discovery) -> dict[Path, list[RawArray]]:
    """Return only objects that can safely be placed in a known Method 3 region.

    A module may use animation tables from one shared region while pointing at
    OAM frames in a later legacy ASM-only region. Preview/check must still work
    in that mixed layout; apply is guarded separately.
    """
    if not discovery.regions:
        return {}
    result: dict[Path, list[RawArray]] = {}
    for obj in discovery.typed_objects:
        raw = owner_for(discovery.arrays, obj.start, obj.end, required=False)
        region = region_for(discovery.regions, obj.start, obj.end, required=False)
        if raw is None and region is None:
            continue
        path = raw.path if raw is not None else region.path
        result.setdefault(path, [])
        if raw is not None and raw not in result[path]:
            result[path].append(raw)
    return result


def unowned_typed_objects(discovery: Discovery) -> list[TypedObject]:
    if not discovery.regions:
        return list(discovery.typed_objects)
    return [
        obj for obj in discovery.typed_objects
        if region_for(discovery.regions, obj.start, obj.end, required=False) is None
    ]


def insertion_offset_for_address(text: str, address: int) -> int:
    candidates: list[tuple[int, int]] = []
    for match in ADDRESS_COMMENT_RE.finditer(text):
        start = int(match.group(1), 16)
        candidates.append((start, match.start()))
    after = sorted((start, offset) for start, offset in candidates if start >= address)
    if after:
        return after[0][1]
    return len(text)

def replacement_for_array(array: RawArray, objects: list[TypedObject]) -> str:
    objects = sorted(
        [obj for obj in objects if array.start <= obj.start and obj.end <= array.end],
        key=lambda item: item.start,
    )
    parts: list[str] = []
    cursor = array.start
    for obj in objects:
        if cursor < obj.start:
            begin = cursor - array.start
            end = obj.start - array.start
            parts.append(raw_array_code(cursor, obj.start, array.data[begin:end], array.name if cursor == array.start else None))
        parts.append(obj.code)
        cursor = obj.end
    if cursor < array.end:
        begin = cursor - array.start
        parts.append(raw_array_code(cursor, array.end, array.data[begin:], array.name if cursor == array.start else None))
    return "\n\n".join(parts)


def apply_changes(discovery: Discovery, backup_dir: Path) -> list[Path]:
    if not discovery.regions or not discovery.arrays:
        die(
            "--apply requires Method 3 shared-region C files. This branch currently has only "
            "the legacy ASM blob. Use the generated preview, or first merge/cherry-pick the "
            "Method 3 data-region base branch and rerun --apply."
        )
    missing = unowned_typed_objects(discovery)
    if missing:
        lines = "\n  ".join(
            f"0x{obj.start:08X}-0x{obj.end:08X} {obj.name} ({obj.kind})"
            for obj in missing[:20]
        )
        extra = "" if len(missing) <= 20 else f"\n  ... and {len(missing) - 20} more"
        die(
            "--apply cannot safely modify a mixed Method 3/legacy layout. "
            "The following decoded objects have no owning Method 3 region C file:\n  "
            + lines + extra +
            "\nAdd/merge the region file(s) covering those addresses, then rerun --apply. "
            "Preview and --check remain fully supported."
        )
    changed: list[Path] = []
    by_path = affected_arrays(discovery)
    backup_dir.mkdir(parents=True, exist_ok=True)
    for path, arrays in by_path.items():
        text = path.read_text(encoding="utf-8")
        replacements: list[tuple[int, int, str]] = []
        handled: set[tuple[int, int]] = set()
        for array in arrays:
            objects = [obj for obj in discovery.typed_objects if array.start <= obj.start and obj.end <= array.end]
            replacements.append((array.match_start, array.match_end, replacement_for_array(array, objects)))
            handled.update((obj.start, obj.end) for obj in objects)
        for obj in discovery.typed_objects:
            if (obj.start, obj.end) in handled:
                continue
            region = region_for(discovery.regions, obj.start, obj.end)
            if region.path != path:
                continue
            offset = insertion_offset_for_address(text, obj.start)
            replacements.append((offset, offset, obj.code + "\n"))
        new_text = text
        for start, end, replacement in sorted(replacements, key=lambda item: (item[0], item[1]), reverse=True):
            new_text = new_text[:start] + replacement + new_text[end:]
        objects_in_path = [
            obj for obj in discovery.typed_objects
            if (region_for(discovery.regions, obj.start, obj.end, required=False) or owner_for(discovery.arrays, obj.start, obj.end, required=False)).path == path
        ]
        if any(obj.kind in {"animation", "pointer-table"} for obj in objects_in_path):
            new_text = insert_forward_declarations(new_text, table_frame_references(discovery))
        relative = path.relative_to(discovery.root)
        backup = backup_dir / relative
        backup.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(path, backup)
        path.write_text(new_text, encoding="utf-8")
        changed.append(path)
    return changed

def report(discovery: Discovery, preview_path: Path | None = None) -> None:
    by_path = affected_arrays(discovery)
    frame_references = sum(
        len(decode_animation(bytes_for(discovery.arrays, discovery.rom_path.read_bytes(), anim.start, anim.end), anim))
        for anim in discovery.animations
    )
    print(f"Module: {discovery.module}")
    print(f"Source: {discovery.source_path.relative_to(discovery.root)}")
    print(f"Baserom: {discovery.rom_path.relative_to(discovery.root)}")
    print(f"Animation tables found: {len(discovery.animations)}")
    print(f"OAM frame pointers found: {frame_references}")
    print(f"Unique frames decoded: {len(discovery.frames)}")
    print(f"Shared frames reused: {frame_references - len(discovery.frames)}")
    if discovery.regions:
        print("Owning region file(s):")
        for path in sorted(by_path):
            print(f"  {path.relative_to(discovery.root)}")
        gap_objects = [
            obj for obj in discovery.typed_objects
            if owner_for(discovery.arrays, obj.start, obj.end, required=False) is None
            and region_for(discovery.regions, obj.start, obj.end, required=False) is not None
        ]
        if gap_objects:
            print("Objects read from baserom and insertable into documented region gaps:")
            for obj in gap_objects:
                print(f"  0x{obj.start:08X}-0x{obj.end:08X} {obj.name}")
        outside = unowned_typed_objects(discovery)
        if outside:
            print("Decoded objects outside currently available Method 3 region files:")
            for obj in outside[:20]:
                print(f"  0x{obj.start:08X}-0x{obj.end:08X} {obj.name} ({obj.kind})")
            if len(outside) > 20:
                print(f"  ... and {len(outside) - 20} more")
            print("Mixed layout detected: preview/check are valid.")
            print(f"Plan missing regions with: python3 tools/decode_oam.py {discovery.module} --plan-region")
            print(f"Create safe full-ASM regions and apply with: python3 tools/decode_oam.py {discovery.module} --create-region --apply")
    else:
        print("Data mode: legacy labeled ASM blob (decoded directly from baserom)")
        print("Method 3 region file: not present on this branch")
    if preview_path:
        print(f"Generated preview: {preview_path.relative_to(discovery.root)}")



def file_hash(path: Path, algorithm: str) -> str:
    digest = hashlib.new(algorithm)
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def verify_project_build(root: Path) -> tuple[Path, Path]:
    version = os.environ.get("VERSION", "us")
    baserom = root / f"baserom_{version}.gba"
    target = root / "build" / version / f"warioland4_{version}.gba"
    if not baserom.is_file():
        die(
            f"--verify requires {baserom.name} in the repository root; "
            "the source changes were applied but verification could not start"
        )
    print("Verification: clean build")
    try:
        subprocess.run(["make", "clean", f"VERSION={version}"], cwd=root, check=True)
        subprocess.run(["make", str(target.relative_to(root)), f"VERSION={version}"], cwd=root, check=True)
    except FileNotFoundError:
        die("--verify could not run make")
    except subprocess.CalledProcessError as error:
        die(f"clean build failed with exit status {error.returncode}")
    if not target.is_file():
        die(f"build completed without producing {target.relative_to(root)}")
    try:
        subprocess.run(["cmp", "-s", str(baserom), str(target)], check=True)
    except FileNotFoundError:
        if baserom.read_bytes() != target.read_bytes():
            die("generated ROM differs from the baserom")
    except subprocess.CalledProcessError:
        die("generated ROM differs from the baserom")
    print("Verification: full ROM cmp MATCH")
    print(f"  MD5:    {file_hash(target, 'md5')}")
    print(f"  SHA256: {file_hash(target, 'sha256')}")
    return baserom, target


def main() -> int:
    parser = argparse.ArgumentParser(
        description=(
            "Audit, detect, and decode a module's raw OAM frames, AnimationFrame tables, "
            "and OAM frame-pointer tables into readable OAM_ENTRY C definitions."
        )
    )
    parser.add_argument("module", nargs="?", help="module name, e.g. stage_ejection or pinball")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--apply", action="store_true", help="replace owning raw arrays in place")
    mode.add_argument("--check", action="store_true", help="validate discovery and decoding only")
    mode.add_argument("--audit", action="store_true", help="classify referenced data without modifying files")
    mode.add_argument("--plan-region", action="store_true", help="show missing Method 3 region files and safe linker changes")
    parser.add_argument(
        "--auto",
        action="store_true",
        help=(
            "use declaration, consumer, and byte-structure detection instead of the legacy "
            "s...Oam animation-name scan"
        ),
    )
    parser.add_argument(
        "--symbol",
        action="append",
        default=[],
        metavar="NAME:KIND",
        help=(
            "reviewed classification override; KIND is animation, pointer-table, frame, or ignore; "
            "may be repeated"
        ),
    )
    parser.add_argument("--create-region", action="store_true", help="create missing full-ASM Method 3 regions; requires --apply")
    parser.add_argument(
        "--verify",
        action="store_true",
        help="after --apply, run a clean project build and require full-ROM cmp identity",
    )
    parser.add_argument("--max-region-size", type=lambda value: int(value, 0), default=0x200000,
                        help="maximum automatically generated region size (default: 0x200000)")
    parser.add_argument("--root", type=Path, default=Path.cwd(), help="repository root")
    parser.add_argument("--rom", type=Path, help="override baserom path")
    parser.add_argument("--source", type=Path, help="override module C source path")
    args = parser.parse_args()
    if args.create_region and not args.apply:
        parser.error("--create-region must be used together with --apply")
    if args.verify and not args.apply:
        parser.error("--verify must be used together with --apply")
    if args.symbol and not (args.auto or args.audit):
        parser.error("--symbol requires --auto or --audit")

    try:
        root = repository_root(args.root)
        module = args.module or infer_module(root)

        if args.audit:
            source_path, candidates, diagnostics = audit_discovery(
                root, module, args.rom, args.source, args.symbol
            )
            print_candidate_audit(root, source_path, candidates, diagnostics)
            print("Audit completed. No source files were changed.")
            print(
                f"Preview HIGH-confidence conversions with: python3 tools/decode_oam.py "
                f"{module} --auto"
            )
            return 0

        if args.auto:
            discovery = build_auto_discovery(
                root, module, args.rom, args.source, args.symbol
            )
        else:
            discovery = build_discovery(root, module, args.rom, args.source)

        output_dir = root / "build" / "oam_decode"
        output_dir.mkdir(parents=True, exist_ok=True)
        preview_path = output_dir / f"{module}_generated.c"
        preview_path.write_text(generated_preview(discovery), encoding="utf-8")

        if discovery.mode == "auto":
            auto_report(discovery, preview_path)
        else:
            report(discovery, preview_path)
            if discovery.regions:
                print("Round-trip source bytes: MATCH (decoded from exact Method 3 ranges)")
            else:
                print("Source bytes: MATCH (decoded directly from exact ASM baserom_blob ranges)")

        if args.plan_region:
            plans = build_region_plans(discovery, args.max_region_size)
            print_region_plan(discovery, plans)
            return 0

        if args.check:
            print("Check completed. No source files were changed.")
            return 0

        if args.apply:
            backup_dir = output_dir / "backups"
            changed: list[Path] = []
            if args.create_region:
                plans = build_region_plans(discovery, args.max_region_size)
                print_region_plan(discovery, plans)
                changed.extend(create_regions(discovery, plans, backup_dir))
                if args.auto:
                    discovery = build_auto_discovery(
                        root, module, args.rom, args.source, args.symbol
                    )
                else:
                    discovery = build_discovery(root, module, args.rom, args.source)
            changed.extend(apply_changes(discovery, backup_dir))
            print("Updated:")
            for path in dict.fromkeys(changed):
                print(f"  {path.relative_to(root)}")
            print(f"Backups: {backup_dir.relative_to(root)}")
            if args.verify:
                verify_project_build(root)
            else:
                print("Run a clean build and verify symbol addresses and the full ROM before committing.")
            return 0

        print("No source files were changed.")
        print(f"Review {preview_path.relative_to(root)}.")
        if args.auto:
            print("Then apply only the HIGH-confidence conversions with:")
            print(f"  python3 tools/decode_oam.py {module} --auto --apply")
        elif discovery.regions:
            print("Then apply with:")
            print(f"  python3 tools/decode_oam.py {module} --apply")
        else:
            print("This branch has no Method 3 shared-region C file yet.")
            print(f"Plan generation with: python3 tools/decode_oam.py {module} --plan-region")
            print(f"Create a safe full-ASM region and apply with: python3 tools/decode_oam.py {module} --create-region --apply")
        return 0
    except ToolError as error:
        print(f"decode_oam.py: error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
