#include "block.h"
#include "global_data.h"
#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/crumbling_block.h"

void SetCrumblingBlockCollision(void)
{
    register int yPosition asm("r6");
    register int xPosition asm("r4");
    register int lowerY asm("r5");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 3;
    *blockAction = action;
    lowerY = (u16)(yPosition + 4);
    leftX = (u16)(xPosition - 4);
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16)(xPosition + 4);
    func_806D5C0(lowerY, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    yPosition = (u16)(yPosition - 4);
    func_806D5C0(yPosition, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
}

void ClearCrumblingBlockCollision(void)
{
    register int yPosition asm("r6");
    register int xPosition asm("r4");
    register int lowerY asm("r5");
    register int leftX asm("r8");
    register s8 *blockAction asm("sl");
    register s8 action asm("r9");

    yPosition = gCurrentSprite.yPosition;
    xPosition = gCurrentSprite.xPosition;
    blockAction = &gUnk_3000028;
    action = 2;
    *blockAction = action;
    lowerY = (u16)(yPosition + 4);
    leftX = (u16)(xPosition - 4);
    func_806D5C0(lowerY, leftX);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    xPosition = (u16)(xPosition + 4);
    func_806D5C0(lowerY, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    yPosition = (u16)(yPosition - 4);
    func_806D5C0(yPosition, xPosition);
    {
        register s8 value asm("r0");
        register s8 *pointer asm("r1");
        value = action;
        asm("" : "+r"(value));
        pointer = blockAction;
        *pointer = value;
    }
    func_806D5C0(yPosition, leftX);
}

void InitCrumblingBlock(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 6;
    gCurrentSprite.drawDistanceDown = 8;
    gCurrentSprite.drawDistanceUp = 8;
    gCurrentSprite.drawDistanceLeftRight = 8;
    gCurrentSprite.hitboxExtentUp = 40;
    gCurrentSprite.hitboxExtentDown = 28;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
    gCurrentSprite.pOamData = sCrumblingBlockIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.yPosition -= 32;
    SetCrumblingBlockCollision();
}

void StartCrumblingBlockCollapse(void)
{
    gCurrentSprite.pOamData = sCrumblingBlockCrackingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.work0 = 88;
    if (gCurrentSprite.status & SPRITE_STATUS_ONSCREEN) {
        m4aSongNumStart(SE_CRUMBLING_BLOCK_CRACK);
    }
}

void CrumblingBlockCollapse(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *timerPointer asm("ip");
    register s32 nextTimer asm("r2");
    u8 timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    {
        register u32 address asm("r0");

        address = 39;
        asm("" : "+r"(address));
        address += (u32)sprite;
        timerPointer = (u8 *)address;
        {
            register int oldTimer asm("r0");
            register u8 *storePointer asm("r1");

            oldTimer = *(u8 *)address;
            nextTimer = oldTimer - 1;
            storePointer = timerPointer;
            *storePointer = nextTimer;
        }
    }
    {
        register u32 shiftedTimer asm("r0");

        shiftedTimer = nextTimer << 24;
        asm("" : "+r"(shiftedTimer));
        timer = shiftedTimer >> 24;
    }
    if (timer != 0) {
        register int comparison asm("r0");

        comparison = timer;
        asm("" : "+r"(comparison));
        if (comparison == 38) {
            ClearCrumblingBlockCollision();
        }
    } else {
        sprite->pOamData = sCrumblingBlockCollapsedOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = SPOSE_12;
        {
            register int resetTimer asm("r0");
            register u8 *resetPointer asm("r1");

            resetTimer = 120;
            resetPointer = timerPointer;
            *resetPointer = resetTimer;
        }
    }
}

void CrumblingBlockRespawnDelay(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register u8 *timer asm("r3");
    u8 value;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = --*timer;
    if (value == 0) {
        sprite->pOamData = sCrumblingBlockReformingOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pose = SPOSE_14;
        *timer = 39;
        if (sprite->status & SPRITE_STATUS_ONSCREEN) {
            m4aSongNumStart(SE_CRUMBLING_BLOCK_REFORM);
        }
    }
}

void CrumblingBlockReform(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *timerPointer asm("r1");
    register s32 nextTimer asm("r2");
    u8 timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timerPointer = &sprite->work0;
    {
        register int oldTimer asm("r0");

        oldTimer = *timerPointer;
        nextTimer = oldTimer - 1;
        *timerPointer = nextTimer;
    }
    {
        register u32 shiftedTimer asm("r0");

        shiftedTimer = nextTimer << 24;
        asm("" : "+r"(shiftedTimer));
        timer = shiftedTimer >> 24;
    }
    if (timer != 0) {
        register int comparison asm("r0");

        comparison = timer;
        asm("" : "+r"(comparison));
        if (comparison == 21) {
            SetCrumblingBlockCollision();
        }
    } else {
        sprite->pOamData = sCrumblingBlockIdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = SPOSE_IDLE;
    }
}

void SpriteCrumblingBlock(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitCrumblingBlock();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            StartCrumblingBlockCollapse();
        case SPOSE_CRUSHED_OR_COLLECTED:
            CrumblingBlockCollapse();
            break;
        case SPOSE_12:
            CrumblingBlockRespawnDelay();
            break;
        case SPOSE_14:
            CrumblingBlockReform();
            break;
    }
}

asm(".short 0");
