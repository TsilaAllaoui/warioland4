#include "score.h"
#include "autosave.h"
#include "hud.h"
#include "gba/m4a.h"
#include "sprite.h"
#include "sprite_collision.h"
#include "screen_shake.h"
#include "wario.h"


ASM_INCLUDE("asm/macros.s.inc");

#ifndef SCORE_USE_WIP_C_UPDATE_SECONDARY_SPRITES
ASM_INCLUDE("asm/disasm_score_UpdateSecondarySprites.s");
#else
void UpdateSecondarySprites(void)
{
    /* Best current pure-C candidate; default build retains the matching assembly. */
    struct SecondarySprite *sprite;
    u32 offset;
    s32 index;

    index = 0;
    offset = 0;
    while (index <= 7) {
        sprite = (struct SecondarySprite *)((u8 *)gSecondarySpriteData + offset);
        if ((sprite->status & 5) == 5) {
            gCurrentSecondarySprite = *sprite;
            sSecondarySpriteAITable[gCurrentSecondarySprite.id]();
            if (gCurrentSecondarySprite.status & 1) {
                DrawCurrentSecondarySprite(index);
            }
            *sprite = gCurrentSecondarySprite;
        }
        offset += sizeof(struct SecondarySprite);
        index++;
    }

    index = 0;
    sprite = gSecondarySpriteData;
    while (index <= 7) {
        if ((sprite->status & 5) == 1) {
            gCurrentSecondarySprite = *sprite;
            sSecondarySpriteAITable[gCurrentSecondarySprite.id]();
            if (gCurrentSecondarySprite.status & 1) {
                DrawCurrentSecondarySprite(index);
            }
            *sprite = gCurrentSecondarySprite;
        }
        sprite++;
        index++;
    }

    UpdateStageTimerAndScoreDrain();
    if (gStageScoreDigitsDirty != 0) {
        UploadStageScoreDigitTiles();
    }
    if (gStageTimerDigitsState != 0) {
        UploadStageTimerDigitTiles();
    }
    if (gStageTimerColonState != 0) {
        UploadStageTimerColonTiles();
    }
}
#endif

void UploadStageScoreDigitTiles(void)
{
    vu32 *dma;

    dma = (vu32 *)0x040000D4;
    dma[0] = (u32)&sScoreDigitsGfx[gScoreDigits[4] * 32];
    dma[1] = 0x06011080;
    dma[2] = 0x80000010;
    dma[2];
    dma[0] = (u32)&sScoreDigitsGfx[gScoreDigits[3] * 32];
    dma[1] = 0x060110A0;
    dma[2] = 0x80000010;
    dma[2];
    dma[0] = (u32)&sScoreDigitsGfx[gScoreDigits[2] * 32];
    dma[1] = 0x060110C0;
    dma[2] = 0x80000010;
    dma[2];
    dma[0] = (u32)&sScoreDigitsGfx[gScoreDigits[1] * 32];
    dma[1] = 0x060110E0;
    dma[2] = 0x80000010;
    dma[2];
    dma[0] = (u32)&sScoreDigitsGfx[gScoreDigits[0] * 32];
    dma[1] = 0x06011100;
    dma[2] = 0x80000010;
    dma[2];
    gStageScoreDigitsDirty = 0;
}

