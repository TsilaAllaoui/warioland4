#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/boss_corridor_cat.h"
#include "gba/m4a.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sBossCorridorCatRunOam_Frame1[] = {
    4,
    OAM_ENTRY(-13, -25, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(3, -25, SPRITE_SIZE_8x16, 0, 514, 8, 0),
    OAM_ENTRY(-12, -18, SPRITE_SIZE_16x16, 0, 515, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x8, 0, 549, 8, 0),
};

const u16 sBossCorridorCatRunOam_Frame2[] = {
    4,
    OAM_ENTRY(-13, -23, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(3, -23, SPRITE_SIZE_8x16, 0, 514, 8, 0),
    OAM_ENTRY(-11, -16, SPRITE_SIZE_16x16, 0, 520, 8, 0),
    OAM_ENTRY(5, -8, SPRITE_SIZE_8x8, 0, 554, 8, 0),
};

const u16 sBossCorridorCatRunOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -23, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(1, -23, SPRITE_SIZE_8x16, 0, 514, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_16x16, 0, 518, 8, 0),
};

const u8 sBossCorridorCatRawData_83E281C[] = {
    0x04, 0x00, 0xEA, 0x00, 0xF3, 0x41, 0x00, 0x82, 0xEA, 0x80, 0x03, 0x00, 0x02, 0x82, 0xF0, 0x00,
    0xF2, 0x41, 0x0B, 0x82, 0xF8, 0x00, 0x02, 0x00, 0x2D, 0x82, 0x04, 0x00, 0xEB, 0x00, 0xF4, 0x41,
    0x12, 0x82, 0xEB, 0x80, 0x04, 0x00, 0x14, 0x82, 0xF0, 0x00, 0xF3, 0x41, 0x0B, 0x82, 0xF8, 0x00,
    0x03, 0x00, 0x2D, 0x82, 0x03, 0x00, 0xEE, 0x00, 0xF1, 0x41, 0x12, 0x82, 0xEE, 0x80, 0x01, 0x00,
    0x14, 0x82, 0xF8, 0x40, 0xF7, 0x01, 0x15, 0x82,
};

const u16 sBossCorridorCatTurnOam_Frame1[] = {
    2,
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 560, 8, 0),
};

const u16 sBossCorridorCatTurnOam_Frame2[] = {
    4,
    OAM_ENTRY(-8, -15, SPRITE_SIZE_8x8, 0, 528, 8, 0),
    OAM_ENTRY(0, -15, SPRITE_SIZE_8x8, 0, 529, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 560, 8, 0),
};

const u16 sBossCorridorCatTurnOam_Frame3[] = {
    3,
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x8, 0, 565, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 560, 8, 0),
};

const u16 sBossCorridorCatWaitRightOam_Frame1[] = {
    5,
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(2, -22, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-6, -22, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 557, 8, 0),
};

