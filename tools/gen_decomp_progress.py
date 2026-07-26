#!/usr/bin/env python3
"""
Generate Wario Land 4 decompilation progress from the current repo.

Outputs, by default:
  docs/progress-treemap.svg
  docs/progress.html
  report.json

INLINE ASM FIX 2026-07-26:
  Inline asm statements/macros such as `asm(...)`, `asm volatile(...)`,
  `asm_unified(...)`, and `asm_volatile(...)` are ignored by the C function
  parser so they do not appear as fake functions named `asm` or `volatile`.

HTML CONTROL FIX 2026-07-26:
  docs/progress.html keeps the CI-required control IDs:
    search, module, sort, reset
"""

from __future__ import annotations

import argparse
import html
import json
import os
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path

BAR_WIDTH = 30
STATUS_MATCHED = "matched"
STATUS_UNMATCHED = "not matched"
STATUS_UNKNOWN = STATUS_UNMATCHED
README_START = "<!-- DECOMP_PROGRESS:START -->"
README_END = "<!-- DECOMP_PROGRESS:END -->"

CODE_ADDR_MIN = 0x08000000
CODE_ADDR_MAX = 0x0A000000

FUNC_NAME_RE = re.compile(r"^[A-Za-z_]\w*$")
ADDR_FUNC_LABEL_RE = re.compile(r"^(?:sub|func)_[0-9A-Fa-f]{6,8}$|^func_[0-9A-Fa-f]+$")
ASM_START_RE = re.compile(r"^\s*(?:\.thumb_func_start|thumb_func_start|glabel)\s+([A-Za-z_]\w*)")
ASM_LABEL_RE = re.compile(r"^\s*([A-Za-z_]\w*):\s*(?:@.*)?$")
ASSIGN_SYMBOL_RE = re.compile(r"^\s*([A-Za-z_]\w*)\s*=\s*0x([0-9A-Fa-f]+)\s*;?\s*$")
MAP_SYMBOL_RE = re.compile(r"\b0x([0-9A-Fa-f]{7,8})\b\s+([A-Za-z_]\w*)\b")
NM_SYMBOL_RE = re.compile(r"^\s*([0-9A-Fa-f]{7,8})\s+[A-Za-z]\s+([A-Za-z_]\w*)\b")
ASM_INCLUDE_RE = re.compile(r"asm_(?:unified|volatile)\s*\(\s*[\"']\.include\s+[\"']([^\"']+)[\"']")

# INLINE ASM FIX 2026-07-26:
# Detect normal inline asm statements/macros before they can be glued to the
# next real function signature by the simple C parser.
INLINE_ASM_RE = re.compile(r"^\s*(?:asm|__asm|__asm__|asm_unified|asm_volatile)\b")

CONTRIB_RE = re.compile(
    r"^\s+(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(?:0x[0-9a-fA-F]+\s+)?(0x[0-9a-fA-F]+)\s+(\S.*\S|\S)\s*$"
)
MAP_NESTED_SYMBOL_RE = re.compile(r"^\s+(0x[0-9a-fA-F]+)\s+([A-Za-z_.$][\w.$]*)\s*$")
SECTION_TOTAL_RE = re.compile(r"^(\.\S+)\s+0x[0-9a-fA-F]+\s+0x[0-9a-fA-F]+\s*$")
NAKED_DEF_RE = re.compile(r"\bNAKED\b[^;{}()]*?\b(\w+)\s*\([^;]*?\)\s*\{")

