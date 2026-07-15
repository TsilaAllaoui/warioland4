#include "sprite_ai/tobawani.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sTobawaniTurnOam_Frame2[] = {
    3,
    OAM_ENTRY(-15, -23, SPRITE_SIZE_16x16, 0, 552, 8, 0),
    OAM_ENTRY(1, -23, SPRITE_SIZE_8x16, 0, 554, 8, 0),
    OAM_ENTRY(-15, -7, SPRITE_SIZE_32x8, 0, 616, 8, 0),
};

const u8 sTobawaniRawData_83C972C[] = {
    0x03, 0x00, 0xE9, 0x00, 0xF7, 0x41, 0x0B, 0x82, 0xF9, 0x40, 0xF7, 0x01, 0x4B, 0x82, 0xF6, 0x00,
    0x07, 0x00, 0x6C, 0x82, 0x03, 0x00, 0xE9, 0x00, 0xF9, 0x51, 0x0B, 0x82, 0xF9, 0x40, 0xF9, 0x11,
    0x4B, 0x82, 0xF6, 0x00, 0xF1, 0x11, 0x6C, 0x82, 0x03, 0x00, 0xE9, 0x00, 0xFF, 0x51, 0x28, 0x82,
    0xE9, 0x80, 0xF7, 0x11, 0x2A, 0x82, 0xF9, 0x40, 0xEF, 0x51, 0x68, 0x82,
};

