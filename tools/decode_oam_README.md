# Wario Land 4 OAM decoder v6 (future-proof)

Install as `tools/decode_oam.py` and run from the repository root.

```bash
python3 tools/decode_oam.py kaentsubo
python3 tools/decode_oam.py kaentsubo --check
python3 tools/decode_oam.py kaentsubo --apply
```

## Supported repository layouts

- **Legacy ASM-only:** labels plus `baserom_blob`. Preview and `--check` decode directly from the ROM. `--apply` is intentionally blocked until a Method 3 region exists.
- **Method 3:** shared region C files and address-commented raw arrays. Preview, `--check`, and `--apply` are supported.
- Region files may be anywhere under the repository, not only a hardcoded folder.
- Region ownership can come from the header comment or a filename like `sprite_data_3B6450_3C4AE8.c`.
- Raw arrays may use `u8` or `unsigned char`, optional `static`, explicit sizes, CRLF, and attributes.
- ASM parsing tolerates blank lines, comments, `.align`, and other directives between a label and its `baserom_blob`.

## Safety

- Logical animation-table ends are determined structurally from ROM records, not broad ASM/raw-array boundaries.
- All frame pointers and OAM frame sizes are validated.
- Shared frame pointers are deduplicated.
- Leading raw fragments preserve their original C symbol names.
- `--apply` writes backups under `build/oam_decode/backups/`.
- Preview output is written to `build/oam_decode/<module>_generated.c`.

## Overrides

For unusual repository layouts:

```bash
python3 tools/decode_oam.py kaentsubo \
  --source src/custom/kaentsubo.c \
  --rom baserom.us.gba \
  --check
```

## Exact Kaentsubo validation performed

Legacy mode and Method 3 mode both produced:

- 18 animation tables
- 113 frame references
- 86 unique OAM frames
- 27 shared-frame reuses

Method 3 `--apply` completed successfully and a second `--check` passed after application.
