#include "sprite_ai/cractus.h"

#include "fixed_point.h"
#include "global_data.h"
#include "input.h"
#include "main.h"
#include "score.h"
#include "voice_set.h"
#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

extern u8 gUnk_3000A5C;
extern u8 gUnk_30000F4;
extern u8 gUnk_3000A62;
extern u8 gUnk_3000A5D;
extern u8 gUnk_3000A5E;
extern u8 gUnk_3000A5F;
extern u8 gUnk_3000A60;
extern u8 gUnk_3000A59U asm("gUnk_3000A59");
extern u8 gUnk_3000A58U asm("gUnk_3000A58");

extern const void *const sUnk_878F170[];

void func_801E3A8(u8 id, u8 roomSlot, u8 gfxSlot, u32 yPosition, u32 xPosition, u32 arg5);
void func_8070964(u32 arg0, u32 arg1, u32 arg2);
void func_80747D8(void);
void SpriteUtilFindOwnSlotU32(u32 roomSlot) asm("SpriteUtilFindOwnSlot");

#define CR_SPRITE(slot) (&gSpriteData[(u8)(slot)])

u32 UpdateCractusGraphicsAnimation(const u8 *animation)
{
    register const u8 *data asm("r2");
    register u32 finished asm("r6");
    register struct PrimarySpriteData *sprite asm("r1");
    register u8 *delay asm("r5");
    register u8 *frameIndex asm("r4");
    register u32 value asm("r0");
    register u32 index asm("r1");
    register u32 frame asm("r3");
    register volatile u32 *dma asm("r1");
    register const void *source asm("r2");
    register const void *const *sourceTable asm("r2");
    register u32 control asm("r3");

    data = animation;
    if (gUnk_3000A59U != 0)
        data = sCractusBossDefaultGraphicsAnimation;

    finished = 0;
    sprite = &gCurrentSprite;
    delay = &sprite->work1;
    value = *delay;
    if (value != 0) {
        value--;
        *delay = value;
        return 0;
    }

    frameIndex = &sprite->work0;
    value = *frameIndex;
    index = value + 1;
    *frameIndex = index;
    value <<= 24;
    index = value >> 24;
    value = index << 2;
    /* agbcc otherwise reverses the Thumb ADD operands for this table address. */
    asm("add %0, %0, %1" : "+r"(value) : "r"(data));
    frame = *(const u8 *)value;
    if (frame == 0xFF) {
        index = 0;
        value = 1;
        *frameIndex = value;
        frame = data[0];
        finished = 1;
    }

    value = index << 2;
    /* agbcc otherwise reverses the Thumb ADD operands for this table address. */
    asm("add %0, %0, %1" : "+r"(value) : "r"(data));
    value = *((const u8 *)value + 1);
    *delay = value;
    dma = (volatile u32 *)0x40000D4;
    sourceTable = sUnk_878F170;
    value = frame << 2;
    value += (u32)sourceTable;
    source = *(const void *const *)value;
    dma[0] = (u32)source;
    dma[1] = 0x6014000;
    control = 0x80000070;
    dma[2] = control;
    value = dma[2];
    source = (const u8 *)source + 0xE0;
    dma[0] = (u32)source;
    dma[1] = 0x6014400;
    dma[2] = control;
    value = dma[2];
    return finished;
}

void UpdateCractusSegmentHorizontalFollow(void)
{
    register u32 threshold asm("r6");
    u32 shift;
    register struct PrimarySpriteData *sprite asm("r3");
    register struct PrimarySpriteData *sprites asm("r4");
    register u32 current asm("r5");
    register u32 target asm("r1");
    register u32 value asm("r0");
    register u32 speed asm("r2");
    register u32 coordinate asm("r2");
    register u32 index asm("r2");

    if (gUnk_3000A58U == 0) {
        threshold = 4;
        shift = 1;
    } else {
        threshold = 8;
        shift = 2;
    }

    sprite = &gCurrentSprite;
    value = 128;
    value <<= 2;
    asm("" : "+r"(value));
    target = value;
    coordinate = sprite->xPosition;
    value = target + coordinate;
    value <<= 16;
    current = value >> 16;
    sprites = gSpriteData;
    index = sprite->work3;
    value = sizeof(struct PrimarySpriteData);
    value *= index;
    value += (u32)sprites;
    value = ((struct PrimarySpriteData *)value)->xPosition;
    target += value;
    target <<= 16;
    target >>= 16;

    value = current - target;
    if ((s32)value > 4) {
        value = target + 4;
        value <<= 16;
        target = value >> 16;
        if (current > target)
            value = current - target;
        else
            value = target - current;
        value <<= 16;
        value >>= 16;
        if ((s32)value <= (s32)threshold) {
            speed = 0;
        } else {
            value -= threshold;
            value = (s32)value >> shift;
            value <<= 16;
            speed = value >> 16;
        }
        if (current > target) {
            value = sprite->xPosition;
            value -= speed;
            sprite->xPosition = value;
        } else if (current < target) {
            value = sprite->xPosition;
            /* Keep the original r0 = r2 + r0 Thumb ADD operand order. */
            asm("add %0, %1, %0" : "+r"(value) : "r"(speed));
            sprite->xPosition = value;
        }
    } else {
        value = target - current;
        if ((s32)value <= 4)
            return;
        value = target - 4;
        value <<= 16;
        target = value >> 16;
        if (current > target)
            value = current - target;
        else
            value = target - current;
        value <<= 16;
        value >>= 16;
        if ((s32)value <= (s32)threshold) {
            speed = 0;
        } else {
            value -= threshold;
            value = (s32)value >> shift;
            value <<= 16;
            speed = value >> 16;
        }
        if (current < target) {
            value = sprite->xPosition;
            /* Keep the original r0 = r2 + r0 Thumb ADD operand order. */
            asm("add %0, %1, %0" : "+r"(value) : "r"(speed));
            sprite->xPosition = value;
        } else if (current > target) {
            value = sprite->xPosition;
            value -= speed;
            sprite->xPosition = value;
        }
    }
}

void UpdateCractusSegmentVerticalFollow(void)
{
    register u32 shift asm("r6");
    register struct PrimarySpriteData *sprite asm("r5");
    register struct PrimarySpriteData *initial asm("r0");
    register u32 roomSlot asm("r1");
    register struct PrimarySpriteData *sprites asm("r3");
    register u32 current asm("r4");
    register u32 target asm("r1");
    register u32 value asm("r0");
    register u32 speed asm("r2");
    register u32 index asm("r2");

    value = gUnk_3000A58U;
    shift = 1;
    if (value != 0) {
        shift = 2;
        if (value == 2)
            shift = 3;
    }

    initial = &gCurrentSprite;
    roomSlot = initial->roomSlot;
    speed = 48;
    sprite = initial;
    if (roomSlot == 0)
        speed = 64;
    value = sprite->yPosition;
    value -= speed;
    speed = 128;
    speed <<= 2;
    asm("" : "+r"(speed));
    target = speed;
    value += target;
    value <<= 16;
    current = value >> 16;
    sprites = gSpriteData;
    index = sprite->work3;
    value = sizeof(struct PrimarySpriteData);
    value *= index;
    value += (u32)sprites;
    value = ((struct PrimarySpriteData *)value)->yPosition;
    target += value;
    target <<= 16;
    target >>= 16;

    if (current > target)
        value = current - target;
    else
        value = target - current;
    value <<= 16;
    value >>= 16;
    if (value <= 1) {
        speed = 0;
    } else {
        value -= 2;
        value = (s32)value >> shift;
        value <<= 16;
        speed = value >> 16;
        if (speed == 0)
            speed = 1;
    }
    asm("" : : : "memory");
    if (current > target) {
        value = sprite->yPosition;
        value -= speed;
        sprite->yPosition = value;
    } else if (current < target) {
        value = sprite->yPosition;
        /* Keep the original r0 = r2 + r0 Thumb ADD operand order. */
        asm("add %0, %1, %0" : "+r"(value) : "r"(speed));
        sprite->yPosition = value;
    }
}

void UpdateCractusSegmentVerticalSpacing(void)
{
    register u32 threshold asm("r6");
    u32 shift;
    register struct PrimarySpriteData *sprite asm("r3");
    register struct PrimarySpriteData *sprites asm("r4");
    register u32 current asm("r5");
    register u32 target asm("r1");
    register u32 value asm("r0");
    register u32 speed asm("r2");
    register u32 coordinate asm("r2");
    register u32 index asm("r2");

    if (gUnk_3000A58U == 0) {
        threshold = 4;
        shift = 1;
    } else {
        threshold = 8;
        shift = 2;
    }

    sprite = &gCurrentSprite;
    value = 128;
    value <<= 2;
    asm("" : "+r"(value));
    target = value;
    coordinate = sprite->yPosition;
    value = target + coordinate;
    value <<= 16;
    current = value >> 16;
    sprites = gSpriteData;
    index = sprite->work3;
    value = sizeof(struct PrimarySpriteData);
    value *= index;
    value += (u32)sprites;
    value = ((struct PrimarySpriteData *)value)->yPosition;
    target += value;
    target <<= 16;
    target >>= 16;

    value = current - target;
    if ((s32)value > 32) {
        value = target;
        value += 32;
        value <<= 16;
        target = value >> 16;
        if (current > target)
            value = current - target;
        else
            value = target - current;
        value <<= 16;
        value >>= 16;
        if ((s32)value <= (s32)threshold) {
            speed = 0;
        } else {
            value -= threshold;
            value = (s32)value >> shift;
            value <<= 16;
            speed = value >> 16;
        }
        if (current > target) {
            value = sprite->yPosition;
            value -= speed;
            sprite->yPosition = value;
        } else if (current < target) {
            value = sprite->yPosition;
            /* Keep the original r0 = r2 + r0 Thumb ADD operand order. */
            asm("add %0, %1, %0" : "+r"(value) : "r"(speed));
            sprite->yPosition = value;
        }
    } else {
        value = target - current;
        if ((s32)value <= 32)
            return;
        value = target;
        value -= 32;
        value <<= 16;
        target = value >> 16;
        if (current > target)
            value = current - target;
        else
            value = target - current;
        value <<= 16;
        value >>= 16;
        if ((s32)value <= (s32)threshold) {
            speed = 0;
        } else {
            value -= threshold;
            value = (s32)value >> shift;
            value <<= 16;
            speed = value >> 16;
        }
        if (current < target) {
            value = sprite->yPosition;
            /* Keep the original r0 = r2 + r0 Thumb ADD operand order. */
            asm("add %0, %1, %0" : "+r"(value) : "r"(speed));
            sprite->yPosition = value;
        } else if (current > target) {
            value = sprite->yPosition;
            value -= speed;
            sprite->yPosition = value;
        }
    }
}

void PositionCractusSegmentAtQuarter(void)
{
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 firstY asm("r4");
    register u32 firstX asm("r6");
    register u32 secondY asm("r2");
    register u32 secondX asm("r5");
    register u32 value asm("r0");
    register u32 size asm("r2");

    sprites = gSpriteData;
    sprite = &gCurrentSprite;
    value = sprite->work2;
    size = sizeof(struct PrimarySpriteData);
    value *= size;
    value += (u32)sprites;
    firstY = ((struct PrimarySpriteData *)value)->yPosition;
    firstX = ((struct PrimarySpriteData *)value)->xPosition;
    value = sprite->work3;
    value *= size;
    value += (u32)sprites;
    secondY = ((struct PrimarySpriteData *)value)->yPosition;
    secondX = ((struct PrimarySpriteData *)value)->xPosition;
    sprites = sprite;

    if (secondY > firstY) {
        value = (u16)(secondY - firstY) >> 2;
        value *= sprites->roomSlot;
        value = secondY - value;
    } else {
        value = (u16)(firstY - secondY) >> 2;
        value *= sprites->roomSlot;
        value = secondY + value;
    }
    sprites->yPosition = value;
    asm("" : : : "memory");

    if (secondX > firstX) {
        value = (u16)(secondX - firstX) >> 2;
        value *= sprites->roomSlot;
        value = secondX - value;
    } else {
        value = (u16)(firstX - secondX) >> 2;
        value *= sprites->roomSlot;
        value = secondX + value;
    }
    sprites->xPosition = value;
}

void PositionCractusSegmentAtOneEighth(void)
{
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 firstY asm("r4");
    register u32 firstX asm("r5");
    register u32 secondY asm("r2");
    register u32 secondX asm("r3");
    register u32 value asm("r0");
    register u32 size asm("r2");

    sprites = gSpriteData;
    sprite = &gCurrentSprite;
    value = sprite->work2;
    size = sizeof(struct PrimarySpriteData);
    value *= size;
    value += (u32)sprites;
    firstY = ((struct PrimarySpriteData *)value)->yPosition;
    firstX = ((struct PrimarySpriteData *)value)->xPosition;
    value = sprite->work3;
    value *= size;
    value += (u32)sprites;
    secondY = ((struct PrimarySpriteData *)value)->yPosition;
    secondX = ((struct PrimarySpriteData *)value)->xPosition;

    if (secondY > firstY)
        value = firstY + ((u16)(secondY - firstY) >> 3);
    else
        value = firstY - ((u16)(firstY - secondY) >> 3);
    sprite->yPosition = value;

    if (secondX > firstX)
        value = firstX + ((u16)(secondX - firstX) >> 3);
    else
        value = firstX - ((u16)(firstX - secondX) >> 3);
    sprite->xPosition = value;
}

void PositionCractusSegmentAtThreeEighths(void)
{
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *current asm("r6");
    register u32 firstY asm("r4");
    register u32 firstX asm("r5");
    register u32 secondY asm("r2");
    register u32 secondX asm("r3");
    register u32 value asm("r0");
    register u32 delta asm("r1");
    register u32 size asm("r2");

    sprites = gSpriteData;
    sprite = &gCurrentSprite;
    value = sprite->work2;
    size = sizeof(struct PrimarySpriteData);
    value *= size;
    value += (u32)sprites;
    firstY = ((struct PrimarySpriteData *)value)->yPosition;
    firstX = ((struct PrimarySpriteData *)value)->xPosition;
    value = sprite->work3;
    value *= size;
    value += (u32)sprites;
    secondY = ((struct PrimarySpriteData *)value)->yPosition;
    secondX = ((struct PrimarySpriteData *)value)->xPosition;
    current = sprite;

    if (secondY > firstY) {
        delta = (u16)(secondY - firstY) >> 3;
        value = (delta << 1) + delta;
        value = firstY + value;
    } else {
        delta = (u16)(firstY - secondY) >> 3;
        value = (delta << 1) + delta;
        value = firstY - value;
    }
    current->yPosition = value;

    if (secondX > firstX) {
        delta = (u16)(secondX - firstX) >> 3;
        value = (delta << 1) + delta;
        value = firstX + value;
    } else {
        delta = (u16)(firstX - secondX) >> 3;
        value = (delta << 1) + delta;
        value = firstX - value;
    }
    current->xPosition = value;
}

void PositionCractusSegmentAtFiveEighths(void)
{
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *current asm("r6");
    register u32 firstY asm("r4");
    register u32 firstX asm("r5");
    register u32 secondY asm("r2");
    register u32 secondX asm("r3");
    register u32 value asm("r0");
    register u32 delta asm("r1");
    register u32 size asm("r2");

    sprites = gSpriteData;
    sprite = &gCurrentSprite;
    value = sprite->work2;
    size = sizeof(struct PrimarySpriteData);
    value *= size;
    value += (u32)sprites;
    firstY = ((struct PrimarySpriteData *)value)->yPosition;
    firstX = ((struct PrimarySpriteData *)value)->xPosition;
    value = sprite->work3;
    value *= size;
    value += (u32)sprites;
    secondY = ((struct PrimarySpriteData *)value)->yPosition;
    secondX = ((struct PrimarySpriteData *)value)->xPosition;
    current = sprite;

    if (secondY > firstY) {
        delta = (u16)(secondY - firstY) >> 3;
        value = (delta << 2) + delta;
        value = firstY + value;
    } else {
        delta = (u16)(firstY - secondY) >> 3;
        value = (delta << 2) + delta;
        value = firstY - value;
    }
    current->yPosition = value;

    if (secondX > firstX) {
        delta = (u16)(secondX - firstX) >> 3;
        value = (delta << 2) + delta;
        value = firstX + value;
    } else {
        delta = (u16)(firstX - secondX) >> 3;
        value = (delta << 2) + delta;
        value = firstX - value;
    }
    current->xPosition = value;
}

