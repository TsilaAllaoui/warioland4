# Shared Sprite OAM Regions (Method 3)

The large sprite animation data blobs are reconstructed as normal C in:

```text
src/data/sprite_data_3B451C_3B4554.c
src/data/sprite_data_3B548C_3B5C5C.c
src/data/sprite_data_3B6450_3C4AE8.c
src/data/sprite_data_3C4B28_3F9D64.c
```

Each file owns one contiguous ROM interval. Definitions must remain in ascending
ROM-address order, even when adjacent objects belong to different sprites.

## Adding OAM from another `sprite_ai` branch

1. Record the original address and size of every OAM frame and animation table.
2. Locate the owning shared region in `tools/sprite_data_regions.json`.
3. Find the raw `sSpriteDataRaw_*` or `sUnk_*` array covering that interval.
4. Split the raw array at the exact boundaries.
5. Replace only the decoded bytes with `const u16` OAM frames and the correct
   `const struct AnimationFrame` table.
6. Keep all surrounding bytes and definitions in their existing address order.
7. Update declarations and references without replacing newer master names.
8. Regenerate/update `tools/sprite_data_regions.json` as appropriate.
9. Clean-build immediately and verify the US ROM MD5:

```text
5fe47355a33e3fabec2a1607af88a404
```

Never append data merely to group it with its sprite. Do not add
`OAM_DATA_SECTION`, per-address linker sections, or `asm/generated_oam` files.

The generator used for the initial reconstruction is:

```text
tools/generate_sprite_oam_regions.py
```

It consumes the legally obtained US baserom and the two OAM conversion reports
used to create this integration. The checked-in region C files and manifest are
the authoritative repository output; future edits can be made incrementally.
