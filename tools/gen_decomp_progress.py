#!/usr/bin/env python3
"""
Generate Wario Land 4 decompilation progress from the current repo.

Generated repo artifacts:
  docs/progress-treemap.svg
  docs/progress.html
  report.json (decomp.dev version-2 unit/function progress artifact)

Default run:
  python3 tools/gen_decomp_progress.py

The script has no third-party dependencies.
"""

from __future__ import annotations

import argparse
import html
import json
import math
import os
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path


BAR_WIDTH = 30
SVG_WIDTH = 1280
SVG_HEIGHT = 860
SVG_PAD = 24

CODE_ADDR_MIN = 0x08000000
CODE_ADDR_MAX = 0x0A000000

STATUS_MATCHED = "matched"
STATUS_UNMATCHED = "not matched"
STATUS_UNKNOWN = STATUS_UNMATCHED

README_START = "<!-- DECOMP_PROGRESS:START -->"
README_END = "<!-- DECOMP_PROGRESS:END -->"

FUNC_NAME_RE = re.compile(r"^[A-Za-z_]\w*$")
ADDR_FUNC_LABEL_RE = re.compile(r"^(?:sub|func)_[0-9A-Fa-f]{6,8}$|^func_[0-9A-Fa-f]+$")
ASM_START_RE = re.compile(r"^\s*(?:\.thumb_func_start|thumb_func_start|glabel)\s+([A-Za-z_]\w*)")
ASM_LABEL_RE = re.compile(r"^\s*([A-Za-z_]\w*):\s*(?:@.*)?$")
ASSIGN_SYMBOL_RE = re.compile(r"^\s*([A-Za-z_]\w*)\s*=\s*0x([0-9A-Fa-f]+)\s*;?\s*$")
MAP_SYMBOL_RE = re.compile(r"\b0x([0-9A-Fa-f]{7,8})\b\s+([A-Za-z_]\w*)\b")
NM_SYMBOL_RE = re.compile(r"^\s*([0-9A-Fa-f]{7,8})\s+[A-Za-z]\s+([A-Za-z_]\w*)\b")
ASM_INCLUDE_RE = re.compile(r'asm_(?:unified|volatile)\s*\(\s*["\']\.include\s+["\']([^"\']+)["\']')
CONTRIB_RE = re.compile(
    r"^\s+(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(?:0x[0-9a-fA-F]+\s+)?(0x[0-9a-fA-F]+)\s+(\S.*\S|\S)\s*$"
)
MAP_NESTED_SYMBOL_RE = re.compile(r"^\s+(0x[0-9a-fA-F]+)\s+([A-Za-z_.$][\w.$]*)\s*$")
SECTION_TOTAL_RE = re.compile(r"^(\.\S+)\s+0x[0-9a-fA-F]+\s+0x[0-9a-fA-F]+\s*$")
NAKED_DEF_RE = re.compile(r"\bNAKED\b[^;{}()]*?\b(\w+)\s*\([^;]*?\)\s*\{")

CONTROL_WORDS = {
    "if",
    "for",
    "while",
    "switch",
    "return",
    "sizeof",
    "do",
}


@dataclass
class FunctionInfo:
    name: str
    module: str
    size: int
    status: str
    source: str
    size_source: str

    @property
    def matched(self) -> bool:
        return self.status == STATUS_MATCHED

    @property
    def exact_size(self) -> bool:
        return self.size_source == "symbol"


@dataclass
class SymbolInfo:
    size: int
    module: str
    source: str


@dataclass
class MapContribution:
    section: str
    addr: int
    size: int
    objpath: str
    source: str
    symbols: list[tuple[int, str]]


def is_probably_function_name(name: str) -> bool:
    if name.startswith(("sub_", "func_")):
        return True
    if name.startswith((
        "loc_",
        "off_",
        "byte_",
        "word_",
        "dword_",
        "stru_",
        "gUnk_",
        "sUnk_",
        "__",
    )):
        return False
    if name in CONTROL_WORDS:
        return False
    if name.isupper():
        return False
    return bool(FUNC_NAME_RE.match(name))


def visual_weight(size: int) -> float:
    return max(1.0, float(size))


def module_visual_weight(rows: list["FunctionInfo"]) -> float:
    # Give every module enough visual presence to carry a label, while keeping byte stats exact.
    return max(28.0, sum(visual_weight(row.size) for row in rows))


def iter_files(root: Path, suffixes: tuple[str, ...]) -> list[Path]:
    ignored_parts = {
        ".git",
        "build",
        "docs",
        "progress",
        "__pycache__",
        ".decomp_zip_inputs",
        "permuter_work",
        "permuter_best",
    }
    files: list[Path] = []
    for path in root.rglob("*"):
        if not path.is_file() or path.suffix not in suffixes:
            continue
        rel_parts = set(path.relative_to(root).parts)
        if rel_parts & ignored_parts:
            continue
        files.append(path)
    return sorted(files)


def clean_module_label(value: str) -> str:
    token = value.strip().strip("()").replace("\\", "/")
    if "(" in token and token.endswith(")"):
        token = token[token.rfind("(") + 1 : -1]
    token = token.rstrip("/")
    if not token:
        return "unknown"

    path = Path(token)
    stem = path.stem
    if stem:
        return stem
    return path.name or "unknown"


def module_from_path(root: Path, path: Path) -> str:
    return clean_module_label(str(path.relative_to(root)))


def module_from_object_path(value: str) -> str:
    token = value.strip().strip("()")
    token = token.replace("\\", "/")
    if "(" in token and token.endswith(")"):
        token = token[token.rfind("(") + 1 : -1]
    for marker in ("/build/us/", "build/us/", "/src/", "src/", "/asm/", "asm/"):
        if marker in token:
            token = token.split(marker, 1)[1]
            break
    if token.startswith(("build/us/", "src/", "asm/")):
        parts = token.split("/")
        if parts[0] == "build" and len(parts) > 2:
            parts = parts[2:]
        if parts and parts[0] in {"src", "asm"}:
            parts = parts[1:]
        token = "/".join(parts)
    if token.startswith("lib/"):
        token = token[4:]
    return clean_module_label(token)


def map_object_module(line: str) -> str | None:
    for token in reversed(line.replace("(", " (").replace(")", ") ").split()):
        if ".o" not in token:
            continue
        cleaned = token.strip()
        if cleaned.endswith(".o") or ".o)" in cleaned:
            return module_from_object_path(cleaned)
    return None


def object_stem(objpath: str) -> str:
    token = objpath.strip().strip("()").replace("\\", "/")
    if "(" in token and token.endswith(")"):
        token = token[token.rfind("(") + 1 : -1]
    if token.endswith(".o"):
        token = token[:-2]

    for prefix in ("build/us/", "build/jp/", "obj/"):
        if token.startswith(prefix):
            token = token[len(prefix) :]
            break

    if token.startswith(("src/", "asm/", "include/")):
        token = token.split("/", 1)[1]
    return token.strip("/")


def source_candidates_for_object(root: Path, objpath: str) -> tuple[Path | None, Path | None, Path | None]:
    stem = object_stem(objpath)
    c_path = root / "src" / f"{stem}.c"
    h_path = root / "include" / f"{stem}.h"
    s_path = root / "asm" / f"{stem}.s"

    if not c_path.exists():
        c_path = root / f"{stem}.c"
    if not h_path.exists():
        h_path = root / f"{stem}.h"
    if not s_path.exists():
        s_path = root / f"{stem}.s"

    return (
        c_path if c_path.exists() else None,
        h_path if h_path.exists() else None,
        s_path if s_path.exists() else None,
    )


NAKED_FUNCTION_CACHE: dict[Path, set[str]] = {}


def naked_functions_in(path: Path | None) -> set[str]:
    if path is None:
        return set()
    if path in NAKED_FUNCTION_CACHE:
        return NAKED_FUNCTION_CACHE[path]
    names = {match.group(1) for match in NAKED_DEF_RE.finditer(read_text(path))}
    NAKED_FUNCTION_CACHE[path] = names
    return names


def object_base_status(root: Path, objpath: str) -> tuple[str, Path | None]:
    c_path, h_path, s_path = source_candidates_for_object(root, objpath)
    if c_path is not None:
        return STATUS_MATCHED, c_path
    if h_path is not None:
        return STATUS_MATCHED, h_path
    if s_path is not None:
        return STATUS_UNMATCHED, s_path
    return STATUS_UNKNOWN, None


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8", errors="ignore")
    except OSError:
        return ""