void UpdateCractusArmAngleTowardWario(void)
{
    register u8 result asm("r5");
    register struct PrimarySpriteData *sprite asm("r6");
    register struct PrimarySpriteData *initial asm("r1");
    register struct WarioData *wario asm("r2");
    register u16 spriteY asm("r4");
    register u16 warioY asm("r3");
    register u16 distance asm("r2");
    register u32 value asm("r0");
    register u32 quarter asm("r1");
    register u32 spriteX asm("r1");

    if (gUnk_3000A5C != 0) {
        gCurrentSprite.work0 = 0;
        return;
    }

    result = 0;
    initial = &gCurrentSprite;
    spriteY = initial->yPosition;
    wario = &gWarioData;
    warioY = wario->yPosition;
    value = spriteY;
    value += 64;
    sprite = initial;
    if ((s32)value < (s32)warioY) {
        spriteX = sprite->xPosition;
        value = wario->xPosition;
        value += 128;
        if ((s32)spriteX < (s32)value) {
            value = sprite->work0;
            if (value == 0xF0)
                return;
        }
        value = warioY;
        value -= 64;
        value -= spriteY;
        value <<= 16;
        distance = value >> 16;
        if (distance <= 31)
            goto storeResult;
        if (distance <= 64)
            goto firstGradient;
        result = 0xF0;
        goto storeResult;
firstGradient:
        quarter = value >> 18;
        value = 255;
        value -= quarter;
        goto truncateResult;
    } else {
        spriteX = sprite->xPosition;
        value = wario->xPosition;
        value += 128;
        if ((s32)spriteX < (s32)value)
            return;
        value = warioY;
        value -= 64;
        value = spriteY - value;
        value <<= 16;
        distance = value >> 16;
        if (distance <= 31)
            goto storeResult;
        if (distance <= 64)
            goto secondGradient;
        result = 16;
        goto storeResult;
secondGradient:
        value >>= 18;
truncateResult:
        value <<= 24;
        result = value >> 24;
    }
storeResult:
    value = (u32)sprite;
    value += 39;
    *(u8 *)value = result;
}

void DebugMoveCractusSprite(void)
{
    register u16 buttons asm("r1");
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 value asm("r0");

    if (gSubGameMode == 8) {
        buttons = gButtonsHeld;
        value = buttons & 32;
        if (value != 0) {
            sprite = &gCurrentSprite;
            sprite->xPosition -= 16;
        } else if ((buttons & 16) != 0) {
            sprite = &gCurrentSprite;
            sprite->xPosition += 16;
        } else if ((buttons & 64) != 0) {
            sprite = &gCurrentSprite;
            value = sprite->yPosition - 16;
            sprite->yPosition = value;
        } else if ((buttons & 128) != 0) {
            sprite = &gCurrentSprite;
            value = sprite->yPosition + 16;
            sprite->yPosition = value;
        }
    }
}

void InitCractusSpawner(void)
{
    struct PrimarySpriteData *sprite;
    u16 status;

    gUnk_3000A62 = 90;
    gUnk_3000A58U = 1;
    gUnk_3000A59U = 0;
    gUnk_3000A5A = 0;
    gUnk_3000A5B = 0;
    gUnk_3000A5C = 0;
    gUnk_3000A5D = 0;
    gUnk_3000A5E = 32;
    gUnk_3000A5F = 16;
    gUnk_3000A60 = 12;

    sprite = &gCurrentSprite;
    {
        register u16 originalStatus asm("r1");
        register u16 result asm("r0");
        register u32 statusBits asm("r2");
        register u8 zeroByte asm("r2");
        register u16 zeroHalf asm("r3");

        originalStatus = sprite->status;
        statusBits = 0x408;
        result = statusBits;
        zeroByte = 0;
        zeroHalf = 0;
        asm("" : "+r"(result), "+r"(zeroByte), "+r"(zeroHalf) : "r"(originalStatus));
        result |= originalStatus;
        sprite->status = result;
        sprite->warioCollision = 26;
        sprite->drawDistanceDown = 32;
        sprite->drawDistanceUp = zeroByte;
        sprite->drawDistanceLeftRight = 16;
        sprite->hitboxExtentUp = 128;
        sprite->hitboxExtentDown = zeroByte;
        sprite->hitboxExtentLeft = 56;
        sprite->hitboxExtentRight = 56;
        sprite->pOamData = sCractusSpawnerIdleOam;
        sprite->currentAnimationFrame = zeroByte;
        sprite->animationTimer = zeroHalf;
        sprite->pose = 1;
        sprite->work1 = zeroByte;
    }
    sprite->health = 12;

    func_80747D8();
    func_801E430(220, 0, 0, sprite->yPosition - 240, sprite->xPosition - 32);
    func_801E430(220, 1, 0, sprite->yPosition - 272, sprite->xPosition - 16);
    func_801E430(220, 2, 0, sprite->yPosition - 272, sprite->xPosition);
    func_801E430(220, 3, 0, sprite->yPosition - 272, sprite->xPosition + 16);
    func_801E430(220, 4, 0, sprite->yPosition - 272, sprite->xPosition + 32);
    func_801E430(216, 0, 0, sprite->yPosition - 384, sprite->xPosition);
    {
        register u32 yPosition asm("r3");
        register s32 yOffset asm("r2");

        yPosition = sprite->yPosition;
        yOffset = -320;
        asm("" : "+r"(yPosition), "+r"(yOffset));
        yPosition += yOffset;
        func_801E430(217, 0, 0, yPosition, sprite->xPosition);
    }
    func_801E430(218, 0, 0, sprite->yPosition - 160, sprite->xPosition);
    func_801E430(217, 1, 0, sprite->yPosition - 272, sprite->xPosition);
    func_801E430(217, 2, 0, sprite->yPosition - 224, sprite->xPosition);
    func_801E430(217, 3, 0, sprite->yPosition - 176, sprite->xPosition);
    func_801E430(217, 4, 0, sprite->yPosition - 128, sprite->xPosition);
    func_801E430(219, 4, 0, sprite->yPosition - 272, sprite->xPosition - 32);
    func_801E430(219, 3, 0, sprite->yPosition - 272, sprite->xPosition - 48);
    func_801E430(219, 2, 0, sprite->yPosition - 272, sprite->xPosition - 64);
    func_801E430(219, 1, 0, sprite->yPosition - 272, sprite->xPosition - 80);
    func_801E430(219, 0, 0, sprite->yPosition - 240, sprite->xPosition - 96);
    sprite->work0 = 60;
    func_8070964(131, 8, 4);
}

void CractusSpawnerWaitForBattle(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer;
    if (value != 0) {
        value--;
        *timer = value;
        if ((value << 24) != 0)
            return;
        gUnk_30000F4 = 7;
    }
    if (gUnk_30000F4 != 0)
        return;
    if (gCurrentShopItem == 0) {
        if (--gUnk_3000A62 != 0)
            return;
        SpriteUtilStartBossTimer();
    }
    sprite->pose = 2;
}

void CractusSpawnerStartBattle(void)
{
    if (gWarioPauseTimer == 0 && gTimerState == 1) {
        SpriteUtilUnsetAllSpritesHighPriority();
        gCurrentSprite.pose = 15;
    }
}

void InitCractusSpawnerDefeat(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int zero asm("r1");
    register int zero2 asm("r2");
    register struct PrimarySpriteData *sprites asm("r2");
    register u8 *work asm("r4");
    register u32 slot asm("r1");
    register u32 offset asm("r0");
    register struct PrimarySpriteData *target asm("r0");
    register int pose asm("r1");

    sprite = &gCurrentSprite;
    zero = 0;
    sprite->pose = 32;
    /* Keep the original r1 byte store before r2 is cleared. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
    zero2 = 0;
    sprite->animationTimer = zero;
    sprite->pOamData = sCractusSpawnerDefeatOam;
    sprite->work0 = 62;
    sprite->health = zero2;
    sprite->drawPriority = zero2;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    SpriteUtilFindSpriteSlotWork3(216);
    sprites = gSpriteData;
    work = (u8 *)sprite;
    work += 42;
    slot = *work;
    offset = sizeof(struct PrimarySpriteData);
    offset *= slot;
    offset += (u32)sprites;
    target = (struct PrimarySpriteData *)offset;
    pose = 110;
    target->pose = pose;
    m4aSongNumStart(SE_CRACTUS_DEFEAT_START);
    VoiceSetPlay(0);
}

void UpdateCractusSpawnerDefeat(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0) {
        sprite->status = value;
        SpriteSpawnAsChild(221, 0, 0, sprite->yPosition - 210, sprite->xPosition + 160);
        SpriteSpawnAsChild(222, 0, 0, sprite->yPosition - 210, sprite->xPosition + 192);
    }
}

void InitCractusBoss(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register struct PrimarySpriteData *spriteR1 asm("r1");
    register struct PrimarySpriteData *spriteR2 asm("r2");
    register u16 status asm("r1");
    register u16 result asm("r0");
    register int zero asm("r3");
    register u16 zero16 asm("r4");
    register u8 *field asm("r0");
    register u8 *fieldR1 asm("r1");
    register int extentR1 asm("r1");
    register int extentR2 asm("r2");

    sprite = &gCurrentSprite;
    status = sprite->status;
    result = 0x8408;
    zero = 0;
    zero16 = 0;
    asm("" : "+r"(zero16));
    result |= status;
    result &= 0xFFFB;
    spriteR1 = sprite;
    spriteR1->status = result;
    result = 60;
    spriteR1->warioCollision = result;
    result = 12;
    spriteR1->health = result;

    field = &sprite->drawDistanceDown;
    extentR1 = 24;
    *field = extentR1;
    field++;
    *field = extentR1;
    field++;
    extentR1 = 32;
    *field = extentR1;
    field++;
    extentR2 = 80;
    *field = extentR2;
    field++;
    asm("" : "+r"(field));
    *field = extentR1;

    fieldR1 = &sprite->hitboxExtentLeft;
    result = 96;
    *fieldR1 = result;
    field = &sprite->hitboxExtentRight;
    *field = extentR2;

    result = (u32)sCractusBossInitialOam;
    spriteR2 = sprite;
    asm("str %1, [%0, #4]" : : "r"(spriteR2), "r"(result));
    /* agbcc otherwise copies the already-zero r3 through r0 before this byte store. */
    asm("strb %1, [%0, #22]" : : "r"(spriteR2), "r"(zero));
    spriteR2->animationTimer = zero16;
    result = 1;
    spriteR2->pose = result;
    field = &sprite->work3;
    *field = zero;
    field -= 3;
    *field = zero;
    field++;
    *field = zero;
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossIntroGraphicsAnimation);
}

void UpdateCractusBossPose1(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *indexPtr asm("r12");
    register u32 index asm("r2");
    register const s16 *table asm("r5");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register u32 next asm("r0");
    register u8 *store asm("r1");

    UpdateCractusGraphicsAnimation(sCractusBossIntroGraphicsAnimation);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusBossIntroYVelocity;
    entry = (const s16 *)(((u32)index << 1) + (u32)table);
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = table[0];
        index = 0;
    }
    next = index + 1;
    store = indexPtr;
    *store = next;
    sprite->yPosition += velocity;
    if (gUnk_30000F4 == 0) {
        sprite->pOamData = sCractusBossIntroOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pose = 24;
    }
}

void UpdateCractusBossPose24(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *indexPtr asm("r12");
    register u32 index asm("r2");
    register const s16 *table asm("r5");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register u32 next asm("r0");
    register u8 *store asm("r1");

    UpdateCractusGraphicsAnimation(sCractusBossIntroGraphicsAnimation);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusBossIntroYVelocity;
    entry = (const s16 *)(((u32)index << 1) + (u32)table);
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = table[0];
        index = 0;
    }
    next = index + 1;
    store = indexPtr;
    *store = next;
    sprite->yPosition += velocity;
    if ((*(u32 *)&sprite->animationTimer & 0xFFFFFF) == 0x10001)
        m4aSongNumStart(SE_CRACTUS_INTRO_BOUNCE);
}

void InitCractusBossPose111(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register const struct AnimationFrame *oam asm("r0");
    register int zero asm("r0");
    register int zero8 asm("r1");

    sprite = &gCurrentSprite;
    oam = sCractusBossReadyOam;
    sprite->pOamData = oam;
    zero = 0;
    /* Keep agbcc from copying the zero to r1 before this byte store. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
    zero8 = 0;
    sprite->animationTimer = zero;
    sprite->work0 = zero8;
    sprite->work1 = zero8;
    sprite->pose = 111;
}

void UpdateCractusBossPose111(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register int zero asm("r4");
    register u8 *work asm("r0");
    register u8 *work3 asm("r2");
    register u8 *work2 asm("r1");
    register int value asm("r0");

    if (UpdateCractusGraphicsAnimation(sCractusBossPose111GraphicsAnimation) != 0) {
        sprite = &gCurrentSprite;
        work = &sprite->work0;
        zero = 0;
        *work = zero;
        work++;
        *work = zero;
        UpdateCractusGraphicsAnimation(sCractusBossPose113GraphicsAnimation);
        SpriteUtilFindSpriteWork3(217, 4);
        work3 = &sprite->work3;
        value = *work3;
        work2 = &sprite->work2;
        *work2 = value;
        *work3 = zero;
        sprite->pose = 113;
    }
}

void UpdateCractusBossPose113(void)
{
  struct PrimarySpriteData *sprite;
  struct PrimarySpriteData *target220;
  struct PrimarySpriteData *target219;
  u8 index;
  s16 velocity;
  u8 slot;
  u8 slot219;
  register u32 value asm("r0");
  UpdateCractusGraphicsAnimation((const u8 *) sCractusBossPose113GraphicsAnimation);
  sprite = &gCurrentSprite;
  index = sprite->work3;
  velocity = sCractusBossPose113YVelocity[index];
  if (velocity == 0x7FFF)
  {
    sprite->work0 = 0;
    sprite->work1 = 0;
    UpdateCractusGraphicsAnimation((const u8 *) sCractusBossPose112GraphicsAnimation);
    sprite->work3 = 0;
    sprite->work2 = 0;
    sprite->pose = 112;
    gUnk_3000A58U = 2;
    return;
  }
  index++;
  sprite->work3 = index;
  sprite->yPosition += velocity;
  value = index;
  if (value == 72)
  {
    register struct PrimarySpriteData *sprites asm("r6");
    register u32 stride asm("r5");
    register struct PrimarySpriteData *target asm("r0");
    register u32 offset asm("r0");
    register u32 basePlus4 asm("r1");
    sprites = gSpriteData;
    offset = sprite->work2;
    stride = sizeof(struct PrimarySpriteData);
    offset *= stride;
    target = (struct PrimarySpriteData *) (offset + ((u32) sprites));
    target->currentAnimationFrame = 0;
    offset = sprite->work2;
    offset *= stride;
    target = (struct PrimarySpriteData *) (offset + ((u32) sprites));
    target->animationTimer = 0;
    offset = sprite->work2;
    offset *= stride;
    basePlus4 = ((u32) sprites) + 4;
    offset += basePlus4;
    *((const struct AnimationFrame **) offset) = sCractusBossArmExtendedOam;
    slot = SpriteUtilFindSprite(220, 0);
    slot219 = SpriteUtilFindSprite(219, 0);
    asm("" : "+r"(slot219));
    sprite->xPosition += 256;
    {
      register u32 address asm("r2");
      register u32 childX asm("r1");
      address = slot;
      address *= stride;
      address += (u32)sprites;
      childX = *(u16 *)(address + 10);
      childX += 128;
      *(u16 *)(address + 10) = childX;
    }
    {
      register u32 address asm("r1");
      register u32 childX asm("r0");
      address = slot219;
      address *= stride;
      address += (u32)sprites;
      childX = *(u16 *)(address + 10);
      childX += 128;
      *(u16 *)(address + 10) = childX;
    }
    gUnk_3000A58U = 0;
  }
  else
    if (value == 74)
  {
    sprite->xPosition -= 128;
  }
}

void UpdateCractusBossPose112(void)
{
    struct PrimarySpriteData *sprite;
    u8 slot220;
    u8 slot219;
    u8 counter;
    register u32 state asm("r1");
    s16 velocity;

    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossPose112GraphicsAnimation);
    sprite = &gCurrentSprite;
    counter = sprite->work3;
    velocity = sCractusBossPose15YVelocity[counter];
    if (velocity == 0x7FFF) {
        velocity = sCractusBossPose15YVelocity[0];
        counter = 0;
    }
    sprite->work3 = counter + 1;
    sprite->yPosition += velocity;

    slot220 = SpriteUtilFindSprite(220, 0);
    slot219 = SpriteUtilFindSprite(219, 0);
    sprite->work2++;
    state = sprite->work2;

    if (state <= 15) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 12;
        target->xPosition += 4;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 12;
        target->xPosition += 4;
    } else if ((u8)(state - 41) <= 58) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        if (state > 70) {
            sprite->xPosition -= 2;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 1;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 1;
        } else if (state == 60) {
            sprite->pOamData = sCractusBossImpactOam;
            sprite->currentAnimationFrame = 0;
            sprite->animationTimer = 0;
            m4aSongNumStart(SE_CRACTUS_ARM_RISE);
        }
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 1;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 1;
    } else if ((u8)(state - 101) <= 62) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprite->yPosition -= 1;
        sprite->xPosition -= 10;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition -= 3;
        target->xPosition -= 12;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition -= 3;
        target->xPosition -= 12;
    } else if ((u8)(state + 91) <= 14) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 4;
        target->xPosition += 2;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 4;
        target->xPosition += 2;
    } else if ((u8)(state + 75) <= 18) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 2;
        target->xPosition += 2;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 2;
        target->xPosition += 2;
    } else if (state == 200) {
        sprite->work0 = 0;
        sprite->work1 = 0;
        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
        sprite->work3 = 0;
        sprite->pose = 15;
        sprite->pOamData = sCractusBossReadyOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
    }
}

u32 AreCractusArmsReady(void)
{
    register struct PrimarySpriteData *sprites asm("r6");
    register struct PrimarySpriteData *sprite220 asm("r4");
    register struct PrimarySpriteData *sprite219 asm("r2");
    register u32 slot asm("r0");
    register u32 size asm("r5");
    register u8 *work asm("r0");
    register int zero asm("r1");

    slot = SpriteUtilFindSprite(220, 0);
    slot = (u8)slot;
    sprites = gSpriteData;
    size = sizeof(struct PrimarySpriteData);
    slot *= size;
    sprite220 = (struct PrimarySpriteData *)(slot + (u32)sprites);
    if (sprite220->pose == 15) {
        slot = SpriteUtilFindSprite(219, 0);
        slot = (u8)slot;
        slot *= size;
        sprite219 = (struct PrimarySpriteData *)(slot + (u32)sprites);
        if (sprite219->pose == 15) {
            work = &sprite220->work1;
            zero = 0;
            *work = zero;
            work = &sprite219->work1;
            *work = zero;
            return 1;
        }
    }
    work = (u8 *)&gCurrentSprite;
    work += 42;
    zero = 0;
    *work = zero;
    return 0;
}

void UpdateCractusBossPose15(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register u8 *indexPtr asm("r6");
    register u32 index asm("r2");
    register const s16 *table asm("r4");
    register u16 velocity asm("r3");
    u32 zero;
    register u32 savedIndex asm("r8");
    register struct WarioData *wario asm("r9");
    register u32 value asm("r0");
    register s32 signedVelocity asm("r1");

    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusBossPose15YVelocity;
    value = index << 1;
    value += (u32)table;
    velocity = *(const u16 *)value;
    zero = 0;
    /* agbcc otherwise selects a different zero register for the signed load. */
    asm("ldrsh %0, [%1, %2]" : "=r"(signedVelocity) : "r"(value), "r"(zero));
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)table;
        index = 0;
    }
    value = index + 1;
    value <<= 24;
    index = value >> 24;
    *indexPtr = index;
    zero = 0;
    sprite->yPosition += velocity;
    savedIndex = index;
    if (index != 1)
        return;

    wario = &gWarioData;
    value = wario->reaction;
    {
        register u8 *hurtTimer asm("r4");
        hurtTimer = &gUnk_3000A5B;
        if (value != 0)
            *hurtTimer = zero;

        value = *hurtTimer;
        if (value == 0) {
            UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
            value = AreCractusArmsReady();
            if (value != 0) {
                sprite->pose = 19;
                *indexPtr = zero;
                {
                    register u8 *global asm("r0");
                    global = &gUnk_3000A58U;
                    *global = zero;
                }
                m4aSongNumStart(SE_CRACTUS_ATTACK_SELECT);
            }
            return;
        }

        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossHurtGraphicsAnimation);
        value = *hurtTimer;
        value--;
        *hurtTimer = value;
        value <<= 24;
        if (value == 0) {
            register u8 *work asm("r0");
            work = &sprite->work0;
            *work = zero;
            work++;
            asm("" : "+r"(work));
            *work = zero;
            UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
        }
    }

    {
        register u32 warioX asm("r6");
        register u32 spriteX asm("r4");

        {
            register struct WarioData *warioRead asm("r1");
            warioRead = wario;
            warioX = warioRead->xPosition;
        }
        spriteX = sprite->xPosition;
        if (warioX < spriteX) {
            func_8023BFC(sprite->yPosition, spriteX - 128);
            if (gUnk_3000A51 != 17) {
                value = spriteX - warioX;
                value <<= 16;
                if (value > 0x13F0000) {
                    sprite->pose = 16;
                    {
                        register u8 *global asm("r0");
                        register u32 stored asm("r7");
                        global = &gUnk_3000A58U;
                        stored = savedIndex;
                        *global = stored;
                    }
                }
            }
        } else {
            func_8023BFC(sprite->yPosition, spriteX - 64);
            if (gUnk_3000A51 != 17) {
                value = AreCractusArmsReady();
                if (value != 0) {
                    sprite->pose = 18;
                    {
                        register u8 *global asm("r0");
                        global = &gUnk_3000A58U;
                        *global = zero;
                    }
                    m4aSongNumStart(SE_CRACTUS_SIDE_ATTACK_SELECT);
                }
            }
        }
    }
}

