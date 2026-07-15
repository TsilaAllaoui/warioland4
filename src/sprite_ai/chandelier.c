#include "sprite_ai/chandelier.h"

#include "global_data.h"
#include "sound.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sChandelierIdleOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x32, 0, 512, 8, 0),
};

const u16 sChandelierIdleOam_Frame2[] = {
    1,
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x32, 0, 516, 8, 0),
};

const u16 sChandelierShakingOam_Frame1[] = {
    5,
    OAM_ENTRY(-10, -34, SPRITE_SIZE_32x32, 0, 520, 8, 0),
    OAM_ENTRY(12, -30, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(6, -28, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-5, -26, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-11, -24, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u16 sChandelierShakingOam_Frame2[] = {
    5,
    OAM_ENTRY(-10, -34, SPRITE_SIZE_32x32, 0, 520, 8, 0),
    OAM_ENTRY(11, -29, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(4, -29, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-7, -25, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-13, -25, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
};

const u16 sChandelierShakingOam_Frame3[] = {
    5,
    OAM_ENTRY(-22, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-20, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-14, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-3, -26, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(3, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
};

const u16 sChandelierShakingOam_Frame4[] = {
    5,
    OAM_ENTRY(-22, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-19, -29, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-12, -29, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-2, -25, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(5, -25, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u8 sChandelierRawData_83F0A24[] = {
    0x01, 0x00, 0xE2, 0x00, 0xF0, 0x81, 0x04, 0x82,
};

const u16 sChandelierFallenOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -31, SPRITE_SIZE_32x32, 0, 520, 8, 0),
};

const u16 sChandelierFallenOam_Frame2[] = {
    6,
    OAM_ENTRY(-15, -25, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_32x8, 0, 616, 8, 0),
    OAM_ENTRY(-15, -12, SPRITE_SIZE_32x8, 0, 584, 8, 0),
    OAM_ENTRY(3, -18, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-17, -17, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(8, -28, SPRITE_SIZE_8x8, 0, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame3[] = {
    10,
    OAM_ENTRY(-15, -10, SPRITE_SIZE_32x8, 0, 584, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_32x8, 0, 616, 8, 0),
    OAM_ENTRY(3, -16, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-17, -19, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -20, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -13, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(8, -28, SPRITE_SIZE_8x8, 0, 559, 8, 0),
    OAM_ENTRY(12, -32, SPRITE_SIZE_8x8, 0, 639, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame4[] = {
    10,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 561, 8, 0),
    OAM_ENTRY(-17, -20, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(0, -9, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(5, -28, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -27, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(12, -32, SPRITE_SIZE_8x8, 0, 639, 8, 0),
    OAM_ENTRY(16, -35, SPRITE_SIZE_8x8, 0, 560, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
    OAM_ENTRY(-20, -32, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 639, 8, 0),
};

const u16 sChandelierFallenOam_Frame5[] = {
    10,
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-17, -18, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(5, -29, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -28, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(16, -35, SPRITE_SIZE_8x8, 0, 560, 8, 0),
    OAM_ENTRY(19, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-20, -32, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 639, 8, 0),
    OAM_ENTRY(-24, -35, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
};

const u16 sChandelierFallenOam_Frame6[] = {
    10,
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x8, 0, 586, 9, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-17, -18, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 9, 0),
    OAM_ENTRY(5, -29, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -28, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(19, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(16, -35, SPRITE_SIZE_8x8, 0, 560, 8, 0),
    OAM_ENTRY(-20, -32, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 639, 8, 0),
    OAM_ENTRY(-24, -35, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
};

const u16 sChandelierFallenOam_Frame7[] = {
    10,
    OAM_ENTRY(-17, -13, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_32x8, 0, 635, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 9, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(5, -31, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -30, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(19, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(24, -38, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-24, -35, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-27, -36, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame8[] = {
    10,
    OAM_ENTRY(-17, -13, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x8, 0, 586, 9, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_32x8, 0, 635, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(5, -31, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -30, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(19, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(24, -38, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-24, -35, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-27, -36, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame9[] = {
    9,
    OAM_ENTRY(-17, -7, SPRITE_SIZE_32x8, 0, 528, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_32x8, 0, 564, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(5, -29, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -28, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(24, -38, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(27, -37, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-27, -36, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-32, -38, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
};

const u16 sChandelierFallenOam_Frame10[] = {
    8,
    OAM_ENTRY(-16, -8, SPRITE_SIZE_32x8, 0, 596, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(5, -27, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -26, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(27, -37, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(31, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(-32, -38, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-35, -37, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame11[] = {
    8,
    OAM_ENTRY(-16, -8, SPRITE_SIZE_32x8, 0, 628, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 520, 9, 0),
    OAM_ENTRY(5, -23, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -22, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(31, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 560, 8, 0),
    OAM_ENTRY(36, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
    OAM_ENTRY(-35, -37, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-39, -36, SPRITE_SIZE_8x8, 0, 560, 8, 0),
};

const u16 sChandelierFallenOam_Frame12[] = {
    9,
    OAM_ENTRY(-13, -16, SPRITE_SIZE_16x16, 0, 588, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 593, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_8x16, 0, 595, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_16x8, 0, 528, 8, 0),
    OAM_ENTRY(-23, -16, SPRITE_SIZE_16x8, 0, 530, 8, 0),
    OAM_ENTRY(36, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
    OAM_ENTRY(43, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-39, -36, SPRITE_SIZE_8x8, 0, 560, 8, 0),
    OAM_ENTRY(-44, -30, SPRITE_SIZE_8x8, 0, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame13[] = {
    8,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, 0, 590, 8, 0),
    OAM_ENTRY(-13, -24, SPRITE_SIZE_32x16, 0, 536, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_32x8, 0, 600, 8, 0),
    OAM_ENTRY(-10, -35, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(43, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(48, -10, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-44, -30, SPRITE_SIZE_8x8, 0, 559, 8, 0),
    OAM_ENTRY(-51, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
};

const u16 sChandelierFallenOam_Frame14[] = {
    7,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, 0, 591, 8, 0),
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x16, 0, 539, 8, 0),
    OAM_ENTRY(-22, -8, SPRITE_SIZE_32x8, 0, 603, 8, 0),
    OAM_ENTRY(-11, -37, SPRITE_SIZE_8x16, 0, 525, 8, 0),
    OAM_ENTRY(48, -10, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-51, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 560, 8, 0),
    OAM_ENTRY(-56, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame15[] = {
    6,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, 0, 592, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_32x8, 0, 632, 8, 0),
    OAM_ENTRY(-4, -34, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(-11, -38, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-56, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sChandelierFallenOam_Frame16[] = {
    4,
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 593, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_8x16, 0, 595, 8, 0),
    OAM_ENTRY(-4, -35, SPRITE_SIZE_8x16, 0, 525, 8, 0),
    OAM_ENTRY(-11, -42, SPRITE_SIZE_8x8, 0, 527, 8, 0),
};

const u16 sChandelierFallenOam_Frame17[] = {
    3,
    OAM_ENTRY(-13, -24, SPRITE_SIZE_32x16, 0, 536, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_32x8, 0, 600, 8, 0),
    OAM_ENTRY(-4, -40, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sChandelierFallenOam_Frame18[] = {
    3,
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x16, 0, 539, 8, 0),
    OAM_ENTRY(-22, -8, SPRITE_SIZE_32x8, 0, 603, 8, 0),
    OAM_ENTRY(-4, -44, SPRITE_SIZE_8x8, 0, 527, 8, 0),
};

const u16 sChandelierFallenOam_Frame19[] = {
    4,
    OAM_ENTRY(-3, -26, SPRITE_SIZE_8x8, 0, 575, 8, 0),
    OAM_ENTRY(-10, -29, SPRITE_SIZE_8x8, 0, 607, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_32x8, 0, 632, 8, 0),
};

const u16 sChandelierFallenOam_Frame20[] = {
    5,
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 593, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_8x16, 0, 595, 8, 0),
    OAM_ENTRY(-17, -22, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-3, -27, SPRITE_SIZE_8x8, 0, 535, 8, 0),
    OAM_ENTRY(-7, -33, SPRITE_SIZE_8x8, 0, 533, 8, 0),
};

const u16 sChandelierFallenOam_Frame21[] = {
    4,
    OAM_ENTRY(-13, -24, SPRITE_SIZE_32x16, 0, 536, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_32x8, 0, 600, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_8x8, 0, 533, 8, 0),
    OAM_ENTRY(-17, -24, SPRITE_SIZE_8x8, 0, 543, 8, 0),
};

const u16 sChandelierFallenOam_Frame22[] = {
    4,
    OAM_ENTRY(-22, -24, SPRITE_SIZE_32x16, 0, 539, 8, 0),
    OAM_ENTRY(-22, -8, SPRITE_SIZE_32x8, 0, 603, 8, 0),
    OAM_ENTRY(-9, -28, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-15, -29, SPRITE_SIZE_8x8, 0, 533, 8, 0),
};

const u16 sChandelierFallenOam_Frame23[] = {
    4,
    OAM_ENTRY(-3, -26, SPRITE_SIZE_8x8, 0, 575, 8, 0),
    OAM_ENTRY(-10, -29, SPRITE_SIZE_8x8, 0, 607, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-15, -8, SPRITE_SIZE_32x8, 0, 632, 8, 0),
};

const u16 sChandelierFallenOam_Frame24[] = {
    3,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(1, -21, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sChandelierFallenOam_Frame25[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 561, 8, 0),
    OAM_ENTRY(0, -22, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -28, SPRITE_SIZE_8x16, 0, 525, 8, 0),
};

const u16 sChandelierFallenOam_Frame26[] = {
    2,
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 575, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sChandelierFallenOam_Frame27[] = {
    2,
    OAM_ENTRY(-8, -32, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x16, 0, 524, 8, 0),
};

const u16 sChandelierFallenOam_Frame28[] = {
    1,
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x16, 0, 525, 8, 0),
};

const u16 sChandelierFallenOam_Frame29[] = {
    1,
    OAM_ENTRY(-4, -23, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sChandelierFallenOam_Frame30[] = {
    1,
    OAM_ENTRY(-4, -26, SPRITE_SIZE_8x8, 0, 527, 8, 0),
};

const struct AnimationFrame sChandelierIdleOam[] = {
    {sChandelierIdleOam_Frame1, 8},
    {sChandelierIdleOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChandelierShakingOam[] = {
    {sChandelierIdleOam_Frame1, 6},
    {sChandelierIdleOam_Frame2, 6},
    {sChandelierShakingOam_Frame1, 6},
    {sChandelierShakingOam_Frame2, 6},
    {sChandelierIdleOam_Frame1, 6},
    {sChandelierIdleOam_Frame2, 6},
    {sChandelierShakingOam_Frame3, 6},
    {sChandelierShakingOam_Frame4, 6},
    {sChandelierIdleOam_Frame1, 6},
    {sChandelierIdleOam_Frame2, 6},
    {sChandelierShakingOam_Frame1, 6},
    {sChandelierShakingOam_Frame2, 6},
    {sChandelierIdleOam_Frame1, 6},
    {sChandelierIdleOam_Frame2, 6},
    {sChandelierShakingOam_Frame3, 6},
    {sChandelierShakingOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChandelierFallingOam[] = {
    {sChandelierIdleOam_Frame1, 5},
    {sChandelierIdleOam_Frame2, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChandelierFallenOam[] = {
    {sChandelierIdleOam_Frame1, 3},
    {sChandelierFallenOam_Frame1, 3},
    {sChandelierFallenOam_Frame2, 3},
    {sChandelierFallenOam_Frame3, 3},
    {sChandelierFallenOam_Frame4, 3},
    {sChandelierFallenOam_Frame5, 2},
    {sChandelierFallenOam_Frame6, 1},
    {sChandelierFallenOam_Frame7, 2},
    {sChandelierFallenOam_Frame8, 1},
    {sChandelierFallenOam_Frame9, 3},
    {sChandelierFallenOam_Frame10, 3},
    {sChandelierFallenOam_Frame11, 3},
    {sChandelierFallenOam_Frame12, 3},
    {sChandelierFallenOam_Frame13, 3},
    {sChandelierFallenOam_Frame14, 3},
    {sChandelierFallenOam_Frame15, 7},
    {sChandelierFallenOam_Frame16, 7},
    {sChandelierFallenOam_Frame17, 7},
    {sChandelierFallenOam_Frame18, 7},
    {sChandelierFallenOam_Frame19, 7},
    {sChandelierFallenOam_Frame20, 8},
    {sChandelierFallenOam_Frame21, 8},
    {sChandelierFallenOam_Frame22, 8},
    {sChandelierFallenOam_Frame23, 8},
    {sChandelierFallenOam_Frame20, 8},
    {sChandelierFallenOam_Frame21, 8},
    {sChandelierFallenOam_Frame22, 8},
    {sChandelierFallenOam_Frame23, 8},
    {sChandelierFallenOam_Frame20, 8},
    {sChandelierFallenOam_Frame21, 8},
    {sChandelierFallenOam_Frame22, 8},
    {sChandelierFallenOam_Frame23, 8},
    {sChandelierFallenOam_Frame20, 8},
    {sChandelierFallenOam_Frame21, 8},
    {sChandelierFallenOam_Frame22, 8},
    {sChandelierFallenOam_Frame23, 8},
    {sChandelierFallenOam_Frame20, 8},
    {sChandelierFallenOam_Frame21, 8},
    {sChandelierFallenOam_Frame22, 8},
    {sChandelierFallenOam_Frame23, 8},
    {sChandelierFallenOam_Frame24, 8},
    {sChandelierFallenOam_Frame25, 8},
    {sChandelierFallenOam_Frame26, 8},
    {sChandelierFallenOam_Frame27, 8},
    {sChandelierFallenOam_Frame28, 8},
    {sChandelierFallenOam_Frame29, 8},
    {sChandelierFallenOam_Frame30, 8},
    ANIMATION_TERMINATOR
};

void InitChandelier(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 14;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 96;
    gCurrentSprite.hitboxExtentDown = 192;
    gCurrentSprite.hitboxExtentLeft = 48;
    gCurrentSprite.hitboxExtentRight = 44;
    gCurrentSprite.pOamData = sChandelierIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work0 = 1;
    gCurrentSprite.xPosition += 32;
}

void ChandelierStartShaking(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pOamData = sChandelierShakingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.work0 = 96;
        gCurrentSprite.pose = 18;
    }
}

void ChandelierShake(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 animation asm("r2");

    sprite = &gCurrentSprite;
    animation = *(u32 *)&sprite->animationTimer;
    animation &= 0xFFFFFF;
    if (animation == 0x60001) {
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_CHANDELIER_SHAKE);
        }
    } else if (animation == 0x60009) {
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_CHANDELIER_SHAKE);
        }
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pOamData = sChandelierFallingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.work3 = 0;
        gCurrentSprite.pose = 20;
        gCurrentSprite.drawPriority = 1;
        if (gCurrentSprite.status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_CHANDELIER_FALL);
        }
    }
}

void ChandelierFall(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 yPosition asm("r1");

    sprite = &gCurrentSprite;
    yPosition = func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_3000A50 != 0) {
        sprite->yPosition = yPosition;
        sprite->pose = 49;
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_CHANDELIER_LAND);
        }
    } else {
        register u8 *indexPointer asm("ip");
        register u8 index asm("r2");
        register const s16 *velocities asm("r5");
        register const s16 *entry asm("r0");
        register u16 velocityRaw asm("r3");
        register s32 velocity asm("r1");
        register int zero asm("r6");

        indexPointer = &sprite->work3;
        index = *indexPointer;
        velocities = sChandelierFallVelocity;
        entry = (const s16 *)((index << 1) + (u32)velocities);
        velocityRaw = *(const u16 *)entry;
        zero = 0;
        /* agbcc otherwise reuses the unsigned load instead of emitting the target ldrsh. */
        asm("ldrsh %0, [%1, %2]" : "=r"(velocity) : "r"(entry), "r"(zero));
        if (velocity == 0x7FFF) {
            register u32 previousOffset asm("r1");
            register u16 currentY asm("r0");
            register u16 previousVelocity asm("r1");

            previousOffset = index - 1;
            asm("" : "+r"(previousOffset));
            previousOffset <<= 1;
            asm("" : "+r"(previousOffset));
            previousOffset += (u32)velocities;
            currentY = sprite->yPosition;
            previousVelocity = *(const u16 *)previousOffset;
            currentY += previousVelocity;
            sprite->yPosition = currentY;
        } else {
            register u8 nextIndex asm("r0");
            register u8 *pointer asm("r1");
            nextIndex = index + 1;
            pointer = indexPointer;
            *pointer = nextIndex;
            sprite->yPosition += velocityRaw;
        }
    }
}

void InitFallenChandelier(void)
{
    gCurrentSprite.drawDistanceLeftRight = 56;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 48;
    gCurrentSprite.hitboxExtentRight = 44;
    gCurrentSprite.pOamData = sChandelierFallenOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 255;
    gCurrentSprite.pose = 50;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void FallenChandelierWait(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.work0 = 25;
        gCurrentSprite.pose = 109;
    }
}

void FallenChandelierDisappear(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.status = 0;
    }
}

void SpriteChandelier(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitChandelier();
            break;
        case 16:
            ChandelierStartShaking();
            break;
        case 18:
            ChandelierShake();
            break;
        case 20:
            ChandelierFall();
            break;
        case 50:
            FallenChandelierWait();
            break;
        case 109:
            FallenChandelierDisappear();
            break;
        default:
            InitFallenChandelier();
            break;
    }
}