void UploadStageTimerDigitTiles(void)
{
    vu32 *dma;
    s8 *digits;
    u32 dmaControl;
    u8 state;
    s32 seconds;

    state = gStageTimerDigitsState;
    if (gStageTimerDigits[2] == 0) {
        seconds = gStageTimerDigits[1] * 5;
        seconds = seconds * 2 + (u8)gStageTimerDigits[0];
        seconds = (s8)seconds;
        if (seconds == 10) {
            state = 35;
            m4aSongNumStart(0x1C2);
        } else if (seconds == 30) {
            state = 19;
        } else if (seconds <= 9) {
            state |= 32;
        } else if (seconds <= 29) {
            state |= 16;
        }
    }

    switch (state) {
    case 3:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsUpperGfx[digits[2] * 32];
        dma[1] = 0x06011000;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsLowerGfx[digits[2] * 32];
        dma[1] = 0x06011400;
        dma[2] = dmaControl;
        dma[2];
    case 2:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsUpperGfx[digits[1] * 32];
        dma[1] = 0x06011040;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsLowerGfx[digits[1] * 32];
        dma[1] = 0x06011440;
        dma[2] = dmaControl;
        dma[2];
    case 1:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsUpperGfx[digits[0] * 32];
        dma[1] = 0x06011060;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsLowerGfx[digits[0] * 32];
        dma[1] = 0x06011460;
        dma[2] = dmaControl;
        dma[2];
        break;
    case 19:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsYellowUpperGfx[digits[2] * 32];
        dma[1] = 0x06011000;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsYellowLowerGfx[digits[2] * 32];
        dma[1] = 0x06011400;
        dma[2] = dmaControl;
        dma[2];
    case 18:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsYellowUpperGfx[digits[1] * 32];
        dma[1] = 0x06011040;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsYellowLowerGfx[digits[1] * 32];
        dma[1] = 0x06011440;
        dma[2] = dmaControl;
        dma[2];
    case 17:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsYellowUpperGfx[digits[0] * 32];
        dma[1] = 0x06011060;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsYellowLowerGfx[digits[0] * 32];
        dma[1] = 0x06011460;
        dma[2] = dmaControl;
        dma[2];
        break;
    case 35:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsRedUpperGfx[digits[2] * 32];
        dma[1] = 0x06011000;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsRedLowerGfx[digits[2] * 32];
        dma[1] = 0x06011400;
        dma[2] = dmaControl;
        dma[2];
    case 34:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsRedUpperGfx[digits[1] * 32];
        dma[1] = 0x06011040;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsRedLowerGfx[digits[1] * 32];
        dma[1] = 0x06011440;
        dma[2] = dmaControl;
        dma[2];
    case 33:
        dma = (vu32 *)0x040000D4;
        digits = gStageTimerDigits;
        dma[0] = (u32)&sTimeDigitsRedUpperGfx[digits[0] * 32];
        dma[1] = 0x06011060;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        dma[0] = (u32)&sTimeDigitsRedLowerGfx[digits[0] * 32];
        dma[1] = 0x06011460;
        dma[2] = dmaControl;
        dma[2];
        break;
    }
    gStageTimerDigitsState = 0;
}

void UploadStageTimerColonTiles(void)
{
    register vu32 *dma asm("r0");
    register const u8 *lowerGfx asm("r1");
    u32 dmaControl;
    u8 state;
    s32 seconds;

    state = gStageTimerColonState;
    if (gStageTimerDigits[2] == 0) {
        seconds = gStageTimerDigits[1] * 5;
        seconds = seconds * 2 + (u8)gStageTimerDigits[0];
        seconds = (s8)seconds;
        if (seconds <= 10) {
            state |= 32;
        } else if (seconds <= 30) {
            state |= 16;
        }
    }

    switch (state) {
    case 2:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonLowerGfx;
        break;
    case 1:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonEmptyUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonEmptyLowerGfx;
        break;
    case 18:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonYellowUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonYellowLowerGfx;
        break;
    case 17:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonEmptyYellowUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonEmptyYellowLowerGfx;
        break;
    case 34:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonRedUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonRedLowerGfx;
        break;
    case 33:
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sTimeColonEmptyRedUpperGfx;
        dma[1] = 0x06011020;
        dmaControl = 0x80000010;
        dma[2] = dmaControl;
        dma[2];
        lowerGfx = sTimeColonEmptyRedLowerGfx;
        break;
    default:
        gStageTimerColonState = 0;
        return;
    }

    dma[0] = (u32)lowerGfx;
    dma[1] = 0x06011420;
    dma[2] = dmaControl;
    dma[2];
    gStageTimerColonState = 0;
}

void StartTimeUpSequence(void)
{
    vu32 *dma;
    u32 timeUpTextGfx;
    u32 timeUpWarioGfx;
    u32 dmaControlSmall;
    u32 dmaControlMedium;
    u32 dmaControlLarge;
    s32 gfxOffset;

    gWarioPauseTimer = 1000;
    gDisableWario = 1;
    gStageTimerColonState = 2;
    gUnk_3000046 = 1;

    dma = (vu32 *)0x040000D4;
    dma[0] = (u32)sTimeUpTextPal;
    dma[1] = 0x05000240;
    dmaControlSmall = 0x80000010;
    dma[2] = dmaControlSmall;
    dma[2];

    timeUpTextGfx = (u32)sTimeUpTextGfx;
    dma[0] = timeUpTextGfx;
    dma[1] = 0x06010380;
    dmaControlMedium = 0x80000080;
    dma[2] = dmaControlMedium;
    dma[2];

    timeUpWarioGfx = (u32)sTimeUpWarioGfx;
    dma[0] = timeUpWarioGfx;
    dma[1] = 0x06010780;
    dma[2] = dmaControlMedium;
    /* Preserve the DMA completion read before reusing this temporary as an offset. */
    gfxOffset = dma[2];
    gfxOffset = -0x300;
    timeUpTextGfx += gfxOffset;
    dma[0] = timeUpTextGfx;
    dma[1] = 0x06010800;
    dmaControlLarge = 0x80000200;
    dma[2] = dmaControlLarge;
    gfxOffset = dma[2];
    gfxOffset = -0x300;
    timeUpWarioGfx += gfxOffset;
    dma[0] = timeUpWarioGfx;
    dma[1] = 0x06010C00;
    dma[2] = dmaControlLarge;
    dma[2];

    dma[0] = (u32)sTimeUpWarioPal;
    dma[1] = 0x05000200;
    dma[2] = dmaControlSmall;
    dma[2];

    SpawnSecondarySprite(gWarioData.yPosition, gWarioData.xPosition, 77);
    if (gCurrentStageNumber == 4) {
        AutosaveDefeat();
    }
    func_801E4D4();
    m4aSongNumStart(22);
}

