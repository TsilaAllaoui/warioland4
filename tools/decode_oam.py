#!/usr/bin/env python3
"""Repository-aware Wario Land 4 OAM decoder for legacy and Method 3 data layouts.

Normal use from the repository root:

    python3 tools/decode_oam.py pinball
    python3 tools/decode_oam.py pinball --apply
    python3 tools/decode_oam.py pinball --check

The tool automatically discovers:
  * the module source and its referenced ``s...Oam`` symbols;
  * assembly labels and their ``baserom_blob`` boundaries;
  * the Method 3 ``const u8`` region arrays owning those addresses;
  * the baserom;
  * pointed OAM frames, including shared frames.

Preview is the default. Source files are modified only with ``--apply``.
"""
from __future__ import annotations

import argparse
import dataclasses
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path
from typing import Iterable

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
class TypedObject:
    start: int
    end: int
    name: str
    code: str
    kind: str


@dataclasses.dataclass
class Discovery:
    root: Path
    module: str
    source_path: Path
    rom_path: Path
    symbols: list[str]
    animations: list[AnimationRange]
    arrays: list[RawArray]
    regions: list[RegionFile]
    frames: list[OamFrame]
    typed_objects: list[TypedObject]


def die(message: str) -> "NoReturn":
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
        root / "src" / f"{module}.c",
    ]
    for path in candidates:
        if path.is_file():
            return path
    die(f"could not find the source file for module '{module}'")


def find_rom(root: Path) -> Path:
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
    die("could not find baserom.us.gba (or another baserom*.gba) in the repository root")


def referenced_animation_symbols(source_path: Path, module: str) -> list[str]:
    text = source_path.read_text(encoding="utf-8", errors="replace")
    symbols = sorted(set(ANIM_SYMBOL_RE.findall(text)))
    prefix = f"s{camel_module(module)}"
    preferred = [symbol for symbol in symbols if symbol.startswith(prefix)]
    return preferred or symbols


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
    if not ranges:
        die("no assembly OAM labels were found for this module; checked all asm/**/*.s")
    if missing:
        print("warning: source symbols without assembly labels were skipped:\n  " + "\n  ".join(missing), file=sys.stderr)
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


def parse_region_arrays(root: Path) -> list[RawArray]:
    arrays: list[RawArray] = []
    for path in candidate_region_paths(root):
        text = path.read_text(encoding="utf-8", errors="replace")
        for match in RANGE_ARRAY_RE.finditer(text):
            start = int(match.group("start"), 16)
            end = int(match.group("end"), 16)
            data = bytes(int(value, 16) for value in HEX_BYTE_RE.findall(match.group("body")))
            expected = end - start
            if len(data) != expected:
                die(
                    f"{path.relative_to(root)}:{match.group('name')} declares range "
                    f"0x{start:08X}-0x{end:08X} ({expected} bytes) but contains {len(data)} bytes"
                )
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

def region_for(regions: list[RegionFile], start: int, end: int) -> RegionFile:
    owners = [region for region in regions if region.start <= start and end <= region.end]
    if len(owners) == 1:
        return owners[0]
    if not owners:
        die(f"no Method 3 region file owns 0x{start:08X}-0x{end:08X}")
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


def bytes_for(discovery_arrays: list[RawArray], rom: bytes, start: int, end: int) -> bytes:
    owner = owner_for(discovery_arrays, start, end, required=False)
    if owner is not None:
        begin = start - owner.start
        return owner.data[begin : begin + (end - start)]
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