const u16 sBossCorridorCatWaitRightOam_Frame2[] = {
    5,
    OAM_ENTRY(2, -12, SPRITE_SIZE_8x8, 0, 525, 8, 0),
    OAM_ENTRY(2, -21, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(-6, -21, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-14, -16, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x8, 0, 557, 8, 0),
};

const u8 sBossCorridorCatRawData_83E28E0[] = {
    0x04, 0x00, 0xF0, 0x00, 0xF8, 0x41, 0x17, 0x82, 0xE8, 0x00, 0xF8, 0x01, 0x05, 0x82, 0xE8, 0x00,
    0x00, 0x00, 0x0A, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x15, 0x82, 0x04, 0x00, 0xF1, 0x00, 0xF8, 0x41,
    0x17, 0x82, 0xE9, 0x00, 0xF8, 0x01, 0x05, 0x82, 0xE9, 0x00, 0x00, 0x00, 0x0A, 0x82, 0xF8, 0x40,
    0xF8, 0x01, 0x15, 0x82, 0x03, 0x00, 0xEF, 0x00, 0xF1, 0x41, 0x12, 0x82, 0xEF, 0x80, 0x01, 0x00,
    0x14, 0x82, 0xF8, 0x40, 0xF7, 0x01, 0x15, 0x82, 0x04, 0x00, 0xE1, 0x00, 0xF3, 0x41, 0x00, 0x82,
    0xE1, 0x80, 0x03, 0x00, 0x02, 0x82, 0xE8, 0x00, 0xF4, 0x41, 0x03, 0x82, 0xF0, 0x00, 0x04, 0x00,
    0x25, 0x82, 0x04, 0x00, 0xE5, 0x00, 0xF3, 0x41, 0x00, 0x82, 0xE5, 0x80, 0x03, 0x00, 0x02, 0x82,
    0xEC, 0x00, 0xF4, 0x41, 0x03, 0x82, 0xF4, 0x00, 0x04, 0x00, 0x25, 0x82, 0x04, 0x00, 0xEB, 0x00,
    0xF3, 0x41, 0x00, 0x82, 0xEB, 0x80, 0x03, 0x00, 0x02, 0x82, 0xF1, 0x00, 0xF5, 0x41, 0x08, 0x82,
    0xF9, 0x00, 0x05, 0x00, 0x2A, 0x82, 0x04, 0x00, 0xEA, 0x00, 0xF3, 0x41, 0x00, 0x82, 0xEA, 0x80,
    0x03, 0x00, 0x02, 0x82, 0xF0, 0x00, 0xF2, 0x41, 0x0B, 0x82, 0xF8, 0x00, 0x02, 0x00, 0x2D, 0x82,
    0x04, 0x00, 0xEA, 0x00, 0xF3, 0x41, 0x00, 0x82, 0xEA, 0x80, 0x03, 0x00, 0x02, 0x82, 0xF8, 0x40,
    0xF8, 0x01, 0x39, 0x82, 0xF0, 0x00, 0xF8, 0x01, 0x19, 0x82, 0x05, 0x00, 0xE9, 0x00, 0xF3, 0x41,
    0x00, 0x82, 0xE9, 0x80, 0x03, 0x00, 0x02, 0x82, 0xF8, 0x40, 0xF8, 0x01, 0x3C, 0x82, 0xF0, 0x00,
    0xF0, 0x01, 0x1B, 0x82, 0xF0, 0x00, 0xF8, 0x01, 0x1C, 0x82, 0x04, 0x00, 0xEA, 0x00, 0xF3, 0x41,
    0x00, 0x82, 0xEA, 0x80, 0x03, 0x00, 0x02, 0x82, 0xF0, 0x80, 0xF7, 0x01, 0x1E, 0x82, 0xF8, 0x00,
    0xFF, 0x01, 0x3F, 0x82,
};

const u16 sBossCorridorCatWaitToTurnOam_Frame1[] = {
    6,
    OAM_ENTRY(-8, -16, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 565, 8, 0),
    OAM_ENTRY(0, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 538, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 522, 8, 0),
    OAM_ENTRY(0, -24, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(-8, -8, SPRITE_SIZE_16x8, 0, 533, 8, 0),
};

const u8 sBossCorridorCatRawData_83E2A0A[] = {
    0x00, 0x00,
};

const struct AnimationFrame sBossCorridorCatRunOam[] = {
    {sBossCorridorCatRunOam_Frame1, 4},
    {sBossCorridorCatRunOam_Frame2, 4},
    {sBossCorridorCatRunOam_Frame3, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossCorridorCatWalkLeftOam[] = {
    {sBossCorridorCatRunOam_Frame1, 6},
    {sBossCorridorCatRunOam_Frame2, 6},
    {sBossCorridorCatRunOam_Frame3, 6},
    ANIMATION_TERMINATOR
};

const u8 sBossCorridorCatRawData_83E2A4C[] = {
    0x1C, 0x28, 0x3E, 0x08, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x36, 0x28, 0x3E, 0x08, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sBossCorridorCatTurnOam[] = {
    {sBossCorridorCatTurnOam_Frame1, 100},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame3, 4},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame1, 20},
    {sBossCorridorCatTurnOam_Frame2, 2},
    {sBossCorridorCatTurnOam_Frame3, 2},
    {sBossCorridorCatTurnOam_Frame2, 2},
    {sBossCorridorCatTurnOam_Frame1, 50},
    ANIMATION_TERMINATOR
};

const u8 sBossCorridorCatRawData_83E2ABC[] = {
    0x64, 0x28, 0x3E, 0x08, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x90, 0x29, 0x3E, 0x08, 0x08, 0x00, 0x00, 0x00, 0xAA, 0x29, 0x3E, 0x08, 0x08, 0x00, 0x00, 0x00,
    0xCA, 0x29, 0x3E, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sBossCorridorCatWaitToTurnOam[] = {
    {sBossCorridorCatTurnOam_Frame3, 8},
    {sBossCorridorCatWaitToTurnOam_Frame1, 8},
    {sBossCorridorCatTurnOam_Frame3, 8},
    {sBossCorridorCatWaitToTurnOam_Frame1, 8},
    {sBossCorridorCatTurnOam_Frame3, 4},
    {sBossCorridorCatWaitToTurnOam_Frame1, 4},
    {sBossCorridorCatTurnOam_Frame3, 20},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame1, 20},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame3, 4},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame1, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossCorridorCatWaitLeftOam[] = {
    {sBossCorridorCatTurnOam_Frame1, 4},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame3, 4},
    {sBossCorridorCatTurnOam_Frame2, 4},
    {sBossCorridorCatTurnOam_Frame1, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sBossCorridorCatWaitRightOam[] = {
    {sBossCorridorCatWaitRightOam_Frame1, 8},
    {sBossCorridorCatWaitRightOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

void InitBossCorridorCat(void)
{
    u8* persistent;
    struct PrimarySpriteData* sprite;
    register u32 entryOffset asm("r0");
    register u8 roomSlot asm("r2");
    register u8* persistentEntry asm("r0");
    register u16 zero16 asm("r4");
    u8 zero;
    int randomCase;

    persistent = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    entryOffset = gCurrentRoom;
    entryOffset <<= 6;
    roomSlot = sprite->roomSlot;
    entryOffset += roomSlot;
    persistentEntry = persistent + entryOffset;
    /* agbcc otherwise moves this zero after the persistent sprite write. */
    asm("mov %0, #0" : "=r"(zero16));
    *persistentEntry = 17;
    zero = 0;
    sprite->status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION | SPRITE_STATUS_BACKGROUND;
    sprite->warioCollision = zero;
    sprite->drawDistanceDown = 32;
    sprite->drawDistanceUp = zero;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 4;
    sprite->hitboxExtentDown = 4;
    sprite->hitboxExtentLeft = 4;
    sprite->hitboxExtentRight = 4;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    sprite->work3 = zero;

    randomCase = (gRandomSeed & 7) - 2;
    {
        register struct PrimarySpriteData* caseSprite asm("r2");

        caseSprite = sprite;
        switch (randomCase) {
            case 0:
                caseSprite->pose = 110;
                caseSprite->pOamData = sBossCorridorCatWaitToTurnOam;
                caseSprite->work0 = 30;
                caseSprite->xPosition += 888;
                break;
            case 1:
                caseSprite->pose = 22;
                caseSprite->pOamData = sBossCorridorCatWalkLeftOam;
                caseSprite->work0 = 32;
                caseSprite->xPosition += 960;
                caseSprite->status |= SPRITE_STATUS_FACING_RIGHT;
                m4aSongNumStart(SE_BOSS_CORRIDOR_CAT_MEOW);
                break;
            case 2:
                caseSprite->pose = 20;
                caseSprite->pOamData = sBossCorridorCatWaitRightOam;
                caseSprite->work0 = 24;
                caseSprite->xPosition += 448;
                break;
            case 3:
                caseSprite->pose = 18;
                caseSprite->pOamData = sBossCorridorCatWaitLeftOam;
                caseSprite->work0 = 20;
                caseSprite->xPosition += 640;
                caseSprite->status |= SPRITE_STATUS_FACING_RIGHT;
                break;
            case 4:
                caseSprite->pose = 16;
                caseSprite->pOamData = sBossCorridorCatRunOam;
                caseSprite->work0 = 56;
                caseSprite->xPosition += 256;
                m4aSongNumStart(SE_BOSS_CORRIDOR_CAT_MEOW);
                break;
            default:
                sprite->status = zero16;
                break;
        }
    }
}

void BossCorridorCatWaitToTurn(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->status |= SPRITE_STATUS_FACING_RIGHT;
        sprite->pose = 111;
        sprite->work0 = 16;
        sprite->pOamData = sBossCorridorCatTurnOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = timer;
    }
}

void BossCorridorCatStartRunningLeft(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pose = 112;
        sprite->work0 = 10;
        sprite->pOamData = sBossCorridorCatRunOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        m4aSongNumStart(SE_BOSS_CORRIDOR_CAT_MEOW);
    }
}

void BossCorridorCatRunLeftFast(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("r2");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    *timerPtr = timer;
    value = timer << 24;
    value >>= 24;
    if (value == 0) {
        goto storeStatus;
    }

    sprite->xPosition -= 10;
    value = timer << 24;
    value >>= 24;
    if (value > 6) {
        return;
    }

    value = sprite->status;
    timer = SPRITE_STATUS_HIDDEN;
    value ^= timer;

storeStatus:
    sprite->status = value;
}

void BossCorridorCatRunLeftSlow(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("r2");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    *timerPtr = timer;
    value = timer << 24;
    value >>= 24;
    if (value == 0) {
        goto storeStatus;
    }

    sprite->xPosition -= 5;
    value = timer << 24;
    value >>= 24;
    if (value > 6) {
        return;
    }

    value = sprite->status;
    timer = SPRITE_STATUS_HIDDEN;
    value ^= timer;

storeStatus:
    sprite->status = value;
}

void BossCorridorCatWaitBeforeRunningRight(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pose = 16;
        sprite->work0 = 36;
        sprite->pOamData = sBossCorridorCatRunOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        m4aSongNumStart(SE_BOSS_CORRIDOR_CAT_MEOW);
    }
}

void BossCorridorCatWaitBeforeRunningLeft(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pose = 16;
        sprite->work0 = 16;
        sprite->pOamData = sBossCorridorCatRunOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        m4aSongNumStart(SE_BOSS_CORRIDOR_CAT_MEOW);
        sprite->status &= ~SPRITE_STATUS_FACING_RIGHT;
    }
}

void BossCorridorCatRunRightFast(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("r2");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r1");
    register u32 value asm("r0");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    *timerPtr = timer;
    value = timer << 24;
    value >>= 24;
    if (value == 0) {
        goto storeStatus;
    }

    sprite->xPosition += 10;
    value = timer << 24;
    value >>= 24;
    if (value > 6) {
        return;
    }

    value = sprite->status;
    timer = SPRITE_STATUS_HIDDEN;
    value ^= timer;

storeStatus:
    sprite->status = value;
}

void SpriteBossCorridorCat(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    switch (sprite->pose) {
        case 0:
            InitBossCorridorCat();
            break;
        case 1:
            sprite->status = 0;
            break;
        case 110:
            BossCorridorCatWaitToTurn();
            break;
        case 111:
            BossCorridorCatStartRunningLeft();
            break;
        case 112:
            BossCorridorCatRunLeftFast();
            break;
        case 22:
            BossCorridorCatRunLeftSlow();
            break;
        case 20:
            BossCorridorCatWaitBeforeRunningRight();
            break;
        case 18:
            BossCorridorCatWaitBeforeRunningLeft();
            break;
        case 16:
            BossCorridorCatRunRightFast();
            break;
    }
}
