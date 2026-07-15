#include "sprite_ai/glass_bird.h"

#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sGlassBirdOam_Frame1[] = {
    7,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame2[] = {
    7,
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame3[] = {
    7,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-15, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(-1, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame4[] = {
    7,
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -22, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame5[] = {
    8,
    OAM_ENTRY(-7, -14, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(9, -14, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame6[] = {
    8,
    OAM_ENTRY(-7, -14, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(9, -14, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame7[] = {
    8,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame8[] = {
    8,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame9[] = {
    8,
    OAM_ENTRY(-9, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-17, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame10[] = {
    8,
    OAM_ENTRY(-9, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-17, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame11[] = {
    8,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame12[] = {
    8,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame13[] = {
    8,
    OAM_ENTRY(-4, -19, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame14[] = {
    8,
    OAM_ENTRY(-4, -19, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame15[] = {
    10,
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame16[] = {
    10,
    OAM_ENTRY(-16, -18, SPRITE_SIZE_16x16, 0, 533, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(-9, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(2, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame17[] = {
    10,
    OAM_ENTRY(-16, -18, SPRITE_SIZE_16x16, 0, 533, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(-9, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(2, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame18[] = {
    8,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(0, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 535, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame19[] = {
    8,
    OAM_ENTRY(-16, -20, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(0, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 535, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame20[] = {
    9,
    OAM_ENTRY(-8, -17, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame21[] = {
    9,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x8, 0, 512, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame22[] = {
    11,
    OAM_ENTRY(-11, -20, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-5, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(-11, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-5, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame23[] = {
    11,
    OAM_ENTRY(-11, -15, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(-5, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_8x8, 0, 549, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_8x8, 0, 549, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 553, 8, 0),
};

const u16 sGlassBirdOam_Frame24[] = {
    10,
    OAM_ENTRY(-8, -18, SPRITE_SIZE_8x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame25[] = {
    10,
    OAM_ENTRY(-8, -17, SPRITE_SIZE_8x16, 0, 539, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame26[] = {
    8,
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -6, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame27[] = {
    8,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -6, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame28[] = {
    7,
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 552, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame29[] = {
    7,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 552, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame30[] = {
    8,
    OAM_ENTRY(-18, -15, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(10, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame31[] = {
    8,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame32[] = {
    8,
    OAM_ENTRY(-19, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 540, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdOam_Frame33[] = {
    8,
    OAM_ENTRY(10, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 572, 8, 0),
    OAM_ENTRY(-18, -17, SPRITE_SIZE_8x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sGlassBirdFragmentOam_Frame1[] = {
    2,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_8x8, 0, 542, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sGlassBirdFragmentOam_Frame2[] = {
    2,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 542, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sGlassBirdFragmentCarriedOam_Frame1[] = {
    2,
    OAM_ENTRY(-5, -14, SPRITE_SIZE_8x8, 0, 542, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sGlassBirdFragmentCarriedOam_Frame2[] = {
    2,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 542, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame1[] = {
    6,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 551, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame2[] = {
    6,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 551, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-10, -12, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(2, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-9, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame3[] = {
    7,
    OAM_ENTRY(-4, -16, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-11, -19, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(4, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-14, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-11, -8, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(6, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_8x8, 0, 551, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame4[] = {
    7,
    OAM_ENTRY(-4, -18, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-14, -21, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(7, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(9, -9, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_8x8, 0, 551, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame5[] = {
    8,
    OAM_ENTRY(-4, -22, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-16, -23, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(10, -25, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-22, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-15, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(11, -8, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, 0, 551, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame6[] = {
    8,
    OAM_ENTRY(-4, -24, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-18, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(13, -26, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-24, -16, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(-17, -5, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(13, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x8, 0, 551, 8, 0),
    OAM_ENTRY(3, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame7[] = {
    8,
    OAM_ENTRY(-4, -25, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-20, -22, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(15, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-27, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-18, -2, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(15, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-4, -4, SPRITE_SIZE_8x8, 0, 551, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame8[] = {
    6,
    OAM_ENTRY(-4, -25, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-21, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(17, -21, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-31, -8, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(17, 0, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame9[] = {
    5,
    OAM_ENTRY(-4, -23, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-22, -15, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(19, -16, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(18, 5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(5, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame10[] = {
    3,
    OAM_ENTRY(-4, -19, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(20, -12, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(6, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame11[] = {
    1,
    OAM_ENTRY(-4, -14, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame12[] = {
    1,
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentBrokenOam_Frame13[] = {
    1,
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame1[] = {
    6,
    OAM_ENTRY(-4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 551, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(0, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame2[] = {
    6,
    OAM_ENTRY(-1, -16, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(2, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(1, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame3[] = {
    6,
    OAM_ENTRY(-8, -21, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(4, -22, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(9, -12, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-1, -19, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame4[] = {
    7,
    OAM_ENTRY(1, -22, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-7, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-7, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(6, -26, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(14, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(3, -2, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(3, -12, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame5[] = {
    7,
    OAM_ENTRY(-6, -26, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(9, -29, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(19, -11, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(4, 4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(3, -25, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame6[] = {
    7,
    OAM_ENTRY(5, -27, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(-5, -27, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(-5, -4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(11, -31, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(23, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(5, 14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(6, -9, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame7[] = {
    7,
    OAM_ENTRY(-3, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-4, 3, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(13, -32, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(26, -5, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(6, 25, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(6, -28, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(9, -7, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame8[] = {
    6,
    OAM_ENTRY(-2, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(-3, 14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(16, -33, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(29, 1, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 550, 8, 0),
    OAM_ENTRY(7, -29, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(11, -3, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame9[] = {
    5,
    OAM_ENTRY(0, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(18, -32, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(30, 10, SPRITE_SIZE_8x8, 0, 550, 8, 0),
    OAM_ENTRY(9, -27, SPRITE_SIZE_8x8, 0, 573, 8, 0),
    OAM_ENTRY(12, 2, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame10[] = {
    2,
    OAM_ENTRY(20, -28, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(10, -24, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame11[] = {
    2,
    OAM_ENTRY(22, -23, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(11, -19, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame12[] = {
    2,
    OAM_ENTRY(23, -15, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 518, 8, 0),
    OAM_ENTRY(11, -11, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u16 sGlassBirdFragmentDyingOam_Frame13[] = {
    2,
    OAM_ENTRY(24, -4, SPRITE_SIZE_8x8, 0, 518, 8, 0),
    OAM_ENTRY(11, -1, SPRITE_SIZE_8x8, 0, 573, 8, 0),
};

const u8 sGlassBirdRawData_83E45EE[] = {
    0x00, 0x00,
};

const struct AnimationFrame sGlassBirdOam[] = {
    {sGlassBirdOam_Frame1, 8},
    {sGlassBirdOam_Frame2, 8},
    {sGlassBirdOam_Frame3, 8},
    {sGlassBirdOam_Frame4, 8},
    {sGlassBirdOam_Frame5, 5},
    {sGlassBirdOam_Frame6, 5},
    {sGlassBirdOam_Frame7, 5},
    {sGlassBirdOam_Frame8, 5},
    {sGlassBirdOam_Frame9, 5},
    {sGlassBirdOam_Frame10, 5},
    {sGlassBirdOam_Frame11, 5},
    {sGlassBirdOam_Frame12, 5},
    {sGlassBirdOam_Frame5, 5},
    {sGlassBirdOam_Frame6, 5},
    {sGlassBirdOam_Frame7, 5},
    {sGlassBirdOam_Frame8, 5},
    {sGlassBirdOam_Frame9, 5},
    {sGlassBirdOam_Frame10, 5},
    {sGlassBirdOam_Frame11, 5},
    {sGlassBirdOam_Frame12, 4},
    {sGlassBirdOam_Frame13, 4},
    {sGlassBirdOam_Frame14, 4},
    {sGlassBirdOam_Frame15, 4},
    {sGlassBirdOam_Frame16, 4},
    {sGlassBirdOam_Frame17, 4},
    {sGlassBirdOam_Frame18, 4},
    {sGlassBirdOam_Frame19, 4},
    {sGlassBirdOam_Frame20, 4},
    {sGlassBirdOam_Frame21, 4},
    {sGlassBirdOam_Frame22, 4},
    {sGlassBirdOam_Frame23, 4},
    {sGlassBirdOam_Frame24, 4},
    {sGlassBirdOam_Frame25, 4},
    {sGlassBirdOam_Frame26, 3},
    {sGlassBirdOam_Frame27, 3},
    {sGlassBirdOam_Frame28, 3},
    {sGlassBirdOam_Frame29, 3},
    {sGlassBirdOam_Frame30, 3},
    {sGlassBirdOam_Frame31, 3},
    {sGlassBirdOam_Frame32, 3},
    {sGlassBirdOam_Frame33, 4},
    {sGlassBirdOam_Frame2, 8},
    {sGlassBirdOam_Frame3, 8},
    {sGlassBirdOam_Frame4, 8},
    {sGlassBirdOam_Frame1, 8},
    {sGlassBirdOam_Frame2, 8},
    {sGlassBirdOam_Frame3, 8},
    {sGlassBirdOam_Frame4, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGlassBirdFragmentOam[] = {
    {sGlassBirdFragmentOam_Frame1, 10},
    {sGlassBirdFragmentOam_Frame2, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGlassBirdFragmentCarriedOam[] = {
    {sGlassBirdFragmentCarriedOam_Frame1, 10},
    {sGlassBirdFragmentCarriedOam_Frame2, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGlassBirdFragmentBrokenOam[] = {
    {sGlassBirdFragmentBrokenOam_Frame1, 3},
    {sGlassBirdFragmentBrokenOam_Frame2, 3},
    {sGlassBirdFragmentBrokenOam_Frame3, 2},
    {sGlassBirdFragmentBrokenOam_Frame4, 2},
    {sGlassBirdFragmentBrokenOam_Frame5, 2},
    {sGlassBirdFragmentBrokenOam_Frame6, 2},
    {sGlassBirdFragmentBrokenOam_Frame7, 2},
    {sGlassBirdFragmentBrokenOam_Frame8, 2},
    {sGlassBirdFragmentBrokenOam_Frame9, 2},
    {sGlassBirdFragmentBrokenOam_Frame10, 2},
    {sGlassBirdFragmentBrokenOam_Frame11, 2},
    {sGlassBirdFragmentBrokenOam_Frame12, 2},
    {sGlassBirdFragmentBrokenOam_Frame13, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sGlassBirdFragmentDyingOam[] = {
    {sGlassBirdFragmentDyingOam_Frame1, 3},
    {sGlassBirdFragmentDyingOam_Frame2, 3},
    {sGlassBirdFragmentDyingOam_Frame3, 2},
    {sGlassBirdFragmentDyingOam_Frame4, 2},
    {sGlassBirdFragmentDyingOam_Frame5, 2},
    {sGlassBirdFragmentDyingOam_Frame6, 2},
    {sGlassBirdFragmentDyingOam_Frame7, 2},
    {sGlassBirdFragmentDyingOam_Frame8, 2},
    {sGlassBirdFragmentDyingOam_Frame9, 2},
    {sGlassBirdFragmentDyingOam_Frame10, 2},
    {sGlassBirdFragmentDyingOam_Frame11, 2},
    {sGlassBirdFragmentDyingOam_Frame12, 2},
    {sGlassBirdFragmentDyingOam_Frame13, 2},
    ANIMATION_TERMINATOR
};

void InitGlassBird(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->status |= 0x408;
    sprite->drawDistanceDown = 24;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = 1;
    sprite->hitboxExtentDown = 1;
    sprite->hitboxExtentLeft = 1;
    sprite->hitboxExtentRight = 1;
    sprite->pOamData = sGlassBirdOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->warioCollision = 0;
    sprite->pose = 16;
}

void UpdateGlassBird(void)
{
    struct PrimarySpriteData* sprite;
    u32 animation;
    sprite = &gCurrentSprite;
    animation = *(u32*)&sprite->animationTimer & 0xFFFFFF;
    if (animation == 0x40020) {
        SpriteSpawnAsChild(0xEB, sprite->roomSlot, sprite->gfxSlot,
                           sprite->yPosition + 56, sprite->xPosition);
    } else if (animation == 0x40004 && (sprite->status & 2)) {
        m4aSongNumStart(SE_GLASS_BIRD_FLAP);
    }
}

void InitGlassBirdFragment(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->status &= 0xFFFB;
    sprite->drawDistanceDown = 40;
    sprite->drawDistanceUp = 40;
    sprite->drawDistanceLeftRight = 40;
    sprite->hitboxExtentUp = 52;
    sprite->hitboxExtentDown = 0;
    sprite->hitboxExtentLeft = 28;
    sprite->hitboxExtentRight = 24;
    sprite->pOamData = sGlassBirdFragmentOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->warioCollision = 5;
    sprite->pose = 29;
}

void GlassBirdFragmentBreakInit(void)
{
    register struct PrimarySpriteData* sprite asm("r1");
    register u16 oldStatus asm("r0");
    register u16 status asm("r2");
    register u32 one asm("r4");
    register u32 zero16 asm("r5");
    register u32 zero asm("r3");

    sprite = &gCurrentSprite;
    zero16 = 0;
    one = 1;
    sprite->disableWarioCollisionTimer = one;
    oldStatus = sprite->status;
    status = 0x400;
    zero = 0;
    status |= oldStatus;
    status &= 0xFEF7;
    sprite->status = status;
    sprite->pOamData = sGlassBirdFragmentBrokenOam;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    sprite->work0 = 28;
    sprite->drawPriority = one;
    sprite->pose = 123;
    if (status & 2)
        m4aSongNumStart(SE_GLASS_BIRD_BREAK);
}

void GlassBirdFragmentBreak(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;
    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = --sprite->work0;
    if (timer == 0)
        sprite->status = 0;
}

void GlassBirdFragmentSetFallingPose(void)
{
    gCurrentSprite.pose = 30;
    gCurrentSprite.work3 = 0;
}

void GlassBirdFragmentDyingInit(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->pose = 123;
    sprite->pOamData = sGlassBirdFragmentDyingOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work0 = 28;
    sprite->drawPriority = 1;
    sprite->status = (sprite->status & 0xFEFF) | 0x400;
}

void GlassBirdFragmentDyingRightInit(void)
{
    gCurrentSprite.status &= 0xFFBF;
    GlassBirdFragmentDyingInit();
}

void GlassBirdFragmentDyingLeftInit(void)
{
    gCurrentSprite.status |= 0x40;
    GlassBirdFragmentDyingInit();
}

void GlassBirdFragmentLiftedInit(void)
{
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
}

void GlassBirdFragmentLiftedRightInit(void)
{
    gCurrentSprite.pose = 72;
    GlassBirdFragmentLiftedInit();
}

void GlassBirdFragmentLiftedLeftInit(void)
{
    gCurrentSprite.pose = 74;
    GlassBirdFragmentLiftedInit();
}

void GlassBirdFragmentCarriedInit(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->status &= 0xFFF7;
    sprite->pOamData = sGlassBirdFragmentCarriedOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
}

void GlassBirdFragmentCarriedRightInit(void) { gCurrentSprite.pose = 82; GlassBirdFragmentCarriedInit(); }
void GlassBirdFragmentCarriedLeftInit(void) { gCurrentSprite.pose = 84; GlassBirdFragmentCarriedInit(); }
void GlassBirdFragmentThrownRightInit(void) { gCurrentSprite.disableWarioCollisionTimer = 1; gCurrentSprite.pose = 88; GlassBirdFragmentCarriedInit(); }
void GlassBirdFragmentThrownLeftInit(void) { gCurrentSprite.disableWarioCollisionTimer = 1; gCurrentSprite.pose = 86; GlassBirdFragmentCarriedInit(); }

void SpriteGlassBird(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
    case 0: InitGlassBird(); break;
    case 16: UpdateGlassBird(); break;
    }
}

void SpriteGlassBirdFragment(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register struct PrimarySpriteData* current asm("r0");
    u8 pose;

    current = &gCurrentSprite;
    pose = current->pose;
    sprite = current;
    if (pose != 123 && (sprite->status & 0x800))
        sprite->pose = 107;

    switch (sprite->pose) {
    case 0: goto pose0;
    case 29: goto pose29;
    case 30: goto pose30;
    case 31: case 35: case 51: case 79: case 106: goto clearFlipDying;
    case 33: case 37: case 53: case 80: case 105: goto setFlipDying;
    case 67: goto pose68;
    case 68: case 72: goto liftedRight;
    case 69: goto pose70;
    case 70: case 74: goto liftedLeft;
    case 71: goto pose72;
    case 73: goto pose74;
    case 81: goto pose84;
    case 82: goto pose85;
    case 83: goto pose86;
    case 84: goto pose87;
    case 85: goto pose88;
    case 86: goto pose89;
    case 87: goto pose90;
    case 88: goto pose91;
    case 89: goto pose92;
    case 90: goto pose93;
    case 91: goto pose94;
    case 92: goto pose95;
    case 93: goto pose96;
    case 94: goto pose97;
    case 95: goto pose98;
    case 96: goto pose99;
    case 97: goto pose100;
    case 98: goto pose101;
    case 99: goto pose102;
    case 100: goto pose103;
    case 101: goto pose104;
    case 102: goto pose105;
    case 103: goto pose106;
    case 104: goto pose107;
    case 123: goto dying;
    default: goto defaultPose;
    }

pose0:
    InitGlassBirdFragment();
    goto end;
clearFlipDying:
    GlassBirdFragmentDyingRightInit();
dying:
    GlassBirdFragmentBreak();
    goto end;
setFlipDying:
    GlassBirdFragmentDyingLeftInit();
    goto dying;
pose29:
    GlassBirdFragmentSetFallingPose();
pose30:
    func_8023FA8();
    goto end;
pose68:
    func_8024AC0();
    goto liftedRight;
pose70:
    func_8024BEC();
    goto liftedLeft;
pose72:
    GlassBirdFragmentLiftedRightInit();
liftedRight:
    func_8024AD4();
    goto end;
pose74:
    GlassBirdFragmentLiftedLeftInit();
liftedLeft:
    func_8024C00();
    goto end;
pose84:
    GlassBirdFragmentCarriedRightInit();
    goto end;
pose85:
    SpriteUtilLiftingSpriteRight();
    goto end;
pose86:
    GlassBirdFragmentCarriedLeftInit();
    goto end;
pose87:
    SpriteUtilLiftingSpriteLeft();
    goto end;
pose90:
    GlassBirdFragmentThrownRightInit();
    goto end;
pose91:
    SpriteUtilCarryingSpriteRight();
    goto end;
pose88:
    GlassBirdFragmentThrownLeftInit();
    goto end;
pose89:
    SpriteUtilCarryingSpriteLeft();
    goto end;
pose92:
    sprite->pose = 90;
pose93:
    SpriteUtilThrownLeftSoft();
    goto end;
pose96:
    sprite->pose = 94;
pose97:
    SpriteUtilThrownLeftHard();
    goto end;
pose100:
    sprite->pose = 98;
pose101:
    SpriteUtilThrownUpLeftSoft();
    goto end;
pose104:
    sprite->pose = 102;
pose105:
    SpriteUtilThrownUpLeftHard();
    goto end;
pose94:
    sprite->pose = 92;
pose95:
    SpriteUtilThrownRightSoft();
    goto end;
pose98:
    sprite->pose = 96;
pose99:
    SpriteUtilThrownRightHard();
    goto end;
pose102:
    sprite->pose = 100;
pose103:
    SpriteUtilThrownUpRightSoft();
    goto end;
pose106:
    sprite->pose = 104;
pose107:
    SpriteUtilThrownUpRightHard();
    goto end;
defaultPose:
    GlassBirdFragmentBreakInit();
end:
    return;
}
