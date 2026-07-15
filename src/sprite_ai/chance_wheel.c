#include "types.h"
#include "fixed_point.h"
#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_collision.h"
#include "sprite_util.h"
#include "wario.h"
#include "sprite_ai/chance_wheel.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sChanceWheelIdleOam_Frame36[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 621, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame2[] = {
    6,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame3[] = {
    8,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 620, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 589, 9, 0),
};

const u16 sChanceWheelIdleOam_Frame4[] = {
    6,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_8x8, 0, 543, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame5[] = {
    7,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_8x8, 0, 574, 10, 0),
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame6[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame7[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 622, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame8[] = {
    7,
    OAM_ENTRY(-3, -17, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 622, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 525, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame9[] = {
    7,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 592, 10, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 590, 9, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame10[] = {
    7,
    OAM_ENTRY(-4, 2, SPRITE_SIZE_8x8, 0, 589, 10, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame11[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame12[] = {
    5,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame13[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 623, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame14[] = {
    6,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame15[] = {
    7,
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 623, 9, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 591, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 622, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame16[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 590, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 622, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame17[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame18[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame19[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame20[] = {
    7,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 592, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame21[] = {
    7,
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 592, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 591, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame22[] = {
    7,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 591, 10, 0),
    OAM_ENTRY(-3, 4, SPRITE_SIZE_8x8, 0, 574, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame23[] = {
    7,
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame24[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame25[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 625, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame26[] = {
    7,
    OAM_ENTRY(-3, -17, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 625, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame27[] = {
    7,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 593, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 624, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame28[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 592, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame29[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame30[] = {
    5,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame31[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 620, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame32[] = {
    7,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 620, 9, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 588, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame33[] = {
    7,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 625, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame34[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 593, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelIdleOam_Frame35[] = {
    7,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult1Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult1Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult2Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult2Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult3Oam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult3Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult4Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult4Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult5Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult5Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult6Oam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult6Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame1[] = {
    8,
    OAM_ENTRY(-8, -1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(0, -1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(0, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame2[] = {
    8,
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-10, -11, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-11, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(2, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-9, 1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, 2, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(2, 1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame3[] = {
    8,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-12, -11, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(4, -6, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-13, -3, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-11, 3, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-3, 4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(4, 2, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame4[] = {
    8,
    OAM_ENTRY(-7, -15, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(2, -14, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-14, -10, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(5, -7, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-14, -1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-10, 5, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-1, 6, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(5, 1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame5[] = {
    8,
    OAM_ENTRY(-8, -17, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-16, -9, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(6, -9, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-16, 1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-9, 8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(0, 7, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(7, 0, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame6[] = {
    8,
    OAM_ENTRY(-11, -16, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-1, -18, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-17, -6, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(8, -11, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-16, 5, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-7, 11, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(4, 8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(9, -1, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame7[] = {
    8,
    OAM_ENTRY(-15, -15, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-5, -20, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-19, -2, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-15, 8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, 13, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(7, 7, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(9, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame8[] = {
    8,
    OAM_ENTRY(-19, -14, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-7, -23, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-22, 2, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(7, -20, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-14, 12, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(0, 17, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(11, 5, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(11, -8, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame9[] = {
    8,
    OAM_ENTRY(-23, -9, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-14, -24, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-22, 7, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(4, -24, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-11, 16, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(4, 16, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(14, 4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(14, -10, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame10[] = {
    8,
    OAM_ENTRY(-27, -5, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-20, -19, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-20, 11, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, -27, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-5, 18, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(10, 13, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(19, -4, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(11, -19, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame11[] = {
    8,
    OAM_ENTRY(-26, -2, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-22, -17, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-19, 14, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-4, 21, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(12, 13, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(18, -5, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(10, -20, SPRITE_SIZE_8x8, 0, 599, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame12[] = {
    8,
    OAM_ENTRY(-8, -27, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(-24, -17, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(-28, -1, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(-18, 15, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(-3, 21, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(13, 13, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(20, -5, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(10, -21, SPRITE_SIZE_8x8, 0, 600, 8, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame13[] = {
    8,
    OAM_ENTRY(-10, -26, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-25, -15, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-27, 1, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-16, 16, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-1, 20, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(14, 11, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(19, -7, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(8, -22, SPRITE_SIZE_8x8, 0, 600, 9, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame14[] = {
    8,
    OAM_ENTRY(-12, -25, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-24, -13, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-26, 3, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(-14, 17, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(1, 19, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(15, 9, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(18, -9, SPRITE_SIZE_8x8, 0, 600, 9, 0),
    OAM_ENTRY(7, -24, SPRITE_SIZE_8x8, 0, 600, 9, 0),
};

const u16 sChanceWheelRewardEffectOam_Frame15[] = {
    8,
    OAM_ENTRY(-12, -26, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(-24, -13, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(-26, 3, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(-14, 18, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(1, 19, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(16, 10, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(18, -9, SPRITE_SIZE_8x8, 0, 632, 9, 0),
    OAM_ENTRY(7, -24, SPRITE_SIZE_8x8, 0, 632, 9, 0),
};

const u8 sUnk_83BF986[] = {
    0x01, 0x00, 0xFC, 0x00, 0xFC, 0x01, 0x9A, 0xF0,
};

const u16 sChanceWheelResult1Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult1Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult2Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult2Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult3Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult3Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult4Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult4Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult5Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult5Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u16 sChanceWheelResult6Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 8, 0),
};

const u16 sChanceWheelResult6Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 8, 0),
};

const u8 sChanceWheelRawData_83BFAA2[] = {
    0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x0C, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00,
    0xF8, 0x80, 0xFC, 0x01, 0x0D, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80,
    0xFC, 0x01, 0x0E, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01,
    0x0F, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x10, 0x92,
    0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x11, 0x92, 0xF0, 0x80,
    0xF8, 0x81, 0x00, 0x82, 0x03, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x92, 0x00, 0x80, 0x10, 0x00,
    0x82, 0x92, 0x10, 0x40, 0x00, 0x40, 0x59, 0x92, 0x03, 0x00, 0x00, 0x00, 0x00, 0x40, 0x83, 0x92,
    0x00, 0x80, 0x10, 0x00, 0x85, 0x92, 0x10, 0x40, 0xF8, 0x41, 0x5C, 0x92, 0x03, 0x00, 0x00, 0x00,
    0x00, 0x40, 0x86, 0xA2, 0x00, 0x80, 0x10, 0x00, 0x88, 0xA2, 0x10, 0x40, 0x00, 0x40, 0x79, 0xA2,
    0x03, 0x00, 0x00, 0x00, 0x00, 0x40, 0x89, 0x92, 0x00, 0x80, 0x10, 0x00, 0x8B, 0x92, 0x10, 0x40,
    0xF8, 0x41, 0x7C, 0x92, 0x03, 0x00, 0x00, 0x00, 0x00, 0x40, 0x8C, 0x92, 0x00, 0x80, 0x10, 0x00,
    0x8E, 0x92, 0x10, 0x40, 0x00, 0x40, 0x99, 0x92, 0x03, 0x00, 0x00, 0x00, 0x00, 0x40, 0x8F, 0x92,
    0x00, 0x80, 0x10, 0x00, 0x91, 0x92, 0x10, 0x40, 0xF8, 0x41, 0x9C, 0x92, 0x02, 0x00, 0x00, 0x40,
    0x00, 0x80, 0x92, 0x92, 0x10, 0x40, 0x00, 0x40, 0xB9, 0x92, 0x02, 0x00, 0x00, 0x40, 0xF8, 0x81,
    0x95, 0x92, 0x10, 0x40, 0xF8, 0x41, 0xBC, 0x92, 0x00, 0x00,
};

const struct AnimationFrame sChanceWheelIdleOam[] = {
    {sChanceWheelIdleOam_Frame1, 3},
    {sChanceWheelIdleOam_Frame2, 3},
    {sChanceWheelIdleOam_Frame3, 3},
    {sChanceWheelIdleOam_Frame4, 3},
    {sChanceWheelIdleOam_Frame5, 1},
    {sChanceWheelIdleOam_Frame6, 3},
    {sChanceWheelIdleOam_Frame7, 3},
    {sChanceWheelIdleOam_Frame8, 3},
    {sChanceWheelIdleOam_Frame9, 3},
    {sChanceWheelIdleOam_Frame10, 3},
    {sChanceWheelIdleOam_Frame11, 1},
    {sChanceWheelIdleOam_Frame12, 3},
    {sChanceWheelIdleOam_Frame13, 3},
    {sChanceWheelIdleOam_Frame14, 3},
    {sChanceWheelIdleOam_Frame15, 3},
    {sChanceWheelIdleOam_Frame16, 3},
    {sChanceWheelIdleOam_Frame17, 1},
    {sChanceWheelIdleOam_Frame18, 3},
    {sChanceWheelIdleOam_Frame19, 3},
    {sChanceWheelIdleOam_Frame20, 3},
    {sChanceWheelIdleOam_Frame21, 3},
    {sChanceWheelIdleOam_Frame22, 3},
    {sChanceWheelIdleOam_Frame23, 1},
    {sChanceWheelIdleOam_Frame24, 3},
    {sChanceWheelIdleOam_Frame25, 3},
    {sChanceWheelIdleOam_Frame26, 3},
    {sChanceWheelIdleOam_Frame27, 3},
    {sChanceWheelIdleOam_Frame28, 3},
    {sChanceWheelIdleOam_Frame29, 1},
    {sChanceWheelIdleOam_Frame30, 3},
    {sChanceWheelIdleOam_Frame31, 3},
    {sChanceWheelIdleOam_Frame32, 3},
    {sChanceWheelIdleOam_Frame33, 3},
    {sChanceWheelIdleOam_Frame34, 3},
    {sChanceWheelIdleOam_Frame35, 1},
    {sChanceWheelIdleOam_Frame36, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult1Oam[] = {
    {sChanceWheelIdleOam_Frame36, 2},
    {sChanceWheelResult1Oam_Frame1, 2},
    {sChanceWheelResult1Oam_Frame2, 2},
    {sChanceWheelResult1Oam_Frame3, 1},
    {sChanceWheelResult1Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult2Oam[] = {
    {sChanceWheelIdleOam_Frame6, 2},
    {sChanceWheelResult2Oam_Frame1, 2},
    {sChanceWheelResult2Oam_Frame2, 2},
    {sChanceWheelResult2Oam_Frame3, 1},
    {sChanceWheelResult2Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult3Oam[] = {
    {sChanceWheelIdleOam_Frame12, 2},
    {sChanceWheelResult3Oam_Frame1, 2},
    {sChanceWheelResult3Oam_Frame2, 2},
    {sChanceWheelResult3Oam_Frame3, 1},
    {sChanceWheelResult3Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult4Oam[] = {
    {sChanceWheelIdleOam_Frame18, 2},
    {sChanceWheelResult4Oam_Frame1, 2},
    {sChanceWheelResult4Oam_Frame2, 2},
    {sChanceWheelResult4Oam_Frame3, 1},
    {sChanceWheelResult4Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult5Oam[] = {
    {sChanceWheelIdleOam_Frame24, 2},
    {sChanceWheelResult5Oam_Frame1, 2},
    {sChanceWheelResult5Oam_Frame2, 2},
    {sChanceWheelResult5Oam_Frame3, 1},
    {sChanceWheelResult5Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelResult6Oam[] = {
    {sChanceWheelIdleOam_Frame30, 2},
    {sChanceWheelResult6Oam_Frame1, 2},
    {sChanceWheelResult6Oam_Frame2, 2},
    {sChanceWheelResult6Oam_Frame3, 1},
    {sChanceWheelResult6Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sChanceWheelRewardEffectOam[] = {
    {sChanceWheelRewardEffectOam_Frame1, 2},
    {sChanceWheelRewardEffectOam_Frame2, 2},
    {sChanceWheelRewardEffectOam_Frame3, 2},
    {sChanceWheelRewardEffectOam_Frame4, 2},
    {sChanceWheelRewardEffectOam_Frame5, 2},
    {sChanceWheelRewardEffectOam_Frame6, 2},
    {sChanceWheelRewardEffectOam_Frame7, 2},
    {sChanceWheelRewardEffectOam_Frame8, 2},
    {sChanceWheelRewardEffectOam_Frame9, 2},
    {sChanceWheelRewardEffectOam_Frame10, 2},
    {sChanceWheelRewardEffectOam_Frame11, 2},
    {sChanceWheelRewardEffectOam_Frame12, 2},
    {sChanceWheelRewardEffectOam_Frame13, 2},
    {sChanceWheelRewardEffectOam_Frame14, 2},
    {sChanceWheelRewardEffectOam_Frame15, 2},
    ANIMATION_TERMINATOR
};

const u8 sChanceWheelRawData_83BFE54[] = {
    0xA2, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xB0, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBE, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xCC, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xDA, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xE8, 0xFA, 0x3B, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const u16 sGoalBlockIdleOam_Frame36[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 621, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame2[] = {
    6,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame3[] = {
    8,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 620, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 589, 9, 0),
};

const u16 sGoalBlockIdleOam_Frame4[] = {
    6,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_8x8, 0, 543, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame5[] = {
    7,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_8x8, 0, 574, 10, 0),
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame6[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame7[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 622, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame8[] = {
    7,
    OAM_ENTRY(-3, -17, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 622, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 525, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 557, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame9[] = {
    7,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 592, 10, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 590, 9, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_8x8, 0, 589, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame10[] = {
    7,
    OAM_ENTRY(-4, 2, SPRITE_SIZE_8x8, 0, 589, 10, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame11[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame12[] = {
    5,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame13[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 623, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame14[] = {
    6,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 558, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame15[] = {
    7,
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 623, 9, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 591, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 622, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame16[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 590, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 622, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame17[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame18[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame19[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame20[] = {
    7,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 559, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 592, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame21[] = {
    7,
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 624, 9, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 592, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 591, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame22[] = {
    7,
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 591, 10, 0),
    OAM_ENTRY(-3, 4, SPRITE_SIZE_8x8, 0, 574, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame23[] = {
    7,
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 542, 10, 0),
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame24[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame25[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 625, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame26[] = {
    7,
    OAM_ENTRY(-3, -17, SPRITE_SIZE_8x8, 0, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 625, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 560, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame27[] = {
    7,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 593, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 624, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame28[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 592, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame29[] = {
    7,
    OAM_ENTRY(-3, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame30[] = {
    5,
    OAM_ENTRY(-3, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame31[] = {
    5,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 620, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame32[] = {
    7,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 620, 9, 0),
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 588, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, 0, 561, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 516, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame33[] = {
    7,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 625, 10, 0),
    OAM_ENTRY(-4, -1, SPRITE_SIZE_8x8, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 518, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame34[] = {
    7,
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 1, SPRITE_SIZE_8x8, 0, 593, 10, 0),
    OAM_ENTRY(-4, 6, SPRITE_SIZE_8x8, 0, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockIdleOam_Frame35[] = {
    7,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 562, 10, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x8, 0, 524, 9, 0),
    OAM_ENTRY(-4, -2, SPRITE_SIZE_8x8, 0, 556, 9, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 575, 10, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 522, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult1Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult1Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult2Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult2Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult3Oam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult3Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult4Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult4Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult5Oam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult5Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult6Oam_Frame1[] = {
    5,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 567, 10, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult6Oam_Frame2[] = {
    5,
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 9, 0),
    OAM_ENTRY(-4, -10, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 16, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u8 sChanceWheelRawData_83C05C8[] = {
    0x08, 0x00, 0xFF, 0x00, 0xF8, 0x01, 0x57, 0x82, 0xF8, 0x00, 0xF8, 0x01, 0x57, 0x82, 0xF8, 0x00,
    0xFC, 0x01, 0x57, 0x82, 0xF8, 0x00, 0x00, 0x00, 0x57, 0x82, 0xFF, 0x00, 0xFC, 0x01, 0x57, 0x82,
    0xFF, 0x00, 0x00, 0x00, 0x57, 0x82, 0xFC, 0x00, 0x00, 0x00, 0x57, 0x82, 0xFC, 0x00, 0xF8, 0x01,
    0x57, 0x82, 0x08, 0x00, 0xF4, 0x00, 0xFC, 0x01, 0x57, 0x82, 0xF6, 0x00, 0x02, 0x00, 0x57, 0x82,
    0xF5, 0x00, 0xF6, 0x01, 0x57, 0x82, 0xFC, 0x00, 0xF5, 0x01, 0x57, 0x82, 0xFC, 0x00, 0x02, 0x00,
    0x57, 0x82, 0x01, 0x00, 0xF7, 0x01, 0x57, 0x82, 0x02, 0x00, 0xFC, 0x01, 0x57, 0x82, 0x01, 0x00,
    0x02, 0x00, 0x57, 0x82, 0x08, 0x00, 0xF2, 0x00, 0xFB, 0x01, 0x57, 0x82, 0xF3, 0x00, 0x03, 0x00,
    0x57, 0x82, 0xF5, 0x00, 0xF4, 0x01, 0x57, 0x82, 0xFA, 0x00, 0x04, 0x00, 0x57, 0x82, 0xFD, 0x00,
    0xF3, 0x01, 0x57, 0x82, 0x03, 0x00, 0xF5, 0x01, 0x57, 0x82, 0x04, 0x00, 0xFD, 0x01, 0x57, 0x82,
    0x02, 0x00, 0x04, 0x00, 0x57, 0x82, 0x08, 0x00, 0xF1, 0x00, 0xF9, 0x01, 0x57, 0x82, 0xF2, 0x00,
    0x02, 0x00, 0x57, 0x82, 0xF6, 0x00, 0xF2, 0x01, 0x57, 0x82, 0xF9, 0x00, 0x05, 0x00, 0x57, 0x82,
    0xFF, 0x00, 0xF2, 0x01, 0x57, 0x82, 0x05, 0x00, 0xF6, 0x01, 0x57, 0x82, 0x06, 0x00, 0xFF, 0x01,
    0x57, 0x82, 0x01, 0x00, 0x05, 0x00, 0x57, 0x82, 0x08, 0x00, 0xEF, 0x00, 0xF8, 0x01, 0x57, 0x82,
    0xF0, 0x00, 0x01, 0x00, 0x57, 0x82, 0xF7, 0x00, 0xF0, 0x01, 0x57, 0x82, 0xF7, 0x00, 0x06, 0x00,
    0x57, 0x82, 0x01, 0x00, 0xF0, 0x01, 0x57, 0x82, 0x08, 0x00, 0xF7, 0x01, 0x57, 0x82, 0x07, 0x00,
    0x00, 0x00, 0x57, 0x82, 0x00, 0x00, 0x07, 0x00, 0x57, 0x82, 0x08, 0x00, 0xF0, 0x00, 0xF5, 0x01,
    0x57, 0x82, 0xEE, 0x00, 0xFF, 0x01, 0x57, 0x82, 0xFA, 0x00, 0xEF, 0x01, 0x57, 0x82, 0xF5, 0x00,
    0x08, 0x00, 0x57, 0x82, 0x05, 0x00, 0xF0, 0x01, 0x57, 0x82, 0x0B, 0x00, 0xF9, 0x01, 0x57, 0x82,
    0x08, 0x00, 0x04, 0x00, 0x57, 0x82, 0xFF, 0x00, 0x09, 0x00, 0x57, 0x82, 0x08, 0x00, 0xF1, 0x00,
    0xF1, 0x01, 0x57, 0x82, 0xEC, 0x00, 0xFB, 0x01, 0x57, 0x82, 0xFE, 0x00, 0xED, 0x01, 0x57, 0x82,
    0xF1, 0x00, 0x07, 0x00, 0x57, 0x82, 0x08, 0x00, 0xF1, 0x01, 0x57, 0x82, 0x0D, 0x00, 0xFC, 0x01,
    0x57, 0x82, 0x07, 0x00, 0x07, 0x00, 0x57, 0x82, 0xFC, 0x00, 0x09, 0x00, 0x57, 0x82, 0x08, 0x00,
    0xF2, 0x00, 0xED, 0x01, 0x57, 0x82, 0xE9, 0x00, 0xF9, 0x01, 0x57, 0x82, 0x02, 0x00, 0xEA, 0x01,
    0x57, 0x82, 0xEC, 0x00, 0x07, 0x00, 0x57, 0x82, 0x0C, 0x00, 0xF2, 0x01, 0x57, 0x82, 0x11, 0x00,
    0x00, 0x00, 0x57, 0x82, 0x05, 0x00, 0x0B, 0x00, 0x57, 0x82, 0xF8, 0x00, 0x0B, 0x00, 0x57, 0x82,
    0x08, 0x00, 0xF7, 0x00, 0xE9, 0x01, 0x57, 0x82, 0xE8, 0x00, 0xF2, 0x01, 0x57, 0x82, 0x07, 0x00,
    0xEA, 0x01, 0x57, 0x82, 0xE8, 0x00, 0x04, 0x00, 0x57, 0x82, 0x10, 0x00, 0xF5, 0x01, 0x57, 0x82,
    0x10, 0x00, 0x04, 0x00, 0x57, 0x82, 0x04, 0x00, 0x0E, 0x00, 0x57, 0x82, 0xF6, 0x00, 0x0E, 0x00,
    0x57, 0x82, 0x08, 0x00, 0xFB, 0x00, 0xE5, 0x01, 0x57, 0x82, 0xED, 0x00, 0xEC, 0x01, 0x57, 0x82,
    0x0B, 0x00, 0xEC, 0x01, 0x57, 0x82, 0xE5, 0x00, 0xFC, 0x01, 0x57, 0x82, 0x12, 0x00, 0xFB, 0x01,
    0x57, 0x82, 0x0D, 0x00, 0x0A, 0x00, 0x57, 0x82, 0xFC, 0x00, 0x13, 0x00, 0x57, 0x82, 0xED, 0x00,
    0x0B, 0x00, 0x57, 0x82, 0x08, 0x00, 0xFE, 0x00, 0xE6, 0x01, 0x57, 0x82, 0xEF, 0x00, 0xEA, 0x01,
    0x57, 0x82, 0x0E, 0x00, 0xED, 0x01, 0x57, 0x82, 0xE5, 0x00, 0xFA, 0x01, 0x57, 0x82, 0x15, 0x00,
    0xFC, 0x01, 0x57, 0x82, 0x0D, 0x00, 0x0C, 0x00, 0x57, 0x82, 0xFB, 0x00, 0x12, 0x00, 0x57, 0x82,
    0xEC, 0x00, 0x0A, 0x00, 0x57, 0x82, 0x08, 0x00, 0xE5, 0x00, 0xF8, 0x01, 0x58, 0x82, 0xEF, 0x00,
    0xE8, 0x01, 0x58, 0x82, 0xFF, 0x00, 0xE4, 0x01, 0x58, 0x82, 0x0F, 0x00, 0xEE, 0x01, 0x58, 0x82,
    0x15, 0x00, 0xFD, 0x01, 0x58, 0x82, 0x0D, 0x00, 0x0D, 0x00, 0x58, 0x82, 0xFB, 0x00, 0x14, 0x00,
    0x58, 0x82, 0xEB, 0x00, 0x0A, 0x00, 0x58, 0x82, 0x08, 0x00, 0xE6, 0x00, 0xF6, 0x01, 0x58, 0x92,
    0xF1, 0x00, 0xE7, 0x01, 0x58, 0x92, 0x01, 0x00, 0xE5, 0x01, 0x58, 0x92, 0x10, 0x00, 0xF0, 0x01,
    0x58, 0x92, 0x14, 0x00, 0xFF, 0x01, 0x58, 0x92, 0x0B, 0x00, 0x0E, 0x00, 0x58, 0x92, 0xF9, 0x00,
    0x13, 0x00, 0x58, 0x92, 0xEA, 0x00, 0x08, 0x00, 0x58, 0x92, 0x08, 0x00, 0xE7, 0x00, 0xF4, 0x01,
    0x58, 0x92, 0xF3, 0x00, 0xE8, 0x01, 0x58, 0x92, 0x03, 0x00, 0xE6, 0x01, 0x58, 0x92, 0x11, 0x00,
    0xF2, 0x01, 0x58, 0x92, 0x13, 0x00, 0x01, 0x00, 0x58, 0x92, 0x09, 0x00, 0x0F, 0x00, 0x58, 0x92,
    0xF7, 0x00, 0x12, 0x00, 0x58, 0x92, 0xE8, 0x00, 0x07, 0x00, 0x58, 0x92, 0x08, 0x00, 0xE6, 0x00,
    0xF4, 0x01, 0x78, 0x92, 0xF3, 0x00, 0xE8, 0x01, 0x78, 0x92, 0x03, 0x00, 0xE6, 0x01, 0x78, 0x92,
    0x12, 0x00, 0xF2, 0x01, 0x78, 0x92, 0x13, 0x00, 0x01, 0x00, 0x78, 0x92, 0x0A, 0x00, 0x10, 0x00,
    0x78, 0x92, 0xF7, 0x00, 0x12, 0x00, 0x78, 0x92, 0xE8, 0x00, 0x07, 0x00, 0x78, 0x92, 0x01, 0x00,
    0xFC, 0x00, 0xFB, 0x01, 0x77, 0xF2,
};

const u16 sGoalBlockResult1Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult1Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 524, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult2Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult2Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 525, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult3Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult3Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 526, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult4Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult4Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 527, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult5Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult5Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 528, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u16 sGoalBlockResult6Oam_Frame3[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_16x8, 0, 535, 10, 0),
};

const u16 sGoalBlockResult6Oam_Frame4[] = {
    3,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 529, 9, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 531, 10, 0),
};

const u8 sChanceWheelRawData_83C09D2[] = {
    0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x0C, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00,
    0xF8, 0x80, 0xFC, 0x01, 0x0D, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80,
    0xFC, 0x01, 0x0E, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01,
    0x0F, 0x92, 0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x10, 0x92,
    0xF0, 0x80, 0xF8, 0x81, 0x00, 0x82, 0x02, 0x00, 0xF8, 0x80, 0xFC, 0x01, 0x11, 0x92, 0xF0, 0x80,
    0xF8, 0x81, 0x00, 0x82, 0x00, 0x00,
};

const struct AnimationFrame sGoalBlockIdleOam[] = {
    {sGoalBlockIdleOam_Frame1, 3},
    {sGoalBlockIdleOam_Frame2, 3},
    {sGoalBlockIdleOam_Frame3, 3},
    {sGoalBlockIdleOam_Frame4, 3},
    {sGoalBlockIdleOam_Frame5, 1},
    {sGoalBlockIdleOam_Frame6, 3},
    {sGoalBlockIdleOam_Frame7, 3},
    {sGoalBlockIdleOam_Frame8, 3},
    {sGoalBlockIdleOam_Frame9, 3},
    {sGoalBlockIdleOam_Frame10, 3},
    {sGoalBlockIdleOam_Frame11, 1},
    {sGoalBlockIdleOam_Frame12, 3},
    {sGoalBlockIdleOam_Frame13, 3},
    {sGoalBlockIdleOam_Frame14, 3},
    {sGoalBlockIdleOam_Frame15, 3},
    {sGoalBlockIdleOam_Frame16, 3},
    {sGoalBlockIdleOam_Frame17, 1},
    {sGoalBlockIdleOam_Frame18, 3},
    {sGoalBlockIdleOam_Frame19, 3},
    {sGoalBlockIdleOam_Frame20, 3},
    {sGoalBlockIdleOam_Frame21, 3},
    {sGoalBlockIdleOam_Frame22, 3},
    {sGoalBlockIdleOam_Frame23, 1},
    {sGoalBlockIdleOam_Frame24, 3},
    {sGoalBlockIdleOam_Frame25, 3},
    {sGoalBlockIdleOam_Frame26, 3},
    {sGoalBlockIdleOam_Frame27, 3},
    {sGoalBlockIdleOam_Frame28, 3},
    {sGoalBlockIdleOam_Frame29, 1},
    {sGoalBlockIdleOam_Frame30, 3},
    {sGoalBlockIdleOam_Frame31, 3},
    {sGoalBlockIdleOam_Frame32, 3},
    {sGoalBlockIdleOam_Frame33, 3},
    {sGoalBlockIdleOam_Frame34, 3},
    {sGoalBlockIdleOam_Frame35, 1},
    {sGoalBlockIdleOam_Frame36, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult1Oam[] = {
    {sGoalBlockIdleOam_Frame36, 2},
    {sGoalBlockResult1Oam_Frame1, 2},
    {sGoalBlockResult1Oam_Frame2, 2},
    {sGoalBlockResult1Oam_Frame3, 1},
    {sGoalBlockResult1Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult2Oam[] = {
    {sGoalBlockIdleOam_Frame6, 2},
    {sGoalBlockResult2Oam_Frame1, 2},
    {sGoalBlockResult2Oam_Frame2, 2},
    {sGoalBlockResult2Oam_Frame3, 1},
    {sGoalBlockResult2Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult3Oam[] = {
    {sGoalBlockIdleOam_Frame12, 2},
    {sGoalBlockResult3Oam_Frame1, 2},
    {sGoalBlockResult3Oam_Frame2, 2},
    {sGoalBlockResult3Oam_Frame3, 1},
    {sGoalBlockResult3Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult4Oam[] = {
    {sGoalBlockIdleOam_Frame18, 2},
    {sGoalBlockResult4Oam_Frame1, 2},
    {sGoalBlockResult4Oam_Frame2, 2},
    {sGoalBlockResult4Oam_Frame3, 1},
    {sGoalBlockResult4Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult5Oam[] = {
    {sGoalBlockIdleOam_Frame24, 2},
    {sGoalBlockResult5Oam_Frame1, 2},
    {sGoalBlockResult5Oam_Frame2, 2},
    {sGoalBlockResult5Oam_Frame3, 1},
    {sGoalBlockResult5Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoalBlockResult6Oam[] = {
    {sGoalBlockIdleOam_Frame30, 2},
    {sGoalBlockResult6Oam_Frame1, 2},
    {sGoalBlockResult6Oam_Frame2, 2},
    {sGoalBlockResult6Oam_Frame3, 1},
    {sGoalBlockResult6Oam_Frame4, 200},
    ANIMATION_TERMINATOR
};

void ClearChanceWheelRewardSprites(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register struct PrimarySpriteData* end asm("r4");
    register u16 exists asm("r3");
    register u16 status asm("r1");
    register u16 check asm("r0");
    register int id asm("r0");
    register u16 zero asm("r0");

    sprite = gSpriteData;
    end = (struct PrimarySpriteData*)((u8*)sprite + 253 * 4);
    exists = SPRITE_STATUS_EXISTS;
    do {
        status = sprite->status;
        /* Keep the loaded status in r1 so agbcc emits the target AND operand order. */
        asm("" : "+r"(status));
        check = exists;
        check &= status;
        if (check != 0) {
            id = sprite->globalID;
            switch (id) {
                case PSPRITE_COIN_10POINTS:
                case PSPRITE_COIN_50POINTS:
                case PSPRITE_COIN_100POINTS:
                case PSPRITE_COIN_500POINTS:
                case PSPRITE_COIN_1000POINTS:
                case PSPRITE_DICE:
                case PSPRITE_CHANCE_WHEEL_DIAMOND:
                    goto clear;
                default:
                    goto next;
            }
clear:
            zero = 0;
            /* Keep zero in r0 for the target halfword store. */
            asm("" : "+r"(zero));
            sprite->status = zero;
        }
next:
        sprite++;
    } while ((s32)sprite <= (s32)end);
}

void TransformWarioFromChanceWheel(void)
{
    switch (gCurrentRoom) {
        case 1:
        case 7:
        case 8:
            SpriteCollisionTransformWarioFlaming();
            break;
        case 2:
        case 3:
            SpriteCollisionTransformWarioFat();
            break;
        case 4:
            SpriteCollisionTransformWarioFlat();
            break;
        case 5:
            SpriteCollisionTransformWarioBouncy();
            break;
    }
}

void PlayChanceWheelSpaceSound(void)
{
    register struct ChanceWheelSecondarySprite* secondary asm("r1");
    register struct ChanceWheelSecondarySprite* saved asm("r4");
    register struct ChanceWheelSecondarySprite* previous asm("r2");
    register int space asm("r5");
    register int i asm("r3");

    space = 0;
    i = 0;
    secondary = gSecondarySpriteData;
    saved = secondary;
    do {
        previous = saved;
        if (secondary->status != 0 && secondary->id == 81) {
            space = sBigBoardSpaces[saved->animationTimer];
            break;
        }
        secondary++;
        saved = previous;
        saved++;
        i++;
    } while (i <= 7);

    switch (space) {
        case 4:
            m4aSongNumStart(SE_THUNDER);
            break;
        case 1:
            m4aSongNumStart(SE_CHANCE_WHEEL_SWITCH_REWARD_ALT);
            break;
        case 2:
        case 3:
        case 5:
        case 6:
        case 7:
            break;
    }
}

void ApplyChanceWheelReward(void)
{
    register struct ChanceWheelSecondarySprite* secondary asm("r1");
    register struct ChanceWheelSecondarySprite* saved asm("r4");
    register struct ChanceWheelSecondarySprite* previous asm("r2");
    register int y asm("r6");
    register int x asm("r5");
    int space;
    register int i asm("r3");
    register u32 spawnY asm("r3");

    y = gCurrentSprite.yPosition;
    x = gCurrentSprite.xPosition;
    space = 0;
    i = 0;
    secondary = gSecondarySpriteData;
    saved = secondary;
    do {
        previous = saved;
        if (secondary->status != 0 && secondary->id == 81) {
            space = sBigBoardSpaces[saved->animationTimer];
            break;
        }
        secondary++;
        saved = previous;
        saved++;
        i++;
    } while (i <= 7);

    switch (space) {
        case 2:
            m4aSongNumStart(SE_CHANCE_WHEEL_DIAMOND_REWARD);
            if (gCurrentSprite.globalID == PSPRITE_GOAL_BLOCK) {
                spawnY = y;
                spawnY -= 64;
                SpriteSpawnAsChild(PSPRITE_CHANCE_WHEEL_DIAMOND, 0, 0, spawnY, x);
            } else {
                SpriteSpawnAsChild(PSPRITE_CHANCE_WHEEL_DIAMOND, 0, 0, y, x);
            }
            break;
        case 6:
            gHeartMeter.filling++;
            if (gHeartMeter.current + gHeartMeter.filling > 8) {
                gHeartMeter.filling = 8 - gHeartMeter.current;
            }
            gHeartMeter.unk_2 = gHeartMeter.filling * 8;
            gHeartMeter.unk_3 = 0;
            m4aSongNumStart(SE_GET_HEART);
            break;
        case 3:
            m4aSongNumStart(SE_CHANCE_WHEEL_DICE_REWARD);
            if (gCurrentSprite.globalID == PSPRITE_GOAL_BLOCK) {
                spawnY = y;
                spawnY += 72;
            } else {
                spawnY = y;
                spawnY += 64;
            }
            SpriteSpawnAsChild(PSPRITE_DICE, 0, 6, spawnY, x);
            SpriteSpawnAsChild(PSPRITE_DICE, 0, 6, y, x + 80);
            {
                register int spawnX asm("r0");

                spawnX = x;
                spawnX -= 80;
                SpriteSpawnAsChild(PSPRITE_DICE, 0, 6, y, spawnX);
            }
            break;
        case 4:
            gUnk_3000044 = 5;
            WarioRequestPose(19);
            ScoreGiveOrDropCoins(-40);
            break;
        case 5:
            m4aSongNumStart(SE_CHANCE_WHEEL_SWITCH_REWARD);
            gSwitchStates[1] |= 2;
            break;
        case 7:
            m4aSongNumStart(SE_CHANCE_WHEEL_TRANSFORMATION_REWARD);
            TransformWarioFromChanceWheel();
            break;
        case 1:
            gSwitchStates[2] |= 2;
            break;
    }
}

int IsChanceWheelResultReady(void)
{
    register struct ChanceWheelSecondarySprite* secondary asm("r1");
    register int i asm("r2");
    register int value asm("r0");

    i = 0;
    secondary = gSecondarySpriteData;
loop:
    value = secondary->status;
    if (value == 0) {
        goto next;
    }
    value = secondary->id;
    if (value != 81) {
        goto next;
    }
    value = secondary->pose;
    if (value == 5) {
        return TRUE;
    }
next:
    secondary++;
    i++;
    if (i <= 7) {
        goto loop;
    }
    return FALSE;
}

void SetChanceWheelSecondaryResult(u8 value)
{
    register struct ChanceWheelSecondarySprite* secondary asm("r1");
    register int i asm("r2");
    register u8 work asm("r3");
    register u8 timer asm("r4");
    register int check asm("r0");

    work = value;
    i = 0;
    timer = 40;
    secondary = gSecondarySpriteData;
loop:
    check = secondary->status;
    if (check == 0) {
        goto next;
    }
    check = secondary->id;
    if (check != 81) {
        goto next;
    }
    secondary->work0 = work;
    secondary->timer = timer;
    goto end;
next:
    secondary++;
    i++;
    if (i <= 7) {
        goto loop;
    }
end:
    return;
}

void CheckWarioNearChanceWheel(void)
{
    register int warioY asm("r4");
    register int warioX asm("r2");
    register int spriteY asm("r3");
    register int spriteX asm("r1");
    register int bound asm("r0");

    if (gWarioData.reaction == 0) {
        warioY = gWarioData.yPosition;
        warioX = gWarioData.xPosition;
        spriteY = gCurrentSprite.yPosition;
        spriteX = gCurrentSprite.xPosition;

        bound = spriteX;
        bound -= 130;
        if (bound >= warioX) {
            return;
        }

        /* Preserve spriteX in r1 across the first bounds check. */
        asm("" : "+r"(spriteX));
        bound = spriteX;
        bound += 130;
        if (bound <= warioX) {
            return;
        }

        bound = spriteY + 330;
        if (bound <= warioY) {
            return;
        }

        /* Preserve spriteY in r3 across the upper bounds check. */
        asm("" : "+r"(spriteY));
        bound = spriteY;
        bound -= 64;
        if (bound >= warioY) {
            return;
        }

        gUnk_3000038 = 1;
    }
}

void InitChanceWheel(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.drawPriority |= 0x80;
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 64;
    gCurrentSprite.hitboxExtentLeft = 28;
    gCurrentSprite.hitboxExtentRight = 24;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
        gCurrentSprite.pOamData = sChanceWheelIdleOam;
    } else {
        gCurrentSprite.pOamData = sGoalBlockIdleOam;
    }
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = 54;
    gCurrentSprite.xPosition += 32;
    gCurrentSprite.yPosition -= 64;
    func_80269EC();
}

void StartChanceWheelResult(void)
{
    int value;
    int result;

    gCurrentSprite.pose = 109;
    gCurrentSprite.warioCollision = 0;
    gCurrentSprite.work0 = 9;
    gCurrentSprite.work3 = 0;
    value = gCurrentSprite.animationTimer / 6;
    gCurrentSprite.work2 = value;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    value = gCurrentSprite.work2;

    switch (value) {
        case 0:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult2Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult2Oam;
            }
            result = 2;
            break;
        case 1:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult3Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult3Oam;
            }
            result = 3;
            break;
        case 2:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult4Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult4Oam;
            }
            result = 4;
            break;
        case 3:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult5Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult5Oam;
            }
            result = 5;
            break;
        case 4:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult6Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult6Oam;
            }
            result = 6;
            break;
        default:
            if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
                gCurrentSprite.pOamData = sChanceWheelResult1Oam;
            } else {
                gCurrentSprite.pOamData = sGoalBlockResult1Oam;
            }
            result = 1;
            break;
    }

    SetChanceWheelSecondaryResult(result);
    m4aSongNumStart(SE_CHANCE_WHEEL_STOP);
    if (gCurrentSprite.globalID == PSPRITE_CHANCE_WHEEL) {
        gCurrentSprite.health = 0;
        gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
        func_8026A54();
    } else {
        ClearChanceWheelRewardSprites();
    }
}

void ChanceWheelDropToResult(void)
{
    u8 index;
    s16 movement;

    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        index = gCurrentSprite.work3;
        movement = sChanceWheelDropYVelocity[index];
        if (movement == 0x7FFF) {
            gCurrentSprite.yPosition = sChanceWheelDropYVelocity[index - 1] + gCurrentSprite.yPosition;
        } else {
            gCurrentSprite.work3 = index + 1;
            gCurrentSprite.yPosition += movement;
        }
    } else {
        gCurrentSprite.pose = 111;
        gWarioPauseTimer = 1000;
    }
}

void FinishChanceWheelResult(void)
{
    register u8* ptr asm("r1");
    register struct PrimarySpriteData* sprite asm("r4");
    register int value asm("r5");
    register int i asm("r2");

    ptr = (u8*)&gCurrentSprite;
    ((struct PrimarySpriteData*)ptr)->disableWarioCollisionTimer = 1;
    ((struct PrimarySpriteData*)ptr)->currentAnimationFrame--;
    value = 1;
    sprite = (struct PrimarySpriteData*)ptr;
    ptr = (u8*)gSecondarySpriteData;
    i = 7;
    do {
        if (ptr[0] != 0 && ptr[2] == 81) {
            value = ptr[1];
        }
        ptr += sizeof(struct ChanceWheelSecondarySprite);
        i--;
    } while (i >= 0);

    if (value != 0) {
        return;
    }

    sprite->work0 = 90;
    sprite->work3 = value;
    if (sprite->globalID == PSPRITE_GOAL_BLOCK) {
        if (IsChanceWheelResultReady()) {
            sprite->pose = 117;
            sprite->health = value;
            gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = PERSISTENT_STATUS_DESPAWNED;
            func_8026A54();
        } else {
            sprite->pose = 115;
        }
    } else {
        sprite->pose = 113;
    }
}

void ChanceWheelShrink(void)
{
    u8 timer;

    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.currentAnimationFrame--;
    gCurrentSprite.work0--;
    timer = gCurrentSprite.work0;
    if (timer > 60) {
        if (timer == 62) {
            PlayChanceWheelSpaceSound();
        }
    } else {
        if (timer == 0) {
            gCurrentSprite.status = 0;
        } else {
            if (timer == 19) {
                gWarioPauseTimer = 0;
                SpriteSpawnAsChild(PSPRITE_A2, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
            } else if (timer == 16) {
                ApplyChanceWheelReward();
            }
            {
                register struct PrimarySpriteData* sprite asm("r5");
                register s32 scale asm("r6");
                register s32 sine asm("r4");
                register s32 cosine asm("r8");
                register u8* work3 asm("r1");

                sprite = &gCurrentSprite;
                work3 = &sprite->work3;
                *work3 -= 4;
                scale = *work3;
                sprite->status |= SPRITE_STATUS_AFFINE;
                cosine = COS(0);
                sprite->affinePA = FixedMul(cosine, FixedInverse(scale));
                sine = SIN(0);
                sprite->affinePB = FixedMul(sine, FixedInverse(scale));
                sine = -sine;
                sprite->affinePC = FixedMul(sine, FixedInverse(scale));
                sprite->affinePD = FixedMul(cosine, FixedInverse(scale));
            }
        }
    }
}

void ResetGoalBlock(void)
{
    u8 timer;

    gCurrentSprite.currentAnimationFrame--;
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.work0--;
    timer = gCurrentSprite.work0;
    if (timer > 60) {
        if (timer == 62) {
            PlayChanceWheelSpaceSound();
        }
    } else if (timer == 0) {
        switch (gCurrentSprite.work2) {
            case 0: gCurrentSprite.animationTimer = 5; break;
            case 1: gCurrentSprite.animationTimer = 11; break;
            case 2: gCurrentSprite.animationTimer = 17; break;
            case 3: gCurrentSprite.animationTimer = 23; break;
            case 4: gCurrentSprite.animationTimer = 29; break;
            default: gCurrentSprite.animationTimer = 35; break;
        }
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.pOamData = sGoalBlockIdleOam;
        gCurrentSprite.pose = SPOSE_IDLE;
        gCurrentSprite.warioCollision = 54;
    } else if (timer == 19) {
        gWarioPauseTimer = 0;
    } else if (timer == 16) {
        ApplyChanceWheelReward();
    }
}

void GoalBlockShrink(void)
{
    u8 timer;
    register s32 scale asm("r5");
    register s32 sine asm("r4");
    register s32 cosine asm("r6");
    register u8* work3 asm("r1");

    gCurrentSprite.currentAnimationFrame--;
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.work0--;
    timer = gCurrentSprite.work0;
    if (timer > 60) {
        if (timer == 62) {
            PlayChanceWheelSpaceSound();
        }
    } else {
        if (timer == 0) {
            gCurrentSprite.status = 0;
        } else {
            if (timer == 20) {
                gWarioPauseTimer = 0;
                SpriteSpawnAsChild(PSPRITE_A2, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
                    gCurrentSprite.yPosition, gCurrentSprite.xPosition);
                ApplyChanceWheelReward();
            }
            work3 = &gCurrentSprite.work3;
            *work3 -= 4;
            scale = *work3;
            gCurrentSprite.status |= SPRITE_STATUS_AFFINE;
            cosine = COS(0);
            gCurrentSprite.affinePA = FixedMul(cosine, FixedInverse(scale));
            sine = SIN(0);
            gCurrentSprite.affinePB = FixedMul(sine, FixedInverse(scale));
            sine = -sine;
            gCurrentSprite.affinePC = FixedMul(sine, FixedInverse(scale));
            gCurrentSprite.affinePD = FixedMul(cosine, FixedInverse(scale));
        }
    }
}

void InitChanceWheelRewardEffect(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 32;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 4;
    gCurrentSprite.hitboxExtentLeft = 4;
    gCurrentSprite.hitboxExtentRight = 4;
    gCurrentSprite.pOamData = sChanceWheelRewardEffectOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioCollision = 6;
    gCurrentSprite.work0 = 30;
    gCurrentSprite.pose = SPOSE_IDLE;
}

void UpdateChanceWheelRewardEffect(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.status = 0;
    }
}

void SpriteChanceWheel(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            if (IsChanceWheelResultReady()) {
                gCurrentSprite.status = 0;
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
            } else {
                InitChanceWheel();
            }
            break;
        case 108:
            gUnk_3000038 = 1;
            StartChanceWheelResult();
            break;
        case 109:
            gUnk_3000038 = 1;
            ChanceWheelDropToResult();
            break;
        case 111:
            gUnk_3000038 = 1;
            FinishChanceWheelResult();
            break;
        case 113:
            gUnk_3000038 = 1;
            ChanceWheelShrink();
            break;
        case 115:
            gUnk_3000038 = 1;
            ResetGoalBlock();
            break;
        case 117:
            gUnk_3000038 = 1;
            GoalBlockShrink();
            break;
        default:
            CheckWarioNearChanceWheel();
            if (IsChanceWheelResultReady()) {
                func_8026A54();
                gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
                SpriteUtilDie();
            }
            break;
    }
}

void SpriteChanceWheelRewardEffect(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == SPOSE_INIT) {
        InitChanceWheelRewardEffect();
    } else {
        UpdateChanceWheelRewardEffect();
    }
}