const u16 sTobawaniChargeOam_Frame1[] = {
    4,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 580, 8, 0),
    OAM_ENTRY(-15, -18, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, 0, 520, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sTobawaniChargeOam_Frame2[] = {
    6,
    OAM_ENTRY(-6, -7, SPRITE_SIZE_16x8, 0, 582, 8, 0),
    OAM_ENTRY(-16, -12, SPRITE_SIZE_16x16, 0, 589, 8, 0),
    OAM_ENTRY(-15, -20, SPRITE_SIZE_16x8, 0, 523, 8, 0),
    OAM_ENTRY(-23, -20, SPRITE_SIZE_8x8, 0, 620, 8, 0),
    OAM_ENTRY(-7, -26, SPRITE_SIZE_8x8, 0, 522, 8, 0),
    OAM_ENTRY(-1, -19, SPRITE_SIZE_16x16, 0, 578, 8, 0),
};

const u16 sTobawaniChargeOam_Frame3[] = {
    5,
    OAM_ENTRY(-6, -6, SPRITE_SIZE_16x8, 0, 612, 8, 0),
    OAM_ENTRY(-15, -17, SPRITE_SIZE_16x16, 0, 555, 8, 0),
    OAM_ENTRY(1, -17, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, 0, 522, 8, 0),
    OAM_ENTRY(-21, -17, SPRITE_SIZE_8x8, 0, 620, 8, 0),
};

const u16 sTobawaniChargeOam_Frame4[] = {
    4,
    OAM_ENTRY(-4, -5, SPRITE_SIZE_16x8, 0, 614, 8, 0),
    OAM_ENTRY(-17, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(-1, -17, SPRITE_SIZE_16x16, 0, 576, 8, 0),
    OAM_ENTRY(-10, -22, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sTobawaniTurnOam_Frame1[] = {
    2,
    OAM_ENTRY(-16, -23, SPRITE_SIZE_32x16, 0, 527, 8, 0),
    OAM_ENTRY(-16, -7, SPRITE_SIZE_32x8, 0, 591, 8, 0),
};

const u8 sTobawaniRawData_83C97F0[] = {
    0x02, 0x00, 0xE9, 0x40, 0xF0, 0x91, 0x0F, 0x82, 0xF9, 0x40, 0xF0, 0x51, 0x4F, 0x82, 0x03, 0x00,
    0xF9, 0x40, 0xF5, 0x11, 0x44, 0x82, 0xEE, 0x40, 0xF0, 0x91, 0x00, 0x82, 0xE8, 0x00, 0x04, 0x00,
    0x0A, 0x82, 0x04, 0x00, 0xF9, 0x40, 0xFA, 0x01, 0x46, 0x82, 0xED, 0x00, 0xEF, 0x41, 0x00, 0x82,
    0xEE, 0x00, 0xFF, 0x41, 0x40, 0x82, 0xE7, 0x00, 0xF6, 0x01, 0x0A, 0x82, 0x04, 0x00, 0xF9, 0x40,
    0xFB, 0x01, 0x66, 0x82, 0xEF, 0x00, 0xF1, 0x41, 0x04, 0x82, 0xEE, 0x00, 0x00, 0x40, 0x40, 0x82,
    0xE9, 0x00, 0xF8, 0x01, 0x08, 0x82, 0x04, 0x00, 0xF9, 0x40, 0xFB, 0x01, 0x66, 0x82, 0xEF, 0x00,
    0xF1, 0x41, 0x04, 0x82, 0xEE, 0x00, 0x00, 0x40, 0x40, 0x82, 0xE9, 0x00, 0xF8, 0x01, 0x0A, 0x82,
};

const u16 sTobawaniChargeOam_Frame5[] = {
    4,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 580, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_8x8, 0, 522, 8, 0),
};

const u8 sTobawaniRawData_83C987A[] = {
    0x04, 0x00, 0xFA, 0x40, 0xFB, 0x01, 0x66, 0x82, 0xF0, 0x00, 0xF1, 0x41, 0x19, 0x82, 0xEF, 0x00,
    0x00, 0x40, 0x40, 0x82, 0xEA, 0x00, 0xF6, 0x01, 0x0A, 0x82,
};

const u16 sTobawaniRecoveryOam_Frame1[] = {
    4,
    OAM_ENTRY(0, -17, SPRITE_SIZE_16x16, 0, 595, 8, 0),
    OAM_ENTRY(2, -1, SPRITE_SIZE_8x8, 0, 623, 8, 0),
    OAM_ENTRY(-15, -16, SPRITE_SIZE_16x16, 0, 531, 8, 0),
    OAM_ENTRY(-7, -22, SPRITE_SIZE_8x8, 0, 522, 8, 0),
};

const u16 sTobawaniRecoveryOam_Frame2[] = {
    3,
    OAM_ENTRY(-16, -17, SPRITE_SIZE_16x16, 0, 533, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_16x16, 0, 597, 8, 0),
    OAM_ENTRY(-7, -23, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sTobawaniRecoveryOam_Frame3[] = {
    4,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_16x16, 0, 535, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_16x16, 0, 599, 8, 0),
    OAM_ENTRY(8, 1, SPRITE_SIZE_8x8, 0, 624, 0, 0),
    OAM_ENTRY(-7, -22, SPRITE_SIZE_8x8, 0, 521, 8, 0),
};

const u16 sTobawaniKnockbackOam_Frame3[] = {
    5,
    OAM_ENTRY(-11, -30, SPRITE_SIZE_16x16, 0, 541, 8, 0),
    OAM_ENTRY(5, -30, SPRITE_SIZE_8x16, 0, 543, 8, 0),
    OAM_ENTRY(8, -19, SPRITE_SIZE_8x8, 0, 625, 8, 0),
    OAM_ENTRY(-19, -29, SPRITE_SIZE_8x8, 0, 626, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 537, 8, 0),
};

const u16 sTobawaniKnockbackOam_Frame2[] = {
    4,
    OAM_ENTRY(-7, -31, SPRITE_SIZE_16x16, 0, 604, 8, 0),
    OAM_ENTRY(-15, -31, SPRITE_SIZE_8x16, 0, 603, 8, 0),
    OAM_ENTRY(7, -20, SPRITE_SIZE_8x8, 0, 625, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 606, 8, 0),
};

const u16 sTobawaniKnockbackOam_Frame1[] = {
    3,
    OAM_ENTRY(-8, -32, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(6, -22, SPRITE_SIZE_8x8, 0, 625, 8, 0),
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x16, 0, 606, 8, 0),
};

const u16 sTobawaniDefeatedOam_Frame1[] = {
    5,
    OAM_ENTRY(-6, -32, SPRITE_SIZE_8x16, 0, 539, 8, 0),
    OAM_ENTRY(2, -31, SPRITE_SIZE_8x16, 0, 605, 8, 0),
    OAM_ENTRY(-7, -16, SPRITE_SIZE_16x8, 0, 601, 8, 0),
    OAM_ENTRY(-5, -8, SPRITE_SIZE_16x8, 0, 633, 8, 0),
    OAM_ENTRY(8, -21, SPRITE_SIZE_8x8, 0, 625, 8, 0),
};

const u16 sTobawaniDefeatedOam_Frame2[] = {
    4,
    OAM_ENTRY(1, -31, SPRITE_SIZE_8x16, 0, 540, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x16, 0, 601, 8, 0),
    OAM_ENTRY(-7, -32, SPRITE_SIZE_8x16, 0, 539, 8, 0),
    OAM_ENTRY(8, -22, SPRITE_SIZE_8x8, 0, 625, 8, 0),
};

const u16 sTobawaniDefeatedOam_Frame3[] = {
    5,
    OAM_ENTRY(-14, -31, SPRITE_SIZE_16x16, 0, 603, 8, 0),
    OAM_ENTRY(1, -32, SPRITE_SIZE_8x16, 0, 540, 8, 0),
    OAM_ENTRY(-6, -16, SPRITE_SIZE_16x8, 0, 601, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_16x8, 0, 633, 8, 0),
    OAM_ENTRY(7, -24, SPRITE_SIZE_8x8, 0, 625, 8, 0),
};

const u16 sTobawaniPatrolOam_Frame1[] = {
    3,
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, 0, 614, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const u16 sTobawaniPatrolOam_Frame2[] = {
    4,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x8, 0, 614, 8, 0),
    OAM_ENTRY(-1, -18, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-17, -18, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-10, -24, SPRITE_SIZE_8x8, 0, 521, 8, 0),
};

const u16 sTobawaniPatrolOam_Frame3[] = {
    3,
    OAM_ENTRY(-4, -7, SPRITE_SIZE_16x8, 0, 614, 8, 0),
    OAM_ENTRY(-16, -18, SPRITE_SIZE_32x16, 0, 516, 8, 0),
    OAM_ENTRY(-9, -24, SPRITE_SIZE_8x8, 0, 522, 8, 0),
};

const u16 sTobawaniPatrolOam_Frame4[] = {
    4,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_16x8, 0, 614, 8, 0),
    OAM_ENTRY(-15, -18, SPRITE_SIZE_16x16, 0, 516, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_16x16, 0, 578, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, 0, 520, 8, 0),
};

const struct AnimationFrame sTobawaniPatrolOam[] = {
    {sTobawaniPatrolOam_Frame1, 5},
    {sTobawaniPatrolOam_Frame2, 5},
    {sTobawaniPatrolOam_Frame3, 5},
    {sTobawaniPatrolOam_Frame4, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTobawaniTurnOam[] = {
    {sTobawaniTurnOam_Frame1, 2},
    {sTobawaniTurnOam_Frame2, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTobawaniChargeOam[] = {
    {sTobawaniChargeOam_Frame1, 2},
    {sTobawaniChargeOam_Frame2, 3},
    {sTobawaniChargeOam_Frame3, 2},
    {sTobawaniChargeOam_Frame4, 2},
    {sTobawaniChargeOam_Frame5, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTobawaniRecoveryOam[] = {
    {sTobawaniRecoveryOam_Frame1, 3},
    {sTobawaniRecoveryOam_Frame2, 3},
    {sTobawaniRecoveryOam_Frame3, 3},
    {sTobawaniRecoveryOam_Frame2, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTobawaniKnockbackOam[] = {
    {sTobawaniKnockbackOam_Frame1, 2},
    {sTobawaniKnockbackOam_Frame2, 1},
    {sTobawaniKnockbackOam_Frame3, 3},
    {sTobawaniKnockbackOam_Frame2, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTobawaniFallingOam[] = {
    {sTobawaniKnockbackOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const u8 sTobawaniRawData_83C9AB0[] = {
    0xE2, 0x97, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x98, 0x3C, 0x08, 0x03, 0x00, 0x00, 0x00, 0x7A, 0x98, 0x3C, 0x08, 0xC8, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x97, 0x3C, 0x08, 0x07, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sTobawaniDefeatedOam[] = {
    {sTobawaniDefeatedOam_Frame1, 3},
    {sTobawaniDefeatedOam_Frame2, 2},
    {sTobawaniDefeatedOam_Frame3, 4},
    {sTobawaniDefeatedOam_Frame2, 2},
    ANIMATION_TERMINATOR
};

void TobawaniEnterWater(void)
{
    gCurrentSprite.yPosition = gUnk_3000964[gCurrentSprite.roomSlot][0] * 64 + 64;
    gCurrentSprite.pose = 39;
    gCurrentSprite.warioCollision = 80;
    m4aSongNumStart(SE_ENTER_WATER);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition, SSPRITE_07);
    gCurrentSprite.status &= ~0x200;
    gCurrentSprite.status |= 0x400;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 144;
    gCurrentSprite.hitboxExtentLeft = 52;
    gCurrentSprite.hitboxExtentRight = 48;
}

void InitTobawani(void)
{
    gCurrentSprite.status |= 0x400;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 144;
    gCurrentSprite.hitboxExtentLeft = 52;
    gCurrentSprite.hitboxExtentRight = 48;
    gCurrentSprite.work0 = 60;
}

void TobawaniSetPatrol(void)
{
    gCurrentSprite.pOamData = sTobawaniPatrolOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.warioCollision = 80;
}

void TobawaniPatrol(void)
{
    u32 horizontal;
    u32 vertical;
    register struct PrimarySpriteData* sprite asm("r4");

    horizontal = 0;
    vertical = 0;
    if (gWarioData.reaction == 1) {
        horizontal = SpriteUtilCheckWarioNearbyLeftRight(70, 520);
    } else {
        vertical = SpriteUtilCheckWarioNearbyAboveBelow(520, 70);
    }

    sprite = &gCurrentSprite;
    {
        register u8* timerPointer asm("r2");
        register u32 timer asm("r1");
        register u32 newTimer asm("r0");

        timerPointer = &sprite->work0;
        timer = *timerPointer;
        newTimer = timer - 1;
        *timerPointer = newTimer;
        if (timer == 0) {
            goto idle;
        }
    }
    if (vertical == 1) {
        sprite->pose = 112;
        return;
    }

    {
        register u32 xPosition asm("r0");

        if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
            if (horizontal == 8) {
                goto attack;
            }
            func_8023BFC((u16)(sprite->yPosition - 16),
                         (u16)(sprite->xPosition + 110));
            if ((gUnk_3000A51 & 15) != 0) {
                goto idle;
            }
            xPosition = sprite->xPosition + 3;
            goto updatePosition;
        }
        if (horizontal == 4) {
attack:
            sprite->pose = 110;
            return;
        }
        func_8023BFC((u16)(sprite->yPosition - 16),
                     (u16)(sprite->xPosition - 110));
        if ((gUnk_3000A51 & 15) != 0) {
idle:
            sprite->pose = 17;
            return;
        }
        xPosition = sprite->xPosition - 3;
updatePosition:
        sprite->xPosition = xPosition;
    }
}

void TobawaniSetTurnAround(void)
{
    gCurrentSprite.pOamData = sTobawaniTurnOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 5;
    gCurrentSprite.pose = 18;
    gCurrentSprite.warioCollision = 80;
}

void TobawaniTurnAround(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r12");
    register u32 temp asm("r0");
    register u32 remaining asm("r3");
    u32 zero;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    temp = *timer;
    temp--;
    *timer = temp;
    remaining = (u8)temp;
    if (remaining == 0) {
        if (sprite->pose == 18) {
            temp = sprite->status;
            temp ^= SPRITE_STATUS_FACING_RIGHT;
            zero = 0;
            sprite->status = temp;
            sprite->pOamData = sTobawaniTurnOam;
            sprite->currentAnimationFrame = zero;
            sprite->animationTimer = remaining;
            temp = 20;
            sprite->pose = temp;
            temp = 3;
            *timer = temp;
        } else {
            temp = 120;
            *timer = temp;
            temp = 15;
            sprite->pose = temp;
        }
    }
}

void TobawaniSetCharge(void)
{
    gCurrentSprite.pOamData = sTobawaniChargeOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 54;
    gCurrentSprite.pose = 111;
    gCurrentSprite.warioCollision = 79;
}

void TobawaniCharge(void)
{
    struct PrimarySpriteData* sprite;
    u32 xPosition;

    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->pose = 15;
        sprite->work0 = 80;
        return;
    }

    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC((u16)(sprite->yPosition - 16), (u16)(sprite->xPosition + 110));
        if ((gUnk_3000A51 & 15) != 0) {
            goto blocked;
        }
        xPosition = sprite->xPosition + 6;
        goto updatePosition;
    }

    func_8023BFC((u16)(sprite->yPosition - 16), (u16)(sprite->xPosition - 110));
    if ((gUnk_3000A51 & 15) != 0) {
blocked:
        sprite->pose = 17;
        return;
    }
    xPosition = sprite->xPosition - 6;
updatePosition:
    sprite->xPosition = xPosition;
}

void TobawaniSetKnockback(void)
{
    gCurrentSprite.pOamData = sTobawaniKnockbackOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 113;
    gCurrentSprite.warioCollision = 55;
    gCurrentSprite.status &= ~0x400;
    gCurrentSprite.hitboxExtentUp = 96;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 24;
    gCurrentSprite.hitboxExtentRight = 20;
    m4aSongNumStart(SE_TOBAWANI_KNOCKBACK);
}

void TobawaniKnockback(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* indexPointer asm("r12");
    register u8 index asm("r3");
    register u16 velocity asm("r4");
    register int zero asm("r5");
    register u8 nextIndex asm("r0");
    register u8* storePointer asm("r1");
    const s16* table;
    const s16* entry;
    u16 y;

    sprite = &gCurrentSprite;
    indexPointer = &sprite->work3;
    index = *indexPointer;
    table = sTobawaniKnockbackYVelocity;
    entry = table + index;
    velocity = *entry;
    zero = 0;
    if (*(s16*)entry == S16_MAX) {
        sprite->pose = 114;
    } else {
        nextIndex = index + 1;
        storePointer = indexPointer;
        *storePointer = nextIndex;
        y = sprite->yPosition;
        sprite->yPosition = y + velocity;
    }
}

void TobawaniSetFall(void)
{
    gCurrentSprite.pOamData = sTobawaniFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.pose = 115;
}

void TobawaniFall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register const s16* table asm("r5");
    register int zero asm("r6");
    register u32 temp asm("r0");
    register u32 auxiliary asm("r1");
    register u32 index asm("r2");
    register u32 velocity asm("r3");
    register u8* indexPointer asm("r12");

    sprite = &gCurrentSprite;
    func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        TobawaniEnterWater();
    } else {
        indexPointer = &sprite->work3;
        index = *indexPointer;
        table = sTobawaniFallYVelocity;
        temp = index;
        temp <<= 1;
        temp += (u32)table;
        velocity = *(u16*)temp;
        zero = 0;
        auxiliary = *(s16*)temp;
        temp = S16_MAX;
        if (auxiliary == temp) {
            auxiliary = index - 1;
            auxiliary <<= 1;
            auxiliary += (u32)table;
            temp = sprite->yPosition;
            auxiliary = *(u16*)auxiliary;
            temp += auxiliary;
        } else {
            temp = index + 1;
            auxiliary = (u32)indexPointer;
            *(u8*)auxiliary = temp;
            temp = sprite->yPosition;
            temp += velocity;
        }
        sprite->yPosition = temp;
    }
}

void TobawaniSetRecovery(void)
{
    gCurrentSprite.pOamData = sTobawaniRecoveryOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 80;
    gCurrentSprite.pose = 111;
}

void TobawaniPrepareFallOffscreen(void)
{
    gCurrentSprite.pOamData = sTobawaniDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.status &= ~0x100;
    gCurrentSprite.status |= 0x200;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void TobawaniStartFallOffscreenRight(void)
{
    gCurrentSprite.pose = 32;
    TobawaniPrepareFallOffscreen();
}

void TobawaniStartFallOffscreenLeft(void)
{
    gCurrentSprite.pose = 34;
    TobawaniPrepareFallOffscreen();
}

void TobawaniSetWallFall(void)
{
    gCurrentSprite.pOamData = sTobawaniFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work3 = 0;
}

void TobawaniStartWallFallRight(void)
{
    gCurrentSprite.pose = 52;
    TobawaniSetWallFall();
}

void TobawaniStartWallFallLeft(void)
{
    gCurrentSprite.pose = 54;
    TobawaniSetWallFall();
}

void TobawaniWallFall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register const s16* table asm("r5");
    register int zero asm("r6");
    register u32 temp asm("r0");
    register u32 auxiliary asm("r1");
    register u32 index asm("r2");
    register u32 velocity asm("r3");
    register u8* indexPointer asm("r12");

    sprite = &gCurrentSprite;
    func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        TobawaniEnterWater();
    } else if ((gUnk_3000A50 & 15) != 0) {
        if (sprite->pose == 52) {
            sprite->pose = 31;
        } else {
            sprite->pose = 33;
        }
    } else {
        indexPointer = &sprite->work3;
        index = *indexPointer;
        table = sTobawaniWallFallYVelocity;
        temp = index;
        temp <<= 1;
        temp += (u32)table;
        velocity = *(u16*)temp;
        zero = 0;
        auxiliary = *(s16*)temp;
        temp = S16_MAX;
        if (auxiliary == temp) {
            auxiliary = index - 1;
            auxiliary <<= 1;
            auxiliary += (u32)table;
            temp = sprite->yPosition;
            auxiliary = *(u16*)auxiliary;
            temp += auxiliary;
        } else {
            temp = index + 1;
            auxiliary = (u32)indexPointer;
            *(u8*)auxiliary = temp;
            temp = sprite->yPosition;
            temp += velocity;
        }
        sprite->yPosition = temp;
    }
}

void TobawaniWallFallRight(void)
{
    gCurrentSprite.xPosition += 2;
    func_8023BFC(gCurrentSprite.yPosition - 32,
                 gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
    if (gUnk_3000A51 == 17) {
        gCurrentSprite.pose = 54;
        m4aSongNumStart(SE_TOBAWANI_WALL_BOUNCE);
    }
    TobawaniWallFall();
}

void TobawaniWallFallLeft(void)
{
    gCurrentSprite.xPosition -= 2;
    func_8023BFC(gCurrentSprite.yPosition - 32,
                 gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
    if (gUnk_3000A51 == 17) {
        gCurrentSprite.pose = 52;
        m4aSongNumStart(SE_TOBAWANI_WALL_BOUNCE);
    }
    TobawaniWallFall();
}

void TobawaniDie(void)
{
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
}

void SpriteTobawani(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitTobawani();
        case 15:
            TobawaniSetPatrol();
        case 16:
            TobawaniPatrol();
            break;
        case 17:
            TobawaniSetTurnAround();
        case 18:
        case 20:
            TobawaniTurnAround();
            break;
        case 110:
            TobawaniSetCharge();
        case 111:
            TobawaniCharge();
            break;
        case 112:
            TobawaniSetKnockback();
        case 113:
            TobawaniKnockback();
            break;
        case 114:
            TobawaniSetFall();
        case 115:
            TobawaniFall();
            break;
        case 39:
        case 41:
            TobawaniSetRecovery();
            break;
        case 31:
        case 79:
        case 106:
            TobawaniStartFallOffscreenRight();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
        case 80:
        case 105:
            TobawaniStartFallOffscreenLeft();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 35:
        case 51:
            TobawaniStartWallFallRight();
            break;
        case 52:
            TobawaniWallFallRight();
            break;
        case 37:
        case 53:
            TobawaniStartWallFallLeft();
            break;
        case 54:
            TobawaniWallFallLeft();
            break;
        default:
            TobawaniDie();
            break;
    }
}