void UpdateCractusBossPose16(void)
{
    register struct PrimarySpriteData *sprite asm("r6");
    register struct PrimarySpriteData *sprites asm("r5");
    register struct PrimarySpriteData *target asm("r1");
    register u8 *indexPtr asm("r5");
    register u32 index asm("r2");
    register const s16 *table asm("r4");
    const s16 *entry;
    register u16 velocity asm("r3");
    int signedVelocity;
    register u32 value asm("r0");
    register u32 slot asm("r0");
    register u32 size asm("r4");
    register u32 offset asm("r1");

    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossHurtGraphicsAnimation);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusBossPose15YVelocity;
    value = index << 1;
    /* agbcc otherwise reverses the Thumb ADD operands for this table address. */
    asm("add %0, %0, %1" : "+r"(value) : "r"(table));
    entry = (const s16 *)value;
    velocity = *entry;
    signedVelocity = *(const s16 *)entry;
    if (signedVelocity == 0x7FFF) {
        velocity = table[0];
        index = 0;
    }
    value = index + 1;
    *indexPtr = value;
    sprite->yPosition += velocity;
    func_8023BFC(sprite->yPosition, sprite->xPosition - 128);
    if (gUnk_3000A51 == 17 || gUnk_3000A5B == 0) {
        sprite->pose = 15;
    } else {
        slot = SpriteUtilFindSprite(220, 0);
        slot <<= 24;
        slot >>= 24;
        asm("" : "+r"(slot));
        sprites = gSpriteData;
        size = sizeof(struct PrimarySpriteData);
        offset = slot;
        offset *= size;
        offset += (u32)sprites;
        target = (struct PrimarySpriteData *)offset;
        target->xPosition -= 4;
        slot = SpriteUtilFindSprite(219, 0);
        slot <<= 24;
        slot >>= 24;
        asm("" : "+r"(slot));
        offset = slot;
        offset *= size;
        offset += (u32)sprites;
        target = (struct PrimarySpriteData *)offset;
        target->xPosition -= 4;
        sprite->xPosition -= 4;
    }
}

void UpdateCractusBossPose18(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register struct PrimarySpriteData *left asm("r6");
    register struct PrimarySpriteData *right asm("r5");
    register u32 slot220 asm("r6");
    register u32 slot219 asm("r12");
    register u8 *indexPtr asm("r8");
    register u8 *indexAddress asm("r1");
    register u32 indexOffset asm("r1");
    register u32 index asm("r2");
    register const s16 *table asm("r5");
    register u32 entryAddress asm("r0");
    register u16 velocity asm("r3");
    register s32 signedVelocity asm("r1");
    register u32 ended asm("r9");
    u32 zero;
    register struct PrimarySpriteData *sprites asm("r2");
    register u32 stride asm("r1");
    register u32 offset asm("r0");

    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossHurtGraphicsAnimation);
    ended = 0;
    slot220 = (u8)SpriteUtilFindSprite(220, 0);
    slot219 = (u8)SpriteUtilFindSprite(219, 0);
    sprite = &gCurrentSprite;
    indexOffset = 42;
    asm("add %0, %0, %1" : "+r"(indexOffset) : "r"(sprite));
    indexAddress = (u8 *)indexOffset;
    indexPtr = indexAddress;
    index = *indexAddress;
    table = sCractusBossPose18YVelocity;
    entryAddress = (index << 1) + (u32)table;
    velocity = *(const u16 *)entryAddress;
    zero = 0;
    /* agbcc ICEs when this signed halfword load is expressed directly. */
    asm("ldrsh %0, [%1, %2]" : "=r"(signedVelocity) : "r"(entryAddress), "r"(zero));
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)table;
        index = 0;
        ended = 1;
    }
    {
        register u32 nextIndex asm("r0");
        register u8 *destination asm("r1");

        nextIndex = index + 1;
        destination = indexPtr;
        *destination = nextIndex;
    }
    sprite->yPosition += velocity;
    zero = 0;
    sprites = gSpriteData;
    stride = sizeof(struct PrimarySpriteData);
    offset = slot220;
    offset *= stride;
    left = (struct PrimarySpriteData *)(offset + (u32)sprites);
    left->yPosition += velocity;
    offset = slot219;
    offset *= stride;
    right = (struct PrimarySpriteData *)(offset + (u32)sprites);
    right->yPosition += velocity;
    left->work1 = zero;
    right->work1 = zero;
    func_8023BFC(sprite->yPosition, sprite->xPosition - 64);
    if (gUnk_3000A51 != 17) {
        left->xPosition += 4;
        right->xPosition += 4;
        sprite->xPosition += 4;
    }
    {
        register u32 endedValue asm("r0");
        endedValue = ended;
        asm("" : "+r"(endedValue));
        if (endedValue != 0) {
            register u8 *destination asm("r1");
            destination = indexPtr;
            *destination = zero;
            {
                register u8 *work2 asm("r1");
                register u32 timer asm("r0");
                work2 = &sprite->work2;
                timer = 18;
                *work2 = timer;
            }
            {
                register u32 warioX asm("r0");
                register u32 spriteX asm("r7");
                warioX = gWarioData.xPosition;
                asm("" : "+r"(warioX));
                /* Preserve the target halfword load in r7 without a stack spill. */
                asm("ldrh %0, [%1, #10]" : "=r"(spriteX) : "r"(sprite));
                if (warioX < spriteX)
                    sprite->pose = 17;
                else
                    sprite->pose = 15;
            }
        }
    }
}

void UpdateCractusBossPose17(void)
{
    struct PrimarySpriteData *sprite;
    register struct PrimarySpriteData *sprites asm("r6");
    register struct PrimarySpriteData *target asm("r0");
    register u8 *timer asm("r1");
    register u32 value asm("r0");
    register u32 coordinate asm("r1");
    register u32 slot asm("r0");
    register u32 size asm("r4");
    register int zero asm("r5");

    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossHurtGraphicsAnimation);
    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    value = *timer - 1;
    *timer = value;
    value <<= 24;
    if (value != 0) {
        slot = SpriteUtilFindSprite(220, 0);
        slot <<= 24;
        slot >>= 24;
        sprites = gSpriteData;
        size = sizeof(struct PrimarySpriteData);
        slot *= size;
        /* Preserve the original ADD operand order for the sprite-slot address. */
        asm("add %0, %0, %1" : "+r"(slot) : "r"(sprites));
        target = (struct PrimarySpriteData *)slot;
        coordinate = target->xPosition;
        coordinate -= 4;
        zero = 0;
        target->xPosition = coordinate;
        target->work1 = zero;

        slot = SpriteUtilFindSprite(219, 0);
        slot <<= 24;
        slot >>= 24;
        slot *= size;
        /* Preserve the original ADD operand order for the sprite-slot address. */
        asm("add %0, %0, %1" : "+r"(slot) : "r"(sprites));
        target = (struct PrimarySpriteData *)slot;
        coordinate = target->xPosition;
        coordinate -= 4;
        target->xPosition = coordinate;
        target->work1 = zero;
        {
            register u32 currentCoordinate asm("r0");
            currentCoordinate = sprite->xPosition;
            currentCoordinate -= 4;
            sprite->xPosition = currentCoordinate;
        }
    } else {
        sprite->pose = 15;
    }
}

void UpdateCractusBossPose19(void)
{
    register u32 slot220 asm("r6");
    u32 slot219;

    {
        register struct PrimarySpriteData *sprite asm("r4");
        register u8 *indexPtr asm("r5");
        register u32 value asm("r0");

        sprite = &gCurrentSprite;
        sprite->disableWarioCollisionTimer = 1;
        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
        {
            register u32 found asm("r0");
            found = SpriteUtilFindSprite(220, 0);
            asm volatile("lsl %0, %0, #24\nlsr %1, %0, #24"
                         : "+r"(found), "=r"(slot220));
            found = SpriteUtilFindSprite(219, 0);
            asm volatile("lsl %0, %0, #24\nlsr %1, %0, #24"
                         : "+r"(found), "=r"(slot219));
        }
        indexPtr = &sprite->work3;
        value = *indexPtr;
        if (value != 0xFF) {
            {
                register u32 y asm("r0");
                register u32 offset asm("r1");
                register u32 coordinate asm("r3");
                offset = 230;
                offset <<= 2;
                asm("" : "+r"(offset));
                asm("mov %0, %1" : "=r"(y) : "r"(offset));
                coordinate = sprite->yPosition;
                y += coordinate;
                y = (u16)y;
                func_8023BFC(y, sprite->xPosition);
            }
            if (gUnk_3000A51 != 0) {
                register u32 index asm("r2");
                register const s16 *table asm("r8");
                register u32 address asm("r0");
                register u32 velocity asm("r4");
                register u32 loadZero asm("r3");
                register s32 signedLoad asm("r1");
                register s32 signedVelocity asm("r12");
                register struct PrimarySpriteData *current asm("r1");
                register struct PrimarySpriteData *sprites asm("r3");
                register u32 stride asm("r2");
                register u32 target asm("r1");

                index = *indexPtr;
                table = sCractusBossPose19YVelocity;
                address = index << 1;
                asm("add %0, %1" : "+r"(address) : "r"(table));
                velocity = *(const u16 *)address;
                loadZero = 0;
                asm("ldrsh %0, [%1, %2]"
                    : "=r"(signedLoad)
                    : "r"(address), "r"(loadZero));
                asm("mov %0, %1" : "=r"(signedVelocity) : "r"(signedLoad));
                if (signedVelocity == 0x7FFF) {
                    address = (index - 1) << 1;
                    asm("add %0, %1" : "+r"(address) : "r"(table));
                    velocity = *(const u16 *)address;
                } else {
                    value = index + 1;
                    *indexPtr = value;
                }

                current = &gCurrentSprite;
                value = current->yPosition;
                value += velocity;
                current->yPosition = value;
                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                target = slot220;
                target *= stride;
                target += (u32)sprites;
                value = ((struct PrimarySpriteData *)target)->yPosition;
                value += velocity;
                ((struct PrimarySpriteData *)target)->yPosition = value;
                target = slot219;
                target *= stride;
                target += (u32)sprites;
                value = ((struct PrimarySpriteData *)target)->yPosition;
                value += velocity;
                ((struct PrimarySpriteData *)target)->yPosition = value;
                return;
            }
        }
    }

    {
        register struct PrimarySpriteData *sprite asm("r5");
        register u8 *work3 asm("r4");
        register u32 value asm("r0");

        sprite = &gCurrentSprite;
        work3 = &sprite->work3;
        *work3 = 0xFF;
        {
            register u16 y asm("r0");
            register u32 x asm("r1");
            y = sprite->yPosition;
            x = sprite->xPosition;
            x -= 120;
            x = (u16)x;
            func_8023BFC(y, x);
        }
        if (gUnk_3000A51 != 17) {
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r2");
            register u32 target asm("r1");

            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            target = slot220;
            target *= stride;
            target += (u32)sprites;
            ((struct PrimarySpriteData *)target)->xPosition += 16;
            target = slot219;
            target *= stride;
            target += (u32)sprites;
            ((struct PrimarySpriteData *)target)->xPosition += 16;
            sprite->xPosition += 16;
            return;
        }

        {
            register struct WarioData *wario asm("r0");
            register u32 warioReaction asm("r1");

            wario = &gWarioData;
            warioReaction = wario->reaction;
            if (warioReaction == 0)
                goto be50_no_reaction;
            goto be50_reaction;

be50_no_reaction:

            if ((u8)(wario->pose - 43) <= 2) {
                register struct PrimarySpriteData *sprites asm("r3");
                register u32 stride asm("r1");
                register u32 left asm("r2");
                register u32 clearZero asm("r4");

                sprite->work2 = 32;
                *work3 = warioReaction;
                sprite->pose = 114;
                sprite->pOamData = sCractusBossDamagedOam;
                /* Prevent agbcc from copying the zero through r0. */
                asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(warioReaction) : "memory");
                clearZero = 0;
                sprite->animationTimer = warioReaction;
                gUnk_3000A5A = clearZero;
                gUnk_3000A58U = clearZero;
                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                left = slot220;
                left *= stride;
                left += (u32)sprites;
                ((struct PrimarySpriteData *)left)->yPosition = sprite->yPosition + 192;
                stride *= slot219;
                stride += (u32)sprites;
                ((struct PrimarySpriteData *)stride)->yPosition = sprite->yPosition + 192;
                ((struct PrimarySpriteData *)left)->xPosition = sprite->xPosition + 64;
                ((struct PrimarySpriteData *)stride)->xPosition = sprite->xPosition - 32;
                ((struct PrimarySpriteData *)left)->work2 = clearZero;
                ((struct PrimarySpriteData *)stride)->work2 = clearZero;
            } else {
                register struct PrimarySpriteData *sprites asm("r1");
                register u32 stride asm("r2");
                register u32 leftOffset asm("r0");
                register u32 left asm("r3");
                register u32 clearZero asm("r1");
                register struct PrimarySpriteData *clearBase asm("r4");
                register u32 clearAddress asm("r0");

                sprite->work2 = 16;
                *work3 = warioReaction;
                sprite->pose = 20;
                sprite->pOamData = sCractusBossDamagedOam;
                /* Prevent agbcc from copying the zero through r0. */
                asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(warioReaction) : "memory");
                sprite->animationTimer = warioReaction;
                gUnk_3000A5A = 1;
                gUnk_3000A58U = 1;
                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                leftOffset = slot220;
                leftOffset *= stride;
                left = leftOffset + (u32)sprites;
                ((struct PrimarySpriteData *)left)->xPosition = sprite->xPosition + 32;
                clearAddress = slot219;
                clearAddress *= stride;
                stride = clearAddress + (u32)sprites;
                ((struct PrimarySpriteData *)stride)->xPosition = sprite->xPosition - 96;
                value = sprite->health;
                clearBase = sprites;
                asm("" : "+r"(clearBase));
                if (value <= 6) {
                    ((struct PrimarySpriteData *)left)->yPosition = sprite->yPosition + 160;
                    ((struct PrimarySpriteData *)stride)->yPosition = sprite->yPosition + 160;
                } else {
                    ((struct PrimarySpriteData *)left)->yPosition = sprite->yPosition + 64;
                    ((struct PrimarySpriteData *)stride)->yPosition = sprite->yPosition + 64;
                }
                clearAddress = slot220;
                stride = sizeof(struct PrimarySpriteData);
                clearAddress *= stride;
                clearAddress += (u32)clearBase;
                clearAddress += 41;
                clearZero = 0;
                *(u8 *)clearAddress = clearZero;
                clearAddress = slot219;
                clearAddress *= stride;
                clearAddress += (u32)clearBase;
                clearAddress += 41;
                *(u8 *)clearAddress = clearZero;
                m4aSongNumStart(SE_CRACTUS_ARM_SLAM);
            }

            goto be50_end;

be50_reaction:
            {
            register u32 zero asm("r1");
            register u8 *work2 asm("r2");
            register u32 clearZero asm("r4");
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r1");
            register u32 left asm("r2");

            work2 = &sprite->work2;
            zero = 0;
            *work2 = 32;
            *work3 = zero;
            sprite->pose = 116;
            sprite->pOamData = sCractusBossDamagedOam;
            asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero) : "memory");
            clearZero = 0;
            sprite->animationTimer = zero;
            gUnk_3000A5A = 1;
            gUnk_3000A58U = 1;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            left = slot220;
            left *= stride;
            left += (u32)sprites;
            ((struct PrimarySpriteData *)left)->yPosition = sprite->yPosition + 92;
            stride *= slot219;
            stride += (u32)sprites;
            ((struct PrimarySpriteData *)stride)->yPosition = sprite->yPosition + 92;
            ((struct PrimarySpriteData *)left)->xPosition = sprite->xPosition + 32;
            ((struct PrimarySpriteData *)stride)->xPosition = sprite->xPosition - 96;
            asm volatile("add %0, #41\nstrb %1, [%0]"
                         : "+r"(left)
                         : "r"(clearZero)
                         : "memory");
            asm volatile("add %0, #41\nstrb %1, [%0]"
                         : "+r"(stride)
                         : "r"(clearZero)
                         : "memory");
            {
                register u8 *work asm("r0");
                work = &sprite->work0;
                *work = clearZero;
                work++;
                *work = clearZero;
            }
            UpdateCractusGraphicsAnimation(sCractusBossDefaultGraphicsAnimation);
            }

