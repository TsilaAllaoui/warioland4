#include "sprite_ai/goggley_blade.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sGoggleyBladeHorizontalOam_Frame3[] = {
    2,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-14, 3, SPRITE_SIZE_32x8, 0, 576, 8, 0),
};

const u16 sGoggleyBladeHorizontalOam_Frame4[] = {
    4,
    OAM_ENTRY(0, -10, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(1, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-14, 3, SPRITE_SIZE_16x8, 0, 576, 8, 0),
};

const u16 sGoggleyBladeHorizontalOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-14, 3, SPRITE_SIZE_16x8, 0, 576, 8, 0),
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -3, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
};

const u16 sGoggleyBladeHorizontalOam_Frame2[] = {
    4,
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 580, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, 0, 586, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-14, 3, SPRITE_SIZE_16x8, 0, 576, 8, 0),
};

const u16 sGoggleyBladeHurtHorizontalOam_Frame1[] = {
    3,
    OAM_ENTRY(2, -13, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_16x8, 0, 578, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeHurtHorizontalOam_Frame2[] = {
    3,
    OAM_ENTRY(0, -10, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(1, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeHurtHorizontalOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -3, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
};

const u16 sGoggleyBladeHurtHorizontalOam_Frame4[] = {
    3,
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 580, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, 0, 586, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeDefeatedHorizontalOam_Frame1[] = {
    4,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 618, 8, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_16x8, 0, 578, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeDefeatedHorizontalOam_Frame2[] = {
    4,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 618, 8, 0),
    OAM_ENTRY(0, -10, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(1, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeDefeatedHorizontalOam_Frame3[] = {
    5,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 618, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -3, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_8x8, 0, 578, 8, 0),
};

const u16 sGoggleyBladeDefeatedHorizontalOam_Frame4[] = {
    4,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x8, 0, 618, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 580, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, 0, 586, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_16x32, 0, 520, 8, 0),
};

const u16 sGoggleyBladeTurnDownOam_Frame1[] = {
    3,
    OAM_ENTRY(-14, -3, SPRITE_SIZE_32x8, 0, 628, 8, 0),
    OAM_ENTRY(-14, -11, SPRITE_SIZE_16x8, 0, 632, 8, 0),
    OAM_ENTRY(2, -11, SPRITE_SIZE_8x8, 0, 634, 8, 0),
};

const u8 sGoggleyBladeRawData_83C8512[] = {
    0x03, 0x00, 0xF5, 0x00, 0xF8, 0x41, 0x5D, 0x82, 0x03, 0x00, 0xF7, 0x01, 0x7F, 0x82, 0xF2, 0x00,
    0x05, 0x00, 0x5F, 0x82,
};

const u16 sGoggleyBladeTurnDownOam_Frame2[] = {
    2,
    OAM_ENTRY(-9, -7, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 575, 8, 0),
};

const u16 sGoggleyBladeTurnDownOam_Frame3[] = {
    5,
    OAM_ENTRY(-5, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 601, 8, 0),
    OAM_ENTRY(-1, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-1, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 601, 8, 0),
};

const u16 sGoggleyBladeTurnDownOam_Frame4[] = {
    5,
    OAM_ENTRY(-5, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 543, 8, 0),
    OAM_ENTRY(-1, -11, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-1, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 602, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 602, 8, 0),
};

const u16 sGoggleyBladeTurnDownOam_Frame5[] = {
    3,
    OAM_ENTRY(-2, -19, SPRITE_SIZE_8x32, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-10, -3, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-10, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 603, 8, 0),
};

const u16 sGoggleyBladeVerticalUpOam_Frame3[] = {
    2,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x32, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x32, ST_OAM_VFLIP, 531, 8, 0),
};

const u16 sGoggleyBladeVerticalUpOam_Frame4[] = {
    4,
    OAM_ENTRY(-6, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-11, 2, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 593, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 595, 8, 0),
};

const u16 sGoggleyBladeVerticalUpOam_Frame1[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 593, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 595, 8, 0),
    OAM_ENTRY(-5, 1, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 623, 8, 0),
    OAM_ENTRY(-13, 9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 591, 8, 0),
    OAM_ENTRY(-11, 3, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
};

const u16 sGoggleyBladeVerticalUpOam_Frame2[] = {
    4,
    OAM_ENTRY(-9, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(7, 1, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 590, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 593, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 595, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalUpOam_Frame1[] = {
    4,
    OAM_ENTRY(-11, 3, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(5, 3, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalUpOam_Frame2[] = {
    4,
    OAM_ENTRY(-6, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-11, 2, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalUpOam_Frame3[] = {
    5,
    OAM_ENTRY(-5, 1, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 623, 8, 0),
    OAM_ENTRY(-13, 9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 591, 8, 0),
    OAM_ENTRY(-11, 3, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalUpOam_Frame4[] = {
    4,
    OAM_ENTRY(-9, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(7, 1, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 590, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalUpOam_Frame1[] = {
    5,
    OAM_ENTRY(0, -9, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 622, 8, 0),
    OAM_ENTRY(-11, 3, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(5, 3, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 531, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalUpOam_Frame2[] = {
    5,
    OAM_ENTRY(0, -9, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 622, 8, 0),
    OAM_ENTRY(-6, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-11, 2, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalUpOam_Frame3[] = {
    6,
    OAM_ENTRY(0, -9, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 622, 8, 0),
    OAM_ENTRY(-5, 1, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 623, 8, 0),
    OAM_ENTRY(-13, 9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 591, 8, 0),
    OAM_ENTRY(-11, 3, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 561, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalUpOam_Frame4[] = {
    5,
    OAM_ENTRY(0, -9, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 622, 8, 0),
    OAM_ENTRY(-9, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 525, 8, 0),
    OAM_ENTRY(7, 1, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 590, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 589, 8, 0),
};

const u8 sGoggleyBladeRawData_83C86DE[] = {
    0x04, 0x00, 0xF4, 0x00, 0xF4, 0x41, 0x16, 0x82, 0xF4, 0x80, 0x04, 0x00, 0x18, 0x82, 0x04, 0x40,
    0xF4, 0x01, 0x56, 0x82, 0x04, 0x00, 0x04, 0x00, 0x58, 0x82, 0x03, 0x00, 0xF4, 0x00, 0xF9, 0x41,
    0x14, 0x82, 0x04, 0x40, 0xF9, 0x01, 0x54, 0x82, 0xFD, 0x00, 0xF1, 0x01, 0x7B, 0x82, 0x03, 0x00,
    0xF4, 0x00, 0xF6, 0x51, 0x14, 0x82, 0x04, 0x40, 0xF6, 0x11, 0x54, 0x82, 0xFD, 0x00, 0x06, 0x10,
    0x7B, 0x82, 0x04, 0x00, 0xF4, 0x00, 0xF5, 0x41, 0x16, 0x82, 0xF4, 0x80, 0x05, 0x00, 0x18, 0x82,
    0x04, 0x40, 0xF5, 0x01, 0x56, 0x82, 0x04, 0x00, 0x05, 0x00, 0x58, 0x82, 0x03, 0x00, 0xFD, 0x00,
    0xF4, 0x61, 0x0A, 0x82, 0xFD, 0x80, 0x04, 0x20, 0x0C, 0x82, 0xF5, 0x40, 0xF8, 0x21, 0x46, 0x82,
    0x05, 0x00, 0xFF, 0x40, 0xF4, 0x21, 0x60, 0x82, 0xFF, 0x00, 0x04, 0x20, 0x62, 0x82, 0xF7, 0x40,
    0xF8, 0x21, 0x66, 0x82, 0x07, 0x00, 0xFB, 0x21, 0x63, 0x82, 0xFA, 0x00, 0xF4, 0x01, 0x60, 0x82,
    0x05, 0x00, 0xFA, 0x40, 0xF4, 0x01, 0x60, 0x82, 0xFA, 0x00, 0x04, 0x00, 0x62, 0x82, 0x02, 0x40,
    0xF8, 0x01, 0x66, 0x82, 0xF2, 0x00, 0xFB, 0x01, 0x63, 0x82, 0xFF, 0x00, 0xF4, 0x21, 0x60, 0x82,
    0x03, 0x00, 0xF4, 0x00, 0xF4, 0x41, 0x0A, 0x82, 0xF4, 0x80, 0x04, 0x00, 0x0C, 0x82, 0x04, 0x40,
    0xF8, 0x01, 0x46, 0x82, 0x05, 0x00, 0xF9, 0x00, 0xF6, 0x01, 0x6A, 0x82, 0xF9, 0x00, 0x00, 0x40,
    0x44, 0x82, 0xF1, 0x00, 0x00, 0x00, 0x4A, 0x82, 0xF3, 0x00, 0xF2, 0x41, 0x00, 0x82, 0x03, 0x40,
    0xF2, 0x01, 0x40, 0x82, 0x05, 0x00, 0xF7, 0x00, 0xFF, 0x21, 0x6E, 0x82, 0x01, 0x00, 0xF7, 0x61,
    0x0D, 0x82, 0x01, 0x00, 0x07, 0x20, 0x4E, 0x82, 0xF3, 0x00, 0xF5, 0x61, 0x51, 0x82, 0xF3, 0x80,
    0x05, 0x20, 0x53, 0x82, 0x05, 0x00, 0xF3, 0x00, 0xFE, 0x51, 0x00, 0x82, 0x03, 0x40, 0xFE, 0x11,
    0x40, 0x82, 0xF5, 0x80, 0xF8, 0x11, 0x06, 0x82, 0xFD, 0x80, 0xF0, 0x11, 0x07, 0x82, 0x03, 0x00,
    0xF6, 0x11, 0x42, 0x82, 0x03, 0x00, 0xFD, 0x40, 0xEE, 0x51, 0x74, 0x82, 0xF5, 0x40, 0xFE, 0x11,
    0x78, 0x82, 0xF5, 0x00, 0xF6, 0x11, 0x7A, 0x82,
};

const u16 sGoggleyBladeTurnUpOam_Frame1[] = {
    2,
    OAM_ENTRY(-9, -9, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(4, 4, SPRITE_SIZE_8x8, 0, 575, 8, 0),
};

const u16 sGoggleyBladeTurnUpOam_Frame2[] = {
    5,
    OAM_ENTRY(-5, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_8x16, 0, 537, 8, 0),
    OAM_ENTRY(-8, 11, SPRITE_SIZE_8x8, 0, 601, 8, 0),
    OAM_ENTRY(-1, -5, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(-1, 11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 601, 8, 0),
};

const u16 sGoggleyBladeTurnUpOam_Frame3[] = {
    5,
    OAM_ENTRY(-5, -13, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(-1, -5, SPRITE_SIZE_8x16, 0, 538, 8, 0),
    OAM_ENTRY(-1, 11, SPRITE_SIZE_8x8, 0, 602, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 538, 8, 0),
    OAM_ENTRY(-8, 11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 602, 8, 0),
};

const u16 sGoggleyBladeTurnUpOam_Frame4[] = {
    3,
    OAM_ENTRY(-6, -13, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(2, 3, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 603, 8, 0),
};

const u16 sGoggleyBladeVerticalDownOam_Frame3[] = {
    2,
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 531, 8, 0),
};

const u16 sGoggleyBladeVerticalDownOam_Frame4[] = {
    4,
    OAM_ENTRY(-10, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
    OAM_ENTRY(-5, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-13, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 595, 8, 0),
};

const u16 sGoggleyBladeVerticalDownOam_Frame1[] = {
    5,
    OAM_ENTRY(-5, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-13, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 595, 8, 0),
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 623, 8, 0),
    OAM_ENTRY(-3, -17, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 591, 8, 0),
    OAM_ENTRY(3, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
};

const u16 sGoggleyBladeVerticalDownOam_Frame2[] = {
    4,
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 590, 8, 0),
    OAM_ENTRY(-5, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-13, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 595, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalDownOam_Frame1[] = {
    4,
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalDownOam_Frame2[] = {
    4,
    OAM_ENTRY(-10, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalDownOam_Frame3[] = {
    5,
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 623, 8, 0),
    OAM_ENTRY(-3, -17, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 591, 8, 0),
    OAM_ENTRY(3, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeHurtVerticalDownOam_Frame4[] = {
    4,
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 590, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalDownOam_Frame1[] = {
    5,
    OAM_ENTRY(-8, 1, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 622, 8, 0),
    OAM_ENTRY(-5, -19, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-13, -19, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalDownOam_Frame2[] = {
    5,
    OAM_ENTRY(-8, 1, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 622, 8, 0),
    OAM_ENTRY(-10, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalDownOam_Frame3[] = {
    6,
    OAM_ENTRY(-8, 1, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 622, 8, 0),
    OAM_ENTRY(-11, -9, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 623, 8, 0),
    OAM_ENTRY(-3, -17, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 591, 8, 0),
    OAM_ENTRY(3, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 561, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u16 sGoggleyBladeDefeatedVerticalDownOam_Frame4[] = {
    5,
    OAM_ENTRY(-8, 1, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 622, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-15, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 590, 8, 0),
    OAM_ENTRY(-4, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 587, 8, 0),
    OAM_ENTRY(-12, -3, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 589, 8, 0),
};

const u8 sGoggleyBladeRawData_83C89CE[] = {
    0x05, 0x00, 0x01, 0x00, 0xF9, 0x11, 0x6E, 0x82, 0xEF, 0x00, 0xF9, 0x51, 0x0D, 0x82, 0xF7, 0x00,
    0xF1, 0x11, 0x4E, 0x82, 0xFD, 0x00, 0xFB, 0x51, 0x51, 0x82, 0xFD, 0x80, 0xF3, 0x11, 0x53, 0x82,
    0x00, 0x00,
};

const struct AnimationFrame sGoggleyBladeHorizontalOam[] = {
    {sGoggleyBladeHorizontalOam_Frame1, 10},
    {sGoggleyBladeHorizontalOam_Frame2, 10},
    {sGoggleyBladeHorizontalOam_Frame3, 10},
    {sGoggleyBladeHorizontalOam_Frame4, 10},
    {sGoggleyBladeHorizontalOam_Frame1, 10},
    {sGoggleyBladeHorizontalOam_Frame2, 10},
    {sGoggleyBladeHorizontalOam_Frame3, 10},
    {sGoggleyBladeHorizontalOam_Frame4, 40},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeKnockbackHorizontalOam[] = {
    {sGoggleyBladeHorizontalOam_Frame3, 5},
    {sGoggleyBladeHorizontalOam_Frame4, 5},
    {sGoggleyBladeHorizontalOam_Frame1, 5},
    {sGoggleyBladeHorizontalOam_Frame2, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeHurtHorizontalOam[] = {
    {sGoggleyBladeHurtHorizontalOam_Frame1, 6},
    {sGoggleyBladeHurtHorizontalOam_Frame2, 6},
    {sGoggleyBladeHurtHorizontalOam_Frame3, 6},
    {sGoggleyBladeHurtHorizontalOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeDefeatedHorizontalOam[] = {
    {sGoggleyBladeDefeatedHorizontalOam_Frame1, 6},
    {sGoggleyBladeDefeatedHorizontalOam_Frame2, 6},
    {sGoggleyBladeDefeatedHorizontalOam_Frame3, 6},
    {sGoggleyBladeDefeatedHorizontalOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeVerticalUpOam[] = {
    {sGoggleyBladeVerticalUpOam_Frame1, 10},
    {sGoggleyBladeVerticalUpOam_Frame2, 10},
    {sGoggleyBladeVerticalUpOam_Frame3, 10},
    {sGoggleyBladeVerticalUpOam_Frame4, 10},
    {sGoggleyBladeVerticalUpOam_Frame1, 10},
    {sGoggleyBladeVerticalUpOam_Frame2, 10},
    {sGoggleyBladeVerticalUpOam_Frame3, 10},
    {sGoggleyBladeVerticalUpOam_Frame4, 40},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeKnockbackVerticalUpOam[] = {
    {sGoggleyBladeVerticalUpOam_Frame3, 5},
    {sGoggleyBladeVerticalUpOam_Frame4, 5},
    {sGoggleyBladeVerticalUpOam_Frame1, 5},
    {sGoggleyBladeVerticalUpOam_Frame2, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeHurtVerticalUpOam[] = {
    {sGoggleyBladeHurtVerticalUpOam_Frame1, 6},
    {sGoggleyBladeHurtVerticalUpOam_Frame2, 6},
    {sGoggleyBladeHurtVerticalUpOam_Frame3, 6},
    {sGoggleyBladeHurtVerticalUpOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeDefeatedVerticalUpOam[] = {
    {sGoggleyBladeDefeatedVerticalUpOam_Frame1, 5},
    {sGoggleyBladeDefeatedVerticalUpOam_Frame2, 5},
    {sGoggleyBladeDefeatedVerticalUpOam_Frame3, 5},
    {sGoggleyBladeDefeatedVerticalUpOam_Frame4, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeVerticalDownOam[] = {
    {sGoggleyBladeVerticalDownOam_Frame1, 10},
    {sGoggleyBladeVerticalDownOam_Frame2, 10},
    {sGoggleyBladeVerticalDownOam_Frame3, 10},
    {sGoggleyBladeVerticalDownOam_Frame4, 10},
    {sGoggleyBladeVerticalDownOam_Frame1, 10},
    {sGoggleyBladeVerticalDownOam_Frame2, 10},
    {sGoggleyBladeVerticalDownOam_Frame3, 10},
    {sGoggleyBladeVerticalDownOam_Frame4, 40},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeKnockbackVerticalDownOam[] = {
    {sGoggleyBladeVerticalDownOam_Frame3, 5},
    {sGoggleyBladeVerticalDownOam_Frame4, 5},
    {sGoggleyBladeVerticalDownOam_Frame1, 5},
    {sGoggleyBladeVerticalDownOam_Frame2, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeHurtVerticalDownOam[] = {
    {sGoggleyBladeHurtVerticalDownOam_Frame1, 6},
    {sGoggleyBladeHurtVerticalDownOam_Frame2, 6},
    {sGoggleyBladeHurtVerticalDownOam_Frame3, 6},
    {sGoggleyBladeHurtVerticalDownOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeDefeatedVerticalDownOam[] = {
    {sGoggleyBladeDefeatedVerticalDownOam_Frame1, 5},
    {sGoggleyBladeDefeatedVerticalDownOam_Frame2, 5},
    {sGoggleyBladeDefeatedVerticalDownOam_Frame3, 5},
    {sGoggleyBladeDefeatedVerticalDownOam_Frame4, 5},
    ANIMATION_TERMINATOR
};

const u8 sGoggleyBladeRawData_83C8C30[] = {
    0xA2, 0x87, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC2, 0x87, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xCE, 0x89, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sGoggleyBladeTurnDownOam[] = {
    {sGoggleyBladeHorizontalOam_Frame1, 2},
    {sGoggleyBladeTurnDownOam_Frame1, 3},
    {sGoggleyBladeTurnDownOam_Frame2, 3},
    {sGoggleyBladeTurnDownOam_Frame3, 4},
    {sGoggleyBladeTurnDownOam_Frame4, 4},
    {sGoggleyBladeTurnDownOam_Frame5, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGoggleyBladeTurnUpOam[] = {
    {sGoggleyBladeHorizontalOam_Frame1, 2},
    {sGoggleyBladeTurnDownOam_Frame1, 3},
    {sGoggleyBladeTurnUpOam_Frame1, 3},
    {sGoggleyBladeTurnUpOam_Frame2, 4},
    {sGoggleyBladeTurnUpOam_Frame3, 4},
    {sGoggleyBladeTurnUpOam_Frame4, 4},
    ANIMATION_TERMINATOR
};

void InitGoggleyBlade(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 75;
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 16;
}

void GoggleyBladeSetHorizontalMovement(void)
{
    gCurrentSprite.pOamData = sGoggleyBladeHorizontalOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 0;
    gCurrentSprite.work2 = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.warioCollision = 75;
    gCurrentSprite.hitboxExtentUp = 40;
    gCurrentSprite.hitboxExtentDown = 24;
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 24;
        gCurrentSprite.hitboxExtentRight = 40;
    } else {
        gCurrentSprite.hitboxExtentLeft = 40;
        gCurrentSprite.hitboxExtentRight = 24;
    }
}

void GoggleyBladeHorizontalMovement(void)
{
    u32 nearby;
    u32 loops;
    u8 globalID;
    u8 index;
    s16 velocity;

    nearby = SpriteUtilCheckWarioNearbyLeftRight(70, 450);
    globalID = gCurrentSprite.globalID;
    loops = 3;
    if (globalID == 75) {
        loops = 1;
    }

    index = gCurrentSprite.work2;
    velocity = sGoggleyBladeMovementVelocity[index];
    if (velocity == S16_MAX) {
        velocity = sGoggleyBladeMovementVelocity[0];
        index = 0;
        gCurrentSprite.work0++;
    }
    gCurrentSprite.work2 = index + 1;

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if (nearby == 8) {
            gCurrentSprite.pose = 112;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 76);
        if ((gUnk_3000A51 & 15) != 0) {
            gCurrentSprite.pose = 19;
            return;
        }
        gCurrentSprite.xPosition += velocity;
        if (gCurrentSprite.work0 == loops) {
            gCurrentSprite.pose = 19;
        }
    } else {
        if (nearby == 4) {
            gCurrentSprite.pose = 112;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 76);
        if ((gUnk_3000A51 & 15) != 0) {
            gCurrentSprite.pose = 17;
            return;
        }
        gCurrentSprite.xPosition -= velocity;
        if (gCurrentSprite.work0 == loops) {
            gCurrentSprite.pose = 17;
        }
    }
}

void GoggleyBladeSetTurnDown(void)
{
    gCurrentSprite.pOamData = sGoggleyBladeTurnDownOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 18;
}

void GoggleyBladeTurnDown(void)
{
    register u8* indexPointer asm("r4");
    register struct PrimarySpriteData* sprite asm("r5");
    register u32 index asm("r2");
    register u32 velocity asm("r6");

    {
        register u32 base asm("r0");
        base = (u32)&gCurrentSprite;
        indexPointer = (u8*)(base + 42);
        index = *indexPointer;
        sprite = (struct PrimarySpriteData*)base;
    }
    if (index == 8) {
        sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
        sprite->warioCollision = 76;
    }
    {
        const s16* table;
        int zero;
        register u32 temp asm("r0");
        s32 auxiliary;

        table = sGoggleyBladeTurnVelocity;
        temp = index;
        temp <<= 1;
        temp += (u32)table;
        velocity = *(u16*)temp;
        zero = 0;
        auxiliary = *(s16*)(temp + zero);
        temp = S16_MAX;
        if (auxiliary == temp) {
            temp = index - 1;
            temp <<= 1;
            temp += (u32)table;
            velocity = *(u16*)temp;
            sprite->pose = 110;
        } else {
            temp = index + 1;
            *(u8*)indexPointer = temp;
        }
    }

    {
        register struct PrimarySpriteData* moveSprite asm("r4");
        moveSprite = sprite;
        func_8023BFC(moveSprite->yPosition + 56, moveSprite->xPosition);
        if ((gUnk_3000A51 & 15) == 0) {
            moveSprite->yPosition += velocity;
        }
        func_8023BFC(sprite->yPosition, sprite->xPosition - 56);
        if ((gUnk_3000A51 & 15) == 0) {
            sprite->xPosition--;
        }
    }

}

void GoggleyBladeSetTurnUp(void)
{
    gCurrentSprite.pOamData = sGoggleyBladeTurnUpOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 20;
}

void GoggleyBladeTurnUp(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* indexPointer asm("r12");
    register u32 index asm("r2");
    register const s16* table asm("r4");
    register u32 velocity asm("r5");
    register int zero asm("r6");
    register u32 temp asm("r0");
    register s32 auxiliary asm("r1");

    sprite = &gCurrentSprite;
    indexPointer = &sprite->work3;
    index = *indexPointer;
    if (index == 8) {
        sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
        sprite->warioCollision = 77;
    }
    table = sGoggleyBladeTurnVelocity;
    temp = index;
    temp <<= 1;
    temp += (u32)table;
    velocity = *(u16*)temp;
    zero = 0;
    auxiliary = *(s16*)temp;
    temp = S16_MAX;
    if (auxiliary == temp) {
        temp = index - 1;
        temp <<= 1;
        temp += (u32)table;
        velocity = *(u16*)temp;
        sprite->pose = 110;
    } else {
        temp = index + 1;
        auxiliary = (u32)indexPointer;
        *(u8*)auxiliary = temp;
    }

    func_8023BFC(gCurrentSprite.yPosition - 56, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1 && (gUnk_3000A51 & 15) == 0) {
        gCurrentSprite.yPosition -= velocity;
    }
    func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 56);
    if ((gUnk_3000A51 & 15) == 0) {
        gCurrentSprite.xPosition++;
    }
}

void GoggleyBladeSetVerticalMovement(void)
{
    gCurrentSprite.hitboxExtentLeft = 24;
    gCurrentSprite.hitboxExtentRight = 40;
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pOamData = sGoggleyBladeVerticalDownOam;
        gCurrentSprite.warioCollision = 76;
        gCurrentSprite.hitboxExtentUp = 24;
        gCurrentSprite.hitboxExtentDown = 40;
    } else {
        gCurrentSprite.pOamData = sGoggleyBladeVerticalUpOam;
        gCurrentSprite.warioCollision = 77;
        gCurrentSprite.hitboxExtentUp = 40;
        gCurrentSprite.hitboxExtentDown = 24;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 0;
    gCurrentSprite.work2 = 0;
    gCurrentSprite.pose = 111;
}

void GoggleyBladeVerticalMovement(void)
{
    u32 nearby;
    u32 loops;
    u8 globalID;
    u8 index;
    s16 velocity;

    nearby = SpriteUtilCheckWarioNearbyAboveBelow(450, 70);
    globalID = gCurrentSprite.globalID;
    loops = 1;
    if (globalID == 75) {
        loops = 3;
    }

    index = gCurrentSprite.work2;
    velocity = sGoggleyBladeMovementVelocity[index];
    if (velocity == S16_MAX) {
        velocity = sGoggleyBladeMovementVelocity[0];
        index = 0;
        gCurrentSprite.work0++;
    }
    gCurrentSprite.work2 = index + 1;

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if (nearby == 2) {
            gCurrentSprite.pose = 112;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition + 64, gCurrentSprite.xPosition);
        if ((gUnk_3000A51 & 15) != 0) {
            gCurrentSprite.pose = 21;
            return;
        }
        gCurrentSprite.yPosition += velocity;
    } else {
        if (nearby == 1) {
            gCurrentSprite.pose = 112;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition - 76, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 != 1 || (gUnk_3000A51 & 15) != 0) {
            gCurrentSprite.pose = 21;
            return;
        }
        gCurrentSprite.yPosition -= velocity;
    }
    if (gCurrentSprite.work0 == loops) {
        gCurrentSprite.pose = 21;
    }
}

void GoggleyBladeSetTurnHorizontal(void)
{
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 22;
}

void GoggleyBladeTurnHorizontal(void)
{
    u8 index;
    s16 velocity;

    index = gCurrentSprite.work3;
    velocity = sGoggleyBladeTurnVelocity[index];
    if (velocity == S16_MAX) {
        velocity = sGoggleyBladeTurnVelocity[index - 1];
        gCurrentSprite.pose = 15;
    } else {
        gCurrentSprite.work3 = index + 1;
    }

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(gCurrentSprite.yPosition + 56, gCurrentSprite.xPosition);
        if ((gUnk_3000A51 & 15) == 0) {
            gCurrentSprite.yPosition++;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 56);
        if ((gUnk_3000A51 & 15) == 0) {
            gCurrentSprite.xPosition += velocity;
        }
    } else {
        func_8023BFC(gCurrentSprite.yPosition - 56, gCurrentSprite.xPosition);
        if (gUnk_30000A0.unk_02 == 1 && (gUnk_3000A51 & 15) == 0) {
            gCurrentSprite.yPosition--;
        }
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 56);
        if ((gUnk_3000A51 & 15) == 0) {
            gCurrentSprite.xPosition -= velocity;
        }
    }
}

void GoggleyBladeSetKnockback(void)
{
    if (gCurrentSprite.warioCollision == 76) {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackVerticalDownOam;
    } else if (gCurrentSprite.warioCollision == 77) {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackVerticalUpOam;
    } else {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackHorizontalOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.pose = 36;
}

void GoggleyBladeKnockback(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        if (gCurrentSprite.warioCollision == 76) {
            func_8023BFC(gCurrentSprite.yPosition + 76, gCurrentSprite.xPosition);
            if ((gUnk_3000A51 & 15) != 0) {
                gCurrentSprite.pose = 21;
            } else {
                gCurrentSprite.yPosition += 8;
            }
        } else if (gCurrentSprite.warioCollision == 77) {
            func_8023BFC(gCurrentSprite.yPosition - 76, gCurrentSprite.xPosition);
            if (gUnk_30000A0.unk_02 != 1 || (gUnk_3000A51 & 15) != 0) {
                gCurrentSprite.pose = 21;
            } else {
                gCurrentSprite.yPosition -= 8;
            }
        } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 76);
            if ((gUnk_3000A51 & 15) != 0) {
                gCurrentSprite.pose = 19;
            } else {
                gCurrentSprite.xPosition += 8;
            }
        } else {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 76);
            if ((gUnk_3000A51 & 15) != 0) {
                gCurrentSprite.pose = 17;
            } else {
                gCurrentSprite.xPosition -= 8;
            }
        }
    } else if (gCurrentSprite.warioCollision == 76) {
        gCurrentSprite.pose = 21;
    } else if (gCurrentSprite.warioCollision == 77) {
        gCurrentSprite.pose = 110;
    } else {
        gCurrentSprite.pose = 15;
    }
}

void GoggleyBladeSetStunned(void)
{
    if (gCurrentSprite.warioCollision == 76) {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackVerticalDownOam;
    } else if (gCurrentSprite.warioCollision == 77) {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackVerticalUpOam;
    } else {
        gCurrentSprite.pOamData = sGoggleyBladeKnockbackHorizontalOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 30;
    gCurrentSprite.pose = 113;
}

void GoggleyBladeStunned(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        if (gCurrentSprite.warioCollision == 76) {
            gCurrentSprite.pOamData = sGoggleyBladeHurtVerticalDownOam;
        } else if (gCurrentSprite.warioCollision == 77) {
            gCurrentSprite.pOamData = sGoggleyBladeHurtVerticalUpOam;
        } else {
            gCurrentSprite.pOamData = sGoggleyBladeHurtHorizontalOam;
        }
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.work0 = 100;
        gCurrentSprite.pose = 36;
        m4aSongNumStart(SE_GOGGLEY_BLADE_HIT);
    }
}

void DefeatGoggleyBlade(void)
{
    if (gCurrentSprite.warioCollision == 76) {
        gCurrentSprite.pOamData = sGoggleyBladeDefeatedVerticalDownOam;
    } else if (gCurrentSprite.warioCollision == 77) {
        gCurrentSprite.pOamData = sGoggleyBladeDefeatedVerticalUpOam;
    } else {
        gCurrentSprite.pOamData = sGoggleyBladeDefeatedHorizontalOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, SSPRITE_06);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void GoggleyBladeFallRight(void)
{
    gCurrentSprite.pose = 32;
    DefeatGoggleyBlade();
}

void GoggleyBladeFallLeft(void)
{
    gCurrentSprite.pose = 34;
    DefeatGoggleyBlade();
}

void SpriteGoggleyBlade(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitGoggleyBlade();
        case 15:
            GoggleyBladeSetHorizontalMovement();
        case 16:
            GoggleyBladeHorizontalMovement();
            break;
        case 17:
            GoggleyBladeSetTurnDown();
        case 18:
            GoggleyBladeTurnDown();
            break;
        case 19:
            GoggleyBladeSetTurnUp();
        case 20:
            GoggleyBladeTurnUp();
            break;
        case 110:
            GoggleyBladeSetVerticalMovement();
        case 111:
            GoggleyBladeVerticalMovement();
            break;
        case 112:
            GoggleyBladeSetStunned();
        case 113:
            GoggleyBladeStunned();
            break;
        case 21:
            GoggleyBladeSetTurnHorizontal();
        case 22:
            GoggleyBladeTurnHorizontal();
            break;
        case 35:
        case 37:
        case 39:
        case 41:
        case 51:
        case 53:
            GoggleyBladeSetKnockback();
        case 36:
            GoggleyBladeKnockback();
            break;
        case 31:
            GoggleyBladeFallRight();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
            GoggleyBladeFallLeft();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        default:
            SpriteUtilDie();
            break;
    }
}
