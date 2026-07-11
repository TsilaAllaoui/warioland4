#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/pig_head_statue.h"
#include "sprite_util.h"
#include "gba/m4a.h"

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