be50_end:
            ;
        }
    }
}

void UpdateCractusBossPose114(void)
{
    struct PrimarySpriteData *sprite;
    u8 slot220;
    register u32 slot219 asm("r6");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    if ((*((u32 *)&sprite->animationTimer) & 0xFFFFFF) == 0x50003) {
        SpriteSpawnAsChild(223, 0, 0, sprite->yPosition + 128, sprite->xPosition - 84);
    }
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
    slot220 = SpriteUtilFindSprite(220, 0);
    SpriteUtilFindSprite(219, 0);
    /* Preserve the signed-return truncation directly into r6. */
    asm("lsl r0, r0, #24\n\tlsr %0, r0, #24" : "=r"(slot219));

    if (sprite->work3 != 0xFF) {
        func_8023BFC(sprite->yPosition + 512, sprite->xPosition - 138);
        if (gUnk_3000A51 != 17) {
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r2");
            register u32 address asm("r1");
            register struct PrimarySpriteData *target asm("r1");

            sprite->yPosition += 8;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 8;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 8;
            return;
        }
    }

    {
        register struct PrimarySpriteData *current asm("r4");
        register u8 *work3 asm("r9");
        s32 mask;
        register u8 *global58 asm("r8");

        current = &gCurrentSprite;
        work3 = &current->work3;
        /* agbcc otherwise builds -1 directly in the destination and drops the copy. */
        asm("mov r1, #1\n\tneg r1, r1\n\tadd %0, r1, #0" : "=r"(mask) : : "r1");
        /* Preserve the target order: materialize the byte before copying r9 to r1. */
        asm("mov r0, #255\n\tmov r1, r9\n\tstrb r0, [r1, #0]" : : : "r0", "r1", "memory");
        gUnk_3000A5A = 1;
        global58 = &gUnk_3000A58U;
        *global58 = 1;
        func_8023BFC(current->yPosition, current->xPosition - 138);
        if (gUnk_3000A51 != 17) {
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r2");
            register u32 address asm("r1");
            register struct PrimarySpriteData *target asm("r1");

            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= 8;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= 8;
            current->xPosition -= 8;
        } else {
            register u32 count asm("r0");
            register u32 countByte asm("r1");

            /* Keep the work2 pointer in r1 across the byte decrement and store. */
            asm("add r1, %1, #0\n\tadd r1, #41\n\tldrb %0, [r1, #0]\n\tsub %0, #1\n\tstrb %0, [r1, #0]"
                : "=r"(count) : "r"(current) : "r1", "memory");
            count &= mask;
            count <<= 24;
            /* Preserve the target unsigned-byte extraction in r1. */
            asm("lsr %0, %1, #24" : "=r"(countByte) : "r"(count));
            if (countByte != 0) {
                register struct PrimarySpriteData *sprites asm("r3");
                register u32 stride asm("r2");
                register u32 address asm("r1");
                register struct PrimarySpriteData *target asm("r1");

                current->yPosition -= 12;
                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                address = slot220;
                address *= stride;
                address += (u32)sprites;
                target = (struct PrimarySpriteData *)address;
                target->yPosition -= 12;
                address = slot219;
                address *= stride;
                address += (u32)sprites;
                target = (struct PrimarySpriteData *)address;
                target->yPosition -= 12;
            } else {
                current->pose = 19;
                *work3 = countByte;
                *global58 = countByte;
            }
        }
    }
}

void UpdateCractusBossPose116(void)
{
    struct PrimarySpriteData *sprite;
    u8 slot220;
    u8 slot219;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    UpdateCractusGraphicsAnimation(sCractusBossDefaultGraphicsAnimation);
    slot220 = SpriteUtilFindSprite(220, 0);
    slot219 = SpriteUtilFindSprite(219, 0);

    if (sprite->work3 != 0xFF) {
        func_8023BFC(sprite->yPosition + 400, sprite->xPosition - 138);
        if (gUnk_3000A51 != 17) {
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r2");
            register u32 address asm("r1");
            register struct PrimarySpriteData *target asm("r1");

            sprite->yPosition += 8;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 8;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 8;
            return;
        }
    }

    gCurrentSprite.work3 = 0xFF;
    if (gWarioData.reaction != 0 && (gMainTimer & 0x3F) == 0)
        m4aSongNumStart(SE_CRACTUS_WARIO_REACTION);
    func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 640);
    if (gUnk_3000A51 != 17) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 4;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 4;
        gCurrentSprite.xPosition -= 4;
    } else if (gWarioData.reaction == 0) {
        gCurrentSprite.work2--;
        if (gCurrentSprite.work2 != 0) {
            register struct PrimarySpriteData *sprites asm("r3");
            register u32 stride asm("r2");
            register u32 address asm("r1");
            register struct PrimarySpriteData *target asm("r1");

            gCurrentSprite.yPosition -= 12;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 12;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 12;
        } else {
            gCurrentSprite.pose = 19;
            gCurrentSprite.work3 = 0;
            gUnk_3000A58U = 0;
        }
    }
}

void UpdateCractusBossPose20(void)
{
    struct PrimarySpriteData *sprite;
    u8 slot220;
    u8 slot219;
    u16 collisionY;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
    slot220 = SpriteUtilFindSprite(220, 0);
    slot219 = SpriteUtilFindSprite(219, 0);

    if (sprite->work2 != 0) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        sprite->work2--;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 16;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->xPosition -= 16;
        sprite->xPosition -= 16;
        return;
    }

    if (sprite->health <= 6)
        collisionY = sprite->yPosition + 224;
    else
        collisionY = sprite->yPosition - 140;
    func_8023BFC(collisionY, gCurrentSprite.xPosition);

    if (gUnk_3000A51 != 17) {
        register struct PrimarySpriteData *sprites asm("r3");
        register u32 stride asm("r2");
        register u32 address asm("r1");
        register struct PrimarySpriteData *target asm("r1");

        gCurrentSprite.yPosition += 16;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        address = slot220;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 16;
        address = slot219;
        address *= stride;
        address += (u32)sprites;
        target = (struct PrimarySpriteData *)address;
        target->yPosition += 16;
    } else {
        gCurrentSprite.pose = 21;
        gCurrentSprite.pOamData = sCractusBossImpactOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        if (gCurrentSprite.health <= 6) {
            gCurrentSprite.work2 = 0;
            gUnk_3000A5A = 0;
            m4aSongNumStart(SE_CRACTUS_GROUND_IMPACT);
        } else {
            gCurrentSprite.work2 = 60;
        }
        if (gCurrentSprite.health <= 9) {
            gUnk_3000A5B = 1;
            if (gCurrentSprite.health <= 1) {
                register struct PrimarySpriteData *sprites asm("r3");
                register u32 stride asm("r2");
                register u32 address asm("r0");
                register u8 *work asm("r0");
                register u32 delay asm("r1");

                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                address = slot220;
                address *= stride;
                address += (u32)sprites;
                address += 40;
                work = (u8 *)address;
                asm("" : "+r"(work));
                delay = 30;
                *work = delay;
                address = slot219;
                address *= stride;
                address += (u32)sprites;
                address += 40;
                work = (u8 *)address;
                *work = delay;
            } else {
                register struct PrimarySpriteData *sprites asm("r3");
                register u32 stride asm("r2");
                register u32 address asm("r0");
                register u8 *work asm("r0");
                register u32 delay asm("r1");

                sprites = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                address = slot220;
                address *= stride;
                address += (u32)sprites;
                address += 40;
                work = (u8 *)address;
                asm("" : "+r"(work));
                delay = 10;
                *work = delay;
                address = slot219;
                address *= stride;
                address += (u32)sprites;
                address += 40;
                work = (u8 *)address;
                *work = delay;
            }
        }
    }
}

void UpdateCractusBossPose21(void)
{
    register struct PrimarySpriteData *initial asm("r2");
    register struct PrimarySpriteData *sprite asm("r4");
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *target asm("r1");
    register u32 slot220 asm("r6");
    u32 slot219;
    register u8 *timer asm("r8");
    register u32 value asm("r0");
    register u32 speed asm("r5");
    register u32 stride asm("r2");
    register u32 address asm("r1");

    initial = &gCurrentSprite;
    if (initial->health <= 6 && (*(u32 *)&initial->animationTimer & 0xFFFFFF) == 0x10003) {
        SpriteSpawnAsChild(223, 0, 0, initial->yPosition + 128, initial->xPosition - 84);
    }
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
    slot220 = SpriteUtilFindSprite(220, 0);
    slot220 = (u8)slot220;
    value = SpriteUtilFindSprite(219, 0);
    value <<= 24;
    slot219 = value >> 24;

    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    value = *timer;
    speed = value;
    if (speed != 0) {
        value--;
        *timer = value;
        value = (u8)value;
        if (value > 20) {
            sprite->yPosition -= 8;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 8;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition -= 8;
        } else {
            sprite->yPosition += 4;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 4;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->yPosition += 4;
            {
                register u8 *timerRead asm("r2");
                timerRead = timer;
                if (*timerRead == 0)
                    m4aSongNumStart(SE_CRACTUS_GROUND_IMPACT);
            }
        }
        return;
    }

    func_8023BFC(sprite->yPosition, sprite->xPosition - 128);
    if (gUnk_3000A51 == 17) {
        sprite->pOamData = sCractusBossReadyOam;
        sprite->currentAnimationFrame = speed;
        {
            register u32 zero asm("r1");
            register u32 pose asm("r0");
            register u8 *timerStore asm("r2");
            register u8 *global asm("r0");

            zero = 0;
            sprite->animationTimer = speed;
            pose = 22;
            sprite->pose = pose;
            pose = 46;
            timerStore = timer;
            *timerStore = pose;
            global = &gUnk_3000A5B;
            *global = zero;
        }
    } else {
        speed = sprite->health;
        if (speed > 3) {
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= 4;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= 4;
            /* agbcc incorrectly removes this current-sprite update after the two indexed stores. */
            asm("ldrh r0, [%0, #10]\n"
                "sub r0, #4\n"
                "strh r0, [%0, #10]"
                :
                : "r"(sprite)
                : "r0", "memory");
        } else {
            if (gUnk_3000A5B == 0 || sprite->xPosition < gWarioData.xPosition)
                speed = 6;
            sprites = gSpriteData;
            stride = sizeof(struct PrimarySpriteData);
            address = slot220;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= speed;
            address = slot219;
            address *= stride;
            address += (u32)sprites;
            target = (struct PrimarySpriteData *)address;
            target->xPosition -= speed;
            {
                register struct PrimarySpriteData *current asm("r1");
                current = &gCurrentSprite;
                current->xPosition -= speed;
            }
        }
    }
}

void UpdateCractusBossPose22(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *target asm("r1");
    register u32 slot220 asm("r5");
    register u32 slot219 asm("r4");
    register u32 value asm("r0");
    register u32 size asm("r2");
    register u8 *timer asm("r3");
    register u32 timerValue asm("r1");

    sprite = &gCurrentSprite;
    if (sprite->health <= 6 && (*(u32 *)&sprite->animationTimer & 0xFFFFFF) == 0x50003) {
        SpriteSpawnAsChild(223, 0, 0, sprite->yPosition + 128, sprite->xPosition - 84);
    }
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossAttackGraphicsAnimation);
    slot220 = SpriteUtilFindSprite(220, 0);
    slot220 = (u8)slot220;
    slot219 = SpriteUtilFindSprite(219, 0);
    slot219 = (u8)slot219;
    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    value = *timer;
    timerValue = value;
    if (timerValue != 0) {
        *timer = value - 1;
        sprite->yPosition -= 6;
        sprites = gSpriteData;
        size = sizeof(struct PrimarySpriteData);
        timerValue = slot220;
        timerValue *= size;
        /* Preserve the original ADD operand order for the sprite-slot address. */
        asm("add %0, %0, %1" : "+r"(timerValue) : "r"(sprites));
        target = (struct PrimarySpriteData *)timerValue;
        target->yPosition -= 5;
        timerValue = slot219;
        timerValue *= size;
        /* Preserve the original ADD operand order for the sprite-slot address. */
        asm("add %0, %0, %1" : "+r"(timerValue) : "r"(sprites));
        target = (struct PrimarySpriteData *)timerValue;
        target->yPosition -= 5;
    } else {
        gUnk_3000A5A = timerValue;
        gUnk_3000A58U = timerValue;
        sprite->pose = 15;
    }
}

