#include "sprite_ai/bubble.h"

#include "global_data.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"


/* Untyped alias prevents agbcc from re-normalizing an already-clean r5 argument. */
void BubbleCollisionCheck() asm("func_8023BFC");


void InitBubbleSpawner(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *bounds asm("r0");
    register int one asm("r1");
    register const struct AnimationFrame *oam asm("r0");
    register struct PrimarySpriteData *postSprite asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = SPRITE_STATUS_IGNORE_SPRITE_COLLISION | SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_HIDDEN;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    sprite->status = status;
    bounds = (u8 *)sprite + 32;
    one = 1;
    *bounds = one;
    bounds++;
    *bounds = one;
    bounds++;
    *bounds = one;
    bounds++;
    *bounds = one;
    bounds++;
    *bounds = one;
    bounds++;
    *bounds = one;
    bounds++;
    asm("" : "+r"(bounds));
    *bounds = one;
    oam = sBubbleSpawnerOam;
    postSprite = sprite;
    postSprite->pOamData = oam;
    postSprite->currentAnimationFrame = zeroByte;
    postSprite->animationTimer = zeroHalf;
    postSprite->pose = 16;
    postSprite->warioCollision = 6;
    postSprite->work0 = 60;
}

void BubbleSpawnerIdle(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timerPointer asm("r6");
    register int timerValue asm("r0");
    register u8 timer asm("r5");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    timerValue = *timerPointer;
    timerValue--;
    *timerPointer = timerValue;
    timerValue <<= 24;
    timer = (u32)timerValue >> 24;
    if (timer == 0) {
        func_801E3A8(PSPRITE_9B, sprite->roomSlot, sprite->gfxSlot,
                     sprite->yPosition, sprite->xPosition, timer);
        *timerPointer = 250;
    }
}

void StartBubblePop(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register int temp asm("r2");

    sprite = &gCurrentSprite;
    temp = 0;
    sprite->pose = 50;
    sprite->pOamData = sBubblePopOam;
    /* agbcc otherwise inserts a move before this byte store. */
    asm("strb %0, [%1, #22]" : : "r"(temp), "r"(sprite));
    sprite->animationTimer = temp;
    temp = (int)sprite;
    temp += 39;
    *(u8 *)temp = 12;
    sprite->disableWarioCollisionTimer = 1;
}