def estimate_asm_bytes(lines: list[str]) -> int:
    total = 0
    for raw in lines:
        line = raw.split("@", 1)[0].strip()
        if not line or line.endswith(":") or line.startswith((".include", ".syntax", ".text", ".align", ".global")):
            continue
        if line.startswith(".byte"):
            total += max(0, line.count(",") + 1)
        elif line.startswith((".hword", ".short", ".2byte")):
            total += 2 * max(0, line.count(",") + 1)
        elif line.startswith((".word", ".4byte")):
            total += 4 * max(0, line.count(",") + 1)
        elif line.startswith(".space"):
            nums = re.findall(r"0x[0-9A-Fa-f]+|\d+", line)
            if nums:
                total += int(nums[0], 0)
        elif not line.startswith("."):
            # Thumb instructions are normally 2 bytes; a few are 4, so this is only a fallback.
            total += 2
    return max(total, 2)


def collect_asm_functions(root: Path) -> dict[str, FunctionInfo]:
    funcs: dict[str, FunctionInfo] = {}
    for path in iter_files(root, (".s", ".S")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] not in {"asm", "asm_arm", "data"}:
            continue

        lines = read_text(path).splitlines()
        current_name: str | None = None
        current_lines: list[str] = []
        current_status = STATUS_UNMATCHED

        def flush() -> None:
            nonlocal current_name, current_lines
            if not current_name or not is_probably_function_name(current_name):
                current_name = None
                current_lines = []
                return
            size = estimate_asm_bytes(current_lines)
            old = funcs.get(current_name)
            if old is None or size > old.size:
                funcs[current_name] = FunctionInfo(
                    name=current_name,
                    module=module_from_path(root, path),
                    size=size,
                    status=current_status,
                    source=str(rel),
                    size_source="asm estimate",
                )
            current_name = None
            current_lines = []

        for line in lines:
            start = ASM_START_RE.match(line)
            label = ASM_LABEL_RE.match(line)
            name = start.group(1) if start else None
            if name is None and label and ADDR_FUNC_LABEL_RE.match(label.group(1)):
                name = label.group(1)

            if name:
                flush()
                current_name = name
                current_lines = []
            elif current_name:
                current_lines.append(line)
        flush()

    return funcs


def symbol_candidates(root: Path) -> list[Path]:
    names = [
        "build/us/warioland4.map",
        "symbols.txt",
        "symbol_addrs.txt",
        "sym.txt",
        "warioland4.map",
        "wl4.map",
    ]
    paths = [root / name for name in names]
    paths.extend(root.glob("*.sym"))
    paths.extend(root.glob("*.map"))
    paths.extend(root.glob("build/**/*.map"))
    return sorted({path for path in paths if path.exists() and path.is_file()})


def parse_map_contributions(root: Path, map_path: Path) -> list[MapContribution]:
    contributions: list[MapContribution] = []
    current: MapContribution | None = None
    source = str(map_path.relative_to(root))

    for raw in read_text(map_path).splitlines():
        if not raw.strip():
            continue

        match = CONTRIB_RE.match(raw)
        if match:
            section, addr_text, size_text, objpath = match.groups()
            if section.startswith(".text"):
                current = MapContribution(
                    section=section,
                    addr=int(addr_text, 16),
                    size=int(size_text, 16),
                    objpath=objpath.strip(),
                    source=source,
                    symbols=[],
                )
                contributions.append(current)
            else:
                current = None
            continue

        if SECTION_TOTAL_RE.match(raw):
            current = None
            continue

        match = MAP_NESTED_SYMBOL_RE.match(raw)
        if match and current is not None:
            addr_text, name = match.groups()
            if is_probably_function_name(name):
                current.symbols.append((int(addr_text, 16), name))

    return contributions


def collect_map_functions(root: Path) -> list[FunctionInfo]:
    rows: list[FunctionInfo] = []

    for map_path in symbol_candidates(root):
        if map_path.suffix != ".map":
            continue

        contributions = parse_map_contributions(root, map_path)
        if not contributions:
            continue

        for contrib in contributions:
            if "(" in contrib.objpath and contrib.objpath.rstrip().endswith(")"):
                continue

            module = module_from_object_path(contrib.objpath)
            base_status, source_path = object_base_status(root, contrib.objpath)
            naked_names = naked_functions_in(source_path)
            ordered = sorted(set(contrib.symbols), key=lambda item: item[0])

            if not ordered:
                if contrib.size > 0:
                    rows.append(
                        FunctionInfo(
                            name=f"({clean_module_label(contrib.objpath)})",
                            module=module,
                            size=contrib.size,
                            status=base_status,
                            source=f"{contrib.source}:{contrib.objpath}",
                            size_source="symbol",
                        )
                    )
                continue

            end_addr = contrib.addr + contrib.size
            if ordered[0][0] > contrib.addr:
                rows.append(
                    FunctionInfo(
                        name="(unnamed)",
                        module=module,
                        size=ordered[0][0] - contrib.addr,
                        status=base_status,
                        source=f"{contrib.source}:{contrib.objpath}",
                        size_source="symbol",
                    )
                )

            for index, (addr, name) in enumerate(ordered):
                next_addr = ordered[index + 1][0] if index + 1 < len(ordered) else end_addr
                size = next_addr - addr
                if size <= 0 or size > 0x4000:
                    continue
                status = STATUS_UNMATCHED if name in naked_names else base_status
                rows.append(
                    FunctionInfo(
                        name=name,
                        module=module,
                        size=size,
                        status=status,
                        source=f"{contrib.source}:{contrib.objpath}",
                        size_source="symbol",
                    )
                )

        if rows:
            return rows

    return rows


def collect_symbol_info(root: Path) -> dict[str, SymbolInfo]:
    pairs: list[tuple[int, str, str, str]] = []
    for path in symbol_candidates(root):
        rel = str(path.relative_to(root))
        current_module = "symbols"
        is_map = path.suffix == ".map"
        current_is_text = not is_map
        for line in read_text(path).splitlines():
            stripped = line.lstrip()
            if is_map and stripped.startswith("."):
                section_name = stripped.split(None, 1)[0]
                current_is_text = section_name.startswith(".text")

            object_module = map_object_module(line)
            if object_module:
                current_module = object_module

            match = ASSIGN_SYMBOL_RE.match(line)
            if match:
                name = match.group(1)
                addr = int(match.group(2), 16)
                module = current_module
            else:
                match = MAP_SYMBOL_RE.search(line) or NM_SYMBOL_RE.match(line)
                if not match:
                    continue
                addr = int(match.group(1), 16)
                name = match.group(2)
                module = current_module
            if current_is_text and CODE_ADDR_MIN <= addr < CODE_ADDR_MAX and is_probably_function_name(name):
                pairs.append((addr, name, module, rel))

    if not pairs:
        return {}

    seen_addrs: set[tuple[int, str]] = set()
    unique_pairs: list[tuple[int, str, str, str]] = []
    for item in sorted(pairs):
        addr, name, module, source = item
        key = (addr, name)
        if key in seen_addrs:
            continue
        seen_addrs.add(key)
        unique_pairs.append(item)

    symbols: dict[str, SymbolInfo] = {}
    for index, (addr, name, module, source) in enumerate(unique_pairs):
        if index + 1 >= len(unique_pairs):
            continue
        next_addr = unique_pairs[index + 1][0]
        size = next_addr - addr
        if 0 < size <= 0x4000:
            symbols[name] = SymbolInfo(size=size, module=module, source=source)
    return symbols


def remove_comments(line: str, in_block: bool) -> tuple[str, bool]:
    out = []
    i = 0
    while i < len(line):
        if in_block:
            end = line.find("*/", i)
            if end == -1:
                return "", True
            i = end + 2
            in_block = False
            continue
        if line.startswith("/*", i):
            in_block = True
            i += 2
            continue
        if line.startswith("//", i):
            break
        out.append(line[i])
        i += 1
    return "".join(out), in_block



def split_macro_arguments(text: str) -> list[str]:
    """Split a C macro argument list without being confused by nested calls."""
    args: list[str] = []
    current: list[str] = []
    depth = 0
    in_string: str | None = None
    escaped = False

    for ch in text:
        if in_string is not None:
            current.append(ch)
            if escaped:
                escaped = False
            elif ch == "\\":
                escaped = True
            elif ch == in_string:
                in_string = None
            continue

        if ch in {"\"", "'"}:
            in_string = ch
            current.append(ch)
        elif ch in "([{":
            depth += 1
            current.append(ch)
        elif ch in ")]}" and depth > 0:
            depth -= 1
            current.append(ch)
        elif ch == "," and depth == 0:
            args.append("".join(current).strip())
            current = []
        else:
            current.append(ch)

    args.append("".join(current).strip())
    return args