void UpdateCractusBossPose49(void)
{
    register u32 slot220 asm("r6");
    u8 slot219;
    register struct PrimarySpriteData *initial asm("r1");
    register struct PrimarySpriteData *sprite asm("r5");
    register u32 zeroR1 asm("r1");
    register u32 zeroR0 asm("r0");
    register u32 zeroR4 asm("r4");
    register struct PrimarySpriteData *sprites asm("r4");
    register u32 stride asm("r3");
    register u32 address asm("r0");
    register struct PrimarySpriteData *left asm("r5");
    register struct PrimarySpriteData *right asm("r3");
    register struct PrimarySpriteData *current asm("r1");
    register u32 zeroR2 asm("r2");
    register u8 *work asm("r0");
    register u8 *global asm("r0");
    register u32 health asm("r0");
    register u32 coordinate asm("r0");

    slot220 = (u8)SpriteUtilFindSprite(220, 0);
    slot219 = (u8)SpriteUtilFindSprite(219, 0);
    initial = &gCurrentSprite;
    health = initial->health;
    if (health != 0) {
        health--;
        initial->health = health;
        health <<= 24;
        if (health == 0) {
            gTimerState = 11;
            SpriteUtilSetWarioBossVictoryPose();
        }
        func_80747D8();
    }
    global = &gUnk_3000A5A;
    zeroR1 = 0;
    *global = zeroR1;
    global = &gUnk_3000A58U;
    *global = zeroR1;
    sprite = &gCurrentSprite;
    sprite->pOamData = sCractusBossDamagedOam;
    zeroR0 = 0;
    asm("" : "+r"(zeroR0));
    sprite->currentAnimationFrame = zeroR0;
    zeroR4 = 0;
    sprite->animationTimer = zeroR0;
    work = &sprite->work0;
    *work = zeroR4;
    work++;
    *work = zeroR4;
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
    work = &sprite->work2;
    *work = zeroR4;
    work++;
    *work = zeroR4;
    gUnk_3000A5C = 1;
    SpriteSpawnSecondary(gWarioData.yPosition, gWarioData.xPosition, 5);
    func_8023BFC(sprite->yPosition + 352, sprite->xPosition);
    if (gUnk_3000A51 != 0)
        sprite->pose = 50;
    else
        sprite->pose = 109;
    VoiceSetPlay(15);
    gUnk_3000A5B = 0;
    sprites = gSpriteData;
    stride = sizeof(struct PrimarySpriteData);
    address = slot220;
    address *= stride;
    left = (struct PrimarySpriteData *)(address + (u32)sprites);
    current = &gCurrentSprite;
    coordinate = current->yPosition;
    coordinate += 64;
    zeroR2 = 0;
    left->yPosition = coordinate;
    address = slot219;
    address *= stride;
    right = (struct PrimarySpriteData *)(address + (u32)sprites);
    right->yPosition = current->yPosition + 64;
    left->xPosition = current->xPosition + 32;
    right->xPosition = current->xPosition - 96;
    left->work2 = zeroR2;
    right->work2 = zeroR2;
    left->work1 = zeroR2;
    right->work1 = zeroR2;
    left->pose = 15;
    right->pose = 15;
}

void HandleCractusBossDamage(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 zero asm("r3");
    register u32 value asm("r0");
    register u32 extent asm("r2");
    register u32 health asm("r1");
    register u8 *globalR0 asm("r0");
    register u8 *globalR1 asm("r1");
    register u8 *globalR2 asm("r2");
    register u8 *fieldR0 asm("r0");
    register u8 *fieldR1 asm("r1");
    register u32 zeroR1 asm("r1");

    sprite = &gCurrentSprite;
    zero = 0;
    /* agbcc otherwise copies the already-zero r3 before this byte store. */
    asm("strb %1, [%0, #27]" : : "r"(sprite), "r"(zero));
    value = sprite->health;
    if (value == 0) {
        sprite->pose = 121;
        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
        globalR1 = &gUnk_3000A5C;
        value = 2;
        *globalR1 = value;
        m4aSongNumStart(SE_CRACTUS_DEFEATED);
    } else {
        if (value <= 5) {
            globalR0 = &gUnk_3000A5E;
            extent = 16;
            *globalR0 = extent;
            globalR1 = &gUnk_3000A5F;
            value = 20;
            *globalR1 = value;
            globalR0 = &gUnk_3000A60;
            *globalR0 = extent;
        }
        globalR0 = &gUnk_3000A5C;
        *globalR0 = zero;
        globalR2 = &gUnk_3000A5B;
        health = sprite->health;
        value = 15;
        value -= health;
        *globalR2 = value;
        value <<= 24;
        value >>= 24;
        if (value > 10) {
            value = 10;
            *globalR2 = value;
        }
        value = 15;
        sprite->pose = value;
        value = (u32)sCractusBossReadyOam;
        asm("str %1, [%0, #4]" : : "r"(sprite), "r"(value));
        /* Keep the original r3 byte store without an unnecessary copy. */
        asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
        zeroR1 = 0;
        sprite->animationTimer = zero;
        fieldR0 = &sprite->work0;
        *fieldR0 = zeroR1;
        fieldR0++;
        *fieldR0 = zeroR1;
        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossHurtGraphicsAnimation);
        fieldR1 = &sprite->work3;
        value = 2;
        *fieldR1 = value;
    }
}

void UpdateCractusBossPose50(void)
{
    register struct PrimarySpriteData *initial asm("r2");
    register struct PrimarySpriteData *sprite asm("r5");
    u8 slot220;
    u8 slot219;
    register u32 leftVelocity asm("r8");
    register u32 rightVelocity asm("r9");
    u8 index;

    initial = &gCurrentSprite;
    initial->disableWarioCollisionTimer = 1;
    if ((*((u32 *)&initial->animationTimer) & 0xFFFFFF) == 0x50003 && initial->health != 0) {
        SpriteSpawnAsChild(223, 0, 0, initial->yPosition + 128, initial->xPosition - 68);
    }

    sprite = &gCurrentSprite;
    {
        register u32 value asm("r0");
        register u32 counter asm("r4");
        register u8 *counterPtr asm("r1");
        u32 zero;

        counterPtr = &sprite->work2;
        value = *counterPtr;
        value++;
        *counterPtr = value;
        value <<= 24;
        /* agbcc otherwise performs the entire increment in r4. */
        asm("lsr %0, %1, #24" : "=r"(counter) : "r"(value));
        if (counter == 2)
            VoiceSetPlay(0);
        if ((counter & 7) == 0) {
            u32 paletteValue;
            paletteValue = counter & 8;
            /* agbcc otherwise omits the target's explicit u8 normalization. */
            asm("lsl %0, %0, #24\n\t"
                "lsr %0, %0, #24" : "+r"(paletteValue));
            if (paletteValue != 0)
                sprite->palette = 3;
            else
                sprite->palette = 0;
        }
        zero = (counter - 1) & 0x3F;
        if (zero == 0) {
            register struct PrimarySpriteData *effectSprite asm("r4");

            effectSprite = &gCurrentSprite;
            func_801E3A8(249, 0, 0, effectSprite->yPosition + 28,
                         effectSprite->xPosition - 72, zero);
            func_801E3A8(249, 0, 0, effectSprite->yPosition + 32,
                         effectSprite->xPosition + 64, 64);
        }
    }

    slot220 = SpriteUtilFindSprite(220, 0);
    slot219 = SpriteUtilFindSprite(219, 0);

    sprite = &gCurrentSprite;
    {
        register u8 *indexPtr asm("r4");
        register const s16 *leftPtr asm("r2");
        register const s16 *rightPtr asm("r1");
        register s32 signedVelocity asm("r1");
        register u32 offset asm("r0");

        indexPtr = &sprite->work3;
        index = *indexPtr;
        leftPtr = sCractusBossPose50LeftYVelocity;
        asm("" : "+r"(leftPtr));
        offset = index << 1;
        leftPtr = (const s16 *)(offset + (u32)leftPtr);
        rightPtr = sCractusBossPose50RightYVelocity;
        offset += (u32)rightPtr;
        rightVelocity = *(const u16 *)offset;
        leftVelocity = *(const u16 *)leftPtr;
        signedVelocity = *leftPtr;

        if (signedVelocity == 0x7FFF) {
            register u32 collision asm("r4");

            func_8023BFC(sprite->yPosition + 352, sprite->xPosition);
            collision = gUnk_3000A51;
            if (collision != 0) {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                sprite->yPosition -= 2;
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(slot220 * stride + (u32)base);
                child->yPosition -= 2;
                child = (struct PrimarySpriteData *)(slot219 * stride + (u32)base);
                child->yPosition -= 2;
                goto animate;
            } else {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r1");
                register struct PrimarySpriteData *left asm("r2");
                register struct PrimarySpriteData *right asm("r1");

                HandleCractusBossDamage();
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                left = (struct PrimarySpriteData *)(slot220 * stride + (u32)base);
                left->work1 = collision;
                right = (struct PrimarySpriteData *)(slot219 * stride + (u32)base);
                right->work1 = collision;
                left->yPosition = sprite->yPosition + 160;
                right->yPosition = sprite->yPosition + 160;
                return;
            }
        } else {
            register u32 collision asm("r0");

            *indexPtr = index + 1;
            func_8023BFC(sprite->yPosition + 352, sprite->xPosition);
            collision = gUnk_3000A51;
            if (collision != 0) {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                sprite->yPosition -= 2;
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(slot220 * stride + (u32)base);
                child->yPosition -= 1;
                child = (struct PrimarySpriteData *)(slot219 * stride + (u32)base);
                child->yPosition -= 1;
            }
            {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(slot220 * stride + (u32)base);
                child->yPosition += leftVelocity;
                child = (struct PrimarySpriteData *)(slot219 * stride + (u32)base);
                child->yPosition += rightVelocity;
            }
        }
    }
animate:
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
}

void UpdateCractusBossPose109(void)
{
    register struct PrimarySpriteData *initial asm("r2");
    register struct PrimarySpriteData *sprite asm("r5");
    u8 lowSlot220;
    u8 lowSlot219;
    u32 savedSlot220;
    u32 savedSlot219;
    register u32 rightVelocity asm("r8");
    u32 leftVelocity;
    u8 index;

    initial = &gCurrentSprite;
    initial->disableWarioCollisionTimer = 1;
    if ((*((u32 *)&initial->animationTimer) & 0xFFFFFF) == 0x50003 && initial->health != 0) {
        SpriteSpawnAsChild(223, 0, 0, initial->yPosition + 128, initial->xPosition - 68);
    }

    sprite = &gCurrentSprite;
    {
        register u32 value asm("r0");
        register u32 counter asm("r4");
        register u8 *counterPtr asm("r1");

        counterPtr = &sprite->work2;
        value = *counterPtr;
        value++;
        *counterPtr = value;
        value <<= 24;
        value >>= 24;
        asm("" : "+r"(value));
        counter = value;
        if (counter == 2)
            VoiceSetPlay(0);
        if ((counter & 7) == 0) {
            u32 paletteValue;
            paletteValue = counter & 8;
            /* agbcc otherwise omits the target's explicit u8 normalization. */
            asm("lsl %0, %0, #24\n\t"
                "lsr %0, %0, #24" : "+r"(paletteValue));
            if (paletteValue != 0)
                sprite->palette = 3;
            else
                sprite->palette = 0;
        }
    }

    lowSlot220 = SpriteUtilFindSprite(220, 0);
    savedSlot220 = lowSlot220;
    lowSlot219 = SpriteUtilFindSprite(219, 0);
    savedSlot219 = lowSlot219;

    sprite = &gCurrentSprite;
    {
        register u8 *indexPtr asm("r3");
        register u32 tableAddress asm("r0");
        register u32 offset asm("r1");
        register u32 velocity asm("r0");
        u32 table;

        indexPtr = &sprite->work3;
        index = *indexPtr;
        tableAddress = (u32)sCractusBossPose50LeftYVelocity;
        offset = index << 1;
        tableAddress = offset + tableAddress;
        velocity = *(const u16 *)tableAddress;
        asm("" : "+r"(velocity));
        leftVelocity = velocity;
        table = (u32)sCractusBossPose50RightYVelocity;
        offset += table;
        rightVelocity = *(const u16 *)offset;

        if (leftVelocity == 0x7FFF) {
            func_8023BFC(sprite->yPosition + 352, sprite->xPosition);
            if (gUnk_3000A51 == 0) {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                sprite->yPosition += 2;
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(lowSlot220 * stride + (u32)base);
                child->yPosition += 2;
                child = (struct PrimarySpriteData *)(lowSlot219 * stride + (u32)base);
                child->yPosition += 2;
                goto animate;
            } else {
                register struct PrimarySpriteData *base asm("r4");
                register u32 stride asm("r1");
                register struct PrimarySpriteData *left asm("r2");
                register struct PrimarySpriteData *right asm("r1");
                register u32 zero asm("r3");
                register u8 *work asm("r0");

                HandleCractusBossDamage();
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);

                left = (struct PrimarySpriteData *)(lowSlot220 * stride + (u32)base);
                work = &left->work1;
                zero = 0;
                *work = zero;
                right = (struct PrimarySpriteData *)(lowSlot219 * stride + (u32)base);
                work = &right->work1;
                *work = zero;
                left->yPosition = sprite->yPosition + 160;
                right->yPosition = sprite->yPosition + 160;
                return;
            }
        } else {
            *indexPtr = index + 1;
            func_8023BFC(sprite->yPosition + 352, sprite->xPosition);
            if (gUnk_3000A51 == 0) {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                sprite->yPosition += 2;
                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(lowSlot220 * stride + (u32)base);
                child->yPosition += 1;
                child = (struct PrimarySpriteData *)(lowSlot219 * stride + (u32)base);
                child->yPosition += 1;
            }
            {
                register struct PrimarySpriteData *base asm("r3");
                register u32 stride asm("r2");
                register struct PrimarySpriteData *child asm("r1");

                base = gSpriteData;
                stride = sizeof(struct PrimarySpriteData);
                child = (struct PrimarySpriteData *)(savedSlot220 * stride + (u32)base);
                child->yPosition += leftVelocity;
                child = (struct PrimarySpriteData *)(savedSlot219 * stride + (u32)base);
                child->yPosition += rightVelocity;
            }
        }
    }
animate:
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
}

void UpdateCractusBossPose121(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *counter asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
    counter = &gUnk_3000A5C;
    value = *counter;
    if (value <= 254) {
        value++;
        *counter = value;
        value = (u8)value;
        if (value == 80) {
            func_801E430(10, sprite->roomSlot, 0, sprite->yPosition + 50, sprite->xPosition - 50);
            func_801E430(10, sprite->roomSlot, 0, sprite->yPosition + 20, sprite->xPosition + 50);
            sprite->status |= 4;
        } else if (value > 239) {
            sprite->status = 0;
        }
    }
}