void PlayWarioDefeatJingle(void)
{
    func_801E4D4();
    m4aSongNumStart(0x1c5);
}

void UpdateStageTimerAndScoreDrain(void)
{
    /* Match requires the timer digit pointer/value in r1/r2 around the borrow chain. */
    register s8 *digits asm("r1");
    u32 frame;
    s32 updatedDigit;
    u8 timerDigitsState;
    register u8 digit asm("r2");

    if (gSubGameMode != 2) {
        return;
    }
    if (gTimerState > 3) {
        return;
    }
    if (gWarioPauseTimer != 0) {
        return;
    }
    if ((gHeartMeter.current == 0) && (gUnk_3000022 == 0)) {
        StartTimeUpSequence();
        return;
    }

    gStageFrameCounter++;
    frame = gStageFrameCounter;
    if (gTimerState > 1) {
        if ((frame & 7) == 0) {
            AddStageScore(-1);
            SpawnSecondarySprite(gWarioData.yPosition, gWarioData.xPosition, SSPRITE_2E);
            if (gStageScore == 0) {
                gTimerState = 4;
                gWarioPauseTimer = 1000;
                gUnk_3000046 = 1;
                PlayWarioDefeatJingle();
            }
        }
    } else if ((frame & 31) == 0) {
        if (frame & 32) {
            gStageTimerColonState = 1;
        } else {
            gStageTimerColonState = 2;
        }
    }

    if ((frame & 63) != 0) {
        return;
    }
    if (gSwitchPressed != 0) {
        ScreenShakeRequestX(64);
    }

    if (gTimerState == 1) {
        timerDigitsState = 1;
        digits = gStageTimerDigits;
        digit = digits[0];
        if (digits[0] > 0) {
            updatedDigit = digit - 1;
            digits[0] = updatedDigit;
            if (((updatedDigit << 24) == 0) && ((digits[1] | digits[2]) == 0)) {
                m4aSongNumStart(0x1C3);
                if (gStageScore != 0) {
                    gTimerState = 2;
                } else {
                    gTimerState = 4;
                    gWarioPauseTimer = 1000;
                    gUnk_3000046 = 1;
                    PlayWarioDefeatJingle();
                }
            }
        } else {
            timerDigitsState = 2;
            digits[0] = 9;
            digit = digits[1];
            if (digits[1] > 0) {
                updatedDigit = digit - 1;
                digits[1] = updatedDigit;
            } else {
                timerDigitsState = 3;
                digits[1] = 5;
                digit = digits[2];
                if (digits[2] > 0) {
                    updatedDigit = digit - 1;
                    digits[2] = updatedDigit;
                } else {
                    digits[2] = 9;
                }
            }
        }
        gStageTimerDigitsState = timerDigitsState;
    }

    if ((gCurrentStageNumber == 4) && (gCurrentPassage != 0)) {
        if (gCurrentPassage == 5) {
            UpdateTreasureCollectionHudEffects();
        } else {
            StartCollectedJewelPieceHudEffect();
        }
    }
}

#ifndef SCORE_USE_WIP_C_LOAD_STAGE_COLLECTIBLES_FROM_SAVE
ASM_INCLUDE("asm/disasm_score_LoadStageCollectiblesFromSave.s");
#else
void LoadStageCollectiblesFromSave(void)
{
    /* Best current C starting point only. No meaningful matched candidate was kept yet. */
}
#endif