def collect_macro_generated_function_names(root: Path) -> set[str]:
    """Return real linker symbols created only through function-generating macros.

    A macro is considered function-generating when one of its parameters is used
    as the function declarator in the macro body, for example::

        #define SIMPLE_ANIM(name, table, result) \
        u8 name(void) \
        { ... }

    Invocations such as ``SIMPLE_ANIM(ZombieWarioLanding, ...)`` are then
    excluded from progress totals. Explicit C function definitions are untouched.
    """
    generated: set[str] = set()

    for path in iter_files(root, (".c", ".h")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] == "tools":
            continue

        raw_lines = read_text(path).splitlines()
        logical_lines: list[str] = []
        current = ""
        for raw in raw_lines:
            stripped = raw.rstrip()
            current += stripped[:-1] + " " if stripped.endswith("\\") else stripped
            if not stripped.endswith("\\"):
                logical_lines.append(current)
                current = ""
        if current:
            logical_lines.append(current)

        generator_params: dict[str, list[int]] = {}
        for line in logical_lines:
            match = re.match(
                r"^\s*#\s*define\s+([A-Za-z_]\w*)\s*\(([^)]*)\)\s*(.*)$",
                line,
            )
            if not match:
                continue

            macro_name, params_text, body = match.groups()
            params = [param.strip() for param in params_text.split(",") if param.strip()]
            indexes: list[int] = []
            for index, param in enumerate(params):
                if not FUNC_NAME_RE.match(param):
                    continue
                # The parameter must be used as a function declarator followed by
                # a body, not merely as a callback, expression, or data symbol.
                declarator = re.compile(
                    rf"\b{re.escape(param)}\s*\([^;{{}}]*\)\s*\{{"
                )
                if declarator.search(body):
                    indexes.append(index)
            if indexes:
                generator_params[macro_name] = indexes

        if not generator_params:
            continue

        for line in logical_lines:
            if line.lstrip().startswith("#"):
                continue
            for macro_name, indexes in generator_params.items():
                invocation = re.match(
                    rf"^\s*{re.escape(macro_name)}\s*\((.*)\)\s*;?\s*$",
                    line,
                )
                if not invocation:
                    continue
                args = split_macro_arguments(invocation.group(1))
                for index in indexes:
                    if index >= len(args):
                        continue
                    name = args[index].strip()
                    if FUNC_NAME_RE.match(name) and is_probably_function_name(name):
                        generated.add(name)

    return generated

def find_c_function_name(signature: str) -> str | None:
    signature = re.sub(r"\s+", " ", signature.strip())
    if ";" in signature:
        return None
    match = re.search(r"([A-Za-z_]\w*)\s*\([^;{}]*\)\s*\{", signature)
    if not match:
        return None
    name = match.group(1)
    if name in CONTROL_WORDS:
        return None
    return name


