# `decode_oam.py` v9 — OAM decoder and Method 3 region generator

This tool converts Wario Land 4 sprite animation tables and OAM frames from raw ROM bytes into readable C definitions using `OAM_ENTRY(...)`.

It supports three repository layouts:

1. **Legacy ASM-only** — animation data is still provided by `.s` files containing `baserom_blob`.
2. **Method 3 C regions** — shared ROM intervals are represented by `src/data/sprite_data_START_END.c` files.
3. **Mixed/cross-blob modules** — a sprite's animation tables and pointed frames are split across multiple ASM blobs or Method 3 regions.

The tool searches the entire repository. It does not assume that all data for a module is in one file.

---

## Install

Copy the script into the repository:

```bash
cp decode_oam.py tools/decode_oam.py
chmod +x tools/decode_oam.py
```

Run commands from the repository root.

---

## Normal workflow

### 1. Validate and preview

```bash
python3 tools/decode_oam.py professor --check
```

This:

- finds `src/sprite_ai/professor.c` or `src/professor.c`;
- collects referenced `s...Oam` symbols;
- searches every `asm/**/*.s` file for their labels;
- reads the exact bytes from `baserom.us.gba`;
- decodes animation tables and pointed OAM frames;
- writes a preview to `build/oam_decode/professor_generated.c`;
- does not modify repository source files.

Preview mode without `--check` behaves similarly:

```bash
python3 tools/decode_oam.py professor
```

### 2. Apply when all Method 3 regions already exist

```bash
python3 tools/decode_oam.py professor --apply
```

The tool splits existing raw `const u8` arrays, preserves bytes before and after decoded objects, inserts typed definitions in ROM-address order, and keeps the original leading raw symbol name when an array is split.

### 3. Plan missing Method 3 regions

```bash
python3 tools/decode_oam.py professor --plan-region
```

This reports:

- every decoded object outside current Method 3 coverage;
- the ASM blob object owning each address;
- the full linked ROM interval of that ASM file;
- the proposed `src/data/sprite_data_START_END.c` file;
- the exact linker object replacement;
- blockers that make automatic conversion unsafe.

### 4. Create safe missing regions and apply

```bash
python3 tools/decode_oam.py professor --create-region --apply
```

This is intentionally a two-part operation:

1. Convert the **entire owning ASM object** into a raw Method 3 C region while preserving all global labels.
2. Rediscover the new region and replace only the requested module's verified animation/frame ranges with typed C definitions.

The tool never silently extracts an arbitrary middle slice from a larger linked ASM object.

---

## Professor cross-blob example

Suppose a second ASM blob contains:

```asm
baserom_blob 0x40FEA4, 0x40FFAC

.global sProfessorProjectileOam
sProfessorProjectileOam:

baserom_blob 0x40FFAC, 0x41000C
```

and there is no existing Method 3 C file covering that address.

Run:

```bash
python3 tools/decode_oam.py professor --plan-region
```

Expected plan shape:

```text
ASM object: asm/data/<owning_blob>.s
Full linked range: 0x0840FEA4-0x0841000C
Proposed region: src/data/sprite_data_40FEA4_41000C.c
Linker update:
  build/us/obj/asm/data/<owning_blob>.o
  -> build/us/obj/data/sprite_data_40FEA4_41000C.o
Automatic creation: SAFE
```

Then apply:

```bash
python3 tools/decode_oam.py professor --create-region --apply
```

The generated C file initially preserves the whole ASM object as raw arrays. For example:

```c
/* 0x0840FEA4 - 0x0840FFAC: not yet typed. */
const u8 sSpriteDataRaw_0840FEA4[] = {
    /* exact baserom bytes */
};

/* 0x0840FFAC: decoded animation table. */
const struct AnimationFrame sProfessorProjectileOam[] = {
    /* decoded entries */
};
```

Any original ASM labels are reused as C symbol names so other modules do not lose references.

---

## How missing region generation works

### Full ASM object detection

For each missing typed object, the tool finds the `.s` file whose complete `baserom_blob` range contains the address.

The ASM file is considered automatically replaceable only when it contains pure data layout constructs:

- comments and blank lines;
- `.include`, `.section`, `.align`, `.balign`, `.p2align`;
- `.global` declarations;
- labels;
- `baserom_blob` lines.

If it contains instructions, `.word`, `.incbin`, custom macros, or other content, automatic replacement is blocked.

### Range choice

The generated Method 3 range is the minimum start through maximum end of all contiguous `baserom_blob` entries in that ASM file.

The tool does **not** choose only the local animation range because the linker includes the ASM file as one object. Replacing only part would duplicate or omit bytes.

### Global symbol preservation

Each label immediately preceding a `baserom_blob` becomes the name of the corresponding raw C array.

An unlabeled first blob receives an address-based name such as:

```c
sSpriteDataRaw_0840FEA4
```

When a raw array is split later, the leading fragment keeps the original symbol name. This avoids linker failures such as losing `sUnk_83D0370`.

### Linker replacement

The tool searches linker scripts for exactly one reference to the owning ASM object.

Example:

```text
build/us/obj/asm/data/blob_0x40FEA4-0x41000C.o
```

becomes:

```text
build/us/obj/data/sprite_data_40FEA4_41000C.o
```

