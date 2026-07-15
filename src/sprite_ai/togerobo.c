#include "sprite_ai/togerobo.h"

#include "global_data.h"
#include "fixed_point.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sTogeroboOam_83BD01C_Frame2[] = {
    3,
    OAM_ENTRY(-22, -22, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sTogeroboOam_83BD1AC_Frame1[] = {
    4,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 518, 8, 0),
};

const u16 sTogeroboOam_83BD1AC_Frame2[] = {
    3,
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -7, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 548, 8, 0),
};

const u16 sTogeroboOam_83BD1AC_Frame3[] = {
    4,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 550, 8, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame1[] = {
    3,
    OAM_ENTRY(-22, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame2[] = {
    4,
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-22, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
};

const u16 sTogeroboOam_83BD01C_Frame1[] = {
    3,
    OAM_ENTRY(-23, -24, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-23, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 514, 8, 0),
};

const u16 sTogeroboOam_83BD164_Frame1[] = {
    4,
    OAM_ENTRY(-7, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-23, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-23, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 546, 8, 0),
};

const u16 sTogeroboOam_83BD0CC_Frame1[] = {
    6,
    OAM_ENTRY(-14, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-22, -20, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-2, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-2, -21, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 546, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
};

const u16 sTogeroboOam_83BD0CC_Frame2[] = {
    5,
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 546, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
    OAM_ENTRY(-1, -15, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-23, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 527, 8, 0),
};

const u8 sTogeroboRawData_83BC9F2[] = {
    0x03, 0x00, 0xEA, 0x40, 0xF6, 0x81, 0x40, 0x82, 0xFA, 0x40, 0xF6, 0x41, 0x46, 0x82, 0xF8, 0x40,
    0xF8, 0x01, 0x04, 0x82, 0x01, 0x00, 0xF7, 0x00, 0xF8, 0x41, 0x4F, 0x92,
};

const u16 sTogeroboOam_83BCEB4_Frame3[] = {
    4,
    OAM_ENTRY(-22, -22, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 591, 9, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame4[] = {
    5,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-8, -34, SPRITE_SIZE_16x16, 0, 591, 9, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame5[] = {
    5,
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -29, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -7, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 591, 9, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame6[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-8, -29, SPRITE_SIZE_16x16, 0, 591, 9, 0),
};

const u16 sTogeroboOam_83BCEB4_Frame7[] = {
    5,
    OAM_ENTRY(-22, -22, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -29, SPRITE_SIZE_16x16, 0, 589, 9, 0),
};

const u16 sTogeroboOam_83BCEFC_Frame1[] = {
    7,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-16, -37, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCEFC_Frame2[] = {
    6,
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -29, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -7, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -38, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-16, -22, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCEFC_Frame3[] = {
    7,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-22, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 580, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-16, -37, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCF94_Frame1[] = {
    3,
    OAM_ENTRY(-13, -24, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 585, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 614, 8, 0),
    OAM_ENTRY(-16, -36, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 595, 9, 0),
};

const u16 sTogeroboOam_83BCFAC_Frame1[] = {
    4,
    OAM_ENTRY(-4, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 8, 0),
    OAM_ENTRY(-12, -23, SPRITE_SIZE_16x16, 0, 599, 8, 0),
    OAM_ENTRY(-8, -36, SPRITE_SIZE_16x16, 0, 593, 9, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 536, 8, 0),
};

const u8 sTogeroboRawData_83BCB5A[] = {
    0x06, 0x00, 0xEA, 0x40, 0xEB, 0x91, 0x40, 0x82, 0xE4, 0x00, 0xF8, 0x11, 0x38, 0x92, 0xFA, 0x40,
    0xEB, 0x51, 0x46, 0x82, 0xF8, 0x40, 0xF9, 0x11, 0x04, 0x82, 0xDA, 0x40, 0xF0, 0x91, 0x1C, 0x92,
    0xEA, 0x40, 0xF0, 0x51, 0x5C, 0x92,
};

const u16 sTogeroboOam_83BD0EC_Frame1[] = {
    3,
    OAM_ENTRY(-22, -15, SPRITE_SIZE_32x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 516, 8, 0),
};

const u8 sTogeroboRawData_83BCB94[] = {
    0x04, 0x00, 0xF1, 0x00, 0xFA, 0x71, 0x40, 0x82, 0xF1, 0x00, 0xEA, 0x71, 0x44, 0x82, 0xE9, 0x40,
    0xEA, 0x71, 0x46, 0x82, 0xEB, 0x40, 0xF8, 0x31, 0x06, 0x82, 0x03, 0x00, 0xF0, 0x40, 0xEA, 0xB1,
    0x40, 0x82, 0xE8, 0x40, 0xEA, 0x71, 0x46, 0x82, 0xE9, 0x40, 0xF8, 0x31, 0x24, 0x82, 0x04, 0x00,
    0xF1, 0x00, 0xFA, 0x71, 0x40, 0x82, 0xF1, 0x00, 0xEA, 0x71, 0x44, 0x82, 0xE9, 0x40, 0xEA, 0x71,
    0x46, 0x82, 0xEB, 0x40, 0xF8, 0x31, 0x26, 0x82,
};

const u16 sTogeroboOam_83BCFD4_Frame1[] = {
    1,
    OAM_ENTRY(-16, -28, SPRITE_SIZE_32x32, 0, 540, 9, 0),
};

const u16 sTogeroboOam_83BCFD4_Frame2[] = {
    3,
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, 0, 538, 9, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 538, 9, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_32x32, 0, 540, 9, 0),
};

const u16 sTogeroboOam_83BCFD4_Frame3[] = {
    6,
    OAM_ENTRY(-16, -28, SPRITE_SIZE_8x32, 0, 540, 9, 0),
    OAM_ENTRY(8, -28, SPRITE_SIZE_8x32, 0, 543, 9, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x8, 0, 637, 9, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_16x8, 0, 541, 9, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, 0, 538, 9, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 538, 9, 0),
};

const u16 sTogeroboOam_83BCFD4_Frame4[] = {
    4,
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, 0, 570, 9, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 570, 9, 0),
    OAM_ENTRY(-19, -28, SPRITE_SIZE_8x32, 0, 540, 9, 0),
    OAM_ENTRY(11, -28, SPRITE_SIZE_8x32, 0, 543, 9, 0),
};

const u16 sTogeroboOam_83BCFD4_Frame5[] = {
    2,
    OAM_ENTRY(0, -20, SPRITE_SIZE_8x16, 0, 603, 9, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 603, 9, 0),
};

const u16 sTogeroboOam_83BCFD4_Frame6[] = {
    3,
    OAM_ENTRY(1, -21, SPRITE_SIZE_8x8, 0, 603, 9, 0),
    OAM_ENTRY(1, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 603, 9, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 635, 9, 0),
};

const u8 sTogeroboRawData_83BCC5A[] = {
    0x04, 0x00, 0xEC, 0x00, 0xFA, 0x71, 0x08, 0x82, 0xEC, 0x00, 0xEA, 0x71, 0x0C, 0x82, 0xFC, 0x40,
    0xEA, 0x71, 0x14, 0x82, 0xEC, 0x40, 0xFA, 0x31, 0x20, 0x82, 0x03, 0x00, 0xF4, 0x40, 0xEA, 0xB1,
    0x0E, 0x82, 0xEC, 0x40, 0xEA, 0x71, 0x34, 0x82, 0xEC, 0x40, 0xF5, 0x31, 0x02, 0x82, 0x01, 0x00,
    0xF8, 0x00, 0xF8, 0x41, 0x4D, 0x92,
};

const u16 sTogeroboOam_83BCEB4_Frame8[] = {
    6,
    OAM_ENTRY(-22, -22, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-16, -37, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCF4C_Frame1[] = {
    6,
    OAM_ENTRY(-22, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-11, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-19, -37, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-19, -21, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCF4C_Frame2[] = {
    7,
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-22, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
    OAM_ENTRY(-11, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-19, -37, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-19, -21, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCF4C_Frame3[] = {
    6,
    OAM_ENTRY(-23, -24, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-23, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-9, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-17, -39, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-17, -23, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BCF4C_Frame4[] = {
    7,
    OAM_ENTRY(-7, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-23, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-23, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 546, 8, 0),
    OAM_ENTRY(-9, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-17, -39, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-17, -23, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BD09C_Frame2[] = {
    3,
    OAM_ENTRY(-22, -20, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -4, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sTogeroboOam_83BD14C_Frame1[] = {
    6,
    OAM_ENTRY(-22, -20, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -4, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -25, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 9, 0),
    OAM_ENTRY(-16, -34, SPRITE_SIZE_32x16, 0, 540, 9, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_32x8, 0, 604, 9, 0),
};

const u16 sTogeroboOam_83BD0EC_Frame2[] = {
    6,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-22, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-2, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(-2, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-4, -19, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 546, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sTogeroboOam_83BD0EC_Frame3[] = {
    6,
    OAM_ENTRY(-3, -14, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 546, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 544, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-22, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sTogeroboOam_83BD04C_Frame1[] = {
    4,
    OAM_ENTRY(-12, -15, SPRITE_SIZE_8x16, 0, 601, 8, 0),
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-6, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 576, 8, 0),
};

const u16 sTogeroboOam_83BD04C_Frame2[] = {
    4,
    OAM_ENTRY(-12, -15, SPRITE_SIZE_8x16, 0, 601, 8, 0),
    OAM_ENTRY(-6, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
};

const u16 sTogeroboOam_83BD04C_Frame3[] = {
    4,
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x16, 0, 601, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 548, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 576, 8, 0),
};

const u16 sTogeroboOam_83BD04C_Frame4[] = {
    4,
    OAM_ENTRY(-12, -15, SPRITE_SIZE_8x16, 0, 601, 8, 0),
    OAM_ENTRY(-6, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 576, 8, 0),
    OAM_ENTRY(-22, -23, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 582, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 550, 8, 0),
};

const u16 sTogeroboOam_83BD074_Frame2[] = {
    5,
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(-6, -4, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-14, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 602, 8, 0),
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sTogeroboOam_83BD074_Frame1[] = {
    6,
    OAM_ENTRY(-6, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 566, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 602, 8, 0),
    OAM_ENTRY(-22, -20, SPRITE_SIZE_32x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 564, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 514, 8, 0),
};

const u16 sTogeroboOam_83BD09C_Frame1[] = {
    6,
    OAM_ENTRY(-7, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
    OAM_ENTRY(-15, -23, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 602, 8, 0),
    OAM_ENTRY(-23, -8, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 514, 8, 0),
};

const struct AnimationFrame sTogeroboOam_83BCEB4[] = {
    {sTogeroboOam_83BCEB4_Frame1, 4},
    {sTogeroboOam_83BCEB4_Frame2, 4},
    {sTogeroboOam_83BCEB4_Frame3, 5},
    {sTogeroboOam_83BCEB4_Frame4, 5},
    {sTogeroboOam_83BCEB4_Frame5, 5},
    {sTogeroboOam_83BCEB4_Frame6, 5},
    {sTogeroboOam_83BCEB4_Frame7, 10},
    {sTogeroboOam_83BCEB4_Frame8, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCEFC[] = {
    {sTogeroboOam_83BCEB4_Frame8, 7},
    {sTogeroboOam_83BCEFC_Frame1, 7},
    {sTogeroboOam_83BCEFC_Frame2, 7},
    {sTogeroboOam_83BCEFC_Frame3, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCF24[] = {
    {sTogeroboOam_83BCEB4_Frame8, 4},
    {sTogeroboOam_83BCEFC_Frame1, 4},
    {sTogeroboOam_83BCEFC_Frame2, 4},
    {sTogeroboOam_83BCEFC_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCF4C[] = {
    {sTogeroboOam_83BCEB4_Frame8, 12},
    {sTogeroboOam_83BCF4C_Frame1, 7},
    {sTogeroboOam_83BCF4C_Frame2, 7},
    {sTogeroboOam_83BCEB4_Frame8, 7},
    {sTogeroboOam_83BCF4C_Frame3, 7},
    {sTogeroboOam_83BCF4C_Frame4, 7},
    {sTogeroboOam_83BCF4C_Frame3, 7},
    {sTogeroboOam_83BCF4C_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCF94[] = {
    {sTogeroboOam_83BCEB4_Frame8, 5},
    {sTogeroboOam_83BCF94_Frame1, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCFAC[] = {
    {sTogeroboOam_83BCFAC_Frame1, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCFBC[] = {
    {sTogeroboOam_83BCF94_Frame1, 5},
    {sTogeroboOam_83BCEB4_Frame8, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BCFD4[] = {
    {sTogeroboOam_83BCFD4_Frame1, 2},
    {sTogeroboOam_83BCFD4_Frame2, 3},
    {sTogeroboOam_83BCFD4_Frame3, 2},
    {sTogeroboOam_83BCFD4_Frame4, 3},
    {sTogeroboOam_83BCFD4_Frame5, 3},
    {sTogeroboOam_83BCFD4_Frame6, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD00C[] = {
    {sTogeroboOam_83BCFD4_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD01C[] = {
    {sTogeroboOam_83BCEB4_Frame8, 4},
    {sTogeroboOam_83BCF4C_Frame1, 5},
    {sTogeroboOam_83BCF4C_Frame2, 5},
    {sTogeroboOam_83BD01C_Frame1, 12},
    {sTogeroboOam_83BD01C_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD04C[] = {
    {sTogeroboOam_83BD04C_Frame1, 7},
    {sTogeroboOam_83BD04C_Frame2, 7},
    {sTogeroboOam_83BD04C_Frame3, 7},
    {sTogeroboOam_83BD04C_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD074[] = {
    {sTogeroboOam_83BD074_Frame1, 5},
    {sTogeroboOam_83BD074_Frame2, 5},
    {sTogeroboOam_83BD074_Frame1, 5},
    {sTogeroboOam_83BD074_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD09C[] = {
    {sTogeroboOam_83BD09C_Frame1, 2},
    {sTogeroboOam_83BD01C_Frame1, 5},
    {sTogeroboOam_83BCEB4_Frame2, 5},
    {sTogeroboOam_83BD01C_Frame2, 5},
    {sTogeroboOam_83BD09C_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD0CC[] = {
    {sTogeroboOam_83BD01C_Frame2, 2},
    {sTogeroboOam_83BD0CC_Frame1, 3},
    {sTogeroboOam_83BD0CC_Frame2, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD0EC[] = {
    {sTogeroboOam_83BD0EC_Frame1, 2},
    {sTogeroboOam_83BD0EC_Frame2, 3},
    {sTogeroboOam_83BD0EC_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD10C[] = {
    {sTogeroboOam_83BCEB4_Frame1, 5},
    {sTogeroboOam_83BCEB4_Frame2, 200},
    ANIMATION_TERMINATOR
};

const u8 sTogeroboRawData_83BD124[] = {
    0x06, 0xCA, 0x3B, 0x08, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sTogeroboOam_83BD134[] = {
    {sTogeroboOam_83BD01C_Frame2, 4},
    {sTogeroboOam_83BD09C_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD14C[] = {
    {sTogeroboOam_83BCEB4_Frame8, 4},
    {sTogeroboOam_83BD14C_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD164[] = {
    {sTogeroboOam_83BCEB4_Frame1, 6},
    {sTogeroboOam_83BCEB4_Frame2, 6},
    {sTogeroboOam_83BD01C_Frame1, 6},
    {sTogeroboOam_83BD164_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD18C[] = {
    {sTogeroboOam_83BD09C_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD19C[] = {
    {sTogeroboOam_83BD14C_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogeroboOam_83BD1AC[] = {
    {sTogeroboOam_83BD01C_Frame2, 4},
    {sTogeroboOam_83BD1AC_Frame1, 4},
    {sTogeroboOam_83BD1AC_Frame2, 4},
    {sTogeroboOam_83BD1AC_Frame3, 4},
    ANIMATION_TERMINATOR
};

void func_8035668(void)
{
    u32 facing;

    facing = gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT;
    if (facing) {
        func_801E3A8(PSPRITE_9C, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
            gCurrentSprite.yPosition - 60, gCurrentSprite.xPosition + 32,
            SPRITE_STATUS_FACING_RIGHT);
    } else {
        func_801E3A8(PSPRITE_9C, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
            gCurrentSprite.yPosition - 60, gCurrentSprite.xPosition - 32, facing);
    }
}

void func_80356BC(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 32;
        gCurrentSprite.hitboxExtentRight = 48;
    } else {
        gCurrentSprite.hitboxExtentLeft = 52;
        gCurrentSprite.hitboxExtentRight = 28;
    }
}

void func_80356EC(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BD04C;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    if (gCurrentSprite.health == 2) {
        gCurrentSprite.health = 1;
        gCurrentSprite.hitboxExtentUp = 80;
        func_8035668();
    }
}

void func_803572C(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_HEAVY;
    gCurrentSprite.drawDistanceDown = 36;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 20;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentUp = 112;
    gCurrentSprite.health = 2;
    gCurrentSprite.warioCollision = 37;
    if (gCurrentSprite.xPosition > gWarioData.xPosition)
        gCurrentSprite.status &= ~SPRITE_STATUS_FACING_RIGHT;
    else
        gCurrentSprite.status |= SPRITE_STATUS_FACING_RIGHT;
    func_80356BC();
}

void func_8035790(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BCF4C;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work0 = 62;
    gCurrentSprite.work1 = 50;
}

void func_80357B8(void)
{
    u32 nearby;

    nearby = SpriteUtilWaitCheckWarioNearbyLeftRight(127, 400);
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
            gCurrentSprite.pose = 112;
            return;
        }
        if (gUnk_3000A50 & 0xF0) {
            if (((gCurrentSprite.xPosition & 0x3F) +
                    gCurrentSprite.hitboxExtentRight) > 0x3F) {
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
            gCurrentSprite.pose = 112;
            return;
        }
        if (gUnk_3000A50 & 0xF0) {
            if ((gCurrentSprite.xPosition & 0x3F) <
                gCurrentSprite.hitboxExtentLeft) {
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

    {
        register struct PrimarySpriteData *sprite asm("r2");
        register u8 *work0 asm("r3");
        register u32 next asm("r0");
        register u32 timer asm("r1");

        sprite = &gCurrentSprite;
        work0 = &sprite->work0;
        next = *work0;
        if (next != 0) {
            next -= 1;
            *work0 = next;
            next <<= 24;
            timer = next >> 24;
            if (timer == 0) {
                sprite->pOamData = sTogeroboOam_83BCEFC;
                sprite->currentAnimationFrame = timer;
                sprite->animationTimer = timer;
            } else {
                next = *work0;
                if (next == 55) {
                    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                        sprite->xPosition -= 4;
                    else
                        sprite->xPosition += 4;
                } else if (next == 48) {
                    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                        sprite->xPosition -= 4;
                    else
                        sprite->xPosition += 4;
                } else if (next == 34) {
                    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                        sprite->xPosition += 4;
                    else
                        sprite->xPosition -= 4;
                } else if (next == 20) {
                    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                        sprite->xPosition += 4;
                    else
                        sprite->xPosition -= 4;
                }
            }
        } else {
            func_80263AC();
        }
    }
}

void func_8035978(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BCF94;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 11;
}

void func_8035998(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *work0 asm("r3");
    register u32 next asm("r0");
    register u32 timer asm("r1");

    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = 27;
    } else {
        sprite = &gCurrentSprite;
        work0 = &sprite->work0;
        next = *work0;
        next -= 1;
        *work0 = next;
        next <<= 24;
        timer = next >> 24;
        if (timer == 0) {
            switch (sprite->pose) {
                case 18:
                    sprite->pOamData = sTogeroboOam_83BCFAC;
                    sprite->currentAnimationFrame = timer;
                    sprite->animationTimer = timer;
                    sprite->pose = 20;
                    *work0 = 5;
                    sprite->warioCollision = 33;
                    {
                        register u8 *hitbox asm("r1");
                        hitbox = &sprite->hitboxExtentLeft;
                        *hitbox++ = 28;
                        /* Preserve the required post-increment addressing form. */
                        asm("" : "+r"(hitbox));
                        *hitbox = 24;
                    }
                    break;
                case 20:
                    sprite->pOamData = sTogeroboOam_83BCFBC;
                    sprite->currentAnimationFrame = timer;
                    sprite->animationTimer = timer;
                    sprite->pose = 22;
                    *work0 = 9;
                    sprite->warioCollision = 37;
                    sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
                    func_80356BC();
                    break;
                default:
                    sprite->pose = 15;
                    break;
            }
        }
    }
}

void func_8035A34(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 24;
    if (gCurrentSprite.health == 2)
        gCurrentSprite.pOamData = sTogeroboOam_83BD19C;
    else
        gCurrentSprite.pOamData = sTogeroboOam_83BD18C;
}

void func_8035A64(void)
{
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = 27;
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0) {
            if (gCurrentSprite.health == 2) {
                if (gCurrentSprite.xPosition > gWarioData.xPosition) {
                    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                        gCurrentSprite.pose = 17;
                    else
                        gCurrentSprite.pose = 15;
                } else {
                    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                        gCurrentSprite.pose = 15;
                    else
                        gCurrentSprite.pose = 17;
                }
            } else {
                gCurrentSprite.pose = 110;
            }
        }
    }
}

void func_8035AE0(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BCEB4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 43;
}

void func_8035B00(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *work0 asm("r3");
    register u32 old asm("r0");
    register u32 next asm("r1");
    register u32 check asm("r0");

    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = 27;
    } else {
        sprite = &gCurrentSprite;
        work0 = &sprite->work0;
        old = *work0;
        next = old - 1;
        *work0 = next;
        check = next << 24;
        if (check != 0) {
            check >>= 24;
            if (check == 25) {
                sprite->warioCollision = 37;
                sprite->hitboxExtentUp = 112;
                sprite->health = 2;
            }
        } else {
            sprite->pose = 23;
        }
    }
}

void func_8035B5C(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BD01C;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 113;
    gCurrentSprite.work0 = 100;
    m4aSongNumStart(SE_TOGEROBO_ATTACK_START);
}

void func_8035B88(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *work0 asm("r3");
    register u32 old asm("r0");
    register u32 next asm("r1");
    register u32 check asm("r0");

    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0) {
        gCurrentSprite.pose = 27;
    } else {
        sprite = &gCurrentSprite;
        work0 = &sprite->work0;
        old = *work0;
        next = old - 1;
        *work0 = next;
        check = next << 24;
        if (check != 0) {
            check >>= 24;
            if (check == 86) {
                sprite->health = 1;
                sprite->hitboxExtentUp = 80;
                sprite->warioCollision = 3;
                func_8035668();
            }
        } else {
            sprite->pose = 23;
        }
    }
}

void func_8035BE8(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BD074;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 26;
    gCurrentSprite.work0 = 40;
}

void func_8035C0C(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *work0 asm("r5");
    u8 timer;

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    timer = *work0;
    if (timer > 25) {
        func_8023B88();
        if (gUnk_3000A50 == 0)
            sprite->pose = 29;
        func_80238E8();
        (*work0)--;
    } else if (timer <= 4) {
        func_8023B88();
        if (gUnk_3000A50 == 0) {
            sprite->pose = 27;
        } else {
            register u32 next asm("r0");
            next = *work0;
            next -= 1;
            *work0 = next;
            next <<= 24;
            if (next == 0)
                sprite->pose = 23;
        }
    } else {
        if (timer == 25) {
            sprite->yPosition -= 24;
        } else if (timer == 20) {
            sprite->pOamData = sTogeroboOam_83BD09C;
            sprite->animationTimer = 0;
            sprite->currentAnimationFrame = 0;
            sprite->yPosition -= 24;
            sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
        } else if (timer == 10) {
            sprite->yPosition += 24;
            sprite->warioCollision = 3;
            func_80356BC();
        } else if (timer == 5) {
            sprite->yPosition += 24;
        }
        gCurrentSprite.work0--;
    }
}

void func_8035CD0(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 28;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.health == 2) {
        gCurrentSprite.pOamData = sTogeroboOam_83BCF24;
        gCurrentSprite.warioCollision = 37;
    } else {
        gCurrentSprite.pOamData = sTogeroboOam_83BD1AC;
        gCurrentSprite.warioCollision = 3;
    }
    func_80356BC();
}

void func_8035D10(void)
{
    func_80356EC();
    gCurrentSprite.pose = 30;
    gCurrentSprite.work3 = 0;
}

void func_8035D2C(void)
{
    if (gCurrentSprite.health == 2)
        func_8035668();
    gCurrentSprite.pOamData = sTogeroboOam_83BD164;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 4;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, 20);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32,
        gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void func_8035DAC(void)
{
    gCurrentSprite.pose = 32;
    func_8035D2C();
}

void func_8035DC0(void)
{
    gCurrentSprite.pose = 34;
    func_8035D2C();
}

void func_8035DD4(void)
{
    if (gCurrentSprite.health == 2)
        func_8035668();
    gCurrentSprite.pOamData = sTogeroboOam_83BD164;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 3;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, 20);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32,
        gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void func_8035E40(void)
{
    gCurrentSprite.pose = 32;
    func_8035DD4();
}

void func_8035E54(void)
{
    gCurrentSprite.pose = 34;
    func_8035DD4();
}

void func_8035E68(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 6;
}

void func_8035E90(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pOamData = sTogeroboOam_83BD10C;
        if (gCurrentSprite.health == 2) {
            gCurrentSprite.health = 1;
            gCurrentSprite.hitboxExtentUp = 80;
            gCurrentSprite.warioCollision = 3;
            func_8035668();
        }
    } else if (gCurrentSprite.health == 2) {
        gCurrentSprite.pOamData = sTogeroboOam_83BD14C;
    } else {
        gCurrentSprite.pOamData = sTogeroboOam_83BD134;
    }
    gCurrentSprite.pose = 36;
    func_8035E68();
}

void func_8035EF4(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 3) {
        func_80242C8();
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0)
            gCurrentSprite.pose = 23;
    }
}

void func_8035F28(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if (gCurrentSprite.health == 2)
            gCurrentSprite.pOamData = sTogeroboOam_83BD14C;
        else
            gCurrentSprite.pOamData = sTogeroboOam_83BD134;
    } else {
        gCurrentSprite.pOamData = sTogeroboOam_83BD10C;
        if (gCurrentSprite.health == 2) {
            gCurrentSprite.health = 1;
            gCurrentSprite.hitboxExtentUp = 80;
            gCurrentSprite.warioCollision = 3;
            func_8035668();
        }
    }
    gCurrentSprite.pose = 38;
    func_8035E68();
}

void func_8035F8C(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 3) {
        func_8024180();
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0)
            gCurrentSprite.pose = 23;
    }
}

void func_8035FC0(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 6;
    if (gCurrentSprite.health == 2)
        gCurrentSprite.pOamData = sTogeroboOam_83BD14C;
    else
        gCurrentSprite.pOamData = sTogeroboOam_83BD134;
}

void func_8036000(void)
{
    gCurrentSprite.pose = 40;
    func_8035FC0();
}

void func_8036014(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 3) {
        func_80242C8();
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0) {
            if (gCurrentSprite.health == 2)
                gCurrentSprite.pose = 17;
            else
                gCurrentSprite.pose = 23;
        }
    }
}

void func_8036054(void)
{
    gCurrentSprite.pose = 42;
    func_8035FC0();
}

void func_8036068(void)
{
    func_80238A4();
    if (gCurrentSprite.work2 > 3) {
        func_8024180();
    } else {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0) {
            if (gCurrentSprite.health == 2)
                gCurrentSprite.pose = 17;
            else
                gCurrentSprite.pose = 23;
        }
    }
}

void func_80360A8(void)
{
    func_80356EC();
    gCurrentSprite.work1 = 0;
}

void func_80360C0(void)
{
    gCurrentSprite.pose = 44;
    func_80360A8();
}

void func_80360D4(void)
{
    gCurrentSprite.pose = 46;
    func_80360A8();
}

void func_80360E8(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.work0 = 9;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, 20);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
    if (gCurrentSprite.warioCollision != 5)
        gCurrentSprite.pOamData = sTogeroboOam_83BD0CC;
    else
        gCurrentSprite.pOamData = sTogeroboOam_83BD0EC;
}

void func_803615C(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, 20);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void func_8036194(void)
{
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 6;
    gCurrentSprite.work3 = 0;
    func_80356EC();
}

void func_80361BC(void)
{
    gCurrentSprite.pose = 52;
    func_8036194();
}

void func_80361D0(void)
{
    gCurrentSprite.pose = 54;
    func_8036194();
}

void func_80361E4(void)
{
    gCurrentSprite.work3 = 0;
    gCurrentSprite.work2 = 6;
    func_80356EC();
}

void func_8036204(void)
{
    gCurrentSprite.pose = 72;
    func_80361E4();
}

void func_8036218(void)
{
    gCurrentSprite.pose = 74;
    func_80361E4();
}

void func_803622C(void)
{
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 76;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.health == 2) {
        gCurrentSprite.pOamData = sTogeroboOam_83BD19C;
        gCurrentSprite.warioCollision = 37;
    } else {
        gCurrentSprite.pOamData = sTogeroboOam_83BD18C;
        gCurrentSprite.warioCollision = 3;
    }
    func_80356BC();
}

void func_8036274(void)
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
            velocities = sUnk_8352B2C;
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

void func_8036300(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BD04C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8036318(void)
{
    gCurrentSprite.pose = 82;
    func_8036300();
}

void func_803632C(void)
{
    gCurrentSprite.pose = 84;
    func_8036300();
}

void func_8036340(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sTogeroboOam_83BD04C;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_803635C(void)
{
    gCurrentSprite.pose = 88;
    func_8036340();
}

void func_8036370(void)
{
    gCurrentSprite.pose = 86;
    func_8036340();
}

void func_8036384(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u16 status asm("r2");
    register u32 zeroByte asm("r3");
    register u32 zeroHalf asm("r4");
    u16 oldStatus;

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = 0xA0;
    zeroByte = 0;
    zeroHalf = 0;
    /* Keep the zero halfword in r4 until the animation timer store. */
    asm("" : : "r"(zeroHalf));
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    {
        register u8 *fields asm("r1");
        fields = (u8 *)sprite;
        *(u16 *)fields = status;
        fields += 32;
        *fields++ = 24;
        *fields++ = 2;
        *fields++ = 16;
        *fields++ = 80;
        *fields++ = 140;
        *fields++ = 40;
        /* Preserve the post-increment form required by agbcc for the final extent. */
        asm("" : "+r"(fields));
        *fields = 36;
    }
    {
        register const struct AnimationFrame *oam asm("r0");
        register u8 *fields asm("r1");
        oam = sTogeroboOam_83BD00C;
        fields = (u8 *)sprite;
        *(const struct AnimationFrame **)(fields + 4) = oam;
        fields[22] = zeroByte;
        *(u16 *)(fields + 20) = zeroHalf;
        fields[30] = 9;
        sprite->work1 = zeroByte;
    }
    if (status & SPRITE_STATUS_FACING_RIGHT) {
        sprite->pose = 51;
    } else {
        register u32 pose asm("r0");
        pose = 53;
        sprite->pose = pose;
    }
}

void func_8036400(void)
{
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 6;
    gCurrentSprite.work3 = 0;
}

void func_8036420(void)
{
    gCurrentSprite.pose = 52;
    gCurrentSprite.status |= SPRITE_STATUS_FACING_RIGHT;
    func_8036400();
}

void func_803643C(void)
{
    gCurrentSprite.pose = 54;
    gCurrentSprite.status &= ~SPRITE_STATUS_FACING_RIGHT;
    func_8036400();
}

void func_803645C(void)
{
    gCurrentSprite.pOamData = sTogeroboOam_83BCFD4;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.work0 = 16;
    gCurrentSprite.status &= ~SPRITE_STATUS_AFFINE;
    gCurrentSprite.drawPriority = 1;
    gCurrentSprite.warioCollision = 0;
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    m4aSongNumStart(SE_TOGEROBO_CHILD_DEFEATED);
}

void func_80364A4(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *work0 asm("r2");
    register u32 old asm("r0");
    register u32 next asm("r1");
    register u32 check asm("r0");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    old = *work0;
    next = old - 1;
    *work0 = next;
    check = (u8)next;
    if (check != 0) {
        check = (u8)next;
        if (check <= 7)
            sprite->disableWarioCollisionTimer = 1;
    } else {
        sprite->status = check;
    }
}

void func_80364D0(void)
{
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 4;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32,
        gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void func_8036514(void)
{
    gCurrentSprite.pose = 32;
    func_80364D0();
}

void func_8036528(void)
{
    gCurrentSprite.pose = 34;
    func_80364D0();
}

void SpriteTogerobo(void)
{
    register struct PrimarySpriteData *sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_UNDERWATER)
        sprite->pose = 107;

    switch (sprite->pose) {
        case 0:
            func_803572C();
            func_8035790();
            break;
        case 15:
            func_8035790();
        case 16:
            func_80357B8();
            break;
        case 17:
            func_8035978();
        case 18:
        case 20:
        case 22:
            func_8035998();
            break;
        case 23:
            func_8035A34();
        case 24:
            func_8035A64();
            break;
        case 25:
            func_8035BE8();
        case 26:
            func_8035C0C();
            break;
        case 27:
            func_8035CD0();
        case 28:
            func_8023D48();
            break;
        case 29:
            func_8035D10();
        case 30:
            func_8023EE0();
            break;
        case 31:
        case 79:
            func_8035DAC();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
        case 80:
            func_8035DC0();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 35:
            func_8035E90();
        case 36:
            func_8035EF4();
            break;
        case 37:
            func_8035F28();
        case 38:
            func_8035F8C();
            break;
        case 39:
            func_8036000();
        case 40:
            func_8036014();
            break;
        case 41:
            func_8036054();
        case 42:
            func_8036068();
            break;
        case 43:
            func_80360C0();
        case 44:
            func_8024478();
            break;
        case 45:
            func_80360D4();
        case 46:
            func_802449C();
            break;
        case 47:
            func_80244C0();
        case 48:
            func_80244E0();
            break;
        case 49:
            func_80360E8();
        case 50:
            SpriteUtilDieAfterDelay();
            break;
        case 51:
            func_80361BC();
            goto call_8024988;
        case 53:
            func_80361D0();
            goto call_802476C;
        case 55:
            func_8024688();
        case 56:
            func_80246B8();
            break;
        case 57:
            func_802473C();
        case 54:
        case 58:
call_802476C:
            func_802476C();
            break;
        case 59:
            func_80247F0();
        case 60:
            func_8024820();
            break;
        case 61:
            func_80248A4();
        case 62:
            func_80248D4();
            break;
        case 63:
            func_8024958();
        case 52:
        case 64:
call_8024988:
            func_8024988();
            break;
        case 65:
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
            func_8036204();
        case 68:
        case 72:
call_8024AD4:
            func_8024AD4();
            break;
        case 73:
            func_8036218();
        case 70:
        case 74:
call_8024C00:
            func_8024C00();
            break;
        case 75:
            func_803622C();
        case 76:
            func_8036274();
            break;
        case 105:
            func_8035E54();
            break;
        case 106:
            func_8035E40();
            break;
        case 110:
            func_8035AE0();
        case 111:
            func_8035B00();
            break;
        case 112:
            func_8035B5C();
        case 113:
            func_8035B88();
            break;
        case 81:
            func_8036318();
            break;
        case 82:
            SpriteUtilLiftingSpriteRight();
            break;
        case 83:
            func_803632C();
            break;
        case 84:
            SpriteUtilLiftingSpriteLeft();
            break;
        case 87:
            func_803635C();
            break;
        case 88:
            SpriteUtilCarryingSpriteRight();
            break;
        case 85:
            func_8036370();
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
        default:
            func_803615C();
            break;
    }
}

void SpriteUnknown9C(void)
{
    register struct PrimarySpriteData *sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_UNDERWATER)
        sprite->pose = 107;

    switch (sprite->pose) {
        case 0:
            func_8036384();
            break;
        case 43:
        case 44:
            gCurrentSprite.work2 = 5;
            func_80238E8();
            func_8025D34();
            break;
        case 45:
        case 46:
            gCurrentSprite.work2 = 5;
            func_80238E8();
            func_8025C80();
            break;
        case 51:
            func_8036420();
            goto call_8024988;
        case 53:
            func_803643C();
            goto call_802476C;
        case 55:
            func_8024688();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 56:
            func_80246B8();
            break;
        case 57:
            func_802473C();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 54:
        case 58:
call_802476C:
            func_802476C();
            break;
        case 59:
            func_80247F0();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 60:
            func_8024820();
            break;
        case 61:
            func_80248A4();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 62:
            func_80248D4();
            break;
        case 63:
            func_8024958();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 52:
        case 64:
call_8024988:
            func_8024988();
            break;
        case 65:
            func_8024A0C();
            m4aSongNumStart(SE_TOGEROBO_CHILD_IMPACT);
        case 66:
            func_8024A3C();
            break;
        case 67:
        case 71:
            if (!(gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)) {
                func_8024AC0();
                func_8024AD4();
            } else {
                gCurrentSprite.pose = 49;
            }
            break;
        case 68:
            func_8024AD4();
            break;
        case 69:
        case 73:
            if (!(gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)) {
                gCurrentSprite.pose = 49;
            } else {
                func_8024BEC();
                func_8024C00();
            }
            break;
        case 70:
            func_8024C00();
            break;
        case 31:
        case 79:
            func_8036514();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
        case 80:
            func_8036528();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 107:
            SpriteUtilDie();
            break;
        case 50:
            func_80364A4();
            break;
        default:
            func_803645C();
            break;
    }

    if (gCurrentSprite.status & SPRITE_STATUS_AFFINE) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
            gCurrentSprite.work1 += 5;
        else
            gCurrentSprite.work1 -= 5;

        gCurrentSprite.affinePA = FixedMul(COS(gCurrentSprite.work1), FixedInverse(256));
        gCurrentSprite.affinePB = FixedMul(SIN(gCurrentSprite.work1), FixedInverse(256));
        gCurrentSprite.affinePC = FixedMul(-SIN(gCurrentSprite.work1), FixedInverse(256));
        gCurrentSprite.affinePD = FixedMul(COS(gCurrentSprite.work1), FixedInverse(256));
    }
}