#ifndef SCORE_USE_WIP_C_INIT_STAGE_HUD_AND_SCORE
ASM_INCLUDE("asm/disasm_score_InitStageHudAndScore.s");
#else
void InitStageHudAndScore(void)
{
    /* Best current C starting point only. No meaningful matched candidate was kept yet. */
}
#endif

#ifndef SCORE_USE_WIP_C_DRAW_CURRENT_SECONDARY_SPRITE
ASM_INCLUDE("asm/disasm_score_DrawCurrentSecondarySprite.s");
#else
void DrawCurrentSecondarySprite(u32 index)
{
    /* Best current C starting point only. No meaningful matched candidate was kept yet. */
    (void)index;
}
#endif

void AddStageScore(s32 score)
{
    gStageScoreDigitsDirty = 1;
    gStageScore += score;
    if (gStageScore < 0) {
        gStageScore = 0;
    }

    gScoreDigits[4] = gStageScore / 10000;
    if (gScoreDigits[4] > 9) {
        gScoreDigits[4] = 9;
        gScoreDigits[3] = 9;
        gScoreDigits[2] = 9;
        gScoreDigits[1] = 9;
        gScoreDigits[0] = 9;
    } else {
        gScoreDigits[3] = (gStageScore / 1000) % 10;
        gScoreDigits[2] = (gStageScore / 100) % 10;
        gScoreDigits[1] = (gStageScore / 10) % 10;
        gScoreDigits[0] = gStageScore % 10;
    }
}


#ifndef SCORE_USE_WIP_C_SPAWN_SECONDARY_SPRITE
ASM_INCLUDE("asm/disasm_score_SpawnSecondarySprite.s");
#else
void SpawnSecondarySprite(u32 y, u32 x, u32 id)
{
    /* Best current C candidate; default build retains the matching assembly until exact. */
    struct SecondarySprite *base;
    struct SecondarySprite *sprite;
    u16 yPosition;
    u16 xPosition;
    u8 spriteId;
    u8 replacementIndex;
    u8 longestTimer;
    s32 index;
    u8 timer;
    s32 offset;

    yPosition = y;
    xPosition = x;
    spriteId = id;
    longestTimer = 0;
    index = 0;

    if (gSecondarySpriteData[0].status != 0) {
        base = gSecondarySpriteData;
        do {
            index++;
            if (index > 7) {
                break;
            }
            offset = index;
            offset += index;
            offset += index;
            offset <<= 2;
            if (((volatile u8 *)base)[offset] == 0) {
                longestTimer = 1;
                break;
            }
        } while (TRUE);

        if (longestTimer == 0) {
            replacementIndex = 0xFF;
            index = 0;
            do {
                timer = 0;
                if (gSecondarySpriteData[index].id <= 73) {
                    timer = gSecondarySpriteData[index].timer;
                }
                if (longestTimer < timer) {
                    longestTimer = timer;
                    replacementIndex = index;
                }
                index++;
            } while (index <= 7);

            if (replacementIndex == 0xFF) {
                return;
            }
            index = replacementIndex;
        }
    }
    base = gSecondarySpriteData;

    sprite = &base[index];
    sprite->status = 1;
    sprite->yPosition = yPosition;
    sprite->xPosition = xPosition;
    sprite->animationTimer = 0;
    sprite->work0 = 0;
    sprite->id = spriteId;
    sprite->pose = 0;
    sprite->timer = 0;
    sprite->unk5 = 0;
}
#endif
void ConvertKeyzerToTimeUpEffect(void)
{
    struct SecondarySprite *sprite;

    sprite = &gCurrentSecondarySprite;
    sprite->status = 1;
    sprite->animationTimer = 0;
    sprite->work0 = 0;
    sprite->id = SSPRITE_2F;
    sprite->pose = 0;
    sprite->timer = 0;
    sprite->unk5 = 0;
    AdvanceSecondarySpriteAnimation(sUnk_840FB94);
}

void ResetTimeUpWarioSecondarySprite(void)
{
    struct SecondarySprite *sprite;

    sprite = &gCurrentSecondarySprite;
    sprite->status = 1;
    sprite->animationTimer = 0;
    sprite->work0 = 0;
    sprite->id = SSPRITE_50;
    sprite->pose = 0;
    sprite->timer = 0;
    sprite->unk5 = 0;
    AdvanceSecondarySpriteAnimation(sUnk_840FB94);
}

