#include "types.h"
#include "oam.h"

/*
 * Shared sprite data region: 0x083B451C - 0x083B4554
 *
 * METHOD 3 MAINTENANCE RULES
 * --------------------------
 * This file owns one contiguous ROM interval shared by multiple sprite modules.
 * Keep every definition in ascending ROM-address order.
 *
 * When merging another sprite_ai branch:
 *   1. Locate each new OAM frame/table's original ROM address.
 *   2. Find the raw sSpriteDataRaw_* or sUnk_* array covering that address.
 *   3. Split that raw array and replace only the verified byte interval with
 *      const u16 OAM frames and const struct AnimationFrame tables.
 *   4. Preserve all bytes before and after the decoded interval.
 *   5. Update tools/sprite_data_regions.json.
 *   6. Rebuild immediately and verify MD5 5fe47355a33e3fabec2a1607af88a404.
 *
 * Never append a definition merely to group it with its sprite. Never add
 * OAM_DATA_SECTION, per-address linker sections, or asm/generated_oam files.
 */

/* 0x083B451C - 0x083B4534: not yet typed. */
const u8 sSpriteDataRaw_083B451C[] = {
    0x01, 0x00, 0xE0, 0x00, 0xE0, 0xC1, 0x00, 0x82, 0x02, 0x00, 0xFA, 0x40, 0xF0, 0x41, 0x49, 0x82,
    0x02, 0x40, 0xF8, 0x01, 0x6A, 0x82, 0x00, 0x00,
};
/* 0x083B4534 - 0x083B4544: not yet typed. */
const u8 sUnk_83B4534[] = {
    0x1C, 0x45, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
/* 0x083B4544 - 0x083B4554: not yet typed. */
const u8 sUnk_83B4544[] = {
    0x24, 0x45, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
