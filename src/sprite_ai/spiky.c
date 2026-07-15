#include "sprite_ai/spiky.h"

#include "global_data.h"
#include "score.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sSpikyIdleOam_Frame1[] = {
    2,
    OAM_ENTRY(-15, -20, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 512, 8, 0),
};

const u16 sSpikyIdleOam_Frame2[] = {
    2,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
};

const u16 sSpikyIdleOam_Frame3[] = {
    4,
    OAM_ENTRY(-13, -21, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_32x8, 0, 516, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u16 sSpikyIdleOam_Frame4[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
};

const u16 sSpikyIdleOam_Frame5[] = {
    2,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_32x8, 0, 547, 8, 0),
};

const u16 sSpikyIdleOam_Frame6[] = {
    3,
    OAM_ENTRY(-15, -21, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 551, 8, 0),
    OAM_ENTRY(-10, -16, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u8 sSpikyRawData_83BC138[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyAirborneOam_Frame1[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_32x8, 0, 516, 8, 0),
};

const u16 sSpikyAirborneOam_Frame2[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
};

const u16 sSpikyAirborneOam_Frame3[] = {
    7,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -19, SPRITE_SIZE_16x8, 0, 542, 8, 0),
    OAM_ENTRY(-13, -10, SPRITE_SIZE_32x8, 0, 557, 8, 0),
    OAM_ENTRY(-19, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_16x16, 0, 540, 8, 0),
    OAM_ENTRY(0, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sSpikyAirborneOam_Frame4[] = {
    7,
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_32x8, 0, 557, 8, 0),
    OAM_ENTRY(-19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 540, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sSpikyAirborneOam_Frame5[] = {
    8,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-13, -21, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-19, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -38, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sSpikyAirborneOam_Frame6[] = {
    7,
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-13, -17, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -21, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sSpikyAirborneOam_Frame7[] = {
    3,
    OAM_ENTRY(-13, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sSpikyAirborneOam_Frame8[] = {
    3,
    OAM_ENTRY(-13, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -19, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sSpikyAirborneOam_Frame9[] = {
    3,
    OAM_ENTRY(-13, -12, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sSpikyAirborneOam_Frame10[] = {
    3,
    OAM_ENTRY(-13, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -17, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
};

const u8 sSpikyRawData_83BC26E[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyTurningOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 551, 8, 0),
};

const u16 sSpikyTurningOam_Frame2[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_32x8, 0, 516, 8, 0),
};

const u16 sSpikyTurningAroundOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 514, 8, 0),
};

const u16 sSpikyTurningAroundOam_Frame2[] = {
    2,
    OAM_ENTRY(-15, -20, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 551, 8, 0),
};

const u16 sSpikyTurningAroundOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -19, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 544, 8, 0),
};

const u8 sSpikyRawData_83BC2C8[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyGettingUpOam_Frame1[] = {
    3,
    OAM_ENTRY(-13, -11, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-7, -15, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 512, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame2[] = {
    3,
    OAM_ENTRY(-13, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(-19, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-15, -18, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 547, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame3[] = {
    7,
    OAM_ENTRY(4, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-19, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame4[] = {
    6,
    OAM_ENTRY(5, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-13, -21, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-19, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame5[] = {
    7,
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_32x8, 0, 557, 8, 0),
    OAM_ENTRY(-19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 540, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame6[] = {
    7,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-12, -19, SPRITE_SIZE_16x8, 0, 542, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_32x8, 0, 557, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_16x16, 0, 540, 8, 0),
    OAM_ENTRY(0, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame7[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame8[] = {
    3,
    OAM_ENTRY(-13, -20, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_32x8, 0, 516, 8, 0),
};

const u16 sSpikyGettingUpOam_Frame9[] = {
    3,
    OAM_ENTRY(-13, -18, SPRITE_SIZE_32x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
};

const u8 sSpikyRawData_83BC3DE[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82, 0x03, 0x00, 0xF2, 0x40, 0xF3, 0xA1, 0x0D, 0x82,
    0xF2, 0x00, 0xED, 0x31, 0x30, 0x82, 0xEE, 0x40, 0xF8, 0x21, 0x02, 0x82, 0x02, 0x00, 0xF2, 0x40,
    0xF0, 0xB1, 0x11, 0x82, 0xEE, 0x40, 0xF9, 0x21, 0x27, 0x82, 0x02, 0x00, 0xF2, 0x40, 0xEF, 0xB1,
    0x15, 0x82, 0xEE, 0x40, 0xFA, 0x21, 0x02, 0x82, 0x07, 0x00, 0xF2, 0x00, 0xF5, 0x11, 0x30, 0x82,
    0xFA, 0x00, 0xFC, 0x21, 0x1F, 0x82, 0xFA, 0x00, 0xF9, 0x21, 0x1E, 0x82, 0xF2, 0x00, 0xFC, 0x71,
    0x19, 0x82, 0xF2, 0x80, 0xF4, 0x31, 0x1B, 0x82, 0xEE, 0x40, 0xF8, 0x31, 0x27, 0x82, 0xFA, 0x00,
    0x00, 0x30, 0x1E, 0x82, 0x06, 0x00, 0xFA, 0x00, 0xFC, 0x21, 0x08, 0x82, 0xF3, 0x00, 0xFC, 0x21,
    0x08, 0x82, 0xF2, 0x00, 0xFC, 0x61, 0x1A, 0x82, 0xF2, 0x80, 0xF4, 0x31, 0x1B, 0x82, 0xEF, 0x40,
    0xF8, 0x31, 0x02, 0x82, 0xFA, 0x00, 0xFC, 0x21, 0x1F, 0x82, 0x07, 0x00, 0xF2, 0x00, 0x03, 0x00,
    0x30, 0x82, 0xFA, 0x00, 0xFC, 0x31, 0x1F, 0x82, 0xFA, 0x00, 0xFF, 0x31, 0x1E, 0x82, 0xF2, 0x00,
    0xF4, 0x61, 0x19, 0x82, 0xF2, 0x80, 0x04, 0x20, 0x1B, 0x82, 0xED, 0x40, 0xF8, 0x21, 0x27, 0x82,
    0xFA, 0x00, 0xF8, 0x21, 0x1E, 0x82, 0x02, 0x00, 0xF2, 0x40, 0xF1, 0xA1, 0x15, 0x82, 0xEE, 0x40,
    0xF7, 0x21, 0x02, 0x82, 0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyRecoveringOam_Frame2[] = {
    3,
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_32x8, 0, 544, 8, 0),
};

const u16 sSpikyRecoveringOam_Frame3[] = {
    6,
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_32x16, 0, 529, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 544, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-1, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 555, 8, 0),
};

const u8 sSpikyRawData_83BC4E4[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyStunnedOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 551, 8, 0),
};

const u16 sSpikyStunnedOam_Frame2[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-15, -18, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 547, 8, 0),
};

const u16 sSpikyStunnedOam_Frame3[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 544, 8, 0),
};

const u16 sSpikyStunnedOam_Frame4[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sSpikyStunnedOam_Frame5[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 514, 8, 0),
};

const u16 sSpikyStunnedOam_Frame6[] = {
    2,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 512, 8, 0),
};

const u8 sSpikyRawData_83BC540[] = {
    0x01, 0x00, 0xF8, 0x00, 0xF8, 0x01, 0x08, 0x82,
};

const u16 sSpikyPushedOam_Frame1[] = {
    3,
    OAM_ENTRY(-15, -20, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 544, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sSpikyRecoveringOam_Frame1[] = {
    3,
    OAM_ENTRY(-15, -19, SPRITE_SIZE_32x16, 0, 533, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 544, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const struct AnimationFrame sSpikyIdleOam[] = {
    {sSpikyIdleOam_Frame1, 8},
    {sSpikyIdleOam_Frame2, 8},
    {sSpikyIdleOam_Frame3, 8},
    {sSpikyIdleOam_Frame4, 8},
    {sSpikyIdleOam_Frame5, 8},
    {sSpikyIdleOam_Frame6, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyFallingOam[] = {
    {sSpikyIdleOam_Frame1, 4},
    {sSpikyIdleOam_Frame2, 4},
    {sSpikyIdleOam_Frame3, 4},
    {sSpikyIdleOam_Frame4, 4},
    {sSpikyIdleOam_Frame5, 4},
    {sSpikyIdleOam_Frame6, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyTurningOam[] = {
    {sSpikyTurningOam_Frame1, 7},
    {sSpikyTurningOam_Frame2, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyTurningAroundOam[] = {
    {sSpikyTurningAroundOam_Frame1, 7},
    {sSpikyTurningAroundOam_Frame2, 7},
    {sSpikyTurningAroundOam_Frame3, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyAirborneOam[] = {
    {sSpikyAirborneOam_Frame1, 6},
    {sSpikyAirborneOam_Frame2, 5},
    {sSpikyAirborneOam_Frame3, 5},
    {sSpikyAirborneOam_Frame4, 4},
    {sSpikyAirborneOam_Frame5, 5},
    {sSpikyAirborneOam_Frame6, 4},
    {sSpikyAirborneOam_Frame7, 5},
    {sSpikyAirborneOam_Frame8, 5},
    {sSpikyAirborneOam_Frame9, 5},
    {sSpikyAirborneOam_Frame10, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyGettingUpOam[] = {
    {sSpikyGettingUpOam_Frame1, 4},
    {sSpikyGettingUpOam_Frame2, 4},
    {sSpikyGettingUpOam_Frame3, 4},
    {sSpikyGettingUpOam_Frame4, 4},
    {sSpikyGettingUpOam_Frame5, 4},
    {sSpikyGettingUpOam_Frame6, 4},
    {sSpikyGettingUpOam_Frame7, 4},
    {sSpikyGettingUpOam_Frame8, 4},
    {sSpikyGettingUpOam_Frame9, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyRecoveringOam[] = {
    {sSpikyRecoveringOam_Frame1, 6},
    {sSpikyRecoveringOam_Frame2, 9},
    {sSpikyRecoveringOam_Frame3, 9},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyStunnedOam[] = {
    {sSpikyStunnedOam_Frame1, 5},
    {sSpikyStunnedOam_Frame2, 5},
    {sSpikyStunnedOam_Frame3, 5},
    {sSpikyStunnedOam_Frame4, 5},
    {sSpikyStunnedOam_Frame5, 5},
    {sSpikyStunnedOam_Frame6, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyPushedOam[] = {
    {sSpikyPushedOam_Frame1, 6},
    {sSpikyRecoveringOam_Frame1, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikyDefeatedOam[] = {
    {sSpikyAirborneOam_Frame8, 1},
    {sSpikyAirborneOam_Frame9, 2},
    {sSpikyGettingUpOam_Frame1, 3},
    ANIMATION_TERMINATOR
};

void SpikyInit(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int zero asm("r5");

    sprite = &gCurrentSprite;
    sprite->warioCollision = 35;
    sprite->drawDistanceDown = 36;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 20;
    sprite->hitboxExtentUp = 64;
    sprite->hitboxExtentDown = 0;
    sprite->hitboxExtentLeft = 48;
    sprite->hitboxExtentRight = 44;
    sprite->pOamData = sSpikyIdleOam;
    sprite->currentAnimationFrame = 0;
    zero = 0;
    sprite->animationTimer = 0;
    sprite->pose = SPOSE_IDLE;
    SpriteUtilTurnTowardWario();
    if (sprite->globalID == 29) {
        sprite->palette = 1;
        sprite->status |= SPRITE_STATUS_HEAVY;
    } else {
        sprite->palette = zero;
    }
}

void SpikyCheckScreenShake(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_HEAVY) {
        if (gScreenShakeY.duration > 57) {
            gCurrentSprite.pose = SPOSE_4B;
        } else if (gScreenShakeY.duration > 41) {
            gCurrentSprite.pose = SPOSE_17;
        }
    } else if (gScreenShakeY.duration > 41) {
        gCurrentSprite.pose = SPOSE_4B;
    }
}

void SpikyIdleInit(void)
{
    gCurrentSprite.pOamData = sSpikyIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = 35;
}

void SpikyIdle(void)
{
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = SPOSE_1B;
            return;
        }
    } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if ((gUnk_3000A50 & 0xF0) &&
            ((gCurrentSprite.xPosition & 0x3F) + gCurrentSprite.hitboxExtentRight > 0x3F)) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + 28);
            if (!(gUnk_3000A51 & 0xF0)) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 & 0xF) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
        }
    } else if ((gUnk_3000A50 & 0xF0) &&
        ((gCurrentSprite.xPosition & 0x3F) < gCurrentSprite.hitboxExtentLeft)) {
        func_8023BFC(gCurrentSprite.yPosition,
            gCurrentSprite.xPosition - 32);
        if (!(gUnk_3000A51 & 0xF0)) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
            gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
    }

    func_80263AC();
}

void SpikyTurnInit(void)
{
    gCurrentSprite.pOamData = sSpikyTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 15;
    gCurrentSprite.warioCollision = 35;
}

void SpikyTurn(void)
{
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1B;
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        return;
    }

    if (gCurrentSprite.pose == SPOSE_12) {
        gCurrentSprite.pOamData = sSpikyTurningAroundOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_14;
        gCurrentSprite.work0 = 20;
        gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
    } else {
        gCurrentSprite.pose = SPOSE_IDLE_INIT;
    }
}

void SpikyRecoverInit(void)
{
    gCurrentSprite.pOamData = sSpikyRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 24;
    gCurrentSprite.warioCollision = 35;
}

void SpikyRecover(void)
{
    SpikyCheckScreenShake();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1B;
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        return;
    }

    if (gCurrentSprite.xPosition > gWarioData.xPosition) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.pose = SPOSE_11;
        } else {
            gCurrentSprite.pose = SPOSE_IDLE_INIT;
        }
    } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pose = SPOSE_IDLE_INIT;
    } else {
        gCurrentSprite.pose = SPOSE_11;
    }
}

void SpikyGetUpInit(void)
{
    gCurrentSprite.pOamData = sSpikyGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 42;
}

void SpikyGetUp(void)
{
    u8 timer;
    u8 timerCopy;

    timer = gCurrentSprite.work0;
    timerCopy = timer;
    if (timer > 34) {
        func_8023B88();
        if (!gUnk_3000A50) {
            gCurrentSprite.pose = SPOSE_1D;
        }
        func_80238E8();
        gCurrentSprite.work0--;
    } else if (timer <= 13) {
        func_8023B88();
        if (!gUnk_3000A50) {
            gCurrentSprite.pose = SPOSE_1B;
        } else {
            gCurrentSprite.work0--;
            if (gCurrentSprite.work0 != 0) {
                return;
            }
            gCurrentSprite.pose = SPOSE_17;
        }
        SpikyCheckScreenShake();
    } else {
        if (timer == 34) {
            gCurrentSprite.yPosition -= 24;
        } else if (timer == 30) {
            gCurrentSprite.yPosition -= 24;
        } else if (timer == 22) {
            gCurrentSprite.yPosition += 24;
            gCurrentSprite.warioCollision = 35;
        } else if (timerCopy == 18) {
            gCurrentSprite.yPosition += 24;
        }
        gCurrentSprite.work0--;
    }
}

void SpikyFallingInit(void)
{
    gCurrentSprite.pOamData = sSpikyFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
}

void SpikyStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sSpikyStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 36;
}

void SpikyTackledInit(void)
{
    u8 scoreType;

    gCurrentSprite.pOamData = sSpikyDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    if (gCurrentSprite.globalID == 29) {
        scoreType = 30;
        gCurrentSprite.work2 = 4;
    } else {
        scoreType = 10;
        gCurrentSprite.work2 = 8;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, scoreType);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpikyTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    SpikyTackledInit();
}

void SpikyTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    SpikyTackledInit();
}

void SpikyDefeatedInit(void)
{
    u8 scoreType;

    gCurrentSprite.pOamData = sSpikyDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    if (gCurrentSprite.globalID == 29) {
        scoreType = 30;
        gCurrentSprite.work2 = 3;
    } else {
        scoreType = 10;
        gCurrentSprite.work2 = 7;
    }
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, scoreType);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpikyDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    SpikyDefeatedInit();
}

void SpikyDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    SpikyDefeatedInit();
}

void SpikyPushedInit(void)
{
    gCurrentSprite.pOamData = sSpikyPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    if (gCurrentSprite.status & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work2 = 6;
    } else {
        gCurrentSprite.work2 = 8;
    }
}

void SpikyPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    SpikyPushedInit();
}

void SpikyPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    SpikyPushedInit();
}

void SpikyPose27Or29Init(void)
{
    gCurrentSprite.pOamData = sSpikyPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    if (gCurrentSprite.status & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work2 = 6;
    } else {
        gCurrentSprite.work2 = 8;
    }
}

void SpikyPose27Init(void)
{
    gCurrentSprite.pose = SPOSE_28;
    SpikyPose27Or29Init();
}

void SpikyPose29Init(void)
{
    gCurrentSprite.pose = SPOSE_2A;
    SpikyPose27Or29Init();
}

void SpikyPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sSpikyStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 36;
}

void SpikyPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    SpikyPose2BOr2DInit();
}

void SpikyPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    SpikyPose2BOr2DInit();
}

void SpikyCrushed(void)
{
    int globalID;
    int scoreType;

    gCurrentSprite.pOamData = sSpikyDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 7;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    globalID = gCurrentSprite.globalID;
    scoreType = 10;
    if (globalID == 29) {
        scoreType = 30;
    }
    func_807687C(globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, scoreType);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpikyInstantlyKill(void)
{
    int globalID;
    int scoreType;

    globalID = gCurrentSprite.globalID;
    scoreType = 10;
    if (globalID == 29) {
        scoreType = 30;
    }
    func_807687C(globalID, gCurrentSprite.yPosition,
        gCurrentSprite.xPosition, scoreType);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void SpikyStunnedInit(void)
{
    gCurrentSprite.pOamData = sSpikyStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 36) {
        gCurrentSprite.warioCollision = 36;
    }
    if (gCurrentSprite.status & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work2 = 6;
    } else {
        gCurrentSprite.work2 = 8;
    }
}

void SpikyPose33Init(void)
{
    gCurrentSprite.pose = SPOSE_34;
    SpikyStunnedInit();
}

void SpikyPose35Init(void)
{
    gCurrentSprite.pose = SPOSE_36;
    SpikyStunnedInit();
}

void SpikyStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sSpikyStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 36;
    if (gCurrentSprite.status & SPRITE_STATUS_HEAVY) {
        gCurrentSprite.work2 = 6;
    } else {
        gCurrentSprite.work2 = 8;
    }
}

void SpikyPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    SpikyStunnedWithoutTimerInit();
}

void SpikyPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    SpikyStunnedWithoutTimerInit();
}

void SpikyAirborneInit(void)
{
    gCurrentSprite.pOamData = sSpikyAirborneOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 49;
}

void SpikyAirborne(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register u8 *timerPointer asm("r3");
    int timerCopy;
    u8 timer;

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    timerCopy = --(*timerPointer);
    if (timerCopy != 0) {
        timer = *timerPointer;
        asm("" : "+r"(timer));
        timerCopy = timer;
        asm("" : "+r"(timerCopy));
        if (timer == 38 || timer == 33) {
            sprite->yPosition -= 16;
        } else if (timer == 29) {
            sprite->yPosition -= 16;
            sprite->warioCollision = 36;
        } else if (timer == 24 || timer == 20 || timerCopy == 15) {
            sprite->yPosition += 16;
        }
    } else {
        sprite->pOamData = sSpikyStunnedOam;
        sprite->animationTimer = timerCopy;
        sprite->currentAnimationFrame = 0;
        sprite->pose = SPOSE_2F;
    }
}

void SpriteSpiky(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            SpikyInit();
            break;
        case SPOSE_IDLE_INIT:
            SpikyIdleInit();
        case SPOSE_IDLE:
            SpikyIdle();
            SpikyCheckScreenShake();
            break;
        case SPOSE_11:
            SpikyTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            SpikyTurn();
            SpikyCheckScreenShake();
            break;
        case SPOSE_17:
            SpikyRecoverInit();
        case SPOSE_18:
            SpikyRecover();
            break;
        case SPOSE_19:
            SpikyGetUpInit();
        case SPOSE_1A:
            SpikyGetUp();
            break;
        case SPOSE_1B:
            SpikyFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            SpikyStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            SpikyTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            SpikyTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            if (gCurrentSprite.warioCollision == 36) {
                SpikyPose33Init();
                func_8024988();
                break;
            }
            SpikyPushedRightInit();
            goto pushedRight;
        case SPOSE_PUSHED_LEFT_INIT:
            if (gCurrentSprite.warioCollision == 36) {
                SpikyPose35Init();
                func_802476C();
                break;
            }
            SpikyPushedLeftInit();
            goto pushedLeft;
        case SPOSE_27:
            if (gCurrentSprite.warioCollision == 36) {
                SpikyPose33Init();
                func_8024988();
                break;
            }
            SpikyPose27Init();
        case SPOSE_PUSHED_RIGHT:
        case SPOSE_28:
pushedRight:
            SpriteUtilPushedRight();
            SpikyCheckScreenShake();
            break;
        case SPOSE_29:
            if (gCurrentSprite.warioCollision == 36) {
                SpikyPose35Init();
                func_802476C();
                break;
            }
            SpikyPose29Init();
        case SPOSE_PUSHED_LEFT:
        case SPOSE_2A:
pushedLeft:
            SpriteUtilPushedLeft();
            SpikyCheckScreenShake();
            break;
        case SPOSE_2B:
            SpikyPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            SpikyPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            SpikyCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            SpikyPose33Init();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            SpikyPose35Init();
        case SPOSE_36:
            func_802476C();
            break;
        case SPOSE_37:
            func_8024688();
        case SPOSE_38:
            func_80246B8();
            break;
        case SPOSE_39:
            func_802473C();
        case SPOSE_3A:
            func_802476C();
            break;
        case SPOSE_3B:
            func_80247F0();
        case SPOSE_3C:
            func_8024820();
            break;
        case SPOSE_3D:
            func_80248A4();
        case SPOSE_3E:
            func_80248D4();
            break;
        case SPOSE_3F:
            func_8024958();
        case SPOSE_40:
            func_8024988();
            break;
        case SPOSE_41:
            func_8024A0C();
        case SPOSE_42:
            func_8024A3C();
            break;
        case SPOSE_43:
            func_8024AC0();
        case SPOSE_44:
            func_8024AD4();
            break;
        case SPOSE_45:
            func_8024BEC();
        case SPOSE_46:
            func_8024C00();
            break;
        case SPOSE_47:
            SpikyPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            SpikyPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            SpikyAirborneInit();
        case SPOSE_4C:
            SpikyAirborne();
            break;
        case SPOSE_69:
            SpikyDefeatedLeftInit();
            break;
        case SPOSE_6A:
            SpikyDefeatedRightInit();
            break;
        default:
            SpikyInstantlyKill();
            break;
    }
}
