#include "sprite_ai/butatabi.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"

void SetButatabiHitbox(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* extent asm("r1");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        extent = &sprite->hitboxExtentLeft;
        *extent = 40;
        extent++;
        asm("" : "+r"(extent));
        *extent = 80;
    } else {
        extent = &sprite->hitboxExtentLeft;
        *extent = 84;
        extent++;
        asm("" : "+r"(extent));
        *extent = 36;
    }
}

void InitButatabi(void)
{
    struct PrimarySpriteData* sprite;
    register u8 zero asm("r6");
    register u8 sixteen asm("r4");
    register u8 thirtyTwo asm("r5");
    register u16 zero16 asm("r8");
    register u16 status asm("r1");
    register u16 maskedStatus asm("r0");
    register u8* distance asm("r0");

    sprite = &gCurrentSprite;
    status = sprite->status;
    maskedStatus = status & ~SPRITE_STATUS_HIDDEN;
    zero = 0;
    status = 0;
    /* Preserve the long-lived zero in r8 across the hitbox helper call. */
    asm("mov %0, %1" : "=r"(zero16) : "r"(status));
    sprite->status = maskedStatus;
    sprite->warioCollision = 3;
    sprite->drawDistanceDown = 24;
    distance = &sprite->drawDistanceUp;
    sixteen = 16;
    *distance = sixteen;
    distance++;
    asm("" : "+r"(distance));
    thirtyTwo = 32;
    *distance = thirtyTwo;
    SetButatabiHitbox();
    sprite->hitboxExtentUp = sixteen;
    sprite->hitboxExtentDown = thirtyTwo;
    sprite->pOamData = sButatabiIdleOam;
    asm("" : "+r"(zero));
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    asm("" : "+r"(sixteen));
    sprite->pose = sixteen;
    asm("" : "+r"(zero));
    sprite->work2 = zero;
    sprite->work3 = zero;
    sprite->drawPriority = zero;
}

void StartButatabiTackled(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    u16 frameZero;
    u8 zero;
    register u8* work3Pointer asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sButatabiTackledOam;
    frameZero = 0;
    sprite->currentAnimationFrame = frameZero;
    zero = 0;
    sprite->animationTimer = frameZero;
    sprite->health = zero;
    work3Pointer = &sprite->work3;
    *work3Pointer = zero;
    sprite->drawPriority = zero;
    work3Pointer--;
    asm("" : "+r"(work3Pointer));
    *work3Pointer = 8;
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, SSPRITE_06);
}

void InitButatabiTackledRight(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    StartButatabiTackled();
}

void InitButatabiTackledLeft(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    StartButatabiTackled();
}

void StartButatabiBumped(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    u16 frameZero;
    u8 zero;
    register u8* work3Pointer asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sButatabiTackledOam;
    frameZero = 0;
    sprite->currentAnimationFrame = frameZero;
    zero = 0;
    sprite->animationTimer = frameZero;
    sprite->health = zero;
    work3Pointer = &sprite->work3;
    *work3Pointer = zero;
    sprite->drawPriority = zero;
    work3Pointer--;
    asm("" : "+r"(work3Pointer));
    *work3Pointer = 7;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, SSPRITE_06);
}

void InitButatabiBumpedRight(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    StartButatabiBumped();
}

void InitButatabiBumpedLeft(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    StartButatabiBumped();
}

