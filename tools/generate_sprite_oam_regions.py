#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
import struct
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

ROM_BASE = 0x08000000
MAX_FRAMES = 1024
MAX_OAM = 128
SIZE_NAMES = {
    (0, 0): "SPRITE_SIZE_8x8", (0, 1): "SPRITE_SIZE_16x16",
    (0, 2): "SPRITE_SIZE_32x32", (0, 3): "SPRITE_SIZE_64x64",
    (1, 0): "SPRITE_SIZE_16x8", (1, 1): "SPRITE_SIZE_32x8",
    (1, 2): "SPRITE_SIZE_32x16", (1, 3): "SPRITE_SIZE_64x32",
    (2, 0): "SPRITE_SIZE_8x16", (2, 1): "SPRITE_SIZE_8x32",
    (2, 2): "SPRITE_SIZE_16x32", (2, 3): "SPRITE_SIZE_32x64",
}
REGIONS = [
    (0x3B451C, 0x3B4554, "asm/blob_0x3B451C-0x3B4554.s"),
    (0x3B548C, 0x3B5C5C, "asm/blob_0x3B548C-0x3B5C5C.s"),
    (0x3B6450, 0x3C4AE8, "asm/blob_0x3B6450-0x3C4AE8.s"),
    (0x3C4B28, 0x3F9D64, "asm/blob_0x3C4B28-0x3F9D64.s"),
]

@dataclass(frozen=True)
class Anim:
    branch: str
    old: str
    name: str
    offset: int
    span_size: int
    frames: tuple[tuple[int, int], ...]


def u16(data: bytes, off: int) -> int:
    return struct.unpack_from('<H', data, off)[0]


def u32(data: bytes, off: int) -> int:
    return struct.unpack_from('<I', data, off)[0]


