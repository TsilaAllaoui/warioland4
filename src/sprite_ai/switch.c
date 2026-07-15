#include "sprite_ai/switch.h"

#include "background_registers.h"
#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "voice_set.h"
#include "wario.h"
#include "gba/m4a.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sSwitchIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -47, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchPressedOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -45, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchPressedOam_Frame2[] = {
    4,
    OAM_ENTRY(-12, -40, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchPressedOam_Frame3[] = {
    4,
    OAM_ENTRY(-12, -41, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sSwitchReleasedOam_Frame9[] = {
    5,
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-7, -21, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sEscapeSwitchIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
};

const u16 sSwitchReleasedOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -42, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -34, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -18, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
};

const u16 sSwitchReleasedOam_Frame2[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -43, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -35, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -19, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame6[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -44, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -36, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame5[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -45, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -37, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -21, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame4[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -46, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -38, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame3[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -47, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -39, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -23, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame2[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -48, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -40, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -24, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame1[] = {
    4,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sSwitchReleasedOam_Frame3[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -44, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -36, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchReleasedOam_Frame4[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -45, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -37, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -21, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchReleasedOam_Frame5[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -46, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -38, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchReleasedOam_Frame6[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -47, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -39, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -23, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -18, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchReleasedOam_Frame7[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -48, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -40, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -24, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchReleasedOam_Frame8[] = {
    5,
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchPressedOam_Frame1[] = {
    6,
    OAM_ENTRY(-6, -43, SPRITE_SIZE_16x8, 0, 503, 5, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchPressedOam_Frame2[] = {
    6,
    OAM_ENTRY(-6, -43, SPRITE_SIZE_16x8, 0, 505, 5, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-7, -22, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchPressedOam_Frame3[] = {
    6,
    OAM_ENTRY(6, -22, SPRITE_SIZE_8x8, 0, 168, 4, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchPressedOam_Frame4[] = {
    6,
    OAM_ENTRY(6, -22, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-7, -23, SPRITE_SIZE_16x16, 0, 438, 5, 0),
};

const u16 sSwitchEffectIdleOam_Frame1[] = {
    1,
    OAM_ENTRY(6, -20, SPRITE_SIZE_8x8, 0, 167, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame2[] = {
    1,
    OAM_ENTRY(6, -21, SPRITE_SIZE_8x8, 0, 168, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame3[] = {
    4,
    OAM_ENTRY(2, -26, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(1, -18, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(8, -23, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(8, -15, SPRITE_SIZE_8x8, 0, 167, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame4[] = {
    1,
    OAM_ENTRY(12, -19, SPRITE_SIZE_8x8, 0, 167, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame5[] = {
    4,
    OAM_ENTRY(8, -23, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(17, -21, SPRITE_SIZE_8x8, 0, 167, 4, 0),
    OAM_ENTRY(14, -12, SPRITE_SIZE_8x8, 0, 167, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame6[] = {
    1,
    OAM_ENTRY(8, -15, SPRITE_SIZE_8x8, 0, 167, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame7[] = {
    1,
    OAM_ENTRY(9, -15, SPRITE_SIZE_8x8, 0, 168, 4, 0),
};

const u16 sSwitchEffectIdleOam_Frame8[] = {
    4,
    OAM_ENTRY(9, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 167, 4, 0),
    OAM_ENTRY(17, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 167, 4, 0),
    OAM_ENTRY(1, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 167, 4, 0),
    OAM_ENTRY(9, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 167, 4, 0),
};

const u8 sSwitchRawData_83B57CC[] = {
    0x02, 0x00, 0xF8, 0x00, 0xF3, 0x41, 0x7C, 0x51, 0xF8, 0x00, 0xFC, 0x51, 0x7C, 0x51, 0x02, 0x00,
    0xF8, 0x00, 0xF0, 0x41, 0x7C, 0x51, 0xF8, 0x00, 0x00, 0x50, 0x7C, 0x51, 0x01, 0x00, 0xFD, 0x00,
    0xFC, 0x01, 0x83, 0x51,
};

const u16 sEscapeSwitchWaitingOam_Frame7[] = {
    4,
    OAM_ENTRY(-12, -42, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame8[] = {
    4,
    OAM_ENTRY(-12, -43, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame9[] = {
    4,
    OAM_ENTRY(-12, -46, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sEscapeSwitchWaitingOam_Frame10[] = {
    4,
    OAM_ENTRY(-12, -48, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u8 sSwitchRawData_83B5858[] = {
    0x04, 0x00, 0xF0, 0x40, 0xEC, 0x81, 0x63, 0x51, 0xC9, 0x40, 0xF4, 0x81, 0x39, 0x51, 0xD7, 0x40,
    0xEC, 0x81, 0x1C, 0x51, 0xE7, 0x40, 0xEC, 0x41, 0x5C, 0x51,
};

const u16 sSwitchEffectActiveOam_Frame1[] = {
    7,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_32x16, 0, 204, 6, 0),
    OAM_ENTRY(-17, -16, SPRITE_SIZE_32x16, 0, 208, 6, 0),
    OAM_ENTRY(-8, -45, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -49, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -41, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, 0, 355, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame2[] = {
    8,
    OAM_ENTRY(-12, -29, SPRITE_SIZE_16x16, 0, 212, 6, 0),
    OAM_ENTRY(4, -29, SPRITE_SIZE_8x16, 0, 214, 6, 0),
    OAM_ENTRY(-20, -13, SPRITE_SIZE_32x8, 0, 154, 6, 0),
    OAM_ENTRY(-8, -43, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -47, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -39, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -23, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -14, SPRITE_SIZE_32x16, 0, 355, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame3[] = {
    6,
    OAM_ENTRY(-10, -24, SPRITE_SIZE_16x16, 0, 215, 6, 0),
    OAM_ENTRY(-8, -41, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -45, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -37, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -21, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-20, -14, SPRITE_SIZE_32x16, 0, 355, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame4[] = {
    6,
    OAM_ENTRY(-17, -29, SPRITE_SIZE_32x16, 0, 204, 6, 0),
    OAM_ENTRY(-17, -13, SPRITE_SIZE_32x16, 0, 208, 6, 0),
    OAM_ENTRY(-8, -39, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -43, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -35, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -19, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame5[] = {
    7,
    OAM_ENTRY(-12, -24, SPRITE_SIZE_16x16, 0, 212, 6, 0),
    OAM_ENTRY(4, -24, SPRITE_SIZE_8x16, 0, 214, 6, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_32x8, 0, 154, 6, 0),
    OAM_ENTRY(-8, -37, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -41, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -33, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame6[] = {
    6,
    OAM_ENTRY(-13, -26, SPRITE_SIZE_16x16, 0, 215, 6, 0),
    OAM_ENTRY(-6, -19, SPRITE_SIZE_16x16, 0, 215, 6, 0),
    OAM_ENTRY(-8, -34, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -38, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -30, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -14, SPRITE_SIZE_32x8, 0, 348, 5, 0),
};

const u16 sSwitchEffectActiveOam_Frame7[] = {
    7,
    OAM_ENTRY(-17, -34, SPRITE_SIZE_32x16, 0, 204, 6, 0),
    OAM_ENTRY(-17, -18, SPRITE_SIZE_32x16, 0, 208, 6, 0),
    OAM_ENTRY(-8, -31, SPRITE_SIZE_16x8, 0, 510, 5, 0),
    OAM_ENTRY(-12, -35, SPRITE_SIZE_32x16, 0, 313, 5, 0),
    OAM_ENTRY(-20, -27, SPRITE_SIZE_32x16, 0, 284, 5, 0),
    OAM_ENTRY(-20, -11, SPRITE_SIZE_32x8, 0, 348, 5, 0),
    OAM_ENTRY(-10, -46, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 152, 4, 0),
};

const u16 sSwitchEffectActiveOam_Frame8[] = {
    4,
    OAM_ENTRY(-12, -24, SPRITE_SIZE_16x16, 0, 212, 6, 0),
    OAM_ENTRY(4, -24, SPRITE_SIZE_8x16, 0, 214, 6, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_32x8, 0, 154, 6, 0),
    OAM_ENTRY(-5, -44, SPRITE_SIZE_16x16, 0, 152, 4, 0),
};

const u16 sSwitchEffectActiveOam_Frame9[] = {
    3,
    OAM_ENTRY(-9, -20, SPRITE_SIZE_16x16, 0, 215, 6, 0),
    OAM_ENTRY(-8, -37, SPRITE_SIZE_8x8, 0, 186, 4, 0),
    OAM_ENTRY(3, -41, SPRITE_SIZE_8x8, 0, 186, 4, 0),
};

const u16 sSwitchEffectActiveOam_Frame10[] = {
    3,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 217, 4, 0),
    OAM_ENTRY(7, -46, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 153, 4, 0),
    OAM_ENTRY(-8, -44, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 153, 4, 0),
};

const u16 sSwitchEffectActiveOam_Frame11[] = {
    2,
    OAM_ENTRY(-6, -40, SPRITE_SIZE_8x8, 0, 153, 4, 0),
    OAM_ENTRY(7, -45, SPRITE_SIZE_8x8, 0, 153, 4, 0),
};

const u8 sSwitchRawData_83B59EA[] = {
    0x00, 0x00,
};

const struct AnimationFrame sSwitchIdleOam[] = {
    {sSwitchIdleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sEscapeSwitchPressedOam[] = {
    {sSwitchIdleOam_Frame1, 1},
    {sEscapeSwitchPressedOam_Frame1, 4},
    {sEscapeSwitchPressedOam_Frame2, 4},
    {sEscapeSwitchPressedOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sEscapeSwitchActiveOam[] = {
    {sEscapeSwitchPressedOam_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSwitchReleasedOam[] = {
    {sEscapeSwitchPressedOam_Frame3, 1},
    {sSwitchReleasedOam_Frame1, 4},
    {sSwitchReleasedOam_Frame2, 4},
    {sSwitchReleasedOam_Frame3, 4},
    {sSwitchReleasedOam_Frame4, 4},
    {sSwitchReleasedOam_Frame5, 4},
    {sSwitchReleasedOam_Frame6, 4},
    {sSwitchReleasedOam_Frame7, 4},
    {sSwitchReleasedOam_Frame8, 4},
    {sSwitchReleasedOam_Frame9, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSwitchPressedOam[] = {
    {sSwitchPressedOam_Frame1, 7},
    {sSwitchPressedOam_Frame2, 7},
    {sSwitchPressedOam_Frame3, 7},
    {sSwitchPressedOam_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSwitchEffectIdleOam[] = {
    {sSwitchEffectIdleOam_Frame1, 5},
    {sSwitchEffectIdleOam_Frame2, 5},
    {sSwitchEffectIdleOam_Frame3, 5},
    {sSwitchEffectIdleOam_Frame4, 5},
    {sSwitchEffectIdleOam_Frame5, 5},
    {sSwitchEffectIdleOam_Frame6, 5},
    {sSwitchEffectIdleOam_Frame7, 5},
    {sSwitchEffectIdleOam_Frame8, 5},
    ANIMATION_TERMINATOR
};

const u8 sSwitchRawData_83B5AFC[] = {
    0xCC, 0x57, 0x3B, 0x08, 0x05, 0x00, 0x00, 0x00, 0xDA, 0x57, 0x3B, 0x08, 0x05, 0x00, 0x00, 0x00,
    0xE8, 0x57, 0x3B, 0x08, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sEscapeSwitchWaitingOam[] = {
    {sEscapeSwitchWaitingOam_Frame1, 19},
    {sEscapeSwitchWaitingOam_Frame2, 12},
    {sEscapeSwitchWaitingOam_Frame3, 12},
    {sEscapeSwitchWaitingOam_Frame4, 12},
    {sEscapeSwitchWaitingOam_Frame5, 12},
    {sEscapeSwitchWaitingOam_Frame6, 12},
    {sSwitchReleasedOam_Frame2, 12},
    {sSwitchReleasedOam_Frame1, 12},
    {sEscapeSwitchPressedOam_Frame3, 15},
    {sEscapeSwitchWaitingOam_Frame7, 2},
    {sEscapeSwitchWaitingOam_Frame8, 3},
    {sEscapeSwitchWaitingOam_Frame9, 3},
    {sEscapeSwitchWaitingOam_Frame10, 3},
    {sSwitchIdleOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const u8 sSwitchRawData_83B5B94[] = {
    0xDA, 0x54, 0x3B, 0x08, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x48, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00, 0x62, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x7C, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00, 0x96, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00,
    0xB0, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00, 0xCA, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00,
    0xE4, 0x55, 0x3B, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sEscapeSwitchIdleOam[] = {
    {sEscapeSwitchIdleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSwitchEffectActiveOam[] = {
    {sEscapeSwitchIdleOam_Frame1, 1},
    {sSwitchEffectActiveOam_Frame1, 3},
    {sSwitchEffectActiveOam_Frame2, 3},
    {sSwitchEffectActiveOam_Frame3, 3},
    {sSwitchEffectActiveOam_Frame4, 3},
    {sSwitchEffectActiveOam_Frame5, 3},
    {sSwitchEffectActiveOam_Frame6, 3},
    {sSwitchEffectActiveOam_Frame7, 3},
    {sSwitchEffectActiveOam_Frame8, 3},
    {sSwitchEffectActiveOam_Frame9, 3},
    {sSwitchEffectActiveOam_Frame10, 3},
    {sSwitchEffectActiveOam_Frame11, 3},
    ANIMATION_TERMINATOR
};

void SwitchSetCommonProperties(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u32 statusValue asm("r2");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* ptr asm("r1");
    register u8* temp asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusValue = 0x408;
    status = statusValue;
    zero = 0;
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    ptr = (u8*)sprite;
    *(u16*)ptr = status;
    {
        register u8 oldPriority asm("r1");
        register u8 priority asm("r0");

        oldPriority = ptr[26];
        priority = 0x80;
        priority |= oldPriority;
        ptr = (u8*)sprite;
        ptr[26] = priority;
    }
    ptr += 32;
    *ptr = 48;
    temp = (u8*)sprite + 33;
    *temp = zero;
    ptr += 2;
    *ptr = 16;
    ptr += 2;
    *ptr = 208;
    ptr++;
    *ptr = 24;
    /* agbcc otherwise folds this required pointer increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = 20;
    temp = (u8*)sprite;
    temp[22] = zero;
    *(u16*)(temp + 20) = zero16;
    temp += 40;
    *temp = zero;
}

void SwitchInit(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 48;
    sprite->hitboxExtentUp = 168;
    sprite->pOamData = sSwitchIdleOam;
    sprite->pose = 16;
    SwitchSetCommonProperties();
}

void SwitchInitPressed(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 29;
    sprite->hitboxExtentUp = 176;
    sprite->pOamData = sSwitchPressedOam;
    sprite->pose = 48;
    SwitchSetCommonProperties();
    func_801E430(170, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition);
    sprite->work0 = 60;
}

void EscapeSwitchInit(void)
{
    u8* persistent;
    struct PrimarySpriteData* sprite;

    persistent = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    persistent[gCurrentRoom * MAX_SPRITE_SLOTS_PER_ROOM + sprite->roomSlot] = 17;
    sprite->warioCollision = 48;
    sprite->hitboxExtentUp = 168;
    sprite->pOamData = sEscapeSwitchIdleOam;
    sprite->pose = 111;
    sprite->work0 = 1;
    SwitchSetCommonProperties();
}

void EscapeSwitchWaitForWario(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    if (gDisableWario == 0) {
        sprite = &gCurrentSprite;
        timer = --sprite->work0;
        if (timer == 0) {
            sprite->pOamData = sEscapeSwitchWaitingOam;
            sprite->currentAnimationFrame = timer;
            sprite->animationTimer = timer;
            sprite->work0 = 130;
            sprite->pose = 113;
        }
    }
}

void EscapeSwitchReset(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pOamData = sSwitchIdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
    }
}

void EscapeSwitchActivate(void)
{
    u8* persistent;
    u8* persistentEntry;
    struct PrimarySpriteData* sprite;
    register u32 zero asm("r3");

    persistent = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    persistentEntry = &persistent[gCurrentRoom * MAX_SPRITE_SLOTS_PER_ROOM + sprite->roomSlot];
    zero = 0;
    *persistentEntry = 33;
    sprite->warioCollision = 29;
    sprite->pOamData = sEscapeSwitchPressedOam;
    /* agbcc otherwise inserts a move before these zero stores. */
    asm("strb %1, [%0, #22]\n"
        "strh %1, [%0, #20]" : : "r"(sprite), "r"(zero));
    sprite->pose = 18;
    sprite->work0 = 13;
    gSwitchPressed = 1;
    gUnk_3000035 = 1;
    gSwitchStates[SWITCH_ESCAPE] = SWITCH_STATE_SWITCHING_ON;
    gTimerState = 1;
    gUnk_3000BEC = zero;
    gUnk_3000C01 = 3;
    gUnk_3000C03 = 2;
    SpriteSpawnSecondary(200, 384, 78);
    {
        register struct WarioData* wario asm("r2");
        register u32 y asm("r0");
        register u32 x asm("r1");

        wario = &gWarioData;
        y = wario->yPosition;
        y -= gBg1YPosition;
        x = wario->xPosition;
        {
            register u32 bgX asm("r2");

            bgX = gBg1XPosition;
            bgX += 64;
            x -= bgX;
            SpriteSpawnSecondary(y, x, 79);
        }
    }
    m4aMPlayAllStop();
}

void EscapeSwitchCountdown(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("ip");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r2");
    register u32 shiftedTimer asm("r0");
    register u8 checkedTimer asm("r1");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    {
        register u8* storePtr asm("r1");

        storePtr = timerPtr;
        *storePtr = timer;
    }
    shiftedTimer = timer << 24;
    checkedTimer = shiftedTimer >> 24;
    if (checkedTimer != 0) {
        register u8 soundTimer asm("r0");

        soundTimer = checkedTimer;
        if (soundTimer == 12) {
            m4aSongNumStart(SE_ESCAPE_SWITCH_COUNTDOWN);
            VoiceSetPlay(5);
        }
    } else {
        register u8 resetTimer asm("r0");
        register u8* storePtr asm("r1");

        sprite->pOamData = sEscapeSwitchActiveOam;
        /* agbcc otherwise re-normalizes the zero before the halfword store. */
        asm("strb %1, [%0, #22]\n"
            "strh %1, [%0, #20]" : : "r"(sprite), "r"(checkedTimer));
        sprite->pose = 24;
        resetTimer = 40;
        storePtr = timerPtr;
        *storePtr = resetTimer;
        gWarioPauseTimer = 200;
    }
}

void SwitchReleaseDelay(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pOamData = sSwitchReleasedOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 20;
        sprite->work0 = 34;
    }
}

void SwitchRespawnDelay(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8* timerPtr asm("r4");
    register u8 rawTimer asm("r0");
    register u32 shiftedTimer asm("r0");
    register u8 timer asm("r1");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    rawTimer = *timerPtr;
    rawTimer--;
    *timerPtr = rawTimer;
    shiftedTimer = rawTimer << 24;
    timer = shiftedTimer >> 24;
    if (timer == 0) {
        register u8* hitboxPtr asm("r2");
        register const struct AnimationFrame* oam asm("r0");
        register struct PrimarySpriteData* work asm("r2");
        register struct PrimarySpriteData* callSprite asm("r5");

        hitboxPtr = (u8*)sprite + 35;
        *hitboxPtr = 176;
        oam = sSwitchPressedOam;
        work = sprite;
        work->pOamData = oam;
        /* Keep the already-normalized zero in r1 for both animation fields. */
        asm("strb %1, [%0, #22]\n"
            "strh %1, [%0, #20]" : : "r"(work), "r"(timer));
        work->pose = 48;
        {
            register u8 roomSlot asm("r1");
            register u8 gfxSlot asm("r2");

            roomSlot = work->roomSlot;
            gfxSlot = work->gfxSlot;
            /* Place the preserved sprite pointer after both byte argument loads. */
            asm("mov %0, %1" : "=r"(callSprite) : "r"(sprite));
            func_801E430(170, roomSlot, gfxSlot, callSprite->yPosition, callSprite->xPosition);
        }
        *timerPtr = 33;
    }
}

void SwitchUpdateActivationEffects(void)
{
    if (gTimerState <= 4) {
        return;
    }

    switch (gCurrentSprite.work0) {
        case 33:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 30, gCurrentSprite.xPosition, SSPRITE_06);
            gCurrentSprite.pOamData = sSwitchEffectActiveOam;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            break;
        case 30:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition - 16, SSPRITE_06);
            break;
        case 26:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition + 40, SSPRITE_06);
            break;
        case 22:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 128, gCurrentSprite.xPosition, SSPRITE_06);
            break;
        case 18:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition, SSPRITE_06);
            break;
        case 14:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 128, gCurrentSprite.xPosition - 24, SSPRITE_06);
            break;
        case 11:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 90, gCurrentSprite.xPosition + 36, SSPRITE_06);
            break;
        case 8:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 160, gCurrentSprite.xPosition - 16, SSPRITE_06);
            break;
        case 4:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 192, gCurrentSprite.xPosition + 24, SSPRITE_06);
            break;
        case 0:
            gCurrentSprite.status = 0;
            break;
    }
    gCurrentSprite.work0--;
}

void SwitchEffectInit(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u32 statusBits asm("r2");
    register u8 zero asm("r2");
    register u16 zero16 asm("r4");
    register u8 value16 asm("r3");
    register u8 value4 asm("r1");
    register u8* ptr asm("r0");
    register u8* drawPtr asm("r1");
    register const struct AnimationFrame* oam asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusBits = 0x8400;
    status = statusBits;
    zero = 0;
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    status &= 0xFFFB;
    drawPtr = (u8*)sprite;
    *(u16*)drawPtr = status;
    drawPtr += 32;
    status = 24;
    *drawPtr = status;
    ptr = (u8*)sprite + 33;
    *ptr = zero;
    ptr++;
    value16 = 16;
    *ptr = value16;
    ptr++;
    value4 = 4;
    *ptr = value4;
    ptr++;
    *ptr = value4;
    ptr++;
    *ptr = value4;
    /* agbcc otherwise folds this required increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = value4;
    oam = sSwitchEffectIdleOam;
    drawPtr = (u8*)sprite;
    *(const struct AnimationFrame**)(drawPtr + 4) = oam;
    drawPtr[22] = zero;
    *(u16*)(drawPtr + 20) = zero16;
    drawPtr[30] = zero;
    drawPtr[28] = value16;
}

void SpriteSwitch(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            if (gCurrentStageID == 0) {
                EscapeSwitchInit();
            } else {
                SwitchInit();
            }
            break;
        case 1:
            SwitchInit();
            break;
        case 2:
            SwitchInitPressed();
            break;
        case 17:
            EscapeSwitchActivate();
            break;
        case 18:
            EscapeSwitchCountdown();
            break;
        case 24:
            SwitchReleaseDelay();
            break;
        case 20:
            SwitchRespawnDelay();
            break;
        case 111:
            EscapeSwitchWaitForWario();
            break;
        case 113:
            EscapeSwitchReset();
            break;
        case 48:
            SwitchUpdateActivationEffects();
            break;
    }
    func_8026838();
}

void SpriteSwitchEffect(void)
{
    u32 result;

    result = SpriteUtilDespawnChildWithParent(7);
    if (result == 0) {
        gCurrentSprite.disableWarioCollisionTimer = 1;
        if (gCurrentSprite.pose == 0) {
            SwitchEffectInit();
        } else if (gTimerState > 4) {
            gCurrentSprite.status = result;
        }
    }
}