#include "sprite_ai/totsumen.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sTotsumenOam_83BB0E8_Frame1[] = {
    4,
    OAM_ENTRY(-4, -26, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB0E8_Frame2[] = {
    4,
    OAM_ENTRY(-4, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-2, -9, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB0E8_Frame3[] = {
    3,
    OAM_ENTRY(-4, -26, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 512, 8, 0),
};

const u16 sTotsumenOam_83BB0E8_Frame4[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB0E8_Frame5[] = {
    4,
    OAM_ENTRY(-18, -19, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x16, 0, 531, 8, 0),
};

const u16 sTotsumenOam_83BB0E8_Frame6[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame1[] = {
    4,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-6, -25, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-9, -17, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame2[] = {
    4,
    OAM_ENTRY(-8, -26, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame3[] = {
    3,
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-24, -19, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame4[] = {
    3,
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame5[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame6[] = {
    4,
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-22, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(6, -8, SPRITE_SIZE_16x8, 0, 564, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame7[] = {
    4,
    OAM_ENTRY(-7, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(13, -8, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u16 sTotsumenOam_83BB158_Frame8[] = {
    4,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(12, -15, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame1[] = {
    3,
    OAM_ENTRY(-3, -9, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-24, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame2[] = {
    2,
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame3[] = {
    2,
    OAM_ENTRY(0, -7, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame4[] = {
    3,
    OAM_ENTRY(-24, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame5[] = {
    3,
    OAM_ENTRY(-2, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB1A0_Frame6[] = {
    3,
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u8 sTotsumenRawData_83BACA0[] = {
    0x01, 0x00, 0xF8, 0x00, 0x00, 0x00, 0x14, 0x82,
};

const u16 sTotsumenOam_83BB1D8_Frame1[] = {
    4,
    OAM_ENTRY(-14, -19, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame2[] = {
    3,
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, 0, 534, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 525, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame3[] = {
    3,
    OAM_ENTRY(5, -21, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 523, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame4[] = {
    3,
    OAM_ENTRY(-3, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame5[] = {
    3,
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame6[] = {
    3,
    OAM_ENTRY(-13, -23, SPRITE_SIZE_16x8, 0, 534, 8, 0),
    OAM_ENTRY(-12, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 525, 8, 0),
};

const u16 sTotsumenOam_83BB1D8_Frame7[] = {
    3,
    OAM_ENTRY(5, -21, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-11, -17, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 523, 8, 0),
};

const u16 sTotsumenOam_83BB278_Frame2[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB3F0_Frame3[] = {
    3,
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-12, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u8 sTotsumenRawData_83BAD62[] = {
    0x03, 0x00, 0xFC, 0x40, 0xF3, 0x21, 0x16, 0x82, 0xEC, 0x40, 0xF2, 0x21, 0x11, 0x82, 0xF0, 0x00,
    0xF8, 0x61, 0x0D, 0x82,
};

const u16 sTotsumenOam_83BB3F0_Frame2[] = {
    4,
    OAM_ENTRY(-13, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u8 sTotsumenRawData_83BAD90[] = {
    0x04, 0x00, 0xFB, 0x40, 0xF3, 0x21, 0x16, 0x82, 0xEF, 0x40, 0xF7, 0x21, 0x11, 0x82, 0xEF, 0x00,
    0xF8, 0x61, 0x0D, 0x82, 0xF1, 0x40, 0xEF, 0x21, 0x11, 0x82,
};

const u16 sTotsumenOam_83BB3F0_Frame1[] = {
    4,
    OAM_ENTRY(-13, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-9, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-17, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u8 sTotsumenRawData_83BADC4[] = {
    0x04, 0x00, 0xFB, 0x40, 0xF4, 0x21, 0x16, 0x82, 0xEC, 0x40, 0xF8, 0x21, 0x11, 0x82, 0xEF, 0x40,
    0xF6, 0xA1, 0x00, 0x82, 0xEE, 0x40, 0xEE, 0x21, 0x11, 0x82, 0x01, 0x00, 0xF8, 0x00, 0x00, 0x00,
    0x14, 0x82,
};

const u16 sTotsumenOam_83BB240_Frame1[] = {
    4,
    OAM_ENTRY(-9, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-3, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-18, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 515, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sTotsumenOam_83BB240_Frame2[] = {
    4,
    OAM_ENTRY(-9, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 515, 8, 0),
    OAM_ENTRY(-13, -24, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
};

const u16 sTotsumenOam_83BB240_Frame3[] = {
    4,
    OAM_ENTRY(-9, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-3, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-18, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 515, 8, 0),
    OAM_ENTRY(-14, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sTotsumenOam_83BB240_Frame4[] = {
    3,
    OAM_ENTRY(-10, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 512, 8, 0),
};

const u16 sTotsumenOam_83BB240_Frame5[] = {
    4,
    OAM_ENTRY(-10, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-2, -27, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sTotsumenOam_83BB240_Frame6[] = {
    4,
    OAM_ENTRY(-10, -4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u8 sTotsumenRawData_83BAE7C[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x14, 0x82,
};

const u16 sTotsumenOam_83BB278_Frame1[] = {
    4,
    OAM_ENTRY(-14, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-9, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-11, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sTotsumenOam_83BB278_Frame3[] = {
    3,
    OAM_ENTRY(-7, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-2, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB278_Frame4[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB278_Frame5[] = {
    3,
    OAM_ENTRY(-13, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB278_Frame6[] = {
    3,
    OAM_ENTRY(-13, -21, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(2, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
};

const u16 sTotsumenOam_83BB2B0_Frame1[] = {
    3,
    OAM_ENTRY(-8, -25, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 525, 8, 0),
};

const u16 sTotsumenOam_83BB2B0_Frame2[] = {
    3,
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB220_Frame2[] = {
    4,
    OAM_ENTRY(-8, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-5, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB220_Frame1[] = {
    4,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB2B0_Frame3[] = {
    4,
    OAM_ENTRY(-6, -26, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB2B0_Frame4[] = {
    4,
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB2E8_Frame1[] = {
    4,
    OAM_ENTRY(-4, -26, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB2E8_Frame2[] = {
    4,
    OAM_ENTRY(-4, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-2, -9, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const u16 sTotsumenOam_83BB2E8_Frame3[] = {
    4,
    OAM_ENTRY(2, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(-18, -18, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB308_Frame1[] = {
    4,
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_8x16, 0, 531, 8, 0),
};

const u16 sTotsumenOam_83BB308_Frame2[] = {
    4,
    OAM_ENTRY(-5, -28, SPRITE_SIZE_8x8, 0, 567, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-18, -20, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-18, -11, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB308_Frame3[] = {
    4,
    OAM_ENTRY(-4, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-17, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB308_Frame4[] = {
    4,
    OAM_ENTRY(-4, -25, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-2, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB360_Frame1[] = {
    4,
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-9, -19, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u16 sTotsumenOam_83BB360_Frame2[] = {
    4,
    OAM_ENTRY(-7, -25, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 529, 8, 0),
};

const u8 sTotsumenRawData_83BB068[] = {
    0x03, 0x00, 0xF0, 0x00, 0x07, 0x00, 0x15, 0x82, 0xF2, 0x80, 0xF6, 0x01, 0x13, 0x82, 0xF0, 0x00,
    0xF9, 0x41, 0x0B, 0x82, 0x04, 0x00, 0xF9, 0x00, 0xF8, 0x21, 0x36, 0x82, 0xE6, 0x40, 0xFB, 0x21,
    0x11, 0x82, 0xEA, 0x00, 0xF8, 0x61, 0x0D, 0x82, 0xE7, 0x40, 0xF2, 0x21, 0x11, 0x82,
};

const u16 sTotsumenOam_83BB388_Frame1[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 536, 8, 0),
};

const u16 sTotsumenOam_83BB3A8_Frame1[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sTotsumenOam_83BB3F0_Frame4[] = {
    3,
    OAM_ENTRY(5, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -17, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sTotsumenOam_83BB3F0_Frame5[] = {
    3,
    OAM_ENTRY(-3, -23, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
};

const u16 sTotsumenOam_83BB220_Frame3[] = {
    4,
    OAM_ENTRY(-8, -27, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_8x8, 0, 528, 8, 0),
};

const struct AnimationFrame sTotsumenOam_83BB0E8[] = {
    {sTotsumenOam_83BB0E8_Frame1, 7},
    {sTotsumenOam_83BB0E8_Frame2, 7},
    {sTotsumenOam_83BB0E8_Frame3, 7},
    {sTotsumenOam_83BB0E8_Frame4, 7},
    {sTotsumenOam_83BB0E8_Frame5, 7},
    {sTotsumenOam_83BB0E8_Frame6, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB120[] = {
    {sTotsumenOam_83BB0E8_Frame1, 4},
    {sTotsumenOam_83BB0E8_Frame2, 4},
    {sTotsumenOam_83BB0E8_Frame3, 4},
    {sTotsumenOam_83BB0E8_Frame4, 4},
    {sTotsumenOam_83BB0E8_Frame5, 4},
    {sTotsumenOam_83BB0E8_Frame6, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB158[] = {
    {sTotsumenOam_83BB158_Frame1, 7},
    {sTotsumenOam_83BB158_Frame2, 7},
    {sTotsumenOam_83BB158_Frame3, 7},
    {sTotsumenOam_83BB158_Frame4, 7},
    {sTotsumenOam_83BB158_Frame5, 7},
    {sTotsumenOam_83BB158_Frame6, 7},
    {sTotsumenOam_83BB158_Frame7, 7},
    {sTotsumenOam_83BB158_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB1A0[] = {
    {sTotsumenOam_83BB1A0_Frame1, 3},
    {sTotsumenOam_83BB1A0_Frame2, 3},
    {sTotsumenOam_83BB1A0_Frame3, 3},
    {sTotsumenOam_83BB1A0_Frame4, 3},
    {sTotsumenOam_83BB1A0_Frame5, 3},
    {sTotsumenOam_83BB1A0_Frame6, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB1D8[] = {
    {sTotsumenOam_83BB1D8_Frame1, 3},
    {sTotsumenOam_83BB1D8_Frame2, 2},
    {sTotsumenOam_83BB1D8_Frame3, 3},
    {sTotsumenOam_83BB1D8_Frame4, 3},
    {sTotsumenOam_83BB1D8_Frame5, 3},
    {sTotsumenOam_83BB1D8_Frame6, 4},
    {sTotsumenOam_83BB1D8_Frame7, 4},
    {sTotsumenOam_83BB1D8_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB220[] = {
    {sTotsumenOam_83BB220_Frame1, 3},
    {sTotsumenOam_83BB220_Frame2, 2},
    {sTotsumenOam_83BB220_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB240[] = {
    {sTotsumenOam_83BB240_Frame1, 5},
    {sTotsumenOam_83BB240_Frame2, 5},
    {sTotsumenOam_83BB240_Frame3, 5},
    {sTotsumenOam_83BB240_Frame4, 5},
    {sTotsumenOam_83BB240_Frame5, 5},
    {sTotsumenOam_83BB240_Frame6, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB278[] = {
    {sTotsumenOam_83BB278_Frame1, 7},
    {sTotsumenOam_83BB278_Frame2, 7},
    {sTotsumenOam_83BB278_Frame3, 7},
    {sTotsumenOam_83BB278_Frame4, 7},
    {sTotsumenOam_83BB278_Frame5, 7},
    {sTotsumenOam_83BB278_Frame6, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB2B0[] = {
    {sTotsumenOam_83BB2B0_Frame1, 7},
    {sTotsumenOam_83BB2B0_Frame2, 7},
    {sTotsumenOam_83BB220_Frame2, 7},
    {sTotsumenOam_83BB220_Frame1, 7},
    {sTotsumenOam_83BB2B0_Frame3, 7},
    {sTotsumenOam_83BB2B0_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB2E8[] = {
    {sTotsumenOam_83BB2E8_Frame1, 4},
    {sTotsumenOam_83BB2E8_Frame2, 4},
    {sTotsumenOam_83BB2E8_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB308[] = {
    {sTotsumenOam_83BB308_Frame1, 4},
    {sTotsumenOam_83BB308_Frame2, 4},
    {sTotsumenOam_83BB308_Frame3, 4},
    {sTotsumenOam_83BB308_Frame4, 4},
    ANIMATION_TERMINATOR
};

const u8 sTotsumenRawData_83BB330[] = {
    0x34, 0xB0, 0x3B, 0x08, 0x06, 0x00, 0x00, 0x00, 0x90, 0xAB, 0x3B, 0x08, 0x06, 0x00, 0x00, 0x00,
    0x68, 0xB0, 0x3B, 0x08, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x7C, 0xB0, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sTotsumenOam_83BB360[] = {
    {sTotsumenOam_83BB360_Frame1, 5},
    {sTotsumenOam_83BB360_Frame2, 50},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB378[] = {
    {sTotsumenOam_83BB360_Frame2, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB388[] = {
    {sTotsumenOam_83BB1A0_Frame4, 1},
    {sTotsumenOam_83BB1D8_Frame1, 2},
    {sTotsumenOam_83BB388_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB3A8[] = {
    {sTotsumenOam_83BB240_Frame1, 2},
    {sTotsumenOam_83BB3A8_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB3C0[] = {
    {sTotsumenOam_83BB1A0_Frame4, 3},
    {sTotsumenOam_83BB1A0_Frame3, 4},
    {sTotsumenOam_83BB1A0_Frame2, 5},
    {sTotsumenOam_83BB220_Frame1, 8},
    {sTotsumenOam_83BB158_Frame2, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTotsumenOam_83BB3F0[] = {
    {sTotsumenOam_83BB3F0_Frame1, 2},
    {sTotsumenOam_83BB3F0_Frame2, 3},
    {sTotsumenOam_83BB278_Frame6, 6},
    {sTotsumenOam_83BB3F0_Frame3, 6},
    {sTotsumenOam_83BB3F0_Frame4, 6},
    {sTotsumenOam_83BB3F0_Frame5, 6},
    {sTotsumenOam_83BB278_Frame6, 6},
    {sTotsumenOam_83BB3F0_Frame3, 6},
    {sTotsumenOam_83BB3F0_Frame4, 6},
    {sTotsumenOam_83BB3F0_Frame5, 6},
    {sTotsumenOam_83BB278_Frame6, 6},
    {sTotsumenOam_83BB3F0_Frame3, 6},
    {sTotsumenOam_83BB3F0_Frame4, 6},
    {sTotsumenOam_83BB3F0_Frame5, 6},
    {sTotsumenOam_83BB278_Frame6, 6},
    {sTotsumenOam_83BB3F0_Frame3, 6},
    {sTotsumenOam_83BB3F0_Frame4, 200},
    ANIMATION_TERMINATOR
};

void func_8032320(void)
{
    gCurrentSprite.warioCollision = 33;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    gCurrentSprite.pOamData = sTotsumenOam_83BB0E8;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work1 = 42;
    SpriteUtilTurnTowardWario();
}

void func_803238C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB0E8;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.warioCollision = 33;
    gCurrentSprite.work1 = 42;
}

void func_80323B0(void)
{
    u32 near;

    near = SpriteUtilWaitCheckWarioNearbyLeftRight(56, 320);
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
        if (near == NS_RIGHT) {
            gCurrentSprite.pose = 110;
            return;
        }
        if (near == NS_LEFT) {
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
    } else if (gUnk_3000A50 != 0) {
        if (near == NS_LEFT) {
            gCurrentSprite.pose = 110;
            return;
        }
        if (near == NS_RIGHT) {
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

void func_80324FC(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB2E8;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 13;
    gCurrentSprite.warioCollision = 33;
}

void func_8032524(void)
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
                gCurrentSprite.pOamData = sTotsumenOam_83BB308;
                gCurrentSprite.currentAnimationFrame = 0;
                gCurrentSprite.animationTimer = 0;
                gCurrentSprite.pose = 20;
                gCurrentSprite.work0 = 16;
            } else {
                gCurrentSprite.pOamData = sTotsumenOam_83BB0E8;
                gCurrentSprite.currentAnimationFrame = 0;
                gCurrentSprite.animationTimer = 0;
                gCurrentSprite.pose = 16;
                gCurrentSprite.warioCollision = 33;
            }
        }
    }
}

void func_80325A4(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5)
        gCurrentSprite.warioCollision = 5;
}

void func_80325DC(void)
{
    gCurrentSprite.pose = 52;
    func_80325A4();
}

void func_80325F0(void)
{
    gCurrentSprite.pose = 54;
    func_80325A4();
}

void func_8032604(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB158;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 57;
    gCurrentSprite.warioCollision = 33;
}

void func_803262C(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 next asm("r2");
    u8 timer;
    register u32 check asm("r0");

    sprite = &gCurrentSprite;
    {
        register u8 *work0 asm("r1");
        register u32 old asm("r0");
        work0 = &sprite->work0;
        old = *work0;
        next = old - 1;
        *work0 = next;
    }
    timer = next;
    /* Keep next live through the byte conversion so agbcc assigns timer to r1. This emits no instructions. */
    asm("" : : "r"(next));
    if (timer != 0) {
        /* Force the comparison copy through r0; the empty constraint itself emits no instructions. */
        asm("" : "=r"(check) : "0"(timer));
        if (check == 42)
            sprite->warioCollision = 3;
        func_80238A4();
        func_8023B88();
        if (gUnk_3000A50 == 0)
            sprite->pose = 27;
    } else {
        sprite->pOamData = sTotsumenOam_83BB1A0;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 113;
        m4aSongNumStart(SE_TOTSUMEN_CHARGE);
    }
}

void func_8032688(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(gCurrentSprite.yPosition,
            gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if ((gUnk_3000A51 & 0xF0) == 0) {
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
        if ((gUnk_3000A51 & 0xF0) == 0) {
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

void func_80327CC(void)
{
    if (gCurrentSprite.warioCollision == 3) {
        gCurrentSprite.pOamData = sTotsumenOam_83BB240;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.warioCollision = 5;
    }
    m4aSongNumStart(SE_TOTSUMEN_IMPACT);
}

void func_80327F8(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB1D8;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 115;
    gCurrentSprite.work0 = 0;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.work3 = 0;
}

void func_8032824(void)
{
    u32 yPosition;

    gCurrentSprite.work0++;
    SpriteUtilLookupGravity(sUnk_83BB480);

    if (gCurrentSprite.work0 > 16) {
        yPosition = func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1)
            gCurrentSprite.status |= SPRITE_STATUS_UNDERWATER;
        if (gUnk_3000A50 != 0) {
            gCurrentSprite.yPosition = yPosition;
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 54;
            else
                gCurrentSprite.pose = 52;

            gCurrentSprite.pOamData = sTotsumenOam_83BB240;
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

void func_8032960(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB378;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.warioCollision = 33;
}

void func_8032988(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB278;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 26;
    gCurrentSprite.work0 = 84;
}

void func_80329AC(void)
{
    register u32 timer asm("r2");
    register u32 original asm("r3");

    timer = gCurrentSprite.work0;
    original = timer;
    if ((u8)(timer - 28) > 28) {
        func_8023CD8();
    } else {
        if (timer == 56 || timer == 49) {
            gCurrentSprite.yPosition -= 32;
        } else if (timer == 42) {
            gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
            gCurrentSprite.pOamData = sTotsumenOam_83BB2B0;
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
}

void func_8032A24(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB120;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 28;
    gCurrentSprite.work3 = 0;
}

void func_8032A44(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 30;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8032A6C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB3F0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status = (gCurrentSprite.status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void func_8032AE4(void)
{
    gCurrentSprite.pose = 32;
    func_8032A6C();
}

void func_8032AF8(void)
{
    gCurrentSprite.pose = 34;
    func_8032A6C();
}

void func_8032B0C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB3F0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void func_8032B70(void)
{
    gCurrentSprite.pose = 32;
    func_8032B0C();
}

void func_8032B84(void)
{
    gCurrentSprite.pose = 34;
    func_8032B0C();
}

void func_8032B98(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB360;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioCollision = 1;
}

void func_8032BCC(void)
{
    gCurrentSprite.pose = 36;
    func_8032B98();
}

void func_8032BE0(void)
{
    gCurrentSprite.pose = 38;
    func_8032B98();
}

void func_8032BF4(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB3C0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void func_8032C24(void)
{
    gCurrentSprite.pose = 40;
    func_8032BF4();
}

void func_8032C38(void)
{
    gCurrentSprite.pose = 42;
    func_8032BF4();
}

void func_8032C4C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8032C70(void)
{
    gCurrentSprite.pose = 44;
    func_8032C4C();
}

void func_8032C84(void)
{
    gCurrentSprite.pose = 46;
    func_8032C4C();
}

void func_8032C98(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sTotsumenOam_83BB3A8;
        gCurrentSprite.work0 = 7;
    } else {
        gCurrentSprite.pOamData = sTotsumenOam_83BB388;
        gCurrentSprite.work0 = 8;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.status = (gCurrentSprite.status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}
void func_8032D14(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void func_8032D4C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8032D78(void)
{
    gCurrentSprite.pose = 72;
    func_8032D4C();
}

void func_8032D8C(void)
{
    gCurrentSprite.pose = 74;
    func_8032D4C();
}

void func_8032DA0(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB220;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 76;
    gCurrentSprite.work0 = 19;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 33;
}

void func_8032DD0(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp, gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = 29;
        } else {
            SpriteUtilLookupGravity(sUnk_8352B18);
        }
    } else {
        gCurrentSprite.pose = 27;
    }
}

void func_8032E5C(void)
{
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8032E74(void)
{
    gCurrentSprite.pose = 82;
    func_8032E5C();
}

void func_8032E88(void)
{
    gCurrentSprite.pose = 84;
    func_8032E5C();
}

void func_8032E9C(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sTotsumenOam_83BB240;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8032EB8(void)
{
    gCurrentSprite.pose = 88;
    func_8032E9C();
}

void func_8032ECC(void)
{
    gCurrentSprite.pose = 86;
    func_8032E9C();
}

void SpriteTotsumen(void)
{
    register struct PrimarySpriteData *sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_UNDERWATER)
        sprite->pose = 107;

    switch (sprite->pose) {
        case 0:
            func_8032320();
            break;
        case 15:
            func_803238C();
        case 16:
            func_80323B0();
            break;
        case 17:
            func_80324FC();
        case 18:
        case 20:
            func_8032524();
            break;
        case 110:
            func_8032604();
        case 111:
            func_803262C();
            break;
        case 113:
            func_8032688();
            break;
        case 114:
            func_80327F8();
        case 115:
            func_8032824();
            break;
        case 23:
            func_8032960();
        case 24:
            func_8023C94();
            break;
        case 25:
            func_8032988();
        case 26:
            func_80329AC();
            break;
        case 27:
            func_8032A24();
        case 28:
            func_8023D48();
            break;
        case 29:
            func_8032A44();
        case 30:
            func_8023EE0();
            break;
        case 31:
        case 79:
            func_8032AE4();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
        case 80:
            func_8032AF8();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 35:
            func_8032BCC();
        case 36:
            SpriteUtilPushedRight();
            break;
        case 37:
            func_8032BE0();
        case 38:
            SpriteUtilPushedLeft();
            break;
        case 39:
            func_8032C24();
        case 40:
            SpriteUtilPushedRight();
            func_80238E8();
            break;
        case 41:
            func_8032C38();
        case 42:
            SpriteUtilPushedLeft();
            func_80238E8();
            break;
        case 43:
            func_8032C70();
        case 44:
            func_8024478();
            break;
        case 45:
            func_8032C84();
        case 46:
            func_802449C();
            break;
        case 47:
            func_80244C0();
        case 48:
            func_80244E0();
            break;
        case 49:
            func_8032C98();
        case 50:
            SpriteUtilDieAfterDelay();
            break;
        case 51:
            func_80325DC();
            goto call_8024988;
        case 53:
            func_80325F0();
            goto call_802476C;
        case 55:
            func_80327CC();
            func_8024688();
        case 56:
            func_80246B8();
            break;
        case 57:
            func_80327CC();
            func_802473C();
        case 54:
        case 58:
call_802476C:
            func_802476C();
            break;
        case 59:
            func_80327CC();
            func_80247F0();
        case 60:
            func_8024820();
            break;
        case 61:
            func_80327CC();
            func_80248A4();
        case 62:
            func_80248D4();
            break;
        case 63:
            func_80327CC();
            func_8024958();
        case 52:
        case 64:
call_8024988:
            func_8024988();
            break;
        case 65:
            func_80327CC();
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
            func_8032D78();
        case 68:
        case 72:
call_8024AD4:
            func_8024AD4();
            break;
        case 73:
            func_8032D8C();
        case 70:
        case 74:
call_8024C00:
            func_8024C00();
            break;
        case 75:
            func_8032DA0();
        case 76:
            func_8032DD0();
            break;
        case 81:
            func_8032E74();
            break;
        case 82:
            SpriteUtilLiftingSpriteRight();
            break;
        case 83:
            func_8032E88();
            break;
        case 84:
            SpriteUtilLiftingSpriteLeft();
            break;
        case 87:
            func_8032EB8();
            break;
        case 88:
            SpriteUtilCarryingSpriteRight();
            break;
        case 85:
            func_8032ECC();
            break;
        case 86:
            SpriteUtilCarryingSpriteLeft();
            break;
        case 89:
            sprite->pose = 90;
        case 90:
            SpriteUtilThrownLeftSoft();
            break;
        case 93:
            sprite->pose = 94;
        case 94:
            SpriteUtilThrownLeftHard();
            break;
        case 97:
            sprite->pose = 98;
        case 98:
            SpriteUtilThrownUpLeftSoft();
            break;
        case 101:
            sprite->pose = 102;
        case 102:
            SpriteUtilThrownUpLeftHard();
            break;
        case 91:
            sprite->pose = 92;
        case 92:
            SpriteUtilThrownRightSoft();
            break;
        case 95:
            sprite->pose = 96;
        case 96:
            SpriteUtilThrownRightHard();
            break;
        case 99:
            sprite->pose = 100;
        case 100:
            SpriteUtilThrownUpRightSoft();
            break;
        case 103:
            sprite->pose = 104;
        case 104:
            SpriteUtilThrownUpRightHard();
            break;
        case 105:
            func_8032B84();
            break;
        case 106:
            func_8032B70();
            break;
        default:
            func_8032D14();
            break;
    }
}

