#include "sprite_ai/switch.h"

#include "background_registers.h"
#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "voice_set.h"
#include "wario.h"
#include "gba/m4a.h"

void SwitchSetCommonProperties(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u32 statusValue asm("r2");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* ptr asm("r1");
    register u8* temp asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusValue = 0x408;
    status = statusValue;
    zero = 0;
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    ptr = (u8*)sprite;
    *(u16*)ptr = status;
    {
        register u8 oldPriority asm("r1");
        register u8 priority asm("r0");

        oldPriority = ptr[26];
        priority = 0x80;
        priority |= oldPriority;
        ptr = (u8*)sprite;
        ptr[26] = priority;
    }
    ptr += 32;
    *ptr = 48;
    temp = (u8*)sprite + 33;
    *temp = zero;
    ptr += 2;
    *ptr = 16;
    ptr += 2;
    *ptr = 208;
    ptr++;
    *ptr = 24;
    /* agbcc otherwise folds this required pointer increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = 20;
    temp = (u8*)sprite;
    temp[22] = zero;
    *(u16*)(temp + 20) = zero16;
    temp += 40;
    *temp = zero;
}

void SwitchInit(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 48;
    sprite->hitboxExtentUp = 168;
    sprite->pOamData = sSwitchIdleOam;
    sprite->pose = 16;
    SwitchSetCommonProperties();
}

void SwitchInitPressed(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 29;
    sprite->hitboxExtentUp = 176;
    sprite->pOamData = sSwitchPressedOam;
    sprite->pose = 48;
    SwitchSetCommonProperties();
    func_801E430(170, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition);
    sprite->work0 = 60;
}

void EscapeSwitchInit(void)
{
    u8* persistent;
    struct PrimarySpriteData* sprite;

    persistent = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    persistent[gCurrentRoom * MAX_SPRITE_SLOTS_PER_ROOM + sprite->roomSlot] = 17;
    sprite->warioCollision = 48;
    sprite->hitboxExtentUp = 168;
    sprite->pOamData = sEscapeSwitchIdleOam;
    sprite->pose = 111;
    sprite->work0 = 1;
    SwitchSetCommonProperties();
}

void EscapeSwitchWaitForWario(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    if (gDisableWario == 0) {
        sprite = &gCurrentSprite;
        timer = --sprite->work0;
        if (timer == 0) {
            sprite->pOamData = sEscapeSwitchWaitingOam;
            sprite->currentAnimationFrame = timer;
            sprite->animationTimer = timer;
            sprite->work0 = 130;
            sprite->pose = 113;
        }
    }
}

void EscapeSwitchReset(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pOamData = sSwitchIdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
    }
}

void EscapeSwitchActivate(void)
{
    u8* persistent;
    u8* persistentEntry;
    struct PrimarySpriteData* sprite;
    register u32 zero asm("r3");

    persistent = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    persistentEntry = &persistent[gCurrentRoom * MAX_SPRITE_SLOTS_PER_ROOM + sprite->roomSlot];
    zero = 0;
    *persistentEntry = 33;
    sprite->warioCollision = 29;
    sprite->pOamData = sEscapeSwitchPressedOam;
    /* agbcc otherwise inserts a move before these zero stores. */
    asm("strb %1, [%0, #22]\n"
        "strh %1, [%0, #20]" : : "r"(sprite), "r"(zero));
    sprite->pose = 18;
    sprite->work0 = 13;
    gSwitchPressed = 1;
    gUnk_3000035 = 1;
    gSwitchStates[SWITCH_ESCAPE] = SWITCH_STATE_SWITCHING_ON;
    gTimerState = 1;
    gUnk_3000BEC = zero;
    gUnk_3000C01 = 3;
    gUnk_3000C03 = 2;
    SpriteSpawnSecondary(200, 384, 78);
    {
        register struct WarioData* wario asm("r2");
        register u32 y asm("r0");
        register u32 x asm("r1");

        wario = &gWarioData;
        y = wario->yPosition;
        y -= gBg1YPosition;
        x = wario->xPosition;
        {
            register u32 bgX asm("r2");

            bgX = gBg1XPosition;
            bgX += 64;
            x -= bgX;
            SpriteSpawnSecondary(y, x, 79);
        }
    }
    m4aMPlayAllStop();
}

void EscapeSwitchCountdown(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("ip");
    register u8 oldTimer asm("r0");
    register u8 timer asm("r2");
    register u32 shiftedTimer asm("r0");
    register u8 checkedTimer asm("r1");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    oldTimer = *timerPtr;
    timer = oldTimer - 1;
    {
        register u8* storePtr asm("r1");

        storePtr = timerPtr;
        *storePtr = timer;
    }
    shiftedTimer = timer << 24;
    checkedTimer = shiftedTimer >> 24;
    if (checkedTimer != 0) {
        register u8 soundTimer asm("r0");

        soundTimer = checkedTimer;
        if (soundTimer == 12) {
            m4aSongNumStart(SE_ESCAPE_SWITCH_COUNTDOWN);
            VoiceSetPlay(5);
        }
    } else {
        register u8 resetTimer asm("r0");
        register u8* storePtr asm("r1");

        sprite->pOamData = sEscapeSwitchActiveOam;
        /* agbcc otherwise re-normalizes the zero before the halfword store. */
        asm("strb %1, [%0, #22]\n"
            "strh %1, [%0, #20]" : : "r"(sprite), "r"(checkedTimer));
        sprite->pose = 24;
        resetTimer = 40;
        storePtr = timerPtr;
        *storePtr = resetTimer;
        gWarioPauseTimer = 200;
    }
}

