#include "sprite_ai/boss_door.h"

#include "gba/m4a.h"
#include "global_data.h"
#include "screen_shake.h"
#include "sprite.h"
#include "wario.h"
#include "sound.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sBossDoorEntryClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame1[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 522, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 648, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 650, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame2[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 525, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 653, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(9, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(9, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(9, -72, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(17, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(17, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(17, -72, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sBossDoorEntryOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(20, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(20, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(20, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-36, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-36, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-36, -72, SPRITE_SIZE_16x8, 0, 537, 9, 0),
};

const u16 sBossDoorEntryOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(21, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(21, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
    OAM_ENTRY(21, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(-37, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-37, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(-37, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
};

const u16 sBossDoorEntryOpenOam_Frame8[] = {
    10,
    OAM_ENTRY(30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(22, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 9, 0),
    OAM_ENTRY(30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-46, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_8x32, 0, 525, 9, 0),
    OAM_ENTRY(-46, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_8x32, 0, 653, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorEntryOpeningOam_Frame1[] = {
    10,
    OAM_ENTRY(31, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 9, 0),
    OAM_ENTRY(23, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 9, 0),
    OAM_ENTRY(31, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 9, 0),
    OAM_ENTRY(23, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 9, 0),
    OAM_ENTRY(31, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-47, -64, SPRITE_SIZE_16x32, 0, 520, 9, 0),
    OAM_ENTRY(-31, -64, SPRITE_SIZE_8x32, 0, 522, 9, 0),
    OAM_ENTRY(-47, -32, SPRITE_SIZE_16x32, 0, 648, 9, 0),
    OAM_ENTRY(-31, -32, SPRITE_SIZE_8x32, 0, 650, 9, 0),
    OAM_ENTRY(-47, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorEntryClosedOam[] = {
    {sBossDoorEntryClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorEntryOpenOam[] = {
    {sBossDoorEntryOpenOam_Frame1, 7},
    {sBossDoorEntryOpenOam_Frame2, 6},
    {sBossDoorEntryOpenOam_Frame3, 5},
    {sBossDoorEntryOpenOam_Frame4, 4},
    {sBossDoorEntryOpenOam_Frame5, 4},
    {sBossDoorEntryOpenOam_Frame6, 5},
    {sBossDoorEntryOpenOam_Frame7, 6},
    {sBossDoorEntryOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorEntryOpeningOam[] = {
    {sBossDoorEntryOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u16 sBossDoorEmeraldClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame1[] = {
    10,
    OAM_ENTRY(3, -64, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(19, -64, SPRITE_SIZE_8x32, 0, 522, 8, 0),
    OAM_ENTRY(3, -32, SPRITE_SIZE_16x32, 0, 648, 8, 0),
    OAM_ENTRY(19, -32, SPRITE_SIZE_8x32, 0, 650, 8, 0),
    OAM_ENTRY(3, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-19, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-27, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-19, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 8, 0),
    OAM_ENTRY(-27, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 8, 0),
    OAM_ENTRY(-19, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame2[] = {
    12,
    OAM_ENTRY(6, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(6, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(22, -56, SPRITE_SIZE_8x32, 0, 557, 8, 0),
    OAM_ENTRY(22, -24, SPRITE_SIZE_8x16, 0, 685, 8, 0),
    OAM_ENTRY(22, -8, SPRITE_SIZE_8x8, 0, 749, 8, 0),
    OAM_ENTRY(6, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-22, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-22, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-30, -56, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 557, 8, 0),
    OAM_ENTRY(-30, -24, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 685, 8, 0),
    OAM_ENTRY(-30, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 749, 8, 0),
    OAM_ENTRY(-22, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(12, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(12, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(12, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(-28, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
    OAM_ENTRY(-28, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-28, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(14, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(14, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(14, -72, SPRITE_SIZE_8x8, 0, 537, 8, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-22, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(18, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(18, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(18, -72, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(-26, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-26, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-26, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(18, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(18, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(26, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-34, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-34, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-34, -72, SPRITE_SIZE_8x8, 0, 537, 9, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(-36, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
    OAM_ENTRY(-36, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-36, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(20, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(20, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(20, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
};

const u16 sBossDoorEmeraldOpenOam_Frame8[] = {
    12,
    OAM_ENTRY(27, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(27, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(19, -56, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 557, 9, 0),
    OAM_ENTRY(19, -24, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 685, 9, 0),
    OAM_ENTRY(19, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 749, 9, 0),
    OAM_ENTRY(27, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-43, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-43, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-27, -56, SPRITE_SIZE_8x32, 0, 557, 9, 0),
    OAM_ENTRY(-27, -24, SPRITE_SIZE_8x16, 0, 685, 9, 0),
    OAM_ENTRY(-27, -8, SPRITE_SIZE_8x8, 0, 749, 9, 0),
    OAM_ENTRY(-43, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorEmeraldOpeningOam_Frame1[] = {
    10,
    OAM_ENTRY(30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 9, 0),
    OAM_ENTRY(22, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 9, 0),
    OAM_ENTRY(30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-46, -64, SPRITE_SIZE_16x32, 0, 520, 9, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_8x32, 0, 522, 9, 0),
    OAM_ENTRY(-46, -32, SPRITE_SIZE_16x32, 0, 648, 9, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_8x32, 0, 650, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorEmeraldClosedOam[] = {
    {sBossDoorEmeraldClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorEmeraldOpenOam[] = {
    {sBossDoorEmeraldOpenOam_Frame1, 7},
    {sBossDoorEmeraldOpenOam_Frame2, 6},
    {sBossDoorEmeraldOpenOam_Frame3, 5},
    {sBossDoorEmeraldOpenOam_Frame4, 4},
    {sBossDoorEmeraldOpenOam_Frame5, 4},
    {sBossDoorEmeraldOpenOam_Frame6, 5},
    {sBossDoorEmeraldOpenOam_Frame7, 6},
    {sBossDoorEmeraldOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorEmeraldOpeningOam[] = {
    {sBossDoorEmeraldOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u16 sBossDoorRubyClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame1[] = {
    4,
    OAM_ENTRY(-8, -64, SPRITE_SIZE_32x64, 0, 519, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 519, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame2[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 525, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 653, 8, 0),
    OAM_ENTRY(1, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 8, 0),
    OAM_ENTRY(-17, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(16, -72, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sBossDoorRubyOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(21, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(21, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(21, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-37, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-37, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-37, -72, SPRITE_SIZE_16x8, 0, 537, 9, 0),
};

const u16 sBossDoorRubyOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(22, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
    OAM_ENTRY(22, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(-38, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-38, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(-38, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
};

const u16 sBossDoorRubyOpenOam_Frame8[] = {
    10,
    OAM_ENTRY(31, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(23, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 9, 0),
    OAM_ENTRY(31, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(23, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-47, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-31, -64, SPRITE_SIZE_8x32, 0, 525, 9, 0),
    OAM_ENTRY(-47, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-31, -32, SPRITE_SIZE_8x32, 0, 653, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorRubyOpeningOam_Frame1[] = {
    4,
    OAM_ENTRY(23, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 519, 9, 0),
    OAM_ENTRY(31, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-55, -64, SPRITE_SIZE_32x64, 0, 519, 9, 0),
    OAM_ENTRY(-47, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorRubyClosedOam[] = {
    {sBossDoorRubyClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorRubyOpenOam[] = {
    {sBossDoorRubyOpenOam_Frame1, 7},
    {sBossDoorRubyOpenOam_Frame2, 6},
    {sBossDoorRubyOpenOam_Frame3, 5},
    {sBossDoorRubyOpenOam_Frame4, 4},
    {sBossDoorRubyOpenOam_Frame5, 4},
    {sBossDoorRubyOpenOam_Frame6, 5},
    {sBossDoorRubyOpenOam_Frame7, 6},
    {sBossDoorRubyOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorRubyOpeningOam[] = {
    {sBossDoorRubyOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u16 sBossDoorTopazClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame1[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 522, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 648, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 650, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame2[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 525, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 653, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(9, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(9, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(9, -72, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(17, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(17, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(17, -72, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sBossDoorTopazOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(20, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(20, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(20, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-36, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-36, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-36, -72, SPRITE_SIZE_16x8, 0, 537, 9, 0),
};

const u16 sBossDoorTopazOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(21, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(21, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
    OAM_ENTRY(21, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(-37, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-37, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(-37, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
};

const u16 sBossDoorTopazOpenOam_Frame8[] = {
    10,
    OAM_ENTRY(30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(22, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 9, 0),
    OAM_ENTRY(30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-46, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_8x32, 0, 525, 9, 0),
    OAM_ENTRY(-46, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_8x32, 0, 653, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorTopazOpeningOam_Frame1[] = {
    10,
    OAM_ENTRY(31, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 9, 0),
    OAM_ENTRY(23, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 9, 0),
    OAM_ENTRY(31, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 9, 0),
    OAM_ENTRY(23, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 9, 0),
    OAM_ENTRY(31, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-47, -64, SPRITE_SIZE_16x32, 0, 520, 9, 0),
    OAM_ENTRY(-31, -64, SPRITE_SIZE_8x32, 0, 522, 9, 0),
    OAM_ENTRY(-47, -32, SPRITE_SIZE_16x32, 0, 648, 9, 0),
    OAM_ENTRY(-31, -32, SPRITE_SIZE_8x32, 0, 650, 9, 0),
    OAM_ENTRY(-47, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorTopazClosedOam[] = {
    {sBossDoorTopazClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorTopazOpenOam[] = {
    {sBossDoorTopazOpenOam_Frame1, 7},
    {sBossDoorTopazOpenOam_Frame2, 6},
    {sBossDoorTopazOpenOam_Frame3, 5},
    {sBossDoorTopazOpenOam_Frame4, 4},
    {sBossDoorTopazOpenOam_Frame5, 4},
    {sBossDoorTopazOpenOam_Frame6, 5},
    {sBossDoorTopazOpenOam_Frame7, 6},
    {sBossDoorTopazOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorTopazOpeningOam[] = {
    {sBossDoorTopazOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u16 sBossDoorSapphireClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame1[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 522, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 648, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 650, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame2[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 525, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 653, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(9, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(9, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(9, -72, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(17, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(17, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(17, -72, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(20, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(20, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(20, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-36, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-36, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-36, -72, SPRITE_SIZE_16x8, 0, 537, 9, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(21, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(21, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
    OAM_ENTRY(21, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(-37, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-37, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(-37, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
};

const u16 sBossDoorSapphireOpenOam_Frame8[] = {
    10,
    OAM_ENTRY(30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(22, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 9, 0),
    OAM_ENTRY(30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-46, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_8x32, 0, 525, 9, 0),
    OAM_ENTRY(-46, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_8x32, 0, 653, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorSapphireOpeningOam_Frame1[] = {
    10,
    OAM_ENTRY(31, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 9, 0),
    OAM_ENTRY(23, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 9, 0),
    OAM_ENTRY(31, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 9, 0),
    OAM_ENTRY(23, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 9, 0),
    OAM_ENTRY(31, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-47, -64, SPRITE_SIZE_16x32, 0, 520, 9, 0),
    OAM_ENTRY(-31, -64, SPRITE_SIZE_8x32, 0, 522, 9, 0),
    OAM_ENTRY(-47, -32, SPRITE_SIZE_16x32, 0, 648, 9, 0),
    OAM_ENTRY(-31, -32, SPRITE_SIZE_8x32, 0, 650, 9, 0),
    OAM_ENTRY(-47, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorSapphireClosedOam[] = {
    {sBossDoorSapphireClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorSapphireOpenOam[] = {
    {sBossDoorSapphireOpenOam_Frame1, 7},
    {sBossDoorSapphireOpenOam_Frame2, 6},
    {sBossDoorSapphireOpenOam_Frame3, 5},
    {sBossDoorSapphireOpenOam_Frame4, 4},
    {sBossDoorSapphireOpenOam_Frame5, 4},
    {sBossDoorSapphireOpenOam_Frame6, 5},
    {sBossDoorSapphireOpenOam_Frame7, 6},
    {sBossDoorSapphireOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorSapphireOpeningOam[] = {
    {sBossDoorSapphireOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u16 sBossDoorGoldenPyramidClosedOam_Frame1[] = {
    2,
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x64, 0, 516, 8, 0),
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x64, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame1[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 522, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 648, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 650, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 531, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame2[] = {
    10,
    OAM_ENTRY(0, -64, SPRITE_SIZE_16x32, 0, 523, 8, 0),
    OAM_ENTRY(16, -64, SPRITE_SIZE_8x32, 0, 525, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_16x32, 0, 651, 8, 0),
    OAM_ENTRY(16, -32, SPRITE_SIZE_8x32, 0, 653, 8, 0),
    OAM_ENTRY(0, -72, SPRITE_SIZE_16x8, 0, 533, 8, 0),
    OAM_ENTRY(-16, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 8, 0),
    OAM_ENTRY(-16, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame3[] = {
    6,
    OAM_ENTRY(8, -64, SPRITE_SIZE_16x32, 0, 526, 8, 0),
    OAM_ENTRY(8, -32, SPRITE_SIZE_16x32, 0, 654, 8, 0),
    OAM_ENTRY(8, -72, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-24, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-24, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 8, 0),
    OAM_ENTRY(-24, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame4[] = {
    6,
    OAM_ENTRY(9, -64, SPRITE_SIZE_16x32, 0, 528, 8, 0),
    OAM_ENTRY(9, -32, SPRITE_SIZE_16x32, 0, 656, 8, 0),
    OAM_ENTRY(9, -72, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame5[] = {
    6,
    OAM_ENTRY(17, -64, SPRITE_SIZE_8x32, 0, 530, 8, 0),
    OAM_ENTRY(17, -32, SPRITE_SIZE_8x32, 0, 658, 8, 0),
    OAM_ENTRY(17, -72, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-25, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-25, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 658, 8, 0),
    OAM_ENTRY(-25, -72, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame6[] = {
    6,
    OAM_ENTRY(20, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 528, 9, 0),
    OAM_ENTRY(20, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 656, 9, 0),
    OAM_ENTRY(20, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 537, 9, 0),
    OAM_ENTRY(-36, -64, SPRITE_SIZE_16x32, 0, 528, 9, 0),
    OAM_ENTRY(-36, -32, SPRITE_SIZE_16x32, 0, 656, 9, 0),
    OAM_ENTRY(-36, -72, SPRITE_SIZE_16x8, 0, 537, 9, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame7[] = {
    6,
    OAM_ENTRY(21, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 526, 9, 0),
    OAM_ENTRY(21, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 654, 9, 0),
    OAM_ENTRY(21, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 535, 9, 0),
    OAM_ENTRY(-37, -64, SPRITE_SIZE_16x32, 0, 526, 9, 0),
    OAM_ENTRY(-37, -32, SPRITE_SIZE_16x32, 0, 654, 9, 0),
    OAM_ENTRY(-37, -72, SPRITE_SIZE_16x8, 0, 535, 9, 0),
};

const u16 sBossDoorGoldenPyramidOpenOam_Frame8[] = {
    10,
    OAM_ENTRY(30, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 523, 9, 0),
    OAM_ENTRY(22, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 525, 9, 0),
    OAM_ENTRY(30, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 651, 9, 0),
    OAM_ENTRY(22, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 653, 9, 0),
    OAM_ENTRY(30, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 533, 9, 0),
    OAM_ENTRY(-46, -64, SPRITE_SIZE_16x32, 0, 523, 9, 0),
    OAM_ENTRY(-30, -64, SPRITE_SIZE_8x32, 0, 525, 9, 0),
    OAM_ENTRY(-46, -32, SPRITE_SIZE_16x32, 0, 651, 9, 0),
    OAM_ENTRY(-30, -32, SPRITE_SIZE_8x32, 0, 653, 9, 0),
    OAM_ENTRY(-46, -72, SPRITE_SIZE_16x8, 0, 533, 9, 0),
};

const u16 sBossDoorGoldenPyramidOpeningOam_Frame1[] = {
    10,
    OAM_ENTRY(31, -64, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 520, 9, 0),
    OAM_ENTRY(23, -64, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 522, 9, 0),
    OAM_ENTRY(31, -32, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 648, 9, 0),
    OAM_ENTRY(23, -32, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 650, 9, 0),
    OAM_ENTRY(31, -72, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 531, 9, 0),
    OAM_ENTRY(-47, -64, SPRITE_SIZE_16x32, 0, 520, 9, 0),
    OAM_ENTRY(-31, -64, SPRITE_SIZE_8x32, 0, 522, 9, 0),
    OAM_ENTRY(-47, -32, SPRITE_SIZE_16x32, 0, 648, 9, 0),
    OAM_ENTRY(-31, -32, SPRITE_SIZE_8x32, 0, 650, 9, 0),
    OAM_ENTRY(-47, -72, SPRITE_SIZE_16x8, 0, 531, 9, 0),
};

const struct AnimationFrame sBossDoorGoldenPyramidClosedOam[] = {
    {sBossDoorGoldenPyramidClosedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorGoldenPyramidOpenOam[] = {
    {sBossDoorGoldenPyramidOpenOam_Frame1, 7},
    {sBossDoorGoldenPyramidOpenOam_Frame2, 6},
    {sBossDoorGoldenPyramidOpenOam_Frame3, 5},
    {sBossDoorGoldenPyramidOpenOam_Frame4, 4},
    {sBossDoorGoldenPyramidOpenOam_Frame5, 4},
    {sBossDoorGoldenPyramidOpenOam_Frame6, 5},
    {sBossDoorGoldenPyramidOpenOam_Frame7, 6},
    {sBossDoorGoldenPyramidOpenOam_Frame8, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossDoorGoldenPyramidOpeningOam[] = {
    {sBossDoorGoldenPyramidOpeningOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void SetBossDoorOpeningAnimation(void)
{
    switch (gCurrentSprite.globalID) {
        case PSPRITE_BOSS_DOOR_EMERALD_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorEmeraldOpeningOam;
            break;
        case PSPRITE_BOSS_DOOR_RUBY_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorRubyOpeningOam;
            break;
        case PSPRITE_BOSS_DOOR_TOPAZ_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorTopazOpeningOam;
            break;
        case PSPRITE_BOSS_DOOR_SAPPHIRE_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorSapphireOpeningOam;
            break;
        case PSPRITE_BOSS_DOOR_GOLDEN_PYRAMID:
            gCurrentSprite.pOamData = sBossDoorGoldenPyramidOpeningOam;
            break;
        default:
            gCurrentSprite.pOamData = sBossDoorEntryOpeningOam;
    }
}

void SetBossDoorClosedAnimation(void)
{
    switch (gCurrentSprite.globalID) {
        case PSPRITE_BOSS_DOOR_EMERALD_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorEmeraldClosedOam;
            break;
        case PSPRITE_BOSS_DOOR_RUBY_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorRubyClosedOam;
            break;
        case PSPRITE_BOSS_DOOR_TOPAZ_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorTopazClosedOam;
            break;
        case PSPRITE_BOSS_DOOR_SAPPHIRE_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorSapphireClosedOam;
            break;
        case PSPRITE_BOSS_DOOR_GOLDEN_PYRAMID:
            gCurrentSprite.pOamData = sBossDoorGoldenPyramidClosedOam;
            break;
        default:
            gCurrentSprite.pOamData = sBossDoorEntryClosedOam;
    }
}

void SetBossDoorOpenAnimation(void)
{
    switch (gCurrentSprite.globalID) {
        case PSPRITE_BOSS_DOOR_EMERALD_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorEmeraldOpenOam;
            break;
        case PSPRITE_BOSS_DOOR_RUBY_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorRubyOpenOam;
            break;
        case PSPRITE_BOSS_DOOR_TOPAZ_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorTopazOpenOam;
            break;
        case PSPRITE_BOSS_DOOR_SAPPHIRE_PASSAGE:
            gCurrentSprite.pOamData = sBossDoorSapphireOpenOam;
            break;
        case PSPRITE_BOSS_DOOR_GOLDEN_PYRAMID:
            gCurrentSprite.pOamData = sBossDoorGoldenPyramidOpenOam;
            break;
        default:
            gCurrentSprite.pOamData = sBossDoorEntryOpenOam;
    }
}

void InitBossDoor(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 0;
    gCurrentSprite.drawDistanceDown = 64;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 48;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 4;
    gCurrentSprite.hitboxExtentLeft = 4;
    gCurrentSprite.hitboxExtentRight = 4;
    SetBossDoorClosedAnimation();
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 1;
    gCurrentSprite.drawPriority = 3;
}

void BossDoorWaitForWario(void)
{
    if (gWarioData.xPosition > 0x600 && gWarioData.pose == 49) {
        gCurrentSprite.pose = 2;
        gCurrentSprite.work0 = 255;
        m4aSongNumStart(SOUND_BOSS_DOOR_WAITING_WARIO);
        ScreenShakeRequestY(32, 129);
    }
}

void BossDoorRise(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        if ((gCurrentSprite.work0 & 31) == 0) {
            ScreenShakeRequestY(32, 129);
        }
        gCurrentSprite.yPosition--;
    } else {
        gCurrentSprite.status |= SPRITE_STATUS_HIDDEN;
        gCurrentSprite.pose = 24;
        ScreenShakeRequestY(32, 129);
    }
}

void SpriteBossDoor(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
        case 0:
            InitBossDoor();
            break;
        case 1:
            BossDoorWaitForWario();
            break;
        case 2:
            BossDoorRise();
            break;
    }
}