def collect_c_functions(root: Path) -> dict[str, FunctionInfo]:
    funcs: dict[str, FunctionInfo] = {}
    for path in iter_files(root, (".c", ".h")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] in {"tools"}:
            continue

        lines = read_text(path).splitlines()
        in_block_comment = False
        pending = ""
        pending_start = 0

        for lineno, raw in enumerate(lines, start=1):
            line, in_block_comment = remove_comments(raw, in_block_comment)

            include = ASM_INCLUDE_RE.search(line)
            if include:
                inc = include.group(1)
                name = Path(inc).stem
                if is_probably_function_name(name):
                    funcs[name] = FunctionInfo(
                        name=name,
                        module=module_from_path(root, path),
                        size=2,
                        status=STATUS_UNMATCHED,
                        source=f"{rel}:{lineno}",
                        size_source="asm include",
                    )

            if not pending and "(" in line and not line.lstrip().startswith("#"):
                pending_start = lineno
            if pending or ("(" in line and not line.lstrip().startswith("#")):
                pending += " " + line.strip()

            if "{" in pending:
                name = find_c_function_name(pending)
                if name and is_probably_function_name(name):
                    funcs[name] = FunctionInfo(
                        name=name,
                        module=module_from_path(root, path),
                        size=max(2, len(pending) // 4),
                        status=STATUS_MATCHED,
                        source=f"{rel}:{pending_start}",
                        size_source="source estimate",
                    )
                pending = ""
            elif ";" in pending or len(pending) > 500:
                pending = ""

    return funcs


def merge_functions(root: Path) -> list[FunctionInfo]:
    macro_generated = collect_macro_generated_function_names(root)
    map_rows = [
        row for row in collect_map_functions(root)
        if row.name not in macro_generated
    ]
    if map_rows:
        c_funcs = {
            name: info for name, info in collect_c_functions(root).items()
            if name not in macro_generated
        }
        by_name = {row.name: row for row in map_rows}
        for name, c_info in c_funcs.items():
            row = by_name.get(name)
            if row is None:
                map_rows.append(c_info)
                continue
            if row.status != STATUS_MATCHED:
                row.status = STATUS_MATCHED
            if row.module in {"unknown", "symbols"}:
                row.module = c_info.module
        return sorted(map_rows, key=lambda row: (row.module, row.name))

    asm_funcs = {
        name: info for name, info in collect_asm_functions(root).items()
        if name not in macro_generated
    }
    c_funcs = {
        name: info for name, info in collect_c_functions(root).items()
        if name not in macro_generated
    }
    symbol_infos = {
        name: info for name, info in collect_symbol_info(root).items()
        if name not in macro_generated
    }

    names = sorted(set(asm_funcs) | set(c_funcs) | set(symbol_infos))
    merged: list[FunctionInfo] = []

    for name in names:
        c_info = c_funcs.get(name)
        asm_info = asm_funcs.get(name)
        symbol_info = symbol_infos.get(name)
        base = c_info or asm_info
        if base is None:
            module = symbol_info.module if symbol_info else "unknown"
            source = symbol_info.source if symbol_info else "symbols"
            base = FunctionInfo(name, module, 2, STATUS_UNMATCHED, source, "source estimate")

        if symbol_info is not None:
            size = symbol_info.size
            size_source = "symbol"
        else:
            size = max(
                c_info.size if c_info else 0,
                asm_info.size if asm_info else 0,
                2,
            )
            size_source = base.size_source

        module = base.module
        source = base.source
        if base.module in {"symbols", "unknown"} and symbol_info is not None:
            module = symbol_info.module
            source = symbol_info.source

        status = base.status
        if c_info and c_info.status == STATUS_MATCHED:
            status = STATUS_MATCHED
        elif asm_info:
            status = asm_info.status

        merged.append(
            FunctionInfo(
                name=name,
                module=module,
                size=size,
                status=status,
                source=source,
                size_source=size_source,
            )
        )

    return merged


def progress_bar(label: str, done: int, total: int, suffix: str = "") -> str:
    pct = 0.0 if total == 0 else done / total
    filled = round(pct * BAR_WIDTH)
    bar = "█" * filled + "░" * (BAR_WIDTH - filled)
    return f"{label:<10} {bar} {pct * 100:5.1f}%   {done:,} / {total:,}{suffix}"


def summarize(rows: list[FunctionInfo]) -> tuple[str, str]:
    total_functions = len(rows)
    matched_functions = sum(1 for row in rows if row.matched)
    total_size = sum(row.size for row in rows)
    matched_size = sum(row.size for row in rows if row.matched)
    return (
        progress_bar("Functions", matched_functions, total_functions),
        progress_bar("Code size", matched_size, total_size, " bytes"),
    )


def stats(rows: list[FunctionInfo]) -> dict[str, int | float | str]:
    total_functions = len(rows)
    matched_functions = sum(1 for row in rows if row.matched)
    total_size = sum(row.size for row in rows)
    matched_size = sum(row.size for row in rows if row.matched)
    exact_sizes = sum(1 for row in rows if row.exact_size)
    return {
        "total_functions": total_functions,
        "matched_functions": matched_functions,
        "total_size": total_size,
        "matched_size": matched_size,
        "function_pct": 0.0 if total_functions == 0 else matched_functions / total_functions,
        "size_pct": 0.0 if total_size == 0 else matched_size / total_size,
        "exact_sizes": exact_sizes,
        "exact_pct": 0.0 if total_functions == 0 else exact_sizes / total_functions,
        "byte_label": "exact" if total_functions > 0 and exact_sizes == total_functions else "mixed/estimated",
    }


def esc(value: object) -> str:
    return html.escape(str(value), quote=True)


def fmt_int(value: int | float) -> str:
    return f"{int(value):,}"


def fmt_pct(value: int | float) -> str:
    return f"{float(value) * 100:.1f}%"


def worst_ratio(row: list[dict], side: float) -> float:
    if not row:
        return math.inf
    total = sum(item["value"] for item in row)
    if total <= 0 or side <= 0:
        return math.inf
    values = [item["value"] for item in row]
    max_value = max(values)
    min_value = min(values)
    side2 = side * side
    return max((side2 * max_value) / (total * total), (total * total) / (side2 * min_value))


def normalize_items(items: list[dict], area: float) -> list[dict]:
    total = sum(item["value"] for item in items)
    if total <= 0:
        return []
    scale = area / total
    return [{**item, "value": max(0.1, item["value"] * scale)} for item in items if item["value"] > 0]


def layout_row(row: list[dict], x: float, y: float, w: float, h: float) -> tuple[list[tuple[dict, float, float, float, float]], float, float, float, float]:
    out: list[tuple[dict, float, float, float, float]] = []
    row_area = sum(item["value"] for item in row)
    if w >= h:
        row_h = row_area / w if w else 0
        cursor = x
        for item in row:
            item_w = item["value"] / row_h if row_h else 0
            out.append((item, cursor, y, item_w, row_h))
            cursor += item_w
        return out, x, y + row_h, w, h - row_h

    row_w = row_area / h if h else 0
    cursor = y
    for item in row:
        item_h = item["value"] / row_w if row_w else 0
        out.append((item, x, cursor, row_w, item_h))
        cursor += item_h
    return out, x + row_w, y, w - row_w, h


def squarify(items: list[dict], x: float, y: float, w: float, h: float) -> list[tuple[dict, float, float, float, float]]:
    items = [item for item in items if item["value"] > 0]
    if not items:
        return []
    total = sum(item["value"] for item in items)
    if total <= 0 or w <= 0 or h <= 0:
        return []

    scale = (w * h) / total
    scaled = [(item, item["value"] * scale) for item in sorted(items, key=lambda item: item["value"], reverse=True)]
    out: list[tuple[dict, float, float, float, float]] = []
    rx, ry, rw, rh = x, y, w, h
    index = 0

    while index < len(scaled):
        short = min(rw, rh)
        row = [scaled[index]]
        index += 1

        while index < len(scaled):
            trial = row + [scaled[index]]
            if squarify_worst(trial, short) <= squarify_worst(row, short):
                row = trial
                index += 1
            else:
                break

        out.extend(squarify_layout_row(row, rx, ry, rw, rh))
        row_sum = sum(area for _, area in row)
        if rw <= rh:
            delta_h = row_sum / rw if rw else 0
            ry += delta_h
            rh -= delta_h
        else:
            delta_w = row_sum / rh if rh else 0
            rx += delta_w
            rw -= delta_w

    return out


def squarify_worst(row: list[tuple[dict, float]], short: float) -> float:
    total = sum(area for _, area in row)
    if total <= 0 or short <= 0:
        return math.inf
    largest = max(area for _, area in row)
    smallest = min(area for _, area in row)
    if smallest <= 0:
        return math.inf
    short2 = short * short
    return max((short2 * largest) / (total * total), (total * total) / (short2 * smallest))


def squarify_layout_row(row: list[tuple[dict, float]], x: float, y: float, w: float, h: float) -> list[tuple[dict, float, float, float, float]]:
    total = sum(area for _, area in row)
    out: list[tuple[dict, float, float, float, float]] = []
    if total <= 0:
        return out

    if w <= h:
        row_h = total / w if w else 0
        cursor_x = x
        for item, area in row:
            item_w = area / row_h if row_h else 0
            out.append((item, cursor_x, y, item_w, row_h))
            cursor_x += item_w
    else:
        row_w = total / h if h else 0
        cursor_y = y
        for item, area in row:
            item_h = area / row_w if row_w else 0
            out.append((item, x, cursor_y, row_w, item_h))
            cursor_y += item_h

    return out


def color_for_row(row: FunctionInfo) -> str:
    return "url(#matchedGrad)" if row.matched else "url(#unmatchedGrad)"


def add_text(body: list[str], x: float, y: float, text: object, size: int, color: str, weight: int = 400, anchor: str = "start") -> None:
    body.append(
        f'<text x="{x:.2f}" y="{y:.2f}" fill="{color}" font-family="Inter, Segoe UI, sans-serif" '
        f'font-size="{size}" font-weight="{weight}" text-anchor="{anchor}">{esc(text)}</text>'
    )


def add_card(body: list[str], x: float, y: float, w: float, h: float, label: str, value: str, sub: str) -> None:
    body.append(f'<rect x="{x:.2f}" y="{y:.2f}" width="{w:.2f}" height="{h:.2f}" rx="10" fill="#0f172a" stroke="#1e293b"/>')
    add_text(body, x + 16, y + 25, label, 12, "#94a3b8", 700)
    add_text(body, x + 16, y + 56, value, 25, "#f8fafc", 800)
    add_text(body, x + 16, y + 80, sub, 12, "#94a3b8", 500)


def write_svg(rows: list[FunctionInfo], svg_path: Path) -> Path:
    svg_path.parent.mkdir(parents=True, exist_ok=True)
    info = stats(rows)
    modules: dict[str, list[FunctionInfo]] = {}
    for row in rows:
        modules.setdefault(row.module, []).append(row)

    module_items = []
    for module, funcs in modules.items():
        total_bytes = sum(row.size for row in funcs)
        matched_bytes = sum(row.size for row in funcs if row.matched)
        module_items.append(
            {
                "name": module,
                "functions": sorted(funcs, key=lambda row: row.size, reverse=True),
                "value": module_visual_weight(funcs),
                "bytes": total_bytes,
                "matched": matched_bytes,
            }
        )

    function_line, size_line = summarize(rows)
    byte_note = f'byte sizes: {info["byte_label"]} ({fmt_int(info["exact_sizes"])} / {fmt_int(info["total_functions"])} exact)'

    body = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{SVG_WIDTH}" height="{SVG_HEIGHT}" viewBox="0 0 {SVG_WIDTH} {SVG_HEIGHT}">',
        "<defs>",
        '<style><![CDATA[',
        ".title{font:700 28px Inter,Segoe UI,sans-serif;fill:#e5e7eb}",
        ".sub{font:500 13px Inter,Segoe UI,sans-serif;fill:#94a3b8}",
        ".mono{font:500 13px ui-monospace,SFMono-Regular,Menlo,monospace;fill:#cbd5e1}",
        ".module{font:700 12px Inter,Segoe UI,sans-serif;fill:#e2e8f0}",
        ".percent{font:700 11px Inter,Segoe UI,sans-serif;fill:#94a3b8}",
        ".func{font:700 9px Inter,Segoe UI,sans-serif;fill:#ecfdf5}",
        "]]></style>",
        '<linearGradient id="matchedGrad" x1="0" x2="1" y1="0" y2="1"><stop offset="0%" stop-color="#39d353"/><stop offset="100%" stop-color="#238636"/></linearGradient>',
        '<linearGradient id="unmatchedGrad" x1="0" x2="1" y1="0" y2="1"><stop offset="0%" stop-color="#4a4d52"/><stop offset="100%" stop-color="#30333a"/></linearGradient>',
        "</defs>",
        '<rect width="100%" height="100%" fill="#0d1117"/>',
    ]

    body.append(f'<text x="{SVG_PAD}" y="42" class="title">Wario Land 4 Decompilation Progress</text>')
    body.append(f'<text x="{SVG_PAD}" y="68" class="mono">{esc(function_line)}</text>')
    body.append(f'<text x="{SVG_PAD}" y="88" class="mono">{esc(size_line)}</text>')
    body.append(f'<text x="{SVG_WIDTH - SVG_PAD}" y="68" text-anchor="end" class="sub">green = matched C</text>')
    body.append(f'<text x="{SVG_WIDTH - SVG_PAD}" y="88" text-anchor="end" class="sub">{esc(byte_note)}</text>')

    chart_x = 6
    chart_y = 112
    chart_w = SVG_WIDTH - chart_x * 2
    chart_h = SVG_HEIGHT - chart_y - 6
    body.append(f'<rect x="{chart_x:.2f}" y="{chart_y:.2f}" width="{chart_w:.2f}" height="{chart_h:.2f}" fill="#05080d" stroke="#000000" stroke-width="1"/>')

    for module_index, (item, x, y, w, h) in enumerate(squarify(module_items, chart_x + 1, chart_y + 1, chart_w - 2, chart_h - 2)):
        pct = 0.0 if item["bytes"] == 0 else item["matched"] / item["bytes"]
        title = f'{item["name"]}: {pct * 100:.1f}% matched, {item["bytes"]:,} bytes'
        clip_id = f"moduleLabelClip{module_index}"
        body.append("<g>")
        body.append(f"<title>{esc(title)}</title>")
        body.append(f'<rect x="{x:.2f}" y="{y:.2f}" width="{max(0.0, w - 0.6):.2f}" height="{max(0.0, h - 0.6):.2f}" fill="#10151c" stroke="#000000" stroke-width="1"/>')

        header_h = min(18.0, max(10.0, h * 0.18))
        label_font = 11 if w > 86 and h > 38 else 8
        percent_font = 10 if w > 86 and h > 38 else 7
        label = item["name"]
        max_chars = max(3, int((w - 12) / max(5.0, label_font * 0.58)))
        if len(label) > max_chars:
            label = label[: max(1, max_chars - 1)] + "…"
        body.append(f'<clipPath id="{clip_id}"><rect x="{x + 2:.2f}" y="{y + 1:.2f}" width="{max(1.0, w - 4):.2f}" height="{max(1.0, header_h):.2f}"/></clipPath>')
        body.append(f'<rect x="{x + 1:.2f}" y="{y + 1:.2f}" width="{max(0.0, w - 2):.2f}" height="{max(0.0, header_h):.2f}" fill="#05080d"/>')
        body.append(
            f'<text x="{x + 2.5:.2f}" y="{y + min(header_h - 2, label_font + 3):.2f}" '
            f'clip-path="url(#{clip_id})" fill="#e2e8f0" font-family="Inter, Segoe UI, sans-serif" '
            f'font-size="{label_font}" font-weight="800">{esc(label)}</text>'
        )
        if w > 54:
            body.append(
                f'<text x="{x + w - 3:.2f}" y="{y + min(header_h - 2, percent_font + 3):.2f}" '
                f'text-anchor="end" clip-path="url(#{clip_id})" fill="#94a3b8" font-family="Inter, Segoe UI, sans-serif" '
                f'font-size="{percent_font}" font-weight="700">{pct * 100:.0f}%</text>'
            )

        inner_x = x + 1
        inner_y = y + header_h + 1
        inner_w = max(0.0, w - 2)
        inner_h = max(0.0, h - header_h - 2)
        func_items = [{"value": visual_weight(row.size), "row": row} for row in item["functions"]]

        if inner_w > 4 and inner_h > 4:
            for wrapped, fx, fy, fw, fh in squarify(func_items, inner_x, inner_y, inner_w, inner_h):
                row: FunctionInfo = wrapped["row"]
                if fw < 1.2 or fh < 1.2:
                    continue
                tip = f"{row.module}/{row.name}: {row.size:,} bytes, {row.status}, size={row.size_source}"
                stroke = "#2c7a41" if row.matched else "#393b3f"
                body.append(
                    f'<rect x="{fx:.2f}" y="{fy:.2f}" width="{max(0.0, fw - 0.35):.2f}" height="{max(0.0, fh - 0.35):.2f}" '
                    f'fill="{color_for_row(row)}" stroke="{stroke}" stroke-opacity="0.72" stroke-width="0.45">'
                    f"<title>{esc(tip)}</title></rect>"
                )
                if fw > 82 and fh > 22 and row.matched:
                    label = row.name
                    max_chars = max(8, int((fw - 8) / 5.8))
                    if len(label) > max_chars:
                        label = label[: max_chars - 1] + "..."
                    body.append(f'<text x="{fx + 4:.2f}" y="{fy + 14:.2f}" class="func">{esc(label)}</text>')
        body.append("</g>")

    body.append(f'<text x="{SVG_WIDTH - SVG_PAD}" y="{SVG_HEIGHT - 7}" text-anchor="end" class="sub">Generated by tools/gen_decomp_progress.py</text>')
    body.append("</svg>")
    svg_path.write_text("\n".join(body), encoding="utf-8")
    return svg_path


