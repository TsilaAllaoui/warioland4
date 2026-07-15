#include "sprite_ai/bow_balloon.h"

#include "gba/m4a.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sBowBalloonIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 535, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-20, -27, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonIdleOam_Frame2[] = {
    5,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 537, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_8x8, 0, 530, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonIdleOam_Frame3[] = {
    4,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 569, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-15, -28, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonIdleOam_Frame4[] = {
    4,
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-19, -27, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonIdleOam_Frame5[] = {
    5,
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-15, -10, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-20, -28, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonIdleOam_Frame6[] = {
    5,
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-20, -28, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonTurningOam_Frame1[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonTurningOam_Frame2[] = {
    4,
    OAM_ENTRY(-6, -17, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-18, -29, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonTurningOam_Frame3[] = {
    6,
    OAM_ENTRY(-7, -27, SPRITE_SIZE_8x8, 0, 559, 8, 0),
    OAM_ENTRY(-5, -20, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-5, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonTurningAroundOam_Frame1[] = {
    6,
    OAM_ENTRY(-8, -29, SPRITE_SIZE_8x8, 0, 559, 8, 0),
    OAM_ENTRY(-6, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 524, 8, 0),
    OAM_ENTRY(-9, -22, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-10, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 559, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonTurningAroundOam_Frame2[] = {
    4,
    OAM_ENTRY(-7, -18, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 524, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-19, -29, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonTurningAroundOam_Frame3[] = {
    4,
    OAM_ENTRY(3, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-21, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame2[] = {
    4,
    OAM_ENTRY(3, -15, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame3[] = {
    3,
    OAM_ENTRY(3, -17, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame4[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-14, -20, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame5[] = {
    4,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-15, -24, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame6[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-17, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame7[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame8[] = {
    4,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-19, -25, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame9[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame10[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame11[] = {
    4,
    OAM_ENTRY(4, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-19, -25, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonRecoveringOam_Frame12[] = {
    4,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -26, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame2[] = {
    4,
    OAM_ENTRY(-13, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(6, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -6, SPRITE_SIZE_16x8, 0, 532, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -21, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(6, -21, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 532, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame4[] = {
    4,
    OAM_ENTRY(-14, -20, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(6, -20, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 532, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame5[] = {
    4,
    OAM_ENTRY(-14, -17, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame6[] = {
    4,
    OAM_ENTRY(-14, -19, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(6, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonAirborneOam_Frame7[] = {
    4,
    OAM_ENTRY(-14, -20, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(6, -20, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonPushedOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 567, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sBowBalloonPushedOam_Frame2[] = {
    5,
    OAM_ENTRY(5, -18, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-13, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 554, 8, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u16 sBowBalloonPushedOam_Frame3[] = {
    5,
    OAM_ENTRY(6, -17, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-12, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x8, 0, 554, 8, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame1[] = {
    7,
    OAM_ENTRY(-26, -19, SPRITE_SIZE_16x8, 0, 522, 8, 0),
    OAM_ENTRY(-26, -26, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-11, -21, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -26, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame2[] = {
    5,
    OAM_ENTRY(-12, -22, SPRITE_SIZE_16x8, 0, 556, 8, 0),
    OAM_ENTRY(-19, -36, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -31, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame3[] = {
    5,
    OAM_ENTRY(-18, -34, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-10, -20, SPRITE_SIZE_16x8, 0, 556, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -29, SPRITE_SIZE_16x16, 0, 520, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame4[] = {
    8,
    OAM_ENTRY(-26, -20, SPRITE_SIZE_16x8, 0, 522, 8, 0),
    OAM_ENTRY(-26, -27, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-11, -22, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-19, -20, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-16, -28, SPRITE_SIZE_8x8, 0, 531, 8, 0),
    OAM_ENTRY(-16, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 531, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame5[] = {
    8,
    OAM_ENTRY(-23, -20, SPRITE_SIZE_16x8, 0, 522, 8, 0),
    OAM_ENTRY(-23, -27, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(-21, -19, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-18, -27, SPRITE_SIZE_8x8, 0, 563, 8, 0),
    OAM_ENTRY(-18, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 563, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame6[] = {
    8,
    OAM_ENTRY(-22, -19, SPRITE_SIZE_16x8, 0, 522, 8, 0),
    OAM_ENTRY(-22, -26, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 522, 8, 0),
    OAM_ENTRY(-7, -21, SPRITE_SIZE_16x8, 0, 524, 8, 0),
    OAM_ENTRY(-21, -18, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-18, -26, SPRITE_SIZE_8x8, 0, 563, 8, 0),
    OAM_ENTRY(-18, -10, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 563, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame7[] = {
    6,
    OAM_ENTRY(3, -18, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(11, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 562, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -27, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-21, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame8[] = {
    7,
    OAM_ENTRY(4, -18, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(12, -22, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 562, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -19, SPRITE_SIZE_16x8, 0, 560, 8, 0),
    OAM_ENTRY(-21, -27, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
    OAM_ENTRY(-21, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 559, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame9[] = {
    6,
    OAM_ENTRY(4, -17, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 562, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -27, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-21, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sBowBalloonAttackingOam_Frame10[] = {
    5,
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -26, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-21, -10, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 528, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(5, -21, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 535, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 514, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame2[] = {
    4,
    OAM_ENTRY(4, -20, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 537, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 512, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame3[] = {
    3,
    OAM_ENTRY(4, -20, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-7, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 569, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 512, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame4[] = {
    4,
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(5, -21, SPRITE_SIZE_8x16, ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 567, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 514, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame5[] = {
    5,
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-15, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 571, 8, 0),
    OAM_ENTRY(-7, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 572, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonStunnedOam_Frame6[] = {
    5,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame2[] = {
    4,
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-12, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame3[] = {
    4,
    OAM_ENTRY(-8, -23, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame4[] = {
    4,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-12, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(4, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame5[] = {
    4,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-11, -5, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame6[] = {
    4,
    OAM_ENTRY(-9, -24, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 532, 8, 0),
    OAM_ENTRY(-9, -5, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(4, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-7, -17, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame7[] = {
    6,
    OAM_ENTRY(-3, -21, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -4, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-14, -18, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-14, -10, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 564, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame8[] = {
    6,
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -2, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 564, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame9[] = {
    6,
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-6, -5, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-14, -7, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 564, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame10[] = {
    6,
    OAM_ENTRY(-7, -18, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 534, 8, 0),
    OAM_ENTRY(-3, -3, SPRITE_SIZE_8x8, 0, 534, 8, 0),
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, 0, 566, 8, 0),
    OAM_ENTRY(-13, -5, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 566, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, 0, 564, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 564, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame11[] = {
    4,
    OAM_ENTRY(-11, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(3, -10, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-10, -4, SPRITE_SIZE_16x8, 0, 532, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame12[] = {
    4,
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x8, 0, 532, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame13[] = {
    4,
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x8, 0, 532, 8, 0),
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame14[] = {
    4,
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame15[] = {
    4,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -21, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame16[] = {
    4,
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonGettingUpOam_Frame17[] = {
    4,
    OAM_ENTRY(-12, -14, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -14, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 554, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonCrushedWhileStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(-13, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(5, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -22, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonCrushedWhileStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(6, -13, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -21, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 516, 8, 0),
};

const u16 sBowBalloonCrushedWhileStunnedOam_Frame3[] = {
    6,
    OAM_ENTRY(-15, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(7, -12, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(-13, -20, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 548, 8, 0),
};

const u16 sBowBalloonCrushedWhileStunnedOam_Frame4[] = {
    6,
    OAM_ENTRY(-13, -17, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -17, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 548, 8, 0),
    OAM_ENTRY(-16, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(8, -11, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
};

const u16 sBowBalloonCrushedWhileStunnedOam_Frame5[] = {
    6,
    OAM_ENTRY(-13, -15, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 539, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 548, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-16, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 527, 8, 0),
    OAM_ENTRY(8, -8, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 527, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame1[] = {
    5,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(4, -17, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-15, -10, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame2[] = {
    5,
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(5, -16, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-8, -22, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame3[] = {
    6,
    OAM_ENTRY(-14, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(6, -16, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -20, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame4[] = {
    6,
    OAM_ENTRY(-15, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(7, -16, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame5[] = {
    6,
    OAM_ENTRY(-15, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame6[] = {
    6,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-15, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -7, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonCrushedOam_Frame7[] = {
    6,
    OAM_ENTRY(-15, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(7, -13, SPRITE_SIZE_8x8, 0, 527, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_16x8, 0, 516, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, 0, 548, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, 0, 539, 8, 0),
    OAM_ENTRY(3, -7, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sBowBalloonProjectileOam_Frame1[] = {
    2,
    OAM_ENTRY(-8, 0, SPRITE_SIZE_16x8, 0, 522, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 522, 8, 0),
};

const u8 sBowBalloonRawData_83BEBF2[] = {
    0x00, 0x00,
};

const struct AnimationFrame sBowBalloonIdleOam[] = {
    {sBowBalloonIdleOam_Frame1, 8},
    {sBowBalloonIdleOam_Frame2, 8},
    {sBowBalloonIdleOam_Frame3, 8},
    {sBowBalloonIdleOam_Frame4, 8},
    {sBowBalloonIdleOam_Frame5, 8},
    {sBowBalloonIdleOam_Frame6, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonFallingOam[] = {
    {sBowBalloonIdleOam_Frame1, 5},
    {sBowBalloonIdleOam_Frame2, 5},
    {sBowBalloonIdleOam_Frame3, 5},
    {sBowBalloonIdleOam_Frame4, 5},
    {sBowBalloonIdleOam_Frame5, 5},
    {sBowBalloonIdleOam_Frame6, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonTurningOam[] = {
    {sBowBalloonTurningOam_Frame1, 4},
    {sBowBalloonTurningOam_Frame2, 8},
    {sBowBalloonTurningOam_Frame3, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonTurningAroundOam[] = {
    {sBowBalloonTurningAroundOam_Frame1, 8},
    {sBowBalloonTurningAroundOam_Frame2, 8},
    {sBowBalloonTurningAroundOam_Frame3, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonRecoveringOam[] = {
    {sBowBalloonRecoveringOam_Frame1, 7},
    {sBowBalloonRecoveringOam_Frame2, 7},
    {sBowBalloonRecoveringOam_Frame3, 7},
    {sBowBalloonRecoveringOam_Frame4, 7},
    {sBowBalloonRecoveringOam_Frame5, 7},
    {sBowBalloonRecoveringOam_Frame6, 7},
    {sBowBalloonRecoveringOam_Frame7, 7},
    {sBowBalloonRecoveringOam_Frame8, 7},
    {sBowBalloonRecoveringOam_Frame9, 7},
    {sBowBalloonRecoveringOam_Frame10, 7},
    {sBowBalloonRecoveringOam_Frame11, 7},
    {sBowBalloonRecoveringOam_Frame12, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonAirborneOam[] = {
    {sBowBalloonAirborneOam_Frame1, 7},
    {sBowBalloonAirborneOam_Frame2, 7},
    {sBowBalloonAirborneOam_Frame3, 7},
    {sBowBalloonAirborneOam_Frame4, 7},
    {sBowBalloonAirborneOam_Frame5, 7},
    {sBowBalloonAirborneOam_Frame6, 10},
    {sBowBalloonAirborneOam_Frame7, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonPushedOam[] = {
    {sBowBalloonPushedOam_Frame1, 2},
    {sBowBalloonPushedOam_Frame2, 4},
    {sBowBalloonPushedOam_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonAttackingOam[] = {
    {sBowBalloonAttackingOam_Frame1, 6},
    {sBowBalloonAttackingOam_Frame2, 6},
    {sBowBalloonAttackingOam_Frame3, 10},
    {sBowBalloonAttackingOam_Frame4, 5},
    {sBowBalloonAttackingOam_Frame5, 10},
    {sBowBalloonAttackingOam_Frame6, 20},
    {sBowBalloonAttackingOam_Frame7, 5},
    {sBowBalloonAttackingOam_Frame8, 5},
    {sBowBalloonAttackingOam_Frame9, 4},
    {sBowBalloonAttackingOam_Frame10, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonStunnedOam[] = {
    {sBowBalloonStunnedOam_Frame1, 5},
    {sBowBalloonStunnedOam_Frame2, 5},
    {sBowBalloonStunnedOam_Frame3, 5},
    {sBowBalloonStunnedOam_Frame4, 5},
    {sBowBalloonStunnedOam_Frame5, 5},
    {sBowBalloonStunnedOam_Frame6, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonGettingUpOam[] = {
    {sBowBalloonGettingUpOam_Frame1, 4},
    {sBowBalloonGettingUpOam_Frame2, 4},
    {sBowBalloonGettingUpOam_Frame3, 2},
    {sBowBalloonGettingUpOam_Frame4, 2},
    {sBowBalloonGettingUpOam_Frame5, 2},
    {sBowBalloonGettingUpOam_Frame6, 2},
    {sBowBalloonGettingUpOam_Frame7, 2},
    {sBowBalloonGettingUpOam_Frame8, 2},
    {sBowBalloonGettingUpOam_Frame9, 2},
    {sBowBalloonGettingUpOam_Frame10, 2},
    {sBowBalloonGettingUpOam_Frame11, 2},
    {sBowBalloonGettingUpOam_Frame12, 2},
    {sBowBalloonGettingUpOam_Frame13, 4},
    {sBowBalloonGettingUpOam_Frame14, 4},
    {sBowBalloonGettingUpOam_Frame15, 4},
    {sBowBalloonGettingUpOam_Frame16, 4},
    {sBowBalloonGettingUpOam_Frame17, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonCrushedWhileStunnedOam[] = {
    {sBowBalloonCrushedWhileStunnedOam_Frame1, 2},
    {sBowBalloonCrushedWhileStunnedOam_Frame2, 1},
    {sBowBalloonCrushedWhileStunnedOam_Frame3, 1},
    {sBowBalloonCrushedWhileStunnedOam_Frame4, 1},
    {sBowBalloonCrushedWhileStunnedOam_Frame5, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonCrushedOam[] = {
    {sBowBalloonCrushedOam_Frame1, 2},
    {sBowBalloonCrushedOam_Frame2, 1},
    {sBowBalloonCrushedOam_Frame3, 1},
    {sBowBalloonCrushedOam_Frame4, 1},
    {sBowBalloonCrushedOam_Frame5, 1},
    {sBowBalloonCrushedOam_Frame6, 1},
    {sBowBalloonCrushedOam_Frame7, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonTackledOam[] = {
    {sBowBalloonIdleOam_Frame1, 4},
    {sBowBalloonIdleOam_Frame2, 4},
    {sBowBalloonIdleOam_Frame3, 4},
    {sBowBalloonIdleOam_Frame4, 4},
    {sBowBalloonIdleOam_Frame5, 4},
    {sBowBalloonIdleOam_Frame6, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBowBalloonProjectileOam[] = {
    {sBowBalloonProjectileOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void BowBalloonInit(void)
{
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 80;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
    gCurrentSprite.pOamData = sBowBalloonIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    SpriteUtilTurnTowardWario();
}

void BowBalloonIdleInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.work1 = 42;
}

void BowBalloonIdle(void)
{
    u32 nearby;

    nearby = SpriteUtilWaitCheckWarioNearbyLeftRight(256, 256);
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = SPOSE_1B;
            return;
        }
    } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if (nearby == 8) {
            gCurrentSprite.pose = SPOSE_6E;
            return;
        }
        if (nearby == 4) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
        if ((gUnk_3000A50 & 0xF0) &&
            ((gCurrentSprite.xPosition & 0x3F) + gCurrentSprite.hitboxExtentRight > 0x3F)) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (!(gUnk_3000A51 & 0xF0)) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 & 0xF) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
        }
    } else {
        if (nearby == 4) {
            gCurrentSprite.pose = SPOSE_6E;
            return;
        }
        if (nearby == 8) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
        if ((gUnk_3000A50 & 0xF0) &&
            ((gCurrentSprite.xPosition & 0x3F) < gCurrentSprite.hitboxExtentLeft)) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (!(gUnk_3000A51 & 0xF0)) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (gUnk_3000A51 & 0xF) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
        }
    }

    func_8026374();
}

void BowBalloonTurnInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 21;
}

void BowBalloonTurn(void)
{
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1B;
        return;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        return;
    }

    if (gCurrentSprite.pose == SPOSE_12) {
        gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
        gCurrentSprite.pOamData = sBowBalloonTurningAroundOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_14;
        gCurrentSprite.work0 = 24;
    } else {
        gCurrentSprite.pOamData = sBowBalloonIdleOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_IDLE;
    }
}

void BowBalloonStunnedInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5) {
        gCurrentSprite.warioCollision = 5;
    }
}

void BowBalloonPose33Init(void)
{
    gCurrentSprite.pose = SPOSE_34;
    BowBalloonStunnedInit();
}

void BowBalloonPose35Init(void)
{
    gCurrentSprite.pose = SPOSE_36;
    BowBalloonStunnedInit();
}

void BowBalloonAttackInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonAttackingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6F;
    gCurrentSprite.work0 = 79;
}

void BowBalloonAttack(void)
{
    register int shifted asm("r0");
    register int timer asm("r1");
    register u8 *work0 asm("r2");
    register struct PrimarySpriteData *sprite asm("r4");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    shifted = *work0;
    timer = shifted - 1;
    *work0 = timer;
    shifted = timer << 24;
    if (shifted != 0) {
        shifted = (u32)shifted >> 24;
        if (shifted == 22) {
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
                func_801E3A8(PSPRITE_A1, sprite->roomSlot, sprite->gfxSlot,
                    sprite->yPosition - 64, sprite->xPosition + 96,
                    SPRITE_STATUS_FACING_RIGHT);
            } else {
                func_801E3A8(PSPRITE_A1, sprite->roomSlot, sprite->gfxSlot,
                    sprite->yPosition - 64, sprite->xPosition - 96, 0);
            }
            m4aSongNumStart(SE_BOW_BALLOON_SHOOT);
        }
        func_80238A4();
        func_8023B88();
        if (!gUnk_3000A50) {
            gCurrentSprite.pose = SPOSE_1B;
        }
    } else {
        sprite->pose = SPOSE_IDLE_INIT;
    }
}

void BowBalloonRecoverInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 84;
}

void BowBalloonGetUpInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 52;
    gCurrentSprite.work3 = 0;
}

void BowBalloonGetUp(void)
{
    {
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *indexPointer asm("ip");
    register u32 index asm("r2");
    register const s16 *table asm("r5");
    s16 velocity;

    sprite = &gCurrentSprite;
    indexPointer = &sprite->work3;
    index = *indexPointer;
    table = sBowBalloonGettingUpYVelocity;
    asm("" : "+r"(sprite), "+r"(indexPointer), "+r"(index), "+r"(table));
    velocity = table[index];
    if (velocity == 0x7FFF) {
        register u32 previousVelocityAddress asm("r1");
        register u16 yPosition asm("r0");

        previousVelocityAddress = index - 1;
        previousVelocityAddress <<= 1;
        previousVelocityAddress += (u32)table;
        asm("" : "+r"(previousVelocityAddress));
        yPosition = sprite->yPosition;
        asm("" : "+r"(yPosition), "+r"(previousVelocityAddress));
        sprite->yPosition = yPosition + *(const s16 *)previousVelocityAddress;
    } else {
        register u32 nextIndex asm("r0");
        register u8 *storePointer asm("r1");

        nextIndex = index + 1;
        storePointer = indexPointer;
        asm("" : "+r"(nextIndex), "+r"(storePointer));
        *storePointer = nextIndex;
        sprite->yPosition += velocity;
    }
    }

    {
        register struct PrimarySpriteData *current asm("r4");
        u8 work0;

        current = &gCurrentSprite;
        work0 = current->work0;
        if (work0 > 42) {
            func_80238E8();
            func_8023B88();
            if (!gUnk_3000A50) {
                current->pose = SPOSE_1D;
            }
        } else if (work0 <= 23) {
            func_80238A4();
            func_8023B88();
            if (!gUnk_3000A50) {
                current->pose = SPOSE_1B;
            }
            current->warioCollision = 1;
        }

    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        if (gCurrentSprite.xPosition > gWarioData.xPosition) {
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
                gCurrentSprite.pose = SPOSE_11;
            } else {
                gCurrentSprite.pose = SPOSE_17;
            }
        } else {
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
                gCurrentSprite.pose = SPOSE_17;
            } else {
                gCurrentSprite.pose = SPOSE_11;
            }
        }
    }
}

void BowBalloonFallingInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
}

void BowBalloonStunnedFallingInit(void)
{
    register u8 zero8 asm("r2");

    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    zero8 = 0;
    asm("" : "+r"(zero8));
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = zero8;
    gCurrentSprite.warioCollision = 5;
}

void BowBalloonTackledInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void BowBalloonTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    BowBalloonTackledInit();
}

void BowBalloonTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    BowBalloonTackledInit();
}

void BowBalloonDefeatedInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
}

void BowBalloonDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    BowBalloonDefeatedInit();
}

void BowBalloonDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    BowBalloonDefeatedInit();
}

void BowBalloonPushedInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void BowBalloonPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    BowBalloonPushedInit();
}

void BowBalloonPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    BowBalloonPushedInit();
}

void BowBalloonPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
}

void BowBalloonPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    BowBalloonPose2BOr2DInit();
}

void BowBalloonPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    BowBalloonPose2BOr2DInit();
}

void BowBalloonCrushed(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sBowBalloonCrushedWhileStunnedOam;
        gCurrentSprite.work0 = 8;
    } else {
        gCurrentSprite.pOamData = sBowBalloonCrushedOam;
        gCurrentSprite.work0 = 10;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void BowBalloonInstantlyKill(void)
{
    SpriteUtilDie();
}

void BowBalloonStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void BowBalloonPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    BowBalloonStunnedWithoutTimerInit();
}

void BowBalloonPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    BowBalloonStunnedWithoutTimerInit();
}

void BowBalloonAirborneInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonAirborneOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 22;
    gCurrentSprite.work3 = 0;
}

void BowBalloonAirborne(void)
{
    register u8 *indexPointer asm("ip");
    register u32 index asm("r2");
    s16 velocity;

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp,
            gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = SPOSE_1D;
        } else {
            indexPointer = &gCurrentSprite.work3;
            index = *indexPointer;
            /* Keep the work index and its address live so agbcc delays the table load. */
            asm("" : "+r"(indexPointer), "+r"(index));
            velocity = sUnk_8352B18[index];
            if (velocity == 0x7FFF) {
                register u32 previousVelocityAddress asm("r1");
                register u16 yPosition asm("r0");

                previousVelocityAddress = index - 1;
                previousVelocityAddress <<= 1;
                previousVelocityAddress += (u32)sUnk_8352B18;
                /* Preserve agbcc's original address calculation and halfword load order. */
                asm("" : "+r"(previousVelocityAddress));
                yPosition = gCurrentSprite.yPosition;
                asm("" : "+r"(yPosition), "+r"(previousVelocityAddress));
                gCurrentSprite.yPosition = yPosition + *(const s16 *)previousVelocityAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePointer asm("r1");

                nextIndex = index + 1;
                storePointer = indexPointer;
                /* Keep the incremented index in r0 and the destination pointer in r1. */
                asm("" : "+r"(nextIndex), "+r"(storePointer));
                *storePointer = nextIndex;
                gCurrentSprite.yPosition += velocity;
            }
        }
    } else {
        gCurrentSprite.pose = SPOSE_1B;
    }
}

void BowBalloonHeldInit(void)
{
    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void BowBalloonLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
    BowBalloonHeldInit();
}

void BowBalloonLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
    BowBalloonHeldInit();
}

void BowBalloonCarriedInit(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sBowBalloonStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void BowBalloonCarriedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    BowBalloonCarriedInit();
}

void BowBalloonCarriedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    BowBalloonCarriedInit();
}

void BowBalloonProjectileInit(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 8;
    gCurrentSprite.drawDistanceUp = 8;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 16;
    gCurrentSprite.hitboxExtentDown = 12;
    gCurrentSprite.pOamData = sBowBalloonProjectileOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioCollision = 39;
    gCurrentSprite.drawPriority = 1;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 0;
        gCurrentSprite.hitboxExtentRight = 12;
    } else {
        gCurrentSprite.hitboxExtentLeft = 16;
        gCurrentSprite.hitboxExtentRight = 0;
    }
}

void BowBalloonProjectileMove(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += 8;
    } else {
        gCurrentSprite.xPosition -= 8;
    }
}

void BowBalloonProjectileDisappearInit(void)
{
    gCurrentSprite.work0 = 20;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
}

void BowBalloonProjectileDisappear(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = SPOSE_6B;
    }
}

void SpriteBowBalloon(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            BowBalloonInit();
            break;
        case SPOSE_IDLE_INIT:
            BowBalloonIdleInit();
        case SPOSE_IDLE:
            BowBalloonIdle();
            break;
        case SPOSE_11:
            BowBalloonTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            BowBalloonTurn();
            break;
        case SPOSE_6E:
            BowBalloonAttackInit();
        case SPOSE_6F:
            BowBalloonAttack();
            break;
        case SPOSE_17:
            BowBalloonRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            BowBalloonGetUpInit();
        case SPOSE_1A:
            BowBalloonGetUp();
            break;
        case SPOSE_1B:
            BowBalloonFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            BowBalloonStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            BowBalloonTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            BowBalloonTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            BowBalloonPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
            BowBalloonPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            BowBalloonPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            BowBalloonPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            BowBalloonCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            BowBalloonPose33Init();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            BowBalloonPose35Init();
        case SPOSE_36:
            func_802476C();
            break;
        case SPOSE_37:
            func_8024688();
        case SPOSE_38:
            func_80246B8();
            break;
        case SPOSE_39:
            func_802473C();
        case SPOSE_3A:
            func_802476C();
            break;
        case SPOSE_3B:
            func_80247F0();
        case SPOSE_3C:
            func_8024820();
            break;
        case SPOSE_3D:
            func_80248A4();
        case SPOSE_3E:
            func_80248D4();
            break;
        case SPOSE_3F:
            func_8024958();
        case SPOSE_40:
            func_8024988();
            break;
        case SPOSE_41:
            func_8024A0C();
        case SPOSE_42:
            func_8024A3C();
            break;
        case SPOSE_43:
            func_8024AC0();
        case SPOSE_44:
            func_8024AD4();
            break;
        case SPOSE_45:
            func_8024BEC();
        case SPOSE_46:
            func_8024C00();
            break;
        case SPOSE_47:
            BowBalloonPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            BowBalloonPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            BowBalloonAirborneInit();
        case SPOSE_4C:
            BowBalloonAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            BowBalloonLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            BowBalloonLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            BowBalloonCarriedRightInit();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            BowBalloonCarriedLeftInit();
            break;
        case SPOSE_CARRIED_LEFT:
            SpriteUtilCarryingSpriteLeft();
            break;
        case SPOSE_THROWN_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_SOFT;
        case SPOSE_THROWN_LEFT_SOFT:
            SpriteUtilThrownLeftSoft();
            break;
        case SPOSE_THROWN_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_HARD;
        case SPOSE_THROWN_LEFT_HARD:
            SpriteUtilThrownLeftHard();
            break;
        case SPOSE_THROWN_UP_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_SOFT;
        case SPOSE_THROWN_UP_LEFT_SOFT:
            SpriteUtilThrownUpLeftSoft();
            break;
        case SPOSE_THROWN_UP_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_HARD;
        case SPOSE_THROWN_UP_LEFT_HARD:
            SpriteUtilThrownUpLeftHard();
            break;
        case SPOSE_THROWN_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_SOFT;
        case SPOSE_THROWN_RIGHT_SOFT:
            SpriteUtilThrownRightSoft();
            break;
        case SPOSE_THROWN_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_HARD;
        case SPOSE_THROWN_RIGHT_HARD:
            SpriteUtilThrownRightHard();
            break;
        case SPOSE_THROWN_UP_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_SOFT;
        case SPOSE_THROWN_UP_RIGHT_SOFT:
            SpriteUtilThrownUpRightSoft();
            break;
        case SPOSE_THROWN_UP_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_HARD;
        case SPOSE_THROWN_UP_RIGHT_HARD:
            SpriteUtilThrownUpRightHard();
            break;
        case SPOSE_69:
            BowBalloonDefeatedLeftInit();
            break;
        case SPOSE_6A:
            BowBalloonDefeatedRightInit();
            break;
        default:
            BowBalloonInstantlyKill();
            break;
    }
}

void SpriteBowBalloonProjectile(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            BowBalloonProjectileInit();
            break;
        case SPOSE_IDLE:
            BowBalloonProjectileMove();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            BowBalloonProjectileDisappearInit();
        case SPOSE_CRUSHED_OR_COLLECTED:
            BowBalloonProjectileDisappear();
            gCurrentSprite.disableWarioCollisionTimer = 1;
            break;
        default:
            SpriteUtilDie();
            break;
    }
}