void UpdateCractusBossPose122(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register int value asm("r0");
    register int zero asm("r2");
    register u8 *field asm("r1");

    switch (gCurrentShopItem) {
        case 2: value = 9; break;
        case 3: value = 8; break;
        case 4: value = 7; break;
        case 5: value = 5; break;
        case 6: value = 3; break;
        case 7: value = 4; break;
        case 8: value = 2; break;
        default: value = 10; break;
    }
    sprite = &gCurrentSprite;
    field = &sprite->work2;
    zero = 0;
    *field = value;
    sprite->pOamData = sCractusBossDamagedOam;
    /* agbcc otherwise copies the already-zero r2 through r0 before this store. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
    sprite->animationTimer = zero;
    sprite->work0 = 0;
    sprite->work1 = 0;
    gUnk_3000A5D = 32;
    sprite->pose = 123;
    value = sprite->health;
    if (value == 0)
        goto noDamage;
    value--;
    sprite->health = value;
    func_80747D8();
    m4aSongNumStart(SE_CRACTUS_DAMAGE);
noDamage:
    VoiceSetPlay(15);
}

void UpdateCractusBossPose123(void)
{
    struct PrimarySpriteData *sprite;
    u8 value;

    UpdateCractusGraphicsAnimation((const u8 *)sCractusBossDamageGraphicsAnimation);
    if (gUnk_3000A5D != 0) {
        value = --gUnk_3000A5D;
        if ((value & 7) == 0) {
            if ((value & 8) != 0)
                gCurrentSprite.palette = 3;
            else
                gCurrentSprite.palette = 0;
        }
        return;
    }

    sprite = &gCurrentSprite;
    if (sprite->health == sprite->work2) {
        sprite->pose = 24;
        sprite->pOamData = sCractusBossIntroOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 0;
        sprite->work1 = 0;
        UpdateCractusGraphicsAnimation((const u8 *)sCractusBossIntroGraphicsAnimation);
        SpriteUtilStartBossTimer();
        if (sprite->health <= 5) {
            gUnk_3000A5E = 16;
            gUnk_3000A5F = 20;
            gUnk_3000A60 = 16;
        }
    } else {
        gUnk_3000A5D = 32;
        if (sprite->health != 0) {
            sprite->health--;
            func_80747D8();
            m4aSongNumStart(SE_CRACTUS_DAMAGE);
        }
    }
}

void InitCractusStemSegment(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register volatile u8 *bytePtr asm("r1");
    register volatile u8 *hitboxPtr asm("r0");
    register u32 status asm("r0");
    register u32 oldStatus asm("r1");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u32 statusBits asm("r2");
    register const struct AnimationFrame *animation asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusBits = 0x8408;
    asm("" : "+r"(statusBits));
    status = statusBits;
    asm("" : "+r"(status));
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    sprite->status = status;

    bytePtr = (volatile u8 *)sprite;
    bytePtr[30] = zeroByte;
    bytePtr += 32;
    status = 40;
    *bytePtr = status;
    bytePtr++;
    *bytePtr = status;
    bytePtr++;
    *bytePtr = status;

    hitboxPtr = (volatile u8 *)sprite + 35;
    oldStatus = 32;
    *hitboxPtr = oldStatus;
    hitboxPtr++;
    *hitboxPtr = oldStatus;
    hitboxPtr++;
    *hitboxPtr = oldStatus;
    hitboxPtr++;
    *hitboxPtr = oldStatus;

    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    status = 16;
    bytePtr = (volatile u8 *)sprite;
    bytePtr[28] = status;

    switch (bytePtr[24]) {
        case 0: animation = sCractusStemSegment0Oam; break;
        case 1: animation = sCractusStemSegment1Oam; break;
        case 2: animation = sCractusStemSegment2Oam; break;
        case 3: animation = sCractusStemSegment3Oam; break;
        default: animation = sCractusStemSegment4Oam; break;
    }
    ((struct PrimarySpriteData *)bytePtr)->pOamData = animation;
    {
        u32 roomSlot;

        roomSlot = bytePtr[24];
        if (roomSlot == 0)
            SpriteUtilFindSpriteSlotWork3(216);
        else {
            roomSlot = bytePtr[24];
            roomSlot--;
            SpriteUtilFindOwnSlotU32(roomSlot);
        }
    }
}

void UpdateCractusStemSegment(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register struct PrimarySpriteData *base asm("r0");
    register u8 *counterStart asm("r0");
    register u8 *counter asm("r3");
    register u32 value asm("r2");
    register s32 roomSlot asm("r1");

    counterStart = &gUnk_3000A5C;
    value = *counterStart;
    counter = counterStart;
    if (value <= 1)
        goto lowCounter;

    base = &gCurrentSprite;
    roomSlot = base->roomSlot;
    sprite = base;
    switch (roomSlot) {
        case 1:
            if (value > 47) {
                func_801E430(11, 1, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 2:
            if (value > 55) {
                func_801E430(11, 2, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 3:
            if (value > 63) {
                func_801E430(11, 3, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 4:
            if (value > 71) {
                func_801E430(10, 4, 0, sprite->yPosition + 32, sprite->xPosition);
                func_801E430(10, sprite->roomSlot, 0, sprite->yPosition + 64, sprite->xPosition + 100);
                sprite->status = 0;
            }
            break;
        default:
            if (*counter > 55) {
                func_801E430(10, sprite->roomSlot, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
    }
    goto end;

lowCounter:
    UpdateCractusSegmentHorizontalFollow();
    if (gUnk_3000A5A != 0)
        UpdateCractusSegmentVerticalSpacing();
    else
        UpdateCractusSegmentVerticalFollow();
end:
    ;
}

void InitCractusArmSegmentCommon(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u32 statusBits asm("r2");
    register u8 *fieldR1 asm("r1");
    register u8 *fieldR0 asm("r0");

    sprite = &gCurrentSprite;
    temp = sprite->status;
    statusBits = 0x8408;
    asm("" : "+r"(statusBits));
    value = statusBits;
    asm("" : "+r"(value));
    zeroByte = 0;
    zeroHalf = 0;
    value |= temp;
    temp = 0xFFFB;
    value &= temp;
    fieldR1 = (u8 *)sprite;
    *(u16 *)fieldR1 = value;
    fieldR1[30] = zeroByte;
    fieldR1 += 32;
    value = 16;
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR0 = (u8 *)sprite + 35;
    temp = 32;
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR1 = (u8 *)sprite + 38;
    value = 48;
    *fieldR1 = value;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    value = 23;
    fieldR1 = (u8 *)sprite;
    fieldR1[28] = value;
}

void InitCractusArmSegmentA(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register const struct AnimationFrame *animation asm("r0");

    InitCractusArmSegmentCommon();
    switch (gCurrentSprite.roomSlot) {
        case 0:
            sprite = &gCurrentSprite;
            sprite->status |= 0x80;
            sprite->pOamData = sCractusArmSegmentARootOam;
            sprite->work0 = 224;
            goto end;
        case 1:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentA1Oam;
            break;
        case 2:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentA2Oam;
            break;
        case 3:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentA3Oam;
            asm volatile("" ::: "memory");
            break;
        case 4:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentA3Oam;
            break;
        default:
            sprite = &gCurrentSprite;
            animation = sCractusSegmentOam;
            break;
    }
    sprite->pOamData = animation;
end:
    ;
}

void InitCractusArmSegmentB(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register const struct AnimationFrame *animation asm("r0");

    InitCractusArmSegmentCommon();
    switch (gCurrentSprite.roomSlot) {
        case 0:
            sprite = &gCurrentSprite;
            sprite->status |= 0x80;
            sprite->pOamData = sCractusArmSegmentBRootOam;
            sprite->work0 = 224;
            sprite->warioCollision = 13;
            goto end;
        case 1:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentB1Oam;
            break;
        case 2:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentB2Oam;
            break;
        case 3:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentB3Oam;
            asm volatile("" ::: "memory");
            break;
        case 4:
            sprite = &gCurrentSprite;
            animation = sCractusArmSegmentB3Oam;
            break;
        default:
            sprite = &gCurrentSprite;
            animation = sCractusSegmentOam;
            break;
    }
    sprite->pOamData = animation;
end:
    ;
}

void UpdateCractusArmSegmentAPose23(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register s32 roomSlot asm("r1");
    register u8 *work3 asm("r2");
    register u8 *work2 asm("r0");
    register u32 value asm("r0");
    register u8 *field asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 24;
    /* agbcc otherwise folds the signed switch range after the byte load. */
    asm("ldrb %0, [%1, #24]" : "=r"(roomSlot) : "r"(sprite));
    switch (roomSlot) {
        case 0:
            work3 = &sprite->work3;
            value = 40;
            *work3 = value;
            work2 = &sprite->work2;
            *work2 = roomSlot;
            break;
        case 1:
        case 2:
        case 3:
            SpriteUtilFindSpriteWork3(219, 4);
            field = &sprite->work3;
            roomSlot = *field;
            field--;
            *field = roomSlot;
            SpriteUtilFindSpriteWork3(219, 0);
            break;
        case 4:
            SpriteUtilFindSpriteWork3(217, 1);
            break;
    }
}

void UpdateCractusArmSegmentBPose23(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register s32 roomSlot asm("r1");
    register u8 *work3 asm("r2");
    register u8 *work2 asm("r0");
    register u32 value asm("r0");
    register u8 *field asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 24;
    /* agbcc otherwise folds the signed switch range after the byte load. */
    asm("ldrb %0, [%1, #24]" : "=r"(roomSlot) : "r"(sprite));
    switch (roomSlot) {
        case 0:
            work3 = &sprite->work3;
            value = 30;
            *work3 = value;
            work2 = &sprite->work2;
            *work2 = roomSlot;
            break;
        case 1:
        case 2:
        case 3:
            SpriteUtilFindSpriteWork3(220, 4);
            field = &sprite->work3;
            roomSlot = *field;
            field--;
            *field = roomSlot;
            SpriteUtilFindSpriteWork3(220, 0);
            break;
        case 4:
            SpriteUtilFindSpriteWork3(217, 1);
            break;
    }
}

void UpdateCractusArmSegmentPose24(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u32 slot asm("r6");
    register const s16 *table asm("r5");
    register u8 *indexPtr asm("r12");
    register u32 index asm("r2");
    register u32 velocity asm("r4");
    s32 signedVelocity;

    slot = SpriteUtilFindSpriteSlot(216);
    sprite = &gCurrentSprite;
    if (sprite->globalID == 219) {
        register u32 pointer asm("r0");
        pointer = 41;
        /* Preserve the target's constant-plus-base operand order. */
        asm("add %0, %0, %1" : "+r"(pointer) : "r"(sprite));
        indexPtr = (u8 *)pointer;
        index = *(u8 *)pointer;
        table = sCractusArmPose24XVelocityA;
    } else {
        register u32 pointer asm("r7");
        pointer = 41;
        asm("add %0, %0, %1" : "+r"(pointer) : "r"(sprite));
        indexPtr = (u8 *)pointer;
        /* Keep the byte load based directly on r7 without an intermediate copy. */
        asm("ldrb %0, [%1, #0]" : "=r"(index) : "r"(pointer));
        table = sCractusArmPose24XVelocityB;
    }

    {
        register u32 offset asm("r0");
        register const s16 *entry asm("r0");
        s32 zero;
        offset = index << 1;
        offset += (u32)table;
        entry = (const s16 *)offset;
        velocity = *(const u16 *)entry;
        zero = 0;
        signedVelocity = *(const s16 *)((const u8 *)entry + zero);
    }
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)table;
        index = 0;
    }
    {
        register u32 nextIndex asm("r0");
        register u8 *destination asm("r1");
        nextIndex = index + 1;
        destination = indexPtr;
        *destination = nextIndex;
    }
    sprite->xPosition += velocity;

    {
        register struct PrimarySpriteData *sprites asm("r0");
        register u32 size asm("r1");
        register struct PrimarySpriteData *parent asm("r0");
        register s32 pose asm("r2");

        sprites = gSpriteData;
        size = sizeof(struct PrimarySpriteData);
        size *= slot;
        parent = (struct PrimarySpriteData *)(size + (u32)sprites);
        pose = parent->pose;
        switch (pose) {
        case 110:
        case 111:
            return;
        case 113:
            {
                register struct PrimarySpriteData *current asm("r1");
                register u32 position asm("r0");
                current = &gCurrentSprite;
                position = parent->yPosition;
                position += 144;
                current->yPosition = position;
            }
            return;
        case 15:
            {
                register struct PrimarySpriteData *current asm("r0");
                register u32 zero asm("r1");
                register u8 *field asm("r2");
                current = &gCurrentSprite;
                zero = 0;
                current->pose = pose;
                field = &current->work2;
                *field = zero;
                current->work1 = zero;
            }
            return;
        case 112:
            UpdateCractusArmAngleTowardWario();
            break;
        }
    }

    {
        register struct PrimarySpriteData *current asm("r4");
        register u8 *field asm("r6");
        register u8 *destination asm("r12");
        register const s16 *verticalTable asm("r5");
        register u32 verticalIndex asm("r2");
        register u32 verticalVelocity asm("r3");
        register s32 signedVertical asm("r1");
        register const s16 *entry asm("r0");

        current = &gCurrentSprite;
        field = (u8 *)42;
        asm("add %0, %0, %1" : "+r"(field) : "r"(current));
        destination = field;
        verticalIndex = *field;
        verticalTable = sCractusBossIntroYVelocity;
        {
            register u32 offset asm("r0");
            offset = verticalIndex << 1;
            offset += (u32)verticalTable;
            entry = (const s16 *)offset;
        }
        verticalVelocity = *(const u16 *)entry;
        /* Reuse the callee-saved zero index selected in the first table load. */
        asm("mov r7, #0\n\tldrsh %0, [%1, r7]"
            : "=r"(signedVertical) : "r"(entry) : "r7");
        if (signedVertical == 0x7FFF) {
            verticalVelocity = *(const u16 *)verticalTable;
            verticalIndex = 0;
        }
        {
            register u32 nextIndex asm("r0");
            register u8 *target asm("r1");
            nextIndex = verticalIndex + 1;
            target = destination;
            *target = nextIndex;
        }
        current->yPosition += verticalVelocity;
    }
}


void UpdateCractusArmSegmentPose15(void)
{
    register u32 bodySlot asm("r4");
    register s32 threshold asm("r5");
    u16 spriteY;
    u16 warioY;
    u16 spriteX;
    u16 warioX;
    u32 delta;

    bodySlot = SpriteUtilFindSpriteSlot(216);
    {
        register struct PrimarySpriteData *sprites asm("r1");
        u32 bodyPose;

        sprites = gSpriteData;
        asm("" : "+r"(sprites));
        bodyPose = sprites[bodySlot].pose;
        if (bodyPose == 116) {
        register struct PrimarySpriteData *sprite asm("r1");
        register u32 unused asm("r0");
        register u8 *work0 asm("r1");

        sprite = &gCurrentSprite;
        unused = sprite->globalID;
        asm("" : : "r"(unused));
        work0 = &sprite->work0;
        *work0 = 176;
        } else {
            UpdateCractusArmAngleTowardWario();
        }
    }

    if (gCurrentSprite.globalID == 219) {
        register struct PrimarySpriteData *sprites asm("r1");
        u32 bodyPose;

        sprites = gSpriteData;
        asm("" : "+r"(sprites));
        bodyPose = sprites[bodySlot].pose;
        if (bodyPose == 116) {
            u8 *indexPtr;
            u8 index;
            const s16 *table;
            s16 velocity;

            indexPtr = &gCurrentSprite.work2;
            index = *indexPtr;
            table = sCractusArmPose15LeftXVelocity;
            velocity = table[index];
            if (velocity == 0x7FFF) {
                velocity = table[0];
                index = 0;
            }
            *indexPtr = index + 1;
            gCurrentSprite.xPosition += velocity;
            threshold = 255;
        } else {
            u8 *indexPtr;
            u8 index;
            const s16 *table;
            s16 velocity;

            indexPtr = &gCurrentSprite.work2;
            index = *indexPtr;
            table = sCractusArmPose15LeftYVelocity;
            velocity = table[index];
            if (velocity == 0x7FFF) {
                velocity = table[0];
                index = 0;
            }
            *indexPtr = index + 1;
            gCurrentSprite.xPosition += velocity;
            threshold = 120;
        }
    } else {
        register struct PrimarySpriteData *sprites asm("r1");
        u32 bodyPose;

        sprites = gSpriteData;
        asm("" : "+r"(sprites));
        bodyPose = sprites[bodySlot].pose;
        if (bodyPose == 116) {
            u8 *indexPtr;
            u8 index;
            const s16 *table;
            s16 velocity;

            indexPtr = &gCurrentSprite.work2;
            index = *indexPtr;
            table = sCractusArmPose15RightXVelocity;
            velocity = table[index];
            if (velocity == 0x7FFF) {
                velocity = table[0];
                index = 0;
            }
            *indexPtr = index + 1;
            gCurrentSprite.xPosition += velocity;
            threshold = 255;
        } else {
            u8 *indexPtr;
            u8 index;
            const s16 *table;
            s16 velocity;

            indexPtr = &gCurrentSprite.work2;
            index = *indexPtr;
            table = sCractusArmPose15RightYVelocity;
            velocity = table[index];
            if (velocity == 0x7FFF) {
                velocity = table[0];
                index = 0;
            }
            *indexPtr = index + 1;
            gCurrentSprite.xPosition += velocity;
            threshold = 52;
        }
    }

    if (gUnk_3000A5B == 0)
        return;

    gCurrentSprite.work1++;
    if ((u8)(gWarioData.pose - 43) <= 2 || gCurrentSprite.health == 1)
        gCurrentSprite.work1++;
    if (gCurrentSprite.work1 < threshold)
        return;

    spriteY = gCurrentSprite.yPosition + 256;
    warioY = gWarioData.yPosition + 256;
    spriteX = gCurrentSprite.xPosition + 256;
    warioX = gWarioData.xPosition + 256;
    if (spriteX < warioX) {
        gCurrentSprite.work1--;
        return;
    }

    delta = (u16)(spriteX - warioX) >> 4;
    if (delta > gUnk_3000A60)
        gCurrentSprite.work2 = gUnk_3000A60;
    else
        gCurrentSprite.work2 = delta;

    if (spriteY > warioY) {
        register u32 shifted asm("r0");
        register u32 yDelta asm("r2");

        shifted = (u16)(spriteY - warioY);
        shifted <<= 16;
        /* agbcc otherwise keeps this shifted Y delta in r1. */
        asm("lsr %0, %1, #20" : "=r"(yDelta) : "r"(shifted));
        if (yDelta > gUnk_3000A60)
            gCurrentSprite.work3 = gUnk_3000A60;
        else {
            /* agbcc otherwise uses r0 for this field pointer instead of r1. */
            asm("add r1, r3, #0\n"
                "add r1, #42\n"
                "strb r2, [r1, #0]"
                :
                : "r"(yDelta)
                : "r1", "memory");
        }
        gCurrentSprite.work1 = gUnk_3000A5F + gUnk_3000A5E;
        gCurrentSprite.pose = 110;
        m4aSongNumStart(SE_CRACTUS_ARM_AIM);
    } else {
        register u32 shifted asm("r0");
        register u32 yDelta asm("r2");

        shifted = (u16)(warioY - spriteY);
        shifted <<= 16;
        /* agbcc otherwise keeps this shifted Y delta in r1. */
        asm("lsr %0, %1, #20" : "=r"(yDelta) : "r"(shifted));
        if (yDelta > gUnk_3000A60)
            gCurrentSprite.work3 = gUnk_3000A60;
        else {
            /* agbcc otherwise uses r0 for this field pointer instead of r1. */
            asm("add r1, r3, #0\n"
                "add r1, #42\n"
                "strb r2, [r1, #0]"
                :
                : "r"(yDelta)
                : "r1", "memory");
        }
        gCurrentSprite.work1 = gUnk_3000A5F + gUnk_3000A5E;
        gCurrentSprite.pose = 112;
        m4aSongNumStart(SE_CRACTUS_ARM_AIM);
    }
}