# INLINE ASM FIX 2026-07-26:
# asm/volatile are not function names. They are control-ish parser tokens here.
CONTROL_WORDS = {
    "if",
    "for",
    "while",
    "switch",
    "return",
    "sizeof",
    "do",
    "else",
    "case",
    "asm",
    "__asm",
    "__asm__",
    "volatile",
    "asm_unified",
    "asm_volatile",
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


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8", errors="ignore")
    except OSError:
        return ""


def is_probably_function_name(name: str) -> bool:
    if not FUNC_NAME_RE.match(name):
        return False
    if name in CONTROL_WORDS:
        return False
    if name.startswith(("loc_", "off_", "byte_", "word_", "dword_", "stru_", "gUnk_", "sUnk_", "__")):
        return False
    if name.isupper():
        return False
    return True


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
    out: list[Path] = []
    for path in root.rglob("*"):
        if not path.is_file() or path.suffix not in suffixes:
            continue
        if set(path.relative_to(root).parts) & ignored_parts:
            continue
        out.append(path)
    return sorted(out)


def clean_module_label(value: str) -> str:
    token = value.strip().strip("()").replace("\\", "/")
    if "(" in token and token.endswith(")"):
        token = token[token.rfind("(") + 1 : -1]
    token = token.rstrip("/")
    if not token:
        return "unknown"
    return Path(token).stem or Path(token).name or "unknown"


def module_from_path(root: Path, path: Path) -> str:
    return clean_module_label(str(path.relative_to(root)))


def module_from_object_path(value: str) -> str:
    token = value.strip().strip("()").replace("\\", "/")
    if "(" in token and token.endswith(")"):
        token = token[token.rfind("(") + 1 : -1]
    for marker in ("/build/us/", "build/us/", "/src/", "src/", "/asm/", "asm/"):
        if marker in token:
            token = token.split(marker, 1)[1]
            break
    if token.startswith("build/us/"):
        token = token[len("build/us/") :]
    if token.startswith(("src/", "asm/")):
        token = token.split("/", 1)[1]
    if token.startswith("lib/"):
        token = token[4:]
    return clean_module_label(token)


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
    names = {m.group(1) for m in NAKED_DEF_RE.finditer(read_text(path))}
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
            total += 2
    return max(total, 2)


def collect_asm_functions(root: Path) -> dict[str, FunctionInfo]:
    funcs: dict[str, FunctionInfo] = {}
    for path in iter_files(root, (".s", ".S")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] not in {"asm", "asm_arm", "data"}:
            continue
        current_name: str | None = None
        current_lines: list[str] = []

        def flush() -> None:
            nonlocal current_name, current_lines
            if current_name and is_probably_function_name(current_name):
                size = estimate_asm_bytes(current_lines)
                old = funcs.get(current_name)
                if old is None or size > old.size:
                    funcs[current_name] = FunctionInfo(
                        current_name,
                        module_from_path(root, path),
                        size,
                        STATUS_UNMATCHED,
                        str(rel),
                        "asm estimate",
                    )
            current_name = None
            current_lines = []

        for line in read_text(path).splitlines():
            start = ASM_START_RE.match(line)
            label = ASM_LABEL_RE.match(line)
            name = start.group(1) if start else None
            if name is None and label and ADDR_FUNC_LABEL_RE.match(label.group(1)):
                name = label.group(1)
            if name:
                flush()
                current_name = name
            elif current_name:
                current_lines.append(line)
        flush()
    return funcs


def symbol_candidates(root: Path) -> list[Path]:
    paths = [
        root / "build/us/warioland4.map",
        root / "build/us/MPAdvance.map",
        root / "warioland4.map",
        root / "wl4_us.map",
        root / "wl4.map",
        root / "symbols.txt",
        root / "symbol_addrs.txt",
        root / "sym.txt",
    ]
    paths.extend(root.glob("*.sym"))
    paths.extend(root.glob("*.map"))
    paths.extend(root.glob("build/**/*.map"))
    return sorted({p for p in paths if p.exists() and p.is_file()})


def parse_map_contributions(root: Path, map_path: Path) -> list[MapContribution]:
    contributions: list[MapContribution] = []
    current: MapContribution | None = None
    source = str(map_path.relative_to(root))
    for raw in read_text(map_path).splitlines():
        if not raw.strip():
            continue
        m = CONTRIB_RE.match(raw)
        if m:
            section, addr_text, size_text, objpath = m.groups()
            if section.startswith(".text"):
                current = MapContribution(section, int(addr_text, 16), int(size_text, 16), objpath.strip(), source, [])
                contributions.append(current)
            else:
                current = None
            continue
        if SECTION_TOTAL_RE.match(raw):
            current = None
            continue
        m = MAP_NESTED_SYMBOL_RE.match(raw)
        if m and current is not None:
            addr_text, name = m.groups()
            if is_probably_function_name(name):
                current.symbols.append((int(addr_text, 16), name))
    return contributions


def collect_map_functions(root: Path) -> list[FunctionInfo]:
    for map_path in symbol_candidates(root):
        if map_path.suffix != ".map":
            continue
        rows: list[FunctionInfo] = []
        for contrib in parse_map_contributions(root, map_path):
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
                            f"({clean_module_label(contrib.objpath)})",
                            module,
                            contrib.size,
                            base_status,
                            f"{contrib.source}:{contrib.objpath}",
                            "symbol",
                        )
                    )
                continue
            end_addr = contrib.addr + contrib.size
            if ordered[0][0] > contrib.addr:
                rows.append(
                    FunctionInfo(
                        "(unnamed)",
                        module,
                        ordered[0][0] - contrib.addr,
                        base_status,
                        f"{contrib.source}:{contrib.objpath}",
                        "symbol",
                    )
                )
            for index, (addr, name) in enumerate(ordered):
                next_addr = ordered[index + 1][0] if index + 1 < len(ordered) else end_addr
                size = next_addr - addr
                if size <= 0 or size > 0x4000:
                    continue
                status = STATUS_UNMATCHED if name in naked_names else base_status
                rows.append(FunctionInfo(name, module, size, status, f"{contrib.source}:{contrib.objpath}", "symbol"))
        if rows:
            return rows
    return []


