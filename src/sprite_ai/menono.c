#include "sprite_ai/menono.h"

#include "gba/m4a.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMenonoPushedOam_Frame1[] = {
    4,
    OAM_ENTRY(-17, -36, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-21, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoTurningOam_Frame1[] = {
    4,
    OAM_ENTRY(-15, -36, SPRITE_SIZE_16x32, 0, 521, 8, 0),
    OAM_ENTRY(-21, -34, SPRITE_SIZE_32x32, 0, 515, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 555, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u8 sMenonoRawData_83C7F84[] = {
    0x04, 0x00, 0xE5, 0x00, 0xF3, 0x41, 0x4B, 0x82, 0xDE, 0x00, 0xEB, 0x91, 0x00, 0x82, 0xF8, 0x00,
    0x03, 0x00, 0x2B, 0x82, 0xF8, 0x40, 0xF0, 0x01, 0x0B, 0x82,
};

const u16 sMenonoAttackingOam_Frame2[] = {
    3,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(-21, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
};

const u16 sMenonoAttackingOam_Frame3[] = {
    3,
    OAM_ENTRY(-17, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-21, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
};

const u16 sMenonoAttackingOam_Frame4[] = {
    3,
    OAM_ENTRY(-17, -16, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-21, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
};

const u16 sMenonoAttackingOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-20, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-16, -10, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoPreparingAttackOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-22, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-18, -11, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sMenonoPreparingAttackOam_Frame2[] = {
    4,
    OAM_ENTRY(-14, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-23, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -9, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sMenonoPreparingAttackOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-23, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoPreparingAttackOam_Frame4[] = {
    4,
    OAM_ENTRY(-13, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-22, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoWalkingOam_Frame1[] = {
    4,
    OAM_ENTRY(-17, -38, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-22, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-17, -10, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sMenonoWalkingOam_Frame2[] = {
    4,
    OAM_ENTRY(-18, -36, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-23, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sMenonoWalkingOam_Frame3[] = {
    4,
    OAM_ENTRY(-17, -36, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-23, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoWalkingOam_Frame4[] = {
    4,
    OAM_ENTRY(-17, -37, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-22, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u8 sMenonoRawData_83C80C4[] = {
    0x04, 0x00, 0xF2, 0x00, 0xF3, 0x61, 0x4B, 0x82, 0xE9, 0x00, 0xEB, 0xB1, 0x00, 0x82, 0xE7, 0x00,
    0x03, 0x20, 0x2B, 0x82, 0xE7, 0x40, 0xF0, 0x21, 0x0B, 0x82,
};

const u16 sMenonoStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-21, -31, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-4, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(5, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(-18, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sMenonoStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-14, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-22, -32, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(2, -23, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_16x8, 0, 598, 8, 0),
};

const u16 sMenonoStunnedOam_Frame3[] = {
    4,
    OAM_ENTRY(-15, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-21, -32, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-8, -25, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
};

const u16 sMenonoFallingOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -23, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-21, -22, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-18, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoFallingOam_Frame2[] = {
    5,
    OAM_ENTRY(-14, -22, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 598, 8, 0),
};

const u16 sMenonoFallingOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -22, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sMenonoTackledOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -32, SPRITE_SIZE_16x32, 0, 536, 8, 0),
};

const u16 sMenonoTackledOam_Frame2[] = {
    1,
    OAM_ENTRY(-9, -32, SPRITE_SIZE_16x32, 0, 538, 8, 0),
};

const u16 sMenonoCrushedOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-21, -20, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoCrushedOam_Frame2[] = {
    1,
    OAM_ENTRY(-17, -16, SPRITE_SIZE_32x16, 0, 540, 8, 0),
};

const u16 sMenonoCrushedOam_Frame3[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 604, 8, 0),
};

const u16 sMenonoWalkingOam_Frame5[] = {
    5,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_8x8, 0, 630, 8, 0),
    OAM_ENTRY(-18, -36, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-23, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sMenonoWalkingOam_Frame6[] = {
    5,
    OAM_ENTRY(-16, -33, SPRITE_SIZE_8x8, 0, 631, 8, 0),
    OAM_ENTRY(-17, -36, SPRITE_SIZE_16x32, 0, 519, 8, 0),
    OAM_ENTRY(-23, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sMenonoGettingUpOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-22, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sMenonoCrushedWhileStunnedOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-21, -31, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(-19, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sMenonoCrushedWhileStunnedOam_Frame2[] = {
    1,
    OAM_ENTRY(-17, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sMenonoCrushedWhileStunnedOam_Frame3[] = {
    1,
    OAM_ENTRY(-16, -13, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 604, 8, 0),
};

const struct AnimationFrame sMenonoPushedOam[] = {
    {sMenonoPushedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoTurningOam[] = {
    {sMenonoPushedOam_Frame1, 4},
    {sMenonoTurningOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoPreparingAttackOam[] = {
    {sMenonoPreparingAttackOam_Frame1, 2},
    {sMenonoPreparingAttackOam_Frame2, 2},
    {sMenonoPreparingAttackOam_Frame3, 2},
    {sMenonoPreparingAttackOam_Frame4, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoWalkingOam[] = {
    {sMenonoWalkingOam_Frame1, 4},
    {sMenonoWalkingOam_Frame2, 4},
    {sMenonoWalkingOam_Frame3, 4},
    {sMenonoWalkingOam_Frame4, 4},
    {sMenonoWalkingOam_Frame1, 4},
    {sMenonoWalkingOam_Frame5, 4},
    {sMenonoWalkingOam_Frame6, 4},
    {sMenonoWalkingOam_Frame4, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoAttackingOam[] = {
    {sMenonoPushedOam_Frame1, 1},
    {sMenonoAttackingOam_Frame1, 2},
    {sMenonoAttackingOam_Frame2, 5},
    {sMenonoAttackingOam_Frame3, 2},
    {sMenonoAttackingOam_Frame4, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoStunnedOam[] = {
    {sMenonoStunnedOam_Frame1, 2},
    {sMenonoStunnedOam_Frame2, 2},
    {sMenonoStunnedOam_Frame3, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoFallingOam[] = {
    {sMenonoFallingOam_Frame1, 2},
    {sMenonoFallingOam_Frame2, 2},
    {sMenonoFallingOam_Frame3, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoTackledOam[] = {
    {sMenonoTackledOam_Frame1, 4},
    {sMenonoTackledOam_Frame2, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoCrushedOam[] = {
    {sMenonoCrushedOam_Frame1, 2},
    {sMenonoCrushedOam_Frame2, 3},
    {sMenonoCrushedOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoGettingUpOam[] = {
    {sMenonoGettingUpOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoTurningAroundOam[] = {
    {sMenonoTurningOam_Frame1, 4},
    {sMenonoPushedOam_Frame1, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMenonoCrushedWhileStunnedOam[] = {
    {sMenonoCrushedWhileStunnedOam_Frame1, 2},
    {sMenonoCrushedWhileStunnedOam_Frame2, 3},
    {sMenonoCrushedWhileStunnedOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

void MenonoSetWalkingHitbox(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 32;
        gCurrentSprite.hitboxExtentRight = 52;
    } else {
        gCurrentSprite.hitboxExtentLeft = 56;
        gCurrentSprite.hitboxExtentRight = 28;
    }
}

void MenonoInit(void)
{
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.pOamData = sMenonoWalkingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    SpriteUtilTurnTowardWario();
}

void MenonoInitWalk(void)
{
    gCurrentSprite.pOamData = sMenonoWalkingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 20;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = 3;
    MenonoSetWalkingHitbox();
}

void MenonoWalk(void)
{
    u32 nearby;

    if (gCurrentSprite.pose == SPOSE_IDLE) {
        nearby = SpriteUtilWaitCheckWarioNearbyLeftRight(127, 400);
    } else {
        nearby = 0;
    }

    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
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
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (!gUnk_3000A51) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(
                gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight
            );
            if (gUnk_3000A51 == 17) {
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
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
            if (!gUnk_3000A51) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(
                gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft
            );
            if (gUnk_3000A51 == 17) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
        }
    }

    if (gCurrentSprite.pose == SPOSE_IDLE) {
        func_8026374();
    } else {
        func_8026418();
    }
}

void MenonoPrepareAttack(void)
{
    gCurrentSprite.pOamData = sMenonoPreparingAttackOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6F;
    gCurrentSprite.work0 = 40;
    m4aSongNumStart(SE_MENONO_ONOMI_PREPARE_ATTACK);
}

void MenonoWaitToAttack(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        MenonoWalk();
    } else {
        gCurrentSprite.pose = SPOSE_18;
        gCurrentSprite.pOamData = sMenonoAttackingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.work0 = 13;
        m4aSongNumStart(SE_MENONO_ONOMI_ATTACK);
    }
}

void MenonoTurnInit(void)
{
    gCurrentSprite.pOamData = sMenonoTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.work0 = 9;
    MenonoSetWalkingHitbox();
}

void MenonoTurn(void)
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
        gCurrentSprite.pOamData = sMenonoTurningAroundOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_14;
        gCurrentSprite.work0 = 14;
        MenonoSetWalkingHitbox();
    } else {
        gCurrentSprite.pOamData = sMenonoWalkingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_IDLE;
        gCurrentSprite.warioCollision = 3;
    }
}

void MenonoStunnedInit(void)
{
    gCurrentSprite.pOamData = sMenonoStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5) {
        gCurrentSprite.warioCollision = 5;
        gCurrentSprite.hitboxExtentLeft = 32;
        gCurrentSprite.hitboxExtentRight = 28;
    }
}

void MenonoPose33(void)
{
    gCurrentSprite.pose = SPOSE_34;
    MenonoStunnedInit();
}

void MenonoPose35(void)
{
    gCurrentSprite.pose = SPOSE_36;
    MenonoStunnedInit();
}

void MenonoRecoverInit(void)
{
    gCurrentSprite.pOamData = sMenonoPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 20;
}

void MenonoGetUpInit(void)
{
    gCurrentSprite.pOamData = sMenonoGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 16;
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.work3 = 0;
    MenonoSetWalkingHitbox();
}

void MenonoFallingInit(void)
{
    gCurrentSprite.pOamData = sMenonoFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
}

void MenonoStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sMenonoStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void MenonoTackledInit(void)
{
    gCurrentSprite.pOamData = sMenonoTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void MenonoTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    MenonoTackledInit();
}

void MenonoTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    MenonoTackledInit();
}

void MenonoDefeatedInit(void)
{
    gCurrentSprite.pOamData = sMenonoTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void MenonoDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    MenonoDefeatedInit();
}

void MenonoDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    MenonoDefeatedInit();
}

void MenonoPushedInit(void)
{
    gCurrentSprite.pOamData = sMenonoPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void MenonoPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    MenonoPushedInit();
}

void MenonoPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    MenonoPushedInit();
}

void MenonoPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sMenonoStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void MenonoPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    MenonoPose2BOr2DInit();
}

void MenonoPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    MenonoPose2BOr2DInit();
}

void MenonoCrushed(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sMenonoCrushedWhileStunnedOam;
    } else {
        gCurrentSprite.pOamData = sMenonoCrushedOam;
    }
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 10;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void MenonoInstantlyKill(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void MenonoStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sMenonoStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void MenonoPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    MenonoStunnedWithoutTimerInit();
}

void MenonoPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    MenonoStunnedWithoutTimerInit();
}

void MenonoAirborneInit(void)
{
    gCurrentSprite.pOamData = sMenonoPushedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
}

void MenonoAirborne(void)
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
            asm("" : "+r" (indexPointer), "+r" (index));
            velocity = sUnk_8352B18[index];
            if (velocity == 0x7FFF) {
                register u32 previousVelocityAddress asm("r1");
                register u16 yPosition asm("r0");

                previousVelocityAddress = index - 1;
                previousVelocityAddress <<= 1;
                previousVelocityAddress += (u32) sUnk_8352B18;
                /* Preserve agbcc's original address calculation and halfword load order. */
                asm("" : "+r" (previousVelocityAddress));
                yPosition = gCurrentSprite.yPosition;
                asm("" : "+r" (yPosition), "+r" (previousVelocityAddress));
                gCurrentSprite.yPosition = yPosition + *(const s16 *) previousVelocityAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePointer asm("r1");

                nextIndex = index + 1;
                storePointer = indexPointer;
                /* Keep the incremented index in r0 and the destination pointer in r1. */
                asm("" : "+r" (nextIndex), "+r" (storePointer));
                *storePointer = nextIndex;
                gCurrentSprite.yPosition += velocity;
            }
        }
    } else {
        gCurrentSprite.pose = SPOSE_1B;
    }
}

void MenonoLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
}

void MenonoLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
}

void MenonoCarriedRight(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void MenonoCarriedLeft(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteMenono(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            MenonoInit();
        case SPOSE_IDLE_INIT:
            MenonoInitWalk();
        case SPOSE_IDLE:
            MenonoWalk();
            break;
        case SPOSE_6E:
            MenonoPrepareAttack();
        case SPOSE_6F:
            MenonoWaitToAttack();
            break;
        case SPOSE_11:
            MenonoTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            MenonoTurn();
            break;
        case SPOSE_17:
            MenonoRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            MenonoGetUpInit();
            break;
        case SPOSE_1A:
            MenonoAirborne();
            break;
        case SPOSE_1B:
            MenonoFallingInit();
        case SPOSE_1C:
            func_8023E00();
            break;
        case SPOSE_1D:
            MenonoStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            MenonoTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            MenonoTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
        case SPOSE_27:
            MenonoPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
        case SPOSE_29:
            MenonoPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            MenonoPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            MenonoPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            MenonoCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            MenonoPose33();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            MenonoPose35();
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
            MenonoPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            MenonoPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            MenonoAirborneInit();
        case SPOSE_4C:
            MenonoAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            MenonoLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            MenonoLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            MenonoCarriedRight();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            MenonoCarriedLeft();
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
            MenonoDefeatedLeftInit();
            break;
        case SPOSE_6A:
            MenonoDefeatedRightInit();
            break;
        default:
            MenonoInstantlyKill();
            break;
    }
}
