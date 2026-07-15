#include "sprite_ai/sprite_a9.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sSpriteA9Oam_83E1F30_Frame1[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E1F30_Frame2[] = {
    4,
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-2, -9, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E1F30_Frame3[] = {
    3,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 960, 8, 0),
};

const u16 sSpriteA9Oam_83E1F30_Frame4[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1F30_Frame5[] = {
    4,
    OAM_ENTRY(-18, -19, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x16, 0, 979, 8, 0),
};

const u16 sSpriteA9Oam_83E1F30_Frame6[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame1[] = {
    4,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -25, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-9, -17, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame2[] = {
    4,
    OAM_ENTRY(-9, -26, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 973, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame3[] = {
    3,
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-24, -19, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame4[] = {
    3,
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame5[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-23, -17, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame6[] = {
    4,
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-22, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(6, -8, SPRITE_SIZE_16x8, 0, 1012, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame7[] = {
    4,
    OAM_ENTRY(-7, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(13, -8, SPRITE_SIZE_8x8, 0, 980, 8, 0),
};

const u16 sSpriteA9Oam_83E1FA0_Frame8[] = {
    4,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(12, -15, SPRITE_SIZE_8x8, 0, 980, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame1[] = {
    3,
    OAM_ENTRY(-3, -9, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-24, -17, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame2[] = {
    2,
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame3[] = {
    2,
    OAM_ENTRY(0, -7, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame4[] = {
    3,
    OAM_ENTRY(-24, -17, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame5[] = {
    3,
    OAM_ENTRY(-2, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E1FE8_Frame6[] = {
    3,
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u8 sSpriteA9RawData_83E1AE8[] = {
    0x01, 0x00, 0xF8, 0x00, 0x00, 0x00, 0xD4, 0x83,
};

const u16 sSpriteA9Oam_83E2020_Frame1[] = {
    4,
    OAM_ENTRY(-16, -18, SPRITE_SIZE_8x16, 0, 975, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 969, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame2[] = {
    3,
    OAM_ENTRY(-13, -25, SPRITE_SIZE_16x8, 0, 982, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame3[] = {
    3,
    OAM_ENTRY(8, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 975, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 971, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame4[] = {
    3,
    OAM_ENTRY(-3, -4, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame5[] = {
    3,
    OAM_ENTRY(-15, -14, SPRITE_SIZE_8x16, 0, 975, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 979, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 971, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame6[] = {
    3,
    OAM_ENTRY(-13, -26, SPRITE_SIZE_16x8, 0, 982, 8, 0),
    OAM_ENTRY(-12, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E2020_Frame7[] = {
    3,
    OAM_ENTRY(8, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 975, 8, 0),
    OAM_ENTRY(-11, -17, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 971, 8, 0),
};

const u16 sSpriteA9Oam_83E20C0_Frame2[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E2238_Frame3[] = {
    3,
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-12, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
};

const u8 sSpriteA9RawData_83E1BAA[] = {
    0x03, 0x00, 0xFC, 0x40, 0xF3, 0x21, 0xD6, 0x83, 0xEC, 0x40, 0xF2, 0x21, 0xD1, 0x83, 0xF0, 0x00,
    0xF8, 0x61, 0xCD, 0x83,
};

const u16 sSpriteA9Oam_83E2238_Frame2[] = {
    4,
    OAM_ENTRY(-13, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
};

const u8 sSpriteA9RawData_83E1BD8[] = {
    0x04, 0x00, 0xFB, 0x40, 0xF3, 0x21, 0xD6, 0x83, 0xEF, 0x40, 0xF7, 0x21, 0xD1, 0x83, 0xEF, 0x00,
    0xF8, 0x61, 0xCD, 0x83, 0xF1, 0x40, 0xEF, 0x21, 0xD1, 0x83,
};

const u16 sSpriteA9Oam_83E2238_Frame1[] = {
    4,
    OAM_ENTRY(-13, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-9, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
    OAM_ENTRY(-17, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
};

const u8 sSpriteA9RawData_83E1C0C[] = {
    0x04, 0x00, 0xFB, 0x40, 0xF4, 0x21, 0xD6, 0x83, 0xEC, 0x40, 0xF8, 0x21, 0xD1, 0x83, 0xEF, 0x40,
    0xF6, 0xA1, 0xC0, 0x83, 0xEE, 0x40, 0xEE, 0x21, 0xD1, 0x83, 0x01, 0x00, 0xF8, 0x00, 0x00, 0x00,
    0xD4, 0x83,
};

const u16 sSpriteA9Oam_83E2088_Frame1[] = {
    4,
    OAM_ENTRY(-10, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-3, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-18, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 963, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2088_Frame2[] = {
    4,
    OAM_ENTRY(-10, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 976, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 963, 8, 0),
    OAM_ENTRY(-13, -24, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 979, 8, 0),
};

const u16 sSpriteA9Oam_83E2088_Frame3[] = {
    4,
    OAM_ENTRY(-10, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-3, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-18, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 963, 8, 0),
    OAM_ENTRY(-14, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2088_Frame4[] = {
    3,
    OAM_ENTRY(-9, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 960, 8, 0),
};

const u16 sSpriteA9Oam_83E2088_Frame5[] = {
    4,
    OAM_ENTRY(-9, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-2, -27, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 979, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 960, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E2088_Frame6[] = {
    4,
    OAM_ENTRY(-9, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 960, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 976, 8, 0),
};

const u8 sSpriteA9RawData_83E1CC4[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0xD4, 0x83,
};

const u16 sSpriteA9Oam_83E20C0_Frame1[] = {
    4,
    OAM_ENTRY(-14, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-9, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-11, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 960, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E20C0_Frame3[] = {
    3,
    OAM_ENTRY(-7, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 979, 8, 0),
    OAM_ENTRY(-2, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E20C0_Frame4[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E20C0_Frame5[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 982, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E20C0_Frame6[] = {
    3,
    OAM_ENTRY(-13, -21, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 975, 8, 0),
    OAM_ENTRY(2, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 979, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 971, 8, 0),
};

const u16 sSpriteA9Oam_83E20F8_Frame1[] = {
    3,
    OAM_ENTRY(-9, -25, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E20F8_Frame2[] = {
    3,
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 967, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2068_Frame2[] = {
    4,
    OAM_ENTRY(-9, -27, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-5, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 973, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2068_Frame1[] = {
    4,
    OAM_ENTRY(-9, -24, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 973, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E20F8_Frame3[] = {
    4,
    OAM_ENTRY(-7, -26, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E20F8_Frame4[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2130_Frame1[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E2130_Frame2[] = {
    4,
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-2, -9, SPRITE_SIZE_8x16, 0, 979, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const u16 sSpriteA9Oam_83E2130_Frame3[] = {
    4,
    OAM_ENTRY(2, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 979, 8, 0),
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2150_Frame1[] = {
    4,
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x16, 0, 979, 8, 0),
};

const u16 sSpriteA9Oam_83E2150_Frame2[] = {
    4,
    OAM_ENTRY(-5, -28, SPRITE_SIZE_8x8, 0, 1015, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-18, -20, SPRITE_SIZE_32x16, 0, 963, 8, 0),
    OAM_ENTRY(-18, -11, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2150_Frame3[] = {
    4,
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-17, -10, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E2150_Frame4[] = {
    4,
    OAM_ENTRY(-5, -25, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-2, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E21A8_Frame1[] = {
    4,
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -27, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-9, -19, SPRITE_SIZE_32x16, 0, 960, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u16 sSpriteA9Oam_83E21A8_Frame2[] = {
    4,
    OAM_ENTRY(-8, -25, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 977, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, 0, 973, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 977, 8, 0),
};

const u8 sSpriteA9RawData_83E1EB0[] = {
    0x03, 0x00, 0xF4, 0x00, 0x09, 0x00, 0xD5, 0x83, 0xF2, 0x80, 0xF6, 0x01, 0xD3, 0x83, 0xF0, 0x00,
    0xF9, 0x41, 0xCB, 0x83, 0x04, 0x00, 0xFA, 0x00, 0xF7, 0x21, 0xF6, 0x83, 0xE6, 0x40, 0xFB, 0x21,
    0xD1, 0x83, 0xEA, 0x00, 0xF8, 0x61, 0xCD, 0x83, 0xE7, 0x40, 0xF2, 0x21, 0xD1, 0x83,
};

const u16 sSpriteA9Oam_83E21D0_Frame1[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 984, 8, 0),
};

const u16 sSpriteA9Oam_83E21F0_Frame1[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 988, 8, 0),
};

const u16 sSpriteA9Oam_83E2238_Frame4[] = {
    3,
    OAM_ENTRY(5, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 975, 8, 0),
    OAM_ENTRY(-13, -17, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 979, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 971, 8, 0),
};

const u16 sSpriteA9Oam_83E2238_Frame5[] = {
    3,
    OAM_ENTRY(-3, -26, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 982, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 977, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 973, 8, 0),
};

const u16 sSpriteA9Oam_83E2068_Frame3[] = {
    4,
    OAM_ENTRY(-9, -28, SPRITE_SIZE_8x8, 0, 1014, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 976, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 973, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_8x8, 0, 976, 8, 0),
};

const struct AnimationFrame sSpriteA9Oam_83E1F30[] = {
    {sSpriteA9Oam_83E1F30_Frame1, 7},
    {sSpriteA9Oam_83E1F30_Frame2, 7},
    {sSpriteA9Oam_83E1F30_Frame3, 7},
    {sSpriteA9Oam_83E1F30_Frame4, 7},
    {sSpriteA9Oam_83E1F30_Frame5, 7},
    {sSpriteA9Oam_83E1F30_Frame6, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E1F68[] = {
    {sSpriteA9Oam_83E1F30_Frame1, 4},
    {sSpriteA9Oam_83E1F30_Frame2, 4},
    {sSpriteA9Oam_83E1F30_Frame3, 4},
    {sSpriteA9Oam_83E1F30_Frame4, 4},
    {sSpriteA9Oam_83E1F30_Frame5, 4},
    {sSpriteA9Oam_83E1F30_Frame6, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E1FA0[] = {
    {sSpriteA9Oam_83E1FA0_Frame1, 7},
    {sSpriteA9Oam_83E1FA0_Frame2, 7},
    {sSpriteA9Oam_83E1FA0_Frame3, 7},
    {sSpriteA9Oam_83E1FA0_Frame4, 7},
    {sSpriteA9Oam_83E1FA0_Frame5, 7},
    {sSpriteA9Oam_83E1FA0_Frame6, 7},
    {sSpriteA9Oam_83E1FA0_Frame7, 7},
    {sSpriteA9Oam_83E1FA0_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E1FE8[] = {
    {sSpriteA9Oam_83E1FE8_Frame1, 3},
    {sSpriteA9Oam_83E1FE8_Frame2, 3},
    {sSpriteA9Oam_83E1FE8_Frame3, 3},
    {sSpriteA9Oam_83E1FE8_Frame4, 3},
    {sSpriteA9Oam_83E1FE8_Frame5, 3},
    {sSpriteA9Oam_83E1FE8_Frame6, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2020[] = {
    {sSpriteA9Oam_83E2020_Frame1, 3},
    {sSpriteA9Oam_83E2020_Frame2, 2},
    {sSpriteA9Oam_83E2020_Frame3, 3},
    {sSpriteA9Oam_83E2020_Frame4, 3},
    {sSpriteA9Oam_83E2020_Frame5, 3},
    {sSpriteA9Oam_83E2020_Frame6, 4},
    {sSpriteA9Oam_83E2020_Frame7, 4},
    {sSpriteA9Oam_83E2020_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2068[] = {
    {sSpriteA9Oam_83E2068_Frame1, 3},
    {sSpriteA9Oam_83E2068_Frame2, 2},
    {sSpriteA9Oam_83E2068_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2088[] = {
    {sSpriteA9Oam_83E2088_Frame1, 5},
    {sSpriteA9Oam_83E2088_Frame2, 5},
    {sSpriteA9Oam_83E2088_Frame3, 5},
    {sSpriteA9Oam_83E2088_Frame4, 5},
    {sSpriteA9Oam_83E2088_Frame5, 5},
    {sSpriteA9Oam_83E2088_Frame6, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E20C0[] = {
    {sSpriteA9Oam_83E20C0_Frame1, 7},
    {sSpriteA9Oam_83E20C0_Frame2, 7},
    {sSpriteA9Oam_83E20C0_Frame3, 7},
    {sSpriteA9Oam_83E20C0_Frame4, 7},
    {sSpriteA9Oam_83E20C0_Frame5, 7},
    {sSpriteA9Oam_83E20C0_Frame6, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E20F8[] = {
    {sSpriteA9Oam_83E20F8_Frame1, 7},
    {sSpriteA9Oam_83E20F8_Frame2, 7},
    {sSpriteA9Oam_83E2068_Frame2, 7},
    {sSpriteA9Oam_83E2068_Frame1, 7},
    {sSpriteA9Oam_83E20F8_Frame3, 7},
    {sSpriteA9Oam_83E20F8_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2130[] = {
    {sSpriteA9Oam_83E2130_Frame1, 4},
    {sSpriteA9Oam_83E2130_Frame2, 4},
    {sSpriteA9Oam_83E2130_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2150[] = {
    {sSpriteA9Oam_83E2150_Frame1, 4},
    {sSpriteA9Oam_83E2150_Frame2, 4},
    {sSpriteA9Oam_83E2150_Frame3, 4},
    {sSpriteA9Oam_83E2150_Frame4, 4},
    ANIMATION_TERMINATOR
};

const u8 sSpriteA9RawData_83E2178[] = {
    0x7C, 0x1E, 0x3E, 0x08, 0x06, 0x00, 0x00, 0x00, 0xD8, 0x19, 0x3E, 0x08, 0x06, 0x00, 0x00, 0x00,
    0xB0, 0x1E, 0x3E, 0x08, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC4, 0x1E, 0x3E, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sSpriteA9Oam_83E21A8[] = {
    {sSpriteA9Oam_83E21A8_Frame1, 5},
    {sSpriteA9Oam_83E21A8_Frame2, 50},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E21C0[] = {
    {sSpriteA9Oam_83E21A8_Frame2, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E21D0[] = {
    {sSpriteA9Oam_83E1FE8_Frame4, 1},
    {sSpriteA9Oam_83E2020_Frame1, 2},
    {sSpriteA9Oam_83E21D0_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E21F0[] = {
    {sSpriteA9Oam_83E2088_Frame1, 2},
    {sSpriteA9Oam_83E21F0_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2208[] = {
    {sSpriteA9Oam_83E1FE8_Frame4, 3},
    {sSpriteA9Oam_83E1FE8_Frame3, 4},
    {sSpriteA9Oam_83E1FE8_Frame2, 5},
    {sSpriteA9Oam_83E2068_Frame1, 8},
    {sSpriteA9Oam_83E1FA0_Frame2, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpriteA9Oam_83E2238[] = {
    {sSpriteA9Oam_83E2238_Frame1, 2},
    {sSpriteA9Oam_83E2238_Frame2, 3},
    {sSpriteA9Oam_83E20C0_Frame6, 6},
    {sSpriteA9Oam_83E2238_Frame3, 6},
    {sSpriteA9Oam_83E2238_Frame4, 6},
    {sSpriteA9Oam_83E2238_Frame5, 6},
    {sSpriteA9Oam_83E20C0_Frame6, 6},
    {sSpriteA9Oam_83E2238_Frame3, 6},
    {sSpriteA9Oam_83E2238_Frame4, 6},
    {sSpriteA9Oam_83E2238_Frame5, 6},
    {sSpriteA9Oam_83E20C0_Frame6, 6},
    {sSpriteA9Oam_83E2238_Frame3, 6},
    {sSpriteA9Oam_83E2238_Frame4, 6},
    {sSpriteA9Oam_83E2238_Frame5, 6},
    {sSpriteA9Oam_83E20C0_Frame6, 6},
    {sSpriteA9Oam_83E2238_Frame3, 6},
    {sSpriteA9Oam_83E2238_Frame4, 200},
    ANIMATION_TERMINATOR
};

void func_805FB24(void)
{
    gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.warioCollision = 33;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    gCurrentSprite.pOamData = sSpriteA9Oam_83E1F30;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work1 = 42;
    SpriteUtilTurnTowardWario();
}

void func_805FB94(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E1F30;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.warioCollision = 33;
    gCurrentSprite.work1 = 42;
}

void func_805FBB8(void)
{
    u32 nearby;

    nearby = SpriteUtilWaitCheckWarioNearbyLeftRight(56, 320);
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (gUnk_3000A51 == 0) {
            gCurrentSprite.pose = 27;
            return;
        }
    } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if (nearby == NS_RIGHT) {
            gCurrentSprite.pose = 110;
            return;
        }
        if (nearby == NS_LEFT) {
            gCurrentSprite.pose = 17;
            return;
        }
        if (gUnk_3000A50 & 0xF0) {
            if (((gCurrentSprite.xPosition & 0x3F) + gCurrentSprite.hitboxExtentRight) > 0x3F) {
                func_8023BFC(gCurrentSprite.yPosition,
                    gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                if (gUnk_3000A51 & 0xF0) {
                    func_8023BFC(gCurrentSprite.yPosition - 32,
                        gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
                    if (gUnk_3000A51 & 0xF) {
                        gCurrentSprite.pose = 17;
                        return;
                    }
                } else {
                    gCurrentSprite.pose = 17;
                    return;
                }
            }
        }
    } else {
        if (nearby == NS_LEFT) {
            gCurrentSprite.pose = 110;
            return;
        }
        if (nearby == NS_RIGHT) {
            gCurrentSprite.pose = 17;
            return;
        }
        if (gUnk_3000A50 & 0xF0) {
            if ((gCurrentSprite.xPosition & 0x3F) < gCurrentSprite.hitboxExtentLeft) {
                func_8023BFC(gCurrentSprite.yPosition,
                    gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                if (gUnk_3000A51 & 0xF0) {
                    func_8023BFC(gCurrentSprite.yPosition - 32,
                        gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
                    if (gUnk_3000A51 & 0xF) {
                        gCurrentSprite.pose = 17;
                        return;
                    }
                } else {
                    gCurrentSprite.pose = 17;
                    return;
                }
            }
        }
    }
    func_8026374();
}

void func_805FD04(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2130;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 13;
    gCurrentSprite.warioCollision = 33;
}

void func_805FD2C(void)
{
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = 27;
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0) {
            if (gCurrentSprite.pose == 18) {
                gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
                gCurrentSprite.pOamData = sSpriteA9Oam_83E2150;
                gCurrentSprite.currentAnimationFrame = 0;
                gCurrentSprite.animationTimer = 0;
                gCurrentSprite.pose = 20;
                gCurrentSprite.work0 = 16;
            } else {
                gCurrentSprite.pOamData = sSpriteA9Oam_83E1F30;
                gCurrentSprite.currentAnimationFrame = 0;
                gCurrentSprite.animationTimer = 0;
                gCurrentSprite.pose = 16;
                gCurrentSprite.warioCollision = 33;
            }
        }
    }
}

void func_805FDAC(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5)
        gCurrentSprite.warioCollision = 5;
}

void func_805FDE4(void)
{
    gCurrentSprite.pose = 52;
    func_805FDAC();
}

void func_805FDF8(void)
{
    gCurrentSprite.pose = 54;
    func_805FDAC();
}

void func_805FE0C(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E1FA0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 57;
    gCurrentSprite.warioCollision = 33;
}

void func_805FE34(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *work0 asm("r1");
    register u32 old asm("r0");
    register u32 next asm("r2");
    u32 timer;

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    old = *work0;
    next = old - 1;
    *work0 = next;
    old = next << 24;
    timer = old >> 24;
    if (timer != 0) {
        register u32 check asm("r0");
        check = timer;
        /* Keep the countdown comparison in r0 instead of coalescing it with r1. */
        asm("" : "+r"(check));
        if (check == 42)
            sprite->warioCollision = 3;
        func_80238A4();
        func_8023B88();
        if (gUnk_3000A50 == 0)
            sprite->pose = 27;
    } else {
        sprite->pOamData = sSpriteA9Oam_83E1FE8;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 113;
        m4aSongNumStart(SE_TOTSUMEN_CHARGE);
    }
}

void func_805FE90(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(gCurrentSprite.yPosition,
            gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (!(gUnk_3000A51 & 0xF0)) {
            func_8023B88();
            if (gUnk_3000A50 == 0) {
                gCurrentSprite.pose = 70;
                gCurrentSprite.work2 = 12;
                gCurrentSprite.work3 = 0;
                gCurrentSprite.xPosition += 8;
                return;
            }
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
            gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (gUnk_3000A51 & 0xF) {
            if (gUnk_3000A51 == 17) {
                gCurrentSprite.pose = 114;
                m4aSongNumStart(SE_TOTSUMEN_HIT_WALL);
            } else {
                gCurrentSprite.pose = 51;
            }
        } else {
            gCurrentSprite.xPosition += 12;
        }
    } else {
        func_8023BFC(gCurrentSprite.yPosition,
            gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        if (!(gUnk_3000A51 & 0xF0)) {
            func_8023B88();
            if (gUnk_3000A50 == 0) {
                gCurrentSprite.pose = 68;
                gCurrentSprite.work2 = 12;
                gCurrentSprite.work3 = 0;
                gCurrentSprite.xPosition -= 8;
                return;
            }
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
            gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 & 0xF) {
            if (gUnk_3000A51 == 17) {
                gCurrentSprite.pose = 114;
                m4aSongNumStart(SE_TOTSUMEN_HIT_WALL);
            } else {
                gCurrentSprite.pose = 53;
            }
        } else {
            gCurrentSprite.xPosition -= 12;
        }
    }
}

void func_805FFD4(void)
{
    if (gCurrentSprite.warioCollision == 3) {
        gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioCollision = 5;
    }
    m4aSongNumStart(SE_TOTSUMEN_IMPACT);
}

void func_8060000(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2020;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 115;
    gCurrentSprite.work0 = 0;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.work3 = 0;
}

void func_806002C(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *work0 asm("r1");
    register u8 *work3 asm("r12");
    register u32 index asm("r2");
    register const s16 *velocities asm("r5");
    register u32 velocityAddress asm("r0");
    register u32 rawVelocity asm("r4");
    register u32 zero asm("r6");
    s16 velocity;
    u32 collisionY;

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    *work0 += 1;
    work3 = &sprite->work3;
    index = *work3;
    velocities = sUnk_83E22C8;
    velocityAddress = index << 1;
    velocityAddress += (u32)velocities;
    rawVelocity = *(const u16 *)velocityAddress;
    zero = 0;
    velocity = *(const s16 *)(velocityAddress + zero);
    if (velocity == 0x7FFF) {
        register u32 previous asm("r1");
        register u32 yPosition asm("r0");
        previous = index - 1;
        previous <<= 1;
        previous += (u32)velocities;
        yPosition = sprite->yPosition;
        yPosition += *(const u16 *)previous;
        sprite->yPosition = yPosition;
    } else {
        register u32 nextIndex asm("r0");
        register u8 *storeWork3 asm("r1");
        nextIndex = index + 1;
        storeWork3 = work3;
        *storeWork3 = nextIndex;
        nextIndex = sprite->yPosition;
        nextIndex += rawVelocity;
        sprite->yPosition = nextIndex;
    }

    if (gCurrentSprite.work0 > 16) {
        collisionY = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1)
            gCurrentSprite.status |= SPRITE_STATUS_UNDERWATER;
        if (gUnk_3000A50 != 0) {
            gCurrentSprite.yPosition = collisionY;
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 54;
            else
                gCurrentSprite.pose = 52;
            gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
            gCurrentSprite.animationTimer = 0;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.work0 = 4;
            gCurrentSprite.work2 = 8;
            gCurrentSprite.work3 = 0;
            gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
            m4aSongNumStart(SE_TOTSUMEN_IMPACT);
            return;
        }
    } else {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp,
            gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 67;
            else
                gCurrentSprite.pose = 69;
        }
    }

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
        gCurrentSprite.xPosition -= 8;
    else
        gCurrentSprite.xPosition += 8;
}

void func_8060168(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E21C0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.warioCollision = 33;
}

void func_8060190(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E20C0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 26;
    gCurrentSprite.work0 = 84;
}

void func_80601B4(void)
{
    register u32 timer asm("r2");
    register u32 original asm("r3");

    timer = gCurrentSprite.work0;
    original = timer;
    if ((u8)(timer - 28) > 28) {
        func_8023CD8();
        return;
    }
    if (timer == 56 || timer == 49) {
        gCurrentSprite.yPosition -= 32;
    } else if (timer == 42) {
        gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
        gCurrentSprite.pOamData = sSpriteA9Oam_83E20F8;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.yPosition += 32;
    } else if (timer == 35) {
        gCurrentSprite.yPosition += 32;
    } else if (original == 28) {
        gCurrentSprite.warioCollision = 33;
    }
    gCurrentSprite.work0--;
}

void func_806022C(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E1F68;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 28;
    gCurrentSprite.work3 = 0;
}

void func_806024C(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 30;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8060274(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2238;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void func_80602C4(void)
{
    gCurrentSprite.pose = 32;
    func_8060274();
}

void func_80602D8(void)
{
    gCurrentSprite.pose = 34;
    func_8060274();
}

void func_80602EC(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2238;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, SSPRITE_06);
}

void func_8060328(void)
{
    gCurrentSprite.pose = 32;
    func_80602EC();
}

void func_806033C(void)
{
    gCurrentSprite.pose = 34;
    func_80602EC();
}

void func_8060350(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E21A8;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioCollision = 1;
}

void func_8060384(void)
{
    gCurrentSprite.pose = 36;
    func_8060350();
}

void func_8060398(void)
{
    gCurrentSprite.pose = 38;
    func_8060350();
}

void func_80603AC(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2208;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void func_80603DC(void)
{
    gCurrentSprite.pose = 40;
    func_80603AC();
}

void func_80603F0(void)
{
    gCurrentSprite.pose = 42;
    func_80603AC();
}

void func_8060404(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8060428(void)
{
    gCurrentSprite.pose = 44;
    func_8060404();
}

void func_806043C(void)
{
    gCurrentSprite.pose = 46;
    func_8060404();
}

void func_8060450(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sSpriteA9Oam_83E21F0;
        gCurrentSprite.work0 = 7;
    } else {
        gCurrentSprite.pOamData = sSpriteA9Oam_83E21D0;
        gCurrentSprite.work0 = 8;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void func_806049C(void)
{
    SpriteUtilDie();
}

void func_80604A8(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_80604D4(void)
{
    gCurrentSprite.pose = 72;
    func_80604A8();
}

void func_80604E8(void)
{
    gCurrentSprite.pose = 74;
    func_80604A8();
}

void func_80604FC(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2068;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 76;
    gCurrentSprite.work0 = 19;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 33;
}

void func_806052C(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *work0 asm("r1");
    register u32 timer asm("r0");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    timer = *work0;
    timer -= 1;
    *work0 = timer;
    timer <<= 24;
    if (timer != 0) {
        func_8023BFC(sprite->yPosition - sprite->hitboxExtentUp,
            sprite->xPosition);
        if (gUnk_3000A51 & 0xF) {
            sprite->pose = 29;
        } else {
            register u8 *work3 asm("r12");
            register u32 index asm("r2");
            register const s16 *velocities asm("r5");
            register u32 velocityAddress asm("r0");
            register u32 rawVelocity asm("r3");
            register u32 zero asm("r6");
            s16 velocity;

            work3 = &sprite->work3;
            index = *work3;
            velocities = sUnk_8352B18;
            velocityAddress = index << 1;
            velocityAddress += (u32)velocities;
            rawVelocity = *(const u16 *)velocityAddress;
            zero = 0;
            velocity = *(const s16 *)(velocityAddress + zero);
            if (velocity == 0x7FFF) {
                register u32 previous asm("r1");
                register u32 yPosition asm("r0");
                previous = index - 1;
                previous <<= 1;
                previous += (u32)velocities;
                yPosition = sprite->yPosition;
                yPosition += *(const u16 *)previous;
                sprite->yPosition = yPosition;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storeWork3 asm("r1");
                nextIndex = index + 1;
                storeWork3 = work3;
                *storeWork3 = nextIndex;
                nextIndex = sprite->yPosition;
                nextIndex += rawVelocity;
                sprite->yPosition = nextIndex;
            }
        }
    } else {
        sprite->pose = 27;
    }
}

void func_80605B8(void)
{
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_80605D0(void)
{
    gCurrentSprite.pose = 82;
    func_80605B8();
}

void func_80605E4(void)
{
    gCurrentSprite.pose = 84;
    func_80605B8();
}

void func_80605F8(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sSpriteA9Oam_83E2088;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8060614(void)
{
    gCurrentSprite.pose = 88;
    func_80605F8();
}

void func_8060628(void)
{
    gCurrentSprite.pose = 86;
    func_80605F8();
}

void SpriteUnknownA9(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER)
        gCurrentSprite.pose = 107;

    switch (gCurrentSprite.pose) {
        case 0:
            func_805FB24();
            break;
        case 15:
            func_805FB94();
        case 16:
            func_805FBB8();
            break;
        case 17:
            func_805FD04();
        case 18:
        case 20:
            func_805FD2C();
            break;
        case 110:
            func_805FE0C();
        case 111:
            func_805FE34();
            break;
        case 113:
            func_805FE90();
            break;
        case 114:
            func_8060000();
        case 115:
            func_806002C();
            break;
        case 23:
            func_8060168();
        case 24:
            func_8023C94();
            break;
        case 25:
            func_8060190();
        case 26:
            func_80601B4();
            break;
        case 27:
            func_806022C();
        case 28:
            func_8023D48();
            break;
        case 29:
            func_806024C();
        case 30:
            func_8023EE0();
            break;
        case 31:
        case 79:
            func_80602C4();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
        case 80:
            func_80602D8();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 35:
            func_8060384();
        case 36:
            SpriteUtilPushedRight();
            break;
        case 37:
            func_8060398();
        case 38:
            SpriteUtilPushedLeft();
            break;
        case 39:
            func_80603DC();
        case 40:
            SpriteUtilPushedRight();
            func_80238E8();
            break;
        case 41:
            func_80603F0();
        case 42:
            SpriteUtilPushedLeft();
            func_80238E8();
            break;
        case 43:
            func_8060428();
        case 44:
            func_8024478();
            break;
        case 45:
            func_806043C();
        case 46:
            func_802449C();
            break;
        case 47:
            func_80244C0();
        case 48:
            func_80244E0();
            break;
        case 49:
            func_8060450();
        case 50:
            SpriteUtilDieAfterDelay();
            break;
        case 51:
            func_805FDE4();
            goto call_8024988;
        case 53:
            func_805FDF8();
            goto call_802476C;
        case 55:
            func_805FFD4();
            func_8024688();
        case 56:
            func_80246B8();
            break;
        case 57:
            func_805FFD4();
            func_802473C();
        case 54:
        case 58:
call_802476C:
            func_802476C();
            break;
        case 59:
            func_805FFD4();
            func_80247F0();
        case 60:
            func_8024820();
            break;
        case 61:
            func_805FFD4();
            func_80248A4();
        case 62:
            func_80248D4();
            break;
        case 63:
            func_805FFD4();
            func_8024958();
        case 52:
        case 64:
call_8024988:
            func_8024988();
            break;
        case 65:
            func_805FFD4();
            func_8024A0C();
        case 66:
            func_8024A3C();
            break;
        case 67:
            func_8024AC0();
            goto call_8024AD4;
        case 69:
            func_8024BEC();
            goto call_8024C00;
        case 71:
            func_80604D4();
        case 68:
        case 72:
call_8024AD4:
            func_8024AD4();
            break;
        case 73:
            func_80604E8();
        case 70:
        case 74:
call_8024C00:
            func_8024C00();
            break;
        case 75:
            func_80604FC();
        case 76:
            func_806052C();
            break;
        case 81:
            func_80605D0();
            break;
        case 82:
            SpriteUtilLiftingSpriteRight();
            break;
        case 83:
            func_80605E4();
            break;
        case 84:
            SpriteUtilLiftingSpriteLeft();
            break;
        case 87:
            func_8060614();
            break;
        case 88:
            SpriteUtilCarryingSpriteRight();
            break;
        case 85:
            func_8060628();
            break;
        case 86:
            SpriteUtilCarryingSpriteLeft();
            break;
        case 89:
            gCurrentSprite.pose = 90;
        case 90:
            SpriteUtilThrownLeftSoft();
            break;
        case 93:
            gCurrentSprite.pose = 94;
        case 94:
            SpriteUtilThrownLeftHard();
            break;
        case 97:
            gCurrentSprite.pose = 98;
        case 98:
            SpriteUtilThrownUpLeftSoft();
            break;
        case 101:
            gCurrentSprite.pose = 102;
        case 102:
            SpriteUtilThrownUpLeftHard();
            break;
        case 91:
            gCurrentSprite.pose = 92;
        case 92:
            SpriteUtilThrownRightSoft();
            break;
        case 95:
            gCurrentSprite.pose = 96;
        case 96:
            SpriteUtilThrownRightHard();
            break;
        case 99:
            gCurrentSprite.pose = 100;
        case 100:
            SpriteUtilThrownUpRightSoft();
            break;
        case 103:
            gCurrentSprite.pose = 104;
        case 104:
            SpriteUtilThrownUpRightHard();
            break;
        case 105:
            func_806033C();
            break;
        case 106:
            func_8060328();
            break;
        default:
            func_806049C();
            break;
    }
}
