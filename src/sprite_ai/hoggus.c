#include "background_registers.h"
#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"
#include "sprite_ai/hoggus.h"

#include "oam.h"
void SpriteSpawnAsChildWide(u32 id, u32 roomSlot, u32 gfxSlot, u32 yPosition, u32 xPosition) asm("SpriteSpawnAsChild");

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sHoggusIdleOam_Frame1[] = {
    6,
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, 0, 530, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-6, -32, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(8, -25, SPRITE_SIZE_32x32, 0, 522, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusIdleOam_Frame2[] = {
    6,
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, 0, 530, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(8, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusIdleOam_Frame3[] = {
    6,
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, 0, 530, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
    OAM_ENTRY(-31, -5, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -23, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusIdleOam_Frame4[] = {
    6,
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, 0, 530, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame1[] = {
    6,
    OAM_ENTRY(8, -25, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -31, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame2[] = {
    7,
    OAM_ENTRY(-6, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-14, -25, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -31, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame3[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame4[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
    OAM_ENTRY(-31, -5, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame5[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame14[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -31, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusChargeOam_Frame6[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-13, -20, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -31, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
};

const u16 sHoggusChargeOam_Frame7[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-6, -20, SPRITE_SIZE_8x16, 0, 642, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -31, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
};

const u16 sHoggusChargeOam_Frame8[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
};

const u16 sHoggusChargeOam_Frame9[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(9, -22, SPRITE_SIZE_8x16, 0, 642, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
};

const u16 sHoggusChargeOam_Frame10[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-1, -16, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
};

const u16 sHoggusChargeOam_Frame11[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(4, -15, SPRITE_SIZE_8x16, 0, 642, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
};

const u16 sHoggusChargeOam_Frame12[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-15, -15, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
};

const u16 sHoggusChargeOam_Frame13[] = {
    6,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_8x16, 0, 642, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame1[] = {
    6,
    OAM_ENTRY(-1, -14, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame2[] = {
    7,
    OAM_ENTRY(-4, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-12, -25, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -30, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame3[] = {
    7,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x16, 0, 656, 9, 0),
    OAM_ENTRY(8, -25, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame4[] = {
    7,
    OAM_ENTRY(18, -17, SPRITE_SIZE_16x16, 0, 656, 9, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame5[] = {
    7,
    OAM_ENTRY(18, -16, SPRITE_SIZE_16x16, 0, 656, 9, 0),
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -26, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
    OAM_ENTRY(-31, -5, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -23, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusAttackVariant1Oam_Frame6[] = {
    7,
    OAM_ENTRY(18, -17, SPRITE_SIZE_16x16, 0, 656, 9, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusSpawnVariant1Oam_Frame1[] = {
    7,
    OAM_ENTRY(18, -18, SPRITE_SIZE_16x16, 0, 656, 9, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -25, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusSpawnVariant1Oam_Frame2[] = {
    7,
    OAM_ENTRY(18, -17, SPRITE_SIZE_16x16, 0, 656, 9, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusAttackVariant0Oam_Frame1[] = {
    7,
    OAM_ENTRY(10, -16, SPRITE_SIZE_8x16, 0, 654, 10, 0),
    OAM_ENTRY(8, -25, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
};

const u16 sHoggusAttackVariant0Oam_Frame2[] = {
    8,
    OAM_ENTRY(18, -16, SPRITE_SIZE_16x16, 0, 654, 10, 0),
    OAM_ENTRY(18, -24, SPRITE_SIZE_8x8, 0, 672, 10, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusAttackVariant0Oam_Frame3[] = {
    8,
    OAM_ENTRY(18, -15, SPRITE_SIZE_16x16, 0, 654, 10, 0),
    OAM_ENTRY(18, -23, SPRITE_SIZE_8x8, 0, 672, 10, 0),
    OAM_ENTRY(0, -27, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -27, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -26, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 576, 8, 0),
    OAM_ENTRY(-31, -5, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -23, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusAttackVariant0Oam_Frame4[] = {
    8,
    OAM_ENTRY(18, -16, SPRITE_SIZE_16x16, 0, 654, 10, 0),
    OAM_ENTRY(18, -24, SPRITE_SIZE_8x8, 0, 672, 10, 0),
    OAM_ENTRY(0, -29, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -29, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -28, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 580, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusSpawnVariant0Oam_Frame1[] = {
    8,
    OAM_ENTRY(18, -17, SPRITE_SIZE_16x16, 0, 654, 10, 0),
    OAM_ENTRY(18, -25, SPRITE_SIZE_8x8, 0, 672, 10, 0),
    OAM_ENTRY(0, -30, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -30, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -29, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-31, -7, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -25, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusSpawnVariant0Oam_Frame2[] = {
    8,
    OAM_ENTRY(18, -16, SPRITE_SIZE_16x16, 0, 654, 10, 0),
    OAM_ENTRY(18, -24, SPRITE_SIZE_8x8, 0, 672, 10, 0),
    OAM_ENTRY(0, -28, SPRITE_SIZE_16x32, 0, 534, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -27, SPRITE_SIZE_16x8, 0, 640, 8, 0),
    OAM_ENTRY(-12, 0, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-31, -6, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_32x32, 0, 522, 8, 0),
};

const u16 sHoggusEggOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 658, 9, 0),
};

const u16 sHoggusEggOam_Frame2[] = {
    2,
    OAM_ENTRY(-12, -14, SPRITE_SIZE_16x16, 0, 649, 9, 0),
    OAM_ENTRY(-1, -6, SPRITE_SIZE_8x8, 0, 658, 9, 0),
};

const u16 sHoggusEggOam_Frame3[] = {
    4,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_16x16, 0, 649, 9, 0),
    OAM_ENTRY(-6, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 649, 9, 0),
    OAM_ENTRY(-17, -11, SPRITE_SIZE_16x16, 0, 649, 9, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_8x8, 0, 658, 9, 0),
};

const u16 sHoggusEggOam_Frame4[] = {
    4,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_16x16, 0, 643, 9, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x16, 0, 645, 9, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_16x16, 0, 649, 9, 0),
    OAM_ENTRY(7, 2, SPRITE_SIZE_8x8, 0, 658, 9, 0),
};

const u16 sHoggusEggOam_Frame5[] = {
    4,
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x16, 0, 646, 9, 0),
    OAM_ENTRY(2, -12, SPRITE_SIZE_8x16, 0, 648, 9, 0),
    OAM_ENTRY(2, -5, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 649, 9, 0),
    OAM_ENTRY(-9, -3, SPRITE_SIZE_16x16, 0, 649, 9, 0),
};

const u16 sHoggusEggOam_Frame6[] = {
    4,
    OAM_ENTRY(-15, -12, SPRITE_SIZE_16x16, 0, 651, 9, 0),
    OAM_ENTRY(1, -12, SPRITE_SIZE_8x16, 0, 653, 9, 0),
    OAM_ENTRY(-6, -5, SPRITE_SIZE_16x16, 0, 643, 9, 0),
    OAM_ENTRY(10, -5, SPRITE_SIZE_8x16, 0, 645, 9, 0),
};

const u16 sHoggusEggOam_Frame7[] = {
    3,
    OAM_ENTRY(-6, -4, SPRITE_SIZE_16x16, 0, 646, 9, 0),
    OAM_ENTRY(10, -4, SPRITE_SIZE_8x16, 0, 648, 9, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_8x8, 0, 652, 9, 0),
};

const u16 sHoggusEggOam_Frame8[] = {
    2,
    OAM_ENTRY(-7, -4, SPRITE_SIZE_16x16, 0, 651, 9, 0),
    OAM_ENTRY(9, -4, SPRITE_SIZE_8x16, 0, 653, 9, 0),
};

const u16 sHoggusEggOam_Frame9[] = {
    1,
    OAM_ENTRY(-6, 9, SPRITE_SIZE_8x8, 0, 652, 9, 0),
};

const u8 sHoggusRawData_83DC262[] = {
    0x00, 0x00,
};

const struct AnimationFrame sHoggusIdleOam[] = {
    {sHoggusIdleOam_Frame1, 10},
    {sHoggusIdleOam_Frame2, 10},
    {sHoggusIdleOam_Frame3, 10},
    {sHoggusIdleOam_Frame4, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusChargeOam[] = {
    {sHoggusChargeOam_Frame1, 5},
    {sHoggusChargeOam_Frame2, 5},
    {sHoggusChargeOam_Frame3, 10},
    {sHoggusChargeOam_Frame4, 10},
    {sHoggusChargeOam_Frame5, 10},
    {sHoggusChargeOam_Frame6, 4},
    {sHoggusChargeOam_Frame7, 6},
    {sHoggusChargeOam_Frame8, 4},
    {sHoggusChargeOam_Frame9, 6},
    {sHoggusChargeOam_Frame10, 4},
    {sHoggusChargeOam_Frame11, 6},
    {sHoggusChargeOam_Frame12, 4},
    {sHoggusChargeOam_Frame13, 6},
    {sHoggusChargeOam_Frame6, 4},
    {sHoggusChargeOam_Frame7, 6},
    {sHoggusChargeOam_Frame8, 4},
    {sHoggusChargeOam_Frame9, 6},
    {sHoggusChargeOam_Frame10, 4},
    {sHoggusChargeOam_Frame11, 6},
    {sHoggusChargeOam_Frame12, 4},
    {sHoggusChargeOam_Frame13, 6},
    {sHoggusChargeOam_Frame14, 10},
    {sHoggusChargeOam_Frame3, 10},
    {sHoggusChargeOam_Frame4, 10},
    {sHoggusChargeOam_Frame5, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusAttackVariant1Oam[] = {
    {sHoggusAttackVariant1Oam_Frame1, 5},
    {sHoggusAttackVariant1Oam_Frame2, 5},
    {sHoggusAttackVariant1Oam_Frame3, 5},
    {sHoggusAttackVariant1Oam_Frame4, 5},
    {sHoggusAttackVariant1Oam_Frame5, 10},
    {sHoggusAttackVariant1Oam_Frame6, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusAttackVariant0Oam[] = {
    {sHoggusAttackVariant1Oam_Frame1, 5},
    {sHoggusAttackVariant1Oam_Frame2, 5},
    {sHoggusAttackVariant0Oam_Frame1, 5},
    {sHoggusAttackVariant0Oam_Frame2, 5},
    {sHoggusAttackVariant0Oam_Frame3, 10},
    {sHoggusAttackVariant0Oam_Frame4, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusEggOam[] = {
    {sHoggusEggOam_Frame1, 4},
    {sHoggusEggOam_Frame2, 4},
    {sHoggusEggOam_Frame3, 4},
    {sHoggusEggOam_Frame4, 4},
    {sHoggusEggOam_Frame5, 4},
    {sHoggusEggOam_Frame6, 4},
    {sHoggusEggOam_Frame7, 4},
    {sHoggusEggOam_Frame8, 4},
    {sHoggusEggOam_Frame9, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusSpawnVariant1Oam[] = {
    {sHoggusSpawnVariant1Oam_Frame1, 10},
    {sHoggusSpawnVariant1Oam_Frame2, 10},
    {sHoggusAttackVariant1Oam_Frame5, 10},
    {sHoggusAttackVariant1Oam_Frame6, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sHoggusSpawnVariant0Oam[] = {
    {sHoggusSpawnVariant0Oam_Frame1, 10},
    {sHoggusSpawnVariant0Oam_Frame2, 10},
    {sHoggusAttackVariant0Oam_Frame3, 10},
    {sHoggusAttackVariant0Oam_Frame4, 10},
    ANIMATION_TERMINATOR
};

void UpdateHoggusPosition(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    u16 spriteCoordinate;
    u16 targetCoordinate;
    u16 distance;
    u16 velocity;

    sprite = &gCurrentSprite;
    spriteCoordinate = sprite->xPosition + 0x200;
    targetCoordinate = gWarioData.xPosition + 0x200;

    if (gWarioData.horizontalDirection & 0x20)
    {
        targetCoordinate -= 0x180;
        if (spriteCoordinate > targetCoordinate)
            distance = spriteCoordinate - targetCoordinate;
        else
            distance = targetCoordinate - spriteCoordinate;

        if (distance <= 8)
        {
            velocity = 0;
        }
        else
        {
            velocity = (distance - 8) >> 2;
            if (velocity > 16)
                velocity = 16;
        }

        if (spriteCoordinate > targetCoordinate)
            sprite->xPosition -= velocity;
        else if (spriteCoordinate < targetCoordinate)
            sprite->xPosition += velocity;
    }
    else
    {
        targetCoordinate += 0x140;
        if (spriteCoordinate > targetCoordinate)
            distance = spriteCoordinate - targetCoordinate;
        else
            distance = targetCoordinate - spriteCoordinate;

        velocity = (distance - 8) >> 2;
        if (velocity > 16)
            velocity = 16;

        if (spriteCoordinate < targetCoordinate)
            sprite->xPosition += velocity;
        else if (spriteCoordinate > targetCoordinate)
            sprite->xPosition -= velocity;
    }

    spriteCoordinate = sprite->yPosition + 0x200;
    targetCoordinate = gBg1YPosition + 0x2AA;
    if (spriteCoordinate > targetCoordinate)
        distance = spriteCoordinate - targetCoordinate;
    else
        distance = targetCoordinate - spriteCoordinate;

    if (distance <= 8)
    {
        velocity = 0;
    }
    else
    {
        velocity = (distance - 8) >> 5;
        if (velocity <= 1)
            velocity = 2;
    }

    asm("" : : : "memory");
    if (spriteCoordinate > targetCoordinate)
        sprite->yPosition -= velocity;
    else if (spriteCoordinate < targetCoordinate)
        sprite->yPosition += velocity;
}

void InitHoggus(void)
{
    register u32 existingSprite asm("r4");
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* work2 asm("r0");

    existingSprite = SpriteUtilDespawnIfSpriteExists(PSPRITE_HOGGUS);
    if (existingSprite == 0)
    {
        sprite = &gCurrentSprite;
        sprite->status |= 0x408;
        sprite->warioCollision = 0;
        sprite->drawDistanceDown = 32;
        sprite->drawDistanceUp = 32;
        sprite->drawDistanceLeftRight = 64;
        sprite->hitboxExtentUp = 4;
        sprite->hitboxExtentDown = 4;
        sprite->hitboxExtentLeft = 4;
        sprite->hitboxExtentRight = 4;
        sprite->pOamData = sHoggusIdleOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = existingSprite;
        sprite->pose = 15;
        sprite->work1 = 1;
        work2 = &sprite->work2;
        *work2 = 0;
    }
}

void StartHoggusIdle(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* direction asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    sprite->work0 = 60;
    if (sprite->xPosition > gWarioData.xPosition)
    {
        direction = &sprite->work2;
        *direction = 0;
    }
    else
    {
        direction = &sprite->work2;
        *direction = 1;
    }
}

void HoggusIdle(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* timer asm("r6");
    register int count asm("r4");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    {
        u8 value;

        value = *timer;
        if (value != 0)
        {
            value--;
            *timer = value;
        }
        else
        {
            func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition + 96));
        if ((gUnk_3000A51 & 0xF) == 0)
        {
            count = SpriteUtilCountSpriteType(PSPRITE_DENDEN);
            count += SpriteUtilCountSpriteType(PSPRITE_BUTATABI);
            if (count <= 1)
            {
                sprite->pose = 17;
                *timer = 120;
                {
                    register u8* direction asm("r2");

                    direction = &sprite->work1;
                    *direction ^= 1;
                }
            }
            }
        }
    }
    UpdateHoggusPosition();
}

void StartHoggusCharge(void)
{
    register struct PrimarySpriteData* sprite asm("r0");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusChargeOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 18;
    sprite->work0 = 160;
    m4aSongNumStart(SE_HOGGUS_CHARGE);
}

void HoggusCharge(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r1");
    int value;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    if ((value << 24) == 0)
        sprite->pose = 19;
    UpdateHoggusPosition();
}

void StartHoggusAttack(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");

    initialSprite = &gCurrentSprite;
    {
        register u8 work1 asm("r1");

        work1 = initialSprite->work1;
        sprite = initialSprite;
        if (work1 != 0)
            sprite->pOamData = sHoggusAttackVariant1Oam;
        else
            sprite->pOamData = sHoggusAttackVariant0Oam;
    }
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 20;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 40;
    }
    m4aSongNumStart(SE_HOGGUS_ATTACK);
}

void HoggusAttack(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r1");
    int value;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    if ((value << 24) == 0)
        sprite->pose = 21;
    UpdateHoggusPosition();
}

void StartHoggusSpawn(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");

    initialSprite = &gCurrentSprite;
    {
        register u8 work1 asm("r1");

        work1 = initialSprite->work1;
        sprite = initialSprite;
        if (work1 != 0)
            sprite->pOamData = sHoggusSpawnVariant1Oam;
        else
            sprite->pOamData = sHoggusSpawnVariant0Oam;
    }
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 22;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 40;
    }
}

void HoggusSpawn(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* variant asm("r4");
    register u8* timerPointer asm("r2");
    register int timer asm("r1");
    register int pose asm("r3");
    register int collisionState asm("r1");
    register int maskedState asm("r0");
    int shiftedTimer;

    sprite = &gCurrentSprite;
    func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition + 96));
    collisionState = gUnk_3000A51;
    pose = 15;
    maskedState = pose;
    maskedState &= collisionState;
    if (maskedState != 0)
        goto set_idle_pose;

    timerPointer = &sprite->work0;
    shiftedTimer = *timerPointer;
    timer = shiftedTimer - 1;
    *timerPointer = timer;
    shiftedTimer = timer << 24;
    if (shiftedTimer == 0)
        goto set_idle_pose;

    if ((u32)shiftedTimer >> 24 == 10)
    {
        variant = &sprite->work1;
        SpriteSpawnAsChild(PSPRITE_D0, *variant, sprite->gfxSlot,
            sprite->yPosition - 32, sprite->xPosition + 96);
        if (*variant != 0)
            m4aSongNumStart(SE_HOGGUS_SPAWN_BUTATABI);
        else
            m4aSongNumStart(SE_HOGGUS_SPAWN_DENDEN);
    }
    goto update_movement;

set_idle_pose:
    sprite->pose = pose;

update_movement:
    UpdateHoggusPosition();
}

void StartHoggusEscape(void)
{
    register struct PrimarySpriteData* sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 111;
    sprite->status &= 0x7FFF;
}

void HoggusEscape(void)
{
    gCurrentSprite.yPosition -= 8;
}

void InitHoggusEgg(void)
{
    register struct PrimarySpriteData* sprite asm("r12");
    register struct PrimarySpriteData* setupSprite asm("r1");
    register struct PrimarySpriteData* finalSprite asm("r4");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u16 status asm("r0");

    sprite = &gCurrentSprite;
    {
        register u16 originalStatus asm("r1");

        originalStatus = sprite->status;
        status = originalStatus & 0xFFFB;
    }
    zeroByte = 0;
    zeroHalf = 0;
    status |= 0x400;
    setupSprite = sprite;
    setupSprite->status = status;
    setupSprite->drawPriority = zeroByte;
    setupSprite->warioCollision = zeroByte;
    {
        register u8* distance asm("r1");

        distance = &setupSprite->drawDistanceDown;
        *distance = 32;
        distance++;
        *distance = 32;
        distance++;
        asm("" : "+r"(distance));
        *distance = 32;
    }
    {
        register u8* hitbox asm("r0");

        hitbox = &sprite->hitboxExtentUp;
        *hitbox = 4;
        hitbox++;
        *hitbox = 4;
        hitbox++;
        *hitbox = 4;
        hitbox++;
        asm("" : "+r"(hitbox));
        *hitbox = 4;
    }
    {
        register const struct AnimationFrame* oam asm("r0");

        oam = sHoggusEggOam;
        finalSprite = sprite;
        finalSprite->pOamData = oam;
    }
    finalSprite->currentAnimationFrame = zeroByte;
    finalSprite->animationTimer = zeroHalf;
    finalSprite->pose = 15;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 36;
    }
}

void HoggusEggUpdate(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* timerPointer asm("r2");
    register int timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    value = *timerPointer;
    timer = value - 1;
    *timerPointer = timer;
    value = (u8)timer;
    if (value == 0)
        goto despawn;

    value = (u8)timer;
    if (value != 16)
        goto finished;

    value = sprite->roomSlot;
    if (value == 0)
    {
        register int roomSlot asm("r1");
        register int gfxSlot asm("r2");

        /* agbcc otherwise hoists this register copy before the room-slot comparison. */
        asm("mov %0, %1" : "=r"(roomSlot) : "r"(value));
        gfxSlot = sprite->gfxSlot + 3;
        SpriteSpawnAsChildWide(PSPRITE_DENDEN, roomSlot, gfxSlot,
            sprite->yPosition + 16, sprite->xPosition);
    }
    else
    {
        register int roomSlot asm("r1");
        register int gfxSlot asm("r2");

        /* Preserve the original post-branch room-slot reload into r1. */
        asm("ldrb %0, [%1, #24]" : "=r"(roomSlot) : "r"(sprite));
        gfxSlot = sprite->gfxSlot + 5;
        SpriteSpawnAsChildWide(PSPRITE_BUTATABI, roomSlot, gfxSlot,
            sprite->yPosition + 16, sprite->xPosition);
    }
    goto finished;

despawn:
    sprite->status = value;

finished:
    return;
}

void SpriteHoggus(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");
    register u8 pose asm("r1");

    initialSprite = &gCurrentSprite;
    pose = initialSprite->pose;
    sprite = initialSprite;
    if (pose != 110 && gUnk_30000D8 == 16)
        sprite->pose = 110;

    switch (sprite->pose)
    {
        case 0:
            InitHoggus();
            break;
        case 15:
            StartHoggusIdle();
        case 16:
            HoggusIdle();
            break;
        case 17:
            StartHoggusCharge();
        case 18:
            HoggusCharge();
            break;
        case 19:
            StartHoggusAttack();
        case 20:
            HoggusAttack();
            break;
        case 21:
            StartHoggusSpawn();
        case 22:
            HoggusSpawn();
            break;
        case 110:
            StartHoggusEscape();
        case 111:
            HoggusEscape();
            break;
    }
}

void SpriteHoggusEgg(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitHoggusEgg();
    HoggusEggUpdate();
}