void UpdateCractusArmSegmentPose110(void)
{
    register u8 *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");
    register u32 timerValue asm("r2");
    register u8 *global asm("r1");
    register s32 threshold asm("r1");
    register u8 *divisorPtr asm("r0");
    register s32 divisor asm("r1");
    register s32 quotient asm("r0");
    register u8 *field asm("r0");
    register u32 component asm("r1");
    register u32 position asm("r0");

    sprite = (u8 *)&gCurrentSprite;
    timer = sprite + 40;
    value = *timer;
    timerValue = value - 1;
    *timer = timerValue;
    value = timerValue << 24;
    if (value == 0)
        goto finished;
    global = &gUnk_3000A5F;
    value >>= 24;
    threshold = *global;
    if (value < threshold)
        goto moving;
    if (value == threshold)
        m4aSongNumStart(SE_CRACTUS_ARM_SWING);
    sprite += 39;
    divisorPtr = &gUnk_3000A5E;
    divisor = *divisorPtr;
    quotient = 256 / divisor;
    threshold = *sprite;
    threshold -= quotient;
    *sprite = threshold;
    goto end;
moving:
    sprite[30] = 13;
    field = sprite + 42;
    component = *field;
    position = *(u16 *)(sprite + 8);
    position -= component;
    *(u16 *)(sprite + 8) = position;
    field = sprite + 41;
    component = *field;
    position = *(u16 *)(sprite + 10);
    position -= component;
    *(u16 *)(sprite + 10) = position;
    goto update;
finished:
    value = gUnk_3000A5F;
    *timer = value;
    sprite[28] = 111;
update:
    UpdateCractusArmAngleTowardWario();
end:
    ;
}

void UpdateCractusArmSegmentPose111(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");
    register u32 slot asm("r1");
    register struct PrimarySpriteData *sprites asm("r2");
    register u32 stride asm("r0");
    register struct PrimarySpriteData *target asm("r1");
    register u32 zero asm("r2");
    register struct PrimarySpriteData *current asm("r0");
    register u32 pose asm("r1");

    sprite = &gCurrentSprite;
    timer = &sprite->work1;
    value = *timer;
    value--;
    *timer = value;
    value <<= 24;
    if (value != 0) {
        timer += 2;
        asm("" : "+r"(timer));
        value = sprite->yPosition;
        slot = *timer;
        value += slot;
        sprite->yPosition = value;
        timer = &sprite->work2;
        value = sprite->xPosition;
        slot = *timer;
        value += slot;
        sprite->xPosition = value;
        goto update;
    }

    if (sprite->globalID == 219) {
        value = SpriteUtilFindSprite(219, 4);
        value <<= 24;
        slot = value >> 24;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        slot *= stride;
        target = (struct PrimarySpriteData *)(slot + (u32)sprites);
        value = target->yPosition + 36;
        zero = 0;
        sprite->yPosition = value;
        value = target->xPosition - 96;
        sprite->xPosition = value;
        sprite->warioCollision = zero;
    } else {
        value = SpriteUtilFindSprite(220, 4);
        value <<= 24;
        slot = value >> 24;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        slot *= stride;
        target = (struct PrimarySpriteData *)(slot + (u32)sprites);
        value = target->yPosition + 48;
        sprite->yPosition = value;
        value = target->xPosition - 64;
        sprite->xPosition = value;
    }
    current = &gCurrentSprite;
    zero = 0;
    pose = 15;
    current->pose = pose;
    timer = &current->work2;
    *timer = zero;
    current = (struct PrimarySpriteData *)((u8 *)current + 40);
    *(u8 *)current = zero;
update:
    UpdateCractusArmAngleTowardWario();
}

void UpdateCractusArmSegmentPose112(void)
{
    register u8 *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");
    register u32 timerValue asm("r2");
    register u8 *global asm("r1");
    register s32 threshold asm("r1");
    register u8 *divisorPtr asm("r0");
    register s32 divisor asm("r1");
    register s32 quotient asm("r0");
    register u8 *field asm("r0");
    register u8 *fieldR1 asm("r1");
    register u32 component asm("r1");
    register u32 position asm("r0");

    sprite = (u8 *)&gCurrentSprite;
    timer = sprite + 40;
    value = *timer;
    timerValue = value - 1;
    *timer = timerValue;
    value = timerValue << 24;
    if (value == 0)
        goto finished;
    global = &gUnk_3000A5F;
    value >>= 24;
    threshold = *global;
    if (value < threshold)
        goto moving;
    if (value == threshold)
        m4aSongNumStart(SE_CRACTUS_ARM_SWING);
    sprite += 39;
    divisorPtr = &gUnk_3000A5E;
    divisor = *divisorPtr;
    quotient = 256 / divisor;
    threshold = *sprite;
    threshold -= quotient;
    *sprite = threshold;
    goto end;
moving:
    sprite[30] = 13;
    fieldR1 = sprite + 42;
    position = *(u16 *)(sprite + 8);
    component = *fieldR1;
    position += component;
    *(u16 *)(sprite + 8) = position;
    field = sprite + 41;
    component = *field;
    position = *(u16 *)(sprite + 10);
    position -= component;
    *(u16 *)(sprite + 10) = position;
    goto update;
finished:
    value = gUnk_3000A5F;
    *timer = value;
    sprite[28] = 113;
update:
    UpdateCractusArmAngleTowardWario();
end:
    ;
}

void UpdateCractusArmSegmentPose113(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r1");
    register u32 value asm("r0");
    register u32 slot asm("r1");
    register struct PrimarySpriteData *sprites asm("r2");
    register u32 stride asm("r0");
    register struct PrimarySpriteData *target asm("r1");
    register u32 zero asm("r2");
    register struct PrimarySpriteData *current asm("r0");
    register u32 pose asm("r1");

    sprite = &gCurrentSprite;
    timer = &sprite->work1;
    value = *timer;
    value--;
    *timer = value;
    value <<= 24;
    if (value != 0) {
        register u8 *field asm("r0");
        register u32 position asm("r1");
        field = (u8 *)sprite;
        field += 42;
        value = *field;
        position = sprite->yPosition;
        position -= value;
        sprite->yPosition = position;
        timer = &sprite->work2;
        value = sprite->xPosition;
        slot = *timer;
        value += slot;
        sprite->xPosition = value;
        goto update;
    }

    if (sprite->globalID == 219) {
        value = SpriteUtilFindSprite(219, 4);
        value <<= 24;
        slot = value >> 24;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        slot *= stride;
        target = (struct PrimarySpriteData *)(slot + (u32)sprites);
        value = target->yPosition + 52;
        zero = 0;
        sprite->yPosition = value;
        value = target->xPosition - 96;
        sprite->xPosition = value;
        sprite->warioCollision = zero;
    } else {
        value = SpriteUtilFindSprite(220, 4);
        value <<= 24;
        slot = value >> 24;
        sprites = gSpriteData;
        stride = sizeof(struct PrimarySpriteData);
        slot *= stride;
        target = (struct PrimarySpriteData *)(slot + (u32)sprites);
        value = target->yPosition + 48;
        sprite->yPosition = value;
        value = target->xPosition - 64;
        sprite->xPosition = value;
    }
    current = &gCurrentSprite;
    zero = 0;
    pose = 15;
    current->pose = pose;
    timer = &current->work2;
    *timer = zero;
    current = (struct PrimarySpriteData *)((u8 *)current + 40);
    *(u8 *)current = zero;
update:
    UpdateCractusArmAngleTowardWario();
}

void InitCractusStemTip(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u32 statusBits asm("r2");
    register u8 *fieldR1 asm("r1");
    register u8 *fieldR0 asm("r0");

    sprite = &gCurrentSprite;
    temp = sprite->status;
    statusBits = 0x8408;
    asm("" : "+r"(statusBits));
    value = statusBits;
    asm("" : "+r"(value));
    zeroByte = 0;
    zeroHalf = 0;
    value |= temp;
    temp = 0xFFFB;
    value &= temp;
    fieldR1 = (u8 *)sprite;
    *(u16 *)fieldR1 = value;
    fieldR1[30] = zeroByte;
    fieldR1 += 32;
    value = 8;
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR0 = (u8 *)sprite + 35;
    temp = 32;
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    value = (u32)sCractusStemTipOam;
    fieldR1 = (u8 *)sprite;
    *(u32 *)(fieldR1 + 4) = value;
    fieldR1[22] = zeroByte;
    *(u16 *)(fieldR1 + 20) = zeroHalf;
    value = 16;
    fieldR1[28] = value;
    SpriteUtilFindSpriteWork3(217, 4);
}

void UpdateCractusStemTip(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *sprites asm("r3");
    register u32 slot asm("r0");
    register u32 size asm("r2");
    register u8 *workIp asm("r12");
    register u8 *workR4 asm("r4");

    if (gUnk_3000A5C > 89) {
        gCurrentSprite.pose = 0;
        gCurrentSprite.globalID = 207;
    } else {
        sprite = &gCurrentSprite;
        sprites = gSpriteData;
        workIp = &sprite->work3;
        slot = *workIp;
        size = sizeof(struct PrimarySpriteData);
        slot *= size;
        sprite->yPosition = ((struct PrimarySpriteData *)(slot + (u32)sprites))->yPosition - 32;
        workR4 = workIp;
        slot = *workR4;
        slot *= size;
        sprite->xPosition = ((struct PrimarySpriteData *)(slot + (u32)sprites))->xPosition;
    }
}

void InitCractusDefeatPiece(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u32 statusBits asm("r2");
    register u8 *fieldR1 asm("r1");
    register u8 *fieldR0 asm("r0");

    sprite = &gCurrentSprite;
    zeroHalf = 0;
    value = 1;
    fieldR1 = (u8 *)sprite;
    fieldR1[26] = value;
    temp = *(u16 *)fieldR1;
    statusBits = 0x400;
    asm("" : "+r"(statusBits));
    value = statusBits;
    zeroByte = 0;
    value |= temp;
    temp = 0xFFFB;
    value &= temp;
    fieldR1 = (u8 *)sprite;
    *(u16 *)fieldR1 = value;
    fieldR1[30] = zeroByte;
    fieldR1 += 32;
    value = 16;
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR1++;
    asm("" : "+r"(fieldR1), "+r"(value));
    *fieldR1 = value;
    fieldR0 = (u8 *)sprite + 35;
    temp = 32;
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    fieldR0++;
    asm("" : "+r"(fieldR0), "+r"(temp));
    *fieldR0 = temp;
    value = (u32)sCractusDefeatPieceOam;
    fieldR1 = (u8 *)sprite;
    *(u32 *)(fieldR1 + 4) = value;
    fieldR1[22] = zeroByte;
    *(u16 *)(fieldR1 + 20) = zeroHalf;
    value = 24;
    fieldR1[28] = value;
    value = *(u16 *)(fieldR1 + 10);
    value += 128;
    *(u16 *)(fieldR1 + 10) = value;
    fieldR0 = (u8 *)sprite + 42;
    *fieldR0 = zeroByte;
    fieldR0 -= 3;
    *fieldR0 = zeroByte;
}

void UpdateCractusDefeatPiecePose24(void)
{
    register u32 value asm("r0");
    register struct PrimarySpriteData *sprite asm("r1");

    value = gWarioData.reaction;
    if (value != 0) {
        sprite = &gCurrentSprite;
        value = 16;
        sprite->pose = value;
    }
}

void UpdateCractusDefeatPiecePose16(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register const s16 *table asm("r5");
    register u8 *timer asm("r6");
    register u8 *indexPtr asm("r12");
    register u32 mask asm("r0");
    register u32 timerValue asm("r1");
    register u32 index asm("r2");
    register u32 velocity asm("r3");
    s32 signedVelocity;
    s32 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    timerValue = *timer;
    mask = 63;
    mask &= timerValue;
    if (mask == 0)
        m4aSongNumStart(SE_CRACTUS_DEFEAT_PIECE_MOVE);

    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusDefeatPieceYVelocity;
    mask = index << 1;
    mask += (u32)table;
    velocity = *(const u16 *)mask;
    zero = 0;
    signedVelocity = *(const s16 *)((const u8 *)mask + zero);
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)table;
        index = 0;
    }
    {
        register u32 nextIndex asm("r0");
        register u8 *destination asm("r1");
        nextIndex = index + 1;
        destination = indexPtr;
        *destination = nextIndex;
    }
    sprite->yPosition += velocity;

    mask = *timer + 1;
    *timer = mask;
    mask = (u8)mask;
    if (mask != 200) {
        sprite->xPosition -= 2;
    } else {
        register u32 zeroTimer asm("r0");
        sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
        sprite->pose = 18;
        zeroTimer = 0;
        *timer = zeroTimer;
    }
}

void UpdateCractusDefeatPiecePose18(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register const s16 *table asm("r5");
    register u8 *timer asm("r6");
    register u8 *indexPtr asm("r12");
    register u32 mask asm("r0");
    register u32 timerValue asm("r1");
    register u32 index asm("r2");
    register u32 velocity asm("r3");
    s32 signedVelocity;
    s32 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    timerValue = *timer;
    mask = 63;
    mask &= timerValue;
    if (mask == 0)
        m4aSongNumStart(SE_CRACTUS_DEFEAT_PIECE_MOVE);

    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sCractusDefeatPieceYVelocity;
    mask = index << 1;
    mask += (u32)table;
    velocity = *(const u16 *)mask;
    zero = 0;
    signedVelocity = *(const s16 *)((const u8 *)mask + zero);
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)table;
        index = 0;
    }
    {
        register u32 nextIndex asm("r0");
        register u8 *destination asm("r1");
        nextIndex = index + 1;
        destination = indexPtr;
        *destination = nextIndex;
    }
    sprite->yPosition += velocity;

    mask = *timer + 1;
    *timer = mask;
    mask = (u8)mask;
    if (mask != 200) {
        sprite->xPosition += 2;
    } else {
        register u32 zeroTimer asm("r0");
        sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
        sprite->pose = 24;
        zeroTimer = 0;
        *timer = zeroTimer;
    }
}

void InitCractusDefeatAttachment(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 collision asm("r2");
    register u32 zeroByte asm("r3");
    register u32 zeroHalf asm("r4");

    sprite = &gCurrentSprite;
    zeroHalf = 0;
    value = 1;
    temp = (u32)sprite;
    *(u8 *)(temp + 26) = value;
    temp = *(u16 *)temp;
    collision = 0x400;
    asm("" : "+r"(collision));
    value = collision;
    asm("" : "+r"(value));
    zeroByte = 0;
    value |= temp;
    temp = 0xFFFB;
    value &= temp;
    temp = (u32)sprite;
    *(u16 *)temp = value;
    value = 61;
    *(u8 *)(temp + 30) = value;
    value = (u32)sprite;
    value += 32;
    collision = 16;
    *(u8 *)value = collision;
    value++;
    *(u8 *)value = collision;
    value++;
    *(u8 *)value = collision;
    value++;
    temp = 32;
    *(u8 *)value = temp;
    value++;
    asm("" : "+r"(value));
    *(u8 *)value = temp;
    temp = (u32)sprite;
    temp += 37;
    value = 24;
    *(u8 *)temp = value;
    temp++;
    asm("" : "+r"(temp));
    value = 20;
    *(u8 *)temp = value;
    value = (u32)sCractusSegmentOam;
    temp = (u32)sprite;
    *(u32 *)(temp + 4) = value;
    *(u8 *)(temp + 22) = zeroByte;
    *(u16 *)(temp + 20) = zeroHalf;
    *(u8 *)(temp + 28) = collision;
    SpriteUtilFindSpriteSlotWork3(221);
}

