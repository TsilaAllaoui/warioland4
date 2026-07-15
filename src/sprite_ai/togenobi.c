#include "sprite_ai/togenobi.h"

#include "fixed_point.h"
#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"



#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sTogenobiOuterPartVerticalOam_Frame6[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 512, 8, 0),
};

const u16 sTogenobiOuterPartVerticalOam_Frame5[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 513, 8, 0),
};

const u16 sTogenobiOuterPartVerticalOam_Frame4[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 514, 8, 0),
};

const u16 sTogenobiOuterPartVerticalOam_Frame3[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 515, 8, 0),
};

const u16 sTogenobiOuterPartVerticalOam_Frame2[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 516, 8, 0),
};

const u16 sTogenobiOuterPartVerticalOam_Frame1[] = {
    1,
    OAM_ENTRY(-32, -32, SPRITE_SIZE_64x64, 0, 517, 8, 0),
};

const u16 sTogenobiInnerPartOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 657, 10, 0),
};

const u16 sTogenobiOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -16, SPRITE_SIZE_32x32, 0, 529, 8, 0),
};

const u16 sTogenobiCenterPartOam_Frame1[] = {
    6,
    OAM_ENTRY(-1, -32, SPRITE_SIZE_32x32, 0, 533, 8, 0),
    OAM_ENTRY(19, -7, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(5, 5, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 606, 8, 0),
    OAM_ENTRY(-21, -20, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 670, 8, 0),
    OAM_ENTRY(-21, 5, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 734, 8, 0),
    OAM_ENTRY(-18, -37, SPRITE_SIZE_32x32, 0, 661, 11, 0),
};

const u16 sTogenobiCenterPartOam_Frame2[] = {
    6,
    OAM_ENTRY(-1, -33, SPRITE_SIZE_32x32, 0, 533, 8, 0),
    OAM_ENTRY(19, -7, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 606, 8, 0),
    OAM_ENTRY(5, 3, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 670, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 734, 8, 0),
    OAM_ENTRY(-21, 5, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-18, -39, SPRITE_SIZE_32x32, 0, 661, 11, 0),
};

const u16 sTogenobiCenterPartOam_Frame3[] = {
    6,
    OAM_ENTRY(1, -29, SPRITE_SIZE_32x32, 0, 537, 8, 0),
    OAM_ENTRY(19, -7, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 670, 8, 0),
    OAM_ENTRY(5, 5, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 734, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-21, 5, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 606, 8, 0),
    OAM_ENTRY(-16, -37, SPRITE_SIZE_32x32, 0, 661, 11, 0),
};

const u16 sTogenobiCenterPartOam_Frame4[] = {
    6,
    OAM_ENTRY(1, -30, SPRITE_SIZE_32x32, 0, 537, 8, 0),
    OAM_ENTRY(19, -7, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 734, 8, 0),
    OAM_ENTRY(5, 5, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 542, 8, 0),
    OAM_ENTRY(-21, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 606, 8, 0),
    OAM_ENTRY(-21, 4, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 670, 8, 0),
    OAM_ENTRY(-16, -39, SPRITE_SIZE_32x32, 0, 661, 11, 0),
};

const struct AnimationFrame sTogenobiCenterPartOam[] = {
    {sTogenobiCenterPartOam_Frame1, 10},
    {sTogenobiCenterPartOam_Frame2, 10},
    {sTogenobiCenterPartOam_Frame3, 10},
    {sTogenobiCenterPartOam_Frame4, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogenobiOuterPartVerticalOam[] = {
    {sTogenobiOuterPartVerticalOam_Frame1, 10},
    {sTogenobiOuterPartVerticalOam_Frame2, 10},
    {sTogenobiOuterPartVerticalOam_Frame3, 10},
    {sTogenobiOuterPartVerticalOam_Frame4, 10},
    {sTogenobiOuterPartVerticalOam_Frame5, 10},
    {sTogenobiOuterPartVerticalOam_Frame6, 10},
    {sTogenobiOuterPartVerticalOam_Frame6, 10},
    {sTogenobiOuterPartVerticalOam_Frame5, 10},
    {sTogenobiOuterPartVerticalOam_Frame4, 10},
    {sTogenobiOuterPartVerticalOam_Frame3, 10},
    {sTogenobiOuterPartVerticalOam_Frame2, 10},
    {sTogenobiOuterPartVerticalOam_Frame1, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogenobiOuterPartHorizontalOam[] = {
    {sTogenobiOuterPartVerticalOam_Frame1, 6},
    {sTogenobiOuterPartVerticalOam_Frame2, 6},
    {sTogenobiOuterPartVerticalOam_Frame3, 6},
    {sTogenobiOuterPartVerticalOam_Frame4, 6},
    {sTogenobiOuterPartVerticalOam_Frame5, 6},
    {sTogenobiOuterPartVerticalOam_Frame6, 6},
    {sTogenobiOuterPartVerticalOam_Frame6, 6},
    {sTogenobiOuterPartVerticalOam_Frame5, 6},
    {sTogenobiOuterPartVerticalOam_Frame4, 6},
    {sTogenobiOuterPartVerticalOam_Frame3, 6},
    {sTogenobiOuterPartVerticalOam_Frame2, 6},
    {sTogenobiOuterPartVerticalOam_Frame1, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogenobiInnerPartOam[] = {
    {sTogenobiInnerPartOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogenobiOam[] = {
    {sTogenobiOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void InitTogenobi(void)
{
    gCurrentSprite.status |= 0x8480;
    gCurrentSprite.warioCollision = 82;
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 32;
    gCurrentSprite.hitboxExtentDown = 28;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    gCurrentSprite.pOamData = sTogenobiOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work0 = 0;

    func_801E3A8(PSPRITE_TOGENOBI_OUTER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition, gCurrentSprite.xPosition + 192, 0);
    func_801E3A8(PSPRITE_TOGENOBI_INNER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition, gCurrentSprite.xPosition + 192, 0);
    func_801E3A8(PSPRITE_TOGENOBI_OUTER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition - 192, gCurrentSprite.xPosition, 0);
    func_801E3A8(PSPRITE_TOGENOBI_INNER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition - 192, gCurrentSprite.xPosition, 0);
    func_801E3A8(PSPRITE_TOGENOBI_OUTER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition, gCurrentSprite.xPosition - 192, 0);
    func_801E3A8(PSPRITE_TOGENOBI_INNER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition, gCurrentSprite.xPosition - 192, 0);
    func_801E3A8(PSPRITE_TOGENOBI_OUTER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition + 192, gCurrentSprite.xPosition, 0);
    func_801E3A8(PSPRITE_TOGENOBI_INNER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition + 192, gCurrentSprite.xPosition, 0);
    func_801E3A8(PSPRITE_TOGENOBI_CENTER_PART, gCurrentSprite.roomSlot, gCurrentSprite.gfxSlot,
        gCurrentSprite.yPosition, gCurrentSprite.xPosition, 0);
}

void InitTogenobiOuterPart(void)
{
    register struct PrimarySpriteData* current asm("r4");
    register int zero asm("r5");
    register int zeroTimer asm("r2");
    register u16 status asm("r0");
    register u16 oldStatus asm("r1");
    register struct PrimarySpriteData* sprites asm("r2");
    register u32 temp asm("r0");
    register u32 index asm("r1");
    register u32 parentY asm("r2");
    u32 parentX;
    register u32 currentY asm("r1");
    register u8* ptr0 asm("r0");
    register u8* ptr1 asm("r1");

    current = &gCurrentSprite;
    oldStatus = current->status;
    status = 0x8488;
    zero = 0;
    zeroTimer = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    current->status = status;
    *(volatile u8*)((u8*)current + 30) = zero;
    ptr1 = (u8*)current + 32;
    ptr0 = (u8*)32;
    *ptr1 = (u32)ptr0;
    ptr1++;
    *ptr1 = (u32)ptr0;
    ptr1++;
    asm("" : "+r"(ptr1));
    *ptr1 = (u32)ptr0;
    ptr0 = (u8*)current + 35;
    ptr1 = (u8*)4;
    *ptr0 = (u32)ptr1;
    ptr0++;
    *ptr0 = (u32)ptr1;
    ptr0++;
    *ptr0 = (u32)ptr1;
    ptr0++;
    asm("" : "+r"(ptr0));
    *ptr0 = (u32)ptr1;
    *(volatile u8*)((u8*)current + 22) = zero;
    current->animationTimer = zeroTimer;
    current->pose = 16;

    SpriteUtilFindParentSlotWork3(PSPRITE_TOGENOBI);
    sprites = gSpriteData;
    temp = (u32)current;
    temp += 42;
    index = *(u8*)temp;
    temp = sizeof(struct PrimarySpriteData);
    temp *= index;
    temp += (u32)sprites;
    parentY = *(u16*)(temp + 8);
    parentX = *(u16*)(temp + 10);
    currentY = current->yPosition;

    if (currentY == parentY) {
        current->pOamData = sTogenobiOuterPartHorizontalOam;
        if (current->xPosition > parentX) {
            ptr0 = (u8*)current + 40;
            *ptr0 = zero;
            ptr0--;
            *ptr0 = zero;
        } else {
            ptr1 = (u8*)current + 40;
            *ptr1 = 2;
            ptr1--;
            *ptr1 = 128;
        }
    } else {
        current->pOamData = sTogenobiOuterPartVerticalOam;
        if (currentY > parentY) {
            ptr1 = (u8*)current + 40;
            *ptr1 = 3;
            ptr1--;
            *ptr1 = 64;
        } else {
            ptr1 = (u8*)current + 40;
            *ptr1 = 1;
            ptr1--;
            *ptr1 = 192;
        }
    }
}

void UpdateTogenobiOuterPartPosition(void)
{
    register struct PrimarySpriteData* current asm("r3");
    register struct PrimarySpriteData* data asm("r2");
    register u8* parentSlot asm("r4");
    register int spriteSize asm("r5");
    register int radius asm("r6");
    u32 dataBase;
    register struct PrimarySpriteData* currentIp asm("r12");
    register const s16* table asm("r1");
    register const s16* table2 asm("r2");
    register s32 value asm("r0");
    register u32 other asm("r1");
    register u32 offsetX asm("r2");

    current = &gCurrentSprite;
    data = gSpriteData;
    parentSlot = (u8*)current + 42;
    value = *parentSlot;
    asm("" : "+r"(value));
    spriteSize = sizeof(struct PrimarySpriteData);
    other = value;
    other *= spriteSize;
    other = other + (u32)data;
    other += 39;
    value = current->work1;
    value <<= 6;
    other = *(u8*)other;
    value += other;
    other = 39;
    asm("" : "+r"(other));
    other = other + (u32)current;
    currentIp = (struct PrimarySpriteData*)other;
    *(u8*)other = value;

    radius = 192;
    table = sSinCosTable;
    /* agbcc does not otherwise account for the fixed r7 temporary in the prologue. */
    asm("mov r7, %1\n\tldrb %0, [r7]" : "=r"(value) : "r"(currentIp) : "r7");
    value <<= 1;
    value += (u32)table;
    /* agbcc otherwise chooses the signed-load destination as the address register. */
    asm("movs r7, #0\n\tldrsh %0, [%0, r7]" : "+r"(value) : : "r7");
    currentIp = current;
    dataBase = (u32)data;
    table2 = table;

    if (value < 0) {
        value = -value;
        value *= radius;
        if (value < 0) {
            value += 255;
        }
        value <<= 8;
        other = (u32)value >> 16;
        value = *parentSlot;
        value *= spriteSize;
        value += dataBase;
        value = *(u16*)(value + 8);
        value -= other;
    } else {
        value *= radius;
        if (value < 0) {
            value += 255;
        }
        value <<= 8;
        other = *parentSlot;
        other *= spriteSize;
        other += dataBase;
        value = (u32)value >> 16;
        other = *(u16*)(other + 8);
        value += other;
    }
    currentIp->yPosition = value;

    current = currentIp;
    value = current->work0;
    value += 64;
    value <<= 1;
    value += (u32)table2;
    other = 0;
    /* agbcc otherwise chooses the signed-load destination as the address register. */
    asm("ldrsh %0, [%0, %1]" : "+r"(value) : "r"(other));
    if (value < 0) {
        value = -value;
        value *= radius;
        if (value < 0) {
            value += 255;
        }
        value <<= 8;
        offsetX = (u32)value >> 16;
        value = (u32)current + 42;
        other = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= other;
        value += dataBase;
        value = *(u16*)(value + 10);
        value -= offsetX;
        current->xPosition = value;
    } else {
        value *= radius;
        if (value < 0) {
            value += 255;
        }
        other = value << 8;
        value = (u32)currentIp + 42;
        offsetX = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= offsetX;
        value += dataBase;
        other = (u32)other >> 16;
        value = *(u16*)(value + 10);
        other += value;
        /* agbcc otherwise materializes the offset address instead of using strh #10. */
        asm("mov r7, %1\n\tstrh %0, [r7, #10]" : : "r"(other), "r"(currentIp) : "r7");
    }
}

void FindTogenobiPartSlot(u8 id)
{
    u8 spriteId;
    register u8 roomSlot asm("r6");
    register u16 yPosition asm("r5");
    register u16 xPosition asm("r4");
    register int i asm("r3");
    register struct PrimarySpriteData* current asm("r8");
    register struct PrimarySpriteData* sprites asm("r12");
    register struct PrimarySpriteData* spritesTemp asm("r0");
    struct PrimarySpriteData* currentTemp;
    register int offset asm("r0");
    register u8* base asm("r1");
    register struct PrimarySpriteData* sprite asm("r2");

    spriteId = id;
    currentTemp = &gCurrentSprite;
    roomSlot = currentTemp->roomSlot;
    yPosition = currentTemp->yPosition;
    xPosition = currentTemp->xPosition;
    i = 0;
    current = currentTemp;
    spritesTemp = gSpriteData;
    sprites = spritesTemp;

    while (1) {
        offset = sizeof(struct PrimarySpriteData);
        offset *= i;
        base = (u8*)sprites;
        sprite = (struct PrimarySpriteData*)(offset + (u32)base);
        if ((sprite->status & SPRITE_STATUS_EXISTS)
            && sprite->yPosition == yPosition
            && sprite->xPosition == xPosition
            && sprite->globalID == spriteId
            && sprite->roomSlot == roomSlot) {
            break;
        }
        i++;
        if (i > 23) {
            break;
        }
    }

    current->work2 = i;
}

void InitTogenobiInnerPart(void)
{
    register struct PrimarySpriteData* current asm("r5");
    register int zero asm("r6");
    register u32 zeroTimer asm("r4");
    register u16 status asm("r0");
    register u16 oldStatus asm("r1");
    register u8* work0 asm("r4");
    register struct PrimarySpriteData* sprites asm("r2");
    register u32 temp asm("r0");
    register u32 index asm("r1");
    u32 parentY;
    u32 parentX;
    u32 currentY;
    register u8* work1 asm("r0");
    register u32 workValue asm("r1");
    register u8 distance asm("r2");
    register u8 extentUp asm("r3");
    register u8* property asm("r0");

    current = &gCurrentSprite;
    oldStatus = current->status;
    status = 0x8480;
    zero = 0;
    zeroTimer = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    current->status = status;
    current->warioCollision = 81;
    property = (u8*)current;
    property += 32;
    asm("" : "+r"(property));
    distance = 16;
    *property = distance;
    property++;
    *property = distance;
    property++;
    *property = distance;
    property++;
    extentUp = 32;
    *property = extentUp;
    property++;
    *property = 28;
    property++;
    *property = extentUp;
    property++;
    asm("" : "+r"(property));
    *property = 28;
    current->pOamData = sTogenobiInnerPartOam;
    *(volatile u8*)((u8*)current + 22) = zero;
    current->animationTimer = zeroTimer;
    current->pose = distance;
    work0 = (u8*)current + 39;
    *work0 = zero;

    FindTogenobiPartSlot(PSPRITE_TOGENOBI_OUTER_PART);
    SpriteUtilFindParentSlotWork3(PSPRITE_TOGENOBI);
    sprites = gSpriteData;
    temp = (u32)current;
    temp += 42;
    index = *(u8*)temp;
    temp = sizeof(struct PrimarySpriteData);
    temp *= index;
    temp += (u32)sprites;
    parentY = *(u16*)(temp + 8);
    parentX = *(u16*)(temp + 10);
    currentY = current->yPosition;

    if (currentY == parentY) {
        if (current->xPosition > parentX) {
            work1 = (u8*)current + 40;
            *work1 = zero;
            *work0 = zero;
        } else {
            work1 = (u8*)current + 40;
            workValue = 2;
            *work1 = workValue;
            temp = 128;
            *work0 = temp;
        }
    } else if (currentY > parentY) {
        work1 = (u8*)current + 40;
        workValue = 3;
        *work1 = workValue;
        temp = 192;
        *work0 = temp;
    } else {
        work1 = (u8*)current + 40;
        workValue = 1;
        *work1 = workValue;
        temp = 64;
        *work0 = temp;
    }
}

void UpdateTogenobiInnerPartPosition(void)
{
    register struct PrimarySpriteData* current asm("r12");
    register s32 value asm("r0");
    register s32 reg1 asm("r1");
    register s32 reg2 asm("r2");
    register s32 reg3 asm("r3");
    register s32 preservedRadius asm("r4");
    register u32 dataBase asm("r5");
    register const s16* tableBase asm("r6");

    current = &gCurrentSprite;
    reg2 = (u32)gSpriteData;
    value = (u32)current;
    value += 42;
    value = *(u8*)value;
    asm("" : "+r"(value));
    reg3 = sizeof(struct PrimarySpriteData);
    reg1 = value;
    reg1 *= reg3;
    reg1 += reg2;
    reg1 += 39;
    value = (u32)current;
    value += 40;
    value = *(u8*)value;
    value <<= 6;
    reg1 = *(u8*)reg1;
    value += reg1;
    reg1 = (u32)current;
    reg1 += 39;
    *(u8*)reg1 = value;

    value = (u32)current;
    value += 41;
    value = *(u8*)value;
    value *= reg3;
    value += reg2;
    value = *(u16*)(value + 20);
    value--;
    dataBase = reg2;

    switch (value) {
        case 0:
        case 9:
            reg2 = 224;
            break;
        case 1:
        case 8:
            reg2 = 128;
            reg2 <<= 1;
            break;
        case 2:
        case 7:
            reg2 = 144;
            reg2 <<= 1;
            break;
        case 3:
        case 6:
            reg2 = 160;
            reg2 <<= 1;
            break;
        case 4:
        case 5:
            reg2 = 176;
            reg2 <<= 1;
            break;
        default:
            reg2 = 192;
            break;
    }

    reg1 = (u32)sSinCosTable;
    value = (u32)current;
    value += 39;
    value = *(u8*)value;
    value <<= 1;
    value += reg1;
    reg3 = 0;
    /* agbcc otherwise chooses the signed-load destination as the address register. */
    asm("ldrsh %0, [%0, %1]" : "+r"(value) : "r"(reg3));
    tableBase = (const s16*)reg1;

    if (value < 0) {
        value = -value;
        value *= reg2;
        preservedRadius = reg2 << 16;
        if (value < 0) {
            value += 255;
        }
        value <<= 8;
        reg2 = (u32)value >> 16;
        value = (u32)current;
        value += 42;
        reg1 = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= reg1;
        value += dataBase;
        value = *(u16*)(value + 8);
        value -= reg2;
        reg1 = (u32)current;
        *(u16*)(reg1 + 8) = value;
    } else {
        value *= reg2;
        preservedRadius = reg2 << 16;
        if (value < 0) {
            value += 255;
        }
        reg1 = value << 8;
        value = (u32)current;
        value += 42;
        reg2 = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= reg2;
        value += dataBase;
        reg1 = (u32)reg1 >> 16;
        value = *(u16*)(value + 8);
        reg1 += value;
        reg2 = (u32)current;
        *(u16*)(reg2 + 8) = reg1;
    }

    reg3 = (u32)current;
    value = reg3;
    value += 39;
    value = *(u8*)value;
    value += 64;
    value <<= 1;
    value += (u32)tableBase;
    reg2 = 0;
    /* agbcc otherwise loads through the signed-result register. */
    asm("ldrsh %0, [%1, %2]" : "=r"(reg1) : "r"(value), "r"(reg2));

    if (reg1 < 0) {
        reg1 = -reg1;
        value = preservedRadius >> 16;
        value *= reg1;
        if (value < 0) {
            value += 255;
        }
        value <<= 8;
        reg2 = (u32)value >> 16;
        value = reg3;
        value += 42;
        reg1 = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= reg1;
        value += dataBase;
        value = *(u16*)(value + 10);
        value -= reg2;
        *(u16*)(reg3 + 10) = value;
    } else {
        value = preservedRadius >> 16;
        value *= reg1;
        if (value < 0) {
            value += 255;
        }
        reg1 = value << 8;
        value = (u32)current;
        value += 42;
        reg2 = *(u8*)value;
        value = sizeof(struct PrimarySpriteData);
        value *= reg2;
        value += dataBase;
        reg1 = (u32)reg1 >> 16;
        value = *(u16*)(value + 10);
        reg1 += value;
        reg3 = (u32)current;
        *(u16*)(reg3 + 10) = reg1;
    }
}

void InitTogenobiCenterPart(void)
{
    register struct PrimarySpriteData* sprite asm("r12");
    register u16 status asm("r0");
    register u16 oldStatus asm("r1");
    register int zero asm("r2");
    register int zeroTimer asm("r3");
    register u8* ptr asm("r1");
    register u8* hitbox asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = 0x8408;
    zero = 0;
    zeroTimer = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    ptr = (u8*)sprite;
    *(u16*)ptr = status;
    ptr[30] = zero;
    ptr += 32;
    *ptr = 40;
    ptr++;
    *ptr = 40;
    ptr++;
    asm("" : "+r"(ptr));
    *ptr = 40;
    hitbox = (u8*)sprite + 35;
    *hitbox = 4;
    hitbox++;
    *hitbox = 4;
    hitbox++;
    *hitbox = 4;
    hitbox++;
    asm("" : "+r"(hitbox));
    *hitbox = 4;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zeroTimer;
    {
        register const struct AnimationFrame* oam asm("r0");
        register struct PrimarySpriteData* destination asm("r1");
        oam = sTogenobiCenterPartOam;
        destination = sprite;
        destination->pOamData = oam;
        destination->pose = 16;
    }
}

void SpriteTogenobi(void)
{
    register s32 value asm("r4");
    register s32 scale asm("r5");

    if (gCurrentSprite.pose == 0) {
        InitTogenobi();
    } else {
        if ((gMainTimer & 3) == 0) {
            gCurrentSprite.work0--;
        }
        if ((gMainTimer & 63) == 0) {
            m4aSongNumStart(SE_TOGENOBI_SPIN);
        }
    }

    value = sSinCosTable[gCurrentSprite.work0 + 64];
    scale = 256;
    gCurrentSprite.affinePA = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePB = FixedMul(value, FixedInverse(scale));
    value = -sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePC = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0 + 64];
    gCurrentSprite.affinePD = FixedMul(value, FixedInverse(scale));
}

void SpriteTogenobiOuterPart(void)
{
    register s32 value asm("r4");
    register s32 scale asm("r5");

    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0) {
        InitTogenobiOuterPart();
    } else {
        UpdateTogenobiOuterPartPosition();
    }

    value = sSinCosTable[gCurrentSprite.work0 + 64];
    scale = 256;
    gCurrentSprite.affinePA = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePB = FixedMul(value, FixedInverse(scale));
    value = -sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePC = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0 + 64];
    gCurrentSprite.affinePD = FixedMul(value, FixedInverse(scale));
}

void SpriteTogenobiInnerPart(void)
{
    register s32 value asm("r4");
    register s32 scale asm("r5");

    if (gCurrentSprite.pose == 0) {
        InitTogenobiInnerPart();
    } else {
        UpdateTogenobiInnerPartPosition();
    }

    value = sSinCosTable[gCurrentSprite.work0 + 64];
    scale = 256;
    gCurrentSprite.affinePA = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePB = FixedMul(value, FixedInverse(scale));
    value = -sSinCosTable[gCurrentSprite.work0];
    gCurrentSprite.affinePC = FixedMul(value, FixedInverse(scale));
    value = sSinCosTable[gCurrentSprite.work0 + 64];
    gCurrentSprite.affinePD = FixedMul(value, FixedInverse(scale));
}

void SpriteTogenobiCenterPart(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0) {
        InitTogenobiCenterPart();
    }
}
