#include "sprite_ai/toy_car.h"

#include "score.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sToyCarIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame2[] = {
    5,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(1, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -15, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -25, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-21, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame3[] = {
    4,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame4[] = {
    4,
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -30, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame5[] = {
    4,
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -29, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame6[] = {
    4,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame7[] = {
    5,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(1, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -15, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -25, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-21, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame8[] = {
    4,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame9[] = {
    4,
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -30, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarIdleOam_Frame10[] = {
    4,
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -29, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarTurningOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_32x8, 0, 548, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarTurningOam_Frame2[] = {
    5,
    OAM_ENTRY(-11, -8, SPRITE_SIZE_32x8, 0, 548, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-19, -16, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-4, -28, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarTurningOam_Frame3[] = {
    4,
    OAM_ENTRY(-6, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarTurningOam_Frame4[] = {
    3,
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_16x16, 0, 533, 8, 0),
};

const u16 sToyCarTurningAroundOam_Frame1[] = {
    4,
    OAM_ENTRY(-6, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarTurningAroundOam_Frame2[] = {
    5,
    OAM_ENTRY(-11, -8, SPRITE_SIZE_32x8, 0, 548, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-19, -16, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-4, -28, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarTurningAroundOam_Frame3[] = {
    4,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_32x8, 0, 548, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -15, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -25, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-20, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame2[] = {
    4,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -29, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-19, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame3[] = {
    4,
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -31, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-16, -12, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame4[] = {
    6,
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-19, -20, SPRITE_SIZE_32x8, 0, 535, 8, 0),
    OAM_ENTRY(-10, -7, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(-21, -14, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 567, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_32x8, 0, 567, 8, 0),
    OAM_ENTRY(-6, -25, SPRITE_SIZE_16x16, 0, 525, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame5[] = {
    5,
    OAM_ENTRY(-7, -23, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-19, -26, SPRITE_SIZE_32x8, 0, 535, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(-21, -20, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 567, 8, 0),
    OAM_ENTRY(-22, -16, SPRITE_SIZE_32x8, 0, 567, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame6[] = {
    4,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 567, 8, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 567, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame7[] = {
    5,
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(-17, -16, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-8, -29, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-19, -22, SPRITE_SIZE_32x8, 0, 567, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 567, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame8[] = {
    6,
    OAM_ENTRY(-7, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-9, -28, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-20, -21, SPRITE_SIZE_32x8, 0, 567, 8, 0),
    OAM_ENTRY(-21, -25, SPRITE_SIZE_32x8, ST_OAM_VFLIP, 567, 8, 0),
    OAM_ENTRY(-5, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sToyCarAlternateStunnedOam_Frame9[] = {
    3,
    OAM_ENTRY(-8, -26, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -24, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
    OAM_ENTRY(-4, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sToyCarStunnedOam_Frame1[] = {
    4,
    OAM_ENTRY(-8, -25, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-20, -23, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sToyCarStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sToyCarHeldOam_Frame1[] = {
    5,
    OAM_ENTRY(0, -26, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-10, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 517, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-12, -23, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sToyCarHeldOam_Frame2[] = {
    5,
    OAM_ENTRY(-1, -24, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-11, -26, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 517, 8, 0),
    OAM_ENTRY(0, -24, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-12, -24, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sToyCarAlternatePushedOam_Frame1[] = {
    6,
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(4, -15, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-3, -26, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarAlternatePushedOam_Frame2[] = {
    6,
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-12, -17, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(4, -15, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-20, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-3, -27, SPRITE_SIZE_16x16, 0, 527, 8, 0),
};

const u16 sToyCarPushedOam_Frame1[] = {
    6,
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-4, -17, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-20, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-3, -27, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarPushedOam_Frame2[] = {
    6,
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-4, -17, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-20, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-3, -28, SPRITE_SIZE_16x16, 0, 527, 8, 0),
};

const u16 sToyCarAlternateCrushedOam_Frame1[] = {
    5,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -15, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-4, -26, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarAlternateCrushedOam_Frame2[] = {
    5,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -15, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-22, -7, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(-4, -23, SPRITE_SIZE_16x16, 0, 529, 8, 0),
};

const u16 sToyCarAlternateCrushedOam_Frame3[] = {
    6,
    OAM_ENTRY(-7, -21, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -7, SPRITE_SIZE_32x8, 0, 551, 8, 0),
    OAM_ENTRY(-20, -13, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-23, -6, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateCrushedOam_Frame4[] = {
    5,
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -11, SPRITE_SIZE_32x8, 0, 519, 8, 0),
    OAM_ENTRY(-24, -5, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarCrushedOam_Frame1[] = {
    5,
    OAM_ENTRY(-9, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(2, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -23, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 557, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 525, 8, 0),
};

const u16 sToyCarCrushedOam_Frame2[] = {
    4,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sToyCarCrushedOam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
};

const u16 sToyCarCrushedOam_Frame4[] = {
    4,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-12, -17, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(5, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
};

const u16 sToyCarCrushedOam_Frame5[] = {
    4,
    OAM_ENTRY(-3, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-15, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(8, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-21, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
};

const u16 sToyCarAlternateTackledOam_Frame1[] = {
    5,
    OAM_ENTRY(-5, -29, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(3, -7, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarAlternateTackledOam_Frame2[] = {
    5,
    OAM_ENTRY(-5, -28, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-22, -8, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const u16 sToyCarTackledOam_Frame1[] = {
    4,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-8, -26, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(3, -28, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
};

const u16 sToyCarTackledOam_Frame2[] = {
    4,
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(3, -25, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 519, 8, 0),
};

const u16 sToyCarRecoveringOam_Frame1[] = {
    7,
    OAM_ENTRY(-10, -9, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 573, 8, 0),
    OAM_ENTRY(1, -8, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(4, -16, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-3, -29, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(13, -8, SPRITE_SIZE_8x8, 0, 542, 8, 0),
};

const u16 sToyCarRecoveringOam_Frame2[] = {
    7,
    OAM_ENTRY(-10, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 573, 8, 0),
    OAM_ENTRY(1, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 573, 8, 0),
    OAM_ENTRY(3, -16, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-13, -18, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-3, -29, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-23, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(14, -9, SPRITE_SIZE_8x8, 0, 574, 8, 0),
};

const u16 sToyCarRecoveringOam_Frame3[] = {
    7,
    OAM_ENTRY(-9, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 573, 8, 0),
    OAM_ENTRY(4, -17, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-2, -30, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_16x8, 0, 571, 8, 0),
    OAM_ENTRY(19, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 574, 8, 0),
};

const u16 sToyCarRecoveringOam_Frame4[] = {
    6,
    OAM_ENTRY(-11, -11, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
    OAM_ENTRY(3, -17, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-3, -30, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-23, -11, SPRITE_SIZE_16x8, 0, 571, 8, 0),
};

const struct AnimationFrame sToyCarIdleOam[] = {
    {sToyCarIdleOam_Frame1, 8},
    {sToyCarIdleOam_Frame2, 8},
    {sToyCarIdleOam_Frame3, 8},
    {sToyCarIdleOam_Frame4, 4},
    {sToyCarIdleOam_Frame5, 4},
    {sToyCarIdleOam_Frame6, 8},
    {sToyCarIdleOam_Frame7, 8},
    {sToyCarIdleOam_Frame8, 8},
    {sToyCarIdleOam_Frame9, 4},
    {sToyCarIdleOam_Frame10, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarFallingOam[] = {
    {sToyCarIdleOam_Frame6, 5},
    {sToyCarIdleOam_Frame7, 5},
    {sToyCarIdleOam_Frame8, 5},
    {sToyCarIdleOam_Frame9, 2},
    {sToyCarIdleOam_Frame10, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarTurningOam[] = {
    {sToyCarIdleOam_Frame1, 4},
    {sToyCarTurningOam_Frame1, 4},
    {sToyCarTurningOam_Frame2, 4},
    {sToyCarTurningOam_Frame3, 4},
    {sToyCarTurningOam_Frame4, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarTurningAroundOam[] = {
    {sToyCarTurningOam_Frame4, 2},
    {sToyCarTurningAroundOam_Frame1, 4},
    {sToyCarTurningAroundOam_Frame2, 4},
    {sToyCarTurningAroundOam_Frame3, 4},
    {sToyCarIdleOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarAlternateStunnedOam[] = {
    {sToyCarTurningOam_Frame1, 1},
    {sToyCarAlternateStunnedOam_Frame1, 3},
    {sToyCarAlternateStunnedOam_Frame2, 3},
    {sToyCarAlternateStunnedOam_Frame3, 3},
    {sToyCarAlternateStunnedOam_Frame4, 2},
    {sToyCarAlternateStunnedOam_Frame5, 2},
    {sToyCarAlternateStunnedOam_Frame6, 4},
    {sToyCarAlternateStunnedOam_Frame7, 2},
    {sToyCarAlternateStunnedOam_Frame8, 2},
    {sToyCarAlternateStunnedOam_Frame9, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarStunnedOam[] = {
    {sToyCarAlternateStunnedOam_Frame9, 8},
    {sToyCarStunnedOam_Frame1, 8},
    {sToyCarStunnedOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarGettingUpOam[] = {
    {sToyCarAlternateStunnedOam_Frame9, 1},
    {sToyCarStunnedOam_Frame1, 2},
    {sToyCarStunnedOam_Frame2, 2},
    {sToyCarAlternateStunnedOam_Frame8, 2},
    {sToyCarAlternateStunnedOam_Frame7, 2},
    {sToyCarAlternateStunnedOam_Frame6, 4},
    {sToyCarAlternateStunnedOam_Frame5, 2},
    {sToyCarAlternateStunnedOam_Frame4, 2},
    {sToyCarAlternateStunnedOam_Frame3, 2},
    {sToyCarAlternateStunnedOam_Frame2, 2},
    {sToyCarAlternateStunnedOam_Frame1, 3},
    {sToyCarTurningOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarHeldOam[] = {
    {sToyCarHeldOam_Frame1, 9},
    {sToyCarHeldOam_Frame2, 9},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarAlternatePushedOam[] = {
    {sToyCarTurningAroundOam_Frame3, 2},
    {sToyCarAlternatePushedOam_Frame1, 4},
    {sToyCarAlternatePushedOam_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarPushedOam[] = {
    {sToyCarTurningAroundOam_Frame3, 2},
    {sToyCarPushedOam_Frame1, 4},
    {sToyCarPushedOam_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarAlternateCrushedOam[] = {
    {sToyCarTurningAroundOam_Frame3, 2},
    {sToyCarAlternateCrushedOam_Frame1, 2},
    {sToyCarAlternateCrushedOam_Frame2, 2},
    {sToyCarAlternateCrushedOam_Frame3, 2},
    {sToyCarAlternateCrushedOam_Frame4, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarCrushedOam[] = {
    {sToyCarCrushedOam_Frame1, 2},
    {sToyCarCrushedOam_Frame2, 2},
    {sToyCarCrushedOam_Frame3, 2},
    {sToyCarCrushedOam_Frame4, 2},
    {sToyCarCrushedOam_Frame5, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarAlternateTackledOam[] = {
    {sToyCarAlternateTackledOam_Frame1, 8},
    {sToyCarAlternateTackledOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarTackledOam[] = {
    {sToyCarTackledOam_Frame1, 8},
    {sToyCarTackledOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sToyCarRecoveringOam[] = {
    {sToyCarRecoveringOam_Frame1, 4},
    {sToyCarRecoveringOam_Frame2, 4},
    {sToyCarRecoveringOam_Frame3, 4},
    {sToyCarRecoveringOam_Frame4, 4},
    ANIMATION_TERMINATOR
};

void UpdateToyCarHorizontalHitbox(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 40;
        gCurrentSprite.hitboxExtentRight = 60;
    } else {
        gCurrentSprite.hitboxExtentLeft = 64;
        gCurrentSprite.hitboxExtentRight = 36;
    }
}

void ToyCarInit(void)
{
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    SpriteUtilTurnTowardWario();
}

void ToyCarIdleInit(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.pOamData = sToyCarIdleOam;
    gCurrentSprite.warioCollision = 3;
    UpdateToyCarHorizontalHitbox();
}

void ToyCarIdle(void)
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
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 44);
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
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 48);
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

void ToyCarTurnInit(void)
{
    gCurrentSprite.pOamData = sToyCarTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 19;
    gCurrentSprite.warioCollision = 3;
    UpdateToyCarHorizontalHitbox();
}

void ToyCarTurn(void)
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
                if (sprite->animationTimer > 2)
                    sprite->warioCollision = 1;
                break;

            case SPOSE_14:
                if (sprite->animationTimer > 1)
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
                UpdateToyCarHorizontalHitbox();
                sprite->pOamData = sToyCarTurningAroundOam;
                sprite->currentAnimationFrame = zero;
                sprite->animationTimer = remaining;
                sprite->pose = SPOSE_14;
                *work0 = 14;
                break;
            }

            case SPOSE_14:
                sprite->pose = SPOSE_IDLE_INIT;
                break;
        }
    }
}

void ToyCarRecoverInit(void)
{
    gCurrentSprite.pOamData = sToyCarRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 16;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarGetUpInit(void)
{
    gCurrentSprite.pOamData = sToyCarGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 25;
}

void ToyCarFallingInit(void)
{
    gCurrentSprite.pOamData = sToyCarFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
}

void ToyCarStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sToyCarStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarTackledInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sToyCarTackledOam;
    } else {
        gCurrentSprite.pOamData = sToyCarAlternateTackledOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(PSPRITE_TOY_CAR, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void ToyCarTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    ToyCarTackledInit();
}

void ToyCarTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    ToyCarTackledInit();
}

void ToyCarDefeatedInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sToyCarTackledOam;
    } else {
        gCurrentSprite.pOamData = sToyCarAlternateTackledOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(PSPRITE_TOY_CAR, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void ToyCarDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    ToyCarDefeatedInit();
}

void ToyCarDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    ToyCarDefeatedInit();
}

void ToyCarPushedInit(void)
{
    gCurrentSprite.pOamData = sToyCarPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    ToyCarPushedInit();
}

void ToyCarPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    ToyCarPushedInit();
}

void ToyCarAlternatePushedInit(void)
{
    gCurrentSprite.pOamData = sToyCarAlternatePushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void ToyCarAlternatePushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_28;
    ToyCarAlternatePushedInit();
}

void ToyCarAlternatePushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_2A;
    ToyCarAlternatePushedInit();
}

void ToyCarPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sToyCarStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    ToyCarPose2BOr2DInit();
}

void ToyCarPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    ToyCarPose2BOr2DInit();
}

void ToyCarCrushed(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sToyCarCrushedOam;
    } else {
        gCurrentSprite.pOamData = sToyCarAlternateCrushedOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 11;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(PSPRITE_TOY_CAR, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void ToyCarInstantlyKill(void)
{
    func_807687C(PSPRITE_TOY_CAR, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void ToyCarStunnedInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sToyCarStunnedOam;
    } else {
        gCurrentSprite.pOamData = sToyCarAlternateStunnedOam;
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

void ToyCarPose33Init(void)
{
    gCurrentSprite.pose = SPOSE_34;
    ToyCarStunnedInit();
}

void ToyCarPose35Init(void)
{
    gCurrentSprite.pose = SPOSE_36;
    ToyCarStunnedInit();
}

void ToyCarStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sToyCarStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    ToyCarStunnedWithoutTimerInit();
}

void ToyCarPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    ToyCarStunnedWithoutTimerInit();
}

void ToyCarAirborneInit(void)
{
    gCurrentSprite.pOamData = sToyCarFallingOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.hitboxExtentLeft = 36;
    gCurrentSprite.hitboxExtentRight = 32;
}

void ToyCarAirborne(void)
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

void ToyCarHeldInit(void)
{
    gCurrentSprite.pOamData = sToyCarHeldOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void ToyCarLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
    ToyCarHeldInit();
}

void ToyCarLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
    ToyCarHeldInit();
}

void ToyCarCarriedInit(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sToyCarHeldOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void ToyCarCarriedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    ToyCarCarriedInit();
}

void ToyCarCarriedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    ToyCarCarriedInit();
}

void SpriteToyCar(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            ToyCarInit();
        case SPOSE_IDLE_INIT:
            ToyCarIdleInit();
        case SPOSE_IDLE:
            ToyCarIdle();
            break;
        case SPOSE_11:
            ToyCarTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            ToyCarTurn();
            break;
        case SPOSE_17:
            ToyCarRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            ToyCarGetUpInit();
        case SPOSE_1A:
            func_8023CD8();
            break;
        case SPOSE_1B:
            ToyCarFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            ToyCarStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            ToyCarTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            ToyCarTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            ToyCarPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
            ToyCarPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_27:
            ToyCarAlternatePushedRightInit();
        case SPOSE_28:
            SpriteUtilPushedRight();
            break;
        case SPOSE_29:
            ToyCarAlternatePushedLeftInit();
        case SPOSE_2A:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            ToyCarPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            ToyCarPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            ToyCarCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            ToyCarPose33Init();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            ToyCarPose35Init();
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
            ToyCarPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            ToyCarPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            ToyCarAirborneInit();
        case SPOSE_4C:
            ToyCarAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            ToyCarLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            ToyCarLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            ToyCarCarriedRightInit();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            ToyCarCarriedLeftInit();
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
            ToyCarDefeatedLeftInit();
            break;
        case SPOSE_6A:
            ToyCarDefeatedRightInit();
            break;
        default:
            ToyCarInstantlyKill();
            break;
    }
}