def map_object_module(line: str) -> str | None:
    for token in reversed(line.replace("(", " (").replace(")", ") ").split()):
        if ".o" not in token:
            continue
        cleaned = token.strip()
        if cleaned.endswith(".o") or ".o)" in cleaned:
            return module_from_object_path(cleaned)
    return None


def collect_symbol_info(root: Path) -> dict[str, SymbolInfo]:
    pairs: list[tuple[int, str, str, str]] = []
    for path in symbol_candidates(root):
        rel = str(path.relative_to(root))
        current_module = "symbols"
        current_is_text = path.suffix != ".map"
        for line in read_text(path).splitlines():
            stripped = line.lstrip()
            if path.suffix == ".map" and stripped.startswith("."):
                current_is_text = stripped.split(None, 1)[0].startswith(".text")
            mod = map_object_module(line)
            if mod:
                current_module = mod
            m = ASSIGN_SYMBOL_RE.match(line)
            if m:
                name = m.group(1)
                addr = int(m.group(2), 16)
            else:
                m = MAP_SYMBOL_RE.search(line) or NM_SYMBOL_RE.match(line)
                if not m:
                    continue
                addr = int(m.group(1), 16)
                name = m.group(2)
            if current_is_text and CODE_ADDR_MIN <= addr < CODE_ADDR_MAX and is_probably_function_name(name):
                pairs.append((addr, name, current_module, rel))
    pairs = sorted(set(pairs))
    out: dict[str, SymbolInfo] = {}
    for index, (addr, name, module, source) in enumerate(pairs[:-1]):
        size = pairs[index + 1][0] - addr
        if 0 < size <= 0x4000:
            out[name] = SymbolInfo(size, module, source)
    return out


def remove_comments(line: str, in_block: bool) -> tuple[str, bool]:
    out: list[str] = []
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


