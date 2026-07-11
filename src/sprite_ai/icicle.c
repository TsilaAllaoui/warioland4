#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/icicle.h"
#include "sprite_util.h"
#include "wario.h"
#include "gba/m4a.h"


void InitIcicle(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register struct PrimarySpriteData* storedSprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* ptr asm("r1");
    register u8* temp asm("r0");
    register u8 sixteen asm("r1");
    register u8* workPtr asm("r2");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    asm("mov %0, #0" : "=r"(zero));
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    storedSprite = sprite;
    storedSprite->status = status;
    ptr = (u8*)sprite + 32;
    *ptr = 24;
    ptr++;
    *ptr = 24;
    ptr++;
    *ptr = 24;
    ptr++;
    *ptr = 48;
    ptr++;
    *ptr = 140;
    /* agbcc otherwise folds this required pointer increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = 20;
    temp = (u8*)sprite + 38;
    sixteen = 16;
    *temp = sixteen;
    storedSprite->pOamData = sIcicleIdleOam;
    storedSprite->currentAnimationFrame = zero;
    storedSprite->animationTimer = zero16;
    workPtr = (u8*)sprite + 39;
    *workPtr = 62;
    storedSprite->pose = sixteen;
    storedSprite->warioCollision = 8;
    storedSprite->drawPriority = 1;
    m4aSongNumStart(SE_ICICLE_WARNING);
}

void IcicleWaitToFall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* timerPtr asm("r2");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r1");
    register u32 shiftedTimer asm("r0");
    register u8 checkedTimer asm("r2");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    *timerPtr = timer;
    shiftedTimer = timer << 24;
    checkedTimer = shiftedTimer >> 24;
    if (checkedTimer != 0) {
        register u32 value asm("r1");

        value = checkedTimer;
        if (value > 32) {
            sprite->disableWarioCollisionTimer = 1;
            if (value == 52) {
                SpriteSpawnAsChild(PSPRITE_ICICLE_WARNING, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition);
            }
        }
    } else {
        register u8 zero asm("r1");
        register u8* workPtr asm("r0");

        sprite->pOamData = sIcicleFallingOam;
        sprite->currentAnimationFrame = checkedTimer;
        zero = 0;
        /* agbcc otherwise normalizes the already-zero byte before the halfword store. */
        asm("strh %1, [%0, #20]" : : "r"(sprite), "r"(checkedTimer));
        sprite->pose = 28;
        workPtr = (u8*)sprite + 42;
        *workPtr = zero;
        m4aSongNumStart(SE_ICICLE_FALL);
    }
}

void IcicleFall(void)
{
    register int previousIndex asm("r1");
    struct PrimarySpriteData* sprite;
    u32 newY;
    u8 index;
    u16 previousMovement;
    s16 movement;

    sprite = &gCurrentSprite;
    newY = func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        sprite->status |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50 != 0) {
        sprite->yPosition = newY;
        sprite->pose = 23;
    } else {
        index = sprite->work3;
        movement = sUnk_8352ADC[index];
        if (movement == 0x7FFF) {
            previousIndex = index - 1;
            previousMovement = ((const u16*)sUnk_8352ADC)[previousIndex];
            sprite->yPosition += previousMovement;
        } else {
            sprite->work3 = index + 1;
            sprite->yPosition += movement;
        }
    }
}

void StartIcicleImpact(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->pOamData = sIcicleImpactOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work0 = 10;
    sprite->pose = 24;
}

void IcicleImpact(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    if (--sprite->work0 == 0) {
        sprite->pose = 110;
    }
}

void ResetIcicle(void)
{
    register u8* positions asm("r3");
    register struct PrimarySpriteData* sprite asm("r2");
    register u8 roomSlot asm("r1");
    register u32 offset asm("r0");
    register u16 status asm("r1");
    register u16 hidden asm("r0");

    positions = gUnk_3000964;
    sprite = &gCurrentSprite;
    roomSlot = sprite->roomSlot;
    offset = roomSlot << 1;
    offset += roomSlot;
    offset += (u32)positions;
    offset = *(u8*)offset;
    offset <<= 6;
    offset += 64;
    sprite->yPosition = offset;
    sprite->pose = 111;
    sprite->pOamData = sIcicleIdleOam;
    sprite->work0 = 100;
    status = sprite->status;
    hidden = SPRITE_STATUS_HIDDEN;
    hidden |= status;
    sprite->status = hidden;
}

void IcicleWaitToRespawn(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    if (sprite->work0 != 0) {
        sprite->work0--;
    } else if (*(u8*)&gWarioData == 0) {
        sprite->work0 = 62;
        sprite->pose = 16;
        sprite->status &= ~SPRITE_STATUS_HIDDEN;
        m4aSongNumStart(SE_ICICLE_WARNING);
    }
}

void InitIcicleWarning(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register struct PrimarySpriteData* storedSprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* ptr asm("r1");
    register u8* temp asm("r0");
    register u8 one asm("r1");
    register u8* workPtr asm("r3");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    asm("mov %0, #0" : "=r"(zero));
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    storedSprite = sprite;
    storedSprite->status = status;
    ptr = (u8*)sprite + 32;
    *ptr = 24;
    ptr++;
    *ptr = 24;
    /* agbcc otherwise folds this required pointer increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = 24;
    temp = (u8*)sprite + 35;
    one = 1;
    *temp = one;
    temp++;
    *temp = one;
    temp++;
    *temp = one;
    /* agbcc otherwise folds this required pointer increment into indexed addressing. */
    asm("add %0, #1" : "+r"(temp));
    *temp = one;
    storedSprite->pOamData = sIcicleWarningOam;
    storedSprite->currentAnimationFrame = zero;
    storedSprite->animationTimer = zero16;
    workPtr = (u8*)sprite + 39;
    *workPtr = 32;
    storedSprite->pose = 16;
    storedSprite->warioCollision = zero;
    storedSprite->drawPriority = one;
}

void IcicleWarning(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->status = timer;
    }
}

void SpriteIcicle(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_UNDERWATER) {
        sprite->pose = 107;
    }

    switch (sprite->pose) {
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
            StartIcicleImpact();
            /* fallthrough */
        case 24:
            IcicleImpact();
            break;
        case 110:
            ResetIcicle();
            /* fallthrough */
        case 111:
            IcicleWaitToRespawn();
            break;
        default:
            sprite->disableWarioCollisionTimer = 1;
            StartIcicleImpact();
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
            IcicleWarning();
            break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}
