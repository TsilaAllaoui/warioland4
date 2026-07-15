#include "sprite_ai/onomi.h"

#include "gba/m4a.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sOnomiPushedOam_Frame1[] = {
    5,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-17, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiTurningOam_Frame1[] = {
    4,
    OAM_ENTRY(-15, -36, SPRITE_SIZE_16x32, 0, 521, 8, 0),
    OAM_ENTRY(-20, -34, SPRITE_SIZE_32x32, 0, 515, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 555, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u8 sOnomiRawData_83E234A[] = {
    0x04, 0x00, 0xE5, 0x00, 0xF3, 0x41, 0x4B, 0x82, 0xDE, 0x00, 0xEF, 0x91, 0x00, 0x82, 0xF8, 0x00,
    0x03, 0x00, 0x2B, 0x82, 0xF8, 0x40, 0xF0, 0x01, 0x0B, 0x82,
};

const u16 sOnomiAttackingOam_Frame2[] = {
    4,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_16x32, 0, 532, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-4, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
    OAM_ENTRY(-12, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
};

const u16 sOnomiAttackingOam_Frame3[] = {
    4,
    OAM_ENTRY(-17, -15, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-4, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
    OAM_ENTRY(-12, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
};

const u16 sOnomiAttackingOam_Frame4[] = {
    4,
    OAM_ENTRY(-17, -16, SPRITE_SIZE_16x16, 0, 534, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 589, 8, 0),
    OAM_ENTRY(-4, -24, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 557, 8, 0),
    OAM_ENTRY(-12, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 559, 8, 0),
};

const u16 sOnomiAttackingOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-16, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-16, -10, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiPreparingAttackOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-18, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-18, -11, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sOnomiPreparingAttackOam_Frame2[] = {
    4,
    OAM_ENTRY(-14, -28, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-19, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -9, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sOnomiPreparingAttackOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-19, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiPreparingAttackOam_Frame4[] = {
    4,
    OAM_ENTRY(-13, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-18, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiWalkingOam_Frame1[] = {
    5,
    OAM_ENTRY(-17, -34, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -18, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-18, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-17, -10, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sOnomiWalkingOam_Frame2[] = {
    5,
    OAM_ENTRY(-18, -32, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-19, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sOnomiWalkingOam_Frame3[] = {
    5,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-19, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiWalkingOam_Frame4[] = {
    5,
    OAM_ENTRY(-17, -33, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -17, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-18, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-4, -7, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u8 sOnomiRawData_83E24B4[] = {
    0x04, 0x00, 0xF2, 0x00, 0xF3, 0x61, 0x4B, 0x82, 0xE9, 0x00, 0xEB, 0xB1, 0x00, 0x82, 0xE7, 0x00,
    0x03, 0x20, 0x2B, 0x82, 0xE7, 0x40, 0xF0, 0x21, 0x0B, 0x82,
};

const u16 sOnomiStunnedOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-19, -31, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-4, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(5, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(-18, -21, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sOnomiStunnedOam_Frame2[] = {
    5,
    OAM_ENTRY(-14, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-20, -32, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(2, -23, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(-20, -20, SPRITE_SIZE_16x8, 0, 598, 8, 0),
};

const u16 sOnomiStunnedOam_Frame3[] = {
    4,
    OAM_ENTRY(-15, -15, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-19, -32, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-8, -25, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
    OAM_ENTRY(0, -23, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 556, 8, 0),
};

const u16 sOnomiFallingOam_Frame1[] = {
    5,
    OAM_ENTRY(-14, -23, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-19, -22, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-4, -6, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(-18, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiFallingOam_Frame2[] = {
    5,
    OAM_ENTRY(-14, -22, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-19, -21, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-20, -9, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 598, 8, 0),
};

const u16 sOnomiFallingOam_Frame3[] = {
    4,
    OAM_ENTRY(-14, -22, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-19, -21, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_8x8, 0, 556, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_8x8, 0, 556, 8, 0),
};

const u16 sOnomiTackledOam_Frame1[] = {
    1,
    OAM_ENTRY(-7, -32, SPRITE_SIZE_16x32, 0, 536, 8, 0),
};

const u16 sOnomiTackledOam_Frame2[] = {
    1,
    OAM_ENTRY(-7, -32, SPRITE_SIZE_16x32, 0, 538, 8, 0),
};

const u16 sOnomiCrushedOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -21, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-21, -20, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
    OAM_ENTRY(-19, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiCrushedOam_Frame2[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, 0, 540, 8, 0),
};

const u16 sOnomiCrushedOam_Frame3[] = {
    1,
    OAM_ENTRY(-15, -15, SPRITE_SIZE_32x16, 0, 604, 8, 0),
};

const u16 sOnomiWalkingOam_Frame5[] = {
    6,
    OAM_ENTRY(-17, -32, SPRITE_SIZE_8x8, 0, 630, 8, 0),
    OAM_ENTRY(-18, -32, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-19, -35, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sOnomiWalkingOam_Frame6[] = {
    6,
    OAM_ENTRY(-16, -33, SPRITE_SIZE_8x8, 0, 631, 8, 0),
    OAM_ENTRY(-17, -32, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 583, 8, 0),
    OAM_ENTRY(-19, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sOnomiGettingUpOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -27, SPRITE_SIZE_16x16, 0, 587, 8, 0),
    OAM_ENTRY(-18, -34, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
    OAM_ENTRY(-6, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 556, 8, 0),
};

const u16 sOnomiCrushedWhileStunnedOam_Frame1[] = {
    4,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 587, 8, 0),
    OAM_ENTRY(-21, -31, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(4, -19, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 555, 8, 0),
    OAM_ENTRY(-19, -19, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 523, 8, 0),
};

const u16 sOnomiCrushedWhileStunnedOam_Frame2[] = {
    1,
    OAM_ENTRY(-17, -14, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 540, 8, 0),
};

const u16 sOnomiCrushedWhileStunnedOam_Frame3[] = {
    1,
    OAM_ENTRY(-16, -13, SPRITE_SIZE_32x16, ST_OAM_VFLIP, 604, 8, 0),
};

const struct AnimationFrame sOnomiPushedOam[] = {
    {sOnomiPushedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiTurningOam[] = {
    {sOnomiPushedOam_Frame1, 4},
    {sOnomiTurningOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiPreparingAttackOam[] = {
    {sOnomiPreparingAttackOam_Frame1, 2},
    {sOnomiPreparingAttackOam_Frame2, 2},
    {sOnomiPreparingAttackOam_Frame3, 2},
    {sOnomiPreparingAttackOam_Frame4, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiWalkingOam[] = {
    {sOnomiWalkingOam_Frame1, 4},
    {sOnomiWalkingOam_Frame2, 4},
    {sOnomiWalkingOam_Frame3, 4},
    {sOnomiWalkingOam_Frame4, 4},
    {sOnomiWalkingOam_Frame1, 4},
    {sOnomiWalkingOam_Frame5, 4},
    {sOnomiWalkingOam_Frame6, 4},
    {sOnomiWalkingOam_Frame4, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiAttackingOam[] = {
    {sOnomiPushedOam_Frame1, 1},
    {sOnomiAttackingOam_Frame1, 2},
    {sOnomiAttackingOam_Frame2, 5},
    {sOnomiAttackingOam_Frame3, 2},
    {sOnomiAttackingOam_Frame4, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiStunnedOam[] = {
    {sOnomiStunnedOam_Frame1, 2},
    {sOnomiStunnedOam_Frame2, 2},
    {sOnomiStunnedOam_Frame3, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiFallingOam[] = {
    {sOnomiFallingOam_Frame1, 2},
    {sOnomiFallingOam_Frame2, 2},
    {sOnomiFallingOam_Frame3, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiTackledOam[] = {
    {sOnomiTackledOam_Frame1, 4},
    {sOnomiTackledOam_Frame2, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiCrushedOam[] = {
    {sOnomiCrushedOam_Frame1, 2},
    {sOnomiCrushedOam_Frame2, 3},
    {sOnomiCrushedOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiGettingUpOam[] = {
    {sOnomiGettingUpOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiTurningAroundOam[] = {
    {sOnomiTurningOam_Frame1, 4},
    {sOnomiPushedOam_Frame1, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sOnomiCrushedWhileStunnedOam[] = {
    {sOnomiCrushedWhileStunnedOam_Frame1, 2},
    {sOnomiCrushedWhileStunnedOam_Frame2, 3},
    {sOnomiCrushedWhileStunnedOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

void OnomiSetWalkingHitbox(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 32;
        gCurrentSprite.hitboxExtentRight = 52;
    } else {
        gCurrentSprite.hitboxExtentLeft = 56;
        gCurrentSprite.hitboxExtentRight = 28;
    }
}

void OnomiInit(void)
{
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.drawDistanceDown = 40;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.pOamData = sOnomiWalkingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    SpriteUtilTurnTowardWario();
}

void OnomiInitWalk(void)
{
    gCurrentSprite.pOamData = sOnomiWalkingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 20;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = 3;
    OnomiSetWalkingHitbox();
}

void OnomiWalk(void)
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

void OnomiPrepareAttack(void)
{
    gCurrentSprite.pOamData = sOnomiPreparingAttackOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6F;
    gCurrentSprite.work0 = 40;
    m4aSongNumStart(SE_MENONO_ONOMI_PREPARE_ATTACK);
}

void OnomiWaitToAttack(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        OnomiWalk();
    } else {
        gCurrentSprite.pose = SPOSE_18;
        gCurrentSprite.pOamData = sOnomiAttackingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.work0 = 13;
        m4aSongNumStart(SE_MENONO_ONOMI_ATTACK);
    }
}

void OnomiTurnInit(void)
{
    gCurrentSprite.pOamData = sOnomiTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.work0 = 9;
    OnomiSetWalkingHitbox();
}

void OnomiTurn(void)
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
        gCurrentSprite.pOamData = sOnomiTurningAroundOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_14;
        gCurrentSprite.work0 = 14;
        OnomiSetWalkingHitbox();
    } else {
        gCurrentSprite.pOamData = sOnomiWalkingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_IDLE;
        gCurrentSprite.warioCollision = 3;
    }
}

void OnomiStunnedInit(void)
{
    gCurrentSprite.pOamData = sOnomiStunnedOam;
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

void OnomiPose33(void)
{
    gCurrentSprite.pose = SPOSE_34;
    OnomiStunnedInit();
}

void OnomiPose35(void)
{
    gCurrentSprite.pose = SPOSE_36;
    OnomiStunnedInit();
}

void OnomiRecoverInit(void)
{
    gCurrentSprite.pOamData = sOnomiPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 20;
}

void OnomiGetUpInit(void)
{
    gCurrentSprite.pOamData = sOnomiGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 16;
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.work3 = 0;
    OnomiSetWalkingHitbox();
}

void OnomiFallingInit(void)
{
    gCurrentSprite.pOamData = sOnomiFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
}

void OnomiStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sOnomiStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void OnomiTackledInit(void)
{
    gCurrentSprite.pOamData = sOnomiTackledOam;
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

void OnomiTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    OnomiTackledInit();
}

void OnomiTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    OnomiTackledInit();
}

void OnomiDefeatedInit(void)
{
    gCurrentSprite.pOamData = sOnomiTackledOam;
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

void OnomiDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    OnomiDefeatedInit();
}

void OnomiDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    OnomiDefeatedInit();
}

void OnomiPushedInit(void)
{
    gCurrentSprite.pOamData = sOnomiPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void OnomiPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    OnomiPushedInit();
}

void OnomiPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    OnomiPushedInit();
}

void OnomiPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sOnomiStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void OnomiPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    OnomiPose2BOr2DInit();
}

void OnomiPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    OnomiPose2BOr2DInit();
}

void OnomiCrushed(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sOnomiCrushedWhileStunnedOam;
    } else {
        gCurrentSprite.pOamData = sOnomiCrushedOam;
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

void OnomiInstantlyKill(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void OnomiStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sOnomiStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void OnomiPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    OnomiStunnedWithoutTimerInit();
}

void OnomiPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    OnomiStunnedWithoutTimerInit();
}

void OnomiAirborneInit(void)
{
    gCurrentSprite.pOamData = sOnomiPushedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
}

void OnomiAirborne(void)
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

void OnomiLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
}

void OnomiLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
}

void OnomiCarriedRight(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void OnomiCarriedLeft(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteOnomi(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            OnomiInit();
        case SPOSE_IDLE_INIT:
            OnomiInitWalk();
        case SPOSE_IDLE:
            OnomiWalk();
            break;
        case SPOSE_6E:
            OnomiPrepareAttack();
        case SPOSE_6F:
            OnomiWaitToAttack();
            break;
        case SPOSE_11:
            OnomiTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            OnomiTurn();
            break;
        case SPOSE_17:
            OnomiRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            OnomiGetUpInit();
            break;
        case SPOSE_1A:
            OnomiAirborne();
            break;
        case SPOSE_1B:
            OnomiFallingInit();
        case SPOSE_1C:
            func_8023E00();
            break;
        case SPOSE_1D:
            OnomiStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            OnomiTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            OnomiTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
        case SPOSE_27:
            OnomiPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
        case SPOSE_29:
            OnomiPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            OnomiPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            OnomiPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            OnomiCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            OnomiPose33();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            OnomiPose35();
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
            OnomiPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            OnomiPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            OnomiAirborneInit();
        case SPOSE_4C:
            OnomiAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            OnomiLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            OnomiLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            OnomiCarriedRight();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            OnomiCarriedLeft();
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
            OnomiDefeatedLeftInit();
            break;
        case SPOSE_6A:
            OnomiDefeatedRightInit();
            break;
        default:
            OnomiInstantlyKill();
            break;
    }
}