void SwitchReleaseDelay(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pOamData = sSwitchReleasedOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 20;
        sprite->work0 = 34;
    }
}

void SwitchRespawnDelay(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8* timerPtr asm("r4");
    register u8 rawTimer asm("r0");
    register u32 shiftedTimer asm("r0");
    register u8 timer asm("r1");

    sprite = &gCurrentSprite;
    timerPtr = (u8*)sprite + 39;
    rawTimer = *timerPtr;
    rawTimer--;
    *timerPtr = rawTimer;
    shiftedTimer = rawTimer << 24;
    timer = shiftedTimer >> 24;
    if (timer == 0) {
        register u8* hitboxPtr asm("r2");
        register const struct AnimationFrame* oam asm("r0");
        register struct PrimarySpriteData* work asm("r2");
        register struct PrimarySpriteData* callSprite asm("r5");

        hitboxPtr = (u8*)sprite + 35;
        *hitboxPtr = 176;
        oam = sSwitchPressedOam;
        work = sprite;
        work->pOamData = oam;
        /* Keep the already-normalized zero in r1 for both animation fields. */
        asm("strb %1, [%0, #22]\n"
            "strh %1, [%0, #20]" : : "r"(work), "r"(timer));
        work->pose = 48;
        {
            register u8 roomSlot asm("r1");
            register u8 gfxSlot asm("r2");

            roomSlot = work->roomSlot;
            gfxSlot = work->gfxSlot;
            /* Place the preserved sprite pointer after both byte argument loads. */
            asm("mov %0, %1" : "=r"(callSprite) : "r"(sprite));
            func_801E430(170, roomSlot, gfxSlot, callSprite->yPosition, callSprite->xPosition);
        }
        *timerPtr = 33;
    }
}

void SwitchUpdateActivationEffects(void)
{
    if (gTimerState <= 4) {
        return;
    }

    switch (gCurrentSprite.work0) {
        case 33:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 30, gCurrentSprite.xPosition, SSPRITE_06);
            gCurrentSprite.pOamData = sSwitchEffectActiveOam;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            break;
        case 30:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition - 16, SSPRITE_06);
            break;
        case 26:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition + 40, SSPRITE_06);
            break;
        case 22:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 128, gCurrentSprite.xPosition, SSPRITE_06);
            break;
        case 18:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition, SSPRITE_06);
            break;
        case 14:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 128, gCurrentSprite.xPosition - 24, SSPRITE_06);
            break;
        case 11:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 90, gCurrentSprite.xPosition + 36, SSPRITE_06);
            break;
        case 8:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 160, gCurrentSprite.xPosition - 16, SSPRITE_06);
            break;
        case 4:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 192, gCurrentSprite.xPosition + 24, SSPRITE_06);
            break;
        case 0:
            gCurrentSprite.status = 0;
            break;
    }
    gCurrentSprite.work0--;
}

void SwitchEffectInit(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u32 statusBits asm("r2");
    register u8 zero asm("r2");
    register u16 zero16 asm("r4");
    register u8 value16 asm("r3");
    register u8 value4 asm("r1");
    register u8* ptr asm("r0");
    register u8* drawPtr asm("r1");
    register const struct AnimationFrame* oam asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusBits = 0x8400;
    status = statusBits;
    zero = 0;
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    status &= 0xFFFB;
    drawPtr = (u8*)sprite;
    *(u16*)drawPtr = status;
    drawPtr += 32;
    status = 24;
    *drawPtr = status;
    ptr = (u8*)sprite + 33;
    *ptr = zero;
    ptr++;
    value16 = 16;
    *ptr = value16;
    ptr++;
    value4 = 4;
    *ptr = value4;
    ptr++;
    *ptr = value4;
    ptr++;
    *ptr = value4;
    /* agbcc otherwise folds this required increment into indexed addressing. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = value4;
    oam = sSwitchEffectIdleOam;
    drawPtr = (u8*)sprite;
    *(const struct AnimationFrame**)(drawPtr + 4) = oam;
    drawPtr[22] = zero;
    *(u16*)(drawPtr + 20) = zero16;
    drawPtr[30] = zero;
    drawPtr[28] = value16;
}

void SpriteSwitch(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            if (gCurrentStageID == 0) {
                EscapeSwitchInit();
            } else {
                SwitchInit();
            }
            break;
        case 1:
            SwitchInit();
            break;
        case 2:
            SwitchInitPressed();
            break;
        case 17:
            EscapeSwitchActivate();
            break;
        case 18:
            EscapeSwitchCountdown();
            break;
        case 24:
            SwitchReleaseDelay();
            break;
        case 20:
            SwitchRespawnDelay();
            break;
        case 111:
            EscapeSwitchWaitForWario();
            break;
        case 113:
            EscapeSwitchReset();
            break;
        case 48:
            SwitchUpdateActivationEffects();
            break;
    }
    func_8026838();
}

void SpriteSwitchEffect(void)
{
    u32 result;

    result = SpriteUtilDespawnChildWithParent(7);
    if (result == 0) {
        gCurrentSprite.disableWarioCollisionTimer = 1;
        if (gCurrentSprite.pose == 0) {
            SwitchEffectInit();
        } else if (gTimerState > 4) {
            gCurrentSprite.status = result;
        }
    }
}