def write_html(rows: list[FunctionInfo], html_path: Path) -> Path:
    html_path.parent.mkdir(parents=True, exist_ok=True)
    info = stats(rows)
    payload = {
        "stats": info,
        "rows": [
            {
                "name": row.name,
                "module": row.module,
                "size": row.size,
                "layoutSize": visual_weight(row.size),
                "status": row.status,
                "matched": row.matched,
                "source": row.source,
                "sizeSource": row.size_source,
            }
            for row in rows
        ],
    }
    data_json = json.dumps(payload, separators=(",", ":")).replace("</", "<\\/")
    html_text = f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Wario Land 4 Decompilation Progress</title>
<style>
:root {{
  color-scheme: dark;
  --bg: #020617;
  --panel: #0f172a;
  --panel2: #111827;
  --line: #1e293b;
  --muted: #94a3b8;
  --text: #f8fafc;
  --green: #22c55e;
  --green2: #34d399;
  --slate: #334155;
  --slate2: #64748b;
}}
* {{ box-sizing: border-box; }}
body {{
  margin: 0;
  background: radial-gradient(circle at 20% 0%, #13203a 0, transparent 28rem), var(--bg);
  color: var(--text);
  font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
}}
main {{
  width: min(1480px, calc(100vw - 32px));
  margin: 0 auto;
  padding: 28px 0;
}}
.top {{
  display: grid;
  grid-template-columns: 1fr auto;
  gap: 18px;
  align-items: end;
  margin-bottom: 18px;
}}
h1 {{
  margin: 0 0 6px;
  font-size: clamp(28px, 4vw, 52px);
  line-height: 1;
  letter-spacing: 0;
}}
.sub {{ margin: 0; color: var(--muted); }}
.actions {{ display: flex; gap: 10px; flex-wrap: wrap; justify-content: end; }}
button, input, select {{
  border: 1px solid var(--line);
  background: rgba(15, 23, 42, .92);
  color: var(--text);
  border-radius: 10px;
  padding: 10px 12px;
  font: inherit;
}}
button {{ cursor: pointer; }}
button.active {{ border-color: var(--green); color: #dcfce7; box-shadow: 0 0 0 1px rgba(34,197,94,.25) inset; }}
.cards {{
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 12px;
  margin-bottom: 14px;
}}
.card {{
  background: linear-gradient(180deg, rgba(15,23,42,.96), rgba(15,23,42,.72));
  border: 1px solid var(--line);
  border-radius: 12px;
  padding: 16px;
}}
.label {{ color: var(--muted); font-size: 12px; text-transform: uppercase; font-weight: 800; letter-spacing: .08em; }}
.value {{ margin-top: 8px; font-size: 30px; font-weight: 850; }}
.detail {{ margin-top: 5px; color: var(--muted); font-size: 13px; }}
.tools {{
  display: grid;
  grid-template-columns: 1fr 170px 170px 110px;
  gap: 10px;
  margin-bottom: 14px;
}}
.stage {{
  position: relative;
  min-height: 640px;
  background: linear-gradient(180deg, rgba(15,23,42,.95), rgba(2,6,23,.95));
  border: 1px solid var(--line);
  border-radius: 14px;
  overflow: hidden;
  box-shadow: 0 18px 50px rgba(0,0,0,.28);
}}
.workspace {{
  display: grid;
  grid-template-columns: minmax(0, 1fr) 340px;
  gap: 14px;
  align-items: stretch;
}}
.done-panel {{
  min-height: 640px;
  max-height: 720px;
  overflow: hidden;
  background: linear-gradient(180deg, rgba(15,23,42,.95), rgba(2,6,23,.95));
  border: 1px solid var(--line);
  border-radius: 14px;
  box-shadow: 0 18px 50px rgba(0,0,0,.22);
}}
.done-head {{
  padding: 14px 16px;
  border-bottom: 1px solid var(--line);
}}
.done-head strong {{ display: block; font-size: 15px; }}
.done-head span {{ color: var(--muted); font-size: 12px; }}
.done-list {{
  height: calc(100% - 68px);
  overflow: auto;
  padding: 8px;
}}
.done-item {{
  display: grid;
  grid-template-columns: 1fr auto;
  gap: 8px;
  padding: 9px 10px;
  border-bottom: 1px solid rgba(30,41,59,.7);
  font-size: 12px;
}}
.done-item b {{
  color: #dcfce7;
  font-weight: 750;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}}
.done-item small {{
  grid-column: 1 / -1;
  color: var(--muted);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}}
.done-size {{ color: #86efac; font-variant-numeric: tabular-nums; }}
canvas {{
  display: block;
  width: 100%;
  height: 720px;
  cursor: crosshair;
}}
.tooltip {{
  position: fixed;
  pointer-events: none;
  opacity: 0;
  transform: translate(10px, 10px);
  z-index: 10;
  background: rgba(2, 6, 23, .94);
  border: 1px solid #334155;
  border-radius: 10px;
  padding: 10px 12px;
  min-width: 260px;
  box-shadow: 0 14px 36px rgba(0,0,0,.35);
}}
.tooltip strong {{ display: block; margin-bottom: 5px; }}
.tooltip div {{ color: var(--muted); font-size: 13px; line-height: 1.45; }}
.legend {{ display: flex; gap: 16px; align-items: center; color: var(--muted); font-size: 13px; padding: 10px 2px 0; }}
.dot {{ width: 10px; height: 10px; display: inline-block; border-radius: 3px; margin-right: 6px; vertical-align: -1px; }}
.matched {{ background: var(--green); }}
.unmatched {{ background: var(--slate2); }}
@media (max-width: 900px) {{
  .top {{ grid-template-columns: 1fr; }}
  .actions {{ justify-content: start; }}
  .cards {{ grid-template-columns: repeat(2, minmax(0, 1fr)); }}
  .tools {{ grid-template-columns: 1fr; }}
  .workspace {{ grid-template-columns: 1fr; }}
  .done-panel {{ max-height: 420px; min-height: 320px; }}
  canvas {{ height: 620px; }}
}}
@media (max-width: 560px) {{
  main {{ width: calc(100vw - 20px); padding-top: 18px; }}
  .cards {{ grid-template-columns: 1fr; }}
}}
</style>
</head>
<body>
<main>
  <section class="top">
    <div>
      <h1>Wario Land 4 Progress</h1>
      <p class="sub">Interactive decompilation treemap. Each tile is one function, sized by byte count.</p>
    </div>
    <div class="actions">
      <button class="active" data-status="all">All</button>
      <button data-status="matched">Matched</button>
      <button data-status="not matched">Not matched</button>
    </div>
  </section>
  <section class="cards">
    <div class="card"><div class="label">Functions</div><div class="value" id="functionsPct"></div><div class="detail" id="functionsDetail"></div></div>
    <div class="card"><div class="label">Code Size</div><div class="value" id="sizePct"></div><div class="detail" id="sizeDetail"></div></div>
    <div class="card"><div class="label">Byte Sizing</div><div class="value" id="byteSizing"></div><div class="detail" id="byteDetail"></div></div>
    <div class="card"><div class="label">Visible</div><div class="value" id="visibleCount"></div><div class="detail" id="visibleDetail"></div></div>
  </section>
  <section class="tools">
    <input id="search" type="search" placeholder="Search function or module">
    <select id="module"></select>
    <select id="sort">
      <option value="size">Largest first</option>
      <option value="module">Module</option>
      <option value="name">Name</option>
    </select>
    <button id="reset">Reset</button>
  </section>
  <section class="workspace">
    <div class="stage">
      <canvas id="treemap"></canvas>
    </div>
    <aside class="done-panel">
      <div class="done-head">
        <strong>Done Matched Functions</strong>
        <span id="doneSummary"></span>
      </div>
      <div class="done-list" id="doneList"></div>
    </aside>
  </section>
  <div class="legend">
    <span><span class="dot matched"></span>Matched C</span>
    <span><span class="dot unmatched"></span>Not matched</span>
    <span id="exactNote"></span>
  </div>
</main>
<div class="tooltip" id="tooltip"></div>
<script>
const DATA = {data_json};
const rows = DATA.rows;
const stats = DATA.stats;
const state = {{ status: "all", query: "", module: "all", sort: "size" }};
const canvas = document.getElementById("treemap");
const ctx = canvas.getContext("2d");
const tip = document.getElementById("tooltip");
let rects = [];

const fmtInt = new Intl.NumberFormat("en-US");
const pct = value => `${{(value * 100).toFixed(1)}}%`;

function init() {{
  document.getElementById("functionsPct").textContent = pct(stats.function_pct);
  document.getElementById("functionsDetail").textContent = `${{fmtInt.format(stats.matched_functions)}} / ${{fmtInt.format(stats.total_functions)}} matched`;
  document.getElementById("sizePct").textContent = pct(stats.size_pct);
  document.getElementById("sizeDetail").textContent = `${{fmtInt.format(stats.matched_size)}} / ${{fmtInt.format(stats.total_size)}} bytes`;
  document.getElementById("byteSizing").textContent = stats.byte_label;
  document.getElementById("byteDetail").textContent = `${{fmtInt.format(stats.exact_sizes)}} / ${{fmtInt.format(stats.total_functions)}} exact sizes`;
  document.getElementById("exactNote").textContent = `Byte sizing: ${{stats.byte_label}}`;

  const modules = [...new Set(rows.map(row => row.module))].sort();
  const moduleSelect = document.getElementById("module");
  moduleSelect.innerHTML = `<option value="all">All modules</option>` + modules.map(name => `<option>${{escapeHtml(name)}}</option>`).join("");

  document.querySelectorAll("[data-status]").forEach(button => {{
    button.addEventListener("click", () => {{
      document.querySelectorAll("[data-status]").forEach(item => item.classList.remove("active"));
      button.classList.add("active");
      state.status = button.dataset.status;
      draw();
    }});
  }});
  document.getElementById("search").addEventListener("input", event => {{ state.query = event.target.value.toLowerCase(); draw(); }});
  moduleSelect.addEventListener("change", event => {{ state.module = event.target.value; draw(); }});
  document.getElementById("sort").addEventListener("change", event => {{ state.sort = event.target.value; draw(); }});
  document.getElementById("reset").addEventListener("click", reset);
  window.addEventListener("resize", draw);
  canvas.addEventListener("mousemove", onMove);
  canvas.addEventListener("mouseleave", () => tip.style.opacity = 0);
  draw();
}}

function reset() {{
  state.status = "all";
  state.query = "";
  state.module = "all";
  state.sort = "size";
  document.getElementById("search").value = "";
  document.getElementById("module").value = "all";
  document.getElementById("sort").value = "size";
  document.querySelectorAll("[data-status]").forEach(item => item.classList.toggle("active", item.dataset.status === "all"));
  draw();
}}

function escapeHtml(value) {{
  return String(value).replace(/[&<>"']/g, char => ({{ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }}[char]));
}}

function filteredRows() {{
  let out = rows.filter(row => {{
    if (state.status !== "all" && row.status !== state.status) return false;
    if (state.module !== "all" && row.module !== state.module) return false;
    if (state.query && !(row.name.toLowerCase().includes(state.query) || row.module.toLowerCase().includes(state.query))) return false;
    return true;
  }});
  if (state.sort === "name") out.sort((a, b) => a.name.localeCompare(b.name));
  else if (state.sort === "module") out.sort((a, b) => a.module.localeCompare(b.module) || b.size - a.size);
  else out.sort((a, b) => b.size - a.size);
  return out;
}}

function groupModules(items) {{
  const byModule = new Map();
  for (const row of items) {{
    if (!byModule.has(row.module)) byModule.set(row.module, []);
    byModule.get(row.module).push(row);
  }}
  return [...byModule.entries()].map(([name, functions]) => ({{
    name,
    functions,
    value: Math.max(28, functions.reduce((sum, row) => sum + row.layoutSize, 0)),
    bytes: functions.reduce((sum, row) => sum + row.size, 0),
    matched: functions.filter(row => row.matched).reduce((sum, row) => sum + row.size, 0)
  }})).sort((a, b) => b.value - a.value);
}}

function worst(row, side) {{
  if (!row.length) return Infinity;
  const total = row.reduce((sum, item) => sum + item.value, 0);
  const values = row.map(item => item.value);
  const min = Math.min(...values);
  const max = Math.max(...values);
  return Math.max((side * side * max) / (total * total), (total * total) / (side * side * min));
}}

function layoutRow(row, box) {{
  const area = row.reduce((sum, item) => sum + item.value, 0);
  const rects = [];
  if (box.w >= box.h) {{
    const h = area / box.w;
    let x = box.x;
    for (const item of row) {{
      const w = item.value / h;
      rects.push({{ item, x, y: box.y, w, h }});
      x += w;
    }}
    return {{ rects, box: {{ x: box.x, y: box.y + h, w: box.w, h: box.h - h }} }};
  }}
  const w = area / box.h;
  let y = box.y;
  for (const item of row) {{
    const h = item.value / w;
    rects.push({{ item, x: box.x, y, w, h }});
    y += h;
  }}
  return {{ rects, box: {{ x: box.x + w, y: box.y, w: box.w - w, h: box.h }} }};
}}

function squarify(items, box) {{
  const total = items.reduce((sum, item) => sum + item.value, 0);
  if (!total) return [];
  const scale = (box.w * box.h) / total;
  const scaled = items
    .filter(item => item.value > 0)
    .sort((a, b) => b.value - a.value)
    .map(item => [item, item.value * scale]);

  function worst(row, short) {{
    const sum = row.reduce((acc, pair) => acc + pair[1], 0);
    if (sum <= 0 || short <= 0) return Infinity;
    const values = row.map(pair => pair[1]);
    const max = Math.max(...values);
    const min = Math.min(...values);
    if (min <= 0) return Infinity;
    return Math.max((short * short * max) / (sum * sum), (sum * sum) / (short * short * min));
  }}

  function layoutRow(row, rect) {{
    const sum = row.reduce((acc, pair) => acc + pair[1], 0);
    const out = [];
    if (sum <= 0) return out;

    if (rect.w <= rect.h) {{
      const rowH = rect.w ? sum / rect.w : 0;
      let x = rect.x;
      for (const [item, area] of row) {{
        const w = rowH ? area / rowH : 0;
        out.push({{ item, x, y: rect.y, w, h: rowH }});
        x += w;
      }}
    }} else {{
      const rowW = rect.h ? sum / rect.h : 0;
      let y = rect.y;
      for (const [item, area] of row) {{
        const h = rowW ? area / rowW : 0;
        out.push({{ item, x: rect.x, y, w: rowW, h }});
        y += h;
      }}
    }}
    return out;
  }}

  let rect = {{ ...box }};
  let index = 0;
  let out = [];
  while (index < scaled.length) {{
    const short = Math.min(rect.w, rect.h);
    let row = [scaled[index++]];

    while (index < scaled.length) {{
      const trial = row.concat([scaled[index]]);
      if (worst(trial, short) <= worst(row, short)) {{
        row = trial;
        index++;
      }} else {{
        break;
      }}
    }}

    out = out.concat(layoutRow(row, rect));
    const rowSum = row.reduce((acc, pair) => acc + pair[1], 0);
    if (rect.w <= rect.h) {{
      const dh = rect.w ? rowSum / rect.w : 0;
      rect = {{ x: rect.x, y: rect.y + dh, w: rect.w, h: rect.h - dh }};
    }} else {{
      const dw = rect.h ? rowSum / rect.h : 0;
      rect = {{ x: rect.x + dw, y: rect.y, w: rect.w - dw, h: rect.h }};
    }}
  }}
  return out;
}}

function drawRoundRect(x, y, w, h, r) {{
  const radius = Math.min(r, w / 2, h / 2);
  ctx.beginPath();
  ctx.moveTo(x + radius, y);
  ctx.arcTo(x + w, y, x + w, y + h, radius);
  ctx.arcTo(x + w, y + h, x, y + h, radius);
  ctx.arcTo(x, y + h, x, y, radius);
  ctx.arcTo(x, y, x + w, y, radius);
  ctx.closePath();
}}

function draw() {{
  const dpr = window.devicePixelRatio || 1;
  const bounds = canvas.getBoundingClientRect();
  canvas.width = Math.max(1, Math.floor(bounds.width * dpr));
  canvas.height = Math.max(1, Math.floor(bounds.height * dpr));
  ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
  const W = bounds.width;
  const H = bounds.height;
  ctx.clearRect(0, 0, W, H);
  ctx.fillStyle = "#0b1120";
  ctx.fillRect(0, 0, W, H);
  rects = [];

  const visible = filteredRows();
  const visibleSize = visible.reduce((sum, row) => sum + row.size, 0);
  document.getElementById("visibleCount").textContent = fmtInt.format(visible.length);
  document.getElementById("visibleDetail").textContent = `${{fmtInt.format(visibleSize)}} visible bytes`;
  renderDoneList(visible);

  const modules = groupModules(visible);
  if (!modules.length) {{
    ctx.fillStyle = "#94a3b8";
    ctx.font = "600 18px Inter, sans-serif";
    ctx.fillText("No functions match the current filters.", 28, 42);
    return;
  }}

  const moduleRects = squarify(modules, {{ x: 12, y: 12, w: W - 24, h: H - 24 }});
  for (const box of moduleRects) {{
    const mod = box.item;
    const pct = mod.bytes ? mod.matched / mod.bytes : 0;
    ctx.fillStyle = "#111827";
    ctx.fillRect(box.x, box.y, Math.max(0, box.w - 0.5), Math.max(0, box.h - 0.5));
    ctx.strokeStyle = "#253247";
    ctx.lineWidth = 1;
    ctx.strokeRect(box.x, box.y, Math.max(0, box.w - 0.5), Math.max(0, box.h - 0.5));

    const header = Math.min(18, Math.max(10, box.h * 0.18));
    const labelFont = box.w > 96 && box.h > 50 ? 11 : 8;
    const percentFont = box.w > 96 && box.h > 50 ? 10 : 7;
    ctx.save();
    ctx.fillStyle = "rgba(13,17,23,.84)";
    ctx.fillRect(box.x + 1, box.y + 1, Math.max(0, box.w - 2), Math.max(0, header));
    ctx.beginPath();
    ctx.rect(box.x + 2, box.y + 1, Math.max(1, box.w - 4), Math.max(1, header));
    ctx.clip();
    ctx.fillStyle = "#e2e8f0";
    ctx.font = `800 ${{labelFont}}px Inter, sans-serif`;
    ctx.fillText(trimText(mod.name, Math.max(12, box.w - 8)), box.x + 2.5, box.y + Math.min(header - 2, labelFont + 4));
    if (box.w > 54) {{
      ctx.fillStyle = "#94a3b8";
      ctx.font = `700 ${{percentFont}}px Inter, sans-serif`;
      ctx.textAlign = "right";
      ctx.fillText(`${{Math.round(pct * 100)}}%`, box.x + box.w - 3, box.y + Math.min(header - 2, percentFont + 4));
      ctx.textAlign = "left";
    }}
    ctx.restore();

    const inner = {{ x: box.x + 1, y: box.y + header + 1, w: Math.max(0, box.w - 2), h: Math.max(0, box.h - header - 2) }};
    const functionRects = squarify(mod.functions.map(row => ({{ ...row, value: row.layoutSize }})), inner);
    for (const fn of functionRects) {{
      if (fn.w < 1.4 || fn.h < 1.4) continue;
      const row = fn.item;
      const grad = ctx.createLinearGradient(fn.x, fn.y, fn.x + fn.w, fn.y + fn.h);
      if (row.matched) {{
        grad.addColorStop(0, "#34d399");
        grad.addColorStop(1, "#16a34a");
      }} else {{
        grad.addColorStop(0, "#4a4d52");
        grad.addColorStop(1, "#30333a");
      }}
      ctx.fillStyle = grad;
      ctx.fillRect(fn.x, fn.y, Math.max(0, fn.w - 0.35), Math.max(0, fn.h - 0.35));
      ctx.strokeStyle = row.matched ? "rgba(44,122,65,.78)" : "rgba(57,59,63,.78)";
      ctx.lineWidth = .45;
      ctx.strokeRect(fn.x, fn.y, Math.max(0, fn.w - 0.35), Math.max(0, fn.h - 0.35));
      if (fn.w > 86 && fn.h > 26) {{
        ctx.fillStyle = row.matched ? "#f0fdf4" : "#e2e8f0";
        ctx.font = "700 10px Inter, sans-serif";
        ctx.fillText(trimText(row.name, fn.w - 10), fn.x + 5, fn.y + 16);
      }}
      rects.push({{ row, x: fn.x, y: fn.y, w: fn.w, h: fn.h }});
    }}
  }}
}}

function renderDoneList(visible) {{
  const done = visible
    .filter(row => row.matched)
    .sort((a, b) => b.size - a.size || a.name.localeCompare(b.name));
  const list = document.getElementById("doneList");
  const shown = done.slice(0, 300);
  document.getElementById("doneSummary").textContent = `${{fmtInt.format(done.length)}} matched in current filters`;
  if (!shown.length) {{
    list.innerHTML = `<div class="done-item"><b>No matched functions visible</b><small>Change filters or search.</small></div>`;
    return;
  }}
  list.innerHTML = shown.map(row => `
    <div class="done-item" title="${{escapeHtml(row.module + "/" + row.name)}}">
      <b>${{escapeHtml(row.name)}}</b>
      <span class="done-size">${{fmtInt.format(row.size)}} B</span>
      <small>${{escapeHtml(row.module)}}</small>
    </div>
  `).join("");
}}

function trimText(text, maxWidth) {{
  if (ctx.measureText(text).width <= maxWidth) return text;
  let out = text;
  while (out.length > 4 && ctx.measureText(out + "...").width > maxWidth) out = out.slice(0, -1);
  return out + "...";
}}

function onMove(event) {{
  const bounds = canvas.getBoundingClientRect();
  const x = event.clientX - bounds.left;
  const y = event.clientY - bounds.top;
  const hit = rects.find(rect => x >= rect.x && x <= rect.x + rect.w && y >= rect.y && y <= rect.y + rect.h);
  if (!hit) {{
    tip.style.opacity = 0;
    return;
  }}
  const row = hit.row;
  tip.innerHTML = `<strong>${{escapeHtml(row.name)}}</strong>
    <div>Module: ${{escapeHtml(row.module)}}</div>
    <div>Status: ${{escapeHtml(row.status)}}</div>
    <div>Size: ${{fmtInt.format(row.size)}} bytes (${{escapeHtml(row.sizeSource)}})</div>
    <div>Source: ${{escapeHtml(row.source)}}</div>`;
  tip.style.left = `${{event.clientX + 12}}px`;
  tip.style.top = `${{event.clientY + 12}}px`;
  tip.style.opacity = 1;
}}

init();
</script>
</body>
</html>
"""
    html_path.write_text(html_text, encoding="utf-8")
    return html_path



def write_decomp_dev_report(rows: list[FunctionInfo], report_path: Path) -> Path:
    """Write a decomp.dev version-2 progress report.

    This follows the richer schema produced by WarioWare Inc.'s
    ``tools/reportgen.py`` and consumed by decomp.dev:

      * ``version`` is 2.
      * ``measures`` contains project-wide code/function/unit totals.
      * ``units`` contains one entry per object/module.
      * ``functions`` contains each real function's byte size and match percent.
      * ``categories`` is kept as an empty list for compatibility.

    Synthetic map rows such as ``(unnamed)`` represent bytes without a function
    symbol. They contribute to code-byte totals but not function totals.
    """

    def percent(done: int, total: int) -> float:
        return 0.0 if total == 0 else done / total * 100.0

    def is_real_function(row: FunctionInfo) -> bool:
        return not (row.name.startswith("(") and row.name.endswith(")"))

    grouped: dict[str, list[FunctionInfo]] = {}
    unit_order: list[str] = []
    for row in rows:
        if row.module not in grouped:
            grouped[row.module] = []
            unit_order.append(row.module)
        grouped[row.module].append(row)

    report_measures = {
        "total_code": 0,
        "matched_code": 0,
        "total_data": 0,
        "total_functions": 0,
        "matched_functions": 0,
        "complete_code": 0,
        "complete_data": 0,
        "total_units": 0,
        "complete_units": 0,
    }
    report_units: list[dict[str, object]] = []

    for module_name in unit_order:
        module_rows = grouped[module_name]
        function_rows = [row for row in module_rows if is_real_function(row)]

        total_code = sum(max(0, row.size) for row in module_rows)
        matched_code = sum(max(0, row.size) for row in module_rows if row.matched)
        total_functions = len(function_rows)
        matched_functions = sum(1 for row in function_rows if row.matched)

        functions = [
            {
                "name": row.name,
                "size": max(0, row.size),
                "fuzzy_match_percent": 100.0 if row.matched else 0.0,
            }
            for row in function_rows
        ]

        complete_unit = int(total_code == matched_code)
        unit_measures = {
            "total_code": total_code,
            "matched_code": matched_code,
            "total_data": 0,
            "total_functions": total_functions,
            "matched_functions": matched_functions,
            "complete_code": matched_code,
            "complete_data": 0,
            "total_units": 1,
            "complete_units": complete_unit,
            "matched_code_percent": percent(matched_code, total_code),
            "complete_code_percent": percent(matched_code, total_code),
            "matched_functions_percent": percent(matched_functions, total_functions),
            "fuzzy_match_percent": percent(matched_code, total_code),
            "complete_data_percent": 0.0,
        }

        report_units.append(
            {
                "name": module_name,
                "measures": unit_measures,
                "sections": [],
                "functions": functions,
            }
        )

        report_measures["total_code"] += total_code
        report_measures["matched_code"] += matched_code
        report_measures["complete_code"] += matched_code
        report_measures["total_functions"] += total_functions
        report_measures["matched_functions"] += matched_functions
        report_measures["total_units"] += 1
        report_measures["complete_units"] += complete_unit

    report_measures.update(
        {
            "matched_code_percent": percent(
                report_measures["matched_code"], report_measures["total_code"]
            ),
            "complete_code_percent": percent(
                report_measures["complete_code"], report_measures["total_code"]
            ),
            "matched_functions_percent": percent(
                report_measures["matched_functions"],
                report_measures["total_functions"],
            ),
            "fuzzy_match_percent": percent(
                report_measures["matched_code"], report_measures["total_code"]
            ),
            "complete_data_percent": 0.0,
        }
    )

    report = {
        "measures": report_measures,
        "units": report_units,
        "version": 2,
        "categories": [],
    }

    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    return report_path

def infer_pages_url(root: Path, html_rel_path: str) -> str:
    repo = os.environ.get("GITHUB_REPOSITORY", "").strip()
    if not repo:
        try:
            remote = subprocess.check_output(
                ["git", "config", "--get", "remote.origin.url"],
                cwd=root,
                text=True,
                stderr=subprocess.DEVNULL,
            ).strip()
        except Exception:
            return html_rel_path

        remote = remote.removesuffix(".git")
        if remote.startswith("git@github.com:"):
            repo = remote.removeprefix("git@github.com:")
        elif "github.com/" in remote:
            repo = remote.split("github.com/", 1)[1]

    if "/" not in repo:
        return html_rel_path

    owner, name = repo.split("/", 1)
    html_name = Path(html_rel_path).name
    if name.lower() == f"{owner.lower()}.github.io":
        return f"https://{owner}.github.io/{html_name}"
    return f"https://{owner}.github.io/{name}/{html_name}"


def update_readme(readme_path: Path, svg_rel_path: str, html_rel_path: str) -> Path:
    html_url = infer_pages_url(readme_path.parent, html_rel_path)
    block = f"""{README_START}
## Decompilation Progress

![Decompilation progress]({svg_rel_path})

[Open the interactive progress treemap]({html_url}).
{README_END}"""

    if readme_path.exists():
        text = readme_path.read_text(encoding="utf-8", errors="ignore")
    else:
        text = "# Wario Land 4\n"

    pattern = re.compile(re.escape(README_START) + r".*?" + re.escape(README_END), re.S)
    if pattern.search(text):
        text = pattern.sub(block, text)
    elif re.search(r"^##\s+Dependencies\s*$", text, flags=re.M):
        text = re.sub(r"(?=^##\s+Dependencies\s*$)", block + "\n\n", text, count=1, flags=re.M)
    else:
        text = text.rstrip() + "\n\n" + block

    readme_path.write_text(text.rstrip() + "\n", encoding="utf-8")
    return readme_path


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate WL4 decompilation progress.")
    parser.add_argument("--root", default=".", help="repo root to scan")
    parser.add_argument("--svg", default="docs/progress-treemap.svg", help="SVG path relative to repo root")
    parser.add_argument("--html", default="docs/progress.html", help="interactive HTML path relative to repo root")
    parser.add_argument(
        "--report",
        default="report.json",
        help="decomp.dev-compatible JSON report path relative to repo root",
    )
    parser.add_argument("--no-html", action="store_true", help="skip interactive HTML generation")
    parser.add_argument("--no-report", action="store_true", help="skip decomp.dev JSON report generation")
    parser.add_argument("--no-readme", action="store_true", help="do not update the README progress block")
    parser.add_argument("--update-readme", action="store_true", help=argparse.SUPPRESS)
    parser.add_argument("--readme", default="README.md", help="README path relative to repo root")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    svg_path = root / args.svg
    html_path = root / args.html
    report_path = root / args.report
    readme_path = root / args.readme

    rows = merge_functions(root)
    written_svg = write_svg(rows, svg_path)
    written_html = None if args.no_html else write_html(rows, html_path)
    written_report = None if args.no_report else write_decomp_dev_report(rows, report_path)
    written_readme = None if args.no_readme else update_readme(readme_path, args.svg, args.html)
    info = stats(rows)

    function_line, size_line = summarize(rows)
    print(function_line)
    print(size_line)
    print(f'Byte sizes: {info["byte_label"]} ({fmt_int(info["exact_sizes"])} / {fmt_int(info["total_functions"])} exact)')
    print()
    print(f"SVG: {written_svg.relative_to(root)}")
    if written_html is not None:
        print(f"HTML: {written_html.relative_to(root)}")
    if written_report is not None:
        print(f"Report: {written_report.relative_to(root)}")
    if written_readme is not None:
        print(f"README: {written_readme.relative_to(root)}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