void UpdateCractusDefeatAttachment(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register struct PrimarySpriteData *sprites asm("r3");
    register struct PrimarySpriteData *parent asm("r4");
    register u32 value asm("r0");
    register u32 slot asm("r1");
    register u32 size asm("r0");

    sprite = &gCurrentSprite;
    sprite->status ^= 4;
    sprites = gSpriteData;
    slot = sprite->work3;
    size = sizeof(struct PrimarySpriteData);
    size *= slot;
    parent = (struct PrimarySpriteData *)(size + (u32)sprites);
    if (parent->status & SPRITE_STATUS_FACING_RIGHT)
        sprite->xPosition = parent->xPosition - 32;
    else
        sprite->xPosition = parent->xPosition + 32;
    slot = sprite->work3;
    size = sizeof(struct PrimarySpriteData);
    size *= slot;
    sprite->yPosition = ((struct PrimarySpriteData *)(size + (u32)sprites))->yPosition;
}

void InitCractusProjectile(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 extent asm("r2");
    register u32 zeroByte asm("r3");
    register u32 zeroHalf asm("r5");

    sprite = &gCurrentSprite;
    temp = sprite->status;
    extent = 0x400;
    asm("" : "+r"(extent));
    value = extent;
    asm("" : "+r"(value));
    zeroByte = 0;
    zeroHalf = 0;
    value |= temp;
    temp = 0xFFFB;
    value &= temp;
    sprite->status = value;
    sprite->warioCollision = 16;
    sprite->drawDistanceDown = 16;
    sprite->drawDistanceUp = 16;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 8;
    sprite->hitboxExtentDown = 8;
    sprite->hitboxExtentLeft = 8;
    sprite->hitboxExtentRight = 8;
    sprite->pOamData = sCractusProjectileFallingOam;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->work0 = 7;
    sprite->work3 = zeroByte;
    sprite->pose = 16;
    sprite->drawPriority = 1;
    func_8023BFC(sprite->yPosition, sprite->xPosition);
    if (gUnk_3000A51 != 0)
        sprite->status = zeroHalf;
    else
        m4aSongNumStart(SE_CRACTUS_PROJECTILE_LAND);
}

void UpdateCractusProjectilePose16(void)
{
    register struct PrimarySpriteData *base asm("r0");
    register struct PrimarySpriteData *sprite asm("r5");
    register struct PrimarySpriteData *current asm("r4");
    register u8 *timer asm("r2");
    register u8 *indexPtr asm("r12");
    register const s16 *table asm("r6");
    register u32 value asm("r0");
    register u32 timerValue asm("r1");
    register u32 index asm("r2");
    register u32 velocity asm("r3");
    s32 signedVelocity;
    s32 zero;

    base = &gCurrentSprite;
    timer = &base->work0;
    timerValue = *timer;
    sprite = base;
    if (timerValue != 0) {
        value = timerValue - 1;
        *timer = value;
        value <<= 24;
        timerValue = value >> 24;
        if (timerValue == 0) {
            value = (u32)sCractusProjectileActiveOam;
            sprite->pOamData = (const struct AnimationFrame *)value;
            sprite->currentAnimationFrame = timerValue;
            sprite->animationTimer = timerValue;
        }
    }

    current = sprite;
    value = func_8023A60(current->yPosition, current->xPosition);
    velocity = value;
    value = gUnk_3000A50;
    if (value != 0) {
        register u32 zeroByte asm("r1");
        register u32 zeroHalf asm("r2");

        zeroByte = 0;
        zeroHalf = 0;
        current->yPosition = velocity;
        value = (u32)sCractusProjectileLandedOam;
        current->pOamData = (const struct AnimationFrame *)value;
        current->currentAnimationFrame = zeroByte;
        current->animationTimer = zeroHalf;
        {
            register u8 *work asm("r1");
            work = &current->work0;
            value = 24;
            *work = value;
        }
        value = 50;
        current->pose = value;
        value = 17;
        current->warioCollision = value;
        value = 2;
        current->drawPriority = value;
        return;
    }

    value = 42;
    /* Preserve the target's constant-plus-base operand order. */
    asm("add %0, %0, %1" : "+r"(value) : "r"(current));
    indexPtr = (u8 *)value;
    index = *(u8 *)value;
    table = sCractusProjectileYVelocity;
    value = index << 1;
    value += (u32)table;
    velocity = *(const u16 *)value;
    zero = 0;
    signedVelocity = *(const s16 *)((const u8 *)value + zero);
    if (signedVelocity == 0x7FFF) {
        register u32 offset asm("r1");
        register u32 yPosition asm("r0");

        offset = index - 1;
        offset <<= 1;
        offset += (u32)table;
        yPosition = current->yPosition;
        offset = *(const u16 *)offset;
        yPosition += offset;
        current->yPosition = yPosition;
    } else {
        register u32 nextIndex asm("r0");
        register u8 *destination asm("r1");

        nextIndex = index + 1;
        destination = indexPtr;
        *destination = nextIndex;
        value = sprite->yPosition;
        value += velocity;
        sprite->yPosition = value;
    }
}

void InitCractusProjectileDespawn(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 value asm("r0");
    register u8 *timer asm("r2");

    sprite = &gCurrentSprite;
    sprite->pOamData = sCractusProjectileDespawnOam;
    value = 0;
    /* agbcc otherwise copies the zero through r2 before this byte store. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(value));
    sprite->animationTimer = value;
    timer = &sprite->work0;
    value = 12;
    *timer = value;
    sprite->pose = 50;
    sprite->drawPriority = 1;
}

void UpdateCractusProjectileDespawn(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0)
        sprite->status = value;
}

void SpriteCractusDefeatPiece(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose) {
    case 0:
        InitCractusDefeatPiece();
        break;
    case 24:
        UpdateCractusDefeatPiecePose24();
        break;
    case 16:
        UpdateCractusDefeatPiecePose16();
        break;
    case 18:
        UpdateCractusDefeatPiecePose18();
        break;
    }
}

void SpriteCractusDefeatAttachment(void)
{
    if (gCurrentSprite.pose == 0)
        InitCractusDefeatAttachment();
    UpdateCractusDefeatAttachment();
}

void SpriteCractusSpawner(void)
{
    switch (gCurrentSprite.pose) {
    case 0:
        InitCractusSpawner();
        break;
    case 1:
        CractusSpawnerWaitForBattle();
        break;
    case 2:
        CractusSpawnerStartBattle();
        break;
    case 31:
    case 33:
        InitCractusSpawnerDefeat();
    case 32:
        UpdateCractusSpawnerDefeat();
        break;
    }
    func_8026838();
}

void SpriteCractusBoss(void)
{
    register u8 *globalBase asm("r0");
    register u32 timerValue asm("r1");
    register u8 *globalTimer asm("r3");
    register struct PrimarySpriteData *sprite asm("r2");

    globalBase = &gUnk_3000A59U;
    timerValue = *globalBase;
    globalTimer = globalBase;
    sprite = &gCurrentSprite;
    if (timerValue != 0) {
        if (timerValue == 60 || timerValue == 1) {
            register u8 *base asm("r0");
            register u8 *work asm("r1");
            register u32 zero asm("r2");

            base = (u8 *)&gCurrentSprite;
            work = base + 39;
            zero = 0;
            *work = zero;
            work++;
            *work = zero;
            sprite = (struct PrimarySpriteData *)base;
        }
        {
            register u32 value asm("r0");
            value = *globalTimer;
            value--;
            *globalTimer = value;
        }
    }

    switch (sprite->pose) {
    case 0:
        InitCractusBoss();
        break;
    case 1:
        UpdateCractusBossPose1();
        break;
    case 24:
        UpdateCractusBossPose24();
        break;
    case 110:
        InitCractusBossPose111();
    case 111:
        UpdateCractusBossPose111();
        break;
    case 113:
        UpdateCractusBossPose113();
        break;
    case 112:
        UpdateCractusBossPose112();
        break;
    case 15:
        UpdateCractusBossPose15();
        break;
    case 16:
        UpdateCractusBossPose16();
        break;
    case 18:
        UpdateCractusBossPose18();
        break;
    case 17:
        UpdateCractusBossPose17();
        break;
    case 19:
        UpdateCractusBossPose19();
        break;
    case 20:
        UpdateCractusBossPose20();
        break;
    case 21:
        UpdateCractusBossPose21();
        break;
    case 22:
        UpdateCractusBossPose22();
        break;
    case 49:
        UpdateCractusBossPose49();
        break;
    case 50:
        UpdateCractusBossPose50();
        break;
    case 109:
        UpdateCractusBossPose109();
        break;
    case 114:
        UpdateCractusBossPose114();
        break;
    case 116:
        UpdateCractusBossPose116();
        break;
    case 121:
        UpdateCractusBossPose121();
        break;
    case 122:
        UpdateCractusBossPose122();
    case 123:
        UpdateCractusBossPose123();
        break;
    }
}

void SpriteCractusStemSegment(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitCractusStemSegment();
    else
        UpdateCractusStemSegment();
}

void SpriteCractusStemTip(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitCractusStemTip();
    else
        UpdateCractusStemTip();
}

void UpdateCractusArmSegmentPosition(void)
{
    register u8 *counterBase asm("r0");
    register u8 *counterPtr asm("r3");
    register u32 counter asm("r2");

    counterBase = &gUnk_3000A5C;
    counter = *counterBase;
    counterPtr = counterBase;
    if (counter > 1) {
        register u8 *spriteBase asm("r0");
        register struct PrimarySpriteData *sprite asm("r4");
        register s32 roomSlot asm("r1");

        spriteBase = (u8 *)&gCurrentSprite;
        roomSlot = spriteBase[24];
        sprite = (struct PrimarySpriteData *)spriteBase;
        switch (roomSlot) {
        case 1:
            if (counter > 15) {
                func_801E430(11, 1, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 2:
            if (counter > 23) {
                func_801E430(11, 2, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 3:
            if (counter > 31) {
                func_801E430(11, 3, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        case 4:
            if (counter > 39) {
                func_801E430(10, 4, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        default:
            if (*counterPtr > 7) {
                func_801E430(10, sprite->roomSlot, 0, sprite->yPosition, sprite->xPosition);
                sprite->status = 0;
            }
            break;
        }
    } else {
        register struct PrimarySpriteData *sprite asm("r3");
        register s32 roomSlot asm("r0");

        sprite = &gCurrentSprite;
        roomSlot = sprite->roomSlot;
        switch (roomSlot) {
        case 1:
            PositionCractusSegmentAtFiveEighths();
            break;
        case 2:
            PositionCractusSegmentAtThreeEighths();
            break;
        case 3:
            PositionCractusSegmentAtOneEighth();
            break;
        case 4:
            {
                register struct PrimarySpriteData *sprites asm("r2");
                register u8 *slotPtr asm("r4");
                register u32 slot asm("r0");
                register u32 size asm("r1");
                struct PrimarySpriteData *target;

                sprites = gSpriteData;
                slotPtr = &sprite->work3;
                slot = *slotPtr;
                size = sizeof(struct PrimarySpriteData);
                slot *= size;
                target = (struct PrimarySpriteData *)(slot + (u32)sprites);
                sprite->yPosition = target->yPosition;
                slot = *slotPtr;
                slot *= size;
                target = (struct PrimarySpriteData *)(slot + (u32)sprites);
                sprite->xPosition = target->xPosition + 32;
            }
            break;
        }
    }
}

void UpdateCractusArmSegmentPose24(void);

void SpriteCractusArmSegment(void)
{
    register struct PrimarySpriteData *current asm("r1");
    register s32 pose asm("r0");

    pose = gUnk_3000A5C;
    if (pose != 0) {
        current = &gCurrentSprite;
        pose = 1;
        current->disableWarioCollisionTimer = pose;
    }

    current = &gCurrentSprite;
    pose = current->pose;
    switch (pose) {
    case 0:
        if (current->globalID == 219)
            InitCractusArmSegmentA();
        else
            InitCractusArmSegmentB();
        break;
    case 23:
        if (current->globalID == 219)
            UpdateCractusArmSegmentAPose23();
        else
            UpdateCractusArmSegmentBPose23();
        UpdateCractusArmSegmentPosition();
        break;
    case 24:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose24();
        UpdateCractusArmSegmentPosition();
        break;
    case 15:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose15();
        UpdateCractusArmSegmentPosition();
        break;
    case 110:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose110();
        UpdateCractusArmSegmentPosition();
        break;
    case 111:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose111();
        UpdateCractusArmSegmentPosition();
        break;
    case 112:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose112();
        UpdateCractusArmSegmentPosition();
        break;
    case 113:
        if (current->roomSlot == 0)
            UpdateCractusArmSegmentPose113();
        UpdateCractusArmSegmentPosition();
        break;
    }

    {
        register struct PrimarySpriteData *sprite;
        register const s16 *table asm("r6");
        register u8 *anglePtr asm("r8");
        register s32 trig asm("r4");
        register s32 scale asm("r5");
        register u32 offset asm("r0");
        register s32 zero asm("r1");
        register u8 *angle asm("r1");
        s32 inverse;

        sprite = &gCurrentSprite;
        if (sprite->roomSlot == 0) {
            table = sSinCosTable;
            anglePtr = &sprite->work0;

            offset = *anglePtr;
            offset += 64;
            offset <<= 1;
            offset += (u32)table;
            zero = 0;
            /* agbcc otherwise chooses a different register for the signed table load. */
            asm("ldrsh %0, [%1, %2]" : "=r"(trig) : "r"(offset), "r"(zero));
            scale = 128;
            scale <<= 1;
            inverse = FixedInverse(scale);
            sprite->affinePA = FixedMul(trig, inverse);

            angle = anglePtr;
            offset = *angle;
            offset <<= 1;
            offset += (u32)table;
            zero = 0;
            asm("ldrsh %0, [%1, %2]" : "=r"(trig) : "r"(offset), "r"(zero));
            inverse = FixedInverse(scale);
            sprite->affinePB = FixedMul(trig, inverse);

            angle = anglePtr;
            offset = *angle;
            offset <<= 1;
            offset += (u32)table;
            zero = 0;
            asm("ldrsh %0, [%1, %2]" : "=r"(trig) : "r"(offset), "r"(zero));
            trig = -trig;
            inverse = FixedInverse(scale);
            sprite->affinePC = FixedMul(trig, inverse);

            angle = anglePtr;
            offset = *angle;
            offset += 64;
            offset <<= 1;
            offset += (u32)table;
            zero = 0;
            asm("ldrsh %0, [%1, %2]" : "=r"(trig) : "r"(offset), "r"(zero));
            inverse = FixedInverse(scale);
            sprite->affinePD = FixedMul(trig, inverse);
        } else {
            offset = 1;
            sprite->disableWarioCollisionTimer = offset;
        }
    }
}

void SpriteCractusProjectile(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register u32 value asm("r0");

    value = gWarioData.reaction;
    sprite = &gCurrentSprite;
    if (value == 5)
        sprite->disableWarioCollisionTimer = 1;

    switch (sprite->pose) {
    case 0:
        InitCractusProjectile();
        break;
    case 16:
        UpdateCractusProjectilePose16();
        break;
    case 50:
        UpdateCractusProjectileDespawn();
        break;
    default:
        InitCractusProjectileDespawn();
        break;
    }
}

void SpriteCractusImpactEffect(void)
{
    register u8 *sprite asm("r12");
    register u32 value asm("r0");
    register u32 temp asm("r1");
    register u32 extent asm("r2");
    register u32 zero asm("r3");
    register u32 pose asm("r4");
    register u8 *timer asm("r1");

    sprite = (u8 *)&gCurrentSprite;
    value = 1;
    temp = (u32)sprite;
    *(u8 *)(temp + 31) = value;
    pose = *(u8 *)(temp + 28);
    if (pose == 0) {
        temp = *(u16 *)temp;
        extent = 128;
        extent <<= 3;
        asm("" : "+r"(extent));
        value = extent;
        asm("" : "+r"(value));
        zero = 0;
        value |= temp;
        temp = 0xFFFB;
        value &= temp;
        temp = (u32)sprite;
        *(u16 *)temp = value;
        *(u8 *)(temp + 30) = zero;

        value = (u32)sprite + 32;
        temp = 32;
        *(u8 *)value = temp;
        value++;
        extent = 16;
        *(u8 *)value = extent;
        value++;
        *(u8 *)value = temp;
        value++;
        temp = 4;
        *(u8 *)value = temp;
        value++;
        *(u8 *)value = temp;
        value++;
        *(u8 *)value = temp;
        value++;
        asm("" : "+r"(value));
        *(u8 *)value = temp;

        value = (u32)sCractusImpactEffectOam;
        temp = (u32)sprite;
        *(u32 *)(temp + 4) = value;
        *(u8 *)(temp + 22) = zero;
        *(u16 *)(temp + 20) = pose;
        temp += 39;
        value = 56;
        *(u8 *)temp = value;
        value = (u32)sprite;
        *(u8 *)(value + 28) = extent;
    }

    timer = sprite + 39;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0) {
        temp = (u32)sprite;
        *(u16 *)temp = value;
    }
}