The project maps `src/data/foo.c` to `build/.../obj/data/foo.o`; the leading `src/` is intentionally omitted in the object path.

If zero or multiple matching linker references are found, automatic creation is blocked.

---

## Safety blockers

`--create-region --apply` stops without modifying the linker when any of these occurs:

- no ASM blob owns a missing object;
- multiple ASM blobs claim the same address;
- the owning ASM file contains non-data code or unsupported directives;
- blob ranges are not contiguous;
- the proposed range overlaps an existing Method 3 region;
- the output C file already exists;
- no unique linker object reference can be found;
- the full region is larger than the configured safety limit.

The default maximum automatically generated region size is `0x200000` bytes.

Override it only after reviewing the plan:

```bash
python3 tools/decode_oam.py professor \
  --plan-region \
  --max-region-size 0x400000
```

and:

```bash
python3 tools/decode_oam.py professor \
  --create-region --apply \
  --max-region-size 0x400000
```

---

## Discovery rules

### Module source

The tool checks:

```text
src/sprite_ai/<module>.c
src/<module>.c
```

Override when necessary:

```bash
python3 tools/decode_oam.py professor \
  --source src/sprite_ai/professor.c \
  --check
```

### ROM

The tool searches for:

```text
baserom.us.gba
baserom_us.gba
baserom.gba
rom.gba
baserom*.gba
```

Override:

```bash
python3 tools/decode_oam.py professor --rom path/to/rom.gba --check
```

### ASM tables

The authoritative animation name comes from the real ASM label:

```asm
.global sProfessorProjectileOam
sProfessorProjectileOam:
    baserom_blob ...
```

The module name is only used as a search filter.

### Frame names

Pointed OAM frames are named deterministically from the first animation table that references them. Shared frame pointers reuse one generated definition.

### Animation boundaries

ASM blob ranges may be broader than the logical animation table. The tool walks 8-byte `AnimationFrame` records structurally and trims to the last valid terminator before invalid data.

Internal terminators are preserved.

---

## Backups and generated files

Generated preview:

```text
build/oam_decode/<module>_generated.c
```

Backups of modified existing files:

```text
build/oam_decode/backups/
```

New region C files have no previous file to back up. Remove them manually or use Git to revert.

Review changes with:

```bash
git status --short
git diff -- linker.ld src/data/
```

---

## Required validation after `--apply`

Always clean-build:

```bash
make clean
rm -rf build
make -j
```

Verify important symbols:

```bash
arm-none-eabi-nm -n build/us/warioland4_us.elf | \
  grep -E 'sProfessorProjectileOam|sProfessorProjectileOamFrame'
```

Verify the ROM hash expected by the project:

```bash
md5sum build/us/warioland4_us.gba
```

Do not commit if the build fails, symbol addresses move unexpectedly, or the ROM hash differs.

---

## Recovery

Restore modified linker/region files from backups:

```bash
cp -a build/oam_decode/backups/. .
```

Or use Git:

```bash
git restore linker.ld src/data/
```

Remove a newly generated region when reverting:

```bash
rm src/data/sprite_data_40FEA4_41000C.c
```

Then restore the original linker entry.

---

## Honest limitations

The tool is robust when the missing data belongs to a pure, contiguous, uniquely linked `baserom_blob` ASM object.

It deliberately refuses automatic generation when:

- the ASM object mixes code and data;
- custom assembly macros obscure actual byte ownership;
- the linker reference cannot be identified uniquely;
- multiple build variants use different object layouts;
- a partial ASM-object split would be required.

In those cases, `--plan-region` remains useful, but manual review is required. Refusing is safer than generating a region that silently shifts ROM layout.

## Split blobs: raw animation symbol discovery

After `split_blob_region.py --apply`, an animation previously defined by an ASM
label may temporarily exist as a raw Method 3 array:

```c
/* 0x0840FFAC - 0x0841000C: not yet typed. */
const u8 sProfessorProjectileOam[] = {
    /* exact ROM bytes */
};
```

The decoder discovers animation definitions from both legacy ASM labels and
named Method 3 raw arrays. Therefore this command must include the migrated
animation and all of its referenced frames:

```bash
python3 tools/decode_oam.py professor --check
```

Expected indicators include `Animation tables found: 12` and addresses from the
new region such as `0x0840FFAC` and its frame pointers. Then apply typing with:

```bash
python3 tools/decode_oam.py professor --apply
```

If the tool reports that `sProfessorProjectileOam` has neither an ASM label nor
a named Method 3 array, verify that the generated raw array retained the exact
symbol name and that its range comment uses full ROM addresses.


## Notes

- Source autodiscovery now also checks `src/minigames/<module>.c`.
- `--plan-region` / `--create-region --apply` no longer requires animation tables to already be covered by a Method 3 region during discovery.
- Linker object lookup now matches by object basename and accepts repository linker entries such as:

```ld
obj/blob_0x6D36A4-0x78E6CC.o(.rodata);
```

- The generated replacement preserves the object root, so the example above becomes:

```ld
obj/data/sprite_data_6D36A4_78E6CC.o(.rodata);
```

- The lookup also scans `ldscript.in` and `ldscript.txt` in addition to `.ld` / `.lds` files.
