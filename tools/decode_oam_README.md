# WL4 Method 3 OAM decoder

Copy `decode_oam.py` to:

```text
tools/decode_oam.py
```

Normal usage from the repository root:

```bash
# Preview a named module
python3 tools/decode_oam.py pinball

# Apply the generated conversion to the owning Method 3 region file
python3 tools/decode_oam.py pinball --apply

# Validate discovery/decoding without modifying source
python3 tools/decode_oam.py pinball --check
```

On a branch named `Match_disasm_pinball`, this is also supported:

```bash
python3 tools/decode_oam.py
```

The tool automatically finds:

- `src/sprite_ai/<module>.c`;
- all `s<Module>*Oam` references used by that source;
- matching `.global` labels and following `baserom_blob` ranges in `asm/**/*.s`;
- the Method 3 `const u8` arrays owning those ROM addresses;
- all pointed OAM frames;
- shared frame pointers;
- `baserom.us.gba` or another `baserom*.gba`.

Preview output is written to:

```text
build/oam_decode/<module>_generated.c
```

With `--apply`, backups are written under:

```text
build/oam_decode/backups/
```

Generated frames use the repository's style:

```c
/* 0x083D03E8: decoded OAM frame. */
const u16 sPinballLockUpOpenOamFrame[] = {
    3,
    /* 40E8 01F0 9240 */
    OAM_ENTRY(-16, -24, SPRITE_SIZE_16x8, 0, 576, 9, 0),
    /* 40E8 1000 9240 */
    OAM_ENTRY(0, -24, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 576, 9, 0),
    /* 00F0 81F0 920A */
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 522, 9, 0),
};
```

## Safety behavior

The tool refuses to edit when:

- a range comment size does not equal its byte-array size;
- no raw array owns a required address;
- multiple arrays claim the same address;
- animation table size is invalid;
- an OAM pointer is invalid;
- generated objects overlap;
- an entry uses affine/mosaic/8bpp/object-mode bits that the project's `OAM_ENTRY` macro cannot represent safely.

After applying, always run:

```bash
make clean
rm -rf build
make -j
md5sum build/us/warioland4_us.gba
```

Expected US ROM MD5:

```text
5fe47355a33e3fabec2a1607af88a404
```

## Region gaps

The tool supports Method 3 files where a labeled animation range is not yet
represented by its own `const u8` array. It identifies the owning shared-region
file from the `Shared sprite data region: START - END` header, reads the missing
bytes from `baserom.us.gba`, and inserts the decoded object at the next
address-comment boundary. Raw arrays that contain pointed OAM frames are split
normally.

## v4 boundary fix

Assembly `baserom_blob` ranges can be broader than the logical animation table,
especially for the final label before unrelated data. The decoder now refines
those ranges using the exact Method 3 raw-array boundary or the next documented
address comment in the owning shared-region C file.
