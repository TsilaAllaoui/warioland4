#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/money_flower.h"
#include "gba/m4a.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMoneyFlowerSeedIdleOam_Frame1[] = {
    3,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sMoneyFlowerSeedOpeningOam_Frame1[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-11, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(5, -32, SPRITE_SIZE_8x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -40, SPRITE_SIZE_16x8, 0, 533, 8, 0),
};

const u16 sMoneyFlowerSeedOpeningOam_Frame2[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x16, 0, 517, 8, 0),
    OAM_ENTRY(-10, -40, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(6, -40, SPRITE_SIZE_8x8, 0, 537, 8, 0),
};

const u16 sMoneyFlowerSeedOpeningOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x16, 0, 521, 8, 0),
    OAM_ENTRY(-16, -40, SPRITE_SIZE_32x8, 0, 565, 8, 0),
};

const u16 sMoneyFlowerSeedOpeningOam_Frame4[] = {
    3,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x16, 0, 525, 8, 0),
};

const u16 sMoneyFlowerSeedOpeningOam_Frame5[] = {
    3,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x16, 0, 529, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame1[] = {
    8,
    OAM_ENTRY(-14, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(5, -35, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(-14, -34, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame2[] = {
    8,
    OAM_ENTRY(-17, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(7, -36, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(-18, -34, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame3[] = {
    8,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 570, 8, 0),
    OAM_ENTRY(8, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(8, -37, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(-20, -34, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame4[] = {
    8,
    OAM_ENTRY(-23, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 570, 8, 0),
    OAM_ENTRY(9, -20, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(10, -35, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(-21, -32, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame5[] = {
    7,
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-22, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
    OAM_ENTRY(14, -33, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 570, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame6[] = {
    6,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(14, -31, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 570, 8, 0),
    OAM_ENTRY(-23, -32, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 570, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame7[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-25, -25, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 570, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame9[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame8[] = {
    3,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame10[] = {
    4,
    OAM_ENTRY(-4, -30, SPRITE_SIZE_8x8, 0, 599, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage2GrowingOam_Frame11[] = {
    4,
    OAM_ENTRY(-8, -35, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage3GrowingOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -38, SPRITE_SIZE_16x16, 0, 578, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage4GrowingOam_Frame1[] = {
    5,
    OAM_ENTRY(-24, -28, SPRITE_SIZE_32x8, 0, 583, 9, 0),
    OAM_ENTRY(-16, -44, SPRITE_SIZE_32x16, 0, 580, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5GrowingOam_Frame1[] = {
    5,
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame1[] = {
    6,
    OAM_ENTRY(-7, -39, SPRITE_SIZE_8x8, 0, 592, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame2[] = {
    6,
    OAM_ENTRY(-7, -39, SPRITE_SIZE_8x8, 0, 593, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame3[] = {
    6,
    OAM_ENTRY(-7, -39, SPRITE_SIZE_8x8, 0, 624, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame4[] = {
    6,
    OAM_ENTRY(-7, -39, SPRITE_SIZE_8x8, 0, 625, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame5[] = {
    6,
    OAM_ENTRY(-7, -39, SPRITE_SIZE_8x8, 0, 600, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame6[] = {
    6,
    OAM_ENTRY(-7, -47, SPRITE_SIZE_8x16, 0, 591, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5IdleOam_Frame7[] = {
    6,
    OAM_ENTRY(-7, -47, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 591, 8, 0),
    OAM_ENTRY(-23, -29, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -45, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame1[] = {
    4,
    OAM_ENTRY(-8, -38, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame2[] = {
    4,
    OAM_ENTRY(-8, -41, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-3, -36, SPRITE_SIZE_8x8, 0, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame4[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(1, -41, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(-6, -45, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(0, -34, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-9, -37, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame5[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(2, -43, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(-8, -47, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(3, -32, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-11, -36, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame6[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(4, -46, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(-11, -48, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(6, -32, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-14, -34, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame7[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(3, -50, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(-15, -47, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(10, -34, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-16, -31, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame8[] = {
    6,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-18, -45, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(10, -39, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame9[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(7, -44, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-15, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 633, 8, 0),
};

const u16 sMoneyFlowerStage2CollectionOam_Frame10[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(3, -47, SPRITE_SIZE_8x8, 0, 601, 8, 0),
};

const u16 sMoneyFlowerStage3CollectionOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -40, SPRITE_SIZE_16x16, 0, 578, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage3CollectionOam_Frame2[] = {
    4,
    OAM_ENTRY(-12, -43, SPRITE_SIZE_16x16, 0, 578, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u8 sMoneyFlowerRawData_83C6B60[] = {
    0x03, 0x00, 0xF1, 0x40, 0xF0, 0x81, 0x52, 0x82, 0xF0, 0x80, 0xFB, 0x11, 0x1F, 0x82, 0xE2, 0x00,
    0xF8, 0x41, 0x1D, 0x82,
};

const u16 sMoneyFlowerStage4CollectionOam_Frame1[] = {
    5,
    OAM_ENTRY(-24, -30, SPRITE_SIZE_32x8, 0, 583, 9, 0),
    OAM_ENTRY(-16, -46, SPRITE_SIZE_32x16, 0, 580, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame2[] = {
    5,
    OAM_ENTRY(-24, -33, SPRITE_SIZE_32x8, 0, 583, 9, 0),
    OAM_ENTRY(-16, -49, SPRITE_SIZE_32x16, 0, 580, 9, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame3[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-11, -46, SPRITE_SIZE_8x16, 0, 598, 9, 0),
    OAM_ENTRY(-1, -46, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame4[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(2, -48, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-9, -50, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-12, -38, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(3, -38, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame5[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(4, -51, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-11, -53, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-14, -41, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(5, -41, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame6[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(5, -54, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-12, -55, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-15, -44, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(7, -43, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame7[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(6, -57, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-13, -58, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-16, -47, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(10, -46, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame8[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(9, -58, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-17, -59, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-19, -46, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(14, -45, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame9[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(12, -57, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-20, -58, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-22, -45, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(17, -44, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame10[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(14, -54, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-23, -56, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-25, -41, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(19, -41, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame11[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(15, -51, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-23, -53, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-26, -37, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
    OAM_ENTRY(20, -37, SPRITE_SIZE_8x8, 0, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame12[] = {
    6,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(15, -46, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-23, -49, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
    OAM_ENTRY(-27, -30, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 630, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame13[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(16, -37, SPRITE_SIZE_8x8, 0, 630, 9, 0),
    OAM_ENTRY(-24, -44, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
};

const u16 sMoneyFlowerStage4CollectionOam_Frame14[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-25, -34, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 598, 9, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame1[] = {
    5,
    OAM_ENTRY(-23, -31, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -47, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame2[] = {
    5,
    OAM_ENTRY(-23, -34, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-15, -50, SPRITE_SIZE_32x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame3[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-11, -50, SPRITE_SIZE_8x16, 0, 602, 8, 0),
    OAM_ENTRY(-2, -53, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame4[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-11, -53, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-13, -42, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(0, -54, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(0, -44, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame5[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-12, -54, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-14, -41, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(1, -55, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(1, -43, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame6[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-13, -56, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-15, -40, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -57, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(2, -41, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame7[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-13, -57, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-16, -39, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -59, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(2, -39, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame8[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-14, -56, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-17, -38, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -60, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(3, -36, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame9[] = {
    7,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-14, -54, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-18, -35, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -59, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
    OAM_ENTRY(4, -34, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame10[] = {
    6,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-14, -51, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-18, -31, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -57, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame11[] = {
    6,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-14, -47, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-18, -25, SPRITE_SIZE_8x8, 0, 634, 8, 0),
    OAM_ENTRY(2, -55, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame12[] = {
    5,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(-15, -40, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(2, -52, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame13[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(2, -48, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
};

const u16 sMoneyFlowerStage5CollectionOam_Frame14[] = {
    4,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 594, 8, 0),
    OAM_ENTRY(-5, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(2, -41, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 634, 8, 0),
};

const struct AnimationFrame sMoneyFlowerSeedIdleOam[] = {
    {sMoneyFlowerSeedIdleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerSeedOpeningOam[] = {
    {sMoneyFlowerSeedIdleOam_Frame1, 4},
    {sMoneyFlowerSeedOpeningOam_Frame1, 1},
    {sMoneyFlowerSeedIdleOam_Frame1, 1},
    {sMoneyFlowerSeedOpeningOam_Frame1, 4},
    {sMoneyFlowerSeedOpeningOam_Frame2, 1},
    {sMoneyFlowerSeedOpeningOam_Frame1, 1},
    {sMoneyFlowerSeedOpeningOam_Frame2, 4},
    {sMoneyFlowerSeedOpeningOam_Frame3, 1},
    {sMoneyFlowerSeedOpeningOam_Frame2, 1},
    {sMoneyFlowerSeedOpeningOam_Frame3, 4},
    {sMoneyFlowerSeedOpeningOam_Frame4, 1},
    {sMoneyFlowerSeedOpeningOam_Frame3, 1},
    {sMoneyFlowerSeedOpeningOam_Frame4, 4},
    {sMoneyFlowerSeedOpeningOam_Frame5, 1},
    {sMoneyFlowerSeedOpeningOam_Frame4, 1},
    {sMoneyFlowerSeedOpeningOam_Frame5, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage1IdleOam[] = {
    {sMoneyFlowerSeedOpeningOam_Frame5, 200},
    ANIMATION_TERMINATOR
};

const u8 sMoneyFlowerRawData_83C7044[] = {
    0xBA, 0x66, 0x3C, 0x08, 0x04, 0x00, 0x00, 0x00, 0xA6, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00,
    0xBA, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00, 0xA6, 0x66, 0x3C, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x8C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00, 0xA6, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00,
    0x8C, 0x66, 0x3C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x6C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00,
    0x8C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00, 0x6C, 0x66, 0x3C, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x4C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00, 0x6C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00,
    0x4C, 0x66, 0x3C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x38, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00,
    0x4C, 0x66, 0x3C, 0x08, 0x01, 0x00, 0x00, 0x00, 0x38, 0x66, 0x3C, 0x08, 0x03, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sMoneyFlowerStage2GrowingOam[] = {
    {sMoneyFlowerSeedOpeningOam_Frame5, 48},
    {sMoneyFlowerStage2GrowingOam_Frame1, 5},
    {sMoneyFlowerStage2GrowingOam_Frame2, 5},
    {sMoneyFlowerStage2GrowingOam_Frame3, 5},
    {sMoneyFlowerStage2GrowingOam_Frame4, 5},
    {sMoneyFlowerStage2GrowingOam_Frame5, 5},
    {sMoneyFlowerStage2GrowingOam_Frame6, 5},
    {sMoneyFlowerStage2GrowingOam_Frame7, 5},
    {sMoneyFlowerStage2GrowingOam_Frame8, 1},
    {sMoneyFlowerStage2GrowingOam_Frame9, 1},
    {sMoneyFlowerStage2GrowingOam_Frame8, 3},
    {sMoneyFlowerStage2GrowingOam_Frame10, 1},
    {sMoneyFlowerStage2GrowingOam_Frame8, 1},
    {sMoneyFlowerStage2GrowingOam_Frame10, 3},
    {sMoneyFlowerStage2GrowingOam_Frame11, 1},
    {sMoneyFlowerStage2GrowingOam_Frame10, 1},
    {sMoneyFlowerStage2GrowingOam_Frame11, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage2IdleOam[] = {
    {sMoneyFlowerStage2GrowingOam_Frame11, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage3GrowingOam[] = {
    {sMoneyFlowerStage2GrowingOam_Frame11, 1},
    {sMoneyFlowerStage3GrowingOam_Frame1, 1},
    {sMoneyFlowerStage2GrowingOam_Frame11, 1},
    {sMoneyFlowerStage3GrowingOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage3IdleOam[] = {
    {sMoneyFlowerStage3GrowingOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage4GrowingOam[] = {
    {sMoneyFlowerStage3GrowingOam_Frame1, 1},
    {sMoneyFlowerStage4GrowingOam_Frame1, 1},
    {sMoneyFlowerStage3GrowingOam_Frame1, 1},
    {sMoneyFlowerStage4GrowingOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage4IdleOam[] = {
    {sMoneyFlowerStage4GrowingOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage5GrowingOam[] = {
    {sMoneyFlowerStage4GrowingOam_Frame1, 1},
    {sMoneyFlowerStage5GrowingOam_Frame1, 1},
    {sMoneyFlowerStage4GrowingOam_Frame1, 1},
    {sMoneyFlowerStage5GrowingOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const u8 sMoneyFlowerRawData_83C7204[] = {
    0xA4, 0x68, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sMoneyFlowerStage5IdleOam[] = {
    {sMoneyFlowerStage5GrowingOam_Frame1, 1},
    {sMoneyFlowerStage5IdleOam_Frame1, 7},
    {sMoneyFlowerStage5IdleOam_Frame2, 7},
    {sMoneyFlowerStage5IdleOam_Frame3, 7},
    {sMoneyFlowerStage5IdleOam_Frame4, 7},
    {sMoneyFlowerStage5IdleOam_Frame3, 7},
    {sMoneyFlowerStage5IdleOam_Frame4, 7},
    {sMoneyFlowerStage5IdleOam_Frame3, 7},
    {sMoneyFlowerStage5IdleOam_Frame4, 7},
    {sMoneyFlowerStage5IdleOam_Frame5, 7},
    {sMoneyFlowerStage5IdleOam_Frame6, 14},
    {sMoneyFlowerStage5IdleOam_Frame7, 14},
    {sMoneyFlowerStage5IdleOam_Frame6, 14},
    {sMoneyFlowerStage5IdleOam_Frame7, 14},
    {sMoneyFlowerStage5IdleOam_Frame6, 14},
    {sMoneyFlowerStage5IdleOam_Frame7, 14},
    {sMoneyFlowerStage5IdleOam_Frame5, 7},
    {sMoneyFlowerStage5IdleOam_Frame4, 7},
    {sMoneyFlowerStage5IdleOam_Frame3, 7},
    {sMoneyFlowerStage5IdleOam_Frame2, 7},
    {sMoneyFlowerStage5IdleOam_Frame1, 7},
    {sMoneyFlowerStage5GrowingOam_Frame1, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerCollectedOam[] = {
    {sMoneyFlowerStage2GrowingOam_Frame8, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage2CollectionOam[] = {
    {sMoneyFlowerStage2GrowingOam_Frame11, 1},
    {sMoneyFlowerStage2CollectionOam_Frame1, 4},
    {sMoneyFlowerStage2CollectionOam_Frame2, 4},
    {sMoneyFlowerStage2CollectionOam_Frame3, 4},
    {sMoneyFlowerStage2CollectionOam_Frame4, 4},
    {sMoneyFlowerStage2CollectionOam_Frame5, 4},
    {sMoneyFlowerStage2CollectionOam_Frame6, 4},
    {sMoneyFlowerStage2CollectionOam_Frame7, 4},
    {sMoneyFlowerStage2CollectionOam_Frame8, 4},
    {sMoneyFlowerStage2CollectionOam_Frame9, 4},
    {sMoneyFlowerStage2CollectionOam_Frame10, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage3CollectionOam[] = {
    {sMoneyFlowerStage3GrowingOam_Frame1, 1},
    {sMoneyFlowerStage3CollectionOam_Frame1, 4},
    {sMoneyFlowerStage3CollectionOam_Frame2, 4},
    {sMoneyFlowerStage2CollectionOam_Frame3, 4},
    {sMoneyFlowerStage2CollectionOam_Frame4, 4},
    {sMoneyFlowerStage2CollectionOam_Frame5, 4},
    {sMoneyFlowerStage2CollectionOam_Frame6, 4},
    {sMoneyFlowerStage2CollectionOam_Frame7, 4},
    {sMoneyFlowerStage2CollectionOam_Frame8, 4},
    {sMoneyFlowerStage2CollectionOam_Frame9, 4},
    {sMoneyFlowerStage2CollectionOam_Frame10, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage4CollectionOam[] = {
    {sMoneyFlowerStage4GrowingOam_Frame1, 1},
    {sMoneyFlowerStage4CollectionOam_Frame1, 2},
    {sMoneyFlowerStage4CollectionOam_Frame2, 2},
    {sMoneyFlowerStage4CollectionOam_Frame3, 3},
    {sMoneyFlowerStage4CollectionOam_Frame4, 3},
    {sMoneyFlowerStage4CollectionOam_Frame5, 3},
    {sMoneyFlowerStage4CollectionOam_Frame6, 3},
    {sMoneyFlowerStage4CollectionOam_Frame7, 3},
    {sMoneyFlowerStage4CollectionOam_Frame8, 3},
    {sMoneyFlowerStage4CollectionOam_Frame9, 3},
    {sMoneyFlowerStage4CollectionOam_Frame10, 3},
    {sMoneyFlowerStage4CollectionOam_Frame11, 3},
    {sMoneyFlowerStage4CollectionOam_Frame12, 3},
    {sMoneyFlowerStage4CollectionOam_Frame13, 3},
    {sMoneyFlowerStage4CollectionOam_Frame14, 3},
    {sMoneyFlowerStage2GrowingOam_Frame8, 50},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneyFlowerStage5CollectionOam[] = {
    {sMoneyFlowerStage5GrowingOam_Frame1, 1},
    {sMoneyFlowerStage5CollectionOam_Frame1, 2},
    {sMoneyFlowerStage5CollectionOam_Frame2, 2},
    {sMoneyFlowerStage5CollectionOam_Frame3, 2},
    {sMoneyFlowerStage5CollectionOam_Frame4, 2},
    {sMoneyFlowerStage5CollectionOam_Frame5, 2},
    {sMoneyFlowerStage5CollectionOam_Frame6, 2},
    {sMoneyFlowerStage5CollectionOam_Frame7, 2},
    {sMoneyFlowerStage5CollectionOam_Frame8, 2},
    {sMoneyFlowerStage5CollectionOam_Frame9, 2},
    {sMoneyFlowerStage5CollectionOam_Frame10, 2},
    {sMoneyFlowerStage5CollectionOam_Frame11, 2},
    {sMoneyFlowerStage5CollectionOam_Frame12, 2},
    {sMoneyFlowerStage5CollectionOam_Frame13, 2},
    {sMoneyFlowerStage5CollectionOam_Frame14, 2},
    {sMoneyFlowerStage2GrowingOam_Frame8, 50},
    ANIMATION_TERMINATOR
};

void SetupMoneyFlower(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->status |= 0x408;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->warioCollision = 7;
    sprite->drawDistanceDown = 64;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 48;
    sprite->hitboxExtentUp = 112;
    sprite->hitboxExtentDown = 192;
    sprite->hitboxExtentLeft = 28;
    sprite->hitboxExtentRight = 24;
}

void InitMoneyFlowerSeed(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerSeedIdleOam;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.pose = 23;
    SetupMoneyFlower();
}

void InitMoneyFlowerStage1(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerStage1IdleOam;
    gCurrentSprite.work1 = 1;
    gCurrentSprite.pose = 16;
    SetupMoneyFlower();
}

void InitMoneyFlowerStage2(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerStage2IdleOam;
    gCurrentSprite.work1 = 2;
    gCurrentSprite.pose = 19;
    gCurrentSprite.work0 = 100;
    SetupMoneyFlower();
}

void InitMoneyFlowerStage3(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerStage3IdleOam;
    gCurrentSprite.work1 = 3;
    gCurrentSprite.pose = 21;
    gCurrentSprite.work0 = 100;
    SetupMoneyFlower();
}

void InitMoneyFlowerStage4(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerStage4IdleOam;
    gCurrentSprite.work1 = 4;
    gCurrentSprite.pose = 47;
    gCurrentSprite.work0 = 100;
    SetupMoneyFlower();
}

void InitMoneyFlowerStage5(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerStage5IdleOam;
    gCurrentSprite.work1 = 5;
    gCurrentSprite.pose = 111;
    SetupMoneyFlower();
}

void InitMoneyFlowerCollected(void)
{
    gCurrentSprite.pOamData = sMoneyFlowerCollectedOam;
    gCurrentSprite.work1 = 6;
    gCurrentSprite.pose = 16;
    SetupMoneyFlower();
}

void MoneyFlowerSeedOpening(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerSeedOpeningOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 24;
        sprite->work0 = MAKE_PERSISTENT_DATA(SPOSE_INIT_2, PERSISTENT_STATUS_LOADED);
        m4aSongNumStart(SE_MONEY_FLOWER_OPEN);
    }
}

void MoneyFlowerFinishStage1(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage1IdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
        sprite->work1 = 1;
        gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_1, PERSISTENT_STATUS_LOADED);
    }
}

void StartMoneyFlowerStage2Growth(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->pOamData = sMoneyFlowerStage2GrowingOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 18;
    sprite->work0 = 98;
    gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_2, PERSISTENT_STATUS_LOADED);
    sprite->work1 = 2;
    m4aSongNumStart(SE_MONEY_FLOWER_GROW);
}

void MoneyFlowerStage2Idle(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage2IdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 19;
        sprite->work0 = 100;
    }
}

void StartMoneyFlowerStage3Growth(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage3GrowingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 20;
        sprite->work0 = 4;
        gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_3, PERSISTENT_STATUS_LOADED);
        sprite->work1 = 3;
        m4aSongNumStart(SE_MONEY_FLOWER_GROW);
    }
}

void MoneyFlowerStage3Idle(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage3IdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 21;
        sprite->work0 = 100;
    }
}

void StartMoneyFlowerStage4Growth(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage4GrowingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 22;
        sprite->work0 = 4;
        gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_4, PERSISTENT_STATUS_LOADED);
        sprite->work1 = 4;
        m4aSongNumStart(SE_MONEY_FLOWER_GROW);
    }
}

void MoneyFlowerStage4Idle(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage4IdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 47;
        sprite->work0 = 100;
    }
}

void StartMoneyFlowerStage5Growth(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage5GrowingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 48;
        sprite->work0 = 4;
        gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_5, PERSISTENT_STATUS_LOADED);
        sprite->work1 = 5;
        m4aSongNumStart(SE_MONEY_FLOWER_FULLY_GROWN);
    }
}

void MoneyFlowerStage5Idle(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerStage5IdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 111;
    }
}

void MoneyFlowerCollectedIdle(void)
{
}

void CollectMoneyFlower(void)
{
    register struct PrimarySpriteData* initialSprite asm("r1");
    register struct PrimarySpriteData* sprite asm("r3");
    register u8 work1 asm("r0");
    u8 amount;

    initialSprite = &gCurrentSprite;
    work1 = initialSprite->work1;
    sprite = initialSprite;
    switch (work1)
    {
        case 2:
            sprite->pOamData = sMoneyFlowerStage2CollectionOam;
            sprite->work0 = 41;
            amount = 2;
            break;
        case 3:
            sprite->pOamData = sMoneyFlowerStage3CollectionOam;
            sprite->work0 = 41;
            amount = 5;
            break;
        case 4:
            sprite->pOamData = sMoneyFlowerStage4CollectionOam;
            sprite->work0 = 42;
            amount = 20;
            break;
        case 5:
            sprite->pOamData = sMoneyFlowerStage5CollectionOam;
            sprite->work0 = 30;
            amount = 1;
            break;
        default:
            break;
    }

    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 50;
    gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = MAKE_PERSISTENT_DATA(SPOSE_INIT_6, PERSISTENT_STATUS_LOADED);
    sprite->work1 = 6;
    func_80767DC(sprite->yPosition - 120, sprite->xPosition, amount);
}

void FinishMoneyFlowerCollection(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sMoneyFlowerCollectedOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
    }
}

void SpriteMoneyFlower(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose)
    {
        case 0:
            InitMoneyFlowerSeed();
            break;
        case 1:
            InitMoneyFlowerStage1();
            break;
        case 2:
            InitMoneyFlowerStage2();
            break;
        case 3:
            InitMoneyFlowerStage3();
            break;
        case 4:
            InitMoneyFlowerStage4();
            break;
        case 5:
            InitMoneyFlowerStage5();
            break;
        case 6:
            InitMoneyFlowerCollected();
            break;
        case 23:
            MoneyFlowerSeedOpening();
            break;
        case 24:
            MoneyFlowerFinishStage1();
            break;
        case 17:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            StartMoneyFlowerStage2Growth();
        case 18:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            MoneyFlowerStage2Idle();
            break;
        case 19:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            StartMoneyFlowerStage3Growth();
            break;
        case 20:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            MoneyFlowerStage3Idle();
            break;
        case 21:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            StartMoneyFlowerStage4Growth();
            break;
        case 22:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            MoneyFlowerStage4Idle();
            break;
        case 47:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            StartMoneyFlowerStage5Growth();
            break;
        case 48:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            MoneyFlowerStage5Idle();
            break;
        case 111:
            gCurrentSprite.disableWarioCollisionTimer = 0;
            MoneyFlowerCollectedIdle();
            break;
        case 49:
            CollectMoneyFlower();
        case 50:
            FinishMoneyFlowerCollection();
            break;
        default:
            break;
    }
}