void ButatabiHop(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* gravityIndex asm("r6");
    register u32 gravityTimer asm("r4");
    register const s16* gravityTable asm("r2");
    register u32 gravityAddress asm("r0");
    register const s16* gravityEntry asm("r0");
    register u32 rawVelocity asm("r3");
    u32 zero;
    register s32 velocity asm("r1");
    register u32 position asm("r0");

    sprite = &gCurrentSprite;
    gravityIndex = &sprite->work3;
    gravityTimer = *gravityIndex;
    if (gravityTimer == 1) {
        m4aSongNumStart(SE_BUTATABI_HOP);
    }

    gravityTable = sButatabiYVelocity;
    gravityAddress = gravityTimer << 1;
    gravityAddress += (u32)gravityTable;
    gravityEntry = (const s16*)gravityAddress;
    rawVelocity = *(const u16*)gravityEntry;
    zero = 0;
    /* agbcc otherwise reindexes the table and changes the signed-load registers. */
    asm("ldrsh %0, [%1, %2]" : "=r"(velocity) : "r"(gravityEntry), "r"(zero));
    if (velocity == S16_MAX) {
        register u32 previousAddress asm("r1");
        register const s16* previousEntry asm("r1");

        previousAddress = gravityTimer - 1;
        asm("" : "+r"(previousAddress));
        previousAddress <<= 1;
        previousAddress += (u32)gravityTable;
        previousEntry = (const s16*)previousAddress;
        position = sprite->yPosition;
        position += *(const u16*)previousEntry;
        asm("" : "+r"(position));
    } else {
        register u32 nextTimer asm("r0");

        nextTimer = gravityTimer + 1;
        *gravityIndex = nextTimer;
        position = sprite->yPosition;
        position += rawVelocity;
        asm("" : "+r"(position));
    }
    sprite->yPosition = position;

    {
        register struct PrimarySpriteData* current asm("r2");
        register u8* timerPointer asm("r0");

        current = &gCurrentSprite;
        timerPointer = &current->work2;
        gravityTimer = *timerPointer;
        if (gravityTimer == 80) {
            register u32 animationZero asm("r0");

            current->pOamData = sButatabiTurnStartOam;
            animationZero = 0;
            /* Avoid agbcc copying the zero through r1 before this byte store. */
            asm("strb %0, [%1, #22]" : : "r"(animationZero), "r"(current));
            current->animationTimer = animationZero;
        } else if (gravityTimer == 88) {
            register u32 animationZero asm("r0");

            current->pOamData = sButatabiTurnEndOam;
            animationZero = 0;
            /* Avoid agbcc copying the zero through r1 before this byte store. */
            asm("strb %0, [%1, #22]" : : "r"(animationZero), "r"(current));
            current->animationTimer = animationZero;
            current->status ^= SPRITE_STATUS_FACING_RIGHT;
            SetButatabiHitbox();
        }
    }

    {
        register const u8* xTable asm("r5");
        register u32 xAddress asm("r0");
        register const u8* xEntry asm("r0");
        register u32 zeroOffset asm("r2");
        register struct PrimarySpriteData* current asm("r0");
        register u8* timerPointer asm("r2");
        register u32 oneOrNext asm("r1");

        xTable = (const u8*)sButatabiXVelocity;
        xAddress = (gravityTimer >> 1) << 1;
        xAddress += (u32)xTable;
        xEntry = (const u8*)xAddress;
        rawVelocity = *(const u16*)xEntry;
        zeroOffset = 0;
        /* Keep the signed halfword load on the same byte-addressed table entry. */
        asm("ldrsh %0, [%1, %2]" : "=r"(velocity) : "r"(xEntry), "r"(zeroOffset));
        if (velocity == S16_MAX) {
            current = &gCurrentSprite;
            timerPointer = &current->work2;
            oneOrNext = 1;
            *timerPointer = oneOrNext;
            timerPointer++;
            asm("" : "+r"(timerPointer));
            *timerPointer = oneOrNext;
            gravityTimer = 0;
            rawVelocity = *(const u16*)xTable;
            current->pOamData = sButatabiIdleOam;
            asm("" : "+r"(gravityTimer));
            current->currentAnimationFrame = gravityTimer;
            current->animationTimer = gravityTimer;
        } else {
            oneOrNext = gravityTimer + 1;
            current = &gCurrentSprite;
            timerPointer = &current->work2;
            *timerPointer = oneOrNext;
        }

        {
            register struct PrimarySpriteData* positionSprite asm("r2");
            register u16 status asm("r1");
            register u16 facing asm("r0");
            register u32 xPosition asm("r0");

            positionSprite = current;
            status = positionSprite->status;
            facing = status & SPRITE_STATUS_FACING_RIGHT;
            if (facing) {
                xPosition = positionSprite->xPosition;
                xPosition += rawVelocity;
            } else {
                xPosition = positionSprite->xPosition;
                xPosition -= rawVelocity;
            }
            positionSprite->xPosition = xPosition;
        }
    }
}

void SpriteButatabi(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitButatabi();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            SpriteUtilDie();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_33:
        case SPOSE_4F:
            InitButatabiTackledRight();
            break;
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_35:
        case SPOSE_50:
            InitButatabiTackledLeft();
            break;
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_69:
            InitButatabiBumpedLeft();
            break;
        case SPOSE_6A:
            InitButatabiBumpedRight();
            break;
        default:
            gCurrentSprite.pose = SPOSE_IDLE;
            ButatabiHop();
            break;
    }
}