void SpawnScoreCoinDropSprites(u32 y, u32 x, s32 amount)
{
    u16 yPosition;
    u16 xPosition;
    s32 offset;

    yPosition = y;
    xPosition = x;
    offset = 0;
    while (amount > 99) {
        SpriteSpawnAsChild(133, 0, 0, yPosition - offset, xPosition - offset);
        amount -= 100;
        offset += 32;
    }
    while (amount > 49) {
        SpriteSpawnAsChild(132, 0, 0, yPosition - offset, xPosition - offset);
        amount -= 50;
        offset += 32;
    }
    while (amount > 9) {
        SpriteSpawnAsChild(131, 0, 0, yPosition - offset, xPosition - offset);
        amount -= 10;
        offset += 32;
    }
    while (amount > 4) {
        SpriteSpawnAsChild(130, 0, 0, yPosition - offset, xPosition - offset);
        amount -= 5;
        offset += 32;
    }
    while (amount > 0) {
        SpriteSpawnAsChild(129, 0, 0, yPosition - offset, xPosition - offset);
        amount--;
        offset += 32;
    }
}


void SpawnEnemyScoreDrop(u32 id, u32 y, u32 x, u32 amount)
{
    u16 yPosition;
    u16 xPosition;

    yPosition = y;
    xPosition = x;
    gEnemyScoreDropCounter++;
    if (amount != 0) {
        SpawnScoreCoinDropSprites(yPosition, xPosition, amount);
        SpriteSpawnAsChild(13, 0, 0, yPosition, xPosition);
    }
}


void ChangeStageScoreAndDropCoins(s32 scoreChange)
{
    s32 currentScore;
    s32 lostScore;

    currentScore = gStageScore;
    gUnk_3000C04 = 0;
    if (scoreChange < 0) {
        lostScore = -scoreChange;
        if (currentScore >= lostScore) {
            SpawnScoreCoinDropSprites(gWarioData.yPosition, gWarioData.xPosition, lostScore);
            AddStageScore(scoreChange);
        } else {
            SpawnScoreCoinDropSprites(gWarioData.yPosition, gWarioData.xPosition, currentScore);
            AddStageScore(-currentScore);
        }
    }
}


void SpawnOnePointTileEffect(u32 y, u32 x)
{
    u16 yPosition;
    u16 xPosition;

    yPosition = y;
    xPosition = x;
    AddStageScore(1);
    SpawnSecondarySprite(yPosition, xPosition, 0);
    if (gWarioData.reaction == 1) {
        m4aSongNumStart(0x150);
    } else {
        m4aSongNumStart(0x13e);
    }
}


void SpawnTenPointTileEffect(u32 y, u32 x)
{
    u16 yPosition;
    u16 xPosition;

    yPosition = y;
    xPosition = x;
    AddStageScore(10);
    SpawnSecondarySprite(yPosition, xPosition, 2);
    if (gWarioData.reaction == 1) {
        m4aSongNumStart(0x151);
    } else {
        m4aSongNumStart(0x13f);
    }
}


void SpawnTileDebrisParticle(u32 y, u32 x, u32 debrisOffset, u32 direction, u32 parity)
{
    u16 yPosition;
    u16 xPosition;
    u8 offset;
    u8 spriteDirection;
    u8 variant;
    u8 id;

    yPosition = y;
    xPosition = x;
    offset = debrisOffset;
    spriteDirection = direction;
    variant = parity;
    switch (offset) {
    case 0:
        id = spriteDirection + 7;
        if (variant != 0) {
            id += 6;
        }
        break;
    case 1:
        id = spriteDirection + 19;
        if (variant != 0) {
            id += 6;
        }
        break;
    case 2:
        id = spriteDirection + 31;
        if (variant != 0) {
            id += 6;
        }
        break;
    case 3:
        id = 44;
        if (variant != 0) {
            id = 45;
        }
        break;
    default:
        id = 6;
        break;
    }
    SpawnSecondarySprite((u16)(yPosition + 32), (u16)(xPosition + 32), id);
}


void AdvanceSecondarySpriteAnimation(const struct AnimationFrame *animation)
{
    gCurrentSecondarySprite.work0++;
    if (animation[gCurrentSecondarySprite.animationTimer].time <= (u8)gCurrentSecondarySprite.work0) {
        gCurrentSecondarySprite.work0 = 0;
        gCurrentSecondarySprite.animationTimer++;
        if (animation[gCurrentSecondarySprite.animationTimer].time == 0) {
            gCurrentSecondarySprite.animationTimer = 0;
        }
    }
    gCurrentSecondarySpriteOamData = animation[gCurrentSecondarySprite.animationTimer].oam;
}
