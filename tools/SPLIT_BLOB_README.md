# Safe prefix extraction for large ASM blobs

Use this helper when `decode_oam.py --create-region --apply` reports that the owning ASM object is very large.

For Professor, all missing objects end at `0x0841000C`, and that address is an existing `baserom_blob` boundary. Extract the prefix only:

```bash
python3 tools/split_blob_region.py \
  asm/blob_0x40F1C8-0x6D3394.s \
  0x41000C
```

Review the plan, then apply:

```bash
python3 tools/split_blob_region.py \
  asm/blob_0x40F1C8-0x6D3394.s \
  0x41000C \
  --apply
```

This creates:

```text
src/data/sprite_data_40F1C8_41000C.c
```

It rewrites the original ASM file so it starts at `0x41000C`, and inserts the new C object immediately before the remaining ASM object in `linker.ld`. Existing labels in the extracted prefix are preserved as C symbols.

Then run:

```bash
python3 tools/decode_oam.py professor --apply
make clean
rm -rf build
make -j
```

## Safety limits

The helper only supports extracting a prefix. It refuses to operate unless:

- the ASM file contains only harmless directives, labels, and `baserom_blob` lines;
- the split address is exactly a `baserom_blob` end boundary;
- the linker contains exactly one matching ASM object entry;
- the output C file does not already exist.

Backups are written under:

```text
build/oam_decode/backups/blob_split/
```

It is not a universal arbitrary-ASM splitter. It is robust for the large pure-data aggregate blobs used by this Wario Land 4 repository.