def signed(v: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (v ^ sign) - sign


def decode_anim(data: bytes, branch: str, old: str, name: str, offset: int, span_size: int) -> Anim:
    refs = []
    cur = offset
    for _ in range(MAX_FRAMES):
        ptr = u32(data, cur)
        duration = data[cur + 4]
        if ptr == 0 and duration == 0:
            return Anim(branch, old, name, offset, span_size, tuple(refs))
        if not (ROM_BASE <= ptr < ROM_BASE + len(data)):
            raise ValueError(f"{name}: invalid pointer 0x{ptr:08X} at 0x{cur:X}")
        refs.append((ptr - ROM_BASE, duration))
        cur += 8
    raise ValueError(f"{name}: unterminated")


def frame_end(data: bytes, off: int) -> int:
    count = u16(data, off)
    if count > MAX_OAM:
        raise ValueError(f"bad OAM count {count} at 0x{off:X}")
    return off + 2 + count * 6


def parse_blob_labels(path: Path) -> dict[int, str]:
    labels: dict[int, str] = {}
    pending: list[str] = []
    for line in path.read_text().splitlines():
        m = re.match(r"\s*\.global\s+([A-Za-z_.$][\w.$]*)", line)
        if m:
            pending.append(m.group(1))
            continue
        m = re.match(r"\s*baserom_blob\s+(0x[0-9A-Fa-f]+|\d+)\s*,\s*(0x[0-9A-Fa-f]+|\d+)", line)
        if m:
            start = int(m.group(1), 0)
            for label in pending:
                if start in labels and labels[start] != label:
                    raise ValueError(f"multiple labels at 0x{start:X}: {labels[start]}, {label}")
                labels[start] = label
            pending.clear()
    if pending:
        raise ValueError(f"dangling labels in {path}: {pending}")
    return labels


def fmt_raw(name: str, start: int, raw: bytes) -> str:
    lines = [f"/* 0x{ROM_BASE + start:08X} - 0x{ROM_BASE + start + len(raw):08X}: not yet typed. */",
             f"const u8 {name}[] = {{"]
    for i in range(0, len(raw), 16):
        chunk = raw[i:i+16]
        lines.append("    " + ", ".join(f"0x{x:02X}" for x in chunk) + ",")
    lines.extend(["};", ""])
    return "\n".join(lines)


def fmt_frame(data: bytes, name: str, off: int) -> str:
    count = u16(data, off)
    lines = [f"/* 0x{ROM_BASE + off:08X}: decoded OAM frame. */", f"const u16 {name}[] = {{", f"    {count},"]
    cur = off + 2
    for _ in range(count):
        a0, a1, a2 = struct.unpack_from('<HHH', data, cur)
        cur += 6
        shape, size = (a0 >> 14) & 3, (a1 >> 14) & 3
        dims = SIZE_NAMES[(shape, size)]
        flips = []
        if not (a0 & 0x100):
            if a1 & 0x1000: flips.append("ST_OAM_HFLIP")
            if a1 & 0x2000: flips.append("ST_OAM_VFLIP")
        flip = " | ".join(flips) or "0"
        x, y = signed(a1 & 0x1FF, 9), signed(a0 & 0xFF, 8)
        tile, pal, pri = a2 & 0x3FF, (a2 >> 12) & 0xF, (a2 >> 10) & 3
        lines.append(f"    /* {a0:04X} {a1:04X} {a2:04X} */")
        lines.append(f"    OAM_ENTRY({x}, {y}, {dims}, {flip}, {tile}, {pal}, {pri}),")
    lines.extend(["};", ""])
    return "\n".join(lines)


def fmt_anim(anim: Anim, frame_names: dict[int, str]) -> str:
    lines = [f"/* 0x{ROM_BASE + anim.offset:08X}: {anim.branch}. */",
             f"const struct AnimationFrame {anim.name}[] = {{"]
    for off, duration in anim.frames:
        d = "U8_MAX" if duration == 0xFF else str(duration)
        lines.append(f"    {{{frame_names[off]}, {d}}},")
    lines.extend(["    ANIMATION_TERMINATOR", "};", ""])
    return "\n".join(lines)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('--repo', type=Path, default=Path('.'))
    ap.add_argument('--rom', type=Path, required=True)
    ap.add_argument('--conversion-report', type=Path, required=True)
    ap.add_argument('--clean-report', type=Path, required=True)
    ap.add_argument('--manifest', type=Path, default=Path('tools/sprite_data_regions.json'))
    args = ap.parse_args()
    repo = args.repo.resolve()
    data = args.rom.read_bytes()
    conversion = json.loads(args.conversion_report.read_text())
    clean = json.loads(args.clean_report.read_text())
    spans = {b['branch']: int(b['span'][2]) for b in clean['branches']}

    by_offset: dict[int, list[Anim]] = defaultdict(list)
    for branch in conversion['branches']:
        c = branch.get('conversion', {})
        for item in c.get('animations', []):
            off = int(item['offset'], 16)
            anim = decode_anim(data, branch['branch'], item['old'], item['name'], off, spans.get(branch['branch'], 1 << 60))
            by_offset[off].append(anim)

    # Prefer the smallest branch-owned span when broad reconstruction branches overlap.
    animations: dict[int, Anim] = {}
    aliases: dict[str, str] = {}
    for off, candidates in by_offset.items():
        chosen = sorted(candidates, key=lambda a: (a.span_size, a.branch, a.name))[0]
        animations[off] = chosen
        for candidate in candidates:
            aliases[candidate.old] = chosen.name
            aliases[candidate.name] = chosen.name

    all_labels: dict[int, str] = {}
    region_labels: dict[tuple[int, int], dict[int, str]] = {}
    for start, end, rel in REGIONS:
        labels = parse_blob_labels(repo / rel)
        region_labels[(start, end)] = labels
        all_labels.update(labels)

    frame_users: dict[int, list[tuple[Anim, int]]] = defaultdict(list)
    for anim in animations.values():
        for idx, (off, _) in enumerate(anim.frames, 1):
            frame_users[off].append((anim, idx))

    frame_names: dict[int, str] = {}
    for off, users in frame_users.items():
        chosen_anim, idx = sorted(users, key=lambda x: (x[0].span_size, x[0].branch, x[0].offset, x[1]))[0]
        generated = f"{chosen_anim.name}_Frame{idx}"
        original = all_labels.get(off)
        frame_names[off] = generated
        if original:
            aliases[original] = generated

    # Any original animation label at a decoded table address becomes an alias to the canonical name.
    for off, anim in animations.items():
        original = all_labels.get(off)
        if original:
            aliases[original] = anim.name

    typed: dict[int, tuple[int, str, str]] = {}
    for off, name in frame_names.items():
        typed[off] = (frame_end(data, off), 'frame', name)
    for off, anim in animations.items():
        end = off + (len(anim.frames) + 1) * 8
        if off in typed and typed[off][0] != end:
            raise ValueError(f"typed collision at 0x{off:X}")
        typed[off] = (end, 'anim', anim.name)

    # Check typed ranges do not overlap, except identical ranges.
    ordered = sorted((s, e, k, n) for s, (e, k, n) in typed.items())
    prev_end = -1
    for s, e, k, n in ordered:
        if s < prev_end:
            raise ValueError(f"overlapping typed ranges near 0x{s:X}: {n}")
        prev_end = e

    manifest = {
        'format': 1,
        'rom_base': '0x08000000',
        'expected_rom_md5': clean['expected_rom_md5'],
        'maintenance': [
            'Definitions are emitted in ascending ROM-address order.',
            'To add future sprite OAM, replace only the corresponding raw byte interval.',
            'Do not append data by sprite name and do not use per-address sections.',
            'Build and verify the exact ROM after every replaced interval.',
        ],
        'regions': [],
        'aliases': dict(sorted((k, v) for k, v in aliases.items() if k != v)),
    }

    out_dir = repo / 'src/data'
    out_dir.mkdir(parents=True, exist_ok=True)

    for start, end, rel in REGIONS:
        labels = region_labels[(start, end)]
        out_name = f"sprite_data_{start:06X}_{end:06X}.c"
        out_path = out_dir / out_name
        header = f'''#include "types.h"\n#include "oam.h"\n\n/*\n * Shared sprite data region: 0x{ROM_BASE + start:08X} - 0x{ROM_BASE + end:08X}\n *\n * METHOD 3 MAINTENANCE RULES\n * --------------------------\n * This file owns one contiguous ROM interval shared by multiple sprite modules.\n * Keep every definition in ascending ROM-address order.\n *\n * When merging another sprite_ai branch:\n *   1. Locate each new OAM frame/table's original ROM address.\n *   2. Find the raw sSpriteDataRaw_* or sUnk_* array covering that address.\n *   3. Split that raw array and replace only the verified byte interval with\n *      const u16 OAM frames and const struct AnimationFrame tables.\n *   4. Preserve all bytes before and after the decoded interval.\n *   5. Update tools/sprite_data_regions.json.\n *   6. Rebuild immediately and verify MD5 5fe47355a33e3fabec2a1607af88a404.\n *\n * Never append a definition merely to group it with its sprite. Never add\n * OAM_DATA_SECTION, per-address linker sections, or asm/generated_oam files.\n */\n\n'''
        parts = [header]
        cursor = start
        region_entries = []
        boundaries = sorted(set([start, end]) | {a for a in labels if start <= a < end} | {a for a in typed if start <= a < end})
        while cursor < end:
            if cursor in typed:
                obj_end, kind, name = typed[cursor]
                if obj_end > end:
                    raise ValueError(f"typed object crosses region end: {name}")
                # No public label may exist strictly inside a typed object.
                inner = [a for a in labels if cursor < a < obj_end]
                if inner:
                    raise ValueError(f"public labels inside typed object {name}: {[hex(x) for x in inner]}")
                if kind == 'frame':
                    parts.append(fmt_frame(data, name, cursor))
                else:
                    parts.append(fmt_anim(animations[cursor], frame_names))
                region_entries.append({'address': f"0x{ROM_BASE+cursor:08X}", 'end': f"0x{ROM_BASE+obj_end:08X}", 'symbol': name, 'type': kind})
                cursor = obj_end
                continue

            next_points = [x for x in boundaries if x > cursor]
            # Typed ends are also boundaries even when they have no label.
            next_points += [e for s, (e, _, _) in typed.items() if cursor < e <= end]
            nxt = min(next_points) if next_points else end
            if nxt <= cursor:
                raise ValueError(f"non-advancing cursor 0x{cursor:X}")
            name = labels.get(cursor, f"sSpriteDataRaw_{ROM_BASE + cursor:08X}")
            parts.append(fmt_raw(name, cursor, data[cursor:nxt]))
            region_entries.append({'address': f"0x{ROM_BASE+cursor:08X}", 'end': f"0x{ROM_BASE+nxt:08X}", 'symbol': name, 'type': 'raw'})
            cursor = nxt

        out_path.write_text(''.join(parts))
        manifest['regions'].append({
            'start': f"0x{ROM_BASE+start:08X}", 'end': f"0x{ROM_BASE+end:08X}",
            'source': f"src/data/{out_name}", 'replaces': rel, 'entries': region_entries,
        })

    args.manifest.parent.mkdir(parents=True, exist_ok=True)
    args.manifest.write_text(json.dumps(manifest, indent=2) + '\n')
    print(f"generated {len(REGIONS)} regions, {len(animations)} animation tables, {len(frame_names)} unique frames")
    print(f"aliases: {len(manifest['aliases'])}")
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
