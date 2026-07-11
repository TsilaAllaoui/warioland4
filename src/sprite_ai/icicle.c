#include "sprite_ai/icicle.h"

#include "global_data.h"
#include "sound.h"
#include "sprite_util.h"
#include "wario.h"

void InitIcicle(void)
{
    register struct PrimarySpriteData *current asm("ip");
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *bounds asm("r1");
    register u8 *rightExtent asm("r0");
    register int extentValue asm("r1");

    current = &gCurrentSprite;
    oldStatus = current->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    sprite = current;
    sprite->status = status;
    bounds = (u8 *)current + 32;
    *bounds = 24;
    bounds++;
    *bounds = 24;
    bounds++;
    *bounds = 24;
    bounds++;
    *bounds = 48;
    bounds++;
    *bounds = 140;
    bounds++;
    asm("" : "+r"(bounds));
    *bounds = 20;
    rightExtent = (u8 *)current + 38;
    extentValue = 16;
    *rightExtent = extentValue;
    sprite->pOamData = sIcicleIdleOam;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    current->work0 = 62;
    sprite->pose = extentValue;
    sprite->warioCollision = 8;
    sprite->drawPriority = 1;
    m4aSongNumStart(SE_ICICLE_WARNING);
}

void IcicleWaitToFall(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timerPointer asm("r2");
    register int oldTimer asm("r0");
    register int nextTimer asm("r1");
    register u8 timer asm("r2");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    oldTimer = *timerPointer;
    nextTimer = oldTimer - 1;
    *timerPointer = nextTimer;
    oldTimer = nextTimer << 24;
    timer = (u32)oldTimer >> 24;
    if (timer != 0) {
        register u32 compareTimer asm("r1");
        compareTimer = timer;
        if (compareTimer > 32) {
            sprite->disableWarioCollisionTimer = 1;
            if (compareTimer == 52) {
                SpriteSpawnAsChild(PSPRITE_ICICLE_WARNING, sprite->roomSlot, sprite->gfxSlot,
                                   sprite->yPosition, sprite->xPosition);
            }
        }
    } else {
        register int zero asm("r1");
        register u8 *work3Pointer asm("r0");
        sprite->pOamData = sIcicleFallingOam;
        sprite->currentAnimationFrame = timer;
        zero = 0;
        /* agbcc otherwise redundantly zero-extends the already-clean byte in r2. */
        asm("strh %0, [%1, #20]" : : "r"(timer), "r"(sprite));
        sprite->pose = 28;
        work3Pointer = &sprite->work3;
        *work3Pointer = zero;
        m4aSongNumStart(SE_ICICLE_FALL);
    }
}

void IcicleFall(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 yPosition asm("r2");

    sprite = &gCurrentSprite;
    yPosition = func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        sprite->status |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50 != 0) {
        sprite->yPosition = yPosition;
        sprite->pose = 23;
    } else {
        register u8 *indexPointer asm("ip");
        register u8 index asm("r2");
        register const s16 *velocities asm("r5");
        register const s16 *entry asm("r0");
        register u16 velocityRaw asm("r3");
        register s32 velocity asm("r1");
        register u32 tempR6 asm("r6");

        /* agbcc otherwise forms this address with mov r6, r4; add #42. */
        asm("mov %0, #42\n\tadd %0, %0, %1" : "=r"(tempR6) : "r"(sprite));
        indexPointer = (u8 *)tempR6;
        index = *(u8 *)tempR6;
        velocities = sUnk_8352ADC;
        entry = (const s16 *)((index << 1) + (u32)velocities);
        velocityRaw = *(const u16 *)entry;
        tempR6 = 0;
        /* agbcc otherwise reuses the unsigned load instead of emitting the target ldrsh. */
        asm("ldrsh %0, [%1, %2]" : "=r"(velocity) : "r"(entry), "r"(tempR6));
        if (velocity == 0x7FFF) {
            register u32 previousOffset asm("r1");
            register u16 currentY asm("r0");
            register u16 previousVelocity asm("r1");

            previousOffset = index - 1;
            asm("" : "+r"(previousOffset));
            previousOffset <<= 1;
            asm("" : "+r"(previousOffset));
            previousOffset += (u32)velocities;
            currentY = sprite->yPosition;
            previousVelocity = *(const u16 *)previousOffset;
            currentY += previousVelocity;
            sprite->yPosition = currentY;
        } else {
            register u8 nextIndex asm("r0");
            register u8 *pointer asm("r1");
            nextIndex = index + 1;
            pointer = indexPointer;
            *pointer = nextIndex;
            sprite->yPosition += velocityRaw;
        }
    }
}

void IcicleLandInit(void)
{
    gCurrentSprite.pOamData = sIcicleLandingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 10;
    gCurrentSprite.pose = 24;
}

void IcicleLandWait(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 110;
    }
}

void IcicleResetAboveRoom(void)
{
    register u8 (*roomData)[3] asm("r3");
    register struct PrimarySpriteData *sprite asm("r2");

    roomData = gUnk_3000964;
    sprite = &gCurrentSprite;
    sprite->yPosition = roomData[sprite->roomSlot][0] * 64 + 64;
    sprite->pose = 111;
    sprite->pOamData = sIcicleIdleOam;
    sprite->work0 = 100;
    sprite->status |= SPRITE_STATUS_HIDDEN;
}

void IcicleWaitHidden(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    if (gCurrentSprite.work0 != 0) {
        gCurrentSprite.work0--;
    } else if (gWarioData.reaction == 0) {
        gCurrentSprite.work0 = 62;
        gCurrentSprite.pose = 16;
        gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
        m4aSongNumStart(SE_ICICLE_WARNING);
    }
}

void InitIcicleWarning(void)
{
    register struct PrimarySpriteData *current asm("ip");
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *bounds asm("r1");
    register u8 *hitbox asm("r0");
    register int one asm("r1");

    current = &gCurrentSprite;
    oldStatus = current->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    sprite = current;
    sprite->status = status;
    bounds = (u8 *)current + 32;
    *bounds = 24;
    bounds++;
    *bounds = 24;
    bounds++;
    asm("" : "+r"(bounds));
    *bounds = 24;
    hitbox = (u8 *)current + 35;
    one = 1;
    *hitbox = one;
    hitbox++;
    *hitbox = one;
    hitbox++;
    *hitbox = one;
    hitbox++;
    asm("" : "+r"(hitbox));
    *hitbox = one;
    sprite->pOamData = sIcicleWarningOam;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    current->work0 = 32;
    sprite->pose = 16;
    sprite->warioCollision = zeroByte;
    sprite->drawPriority = one;
}

void IcicleWarningDisappear(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.status = 0;
    }
}

void SpriteIcicle(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = 107;
    }
    switch (gCurrentSprite.pose) {
        case 0:
            InitIcicle();
            break;
        case 16:
            IcicleWaitToFall();
            break;
        case 28:
            IcicleFall();
            break;
        case 23:
            IcicleLandInit();
        case 24:
            IcicleLandWait();
            break;
        case 110:
            IcicleResetAboveRoom();
        case 111:
            IcicleWaitHidden();
            break;
        default:
            gCurrentSprite.disableWarioCollisionTimer = 1;
            IcicleLandInit();
            break;
    }
}

void SpriteIcicleWarning(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitIcicleWarning();
            break;
        case 16:
            IcicleWarningDisappear();
            break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}