void MoveBubble(void)
{
    register const u16 *velocityTable asm("r2");
    register struct PrimarySpriteData *current asm("r1");
    register struct PrimarySpriteData *sprite asm("r5");
    register struct PrimarySpriteData *movementSprite asm("r4");
    register u8 *phasePointer asm("r4");
    register u8 *directionPointer asm("r3");
    register int direction asm("r0");
    register u16 velocity asm("r2");
    register u8 *phaseIncrementPointer asm("r8");
    register int phaseValue asm("r0");
    register int zero asm("sl");
    register struct PrimarySpriteData *wallHitSprite asm("r0");

    velocityTable = sHorizontalOscillationVelocity;
    current = &gCurrentSprite;
    phasePointer = &current->work3;
    velocity = velocityTable[*phasePointer >> 3];
    directionPointer = &current->work1;
    direction = *directionPointer;
    sprite = current;
    if (direction != 0) {
        sprite->xPosition += velocity;
    } else {
        sprite->xPosition -= velocity;
    }

    if (*phasePointer > 94) {
        *phasePointer = 0;
        *directionPointer ^= 1;
    }

    movementSprite = sprite;
    phaseIncrementPointer = &movementSprite->work3;
    phaseValue = *phaseIncrementPointer;
    phaseValue++;
    {
        register u8 *phaseStorePointer asm("r1");
        phaseStorePointer = phaseIncrementPointer;
        *phaseStorePointer = phaseValue;
    }

    {
        register u16 oldY asm("r1");
        register int yValue asm("r0");
        register int zeroSource asm("r2");
        register u8 *wallCooldownPointer;
        register u8 *wallCollisionResult asm("r9");
        register int wallCollisionValue asm("r1");
        register int wallCollisionMask asm("r6");
        register int maskedCollision asm("r0");

        oldY = movementSprite->yPosition;
        yValue = oldY - 2;
        zeroSource = 0;
        zero = zeroSource;
        movementSprite->yPosition = yValue;
        wallCooldownPointer = &movementSprite->work2;
        maskedCollision = *wallCooldownPointer;
        if (maskedCollision == 0) {
            func_8023BFC(oldY - 66,
                         movementSprite->xPosition - movementSprite->hitboxExtentLeft);
            wallCollisionResult = &gUnk_3000A51;
            wallCollisionValue = *wallCollisionResult;
            wallCollisionMask = 15;
            maskedCollision = wallCollisionMask;
            maskedCollision &= wallCollisionValue;
            if (maskedCollision != 0) {
                wallHitSprite = movementSprite;
                goto wallCollision;
            }

            func_8023BFC(sprite->yPosition - 64,
                         sprite->xPosition + sprite->hitboxExtentRight);
            wallCollisionValue = *wallCollisionResult;
            maskedCollision = wallCollisionMask;
            maskedCollision &= wallCollisionValue;
            if (maskedCollision != 0) {
                wallHitSprite = sprite;
wallCollision:
                {
                    register u8 *hitDirectionPointer asm("r0");
                    register int hitDirection asm("r1");
                    register int one asm("r2");
                    hitDirectionPointer = &wallHitSprite->work1;
                    hitDirection = *hitDirectionPointer;
                    one = 1;
                    hitDirection ^= one;
                    *hitDirectionPointer = hitDirection;
                }
                *wallCooldownPointer = wallCollisionMask;
                zeroSource = zero;
                {
                    register u8 *phaseStorePointer asm("r1");
                    phaseStorePointer = phaseIncrementPointer;
                    *phaseStorePointer = zeroSource;
                }
                goto end;
            }
        } else {
            maskedCollision--;
            *wallCooldownPointer = maskedCollision;
        }
    }

    {
        register struct PrimarySpriteData *groundSprite asm("r4");
        register u8 *extentPointer asm("r0");
        register int extent asm("r1");
        register int yValue asm("r0");
        register int topY asm("r5");
        register int xValue asm("r1");
        register u8 *groundCollisionResult asm("r6");
        register int groundCollisionValue asm("r1");
        register int groundCollisionMask;
        register int maskedCollision asm("r0");

        groundSprite = &gCurrentSprite;
        extentPointer = &groundSprite->hitboxExtentUp;
        extent = *extentPointer;
        yValue = groundSprite->yPosition;
        yValue -= extent;
        yValue <<= 16;
        topY = (u32)yValue >> 16;
        xValue = groundSprite->xPosition;
        xValue -= 28;
        xValue <<= 16;
        xValue = (u32)xValue >> 16;
        BubbleCollisionCheck(topY, xValue);
        groundCollisionResult = &gUnk_3000A51;
        groundCollisionValue = *groundCollisionResult;
        groundCollisionMask = 15;
        asm("" : "+r"(groundCollisionMask));
        maskedCollision = groundCollisionMask;
        maskedCollision &= groundCollisionValue;
        if (maskedCollision != 0) {
            StartBubblePop();
            goto end;
        }

        xValue = groundSprite->xPosition;
        xValue += 28;
        xValue <<= 16;
        xValue = (u32)xValue >> 16;
        BubbleCollisionCheck(topY, xValue);
        groundCollisionValue = *groundCollisionResult;
        asm("" : "+r"(groundCollisionMask));
        maskedCollision = groundCollisionMask;
        maskedCollision &= groundCollisionValue;
        if (maskedCollision != 0) {
            StartBubblePop();
            goto end;
        }

        func_8023BFC(groundSprite->yPosition - 40, groundSprite->xPosition);
        if (gUnk_30000A0.unk_02 != 1) {
            StartBubblePop();
        }
    }

end:
    return;
}

