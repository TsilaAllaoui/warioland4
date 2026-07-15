#include "sprite_ai/beezley.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_collision.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sBeezleyOam_83C62FC_Frame1[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(5, -20, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame2[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame3[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame4[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame5[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame6[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame7[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-9, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame8[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame9[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-10, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame10[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 618, 8, 0),
    OAM_ENTRY(6, -20, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-12, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame11[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 618, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C62FC_Frame12[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 618, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame1[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame2[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-10, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame3[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-10, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame4[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -20, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-12, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame5[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame6[] = {
    5,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 586, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-4, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 638, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame7[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(5, -20, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-12, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame8[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame9[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame10[] = {
    7,
    OAM_ENTRY(-9, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 590, 8, 0),
    OAM_ENTRY(-9, -9, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(3, -18, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-9, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame11[] = {
    7,
    OAM_ENTRY(-9, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 590, 8, 0),
    OAM_ENTRY(-9, -9, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-9, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6384_Frame12[] = {
    7,
    OAM_ENTRY(-9, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 590, 8, 0),
    OAM_ENTRY(-9, -9, SPRITE_SIZE_8x8, 0, 633, 8, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-9, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame1[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(5, -20, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-11, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame2[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame3[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame4[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-9, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame5[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C63EC_Frame6[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-9, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-3, 0, SPRITE_SIZE_8x8, 0, 639, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame1[] = {
    7,
    OAM_ENTRY(-10, -14, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 626, 8, 0),
    OAM_ENTRY(5, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-14, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-8, -1, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame2[] = {
    7,
    OAM_ENTRY(-10, -14, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 626, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-14, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-8, -1, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame3[] = {
    7,
    OAM_ENTRY(-10, -14, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 626, 8, 0),
    OAM_ENTRY(-14, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-8, -1, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame4[] = {
    7,
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 592, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-14, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame5[] = {
    7,
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 592, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(6, -16, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C6424_Frame6[] = {
    7,
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 592, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C646C_Frame1[] = {
    7,
    OAM_ENTRY(4, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(-8, -2, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-12, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
};

const u16 sBeezleyOam_83C646C_Frame2[] = {
    7,
    OAM_ENTRY(4, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(-8, -2, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
};

const u16 sBeezleyOam_83C646C_Frame3[] = {
    7,
    OAM_ENTRY(4, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 594, 8, 0),
    OAM_ENTRY(-8, -2, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
};

const u16 sBeezleyOam_83C6494_Frame1[] = {
    5,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 588, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-9, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
};

const u16 sBeezleyOam_83C6494_Frame2[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(5, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-10, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
};

const u16 sBeezleyOam_83C6494_Frame3[] = {
    5,
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
};

const u16 sBeezleyOam_83C64BC_Frame1[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-11, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-7, -2, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C64BC_Frame2[] = {
    5,
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -16, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-3, -3, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C64BC_Frame3[] = {
    4,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(8, -16, SPRITE_SIZE_8x16, 0, 534, 8, 0),
    OAM_ENTRY(7, -16, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
};

const u16 sBeezleyOam_83C64BC_Frame4[] = {
    4,
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(7, -16, SPRITE_SIZE_8x16, 0, 537, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
};

const u16 sBeezleyOam_83C64BC_Frame5[] = {
    3,
    OAM_ENTRY(-17, -16, SPRITE_SIZE_32x16, 0, 538, 8, 0),
    OAM_ENTRY(7, -16, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-15, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
};

const u16 sBeezleyOam_83C64EC_Frame1[] = {
    5,
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x8, 0, 608, 8, 0),
    OAM_ENTRY(-11, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 608, 8, 0),
    OAM_ENTRY(-9, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C64EC_Frame2[] = {
    5,
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 584, 8, 0),
    OAM_ENTRY(6, -16, SPRITE_SIZE_8x8, 0, 609, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 609, 8, 0),
    OAM_ENTRY(-10, 0, SPRITE_SIZE_16x8, 0, 574, 8, 0),
};

const u16 sBeezleyOam_83C64EC_Frame3[] = {
    7,
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 602, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 600, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-8, -25, SPRITE_SIZE_16x8, 0, 630, 8, 0),
    OAM_ENTRY(-8, -1, SPRITE_SIZE_16x8, 0, 628, 8, 0),
};

const u16 sBeezleyOam_83C64EC_Frame4[] = {
    7,
    OAM_ENTRY(-8, -2, SPRITE_SIZE_16x8, 0, 596, 8, 0),
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 604, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 606, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
    OAM_ENTRY(-9, -27, SPRITE_SIZE_16x8, 0, 630, 8, 0),
};

const u16 sBeezleyOam_83C64EC_Frame5[] = {
    6,
    OAM_ENTRY(-8, -2, SPRITE_SIZE_16x8, 0, 596, 8, 0),
    OAM_ENTRY(3, -14, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_16x16, 0, 604, 8, 0),
    OAM_ENTRY(-9, -6, SPRITE_SIZE_16x8, 0, 606, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_8x8, 0, 610, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 610, 8, 0),
};

const u16 sBeezleyOam_83C651C_Frame1[] = {
    3,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 578, 8, 0),
    OAM_ENTRY(-10, -11, SPRITE_SIZE_8x8, 0, 542, 8, 0),
};

const u16 sBeezleyOam_83C651C_Frame3[] = {
    2,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 580, 8, 0),
    OAM_ENTRY(-2, -24, SPRITE_SIZE_8x8, 0, 633, 8, 0),
};

const u16 sBeezleyOam_83C651C_Frame4[] = {
    1,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBeezleyOam_83C651C_Frame2[] = {
    3,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 578, 8, 0),
    OAM_ENTRY(-10, -10, SPRITE_SIZE_8x8, 0, 542, 8, 0),
};

const u8 sBeezleyRawData_83C5F18[] = {
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xEC, 0x00,
    0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF4, 0x11, 0x60, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xEE, 0x00,
    0x06, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF4, 0x11, 0x61, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xF2, 0x00,
    0x06, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF4, 0x11, 0x62, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xEB, 0x00, 0x06, 0x00, 0x60, 0x82, 0xEB, 0x00,
    0xF4, 0x11, 0x60, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x46, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x46, 0x82, 0xED, 0x00,
    0x06, 0x00, 0x61, 0x82, 0xED, 0x00, 0xF4, 0x11, 0x61, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x46, 0x82, 0xF1, 0x00,
    0x06, 0x00, 0x62, 0x82, 0xF1, 0x00, 0xF5, 0x11, 0x62, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xED, 0x00,
    0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF6, 0x11, 0x60, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xEF, 0x00,
    0x05, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF6, 0x11, 0x61, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xF2, 0x00,
    0x05, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF6, 0x11, 0x62, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x66, 0x82, 0xEB, 0x00,
    0x06, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF4, 0x11, 0x60, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xED, 0x00, 0x06, 0x00, 0x61, 0x82, 0xED, 0x00,
    0xF4, 0x11, 0x61, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x66, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x6A, 0x82, 0xF1, 0x00,
    0x06, 0x00, 0x62, 0x82, 0xF1, 0x00, 0xF4, 0x11, 0x62, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xED, 0x00,
    0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF6, 0x11, 0x60, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xEF, 0x00,
    0x05, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF6, 0x11, 0x61, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4C, 0x82, 0xF2, 0x00,
    0x05, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF6, 0x11, 0x62, 0x82, 0x00, 0x00, 0xFD, 0x01, 0x7F, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4A, 0x82, 0xEB, 0x00,
    0x06, 0x00, 0x60, 0x82, 0xEB, 0x00, 0xF4, 0x11, 0x60, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4A, 0x82, 0xED, 0x00,
    0x06, 0x00, 0x61, 0x82, 0xED, 0x00, 0xF4, 0x11, 0x61, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4A, 0x82, 0xF1, 0x00,
    0x06, 0x00, 0x62, 0x82, 0xF1, 0x00, 0xF5, 0x11, 0x62, 0x82, 0xFF, 0x00, 0xFC, 0x11, 0x7E, 0x82,
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xEC, 0x00,
    0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF4, 0x11, 0x60, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xEE, 0x00,
    0x06, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF4, 0x11, 0x61, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01, 0x48, 0x82, 0xF2, 0x00,
    0x06, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF4, 0x11, 0x62, 0x82, 0x00, 0x40, 0xF8, 0x01, 0x3E, 0x82,
    0x07, 0x00, 0xF3, 0x00, 0xF7, 0x01, 0x1F, 0x82, 0xE8, 0x00, 0xF8, 0x41, 0x0E, 0x82, 0xF8, 0x40,
    0xF8, 0x01, 0x4E, 0x82, 0xF7, 0x00, 0xF7, 0x01, 0x79, 0x82, 0xEE, 0x00, 0x03, 0x00, 0x60, 0x82,
    0xEE, 0x00, 0xF4, 0x11, 0x60, 0x82, 0x00, 0x40, 0xF7, 0x01, 0x3E, 0x82, 0x07, 0x00, 0xF3, 0x00,
    0xF7, 0x01, 0x1F, 0x82, 0xE8, 0x00, 0xF8, 0x41, 0x0E, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4E, 0x82,
    0xF7, 0x00, 0xF7, 0x01, 0x79, 0x82, 0xF1, 0x00, 0x03, 0x00, 0x61, 0x82, 0xF1, 0x00, 0xF4, 0x11,
    0x61, 0x82, 0x00, 0x40, 0xF7, 0x01, 0x3E, 0x82, 0x07, 0x00, 0xF3, 0x00, 0xF7, 0x01, 0x1F, 0x82,
    0xE8, 0x00, 0xF8, 0x41, 0x0E, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x4E, 0x82, 0xF7, 0x00, 0xF7, 0x01,
    0x79, 0x82, 0xF3, 0x00, 0x02, 0x00, 0x62, 0x82, 0xF3, 0x00, 0xF5, 0x11, 0x62, 0x82, 0x00, 0x40,
    0xF7, 0x01, 0x3E, 0x82, 0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01,
    0x48, 0x82, 0xEC, 0x00, 0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF5, 0x11, 0x60, 0x82, 0x00, 0x40,
    0xF8, 0x01, 0x3E, 0x82, 0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01,
    0x48, 0x82, 0xEE, 0x00, 0x06, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF5, 0x11, 0x61, 0x82, 0x00, 0x40,
    0xF8, 0x01, 0x3E, 0x82, 0x05, 0x00, 0xEA, 0x00, 0xF7, 0x41, 0x08, 0x82, 0xFA, 0x40, 0xF7, 0x01,
    0x48, 0x82, 0xF2, 0x00, 0x06, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF5, 0x11, 0x62, 0x82, 0x00, 0x40,
    0xF8, 0x01, 0x3E, 0x82, 0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01,
    0x4C, 0x82, 0xED, 0x00, 0x05, 0x00, 0x60, 0x82, 0xEC, 0x00, 0xF7, 0x11, 0x60, 0x82, 0x00, 0x00,
    0xFD, 0x01, 0x7F, 0x82, 0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01,
    0x4C, 0x82, 0xEF, 0x00, 0x05, 0x00, 0x61, 0x82, 0xEE, 0x00, 0xF7, 0x11, 0x61, 0x82, 0x00, 0x00,
    0xFD, 0x01, 0x7F, 0x82, 0x05, 0x00, 0xE8, 0x00, 0xF8, 0x41, 0x0C, 0x82, 0xF8, 0x40, 0xF8, 0x01,
    0x4C, 0x82, 0xF2, 0x00, 0x05, 0x00, 0x62, 0x82, 0xF2, 0x00, 0xF7, 0x11, 0x62, 0x82, 0x00, 0x00,
    0xFD, 0x01, 0x7F, 0x82,
};

const struct AnimationFrame sBeezleyOam_83C62FC[] = {
    {sBeezleyOam_83C62FC_Frame1, 2},
    {sBeezleyOam_83C62FC_Frame2, 2},
    {sBeezleyOam_83C62FC_Frame3, 2},
    {sBeezleyOam_83C62FC_Frame2, 2},
    {sBeezleyOam_83C62FC_Frame4, 2},
    {sBeezleyOam_83C62FC_Frame5, 2},
    {sBeezleyOam_83C62FC_Frame6, 2},
    {sBeezleyOam_83C62FC_Frame5, 2},
    {sBeezleyOam_83C62FC_Frame7, 2},
    {sBeezleyOam_83C62FC_Frame8, 2},
    {sBeezleyOam_83C62FC_Frame9, 2},
    {sBeezleyOam_83C62FC_Frame8, 2},
    {sBeezleyOam_83C62FC_Frame10, 2},
    {sBeezleyOam_83C62FC_Frame11, 2},
    {sBeezleyOam_83C62FC_Frame12, 2},
    {sBeezleyOam_83C62FC_Frame11, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C6384[] = {
    {sBeezleyOam_83C6384_Frame1, 2},
    {sBeezleyOam_83C6384_Frame2, 2},
    {sBeezleyOam_83C6384_Frame3, 2},
    {sBeezleyOam_83C6384_Frame4, 2},
    {sBeezleyOam_83C6384_Frame5, 2},
    {sBeezleyOam_83C6384_Frame6, 2},
    {sBeezleyOam_83C6384_Frame7, 2},
    {sBeezleyOam_83C6384_Frame8, 2},
    {sBeezleyOam_83C6384_Frame9, 2},
    {sBeezleyOam_83C6384_Frame10, 2},
    {sBeezleyOam_83C6384_Frame11, 2},
    {sBeezleyOam_83C6384_Frame12, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C63EC[] = {
    {sBeezleyOam_83C63EC_Frame1, 2},
    {sBeezleyOam_83C63EC_Frame2, 2},
    {sBeezleyOam_83C63EC_Frame3, 2},
    {sBeezleyOam_83C63EC_Frame4, 2},
    {sBeezleyOam_83C63EC_Frame5, 2},
    {sBeezleyOam_83C63EC_Frame6, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C6424[] = {
    {sBeezleyOam_83C6424_Frame1, 2},
    {sBeezleyOam_83C6424_Frame2, 2},
    {sBeezleyOam_83C6424_Frame3, 2},
    {sBeezleyOam_83C6424_Frame2, 2},
    {sBeezleyOam_83C6424_Frame4, 2},
    {sBeezleyOam_83C6424_Frame5, 2},
    {sBeezleyOam_83C6424_Frame6, 2},
    {sBeezleyOam_83C6424_Frame5, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C646C[] = {
    {sBeezleyOam_83C646C_Frame1, 2},
    {sBeezleyOam_83C646C_Frame2, 2},
    {sBeezleyOam_83C646C_Frame3, 2},
    {sBeezleyOam_83C646C_Frame2, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C6494[] = {
    {sBeezleyOam_83C6494_Frame1, 1},
    {sBeezleyOam_83C6494_Frame2, 2},
    {sBeezleyOam_83C6494_Frame3, 4},
    {sBeezleyOam_83C6494_Frame2, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C64BC[] = {
    {sBeezleyOam_83C64BC_Frame1, 1},
    {sBeezleyOam_83C64BC_Frame2, 2},
    {sBeezleyOam_83C64BC_Frame3, 3},
    {sBeezleyOam_83C64BC_Frame4, 3},
    {sBeezleyOam_83C64BC_Frame5, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C64EC[] = {
    {sBeezleyOam_83C64EC_Frame1, 2},
    {sBeezleyOam_83C64EC_Frame2, 3},
    {sBeezleyOam_83C64EC_Frame3, 3},
    {sBeezleyOam_83C64EC_Frame4, 4},
    {sBeezleyOam_83C64EC_Frame5, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBeezleyOam_83C651C[] = {
    {sBeezleyOam_83C651C_Frame1, 14},
    {sBeezleyOam_83C651C_Frame2, 25},
    {sBeezleyOam_83C651C_Frame1, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    {sBeezleyOam_83C651C_Frame4, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    {sBeezleyOam_83C651C_Frame1, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    {sBeezleyOam_83C651C_Frame4, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    {sBeezleyOam_83C651C_Frame1, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    {sBeezleyOam_83C651C_Frame4, 8},
    {sBeezleyOam_83C651C_Frame3, 8},
    ANIMATION_TERMINATOR
};

s32 func_804012C(void)
{
    u16 currentTop;
    u16 currentBottom;
    u16 currentLeft;
    u16 currentRight;
    s32 i;

    {
        struct PrimarySpriteData *sprite;
        u16 yPosition;
        u16 xPosition;

        sprite = &gCurrentSprite;
        yPosition = (u16)(sprite->yPosition + 0x1000);
        xPosition = (u16)(sprite->xPosition + 0x1000);
        currentTop = (u16)(yPosition - sprite->hitboxExtentUp);
        currentBottom = (u16)(yPosition + sprite->hitboxExtentDown);
        currentLeft = (u16)(xPosition - sprite->hitboxExtentLeft);
        currentRight = (u16)(xPosition + sprite->hitboxExtentRight);
    }

    i = 0;
    do {
        struct PrimarySpriteData *sprite;

        {
            register struct PrimarySpriteData *sprites asm("r1");
            register u32 spriteOffset asm("r0");

            sprites = gSpriteData;
            spriteOffset = sizeof(*sprite);
            spriteOffset *= i;
            spriteOffset += (u32)sprites;
            sprite = (struct PrimarySpriteData *)spriteOffset;
        }
        if ((sprite->status & SPRITE_STATUS_EXISTS) &&
            sprite->globalID == 0x41 && sprite->work1 == 1) {
            u16 top;
            u16 bottom;
            u16 left;
            u16 right;
            u16 yPosition;
            u16 xPosition;

            yPosition = (u16)(sprite->yPosition + 0x1000);
            xPosition = (u16)(sprite->xPosition + 0x1000);
            top = (u16)(yPosition - sprite->hitboxExtentUp);
            bottom = (u16)(yPosition + sprite->hitboxExtentDown);
            left = (u16)(xPosition - sprite->hitboxExtentLeft);
            right = (u16)(xPosition + sprite->hitboxExtentRight);

            if (SpriteCollisionCheckObjectsTouching(
                    currentTop,
                    currentBottom,
                    currentLeft,
                    currentRight,
                    top,
                    bottom,
                    left,
                    right)) {
                m4aSongNumStart(SOUND_51);
                gCurrentSprite.yPosition += 20;
                return 1;
            }
        }
        i++;
    } while (i < MAX_SPRITE_COUNT);

    return 0;
}

void func_8040238(void)
{
    u16 currentTop;
    u16 currentBottom;
    u16 currentLeft;
    u16 currentRight;
    s32 i;

    {
        struct PrimarySpriteData *sprite;
        u16 yPosition;
        u16 xPosition;

        sprite = &gCurrentSprite;
        yPosition = (u16)(sprite->yPosition + 0x1000);
        xPosition = (u16)(sprite->xPosition + 0x1000);
        currentTop = (u16)(yPosition - sprite->hitboxExtentUp);
        currentBottom = (u16)(yPosition + sprite->hitboxExtentDown);
        currentLeft = (u16)(xPosition - sprite->hitboxExtentLeft);
        currentRight = (u16)(xPosition + sprite->hitboxExtentRight);
    }

    i = 0;
    do {
        struct PrimarySpriteData *sprite;

        {
            register struct PrimarySpriteData *sprites asm("r1");
            register u32 spriteOffset asm("r0");

            sprites = gSpriteData;
            spriteOffset = sizeof(*sprite);
            spriteOffset *= i;
            spriteOffset += (u32)sprites;
            sprite = (struct PrimarySpriteData *)spriteOffset;
        }
        if ((sprite->status & SPRITE_STATUS_EXISTS) &&
            sprite->globalID == 0x41 && sprite->work1 == 1) {
            u16 top;
            u16 bottom;
            u16 left;
            u16 right;
            u16 yPosition;
            u16 xPosition;

            yPosition = (u16)(sprite->yPosition + 0x1000);
            xPosition = (u16)(sprite->xPosition + 0x1000);
            top = (u16)(yPosition - sprite->hitboxExtentUp);
            bottom = (u16)(yPosition + sprite->hitboxExtentDown);
            left = (u16)(xPosition - sprite->hitboxExtentLeft);
            right = (u16)(xPosition + sprite->hitboxExtentRight);

            if (SpriteCollisionCheckObjectsTouching(
                    currentTop,
                    currentBottom,
                    currentLeft,
                    currentRight,
                    top,
                    bottom,
                    left,
                    right)) {
                sprite->pose = 17;
                return;
            }
        }
        i++;
    } while (i < MAX_SPRITE_COUNT);
}


void func_8040338(void)
{
    gCurrentSprite.warioCollision = 49;
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 8;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 8;
    gCurrentSprite.hitboxExtentLeft = 24;
    gCurrentSprite.hitboxExtentRight = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.work1 = 70;
    gCurrentSprite.yPosition -= 32;
    SpriteUtilTurnTowardWario();
}


void func_8040398(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C62FC;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.status &= ~SPRITE_STATUS_MAYBE_DEAD;
}


void func_80403C0(void)
{
    u32 work2;
    u16 warioY;
    u16 warioX;
    u16 spriteY;
    u16 spriteX;

    work2 = 8;
    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    spriteY = gCurrentSprite.yPosition;
    spriteX = gCurrentSprite.xPosition;

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition = spriteX + 2;
        func_8023BFC(
            (u16)(gCurrentSprite.yPosition - 32),
            (u16)(gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight)
        );
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = 17;
            return;
        }

        gCurrentSprite.work1--;
        if (gCurrentSprite.work1 == 0) {
            gCurrentSprite.pose = 17;
        }

        if (warioY > spriteY && warioY - spriteY <= 447 && warioY - spriteY > 128 &&
            warioX > spriteX && warioX - spriteX <= 383) {
            if (warioX - spriteX <= 127) {
                work2 = 2;
            } else if (warioX - spriteX <= 255) {
                work2 = 6;
            }
            gCurrentSprite.work2 = work2;
            gCurrentSprite.pose = 110;
        }
    } else {
        gCurrentSprite.xPosition = spriteX - 2;
        func_8023BFC(
            (u16)(gCurrentSprite.yPosition - 32),
            (u16)(gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft)
        );
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = 17;
            return;
        }

        gCurrentSprite.work1--;
        if (gCurrentSprite.work1 == 0) {
            gCurrentSprite.pose = 17;
        }

        if (warioY > spriteY && warioY - spriteY <= 447 && warioY - spriteY > 128 &&
            spriteX > warioX && spriteX - warioX <= 383) {
            if (spriteX - warioX <= 127) {
                work2 = 2;
            } else if (spriteX - warioX <= 255) {
                work2 = 6;
            }
            gCurrentSprite.work2 = work2;
            gCurrentSprite.pose = 110;
        }
    }

    {
        u8 index;
        s16 movement;

        index = gCurrentSprite.work3;
        movement = sUnk_83C6594[index];
        if (movement == 0x7FFF) {
            movement = sUnk_83C6594[0];
            index = 0;
        }
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += movement;
    }
}


void func_8040538(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C6384;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 24;
    m4aSongNumStart(SOUND_4F);
}

void func_8040564(void)
{
    u8 index;
    s16 movement;

    index = gCurrentSprite.work3;
    movement = sUnk_83C6594[index];
    if (movement == 0x7FFF) {
        movement = sUnk_83C6594[0];
        index = 0;
    }
    gCurrentSprite.work3 = index + 1;
    gCurrentSprite.yPosition += movement;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 19;
    }
}

void func_80405B8(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C63EC;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 20;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
}

void func_80405E4(void)
{
    u8 index;
    s16 movement;

    index = gCurrentSprite.work3;
    movement = sUnk_83C6594[index];
    if (movement == 0x7FFF) {
        movement = sUnk_83C6594[0];
        index = 0;
    }
    gCurrentSprite.work3 = index + 1;
    gCurrentSprite.yPosition += movement;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 15;
        gCurrentSprite.work1 = 140;
    }
}

void func_8040640(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C651C;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 180;
    gCurrentSprite.warioCollision = 50;
}

void func_8040668(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        if (gCurrentSprite.xPosition > gWarioData.xPosition) {
            gCurrentSprite.pose = 35;
        } else {
            gCurrentSprite.pose = 37;
        }
        func_8040238();
    }
}

void func_80406A0(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C6424;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 16;
    m4aSongNumStart(SOUND_50);
}

void func_80406CC(void)
{
    u8 index;
    s16 movement;

    index = gCurrentSprite.work3;
    movement = sUnk_83C6594[index];
    if (movement == 0x7FFF) {
        movement = sUnk_83C6594[0];
        index = 0;
    }
    gCurrentSprite.work3 = index + 1;
    gCurrentSprite.yPosition += movement;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 113;
    }
}

void func_8040720(void)
{
    struct PrimarySpriteData *sprite;
    register u32 xPosition asm("r0");

    if (func_804012C()) {
        gCurrentSprite.pose = 23;
        asm("" ::: "memory");
        return;
    }

    sprite = &gCurrentSprite;
    if (sprite->yPosition > gWarioData.yPosition - 110 || sprite->work0 > 239) {
        goto setPose;
    }

    {
        u32 yPosition;

        yPosition = func_8023A60(sprite->yPosition, sprite->xPosition);
        if (gUnk_30000A0.unk_02 == 1) {
            goto setPose;
        }
        if (gUnk_3000A50 & 0xF) {
            sprite->yPosition = yPosition;
            goto setPose;
        }
    }

    {
        u16 oldY;

        sprite->work0++;
        oldY = sprite->yPosition;
        sprite->yPosition = oldY + 8;
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(
                (u16)(oldY - 24),
                (u16)(sprite->xPosition + sprite->hitboxExtentRight)
            );
            if (gUnk_3000A51 & 0xF) {
                goto setPose;
            }
            {
                register u8 *workPtr asm("r1");

                workPtr = &sprite->work2;
                xPosition = sprite->xPosition;
                xPosition += *workPtr;
            }
            goto updateX;
        }

        func_8023BFC(
            (u16)(oldY - 24),
            (u16)(sprite->xPosition - sprite->hitboxExtentLeft)
        );
        if (gUnk_3000A51 & 0xF) {
            goto setPose;
        }
        goto computeLeftX;
    }

setPose:
    sprite->pose = 115;
    return;

computeLeftX:
    {
        register u8 *workPtr asm("r0");
        register u32 amount asm("r1");

        workPtr = &sprite->work2;
        amount = *workPtr;
        xPosition = sprite->xPosition;
        xPosition -= amount;
    }

updateX:
    sprite->xPosition = xPosition;
}

void func_8040818(void)
{
    func_8023BFC(
        (u16)(gCurrentSprite.yPosition - 96),
        gCurrentSprite.xPosition
    );
    if (gCurrentSprite.work0 == 0 || (gUnk_3000A51 & 0xF)) {
        gCurrentSprite.pose = 117;
        gCurrentSprite.work0 = 16;
        return;
    }

    gCurrentSprite.work0--;
    {
        u16 oldY;

        oldY = gCurrentSprite.yPosition;
        gCurrentSprite.yPosition = oldY - 8;
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(
                (u16)(oldY - 40),
                (u16)(gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight)
            );
            if (!(gUnk_3000A51 & 0xF)) {
                gCurrentSprite.xPosition += gCurrentSprite.work2;
            }
        } else {
            func_8023BFC(
                (u16)(oldY - 40),
                (u16)(gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft)
            );
            if (!(gUnk_3000A51 & 0xF)) {
                gCurrentSprite.xPosition -= gCurrentSprite.work2;
            }
        }
    }
}

void func_80408D0(void)
{
    u8 index;
    s16 movement;

    index = gCurrentSprite.work3;
    movement = sUnk_83C6594[index];
    if (movement == 0x7FFF) {
        movement = sUnk_83C6594[0];
        index = 0;
    }
    gCurrentSprite.work3 = index + 1;
    gCurrentSprite.yPosition += movement;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            if (gCurrentSprite.xPosition > gWarioData.xPosition) {
                gCurrentSprite.work1 = 16;
            }
        } else {
            if (gCurrentSprite.xPosition < gWarioData.xPosition) {
                gCurrentSprite.work1 = 16;
            }
        }
        gCurrentSprite.pose = 15;
    }
}

void func_8040954(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C646C;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 8;
}

void func_8040970(void)
{
    gCurrentSprite.pose = 40;
    func_8040954();
}

void func_8040984(void)
{
    gCurrentSprite.pose = 42;
    func_8040954();
}

void func_8040998(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 35;
    }
}

void func_80409B4(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 37;
    }
}

void func_80409D0(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C6494;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 24;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 49;
}

void func_8040A00(void)
{
    gCurrentSprite.pose = 36;
    func_80409D0();
}

void func_8040A14(void)
{
    gCurrentSprite.pose = 38;
    func_80409D0();
}

void func_8040A28(void)
{
    u8 index;
    s16 movement;

    func_8023BFC((u16)(gCurrentSprite.yPosition - 96), gCurrentSprite.xPosition);
    if (gUnk_3000A51 & 0xF) {
        gCurrentSprite.pose = 15;
        return;
    }

    index = gCurrentSprite.work3;
    movement = sUnk_83C6616[index];
    if (movement == 0x7FFF) {
        register u32 tableOffset asm("r1");
        register u32 yPosition asm("r0");

        tableOffset = index - 1;
        tableOffset *= 2;
        tableOffset += (u32)sUnk_83C6616;
        yPosition = gCurrentSprite.yPosition;
        yPosition += *(u16 *)tableOffset;
        gCurrentSprite.yPosition = yPosition;
    } else {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += movement;
    }

    func_8023BFC(
        (u16)(gCurrentSprite.yPosition - 32),
        (u16)(gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight)
    );
    if (gUnk_3000A51 & 0xF) {
        gCurrentSprite.pose = 15;
        return;
    }

    gCurrentSprite.xPosition += 6;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 15;
    }
}

void func_8040ADC(void)
{
    u8 index;
    s16 movement;

    func_8023BFC((u16)(gCurrentSprite.yPosition - 96), gCurrentSprite.xPosition);
    if (gUnk_3000A51 & 0xF) {
        gCurrentSprite.pose = 15;
        return;
    }

    index = gCurrentSprite.work3;
    movement = sUnk_83C6616[index];
    if (movement == 0x7FFF) {
        register u32 tableOffset asm("r1");
        register u32 yPosition asm("r0");

        tableOffset = index - 1;
        tableOffset *= 2;
        tableOffset += (u32)sUnk_83C6616;
        yPosition = gCurrentSprite.yPosition;
        yPosition += *(u16 *)tableOffset;
        gCurrentSprite.yPosition = yPosition;
    } else {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += movement;
    }

    func_8023BFC(
        (u16)(gCurrentSprite.yPosition - 32),
        (u16)(gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft)
    );
    if (gUnk_3000A51 & 0xF) {
        gCurrentSprite.pose = 15;
        return;
    }

    gCurrentSprite.xPosition -= 6;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 15;
    }
}

void func_8040B90(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C64EC;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void func_8040BE0(void)
{
    gCurrentSprite.pose = 32;
    func_8040B90();
}

void func_8040BF4(void)
{
    gCurrentSprite.pose = 34;
    func_8040B90();
}

void func_8040C08(void)
{
    gCurrentSprite.pOamData = sBeezleyOam_83C64EC;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition, gCurrentSprite.xPosition, SSPRITE_06);
}

void func_8040C40(void)
{
    gCurrentSprite.pose = 32;
    func_8040C08();
}

void func_8040C54(void)
{
    gCurrentSprite.pose = 34;
    func_8040C08();
}

void func_8040C68(void)
{
    gCurrentSprite.pose = 50;
    gCurrentSprite.pOamData = sBeezleyOam_83C64BC;
    gCurrentSprite.animationTimer = gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 10;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void func_8040CA0(void)
{
    SpriteUtilDie();
}

void SpriteBeezley(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            func_8040338();
        case 15:
            func_8040398();
        case 16:
            func_80403C0();
            break;

        case 17:
            func_8040538();
        case 18:
            func_8040564();
            break;

        case 19:
            func_80405B8();
        case 20:
            func_80405E4();
            break;

        case 23:
            func_8040640();
        case 24:
            func_8040668();
            break;

        case 110:
            func_80406A0();
        case 111:
            func_80406CC();
            break;

        case 113:
            func_8040720();
            break;

        case 115:
            func_8040818();
            break;

        case 117:
            func_80408D0();
            break;

        case 39:
            func_8040970();
        case 40:
            func_8040998();
            break;

        case 41:
            func_8040984();
        case 42:
            func_80409B4();
            break;

        case 31:
        case 79:
            func_8040BE0();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;

        case 33:
        case 80:
            func_8040BF4();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;

        case 35:
        case 51:
            func_8040A00();
        case 36:
            func_8040A28();
            break;

        case 37:
        case 53:
            func_8040A14();
        case 38:
            func_8040ADC();
            break;

        case 49:
            func_8040C68();
        case 50:
            SpriteUtilDieAfterDelay();
            break;

        case 105:
            func_8040C54();
            break;

        case 106:
            func_8040C40();
            break;

        default:
            func_8040CA0();
            break;
    }
}
