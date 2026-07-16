#include "sprite_ai/pig_head_statue.h"

#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"


void InitPigHeadStatue(void)
{
    struct PrimarySpriteData* sprite;
    u8 zero;
    u16 zero16;

    sprite = &gCurrentSprite;
    sprite->status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    zero = 0;
    zero16 = 0;
    sprite->drawDistanceDown = 24;
    sprite->drawDistanceUp = zero;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 1;
    sprite->hitboxExtentDown = 1;
    sprite->hitboxExtentLeft = 1;
    sprite->hitboxExtentRight = 1;
    sprite->pOamData = sPigHeadStatueIdleOam;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    sprite->warioCollision = zero;
    sprite->work0 = 30;
    sprite->pose = SPOSE_IDLE;
}

void PigHeadStatueWaitToOpen(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r3");
    u8 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    zero = --*timer;
    if (zero == 0) {
        sprite->pOamData = sPigHeadStatueOpeningOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero;
        *timer = 63;
        sprite->pose = SPOSE_12;
    }
}

void PigHeadStatueWaitToFire(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r3");
    u8 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    zero = --*timer;
    if (zero == 0) {
        sprite->pOamData = sPigHeadStatueFiringOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero;
        *timer = 8;
        sprite->pose = SPOSE_14;
    }
}

void PigHeadStatueFireProjectile(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* timer asm("r5");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    if (--*timer == 0) {
        SpriteSpawnAsChild(PSPRITE_PIG_HEAD_PROJECTILE, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition);
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_PIG_HEAD_STATUE_FIRE);
        }
        sprite->pose = SPOSE_16;
        *timer = 60;
    }
}

void PigHeadStatueStartCooldown(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r3");
    u8 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    zero = --*timer;
    if (zero == 0) {
        sprite->pOamData = sPigHeadStatueIdleOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero;
        *timer = 160;
        sprite->pose = SPOSE_18;
    }
}

void PigHeadStatueCooldown(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r1");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    if (--*timer == 0) {
        *timer = 30;
        sprite->pose = SPOSE_IDLE;
    }
}

void InitPigHeadProjectile(void)
{
    struct PrimarySpriteData* sprite;
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u16 status asm("r0");
    register u16 oldStatus asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    /* agbcc otherwise schedules these zero initializations after the status operations. */
    asm("mov %0, #0\n\t"
        "mov %1, #0"
        : "=r"(zero), "=r"(zero16));
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    sprite->status = status;
    sprite->drawDistanceDown = 32;
    sprite->drawDistanceUp = zero;
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = 16;
    sprite->hitboxExtentDown = 16;
    sprite->hitboxExtentLeft = 48;
    sprite->hitboxExtentRight = 44;
    sprite->pOamData = sPigHeadStatueChildFallingOam;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    sprite->warioCollision = 14;
    sprite->pose = SPOSE_12;
    sprite->work3 = zero;
    sprite->drawPriority = 1;
}

void PigHeadProjectileFall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u32 yPosition asm("r3");
    register u32 work0 asm("r0");
    u8* timerPointer;

    sprite = &gCurrentSprite;
    yPosition = func_8023A60(sprite->yPosition + 32, sprite->xPosition);
    work0 = gUnk_30000A0.unk_02;
    if (work0 == 1) {
        timerPointer = &sprite->work0;
        goto landed;
    }

    if (gUnk_3000A50) {
        register u32 zero asm("r1");
        register u32 zero16 asm("r2");

        /* agbcc otherwise coalesces the two required zero-valued registers. */
        asm("mov %0, #0\n\t"
            "mov %1, #0"
            : "=r"(zero), "=r"(zero16));
        sprite->yPosition = yPosition;
        sprite->hitboxExtentUp = 96;
        sprite->hitboxExtentDown = zero;
        sprite->pOamData = sPigHeadStatueChildLandedOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero16;
        timerPointer = &sprite->work0;
        work0 = 126;
landed:
        *timerPointer = work0;
        sprite->pose = SPOSE_14;
    } else {
        register u8* work3Pointer asm("r12");
        register u32 timer asm("r2");
        s16 yVelocity;

        work3Pointer = &sprite->work3;
        timer = *work3Pointer;
        yVelocity = sUnk_8352ADC[timer];
        if (yVelocity == S16_MAX) {
            register u32 previousTimer asm("r1");
            register const s16* previousEntry asm("r1");
            register u16 oldY asm("r0");
            register u16 previousVelocity asm("r1");

            /* agbcc otherwise subtracts in r2 instead of materializing the prior index in r1. */
            asm("sub %0, %1, #1" : "=r"(previousTimer) : "r"(timer));
            previousEntry = &sUnk_8352ADC[previousTimer];
            asm("" : "+r"(previousEntry));
            oldY = sprite->yPosition;
            previousVelocity = *previousEntry;
            oldY += previousVelocity;
            sprite->yPosition = oldY;
        } else {
            register u32 nextTimer asm("r0");
            register u8* storePointer asm("r1");

            nextTimer = timer + 1;
            storePointer = work3Pointer;
            *storePointer = nextTimer;
            sprite->yPosition += yVelocity;
        }
    }
}

void PigHeadProjectileStartDespawn(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r3");
    u8 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    zero = --*timer;
    if (zero == 0) {
        sprite->pOamData = sPigHeadStatueChildDisappearingOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero;
        *timer = 33;
        sprite->pose = SPOSE_16;
    }
}

void PigHeadProjectileDespawn(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timer asm("r2");
    register int value asm("r1");
    register u8 oldValue asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    oldValue = *timer;
    value = oldValue - 1;
    *timer = value;
    if ((u8)value != 0) {
        register u32 check asm("r0");

        /* agbcc otherwise keeps the second unsigned-byte truncation in r1. */
        asm("lsl %0, %1, #24\n\t"
            "lsr %0, %0, #24"
            : "=r"(check)
            : "r"(value));
        if (check <= 14) {
            sprite->disableWarioCollisionTimer = 1;
        }
    } else {
        sprite->status = 0;
    }
}

void SpritePigHeadStatue(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitPigHeadStatue();
            break;
        case SPOSE_IDLE:
            PigHeadStatueWaitToOpen();
            break;
        case SPOSE_12:
            PigHeadStatueWaitToFire();
            break;
        case SPOSE_14:
            PigHeadStatueFireProjectile();
            break;
        case SPOSE_16:
            PigHeadStatueStartCooldown();
            break;
        case SPOSE_18:
            PigHeadStatueCooldown();
            break;
    }
}

void SpritePigHeadProjectile(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitPigHeadProjectile();
            break;
        case SPOSE_12:
            PigHeadProjectileFall();
            break;
        case SPOSE_14:
            PigHeadProjectileStartDespawn();
            break;
        case SPOSE_16:
            PigHeadProjectileDespawn();
            break;
    }
}
