#include "sprite_ai/dice_block.h"

#include "block.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "sprite.h"
#include "sprite_util.h"
#include "sound.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sDiceBlockIdleOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -32, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, 0, 516, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame1[] = {
    5,
    OAM_ENTRY(-17, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(1, -34, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-17, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(1, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame2[] = {
    5,
    OAM_ENTRY(-17, -34, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(1, -35, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-17, -18, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(1, -17, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame3[] = {
    9,
    OAM_ENTRY(-17, -37, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(1, -38, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(2, -19, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-15, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(2, -33, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-17, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame4[] = {
    13,
    OAM_ENTRY(-17, -38, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(1, -39, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(2, -19, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-17, -22, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(2, -3, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(1, -23, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(-18, -3, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-15, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(2, -33, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-17, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame5[] = {
    16,
    OAM_ENTRY(-17, -41, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(1, -42, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-19, -19, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(3, -19, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-19, -27, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(3, -27, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-17, -49, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(1, -50, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-15, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(2, -33, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-17, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-28, -25, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(11, -23, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(10, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame6[] = {
    14,
    OAM_ENTRY(-18, -46, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(2, -47, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(4, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-20, -30, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-18, -54, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(2, -55, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(4, -29, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-15, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(2, -33, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-28, -25, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(11, -23, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-22, -10, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(10, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame7[] = {
    11,
    OAM_ENTRY(-18, -52, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(2, -53, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-21, -25, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(5, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(16, -49, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-31, -52, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-39, -29, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(24, -31, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-27, -17, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(20, -10, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame8[] = {
    11,
    OAM_ENTRY(-19, -55, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(3, -56, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-22, -29, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(6, -28, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(16, -49, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-31, -52, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-39, -29, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(24, -31, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-27, -17, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(20, -10, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame9[] = {
    15,
    OAM_ENTRY(-20, -54, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(4, -55, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-24, -27, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(8, -26, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-20, -38, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(4, -39, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(-24, -11, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(8, -10, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(22, -60, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-42, -59, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-44, -38, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(31, -37, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-35, -19, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(30, -17, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame10[] = {
    15,
    OAM_ENTRY(-23, -56, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(7, -57, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(-25, -28, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(9, -27, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-25, -12, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(-23, -40, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(7, -41, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(9, -11, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-8, -32, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(22, -60, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-42, -59, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-44, -38, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(31, -37, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-35, -19, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(30, -17, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame11[] = {
    15,
    OAM_ENTRY(-24, -55, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(8, -56, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-26, -27, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(10, -26, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-26, -35, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-24, -63, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(10, -34, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-8, -45, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(35, -56, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-50, -59, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-55, -40, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(46, -36, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-45, -23, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(41, -19, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame12[] = {
    15,
    OAM_ENTRY(-26, -53, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(10, -54, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-27, -25, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(11, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-27, -33, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -32, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(10, -62, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-26, -61, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-7, -45, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(35, -56, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-50, -59, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-55, -40, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(46, -36, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-45, -23, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(41, -19, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame13[] = {
    11,
    OAM_ENTRY(-28, -50, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(12, -51, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-28, -24, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(12, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-5, -56, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(48, -52, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-66, -48, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-65, -26, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(60, -18, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-54, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(46, -3, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame14[] = {
    11,
    OAM_ENTRY(-30, -48, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(14, -49, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-29, -25, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(13, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-5, -56, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(48, -52, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-66, -48, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-65, -26, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(60, -18, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-54, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(46, -3, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame15[] = {
    15,
    OAM_ENTRY(-31, -43, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(15, -44, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-31, -17, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(15, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-31, -1, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(-31, -27, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(15, -28, SPRITE_SIZE_16x8, 0, 540, 8, 0),
    OAM_ENTRY(15, 0, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-4, -57, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(57, -47, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-72, -36, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-73, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(65, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-62, 4, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(47, 9, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame16[] = {
    13,
    OAM_ENTRY(-34, -37, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(18, -38, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(-33, -9, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(17, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-4, -57, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(57, -47, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-72, -36, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(65, -7, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-62, 4, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-34, -21, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(-33, 7, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(18, -22, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(17, 8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 572, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame17[] = {
    13,
    OAM_ENTRY(-37, -28, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(21, -29, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-33, 3, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(17, 4, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-1, -48, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(58, -28, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-70, -22, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-58, 29, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(65, 15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-33, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(17, -4, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-37, -36, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(21, -37, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame18[] = {
    12,
    OAM_ENTRY(-40, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(24, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-33, 16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(17, 17, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-1, -46, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(58, -28, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-70, -22, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(65, 15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-33, 8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-40, -25, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(24, -26, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(17, 9, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame19[] = {
    8,
    OAM_ENTRY(-41, -2, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(25, -3, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-34, 31, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(18, 32, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-1, -34, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(64, 6, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-74, 17, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(68, 39, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockBreakingOam_Frame20[] = {
    7,
    OAM_ENTRY(-42, 14, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(26, 13, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-34, 49, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(18, 50, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-1, -33, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(64, 6, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-73, 47, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame1[] = {
    8,
    OAM_ENTRY(13, -20, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(12, -5, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-18, -9, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame2[] = {
    7,
    OAM_ENTRY(12, -21, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(12, -6, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame3[] = {
    8,
    OAM_ENTRY(13, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 8, 0),
    OAM_ENTRY(12, -21, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-19, -21, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -33, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame4[] = {
    7,
    OAM_ENTRY(13, -22, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -33, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame5[] = {
    7,
    OAM_ENTRY(14, -20, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame6[] = {
    7,
    OAM_ENTRY(14, -21, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-21, -22, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame7[] = {
    7,
    OAM_ENTRY(13, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 8, 0),
    OAM_ENTRY(-21, -20, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -33, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame8[] = {
    6,
    OAM_ENTRY(-21, -21, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -33, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -20, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame9[] = {
    7,
    OAM_ENTRY(-21, -26, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 8, 0),
    OAM_ENTRY(-20, -5, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame10[] = {
    6,
    OAM_ENTRY(-20, -6, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(-16, -33, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame11[] = {
    7,
    OAM_ENTRY(-20, -6, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(12, -5, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -35, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u16 sDiceBlockCrushedOam_Frame12[] = {
    7,
    OAM_ENTRY(-21, -7, SPRITE_SIZE_8x8, 0, 570, 8, 0),
    OAM_ENTRY(13, -6, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -35, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_32x8, 0, 536, 8, 0),
};

const u8 sDiceBlockRawData_83C959A[] = {
    0x00, 0x00,
};

const struct AnimationFrame sDiceBlockIdleOam[] = {
    {sDiceBlockIdleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceBlockCrushedOam[] = {
    {sDiceBlockCrushedOam_Frame1, 3},
    {sDiceBlockCrushedOam_Frame2, 3},
    {sDiceBlockCrushedOam_Frame3, 3},
    {sDiceBlockCrushedOam_Frame4, 3},
    {sDiceBlockCrushedOam_Frame5, 3},
    {sDiceBlockCrushedOam_Frame6, 3},
    {sDiceBlockCrushedOam_Frame7, 3},
    {sDiceBlockCrushedOam_Frame8, 3},
    {sDiceBlockCrushedOam_Frame9, 3},
    {sDiceBlockCrushedOam_Frame10, 3},
    {sDiceBlockCrushedOam_Frame11, 3},
    {sDiceBlockCrushedOam_Frame12, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sDiceBlockBreakingOam[] = {
    {sDiceBlockBreakingOam_Frame1, 4},
    {sDiceBlockBreakingOam_Frame2, 2},
    {sDiceBlockBreakingOam_Frame3, 2},
    {sDiceBlockBreakingOam_Frame4, 2},
    {sDiceBlockBreakingOam_Frame5, 2},
    {sDiceBlockBreakingOam_Frame6, 2},
    {sDiceBlockBreakingOam_Frame7, 2},
    {sDiceBlockBreakingOam_Frame8, 2},
    {sDiceBlockBreakingOam_Frame9, 2},
    {sDiceBlockBreakingOam_Frame10, 2},
    {sDiceBlockBreakingOam_Frame11, 2},
    {sDiceBlockBreakingOam_Frame12, 2},
    {sDiceBlockBreakingOam_Frame13, 2},
    {sDiceBlockBreakingOam_Frame14, 2},
    {sDiceBlockBreakingOam_Frame15, 2},
    {sDiceBlockBreakingOam_Frame16, 2},
    {sDiceBlockBreakingOam_Frame17, 2},
    {sDiceBlockBreakingOam_Frame18, 2},
    {sDiceBlockBreakingOam_Frame19, 2},
    {sDiceBlockBreakingOam_Frame20, 2},
    ANIMATION_TERMINATOR
};

void SetDiceBlockCollision(void)
{
    register int yPosition asm("r6");
    register int xPosition asm("r4");
    register int upperY asm("r5");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 3;
    *blockAction = action;
    upperY = (u16) (yPosition - 4);
    leftX = (u16) (xPosition - 4);
    func_806D5C0(upperY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16) (xPosition + 4);
    func_806D5C0(upperY, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    yPosition = (u16) (yPosition - 68);
    func_806D5C0(yPosition, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
}

void ClearDiceBlockCollision(void)
{
    register int yPosition asm("r6");
    register int xPosition asm("r4");
    register int upperY asm("r5");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 2;
    *blockAction = action;
    upperY = (u16) (yPosition - 4);
    leftX = (u16) (xPosition - 4);
    func_806D5C0(upperY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16) (xPosition + 4);
    func_806D5C0(upperY, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    yPosition = (u16) (yPosition - 68);
    func_806D5C0(yPosition, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");

        value = action;
        /* Preserve the value move before agbcc materializes the destination pointer. */
        asm("" : "+r" (value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
}

void InitDiceBlock(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 25;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 124;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 60;
    gCurrentSprite.hitboxExtentRight = 56;
    gCurrentSprite.pOamData = sDiceBlockIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.xPosition += 32;
    gCurrentSprite.work1 = 0;
    SetDiceBlockCollision();
}

void DiceBlockCrushedInit(void)
{
    gCurrentSprite.pOamData = sDiceBlockCrushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 60;
    ClearDiceBlockCollision();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void DiceBlockCrushed(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 0;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = SPOSE_6C;
    }
}

void DiceBlockBreakInit(void)
{
    gCurrentSprite.pOamData = sDiceBlockBreakingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6D;
    gCurrentSprite.work0 = 43;
    m4aSongNumStart(SOUND_DICE_BLOCK_BREAK);
}

void DiceBlockBreak(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.status = SPRITE_STATUS_NONE;
    }
}

void SpriteDiceBlock(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitDiceBlock();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            DiceBlockCrushedInit();
        case SPOSE_CRUSHED_OR_COLLECTED:
            DiceBlockCrushed();
            func_8026838();
            break;
        case SPOSE_6C:
            DiceBlockBreakInit();
        case SPOSE_6D:
            DiceBlockBreak();
            func_8026838();
            break;
    }
}
