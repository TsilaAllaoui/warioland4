#include "block.h"
#include "global_data.h"
#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/crumbling_block.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sCrumblingBlockIdleOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -5, SPRITE_SIZE_8x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame3[] = {
    2,
    OAM_ENTRY(-8, -2, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame4[] = {
    2,
    OAM_ENTRY(-8, 4, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame5[] = {
    6,
    OAM_ENTRY(-8, 10, SPRITE_SIZE_8x16, 0, 521, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_8x16, 0, 523, 8, 0),
    OAM_ENTRY(-5, -6, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_8x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame6[] = {
    5,
    OAM_ENTRY(-13, -6, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-5, -4, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-5, -1, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(-3, -6, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -4, SPRITE_SIZE_8x16, 0, 531, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame7[] = {
    2,
    OAM_ENTRY(-8, 0, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(0, 1, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 520, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame8[] = {
    2,
    OAM_ENTRY(-1, 9, SPRITE_SIZE_8x16, 0, 521, 8, 0),
    OAM_ENTRY(-7, 7, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame9[] = {
    1,
    OAM_ENTRY(-4, 16, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockCrackingOam_Frame10[] = {
    1,
    OAM_ENTRY(-4, 26, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame1[] = {
    1,
    OAM_ENTRY(-4, -33, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame2[] = {
    1,
    OAM_ENTRY(-4, -21, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame3[] = {
    2,
    OAM_ENTRY(-1, -17, SPRITE_SIZE_8x16, 0, 521, 8, 0),
    OAM_ENTRY(-7, -19, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame4[] = {
    2,
    OAM_ENTRY(-8, -11, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(0, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 520, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame5[] = {
    6,
    OAM_ENTRY(-5, -7, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-5, -6, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(-3, -9, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(-9, -10, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(1, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-4, -25, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame6[] = {
    5,
    OAM_ENTRY(-13, -9, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-5, -6, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(-3, -8, SPRITE_SIZE_8x16, 0, 530, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x16, 0, 531, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame7[] = {
    6,
    OAM_ENTRY(-13, -8, SPRITE_SIZE_8x16, 0, 522, 8, 0),
    OAM_ENTRY(-5, -7, SPRITE_SIZE_8x16, 0, 523, 8, 0),
    OAM_ENTRY(-5, -6, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(-3, -7, SPRITE_SIZE_8x16, 0, 525, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x16, 0, 526, 8, 0),
    OAM_ENTRY(-4, -19, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame8[] = {
    2,
    OAM_ENTRY(-8, -15, SPRITE_SIZE_8x16, 0, 521, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame9[] = {
    2,
    OAM_ENTRY(-8, -11, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame10[] = {
    2,
    OAM_ENTRY(-8, -10, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame11[] = {
    2,
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x16, 0, 518, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sCrumblingBlockReformingOam_Frame12[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sCrumblingBlockCollapsedOam_Frame1[] = {
    1,
    OAM_ENTRY(-4, -5, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const struct AnimationFrame sCrumblingBlockIdleOam[] = {
    {sCrumblingBlockIdleOam_Frame1, 255},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCrumblingBlockCrackingOam[] = {
    {sCrumblingBlockIdleOam_Frame1, 1},
    {sCrumblingBlockCrackingOam_Frame1, 5},
    {sCrumblingBlockIdleOam_Frame1, 5},
    {sCrumblingBlockCrackingOam_Frame1, 5},
    {sCrumblingBlockIdleOam_Frame1, 5},
    {sCrumblingBlockCrackingOam_Frame1, 5},
    {sCrumblingBlockCrackingOam_Frame2, 8},
    {sCrumblingBlockCrackingOam_Frame3, 8},
    {sCrumblingBlockCrackingOam_Frame4, 8},
    {sCrumblingBlockCrackingOam_Frame5, 8},
    {sCrumblingBlockCrackingOam_Frame6, 2},
    {sCrumblingBlockCrackingOam_Frame7, 6},
    {sCrumblingBlockCrackingOam_Frame8, 6},
    {sCrumblingBlockCrackingOam_Frame9, 8},
    {sCrumblingBlockCrackingOam_Frame10, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCrumblingBlockReformingOam[] = {
    {sCrumblingBlockReformingOam_Frame1, 3},
    {sCrumblingBlockReformingOam_Frame2, 3},
    {sCrumblingBlockReformingOam_Frame3, 3},
    {sCrumblingBlockReformingOam_Frame4, 3},
    {sCrumblingBlockReformingOam_Frame5, 3},
    {sCrumblingBlockReformingOam_Frame6, 3},
    {sCrumblingBlockReformingOam_Frame7, 3},
    {sCrumblingBlockReformingOam_Frame8, 3},
    {sCrumblingBlockReformingOam_Frame9, 3},
    {sCrumblingBlockReformingOam_Frame10, 3},
    {sCrumblingBlockReformingOam_Frame11, 3},
    {sCrumblingBlockReformingOam_Frame12, 5},
    {sCrumblingBlockIdleOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sCrumblingBlockCollapsedOam[] = {
    {sCrumblingBlockCollapsedOam_Frame1, 255},
    ANIMATION_TERMINATOR
};

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
