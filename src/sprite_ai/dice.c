#include "sprite_ai/dice.h"

#include "score.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sDiceIdleOam_Frame1[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame2[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame3[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame4[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-2, -8, SPRITE_SIZE_16x8, 0, 560, 8, 0),
};

const u16 sDiceIdleOam_Frame5[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-11, -7, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame6[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame7[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceIdleOam_Frame8[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
};

const u16 sDiceIdleOam_Frame9[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-1, -7, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-16, -10, SPRITE_SIZE_16x8, 0, 530, 8, 0),
};

const u16 sDiceIdleOam_Frame10[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 530, 8, 0),
};

const u16 sDiceFallingOam_Frame1[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -25, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame2[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -25, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame3[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -26, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame4[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-2, -8, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-16, -19, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame5[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-11, -7, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -26, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame6[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -25, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame7[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -25, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame8[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -26, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame9[] = {
    6,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-1, -7, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-16, -10, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-16, -19, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceFallingOam_Frame10[] = {
    6,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(-16, -26, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sDiceTurningOam_Frame1[] = {
    5,
    OAM_ENTRY(-1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-3, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-24, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-23, -20, SPRITE_SIZE_32x16, 0, 517, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceTurningOam_Frame2[] = {
    8,
    OAM_ENTRY(-5, -13, SPRITE_SIZE_8x8, 0, 564, 8, 0),
    OAM_ENTRY(1, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-1, -21, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(-15, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-10, -7, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x8, 0, 544, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 544, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_8x8, 0, 529, 8, 0),
};

const u16 sDiceTurningAroundOam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-3, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-24, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-23, -20, SPRITE_SIZE_32x16, 0, 517, 8, 0),
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceTurningAroundOam_Frame2[] = {
    5,
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-11, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceAlternateStunnedOam_Frame1[] = {
    6,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-5, -12, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-12, -17, SPRITE_SIZE_32x16, 0, 521, 8, 0),
    OAM_ENTRY(-8, -25, SPRITE_SIZE_16x8, 0, 532, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_8x8, 0, 567, 8, 0),
};

const u16 sDiceAlternateStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-5, -20, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-10, -7, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-11, -27, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 567, 8, 0),
};

const u16 sDiceAlternateStunnedOam_Frame3[] = {
    6,
    OAM_ENTRY(-9, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-2, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 562, 8, 0),
    OAM_ENTRY(-7, -26, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 562, 8, 0),
    OAM_ENTRY(-13, -18, SPRITE_SIZE_32x16, 0, 521, 8, 0),
    OAM_ENTRY(-9, -26, SPRITE_SIZE_16x8, 0, 532, 8, 0),
    OAM_ENTRY(-14, -22, SPRITE_SIZE_8x8, 0, 567, 8, 0),
};

const u16 sDiceAlternateStunnedOam_Frame4[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-7, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-15, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-12, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame3[] = {
    5,
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-11, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-2, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame4[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame5[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-15, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame6[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-7, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame7[] = {
    5,
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-5, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-15, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame8[] = {
    5,
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-1, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-16, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceStunnedOam_Frame9[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-15, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sDiceAlternatePushedOam_Frame1[] = {
    5,
    OAM_ENTRY(-5, -21, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -14, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-11, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceAlternatePushedOam_Frame2[] = {
    6,
    OAM_ENTRY(-4, -19, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-17, -15, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-11, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDicePushedOam_Frame1[] = {
    7,
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDicePushedOam_Frame2[] = {
    7,
    OAM_ENTRY(-7, -20, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-13, -14, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-15, -21, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-15, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceAlternateCrushedOam_Frame1[] = {
    6,
    OAM_ENTRY(-33, -12, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(4, -15, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-13, -18, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(-2, -18, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceAlternateCrushedOam_Frame2[] = {
    6,
    OAM_ENTRY(-36, -11, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-21, -6, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(8, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sDiceCrushedOam_Frame1[] = {
    6,
    OAM_ENTRY(3, -16, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-17, -16, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(-2, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(12, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-19, -11, SPRITE_SIZE_8x16, 0, 539, 8, 0),
};

const u16 sDiceCrushedOam_Frame2[] = {
    6,
    OAM_ENTRY(-20, -13, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(4, -14, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-15, -11, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(0, -11, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(14, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-22, -11, SPRITE_SIZE_8x16, 0, 539, 8, 0),
};

const u16 sDiceAlternateTackledOam_Frame1[] = {
    7,
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-19, -16, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(-12, -14, SPRITE_SIZE_16x8, 0, 526, 8, 0),
    OAM_ENTRY(-9, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-12, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceAlternateTackledOam_Frame2[] = {
    6,
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -13, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-16, -9, SPRITE_SIZE_16x8, 0, 530, 8, 0),
};

const u16 sDiceTackledOam_Frame1[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-9, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-12, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sDiceTackledOam_Frame2[] = {
    5,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 514, 8, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-16, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 530, 8, 0),
};

const u16 sDiceRecoveringOam_Frame1[] = {
    5,
    OAM_ENTRY(-6, -22, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -15, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u16 sDiceRecoveringOam_Frame2[] = {
    5,
    OAM_ENTRY(-6, -20, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(-28, -13, SPRITE_SIZE_32x8, 0, 556, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_32x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -7, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 528, 8, 0),
};

const u8 sDiceRawData_83E0D66[] = {
    0x00, 0x00,
};

const struct AnimationFrame sDiceIdleOam[] = {
    {sDiceIdleOam_Frame1, 7},
    {sDiceIdleOam_Frame2, 7},
    {sDiceIdleOam_Frame3, 7},
    {sDiceIdleOam_Frame4, 7},
    {sDiceIdleOam_Frame5, 7},
    {sDiceIdleOam_Frame6, 7},
    {sDiceIdleOam_Frame7, 7},
    {sDiceIdleOam_Frame8, 7},
    {sDiceIdleOam_Frame9, 7},
    {sDiceIdleOam_Frame10, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceFallingOam[] = {
    {sDiceFallingOam_Frame1, 3},
    {sDiceFallingOam_Frame2, 3},
    {sDiceFallingOam_Frame3, 3},
    {sDiceFallingOam_Frame4, 3},
    {sDiceFallingOam_Frame5, 3},
    {sDiceFallingOam_Frame6, 3},
    {sDiceFallingOam_Frame7, 3},
    {sDiceFallingOam_Frame8, 3},
    {sDiceFallingOam_Frame9, 3},
    {sDiceFallingOam_Frame10, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceTurningOam[] = {
    {sDiceIdleOam_Frame1, 4},
    {sDiceTurningOam_Frame1, 4},
    {sDiceTurningOam_Frame2, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceTurningAroundOam[] = {
    {sDiceTurningAroundOam_Frame1, 4},
    {sDiceTurningAroundOam_Frame2, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceAlternateStunnedOam[] = {
    {sDiceIdleOam_Frame1, 3},
    {sDiceAlternateStunnedOam_Frame1, 3},
    {sDiceAlternateStunnedOam_Frame2, 3},
    {sDiceAlternateStunnedOam_Frame3, 3},
    {sDiceAlternateStunnedOam_Frame4, 255},
    ANIMATION_TERMINATOR
};

const u8 sDiceRawData_83E0E80[] = {
    0x1E, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00, 0x3E, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x5E, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00, 0x7E, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x9E, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00, 0xBE, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00,
    0xDE, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00, 0xFE, 0x0A, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x1E, 0x0B, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00, 0x3E, 0x0B, 0x3E, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sDiceGettingUpOam[] = {
    {sDiceAlternateStunnedOam_Frame4, 3},
    {sDiceAlternateStunnedOam_Frame3, 3},
    {sDiceAlternateStunnedOam_Frame2, 3},
    {sDiceAlternateStunnedOam_Frame1, 3},
    {sDiceIdleOam_Frame1, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceStunnedOam[] = {
    {sDiceAlternateStunnedOam_Frame4, 4},
    {sDiceStunnedOam_Frame1, 4},
    {sDiceStunnedOam_Frame2, 4},
    {sDiceStunnedOam_Frame3, 4},
    {sDiceStunnedOam_Frame4, 4},
    {sDiceStunnedOam_Frame5, 4},
    {sDiceStunnedOam_Frame6, 4},
    {sDiceStunnedOam_Frame7, 4},
    {sDiceStunnedOam_Frame8, 4},
    {sDiceStunnedOam_Frame9, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceAlternatePushedOam[] = {
    {sDiceIdleOam_Frame1, 2},
    {sDiceAlternatePushedOam_Frame1, 3},
    {sDiceAlternatePushedOam_Frame2, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDicePushedOam[] = {
    {sDiceIdleOam_Frame1, 2},
    {sDicePushedOam_Frame1, 3},
    {sDicePushedOam_Frame2, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceAlternateCrushedOam[] = {
    {sDiceIdleOam_Frame1, 2},
    {sDiceAlternateCrushedOam_Frame1, 3},
    {sDiceAlternateCrushedOam_Frame2, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceCrushedOam[] = {
    {sDiceAlternateStunnedOam_Frame4, 2},
    {sDiceCrushedOam_Frame1, 3},
    {sDiceCrushedOam_Frame2, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceAlternateTackledOam[] = {
    {sDiceAlternateTackledOam_Frame1, 6},
    {sDiceAlternateTackledOam_Frame2, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceTackledOam[] = {
    {sDiceTackledOam_Frame1, 6},
    {sDiceTackledOam_Frame2, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceRecoveringOam[] = {
    {sDiceIdleOam_Frame1, 7},
    {sDiceRecoveringOam_Frame1, 7},
    {sDiceIdleOam_Frame1, 7},
    {sDiceRecoveringOam_Frame2, 7},
    ANIMATION_TERMINATOR
};

void UpdateDiceHorizontalHitbox(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 32;
        gCurrentSprite.hitboxExtentRight = 60;
    } else {
        gCurrentSprite.hitboxExtentLeft = 64;
        gCurrentSprite.hitboxExtentRight = 28;
    }
}

void DiceInit(void)
{
    gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    SpriteUtilTurnTowardWario();
}

void DiceIdleInit(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.pOamData = sDiceIdleOam;
    gCurrentSprite.warioCollision = 3;
    UpdateDiceHorizontalHitbox();
}

void DiceIdle(void)
{
    func_80238A4();
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
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 48);
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
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 52);
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

    SpriteUtilMoveForward1HalfPixel();
}

void DiceTurnInit(void)
{
    gCurrentSprite.pOamData = sDiceTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 13;
    gCurrentSprite.warioCollision = 3;
    UpdateDiceHorizontalHitbox();
}

void DiceTurn(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register u32 remaining asm("r6");
    register u32 zero asm("r4");
    u8 *work0;

    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1B;
        return;
    }

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    {
        register u32 value asm("r0");

        value = *work0;
        value--;
        *work0 = value;
        remaining = (u8)value;
    }
    if (remaining != 0) {
        switch (sprite->pose) {
            case SPOSE_12:
                if (sprite->animationTimer == 0)
                    sprite->warioCollision = 1;
                break;

            case SPOSE_14:
                if (sprite->animationTimer == 0)
                    sprite->warioCollision = 3;
                break;
        }
    } else {
        switch (sprite->pose) {
            case SPOSE_12:
            {
                register u16 status asm("r0");

                status = sprite->status;
                status ^= SPRITE_STATUS_FACING_RIGHT;
                zero = 0;
                /* Keep the status value, zero, and work pointer in the target registers. */
                asm("" : "+r"(status), "+r"(zero), "+r"(work0));
                sprite->status = status;
                UpdateDiceHorizontalHitbox();
                sprite->pOamData = sDiceTurningAroundOam;
                sprite->currentAnimationFrame = zero;
                sprite->animationTimer = remaining;
                sprite->pose = SPOSE_14;
                *work0 = 7;
                break;
            }

            case SPOSE_14:
                sprite->pose = SPOSE_IDLE_INIT;
                break;
        }
    }
}

void DiceRecoverInit(void)
{
    gCurrentSprite.pOamData = sDiceRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 28;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DiceGetUpInit(void)
{
    gCurrentSprite.pOamData = sDiceGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 17;
}

void DiceFallingInit(void)
{
    gCurrentSprite.pOamData = sDiceFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DiceStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sDiceStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DiceTackledInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sDiceTackledOam;
    } else {
        gCurrentSprite.pOamData = sDiceAlternateTackledOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void DiceTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    DiceTackledInit();
}

void DiceTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    DiceTackledInit();
}

void DiceDefeatedInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sDiceTackledOam;
    } else {
        gCurrentSprite.pOamData = sDiceAlternateTackledOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
}

void DiceDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    DiceDefeatedInit();
}

void DiceDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    DiceDefeatedInit();
}

void DicePushedInit(void)
{
    gCurrentSprite.pOamData = sDicePushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DicePushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    DicePushedInit();
}

void DicePushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    DicePushedInit();
}

void DiceAlternatePushedInit(void)
{
    gCurrentSprite.pOamData = sDiceAlternatePushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void DiceAlternatePushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_28;
    DiceAlternatePushedInit();
}

void DiceAlternatePushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_2A;
    DiceAlternatePushedInit();
}

void DicePose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sDiceStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DicePose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    DicePose2BOr2DInit();
}

void DicePose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    DicePose2BOr2DInit();
}

void DiceCrushed(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sDiceCrushedOam;
    } else {
        gCurrentSprite.pOamData = sDiceAlternateCrushedOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 9;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void DiceInstantlyKill(void)
{
    SpriteUtilDie();
}

void DiceStunnedInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sDiceStunnedOam;
    } else {
        gCurrentSprite.pOamData = sDiceAlternateStunnedOam;
    }
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5) {
        gCurrentSprite.warioCollision = 5;
        gCurrentSprite.hitboxExtentLeft = 36;
        gCurrentSprite.hitboxExtentRight = 32;
    }
}

void DicePose33Init(void)
{
    gCurrentSprite.pose = SPOSE_34;
    DiceStunnedInit();
}

void DicePose35Init(void)
{
    gCurrentSprite.pose = SPOSE_36;
    DiceStunnedInit();
}

void DiceStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sDiceStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DicePose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    DiceStunnedWithoutTimerInit();
}

void DicePose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    DiceStunnedWithoutTimerInit();
}

void DiceAirborneInit(void)
{
    gCurrentSprite.pOamData = sDiceFallingOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void DiceAirborne(void)
{
    register u8 *indexPointer asm("ip");
    register u32 index asm("r2");
    s16 velocity;

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp,
            gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = SPOSE_1D;
        } else {
            indexPointer = &gCurrentSprite.work3;
            index = *indexPointer;
            /* Keep the work index and its address live so agbcc delays the table load. */
            asm("" : "+r" (indexPointer), "+r" (index));
            velocity = sUnk_8352B18[index];
            if (velocity == 0x7FFF) {
                register u32 previousVelocityAddress asm("r1");
                register u16 yPosition asm("r0");

                previousVelocityAddress = index - 1;
                previousVelocityAddress <<= 1;
                previousVelocityAddress += (u32) sUnk_8352B18;
                /* Preserve agbcc's original address calculation and halfword load order. */
                asm("" : "+r" (previousVelocityAddress));
                yPosition = gCurrentSprite.yPosition;
                asm("" : "+r" (yPosition), "+r" (previousVelocityAddress));
                gCurrentSprite.yPosition = yPosition + *(const s16 *) previousVelocityAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePointer asm("r1");

                nextIndex = index + 1;
                storePointer = indexPointer;
                /* Keep the incremented index in r0 and the destination pointer in r1. */
                asm("" : "+r" (nextIndex), "+r" (storePointer));
                *storePointer = nextIndex;
                gCurrentSprite.yPosition += velocity;
            }
        }
    } else {
        gCurrentSprite.pose = SPOSE_1B;
    }
}

void DiceHeldInit(void)
{
    gCurrentSprite.pOamData = sDiceStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void DiceLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
    DiceHeldInit();
}

void DiceLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
    DiceHeldInit();
}

void DiceCarriedInit(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sDiceStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void DiceCarriedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    DiceCarriedInit();
}

void DiceCarriedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    DiceCarriedInit();
}

void SpriteDice(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            DiceInit();
        case SPOSE_IDLE_INIT:
            DiceIdleInit();
        case SPOSE_IDLE:
            DiceIdle();
            break;
        case SPOSE_11:
            DiceTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            DiceTurn();
            break;
        case SPOSE_17:
            DiceRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            DiceGetUpInit();
        case SPOSE_1A:
            func_8023CD8();
            break;
        case SPOSE_1B:
            DiceFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            DiceStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            DiceTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            DiceTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            DicePushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
            DicePushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_27:
            DiceAlternatePushedRightInit();
        case SPOSE_28:
            SpriteUtilPushedRight();
            break;
        case SPOSE_29:
            DiceAlternatePushedLeftInit();
        case SPOSE_2A:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            DicePose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            DicePose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            DiceCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            DicePose33Init();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            DicePose35Init();
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
            DicePose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            DicePose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            DiceAirborneInit();
        case SPOSE_4C:
            DiceAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            DiceLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            DiceLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            DiceCarriedRightInit();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            DiceCarriedLeftInit();
            break;
        case SPOSE_CARRIED_LEFT:
            SpriteUtilCarryingSpriteLeft();
            break;
        case SPOSE_THROWN_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_SOFT;
        case SPOSE_THROWN_LEFT_SOFT:
            SpriteUtilThrownLeftSoft();
            break;
        case SPOSE_THROWN_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_HARD;
        case SPOSE_THROWN_LEFT_HARD:
            SpriteUtilThrownLeftHard();
            break;
        case SPOSE_THROWN_UP_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_SOFT;
        case SPOSE_THROWN_UP_LEFT_SOFT:
            SpriteUtilThrownUpLeftSoft();
            break;
        case SPOSE_THROWN_UP_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_HARD;
        case SPOSE_THROWN_UP_LEFT_HARD:
            SpriteUtilThrownUpLeftHard();
            break;
        case SPOSE_THROWN_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_SOFT;
        case SPOSE_THROWN_RIGHT_SOFT:
            SpriteUtilThrownRightSoft();
            break;
        case SPOSE_THROWN_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_HARD;
        case SPOSE_THROWN_RIGHT_HARD:
            SpriteUtilThrownRightHard();
            break;
        case SPOSE_THROWN_UP_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_SOFT;
        case SPOSE_THROWN_UP_RIGHT_SOFT:
            SpriteUtilThrownUpRightSoft();
            break;
        case SPOSE_THROWN_UP_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_HARD;
        case SPOSE_THROWN_UP_RIGHT_HARD:
            SpriteUtilThrownUpRightHard();
            break;
        case SPOSE_69:
            DiceDefeatedLeftInit();
            break;
        case SPOSE_6A:
            DiceDefeatedRightInit();
            break;
        default:
            DiceInstantlyKill();
            break;
    }
}
