#include "sprite_ai/falling_snow.h"

#include "global_data.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

#include "oam.h"
extern u8 gUnk_3000964[][3];
extern void func_801E3A8(u8, u8, u8, u32, u32, u32);

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sFallingSnowIdleOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, 0, 512, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame2[] = {
    1,
    OAM_ENTRY(-9, -17, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame3[] = {
    1,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, 0, 544, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame4[] = {
    2,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_16x8, 0, 514, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 515, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame5[] = {
    3,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_16x8, 0, 546, 8, 0),
    OAM_ENTRY(4, -17, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x8, 0, 544, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame6[] = {
    3,
    OAM_ENTRY(-5, -16, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 546, 8, 0),
    OAM_ENTRY(-13, -16, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 548, 8, 0),
    OAM_ENTRY(-9, -12, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 544, 8, 0),
};

const u16 sFallingSnowIdleOam_Frame7[] = {
    2,
    OAM_ENTRY(-12, -17, SPRITE_SIZE_16x16, 0, 517, 8, 0),
    OAM_ENTRY(4, -17, SPRITE_SIZE_8x16, 0, 519, 8, 0),
};

const u8 sFallingSnowRawData_83BD230[] = {
    0x02, 0x00, 0xF0, 0x00, 0xF4, 0x41, 0x05, 0x82, 0xF0, 0x80, 0x04, 0x00, 0x07, 0x82,
};

const u16 sFallingSnowFallingOam_Frame1[] = {
    4,
    OAM_ENTRY(-12, -20, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(4, -20, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-12, -4, SPRITE_SIZE_16x8, 0, 549, 8, 0),
    OAM_ENTRY(4, -4, SPRITE_SIZE_8x8, 0, 551, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_16x8, 0, 555, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x8, 0, 557, 8, 0),
    OAM_ENTRY(-9, -16, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame2[] = {
    2,
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -16, SPRITE_SIZE_8x16, 0, 528, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame3[] = {
    3,
    OAM_ENTRY(-4, -16, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(3, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 530, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame4[] = {
    2,
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x16, 0, 530, 8, 0),
    OAM_ENTRY(4, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame5[] = {
    3,
    OAM_ENTRY(-12, -23, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(4, -23, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 534, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame6[] = {
    3,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 566, 8, 0),
    OAM_ENTRY(3, -19, SPRITE_SIZE_16x8, 0, 536, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 536, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame7[] = {
    4,
    OAM_ENTRY(12, -14, SPRITE_SIZE_8x8, 0, 569, 8, 0),
    OAM_ENTRY(3, -20, SPRITE_SIZE_8x8, 0, 568, 8, 0),
    OAM_ENTRY(-20, -13, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 569, 8, 0),
    OAM_ENTRY(-11, -18, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 568, 8, 0),
};

const u16 sFallingSnowMeltingOam_Frame8[] = {
    3,
    OAM_ENTRY(10, -13, SPRITE_SIZE_8x8, 0, 538, 8, 0),
    OAM_ENTRY(2, -19, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 538, 8, 0),
    OAM_ENTRY(-14, -15, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 538, 8, 0),
};

const u16 sFallingSnowChildOam_Frame8[] = {
    1,
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, 0, 570, 8, 0),
};

const u16 sFallingSnowDropOam_Frame2[] = {
    2,
    OAM_ENTRY(-11, -17, SPRITE_SIZE_16x16, 0, 517, 8, 0),
    OAM_ENTRY(5, -17, SPRITE_SIZE_8x16, 0, 519, 8, 0),
};

const u16 sFallingSnowDropOam_Frame1[] = {
    2,
    OAM_ENTRY(-13, -17, SPRITE_SIZE_16x16, 0, 517, 8, 0),
    OAM_ENTRY(3, -17, SPRITE_SIZE_8x16, 0, 519, 8, 0),
};

const u16 sFallingSnowChildOam_Frame1[] = {
    1,
    OAM_ENTRY(1, -7, SPRITE_SIZE_8x8, 0, 571, 8, 0),
};

const u16 sFallingSnowChildOam_Frame2[] = {
    2,
    OAM_ENTRY(1, 3, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(2, -6, SPRITE_SIZE_8x8, 0, 539, 8, 0),
};

const u16 sFallingSnowChildOam_Frame3[] = {
    3,
    OAM_ENTRY(1, 7, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(4, -2, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(-15, -7, SPRITE_SIZE_8x8, 0, 571, 8, 0),
};

const u16 sFallingSnowChildOam_Frame4[] = {
    4,
    OAM_ENTRY(2, 9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(4, -4, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-16, 3, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(-15, -6, SPRITE_SIZE_8x8, 0, 539, 8, 0),
};

const u16 sFallingSnowChildOam_Frame5[] = {
    3,
    OAM_ENTRY(6, 14, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(-15, 7, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(-12, -2, SPRITE_SIZE_8x8, 0, 540, 8, 0),
};

const u16 sFallingSnowChildOam_Frame6[] = {
    2,
    OAM_ENTRY(-14, 17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-12, 4, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sFallingSnowChildOam_Frame7[] = {
    1,
    OAM_ENTRY(-10, 16, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sFallingSnowChildOam_Frame9[] = {
    2,
    OAM_ENTRY(1, 7, SPRITE_SIZE_8x8, 0, 571, 8, 0),
    OAM_ENTRY(4, -2, SPRITE_SIZE_8x8, 0, 540, 8, 0),
};

const u16 sFallingSnowChildOam_Frame10[] = {
    2,
    OAM_ENTRY(2, 9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(4, -4, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sFallingSnowChildOam_Frame11[] = {
    1,
    OAM_ENTRY(6, 14, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sFallingSnowResetOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -23, SPRITE_SIZE_16x16, 0, 532, 8, 0),
    OAM_ENTRY(4, -23, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 532, 8, 0),
};

const u16 sFallingSnowResetOam_Frame2[] = {
    2,
    OAM_ENTRY(3, -19, SPRITE_SIZE_16x8, 0, 536, 8, 0),
    OAM_ENTRY(-18, -19, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 536, 8, 0),
};

const u16 sFallingSnowResetOam_Frame3[] = {
    4,
    OAM_ENTRY(4, -22, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(-13, -22, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-19, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 541, 8, 0),
    OAM_ENTRY(11, -18, SPRITE_SIZE_8x8, 0, 541, 8, 0),
};

const u16 sFallingSnowResetOam_Frame4[] = {
    6,
    OAM_ENTRY(-16, -27, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(8, -27, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(17, -17, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
    OAM_ENTRY(-25, -17, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(-12, -20, SPRITE_SIZE_8x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 541, 8, 0),
    OAM_ENTRY(4, -20, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 541, 8, 0),
};

const u16 sFallingSnowFragmentRightOam_Frame1[] = {
    3,
    OAM_ENTRY(-9, -21, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_8x16, 0, 532, 8, 0),
    OAM_ENTRY(-17, -24, SPRITE_SIZE_8x8, 0, 571, 8, 0),
};

const u16 sFallingSnowFragmentLeftOam_Frame1[] = {
    3,
    OAM_ENTRY(1, -21, SPRITE_SIZE_8x16, 0, 532, 8, 0),
    OAM_ENTRY(4, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(9, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 571, 8, 0),
};

const struct AnimationFrame sFallingSnowIdleOam[] = {
    {sFallingSnowIdleOam_Frame1, 2},
    {sFallingSnowIdleOam_Frame2, 2},
    {sFallingSnowIdleOam_Frame3, 2},
    {sFallingSnowIdleOam_Frame1, 2},
    {sFallingSnowIdleOam_Frame2, 2},
    {sFallingSnowIdleOam_Frame3, 2},
    {sFallingSnowIdleOam_Frame1, 2},
    {sFallingSnowIdleOam_Frame2, 2},
    {sFallingSnowIdleOam_Frame3, 2},
    {sFallingSnowIdleOam_Frame4, 2},
    {sFallingSnowIdleOam_Frame3, 2},
    {sFallingSnowIdleOam_Frame4, 2},
    {sFallingSnowIdleOam_Frame5, 2},
    {sFallingSnowIdleOam_Frame6, 2},
    {sFallingSnowIdleOam_Frame7, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowFallingOam[] = {
    {sFallingSnowFallingOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowMeltingOam[] = {
    {sFallingSnowMeltingOam_Frame1, 2},
    {sFallingSnowMeltingOam_Frame2, 2},
    {sFallingSnowMeltingOam_Frame3, 2},
    {sFallingSnowMeltingOam_Frame4, 3},
    {sFallingSnowMeltingOam_Frame5, 2},
    {sFallingSnowMeltingOam_Frame6, 2},
    {sFallingSnowMeltingOam_Frame7, 2},
    {sFallingSnowMeltingOam_Frame8, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowChildOam[] = {
    {sFallingSnowChildOam_Frame1, 4},
    {sFallingSnowChildOam_Frame2, 4},
    {sFallingSnowChildOam_Frame3, 4},
    {sFallingSnowChildOam_Frame4, 4},
    {sFallingSnowChildOam_Frame5, 4},
    {sFallingSnowChildOam_Frame6, 4},
    {sFallingSnowChildOam_Frame7, 4},
    {sFallingSnowChildOam_Frame8, 20},
    {sFallingSnowChildOam_Frame1, 4},
    {sFallingSnowChildOam_Frame2, 4},
    {sFallingSnowChildOam_Frame9, 4},
    {sFallingSnowChildOam_Frame10, 4},
    {sFallingSnowChildOam_Frame11, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowDropOam[] = {
    {sFallingSnowDropOam_Frame1, 2},
    {sFallingSnowDropOam_Frame2, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowResetOam[] = {
    {sFallingSnowMeltingOam_Frame2, 2},
    {sFallingSnowMeltingOam_Frame4, 3},
    {sFallingSnowResetOam_Frame1, 2},
    {sFallingSnowResetOam_Frame2, 2},
    {sFallingSnowResetOam_Frame3, 2},
    {sFallingSnowResetOam_Frame4, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowFragmentRightOam[] = {
    {sFallingSnowFragmentRightOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sFallingSnowFragmentLeftOam[] = {
    {sFallingSnowFragmentLeftOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

void InitFallingSnow(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->status |= 0x400;
    s->drawDistanceDown = 24;
    s->drawDistanceUp = 24;
    s->drawDistanceLeftRight = 24;
    s->hitboxExtentUp = 32;
    s->hitboxExtentDown = 148;
    s->hitboxExtentLeft = 40;
    s->hitboxExtentRight = 36;
    s->pOamData = sFallingSnowIdleOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 30;
    s->pose = 16;
    s->warioCollision = 18;
    s->drawPriority = 1;
}

void FallingSnowWaitBeforeDropping(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0) {
        s->pOamData = sFallingSnowDropOam;
        s->currentAnimationFrame = 0;
        s->animationTimer = 0;
        s->work0 = 68;
        s->pose = 18;
        SpriteSpawnAsChild(0x9d, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition);
    }
}

void FallingSnowStartFalling(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0) {
        s->pOamData = sFallingSnowFallingOam;
        s->currentAnimationFrame = 0;
        s->animationTimer = 0;
        s->pose = 28;
        s->work3 = 0;
        s->yPosition += 12;
    }
}

void FallingSnowFall(void)
{
    int new_var;
    struct PrimarySpriteData* sprite;
    u32 newY;
    u8 index;
    const u16 new_var2;
    s16 movement;

    sprite = &gCurrentSprite;
    newY = func_8023A60(sprite->yPosition, (*sprite).xPosition);
    if ((double)(gUnk_30000A0.unk_02 == 1))
        sprite->status |= 0x800;
    if (gUnk_3000A50 != 0)
    {
        sprite->yPosition = newY;
        sprite->pose = 23;
        return;
    }
    index = sprite->work3;
    movement = sUnk_8352ADC[index];
    if (movement == 0x7FFF)
    {
        new_var = index - 1;
        new_var2 = ((const u16*)sUnk_8352ADC)[new_var];
        sprite->yPosition += new_var2;
    }
    else
    {
        sprite->work3 = index + 1;
        sprite->yPosition += movement;
    }
}

void FallingSnowStartMelting(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->pOamData = sFallingSnowMeltingOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 17;
    s->pose = 24;
}

void FallingSnowWaitToRespawn(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0)
        s->pose = 110;
}

void FallingSnowRespawn(void)
{
    register u8 (*map)[3] asm("r3");
    register struct PrimarySpriteData* sprite asm("r2");
    u8 roomSlot;
    u16 y;

    map = gUnk_3000964;
    sprite = &gCurrentSprite;
    roomSlot = sprite->roomSlot;
    y = map[roomSlot][0];
    sprite->yPosition = (y << 6) + 64;
    sprite->pose = 111;
    sprite->pOamData = sFallingSnowIdleOam;
    sprite->work0 = 100;
    sprite->status |= 4;
}

void FallingSnowWaitBeforeDroppingAgain(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    if (--s->work0 == 0) {
        s->work0 = 30;
        s->pose = 16;
        s->status &= ~4;
    }
}

void FallingSnowSpawnFragment(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    if (s->xPosition > gWarioData.xPosition)
        func_801E3A8(0x9e, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition, 64);
    else
        func_801E3A8(0x9e, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition, 0);
}

void FallingSnowResetAfterImpact(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->pOamData = sFallingSnowResetOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 12;
    s->pose = 24;
}

void InitFallingSnowChild(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register struct PrimarySpriteData* storeSprite asm("r4");
    register u8 one asm("r1");
    register u8* ptr asm("r0");
    register u8* ptr32 asm("r1");

    sprite = &gCurrentSprite;
    {
        register u16 oldStatus asm("r1");
        register u32 statusBits asm("r2");
        register u16 status asm("r0");
        oldStatus = sprite->status;
        statusBits = 0x400;
        status = statusBits;
        asm("mov %0, #0" : "=r"(zero));
        asm("mov %0, #0" : "=r"(zero16));
        status |= oldStatus;
        status &= 0xFFFB;
        storeSprite = sprite;
        storeSprite->status = status;
    }
    ptr32 = (u8*)sprite + 32;
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr = (u8*)sprite + 35;
    one = 1;
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    storeSprite->pOamData = sFallingSnowChildOam;
    storeSprite->currentAnimationFrame = zero;
    storeSprite->animationTimer = zero16;
    {
        register u8* work0 asm("r2");
        register u8 timer asm("r0");
        work0 = (u8*)sprite + 39;
        timer = 68;
        *work0 = timer;
    }
    storeSprite->pose = 16;
    storeSprite->warioCollision = 18;
    storeSprite->drawPriority = one;
}

void FallingSnowChildExpire(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    if (--s->work0 == 0)
        s->status = 0;
}

void InitFallingSnowFragment(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u16 status asm("r4");
    register u8 one asm("r1");
    register u8* ptr asm("r0");
    register u8* ptr32 asm("r1");

    sprite = &gCurrentSprite;
    {
        register u16 oldStatus asm("r1");
        register u32 statusBits asm("r2");
        register u16 base asm("r0");
        register u32 mask asm("r0");

        oldStatus = sprite->status;
        statusBits = 0x400;
        base = statusBits;
        asm("mov %0, #0" : "=r"(zero));
        asm("mov %0, #0" : "=r"(zero16));
        status = base;
        status |= oldStatus;
        mask = 0xFFFB;
        status &= mask;
        sprite->status = status;
    }

    ptr32 = (u8*)sprite + 32;
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;

    ptr = (u8*)sprite + 35;
    one = 1;
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;

    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    {
        register u8 collision asm("r0");
        register struct PrimarySpriteData* store asm("r3");
        collision = 18;
        asm volatile("" : "+r"(collision));
        store = sprite;
        store->warioCollision = collision;
        store->drawPriority = one;
        collision = 28;
        store->pose = collision;
        ptr = (u8*)sprite + 42;
        *ptr = zero;

        if (status & 0x40)
        {
            store->pOamData = sFallingSnowFragmentLeftOam;
            store->status = status & 0xFFBF;
        }
        else
        {
            register const struct AnimationFrame* oam asm("r0");
            register struct PrimarySpriteData* dst asm("r1");
            oam = sFallingSnowFragmentRightOam;
            asm volatile("" : "+r"(oam));
            dst = sprite;
            dst->pOamData = oam;
        }
    }
}

void SpriteFallingSnow(void)
{
    if (gCurrentSprite.status & 0x800)
        gCurrentSprite.pose = 107;
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnow(); break;
    case 16: FallingSnowWaitBeforeDropping(); break;
    case 18: FallingSnowStartFalling(); break;
    case 28: FallingSnowFall(); break;
    case 23: FallingSnowStartMelting();
    case 24: FallingSnowWaitToRespawn(); break;
    case 110: FallingSnowRespawn();
    case 111: FallingSnowWaitBeforeDroppingAgain(); break;
    case 49: FallingSnowSpawnFragment();
    default: FallingSnowResetAfterImpact(); break;
    }
}

void SpriteFallingSnowChild(void)
{
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnowChild(); break;
    case 16: FallingSnowChildExpire(); break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteFallingSnowFragment(void)
{
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnowFragment(); break;
    case 28: FallingSnowFall(); break;
    default: gCurrentSprite.status = 0; break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}
