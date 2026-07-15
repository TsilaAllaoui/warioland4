#include "sprite_ai/caterpillar.h"

#include "score.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sCaterpillarCrawlingOam_Frame1[] = {
    3,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 540, 8, 0),
};

const u16 sCaterpillarCrawlingOam_Frame2[] = {
    3,
    OAM_ENTRY(-15, -14, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 570, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 572, 8, 0),
};

const u16 sCaterpillarCrawlingOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -13, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 541, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 543, 8, 0),
};

const u16 sCaterpillarCrawlingOam_Frame4[] = {
    3,
    OAM_ENTRY(-15, -13, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 573, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 575, 8, 0),
};

const u16 sCaterpillarTurningOam_Frame1[] = {
    2,
    OAM_ENTRY(-11, -15, SPRITE_SIZE_16x16, 0, 536, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 630, 8, 0),
};

const u16 sCaterpillarTurningOam_Frame2[] = {
    1,
    OAM_ENTRY(-7, -16, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sCaterpillarTurningAroundOam_Frame1[] = {
    1,
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sCaterpillarTurningAroundOam_Frame2[] = {
    2,
    OAM_ENTRY(-12, -15, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
};

const u16 sCaterpillarTurningAroundOam_Frame3[] = {
    3,
    OAM_ENTRY(-13, -14, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 573, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 575, 8, 0),
};

const u16 sCaterpillarPushedBackwardOam_Frame1[] = {
    3,
    OAM_ENTRY(-13, -14, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 540, 8, 0),
};

const u16 sCaterpillarPushedBackwardOam_Frame2[] = {
    4,
    OAM_ENTRY(-15, -17, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 523, 8, 0),
    OAM_ENTRY(-2, -15, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sCaterpillarPushedBackwardOam_Frame3[] = {
    3,
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u16 sCaterpillarPushedForwardOam_Frame1[] = {
    3,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 570, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 572, 8, 0),
};

const u16 sCaterpillarPushedForwardOam_Frame2[] = {
    3,
    OAM_ENTRY(-14, -20, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(9, -8, SPRITE_SIZE_8x8, 0, 540, 8, 0),
};

const u16 sCaterpillarPushedForwardOam_Frame3[] = {
    2,
    OAM_ENTRY(-10, -21, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
};

const u16 sCaterpillarCrushedOam_Frame1[] = {
    3,
    OAM_ENTRY(-14, -14, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 570, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 572, 8, 0),
};

const u16 sCaterpillarCrushedOam_Frame2[] = {
    3,
    OAM_ENTRY(-14, -13, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 570, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 572, 8, 0),
};

const u16 sCaterpillarCrushedOam_Frame3[] = {
    3,
    OAM_ENTRY(-16, -12, SPRITE_SIZE_8x8, 0, 544, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 544, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_32x8, 0, 530, 8, 0),
};

const u16 sCaterpillarCrushedOam_Frame4[] = {
    3,
    OAM_ENTRY(-16, -11, SPRITE_SIZE_8x8, 0, 544, 8, 0),
    OAM_ENTRY(-8, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 544, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_32x8, 0, 530, 8, 0),
};

const u16 sCaterpillarCrushedOam_Frame5[] = {
    6,
    OAM_ENTRY(-16, -10, SPRITE_SIZE_8x16, 0, 513, 8, 0),
    OAM_ENTRY(-24, -10, SPRITE_SIZE_8x8, 0, 512, 8, 0),
    OAM_ENTRY(-8, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 513, 8, 0),
    OAM_ENTRY(0, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_16x8, 0, 564, 8, 0),
    OAM_ENTRY(-13, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 564, 8, 0),
};

const u16 sCaterpillarTackledOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -14, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-5, -8, SPRITE_SIZE_16x8, 0, 573, 8, 0),
    OAM_ENTRY(11, -8, SPRITE_SIZE_8x8, 0, 575, 8, 0),
};

const u16 sCaterpillarTackledOam_Frame2[] = {
    3,
    OAM_ENTRY(-11, -20, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(10, -8, SPRITE_SIZE_8x8, 0, 523, 8, 0),
};

const u16 sCaterpillarTackledOam_Frame3[] = {
    2,
    OAM_ENTRY(-7, -21, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x8, 0, 562, 8, 0),
};

const u16 sCaterpillarCarriedOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 594, 8, 0),
};

const u16 sCaterpillarCarriedOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 596, 8, 0),
};

const u16 sCaterpillarStunnedOam_Frame1[] = {
    3,
    OAM_ENTRY(-15, -17, SPRITE_SIZE_16x16, 0, 590, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_32x8, 0, 583, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sCaterpillarStunnedOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_32x8, 0, 615, 8, 0),
    OAM_ENTRY(-18, -13, SPRITE_SIZE_16x16, 0, 590, 8, 0),
};

const u16 sCaterpillarStunnedOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_32x8, 0, 586, 8, 0),
    OAM_ENTRY(5, -15, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sCaterpillarStunnedOam_Frame4[] = {
    3,
    OAM_ENTRY(-15, -18, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 526, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_32x8, 0, 618, 8, 0),
    OAM_ENTRY(-1, -16, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sCaterpillarGettingUpOam_Frame1[] = {
    3,
    OAM_ENTRY(-17, -13, SPRITE_SIZE_16x16, 0, 592, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_32x8, 0, 579, 8, 0),
    OAM_ENTRY(7, -15, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sCaterpillarGettingUpOam_Frame2[] = {
    2,
    OAM_ENTRY(-17, -14, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 592, 8, 0),
    OAM_ENTRY(-17, -8, SPRITE_SIZE_32x8, 0, 611, 8, 0),
};

const u16 sCaterpillarGettingUpOam_Frame3[] = {
    2,
    OAM_ENTRY(-15, -13, SPRITE_SIZE_16x16, 0, 528, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_32x8, 0, 598, 8, 0),
};

const u16 sCaterpillarGettingUpOam_Frame4[] = {
    3,
    OAM_ENTRY(-13, -13, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 555, 8, 0),
};

const u8 sCaterpillarRawData_83C770A[] = {
    0x00, 0x00,
};

const struct AnimationFrame sCaterpillarCrawlingOam[] = {
    {sCaterpillarCrawlingOam_Frame1, 8},
    {sCaterpillarCrawlingOam_Frame2, 8},
    {sCaterpillarCrawlingOam_Frame3, 8},
    {sCaterpillarCrawlingOam_Frame4, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarFallingOam[] = {
    {sCaterpillarCrawlingOam_Frame1, 6},
    {sCaterpillarCrawlingOam_Frame2, 6},
    {sCaterpillarCrawlingOam_Frame3, 6},
    {sCaterpillarCrawlingOam_Frame4, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarTurningOam[] = {
    {sCaterpillarCrawlingOam_Frame1, 7},
    {sCaterpillarTurningOam_Frame1, 7},
    {sCaterpillarTurningOam_Frame2, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarTurningAroundOam[] = {
    {sCaterpillarTurningAroundOam_Frame1, 7},
    {sCaterpillarTurningAroundOam_Frame2, 7},
    {sCaterpillarTurningAroundOam_Frame3, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarPushedBackwardOam[] = {
    {sCaterpillarPushedBackwardOam_Frame1, 2},
    {sCaterpillarPushedBackwardOam_Frame2, 3},
    {sCaterpillarPushedBackwardOam_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarPushedForwardOam[] = {
    {sCaterpillarPushedForwardOam_Frame1, 2},
    {sCaterpillarPushedForwardOam_Frame2, 2},
    {sCaterpillarPushedForwardOam_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarCrushedOam[] = {
    {sCaterpillarCrushedOam_Frame1, 2},
    {sCaterpillarCrushedOam_Frame2, 2},
    {sCaterpillarCrushedOam_Frame3, 2},
    {sCaterpillarCrushedOam_Frame4, 2},
    {sCaterpillarCrushedOam_Frame5, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarTackledOam[] = {
    {sCaterpillarCrushedOam_Frame1, 1},
    {sCaterpillarTackledOam_Frame1, 2},
    {sCaterpillarTackledOam_Frame2, 3},
    {sCaterpillarTackledOam_Frame3, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarStunnedOam[] = {
    {sCaterpillarStunnedOam_Frame1, 8},
    {sCaterpillarStunnedOam_Frame2, 8},
    {sCaterpillarStunnedOam_Frame3, 8},
    {sCaterpillarStunnedOam_Frame4, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarGettingUpOam[] = {
    {sCaterpillarStunnedOam_Frame1, 4},
    {sCaterpillarGettingUpOam_Frame1, 7},
    {sCaterpillarGettingUpOam_Frame2, 7},
    {sCaterpillarGettingUpOam_Frame3, 7},
    {sCaterpillarGettingUpOam_Frame4, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCaterpillarCarriedOam[] = {
    {sCaterpillarCarriedOam_Frame1, 10},
    {sCaterpillarCarriedOam_Frame2, 10},
    ANIMATION_TERMINATOR
};

void CaterpillarInit(void)
{
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 32;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    gCurrentSprite.pOamData = sCaterpillarCrawlingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    SpriteUtilTurnTowardWario();
}

void CaterpillarInitCrawl(void)
{
    gCurrentSprite.pOamData = sCaterpillarCrawlingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.hitboxExtentUp = 32;
}

void CaterpillarCrawl(void)
{
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
    } else if ((gUnk_3000A50 & 0xF0) &&
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

    SpriteUtilMoveForward1Subpixel();
}

asm(".align 2, 0");

void CaterpillarTurnInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 22;
}

void CaterpillarTurn(void)
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
        gCurrentSprite.pOamData = sCaterpillarTurningAroundOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_14;
        gCurrentSprite.work0 = 21;
    } else {
        gCurrentSprite.pOamData = sCaterpillarCrawlingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_IDLE;
    }
}

void CaterpillarStunnedInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5) {
        gCurrentSprite.warioCollision = 5;
    }
}

void CaterpillarPose33(void)
{
    gCurrentSprite.pose = SPOSE_34;
    CaterpillarStunnedInit();
}

void CaterpillarPose35(void)
{
    gCurrentSprite.pose = SPOSE_36;
    CaterpillarStunnedInit();
}

void CaterpillarRecoverInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarCrawlingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 60;
}

void CaterpillarGetUpInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 32;
}

void CaterpillarGetUp(void)
{
    func_80238E8();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1D;
    }

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = SPOSE_17;
        gCurrentSprite.warioCollision = 1;
        gCurrentSprite.hitboxExtentUp = 32;
    }
}

void CaterpillarFallingInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
}

void CaterpillarStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void CaterpillarTackledInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void CaterpillarTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    CaterpillarTackledInit();
}

void CaterpillarTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    CaterpillarTackledInit();
}

void CaterpillarDefeatedInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void CaterpillarDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    CaterpillarDefeatedInit();
}

void CaterpillarDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    CaterpillarDefeatedInit();
}

void CaterpillarPushedInit(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void CaterpillarPushedRightInit(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pOamData = sCaterpillarPushedForwardOam;
    } else {
        gCurrentSprite.pOamData = sCaterpillarPushedBackwardOam;
    }
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    CaterpillarPushedInit();
}

void CaterpillarPushedLeftInit(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.pOamData = sCaterpillarPushedBackwardOam;
    } else {
        gCurrentSprite.pOamData = sCaterpillarPushedForwardOam;
    }
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    CaterpillarPushedInit();
}

void CaterpillarPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
}

void CaterpillarPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    CaterpillarPose2BOr2DInit();
}

void CaterpillarPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    CaterpillarPose2BOr2DInit();
}

void CaterpillarCrushed(void)
{
    gCurrentSprite.pOamData = sCaterpillarCrushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 11;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void CaterpillarInstantlyKill(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void CaterpillarStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void CaterpillarPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    CaterpillarStunnedWithoutTimerInit();
}

void CaterpillarPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    CaterpillarStunnedWithoutTimerInit();
}

void CaterpillarAirborneInit(void)
{
    gCurrentSprite.pOamData = sCaterpillarFallingOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
}

void CaterpillarAirborne(void)
{
    register u8* indexPointer asm("ip");
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
            asm("" : "+r"(indexPointer), "+r"(index));
            velocity = sUnk_8352B18[index];
            if (velocity == 0x7FFF) {
                register u32 previousVelocityAddress asm("r1");
                register u16 yPosition asm("r0");

                previousVelocityAddress = index - 1;
                previousVelocityAddress <<= 1;
                previousVelocityAddress += (u32)sUnk_8352B18;
                asm("" : "+r"(previousVelocityAddress));
                yPosition = gCurrentSprite.yPosition;
                asm("" : "+r"(yPosition), "+r"(previousVelocityAddress));
                gCurrentSprite.yPosition = yPosition + *(const s16*)previousVelocityAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8* storePointer asm("r1");

                nextIndex = index + 1;
                storePointer = indexPointer;
                asm("" : "+r"(nextIndex), "+r"(storePointer));
                *storePointer = nextIndex;
                gCurrentSprite.yPosition += velocity;
            }
        }
    } else {
        gCurrentSprite.pose = SPOSE_1B;
    }
}

void CaterpillarLiftedInit(void)
{
    register u8 zero8 asm("r2");
    register u16 zero16 asm("r0");

    gCurrentSprite.pOamData = sCaterpillarCarriedOam;
    zero8 = 0;
    zero16 = 0;
    /* Preserve the distinct byte and halfword zero temporaries used by agbcc. */
    asm("" : "+r"(zero8), "+r"(zero16));
    gCurrentSprite.animationTimer = zero16;
    gCurrentSprite.currentAnimationFrame = zero8;
    gCurrentSprite.hitboxExtentUp = 64;
}

void CaterpillarLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
    CaterpillarLiftedInit();
}

void CaterpillarLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
    CaterpillarLiftedInit();
}

void CaterpillarCarriedInit(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sCaterpillarCarriedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.hitboxExtentUp = 64;
}

void CaterpillarCarriedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    CaterpillarCarriedInit();
}

void CaterpillarCarriedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    CaterpillarCarriedInit();
}

void SpriteCaterpillar(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            CaterpillarInit();
            break;
        case SPOSE_IDLE_INIT:
            CaterpillarInitCrawl();
        case SPOSE_IDLE:
            CaterpillarCrawl();
            break;
        case SPOSE_11:
            CaterpillarTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            CaterpillarTurn();
            break;
        case SPOSE_17:
            CaterpillarRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            CaterpillarGetUpInit();
        case SPOSE_1A:
            CaterpillarGetUp();
            break;
        case SPOSE_1B:
            CaterpillarFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            CaterpillarStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            CaterpillarTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            CaterpillarTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            CaterpillarPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
            CaterpillarPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            CaterpillarPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            CaterpillarPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            CaterpillarCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            CaterpillarPose33();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            CaterpillarPose35();
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
            CaterpillarPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            CaterpillarPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            CaterpillarAirborneInit();
        case SPOSE_4C:
            CaterpillarAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            CaterpillarLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            CaterpillarLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            CaterpillarCarriedRightInit();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            CaterpillarCarriedLeftInit();
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
            CaterpillarDefeatedLeftInit();
            break;
        case SPOSE_6A:
            CaterpillarDefeatedRightInit();
            break;
        default:
            CaterpillarInstantlyKill();
            break;
    }
}