def decode_oam_frame(arrays: list[RawArray], rom: bytes, address: int, name: str) -> OamFrame:
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
    animations = find_asm_animation_ranges(root, symbols)
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
   
    if regions:
        for animation in animations:
            region_for(regions, animation.start, animation.end)

    decoded_animations: list[tuple[AnimationRange, list[AnimationEntry]]] = []
    for animation in animations:
        data = bytes_for(arrays, rom, animation.start, animation.end)
        decoded_animations.append((animation, decode_animation(data, animation)))

    names = frame_name_map(decoded_animations)
    frames = [decode_oam_frame(arrays, rom, address, name) for address, name in sorted(names.items())]

    typed_objects: list[TypedObject] = []
    for frame in frames:
        typed_objects.append(
            TypedObject(frame.address, frame.address + frame.size, frame.name, emit_frame(frame), "frame")
        )
    for animation, entries in decoded_animations:
        typed_objects.append(
            TypedObject(
                animation.start,
                animation.end,
                animation.name,
                emit_animation(animation, entries, names),
                "animation",
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


def generated_preview(discovery: Discovery) -> str:
    header = [
        '#include "oam.h"',
        '#include "types.h"',
        "",
        f"/* Generated preview for sprite_ai/{discovery.module}. */",
        "/* Definitions are ordered by original ROM address. */",
        "",
    ]
    return "\n\n".join(["\n".join(header), *(obj.code for obj in discovery.typed_objects)]) + "\n"


def affected_arrays(discovery: Discovery) -> dict[Path, list[RawArray]]:
    if not discovery.regions:
        return {}
    result: dict[Path, list[RawArray]] = {}
    for obj in discovery.typed_objects:
        raw = owner_for(discovery.arrays, obj.start, obj.end, required=False)
        path = raw.path if raw is not None else region_for(discovery.regions, obj.start, obj.end).path
        result.setdefault(path, [])
        if raw is not None and raw not in result[path]:
            result[path].append(raw)
    return result


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
        gap_objects = [obj for obj in discovery.typed_objects if owner_for(discovery.arrays, obj.start, obj.end, required=False) is None]
        if gap_objects:
            print("Objects read from baserom and inserted into documented region gaps:")
            for obj in gap_objects:
                print(f"  0x{obj.start:08X}-0x{obj.end:08X} {obj.name}")
    else:
        print("Data mode: legacy labeled ASM blob (decoded directly from baserom)")
        print("Method 3 region file: not present on this branch")
    if preview_path:
        print(f"Generated preview: {preview_path.relative_to(discovery.root)}")


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Decode a sprite module's raw Method 3 OAM data into readable OAM_ENTRY C definitions."
    )
    parser.add_argument("module", nargs="?", help="module name, e.g. pinball or kaentsubo")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--apply", action="store_true", help="replace owning raw arrays in place")
    mode.add_argument("--check", action="store_true", help="validate discovery and decoding only")
    parser.add_argument("--root", type=Path, default=Path.cwd(), help="repository root")
    parser.add_argument("--rom", type=Path, help="override baserom path")
    parser.add_argument("--source", type=Path, help="override module C source path")
    args = parser.parse_args()

    try:
        root = repository_root(args.root)
        module = args.module or infer_module(root)
        discovery = build_discovery(root, module, args.rom, args.source)

        output_dir = root / "build" / "oam_decode"
        output_dir.mkdir(parents=True, exist_ok=True)
        preview_path = output_dir / f"{module}_generated.c"
        preview_path.write_text(generated_preview(discovery), encoding="utf-8")

        report(discovery, preview_path)
        if discovery.regions:
            print("Round-trip source bytes: MATCH (decoded from exact Method 3 ranges)")
        else:
            print("Source bytes: MATCH (decoded directly from exact ASM baserom_blob ranges)")

        if args.check:
            print("Check completed. No source files were changed.")
            return 0

        if args.apply:
            backup_dir = output_dir / "backups"
            changed = apply_changes(discovery, backup_dir)
            print("Updated:")
            for path in changed:
                print(f"  {path.relative_to(root)}")
            print(f"Backups: {backup_dir.relative_to(root)}")
            print("Run a clean build and verify the ROM MD5 before committing.")
            return 0

        print("No source files were changed.")
        print(f"Review {preview_path.relative_to(root)}.")
        if discovery.regions:
            print("Then apply with:")
            print(f"  python3 tools/decode_oam.py {module} --apply")
        else:
            print("This branch has no Method 3 shared-region C file, so automatic --apply is disabled.")
            print("Merge the Method 3 data-region base first, then rerun the same command with --apply.")
        return 0
    except ToolError as error:
        print(f"decode_oam.py: error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
