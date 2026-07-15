#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/pig_head_statue.h"
#include "sprite_util.h"
#include "gba/m4a.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sPigHeadStatueIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-16, -5, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(0, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sPigHeadStatueFiringOam_Frame1[] = {
    4,
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 540, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-16, -5, SPRITE_SIZE_16x8, 0, 536, 8, 0),
    OAM_ENTRY(0, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 536, 8, 0),
};

const u16 sPigHeadStatueOpeningOam_Frame1[] = {
    6,
    OAM_ENTRY(1, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-9, -18, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-16, -5, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(0, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sPigHeadStatueOpeningOam_Frame2[] = {
    6,
    OAM_ENTRY(-9, -18, SPRITE_SIZE_8x8, 0, 521, 8, 0),
    OAM_ENTRY(1, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(-16, -21, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(0, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-16, -5, SPRITE_SIZE_16x8, 0, 538, 8, 0),
    OAM_ENTRY(0, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 538, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame2[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame3[] = {
    2,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-9, -9, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame4[] = {
    2,
    OAM_ENTRY(-6, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-5, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame5[] = {
    2,
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-6, -15, SPRITE_SIZE_8x8, 0, 565, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame6[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(0, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 532, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame7[] = {
    2,
    OAM_ENTRY(-10, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-3, -14, SPRITE_SIZE_8x8, 0, 564, 8, 0),
};

const u16 sPigHeadStatueChildFallingOam_Frame8[] = {
    2,
    OAM_ENTRY(-9, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(0, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 565, 8, 0),
};

const u16 sPigHeadStatueChildLandedOam_Frame1[] = {
    3,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(1, -24, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-11, -21, SPRITE_SIZE_8x8, 0, 534, 8, 0),
};

const u16 sPigHeadStatueChildLandedOam_Frame2[] = {
    3,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(4, -27, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 564, 8, 0),
    OAM_ENTRY(-10, -25, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 566, 8, 0),
};

const u16 sPigHeadStatueChildLandedOam_Frame3[] = {
    3,
    OAM_ENTRY(2, -30, SPRITE_SIZE_8x8, 0, 565, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-4, -16, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sPigHeadStatueChildLandedOam_Frame4[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 552, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 522, 8, 0),
};

const u16 sPigHeadStatueChildLandedOam_Frame5[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 552, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 522, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame1[] = {
    1,
    OAM_ENTRY(-14, -16, SPRITE_SIZE_32x16, 0, 524, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame2[] = {
    1,
    OAM_ENTRY(-16, -15, SPRITE_SIZE_32x16, 0, 528, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame3[] = {
    1,
    OAM_ENTRY(-16, -7, SPRITE_SIZE_32x8, 0, 568, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame4[] = {
    1,
    OAM_ENTRY(-15, -10, SPRITE_SIZE_32x8, 0, 532, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame5[] = {
    1,
    OAM_ENTRY(-16, -11, SPRITE_SIZE_32x8, 0, 564, 8, 0),
};

const u16 sPigHeadStatueChildDisappearingOam_Frame6[] = {
    2,
    OAM_ENTRY(-1, -14, SPRITE_SIZE_8x8, 0, 565, 8, 0),
    OAM_ENTRY(-14, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 567, 8, 0),
};

const u8 sPigHeadStatueRawData_83BB63A[] = {
    0x00, 0x00,
};

const struct AnimationFrame sPigHeadStatueIdleOam[] = {
    {sPigHeadStatueIdleOam_Frame1, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPigHeadStatueOpeningOam[] = {
    {sPigHeadStatueIdleOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame2, 7},
    {sPigHeadStatueIdleOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame2, 7},
    {sPigHeadStatueIdleOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame1, 7},
    {sPigHeadStatueOpeningOam_Frame2, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPigHeadStatueFiringOam[] = {
    {sPigHeadStatueFiringOam_Frame1, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPigHeadStatueChildFallingOam[] = {
    {sPigHeadStatueChildFallingOam_Frame1, 8},
    {sPigHeadStatueChildFallingOam_Frame2, 8},
    {sPigHeadStatueChildFallingOam_Frame3, 8},
    {sPigHeadStatueChildFallingOam_Frame4, 8},
    {sPigHeadStatueChildFallingOam_Frame5, 8},
    {sPigHeadStatueChildFallingOam_Frame1, 8},
    {sPigHeadStatueChildFallingOam_Frame2, 8},
    {sPigHeadStatueChildFallingOam_Frame6, 8},
    {sPigHeadStatueChildFallingOam_Frame7, 8},
    {sPigHeadStatueChildFallingOam_Frame8, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPigHeadStatueChildLandedOam[] = {
    {sPigHeadStatueChildLandedOam_Frame1, 7},
    {sPigHeadStatueChildLandedOam_Frame2, 7},
    {sPigHeadStatueChildLandedOam_Frame3, 7},
    {sPigHeadStatueChildLandedOam_Frame4, 7},
    {sPigHeadStatueChildLandedOam_Frame5, 7},
    {sPigHeadStatueChildLandedOam_Frame1, 7},
    {sPigHeadStatueChildLandedOam_Frame2, 7},
    {sPigHeadStatueChildLandedOam_Frame3, 7},
    {sPigHeadStatueChildLandedOam_Frame4, 7},
    {sPigHeadStatueChildLandedOam_Frame5, 7},
    {sPigHeadStatueChildLandedOam_Frame1, 7},
    {sPigHeadStatueChildLandedOam_Frame2, 7},
    {sPigHeadStatueChildLandedOam_Frame3, 7},
    {sPigHeadStatueChildLandedOam_Frame4, 7},
    {sPigHeadStatueChildLandedOam_Frame5, 7},
    {sPigHeadStatueChildLandedOam_Frame1, 7},
    {sPigHeadStatueChildLandedOam_Frame2, 7},
    {sPigHeadStatueChildLandedOam_Frame3, 7},
    {sPigHeadStatueChildLandedOam_Frame4, 7},
    {sPigHeadStatueChildLandedOam_Frame5, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPigHeadStatueChildDisappearingOam[] = {
    {sPigHeadStatueChildDisappearingOam_Frame1, 6},
    {sPigHeadStatueChildDisappearingOam_Frame2, 6},
    {sPigHeadStatueChildDisappearingOam_Frame3, 6},
    {sPigHeadStatueChildDisappearingOam_Frame4, 5},
    {sPigHeadStatueChildDisappearingOam_Frame5, 5},
    {sPigHeadStatueChildDisappearingOam_Frame6, 5},
    ANIMATION_TERMINATOR
};

void InitPigHeadStatue(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    sprite->drawDistanceDown = 24;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 1;
    sprite->hitboxExtentDown = 1;
    sprite->hitboxExtentLeft = 1;
    sprite->hitboxExtentRight = 1;
    sprite->pOamData = sPigHeadStatueIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->warioCollision = 0;
    sprite->work0 = 30;
    sprite->pose = PIG_HEAD_STATUE_POSE_IDLE;
}

void PigHeadStatueIdle(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->pOamData = sPigHeadStatueOpeningOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 63;
        sprite->pose = PIG_HEAD_STATUE_POSE_OPENING;
    }
}

void PigHeadStatueOpening(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->pOamData = sPigHeadStatueFiringOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 8;
        sprite->pose = PIG_HEAD_STATUE_POSE_FIRING;
    }
}

void PigHeadStatueFiring(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        SpriteSpawnAsChild(
            PSPRITE_PIG_HEAD_STATUE_CHILD, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition
        );
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_PIG_HEAD_STATUE_LAUNCH);
        }
        sprite->pose = PIG_HEAD_STATUE_POSE_POST_FIRE;
        sprite->work0 = 60;
    }
}

void PigHeadStatuePostFire(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->pOamData = sPigHeadStatueIdleOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 160;
        sprite->pose = PIG_HEAD_STATUE_POSE_COOLDOWN;
    }
}

void PigHeadStatueCooldown(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->work0 = 30;
        sprite->pose = PIG_HEAD_STATUE_POSE_IDLE;
    }
}

void InitPigHeadStatueChild(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    sprite->status &= ~SPRITE_STATUS_HIDDEN;
    sprite->drawDistanceDown = 32;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = 16;
    sprite->hitboxExtentDown = 16;
    sprite->hitboxExtentLeft = 48;
    sprite->hitboxExtentRight = 44;
    sprite->pOamData = sPigHeadStatueChildFallingOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->warioCollision = 14;
    sprite->pose = PIG_HEAD_STATUE_CHILD_POSE_FALLING;
    sprite->work3 = 0;
    sprite->drawPriority = 1;
}

void PigHeadStatueChildFalling(void)
{
    struct PrimarySpriteData* sprite;
    u32 yPosition;
    s16 yVelocity;
    u32 timer;

    sprite = &gCurrentSprite;
    yPosition = func_8023A60(sprite->yPosition + HALF_BLOCK_SIZE, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        sprite->work0 = 1;
        sprite->pose = PIG_HEAD_STATUE_CHILD_POSE_LANDED;
    } else if (gUnk_3000A50) {
        sprite->yPosition = yPosition;
        sprite->hitboxExtentUp = 96;
        sprite->hitboxExtentDown = 0;
        sprite->pOamData = sPigHeadStatueChildLandedOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 126;
        sprite->pose = PIG_HEAD_STATUE_CHILD_POSE_LANDED;
    } else {
        timer = sprite->work3;
        yVelocity = sUnk_8352ADC[timer];
        if (yVelocity == S16_MAX) {
            yVelocity = sUnk_8352ADC[timer - 1];
            sprite->yPosition += yVelocity;
        } else {
            sprite->work3++;
            sprite->yPosition += yVelocity;
        }
    }
}

void PigHeadStatueChildLanded(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->pOamData = sPigHeadStatueChildDisappearingOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 33;
        sprite->pose = PIG_HEAD_STATUE_CHILD_POSE_DISAPPEARING;
    }
}

void PigHeadStatueChildDisappearing(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timer asm("r2");
    register int value asm("r1");
    register u32 timerValue asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    timerValue = *timer;
    value = timerValue - 1;
    *timer = value;
    timerValue = (u8)value;
    if (timerValue != 0) {
        timerValue = (u8)value;
        if (timerValue <= 14) {
            sprite->disableWarioCollisionTimer = 1;
        }
    } else {
        sprite->status = timerValue;
    }
}

void SpritePigHeadStatue(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitPigHeadStatue();
            break;
        case PIG_HEAD_STATUE_POSE_IDLE:
            PigHeadStatueIdle();
            break;
        case PIG_HEAD_STATUE_POSE_OPENING:
            PigHeadStatueOpening();
            break;
        case PIG_HEAD_STATUE_POSE_FIRING:
            PigHeadStatueFiring();
            break;
        case PIG_HEAD_STATUE_POSE_POST_FIRE:
            PigHeadStatuePostFire();
            break;
        case PIG_HEAD_STATUE_POSE_COOLDOWN:
            PigHeadStatueCooldown();
            break;
    }
}

void SpritePigHeadStatueChild(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitPigHeadStatueChild();
            break;
        case PIG_HEAD_STATUE_CHILD_POSE_FALLING:
            PigHeadStatueChildFalling();
            break;
        case PIG_HEAD_STATUE_CHILD_POSE_LANDED:
            PigHeadStatueChildLanded();
            break;
        case PIG_HEAD_STATUE_CHILD_POSE_DISAPPEARING:
            PigHeadStatueChildDisappearing();
            break;
    }
}
