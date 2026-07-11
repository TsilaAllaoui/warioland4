#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/boss_corridor_cat.h"
#include "gba/m4a.h"


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
