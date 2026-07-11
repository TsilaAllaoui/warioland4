#include "block.h"
#include "global_data.h"
#include "score.h"
#include "sprite.h"
#include "wario.h"
#include "sprite_ai/folding_door.h"

void SetFoldingDoorCollision(void)
{
    register int yPosition asm("r5");
    register int xPosition asm("r6");
    register int lowerY asm("r4");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 3;
    *blockAction = action;
    leftX = 64;
    leftX = -leftX;
    leftX = (u16)(leftX + xPosition);
    func_806D5C0(yPosition, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16)(xPosition + 64);
    func_806D5C0(yPosition, xPosition);
    lowerY = (u16)(yPosition + 64);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, xPosition);
    lowerY = (u16)(yPosition + 128);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, xPosition);
    yPosition = (u16)(yPosition + 192);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, xPosition);
}

void ClearFoldingDoorCollision(void)
{
    register int yPosition asm("r5");
    register int xPosition asm("r6");
    register int lowerY asm("r4");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 2;
    *blockAction = action;
    leftX = 64;
    leftX = -leftX;
    leftX = (u16)(leftX + xPosition);
    func_806D5C0(yPosition, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16)(xPosition + 64);
    func_806D5C0(yPosition, xPosition);
    lowerY = (u16)(yPosition + 64);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, xPosition);
    lowerY = (u16)(yPosition + 128);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(lowerY, xPosition);
    yPosition = (u16)(yPosition + 192);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, xPosition);
}

void InitFoldingDoor(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 0;
    gCurrentSprite.drawDistanceDown = 0;
    gCurrentSprite.drawDistanceUp = 64;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 4;
    gCurrentSprite.hitboxExtentLeft = 4;
    gCurrentSprite.hitboxExtentRight = 4;
    gCurrentSprite.pOamData = sFoldingDoorClosedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.drawPriority = 1;
    SetFoldingDoorCollision();
}

void FoldingDoorWaitForSwitch(void)
{
    int flag;
    register int maxDistance asm("r6");
    register u32 warioY asm("r2");
    register u32 warioX asm("r4");
    register s32 distance asm("r0");
    register u32 spriteX asm("r3");
    register struct PrimarySpriteData *sprite asm("r5");
    register struct PrimarySpriteData *spriteTemp asm("r1");
    int yMax;
    int zero;

    if (gSwitchPressed == 0) {
        return;
    }

    flag = 0;
    yMax = 128;
    maxDistance = 256;
    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    spriteTemp = &gCurrentSprite;
    distance = (u16)(spriteTemp->yPosition + 192);
    spriteX = spriteTemp->xPosition;
    sprite = spriteTemp;

    if ((u32)distance > warioY) {
        distance -= warioY;
    } else {
        distance = warioY - distance;
    }
    if (distance >= yMax) {
        return;
    }

    if (spriteX > warioX) {
        distance = spriteX - warioX;
        if ((s32)distance >= maxDistance) {
            goto checkFlag;
        }
        goto activate;
    } else {
        distance = warioX - spriteX;
        if ((s32)distance >= maxDistance) {
            goto checkFlag;
        }
        flag = 8;
    }

checkFlag:
    if (flag == 0) {
        return;
    }

activate:
    {
        register u8 *work0 asm("r2");

        zero = 0;
        sprite->pose = 18;
        work0 = &sprite->work0;
        *work0 = 24;
        sprite->pOamData = sFoldingDoorOpeningOam;
        sprite->currentAnimationFrame = zero;
        sprite->animationTimer = zero;
    }
    ClearFoldingDoorCollision();
}

void FoldingDoorOpening(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = 24;
        gCurrentSprite.pOamData = sFoldingDoorOpenOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
    }
}

void SpriteFoldingDoor(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitFoldingDoor();
            break;
        case 16:
            FoldingDoorWaitForSwitch();
            break;
        case 18:
            FoldingDoorOpening();
            break;
    }
}