void UpdateBubblePop(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timerPointer asm("r1");
    register int timer asm("r0");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    timer = *timerPointer;
    timer--;
    *timerPointer = timer;
    timer <<= 24;
    timer = (u32)timer >> 24;
    if (timer != 0) {
        sprite->disableWarioCollisionTimer = 1;
    } else {
        sprite->status = timer;
    }
}

void InitBubble(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register int zero asm("r4");
    register u16 oldStatus asm("r0");
    register u16 status asm("r1");
    register int one asm("r2");
    register u8 *bounds asm("r2");
    register u8 *bytePointer asm("r0");
    register int condition asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = oldStatus & ~SPRITE_STATUS_HIDDEN;
    zero = 0;
    status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    /* agbcc otherwise removes the required zero OR used by the original register flow. */
    asm("orr %0, %1" : "+r"(status) : "r"(zero));
    sprite->status = status;
    bounds = (u8 *)sprite + 32;
    *bounds = 32;
    bytePointer = (u8 *)sprite + 33;
    /* Preserve the original byte store directly from the long-lived zero register. */
    asm("strb r4, [%0]" : : "r"(bytePointer));
    bounds += 2;
    *bounds = 16;
    bounds++;
    *bounds = 112;
    bounds++;
    *bounds = 144;
    bounds++;
    *bounds = 48;
    bounds++;
    asm("" : "+r"(bounds));
    *bounds = 44;
    sprite->warioCollision = 74;
    one = 1;
    sprite->drawPriority = one;

    status &= SPRITE_STATUS_FACING_RIGHT;
    condition = status;
    if (condition != 0) {
        if (gUnk_3000027 == 33) {
            sprite->gfxSlot = 5;
        }
        sprite->status &= ~SPRITE_STATUS_FACING_RIGHT;
        StartBubblePop();
    } else {
        sprite->pOamData = sBubbleIdleOam;
        /* Preserve the original byte store directly from r4. */
        asm("strb r4, [r3, #22]" : : "r"(sprite), "r"(zero));
        sprite->animationTimer = status;
        sprite->pose = 111;
        sprite->work0 = 26;
        bytePointer = (u8 *)sprite + 41;
        /* agbcc otherwise copies zero before these adjacent byte stores. */
        asm("strb r4, [%0]" : : "r"(bytePointer));
        bytePointer++;
        asm("strb r4, [%0]" : : "r"(bytePointer));
        if (sprite->xPosition > gWarioData.xPosition) {
            bytePointer = (u8 *)sprite + 40;
            *bytePointer = zero;
        } else {
            bytePointer = (u8 *)sprite + 40;
            *bytePointer = one;
        }
    }
}

void BubbleWaitBeforeMoving(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register int timerValue asm("r0");
    register int timer asm("r1");
    u8 *timerPointer;

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    timerValue = *timerPointer;
    timerValue--;
    *timerPointer = timerValue;
    timerValue <<= 24;
    timer = (u32)timerValue >> 24;
    if (timer != 0) {
        sprite->disableWarioCollisionTimer = 1;
    } else {
        sprite->pOamData = sBubbleMovingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
    }
}

void SpriteBubble(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitBubbleSpawner();
            break;
        case 16:
            BubbleSpawnerIdle();
            break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteBubbleInstance(void)
{
    register struct PrimarySpriteData *current asm("r0");
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 pose asm("r1");

    current = &gCurrentSprite;
    pose = current->pose;
    sprite = current;
    switch (pose) {
        case 0:
            InitBubble();
            break;
        case 111:
            BubbleWaitBeforeMoving();
            /* fallthrough */
        case 16:
            MoveBubble();
            break;
        case 50:
            UpdateBubblePop();
            break;
        default:
            sprite->status = 0;
            break;
    }
}