def strip_string_literals(text: str) -> str:
    """INLINE ASM FIX 2026-07-26: remove strings before signature regex."""
    out: list[str] = []
    i = 0
    quote: str | None = None
    escaped = False
    while i < len(text):
        ch = text[i]
        if quote is not None:
            if escaped:
                escaped = False
            elif ch == "\\":
                escaped = True
            elif ch == quote:
                quote = None
            out.append(" ")
        else:
            if ch in {"'", '"'}:
                quote = ch
                out.append(" ")
            else:
                out.append(ch)
        i += 1
    return "".join(out)


def split_macro_arguments(text: str) -> list[str]:
    args: list[str] = []
    current: list[str] = []
    depth = 0
    quote: str | None = None
    escaped = False
    for ch in text:
        if quote is not None:
            current.append(ch)
            if escaped:
                escaped = False
            elif ch == "\\":
                escaped = True
            elif ch == quote:
                quote = None
            continue
        if ch in {"'", '"'}:
            quote = ch
            current.append(ch)
        elif ch in "([{":
            depth += 1
            current.append(ch)
        elif ch in ")]}":
            depth = max(0, depth - 1)
            current.append(ch)
        elif ch == "," and depth == 0:
            args.append("".join(current).strip())
            current = []
        else:
            current.append(ch)
    args.append("".join(current).strip())
    return args


def collect_macro_generated_function_names(root: Path) -> set[str]:
    generated: set[str] = set()
    for path in iter_files(root, (".c", ".h")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] == "tools":
            continue
        logical_lines: list[str] = []
        current = ""
        for raw in read_text(path).splitlines():
            stripped = raw.rstrip()
            current += stripped[:-1] + " " if stripped.endswith("\\") else stripped
            if not stripped.endswith("\\"):
                logical_lines.append(current)
                current = ""
        if current:
            logical_lines.append(current)
        generator_params: dict[str, list[int]] = {}
        for line in logical_lines:
            m = re.match(r"^\s*#\s*define\s+([A-Za-z_]\w*)\s*\(([^)]*)\)\s*(.*)$", line)
            if not m:
                continue
            macro_name, params_text, body = m.groups()
            params = [p.strip() for p in params_text.split(",") if p.strip()]
            indexes: list[int] = []
            for index, param in enumerate(params):
                if FUNC_NAME_RE.match(param) and re.search(rf"\b{re.escape(param)}\s*\([^;{{}}]*\)\s*\{{", body):
                    indexes.append(index)
            if indexes:
                generator_params[macro_name] = indexes
        for line in logical_lines:
            if line.lstrip().startswith("#"):
                continue
            for macro_name, indexes in generator_params.items():
                m = re.match(rf"^\s*{re.escape(macro_name)}\s*\((.*)\)\s*;?\s*$", line)
                if not m:
                    continue
                args = split_macro_arguments(m.group(1))
                for index in indexes:
                    if index < len(args):
                        name = args[index].strip()
                        if FUNC_NAME_RE.match(name) and is_probably_function_name(name):
                            generated.add(name)
    return generated


def find_c_function_name(signature: str) -> str | None:
    """INLINE ASM FIX 2026-07-26: choose the last real function-looking token."""
    signature = re.sub(r"\s+", " ", signature.strip())
    if ";" in signature:
        return None

    cleaned = strip_string_literals(signature)

    matches = list(re.finditer(r"([A-Za-z_]\w*)\s*\([^;{}]*\)\s*\{", cleaned))
    for match in reversed(matches):
        name = match.group(1)
        if name not in CONTROL_WORDS and is_probably_function_name(name):
            return name

    return None


def collect_c_functions(root: Path) -> dict[str, FunctionInfo]:
    funcs: dict[str, FunctionInfo] = {}
    for path in iter_files(root, (".c", ".h")):
        rel = path.relative_to(root)
        if rel.parts and rel.parts[0] == "tools":
            continue
        in_block_comment = False
        pending = ""
        pending_start = 0
        for lineno, raw in enumerate(read_text(path).splitlines(), start=1):
            line, in_block_comment = remove_comments(raw, in_block_comment)

            # Keep the special asm include behavior: these are real unmatched asm
            # wrappers and should still appear in progress.
            include = ASM_INCLUDE_RE.search(line)
            if include:
                inc = include.group(1)
                name = Path(inc).stem
                if is_probably_function_name(name):
                    funcs[name] = FunctionInfo(
                        name,
                        module_from_path(root, path),
                        2,
                        STATUS_UNMATCHED,
                        f"{rel}:{lineno}",
                        "asm include",
                    )

            stripped = line.strip()
            if not stripped:
                continue

            if stripped.endswith("\\"):
                stripped = stripped[:-1].rstrip()

            # INLINE ASM FIX 2026-07-26:
            # Normal inline asm statements and macro body lines are never C
            # function definitions. Skip them before pending-signature collection.
            if INLINE_ASM_RE.match(stripped):
                pending = ""
                continue

            if not pending and "(" in stripped and not stripped.startswith("#"):
                pending_start = lineno
            if pending or ("(" in stripped and not stripped.startswith("#")):
                pending += " " + stripped
            if "{" in pending:
                name = find_c_function_name(pending)
                if name:
                    funcs[name] = FunctionInfo(
                        name,
                        module_from_path(root, path),
                        max(2, len(pending) // 4),
                        STATUS_MATCHED,
                        f"{rel}:{pending_start}",
                        "source estimate",
                    )
                pending = ""
            elif ";" in pending or len(pending) > 1000:
                pending = ""
    return funcs


def merge_functions(root: Path) -> list[FunctionInfo]:
    macro_generated = collect_macro_generated_function_names(root)
    map_rows = [row for row in collect_map_functions(root) if row.name not in macro_generated]
    if map_rows:
        c_funcs = {name: info for name, info in collect_c_functions(root).items() if name not in macro_generated}
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

    asm_funcs = {name: info for name, info in collect_asm_functions(root).items() if name not in macro_generated}
    c_funcs = {name: info for name, info in collect_c_functions(root).items() if name not in macro_generated}
    symbol_infos = {name: info for name, info in collect_symbol_info(root).items() if name not in macro_generated}
    names = sorted(set(asm_funcs) | set(c_funcs) | set(symbol_infos))
    rows: list[FunctionInfo] = []
    for name in names:
        c_info = c_funcs.get(name)
        asm_info = asm_funcs.get(name)
        sym = symbol_infos.get(name)
        base = c_info or asm_info
        if base is None:
            base = FunctionInfo(
                name,
                sym.module if sym else "unknown",
                2,
                STATUS_UNMATCHED,
                sym.source if sym else "symbols",
                "source estimate",
            )
        size = sym.size if sym else max(c_info.size if c_info else 0, asm_info.size if asm_info else 0, 2)
        size_source = "symbol" if sym else base.size_source
        status = STATUS_MATCHED if c_info and c_info.status == STATUS_MATCHED else base.status
        rows.append(FunctionInfo(name, base.module, size, status, base.source, size_source))
    return rows


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


def fmt_int(value: int | float) -> str:
    return f"{int(value):,}"


def write_svg(rows: list[FunctionInfo], svg_path: Path) -> Path:
    svg_path.parent.mkdir(parents=True, exist_ok=True)
    total_size = sum(row.size for row in rows) or 1
    matched_size = sum(row.size for row in rows if row.matched)
    pct = matched_size / total_size
    function_line, size_line = summarize(rows)
    width = 1280
    height = 260
    done_w = int((width - 80) * pct)
    body = f'''<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">
<rect width="100%" height="100%" fill="#0d1117"/>
<text x="40" y="52" fill="#e5e7eb" font-family="Inter,Segoe UI,sans-serif" font-size="30" font-weight="800">Wario Land 4 Decompilation Progress</text>
<text x="40" y="88" fill="#cbd5e1" font-family="ui-monospace,Menlo,monospace" font-size="15">{html.escape(function_line)}</text>
<text x="40" y="114" fill="#cbd5e1" font-family="ui-monospace,Menlo,monospace" font-size="15">{html.escape(size_line)}</text>
<rect x="40" y="150" width="{width - 80}" height="46" rx="10" fill="#334155"/>
<rect x="40" y="150" width="{done_w}" height="46" rx="10" fill="#22c55e"/>
<text x="{width - 40}" y="184" text-anchor="end" fill="#f8fafc" font-family="Inter,Segoe UI,sans-serif" font-size="22" font-weight="800">{pct * 100:.1f}%</text>
<text x="{width - 40}" y="238" text-anchor="end" fill="#94a3b8" font-family="Inter,Segoe UI,sans-serif" font-size="13">Generated by tools/gen_decomp_progress.py</text>
</svg>
'''
    svg_path.write_text(body, encoding="utf-8")
    return svg_path


def write_html(rows: list[FunctionInfo], html_path: Path) -> Path:
    """HTML CONTROL FIX 2026-07-26: keep search/module/sort/reset IDs."""
    html_path.parent.mkdir(parents=True, exist_ok=True)
    info = stats(rows)

    modules = sorted({row.module for row in rows})
    rows_json = json.dumps(
        [
            {
                "module": row.module,
                "name": row.name,
                "size": row.size,
                "status": row.status,
                "source": row.source,
            }
            for row in rows
        ]
    ).replace("</", "<\\/")

    module_options = "\n".join(
        f'<option value="{html.escape(module)}">{html.escape(module)}</option>'
        for module in modules
    )

    html_text = f'''<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Wario Land 4 Progress</title>
<style>
body {{
  background:#020617;
  color:#e5e7eb;
  font-family:system-ui,sans-serif;
  margin:24px;
}}
.controls {{
  display:grid;
  grid-template-columns:2fr 1fr 1fr auto;
  gap:10px;
  margin:12px 0 18px;
}}
input, select, button {{
  padding:10px;
  background:#0f172a;
  color:#e5e7eb;
  border:1px solid #334155;
  border-radius:8px;
}}
button {{
  cursor:pointer;
}}
table {{
  border-collapse:collapse;
  width:100%;
}}
td, th {{
  border-bottom:1px solid #1e293b;
  padding:6px 8px;
  text-align:left;
}}
th {{
  color:#cbd5e1;
}}
.matched {{
  color:#22c55e;
}}
.unmatched {{
  color:#94a3b8;
}}
.summary {{
  color:#cbd5e1;
}}
</style>
</head>
<body>
<h1>Wario Land 4 Progress</h1>
<p class="summary">
Functions: {info['matched_functions']:,} / {info['total_functions']:,}.
Code size: {info['matched_size']:,} / {info['total_size']:,} bytes.
</p>

<!-- HTML CONTROL FIX 2026-07-26: CI expects these exact IDs. -->
<div class="controls">
  <input id="search" placeholder="Search function, module, or source">
  <select id="module">
    <option value="">All modules</option>
    {module_options}
  </select>
  <select id="sort">
    <option value="module">Sort by module</option>
    <option value="name">Sort by function</option>
    <option value="size-desc">Sort by size desc</option>
    <option value="size-asc">Sort by size asc</option>
    <option value="status">Sort by status</option>
  </select>
  <button id="reset" type="button">Reset</button>
</div>

<table>
<thead>
<tr>
  <th>Module</th>
  <th>Function</th>
  <th>Size</th>
  <th>Status</th>
  <th>Source</th>
</tr>
</thead>
<tbody id="body"></tbody>
</table>

<script>
const rows = {rows_json};
const body = document.getElementById('body');
const search = document.getElementById('search');
const moduleFilter = document.getElementById('module');
const sort = document.getElementById('sort');
const reset = document.getElementById('reset');

function esc(s) {{
  return String(s).replace(/[&<>"]/g, c => ({{
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&quot;'
  }}[c]));
}}

function compareRows(a, b) {{
  const mode = sort.value;
  if (mode === 'name') {{
    return a.name.localeCompare(b.name) || a.module.localeCompare(b.module);
  }}
  if (mode === 'size-desc') {{
    return b.size - a.size || a.module.localeCompare(b.module) || a.name.localeCompare(b.name);
  }}
  if (mode === 'size-asc') {{
    return a.size - b.size || a.module.localeCompare(b.module) || a.name.localeCompare(b.name);
  }}
  if (mode === 'status') {{
    return a.status.localeCompare(b.status) || a.module.localeCompare(b.module) || a.name.localeCompare(b.name);
  }}
  return a.module.localeCompare(b.module) || a.name.localeCompare(b.name);
}}

function draw() {{
  const needle = search.value.toLowerCase();
  const selectedModule = moduleFilter.value;

  const filtered = rows
    .filter(r => !selectedModule || r.module === selectedModule)
    .filter(r => !needle ||
      r.name.toLowerCase().includes(needle) ||
      r.module.toLowerCase().includes(needle) ||
      r.source.toLowerCase().includes(needle))
    .sort(compareRows);

  body.innerHTML = filtered.map(r => `
    <tr>
      <td>${{esc(r.module)}}</td>
      <td>${{esc(r.name)}}</td>
      <td>${{r.size}}</td>
      <td class="${{r.status === 'matched' ? 'matched' : 'unmatched'}}">${{esc(r.status)}}</td>
      <td>${{esc(r.source)}}</td>
    </tr>
  `).join('');
}}

search.addEventListener('input', draw);
moduleFilter.addEventListener('change', draw);
sort.addEventListener('change', draw);
reset.addEventListener('click', () => {{
  search.value = '';
  moduleFilter.value = '';
  sort.value = 'module';
  draw();
}});

draw();
</script>
</body>
</html>
'''
    html_path.write_text(html_text, encoding="utf-8")
    return html_path


def write_decomp_dev_report(rows: list[FunctionInfo], report_path: Path) -> Path:
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

    report_measures: dict[str, int | float] = {
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
                "functions": [
                    {
                        "name": row.name,
                        "size": max(0, row.size),
                        "fuzzy_match_percent": 100.0 if row.matched else 0.0,
                    }
                    for row in function_rows
                ],
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
            "matched_code_percent": percent(int(report_measures["matched_code"]), int(report_measures["total_code"])),
            "complete_code_percent": percent(int(report_measures["complete_code"]), int(report_measures["total_code"])),
            "matched_functions_percent": percent(
                int(report_measures["matched_functions"]),
                int(report_measures["total_functions"]),
            ),
            "fuzzy_match_percent": percent(int(report_measures["matched_code"]), int(report_measures["total_code"])),
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

    text = readme_path.read_text(encoding="utf-8", errors="ignore") if readme_path.exists() else "# Wario Land 4\n"
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
    parser.add_argument("--report", default="report.json", help="decomp.dev-compatible JSON report path relative to repo root")
    parser.add_argument("--no-html", action="store_true", help="skip interactive HTML generation")
    parser.add_argument("--no-report", action="store_true", help="skip decomp.dev JSON report generation")
    parser.add_argument("--no-readme", action="store_true", help="do not update the README progress block")
    parser.add_argument("--update-readme", action="store_true", help=argparse.SUPPRESS)
    parser.add_argument("--readme", default="README.md", help="README path relative to repo root")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    rows = merge_functions(root)

    written_svg = write_svg(rows, root / args.svg)
    written_html = None if args.no_html else write_html(rows, root / args.html)
    written_report = None if args.no_report else write_decomp_dev_report(rows, root / args.report)
    written_readme = None if args.no_readme else update_readme(root / args.readme, args.svg, args.html)

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