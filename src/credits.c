#include "credits.h"

#include "background_registers.h"
#include "compiler.h"
#include "fixed_point.h"
#include "gba.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "init_helpers.h"
#include "interrupt_callbacks.h"
#include "main.h"
#include "oam.h"
#include "score.h"

extern const struct AnimationFrame sCreditsBackgroundStripAnimation[];
extern const struct AnimationFrame sCreditsBannerAnimation[];
extern const struct AnimationFrame sCreditsClosingAnimation[];
extern const struct AnimationFrame sCreditsEasyAnchorAnimation[];
extern const struct AnimationFrame sCreditsEasyAnchorCompanionAnimation[];
extern const struct AnimationFrame sCreditsEasyDifficultyEffectAnimation[];
extern const struct AnimationFrame sCreditsEasyDifficultyLabelAnimation[];
extern const struct AnimationFrame sCreditsEasyForegroundLayerAnimation[];
extern const struct AnimationFrame sCreditsForegroundStripAnimation[];
extern const struct AnimationFrame sCreditsHardAnchorAnimation[];
extern const struct AnimationFrame sCreditsHardDifficultyLabelAnimation[];
extern const struct AnimationFrame sCreditsHardForegroundLayerAnimation[];
extern const struct AnimationFrame sCreditsHardTreasureBurstAnimation[];
extern const struct AnimationFrame sCreditsMiddleStripAnimation[];
extern const struct AnimationFrame sCreditsNormalAnchorAffineAnimation[];
extern const struct AnimationFrame sCreditsNormalAnchorAnimation[];
extern const struct AnimationFrame sCreditsNormalAnchorCompanionAnimation[];
extern const struct AnimationFrame sCreditsNormalForegroundLayerAnimation[];
extern const struct AnimationFrame sCreditsTreasureDropAnimation[];
extern const struct AnimationFrame sCreditsTreasureSparkleAnimation[];
extern const u16 sCreditsTreasureAnimXOffsets[];
extern const u16 sCreditsTreasureAnimYOffsets[];
extern const u16 sCreditsTreasureDropYTable[];
extern const u8 * const sCreditsTreasureFrameGfxPointers[];
extern const u8 * const sCreditsGoldenTreasureGfxPointers[];
extern const u8 *const sCreditsCaptionTilemaps[];
extern const u8 *const sCreditsScenePalettes[];
extern const u8 *const sCreditsSceneTilemaps[];
extern const u8 sCreditsBackgroundPalette[];
extern const u8 sCreditsBackgroundTilemap[];
extern const u8 sCreditsBackgroundTiles[];
extern const u8 sCreditsBannerFrameDurations[];
extern const u8 sCreditsBlendEvaTargets[];
extern const u8 sCreditsBlendEvbTargets[];
extern const u8 sCreditsForegroundTilemap[];
extern const u8 sCreditsForegroundTiles[];
extern const u8 sCreditsHardDifficultyObjPalette[];
extern const u8 sCreditsHardDifficultyObjTiles[];
extern const u8 sCreditsNormalDifficultyExtraTiles[];
extern const u8 sCreditsNormalDifficultyObjPalette[];
extern const u8 sCreditsNormalDifficultyObjTiles[];
extern const u8 sCreditsObjPalette[];
extern const u8 sCreditsObjTiles[];
extern const u8 sCreditsOverlayTiles[];
extern const u8 sCreditsSpriteStateTemplate[];

void ResetFreeOam(void);

u32 UpdateCreditsScreen(void)
{
    u32 ret;

    SelectCreditsVBlankCallback();
    ret = 0;
    switch (gCreditsMainState) {
    case 0:
        InitializeCredits();
        gCreditsMainState++;
        break;
    case 1:
        if (gCreditsTreasureState.timer > 29) {
            if (gBldy != 0) {
                gBldy--;
                break;
            }
            gCreditsTreasureState.timer = 0;
            gCreditsMainState++;
        } else {
            gCreditsTreasureState.timer++;
            break;
        }
        break;
    case 2:
        if (UpdateCreditsSequence() != 0) {
            gCreditsMainState++;
        }
        break;
    default:
        if ((gMainTimer & 3) == 0) {
            if (gBldy <= 15) {
                gBldy++;
            } else {
                gCreditsMainState = 0;
                ret = 1;
            }
        }
        break;
    }

    if (gCreditsMainState != 0) {
        RenderCreditsOam();
        ResetFreeOam();
    }

    return ret;
}

void SelectCreditsVBlankCallback(void)
{
    int state;

    state = gCreditsMainState;
    if (state >= 0) {
        if (state <= 1 || state == 3) {
            InterruptCallbackSetVBlank(CreditsVBlankMain);
            return;
        }
    }
    InterruptCallbackSetVBlank(CreditsVBlankTreasureDma);
}

void CreditsVBlankMain(void)
{
    vu32 *dma;

    m4aSoundVSync();
    dma = (vu32 *)REG_ADDR_DMA3;
    dma[0] = (u32)gOamBuffer;
    dma[1] = 0x07000000;
    dma[2] = 0x84000100;
    dma[2];

    REG_BLDY = gBldy;

    gBg0XPosition = (gBg0XPosition + 4) & 0x1FF;
    if ((gMainTimer & 3) == 0) {
        gBg1XPosition = (gBg1XPosition + 1) & 0x1FF;
    }

    REG_BG0HOFS = 0;
    REG_BG0VOFS = gBg0YPosition;
    REG_BG1HOFS = gBg1XPosition;
    REG_BG1VOFS = 0;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3HOFS = gBg1XPosition;
    REG_BG3VOFS = 0;
}


void CreditsVBlankTreasureDma(void)
{
    vu32 *dma;
    const u8 * const *frames;
    u8 *state;

    m4aSoundVSync();
    dma = (vu32 *)REG_ADDR_DMA3;
    dma[0] = (u32)gOamBuffer;
    dma[1] = 0x07000000;
    dma[2] = 0x84000100;
    dma[2];

    frames = sCreditsTreasureFrameGfxPointers;
    state = (u8 *)&gCreditsTreasureState;
    dma[0] = (u32)frames[state[4]];
    dma[1] = 0x06010720;
    dma[2] = 0x80000030;
    dma[2];
    dma[0] = (u32)(frames[state[4]] + 0x60);
    dma[1] = 0x06010b20;
    dma[2] = 0x80000030;
    dma[2];
    dma[0] = (u32)(frames[state[4]] + 0xc0);
    dma[1] = 0x06010f20;
    dma[2] = 0x80000030;
    dma[2];

    REG_BLDALPHA = (gBlendAlphaEvb << 8) | gBlendAlphaEva;

    gBg0XPosition = (gBg0XPosition + 4) & 0x1FF;
    if ((gMainTimer & 3) == 0) {
        gBg1XPosition = (gBg1XPosition + 1) & 0x1FF;
    }

    REG_BG0HOFS = 0;
    REG_BG0VOFS = gBg0YPosition;
    REG_BG1HOFS = gBg1XPosition;
    REG_BG1VOFS = 0;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3HOFS = gBg1XPosition;
    REG_BG3VOFS = 0;
}

void CreditsVCountUpdateBgOffset(void)
{
    while ((*(vu16 *)0x04000004 & 2) == 0) {
    }
    *(vu16 *)0x04000014 = gBg0XPosition;
}







void InitializeCredits(void)
{
    register vu32 *dma asm("r3");
    register u32 paletteDest asm("r4");
    struct CreditsTreasureState *state;
    struct CreditsTreasureAnim *anim;
    const u8 *src;
    u8 *dst;
    u32 tmp0;
    u32 tmp1;
    int count;
    u32 bit;
    u8 zeroByte;
    u16 zeroHalf;
    u16 sixteen;
    register u16 x asm("r0");
    u8 difficulty;

    REG_IE ^= 1;
    InitializeVideoMemory();

    dma = (vu32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sCreditsObjTiles;
    dma[1] = 0x06010000;
    dma[2] = 0x80002400;
    dma[2];
    dma[0] = (u32)sCreditsBackgroundTiles;
    dma[1] = 0x06003C00;
    dma[2] = 0x80001200;
    dma[2];
    dma[0] = (u32)sCreditsBackgroundTilemap;
    dma[1] = 0x06006800;
    dma[2] = 0x800009A0;
    dma[2];
    dma[0] = (u32)sCreditsObjPalette;
    paletteDest = 0x05000200;
    dma[1] = paletteDest;
    dma[2] = 0x80000100;
    dma[2];
    dma[0] = (u32)sCreditsBackgroundPalette;
    dma[1] = 0x05000000;
    dma[2] = 0x80000100;
    dma[2];
    dma[0] = (u32)sCreditsForegroundTiles;
    dma[1] = 0x06008000;
    dma[2] = 0x80000400;
    dma[2];
    dma[0] = (u32)sCreditsForegroundTilemap;
    dma[1] = 0x06008800;
    dma[2] = 0x80000800;
    dma[2];
    dma[0] = (u32)sCreditsOverlayTiles;
    dma[1] = 0x06009800;
    dma[2] = 0x80000400;
    dma[2];

    if (gDifficulty == 1) {
        dma[0] = (u32)sCreditsNormalDifficultyObjTiles;
        dma[1] = 0x06010000;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsNormalDifficultyObjTiles + 0x2E0);
        dma[1] = 0x06010400;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsNormalDifficultyObjTiles + 0x5C0);
        dma[1] = 0x06010800;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsNormalDifficultyObjTiles + 0x8A0);
        dma[1] = 0x06010C00;
        dma[2] = 0x80000170;
        dma[2];
        {
            register const u8 *gfxBase asm("r2");
            register u32 smallDmaCount asm("r1");
            register u32 gfxOffset asm("r5");
            register u32 dmaSource asm("r0");

            gfxBase = sCreditsNormalDifficultyExtraTiles;
            dma[0] = (u32)gfxBase;
            dma[1] = 0x06010380;
            smallDmaCount = 0x80000040;
            dma[2] = smallDmaCount;
            dma[2];
            dmaSource = (u32)gfxBase;
            dmaSource += 0x80;
            dma[0] = dmaSource;
            dma[1] = 0x06010780;
            dma[2] = smallDmaCount;
            dma[2];
            gfxOffset = 0x100;
            COMPILER_BARRIER(gfxOffset);
            dmaSource = (u32)gfxBase + gfxOffset;
            dma[0] = dmaSource;
            dma[1] = 0x06010B80;
            dma[2] = smallDmaCount;
            dma[2];
            gfxOffset += 0x80;
            dmaSource = (u32)gfxBase + gfxOffset;
            dma[0] = dmaSource;
            dma[1] = 0x06010F80;
            dma[2] = smallDmaCount;
            dma[2];
        }
        dma[0] = (u32)sCreditsNormalDifficultyObjPalette;
        dma[1] = paletteDest;
        dma[2] = 0x80000010;
        dma[2];
    } else if (gDifficulty > 1) {
        dma[0] = (u32)sCreditsHardDifficultyObjTiles;
        dma[1] = 0x06010000;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsHardDifficultyObjTiles + 0x2E0);
        dma[1] = 0x06010400;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsHardDifficultyObjTiles + 0x5C0);
        dma[1] = 0x06010800;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)(sCreditsHardDifficultyObjTiles + 0x8A0);
        dma[1] = 0x06010C00;
        dma[2] = 0x80000170;
        dma[2];
        dma[0] = (u32)sCreditsHardDifficultyObjPalette;
        dma[1] = paletteDest;
        dma[2] = 0x80000010;
        dma[2];
    }

    REG_BG0CNT = 0x3440;
    REG_BG1CNT = 0x7141;
    REG_BG2CNT = 0x1342;
    REG_BG3CNT = 0x3043;
    REG_DISPCNT = 0x1A00;
    gBlendAlphaEva = (zeroByte = 0);
    COMPILER_BARRIER(zeroByte);
    gBlendAlphaEvb = (sixteen = 16);
    COMPILER_BARRIER(sixteen);
    gBldy = sixteen;
    REG_BLDALPHA = sixteen << 8;
    REG_BLDCNT = 0x1FDF;
    gMainTimer &= 0xFC;
    gCreditsSequencePhase = zeroByte;
    gVideoMode = zeroByte;

    dst = gCreditsBannerSpriteState.bytes;
    src = sCreditsSpriteStateTemplate;
    tmp0 = *(const u32 *)(src + 0);
    tmp1 = *(const u32 *)(src + 4);
    *(u32 *)(dst + 0) = tmp0;
    *(u32 *)(dst + 4) = tmp1;
    zeroHalf = 0;
    x = 0x90;
    COMPILER_BARRIER(x);
    x <<= 1;
    *(u16 *)(gCreditsBannerSpriteState.bytes + 4) = x;
    *(u16 *)(gCreditsBannerSpriteState.bytes + 6) = 0xA0;
    *(u32 *)(gCreditsAnchorSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsAnchorSpriteState.bytes + 4) = tmp1;
    x += 0x90;
    *(u16 *)(gCreditsAnchorSpriteState.bytes + 4) = x;
    *(u16 *)(gCreditsAnchorSpriteState.bytes + 6) = 0x9A;
    {
        register u8 *acc asm("r1");

        acc = gCreditsDifficultyLabelSpriteState.bytes;
        COMPILER_BARRIER(acc);
        *(u32 *)(acc + 0) = tmp0;
        *(u32 *)(acc + 4) = tmp1;
        *(u16 *)(acc + 6) = 0x9B;
    }
    *(u32 *)(gCreditsDifficultyEffectSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsDifficultyEffectSpriteState.bytes + 4) = tmp1;
    *(u32 *)(gCreditsForegroundLayerSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsForegroundLayerSpriteState.bytes + 4) = tmp1;
    *(u16 *)(gCreditsForegroundLayerSpriteState.bytes + 4) = 0xA0;
    *(u16 *)(gCreditsForegroundLayerSpriteState.bytes + 6) = 0x64;
    *(u32 *)(gCreditsMiddleLayerSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsMiddleLayerSpriteState.bytes + 4) = tmp1;
    *(u16 *)(gCreditsMiddleLayerSpriteState.bytes + 4) = zeroHalf;
    *(u16 *)(gCreditsMiddleLayerSpriteState.bytes + 6) = 0x50;
    *(u32 *)(gCreditsBackgroundLayerSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsBackgroundLayerSpriteState.bytes + 4) = tmp1;
    x = 0xA8;
    COMPILER_BARRIER(x);
    x <<= 1;
    *(u16 *)(gCreditsBackgroundLayerSpriteState.bytes + 4) = x;
    *(u16 *)(gCreditsBackgroundLayerSpriteState.bytes + 6) = 0x3C;
    *(u32 *)(gCreditsClosingSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsClosingSpriteState.bytes + 4) = tmp1;
    *(u16 *)(gCreditsClosingSpriteState.bytes + 4) = 0x78;
    *(u16 *)(gCreditsClosingSpriteState.bytes + 6) = 0x78;
    *(u32 *)(gCreditsTreasureBurstSpriteState.bytes + 0) = tmp0;
    *(u32 *)(gCreditsTreasureBurstSpriteState.bytes + 4) = tmp1;

    state = &gCreditsTreasureState;
    state->phase = zeroByte;
    state->treasureIndex = zeroByte;
    state->currentTreasureBit = 1;
    state->gfxFrame = zeroByte;
    state->timer = zeroByte;
    state->sequenceTimer = zeroHalf;

    gCreditsTreasureAnim.collectedMask = zeroHalf;
    bit = 1;
    count = 0;

    if (gCollectedNEJewelPiece != 0) { gCreditsTreasureAnim.collectedMask = bit; count = 1; }
    if (gCollectedSEJewelPiece != 0) { gCreditsTreasureAnim.collectedMask |= 2; count++; }
    if (gCollectedSWJewelPiece != 0) { gCreditsTreasureAnim.collectedMask |= 4; count++; }
    if (gCollectedNWJewelPiece != 0) { gCreditsTreasureAnim.collectedMask |= 8; count++; }
    if (gHasBossTreasure5 != 0) {
        register u16 collectedMask asm("r0");

        collectedMask = gCreditsTreasureAnim.collectedMask;
        COMPILER_BARRIER(collectedMask);
        collectedMask |= sixteen;
        gCreditsTreasureAnim.collectedMask = collectedMask;
        count++;
    }
    if (gHasBossTreasure6 != 0) { gCreditsTreasureAnim.collectedMask |= 32; count++; }
    if (gHasBossTreasure7 != 0) { gCreditsTreasureAnim.collectedMask |= 64; count++; }
    bit = 0x80;
    if (gHasBossTreasure8 != 0) { gCreditsTreasureAnim.collectedMask |= 0x80; count++; }
    bit <<= 1;
    if (gHasBossTreasure9 != 0) { gCreditsTreasureAnim.collectedMask |= bit; count++; }
    bit <<= 1;
    if (gHasBossTreasure10 != 0) { gCreditsTreasureAnim.collectedMask |= bit; count++; }
    bit <<= 1;
    if (gHasBossTreasure11 != 0) { gCreditsTreasureAnim.collectedMask |= bit; count++; }
    bit <<= 1;
    if (gHasBossTreasure12 != 0) { gCreditsTreasureAnim.collectedMask |= bit; count++; }
    bit <<= 1;
    difficulty = gDifficulty;
    if (difficulty != 0 && count > 11) { gCreditsTreasureAnim.collectedMask |= bit; }
    bit <<= 1;
    difficulty = gDifficulty;
    if (difficulty > 1 && count > 11) { gCreditsTreasureAnim.collectedMask |= bit; }

    if (count == 0) {
        gCreditsTreasureAnim.type = 4;
        if (gLanguage == 0) { m4aSongNumStartOrChange(0x332); }
        else { m4aSongNumStartOrChange(0x32c); }
    } else if (count <= 1) {
        gCreditsTreasureAnim.type = 0;
        if (gLanguage == 0) { m4aSongNumStartOrChange(0x331); }
        else { m4aSongNumStartOrChange(0x329); }
    } else if (count <= 5) {
        gCreditsTreasureAnim.type = 1;
        if (gLanguage == 0) { m4aSongNumStartOrChange(0x330); }
        else { m4aSongNumStartOrChange(0x326); }
    } else if (count <= 11) {
        gCreditsTreasureAnim.type = 2;
        if (gLanguage == 0) { m4aSongNumStartOrChange(0x330); }
        else { m4aSongNumStartOrChange(0x326); }
    } else {
        gCreditsTreasureAnim.type = 3;
        if (gLanguage == 0) { m4aSongNumStartOrChange(0x32f); }
        else { m4aSongNumStartOrChange(0x323); }
    }

    anim = &gCreditsTreasureAnim;
    anim->scaleX = sCreditsTreasureAnimXOffsets[anim->type * 5 + anim->frame];
    anim->scaleY = sCreditsTreasureAnimYOffsets[anim->type * 5 + anim->frame];
    anim->xOffset = 0x38;
    anim->dropY = sCreditsTreasureDropYTable[gDifficulty * 5 + anim->type];
    if (gDifficulty == 1) {
        anim->xOffset = 0x36;
    } else if (gDifficulty == 2) {
        anim->xOffset = 0x3B;
    }

    {
        register u16 finalZero asm("r4");
        struct CreditsTreasureDrop *drop;

        drop = &gCreditsTreasureDrop;
        finalZero = 0;
        COMPILER_BARRIER(finalZero);
        drop->state = finalZero;
        RenderCreditsOam();
        ResetFreeOam();

        gBg0XPosition = finalZero;
        gBg0YPosition = finalZero;
        gBg1XPosition = finalZero;
        gBg1YPosition = finalZero;
        gBg2XPosition = finalZero;
        gBg2YPosition = finalZero;
        gBg3XPosition = finalZero;
        gBg3YPosition = finalZero;
    }

    InterruptCallbackSetVBlank(CreditsVBlankMain);
    InterruptCallbackSetVCount(CreditsVCountUpdateBgOffset);
    REG_DISPSTAT &= 7;
    REG_DISPSTAT |= 0x7E28;
    REG_IE |= 5;
}


#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_credits_RenderCreditsOam.s");
#else

void RenderCreditsOam(void)
{
  register const struct AnimationFrame *animation asm("r5");
  register const struct AnimationFrame *table asm("r3");
  const struct AnimationFrame *base;
  const struct AnimationFrame *frameData;
  const u16 *src;
  u16 *dest;
  s32 currentSlot;
  s32 nextSlot;
  u16 attr;
  s32 xOffset;
  s32 yOffset;
  s32 i;
  s16 affine[4];
  s16 *pbPtr;
  s16 *pcPtr;
  s16 *pdPtr;
  struct CreditsSpriteState *state;
  struct CreditsSpriteState *anchor;
  register struct CreditsSpriteState *secondState asm("sl");
  register struct CreditsSpriteState *effectState asm("ip");
  dest = (u16 *) gOamBuffer;
  nextSlot = 0;
  {
    register struct CreditsSpriteState *initialState asm("r1");
    register s32 wrapOffset asm("r2");
    register u32 wrappedX asm("r0");
    register u32 stateX asm("r3");
    initialState = &gCreditsBannerSpriteState.sprite;
    wrapOffset = -448;
    asm("" : "+r"(wrapOffset));
    wrappedX = wrapOffset;
    asm("" : "+r"(wrappedX));
    stateX = initialState->x;
    wrappedX += stateX;
    wrappedX = (u16) wrappedX;
    state = initialState;
    if (wrappedX <= 32)
    {
    state->frame = (state->frame + 1) & 3;
    state->x = 288;
      state->active = sCreditsBannerFrameDurations[state->frame];
    }
  }
  if (state->active != 0)
  {
    state->active--;
  }
  else
    if (1)
  {
    state->x = (state->x - 8) & 0x1FF;
  }
  xOffset = state->x;
  yOffset = state->y;
  animation = sCreditsBannerAnimation;
  {
    register u32 frameOffset asm("r0");
    frameOffset = state->frame;
    frameOffset <<= 3;
    asm("" : "+r"(frameOffset), "+r"(animation));
    animation = (const struct AnimationFrame *) (frameOffset + (u32) animation);
  }
  src = animation->oam;
  nextSlot += *(src++);
  currentSlot = 0;
  secondState = &gCreditsDifficultyLabelSpriteState.sprite;
  effectState = &gCreditsDifficultyEffectSpriteState.sprite;
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 1;
    dest++;
  }

  if (gDifficulty <= 1)
  {
    register const struct AnimationFrame *localTable asm("r0");
    register const struct AnimationFrame *tableCopy asm("r3");
    register struct CreditsSpriteState *localState asm("r2");
    localTable = sCreditsEasyDifficultyLabelAnimation;
    localState = secondState;
    {
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      frameOffset = localState->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      timer = localState->timer;
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        register struct CreditsSpriteState *updateState asm("r4");
        register u32 zero asm("r0");
        zero = 0;
        updateState = secondState;
        updateState->timer = zero;
      updateState->frame++;
      if (tableCopy[updateState->frame].time == 0)
      {
        updateState->frame = 0;
        }
      }
    }
    animation = tableCopy;
    {
      register struct CreditsSpriteState *anchorX asm("r1");
      anchorX = &gCreditsAnchorSpriteState.sprite;
      xOffset = anchorX->x - 72;
    }
  }
  else
  {
    register const struct AnimationFrame *localTable asm("r0");
    register const struct AnimationFrame *tableCopy asm("r3");
    register struct CreditsSpriteState *localState asm("r2");
    localTable = sCreditsHardDifficultyLabelAnimation;
    localState = secondState;
    {
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      frameOffset = localState->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      timer = localState->timer;
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        register struct CreditsSpriteState *updateState asm("r4");
        register u32 zero asm("r0");
        zero = 0;
        updateState = secondState;
        updateState->timer = zero;
      updateState->frame++;
      if (tableCopy[updateState->frame].time == 0)
      {
        updateState->frame = 0;
        }
      }
    }
    animation = tableCopy;
    {
      register struct CreditsSpriteState *anchorX asm("r1");
      anchorX = &gCreditsAnchorSpriteState.sprite;
      xOffset = anchorX->x - 8;
    }
  }
  state = secondState;
  state->timer++;
  if (gCreditsAnchorSpriteState.sprite.x <= 319)
  {
    register u32 stateY asm("r4");
    register u32 frameOffset asm("r0");
    stateY = state->y;
    asm("" : "+r"(stateY));
    yOffset = stateY;
    frameOffset = state->frame;
    frameOffset <<= 3;
    animation = (const struct AnimationFrame *) ((u32) animation + frameOffset);
    src = animation->oam;
    nextSlot += *(src++);
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = attr + yOffset;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 1;
      dest++;
    }

  }
  {
    register struct CreditsSpriteState *effectCheck asm("r1");
    effectCheck = effectState;
    if ((effectCheck->active != 0) && (gDifficulty <= 1))
    {
      register const struct AnimationFrame *localTable asm("r0");
      register const struct AnimationFrame *tableCopy asm("r3");
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      localTable = sCreditsEasyDifficultyEffectAnimation;
      frameOffset = effectCheck->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      {
        register struct CreditsSpriteState *timerState asm("r3");
        timerState = effectState;
        timer = timerState->timer;
      }
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        register u32 zero asm("r0");
        register struct CreditsSpriteState *updateState asm("r4");
        zero = 0;
        updateState = effectState;
        updateState->timer = zero;
        updateState->frame++;
        {
          register u32 updatedFrame asm("r2");
          register u32 endTime asm("r1");
          updatedFrame = updateState->frame;
          endTime = tableCopy[updatedFrame].time;
          asm("" : "+r"(endTime));
          if (endTime == 0)
          {
            register u32 lastFrame asm("r0");
            lastFrame = updatedFrame - 1;
            updateState->frame = lastFrame;
            updateState->active = endTime;
          }
        }
      }
      {
        register struct CreditsSpriteState *tickState asm("r1");
        register u32 effectX asm("r2");
        register u32 effectY asm("r4");
        register u32 outputFrame asm("r0");
        tickState = effectState;
        tickState->timer++;
        effectX = 50;
        asm("" : "+r"(effectX));
        xOffset = effectX;
        effectY = 140;
        asm("" : "+r"(effectY));
        yOffset = effectY;
        outputFrame = tickState->frame;
        outputFrame <<= 3;
        animation = (const struct AnimationFrame *) (outputFrame + (u32) tableCopy);
      }
      src = animation->oam;
      {
        register u32 objectCount asm("r0");
        register s32 updatedNextSlot asm("r1");
        objectCount = *src;
        asm("" : "+r"(objectCount));
        updatedNextSlot = nextSlot;
        updatedNextSlot += objectCount;
        asm("" : "+r"(updatedNextSlot));
        nextSlot = updatedNextSlot;
        src++;
      }
      for (; currentSlot < nextSlot; currentSlot++)
      {
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.y = attr + yOffset;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 1;
        dest++;
      }

    }
  }
  {
    register struct CreditsSpriteState *effectCheck asm("r1");
    effectCheck = &gCreditsTreasureBurstSpriteState.sprite;
    if (effectCheck->active != 0)
    {
      register const struct AnimationFrame *localTable asm("r0");
      register const struct AnimationFrame *tableCopy asm("r3");
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      localTable = sCreditsHardTreasureBurstAnimation;
      frameOffset = effectCheck->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      {
        register struct CreditsSpriteState *timerState asm("r3");
        timerState = &gCreditsTreasureBurstSpriteState.sprite;
        timer = timerState->timer;
      }
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        register u32 zero asm("r0");
        register struct CreditsSpriteState *updateState asm("r4");
        zero = 0;
        updateState = &gCreditsTreasureBurstSpriteState.sprite;
        updateState->timer = zero;
        updateState->frame++;
        {
          register u32 updatedFrame asm("r2");
          updatedFrame = updateState->frame;
          if (tableCopy[updatedFrame].time == 0)
          {
            updateState->frame = updatedFrame - 1;
            updateState->active = 0;
          }
        }
      }
      {
        register struct CreditsSpriteState *tickState asm("r1");
        register u32 effectX asm("r2");
        register u32 effectY asm("r4");
        register u32 outputFrame asm("r0");
        tickState = &gCreditsTreasureBurstSpriteState.sprite;
        tickState->timer++;
        effectX = tickState->x;
        xOffset = effectX;
        effectY = tickState->y;
        yOffset = effectY;
        outputFrame = tickState->frame;
        outputFrame <<= 3;
        animation = (const struct AnimationFrame *) (outputFrame + (u32) tableCopy);
      }
      src = animation->oam;
      nextSlot += *(src++);
      for (; currentSlot < nextSlot; currentSlot++)
      {
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.y = attr + yOffset;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 1;
        dest++;
      }

    }
  }

  {
    register const u8 *difficultyPtr asm("r1");
    register u32 difficulty asm("r3");
    difficultyPtr = &gDifficulty;
    difficulty = *difficultyPtr;
    if (difficulty == 0)
    {
      register const struct AnimationFrame *localTable asm("r0");
      register const struct AnimationFrame *tableCopy asm("r4");
      register struct CreditsSpriteState *localState asm("r2");
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      localTable = sCreditsEasyAnchorAnimation;
      localState = &gCreditsAnchorSpriteState.sprite;
      frameOffset = localState->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      timer = localState->timer;
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        u32 nextFrame;
        {
          register struct CreditsSpriteState *timerState asm("r0");
          timerState = &gCreditsAnchorSpriteState.sprite;
          timerState->timer = difficulty;
          nextFrame = timerState->frame;
        }
        nextFrame++;
        asm("" : "+r"(nextFrame));
        {
          register struct CreditsSpriteState *frameState asm("r1");
          frameState = &gCreditsAnchorSpriteState.sprite;
          frameState->frame = nextFrame;
          if (tableCopy[frameState->frame].time == 0)
          {
            frameState->frame = difficulty;
          }
        }
      }
      animation = tableCopy;
    }
    else
    {
      register const struct AnimationFrame *localTable asm("r0");
      register const struct AnimationFrame *tableCopy asm("r3");
      register struct CreditsSpriteState *localState asm("r2");
      register u32 frameOffset asm("r1");
      register u32 timer asm("r2");
      if (difficulty == 1)
      {
        localTable = sCreditsNormalAnchorAnimation;
      }
      else
      {
        localTable = sCreditsHardAnchorAnimation;
      }
      localState = &gCreditsAnchorSpriteState.sprite;
      frameOffset = localState->frame;
      frameOffset <<= 3;
      frameData = (const struct AnimationFrame *) (frameOffset + (u32) localTable);
      timer = localState->timer;
      tableCopy = localTable;
      if (timer >= frameData->time)
      {
        register u32 zero asm("r0");
        register struct CreditsSpriteState *updateState asm("r4");
        zero = 0;
        updateState = &gCreditsAnchorSpriteState.sprite;
        updateState->timer = zero;
        updateState->frame++;
        if (tableCopy[updateState->frame].time == 0)
        {
          updateState->frame = 0;
        }
      }
      animation = tableCopy;
    }
  }
  {
    register struct CreditsSpriteState *outputState asm("r1");
    register u32 outputX asm("r2");
    register u32 outputY asm("r4");
    register u32 outputFrame asm("r0");
    outputState = &gCreditsAnchorSpriteState.sprite;
    outputState->timer++;
    outputX = outputState->x;
    xOffset = outputX;
    outputY = outputState->y;
    yOffset = outputY;
    outputFrame = outputState->frame;
    outputFrame <<= 3;
    animation = (const struct AnimationFrame *) ((u32) animation + outputFrame);
  }
  anchor = &gCreditsAnchorSpriteState.sprite;
  src = animation->oam;
  nextSlot += *(src++);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 1;
    dest++;
  }

  if (gDifficulty == 0)
  {
    yOffset = 144;
    animation = sCreditsEasyAnchorCompanionAnimation;
    {
      register u32 frameOffset asm("r0");
      frameOffset = anchor->frame;
      frameOffset <<= 3;
      asm("" : "+r"(frameOffset), "+r"(animation));
      animation = (const struct AnimationFrame *) (frameOffset + (u32) animation);
    }
    i = 0;
    do
    {
      if (i == 0)
      {
        xOffset = anchor->x + 16;
      }
      else
      {
        xOffset = anchor->x - 36;
      }
      src = animation->oam;
      nextSlot += *(src++);
      i++;
      for (; currentSlot < nextSlot; currentSlot++)
      {
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.y = attr + yOffset;
        gOamBuffer[currentSlot].split.affineMode = 1;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
        gOamBuffer[currentSlot].split.matrixNum = 0;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 1;
        dest++;
      }

    }
    while (i <= 1);
  }
  else
    if (gDifficulty == 1)
  {
    yOffset = 144;
    animation = sCreditsNormalAnchorCompanionAnimation;
    {
      register u32 frameOffset asm("r0");
      frameOffset = anchor->frame;
      frameOffset <<= 3;
      asm("" : "+r"(frameOffset), "+r"(animation));
      i = 0;
      animation = (const struct AnimationFrame *) (frameOffset + (u32) animation);
    }
    do
    {
      if (i == 0)
      {
        xOffset = anchor->x - 25;
      }
      else
      {
        xOffset = anchor->x - 47;
      }
      src = animation->oam;
      nextSlot += *(src++);
      for (; currentSlot < nextSlot; currentSlot++)
      {
        i++;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.y = attr + yOffset;
        gOamBuffer[currentSlot].split.affineMode = 1;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
        gOamBuffer[currentSlot].split.matrixNum = 0;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 1;
        dest++;
      }

    }
    while ((i - 1) <= (1 - 1));
    xOffset = anchor->x + 42;
    yOffset = 144;
    src = sCreditsNormalAnchorAffineAnimation[anchor->frame].oam;
    nextSlot += *(src++);
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = attr + yOffset;
      gOamBuffer[currentSlot].split.affineMode = 1;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
      gOamBuffer[currentSlot].split.matrixNum = 0;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 1;
      dest++;
    }

  }
  if (gDifficulty <= 1)
  {
    register s16 *rotationPb asm("sl");
    register s16 *rotationPc asm("r9");
    gCreditsTreasureAffineAngle = (gCreditsTreasureAffineAngle + 16) & 0xFF;
    affine[0] = FixedMul(sSinCosTable[gCreditsTreasureAffineAngle + 64], (s16) FixedInverse(256));
    {
      register s32 affineValue asm("r0");
      affineValue = FixedMul(sSinCosTable[gCreditsTreasureAffineAngle], (s16) FixedInverse(256));
      asm("" : "+r"(affineValue));
      {
        register u32 pbAddress asm("r2");
        pbAddress = 2;
        asm("" : "+r"(pbAddress));
        pbAddress += (u32) affine;
        rotationPb = (s16 *) pbAddress;
        *(s16 *) pbAddress = affineValue;
      }
    }
    {
      register s32 affineValue asm("r0");
      register s32 sineValue asm("r4");
      sineValue = (u16) sSinCosTable[gCreditsTreasureAffineAngle];
      sineValue = -sineValue;
      sineValue = (s16) sineValue;
      asm("" : "+r"(sineValue));
      affineValue = FixedMul(sineValue, (s16) FixedInverse(256));
      asm("" : "+r"(affineValue));
      {
        register s16 *pcAddress asm("r3");
        pcAddress = &affine[2];
        rotationPc = pcAddress;
        *pcAddress = affineValue;
      }
    }
    affine[3] = FixedMul(sSinCosTable[gCreditsTreasureAffineAngle + 64], (s16) FixedInverse(256));
    gOamBuffer[0].all.affineParam = affine[0];
    gOamBuffer[1].all.affineParam = *rotationPb;
    gOamBuffer[2].all.affineParam = *rotationPc;
    gOamBuffer[3].all.affineParam = affine[3];
  }
  if (gCreditsTreasureAnim.type <= 3)
  {
    animation = sCreditsTreasureSparkleAnimation;
    {
      register u32 treasureY asm("r0");
      treasureY = gCreditsTreasureAnim.dropY;
      asm("" : "+r"(treasureY));
      yOffset = treasureY;
    }
    if (gDifficulty <= 1)
    {
      {
        register u32 frameOffset asm("r0");
        frameOffset = anchor->frame;
        frameOffset <<= 3;
        asm("" : "+r"(frameOffset), "+r"(animation));
        animation = (const struct AnimationFrame *) (frameOffset + (u32) animation);
      }
    }
    else
      if (anchor->frame == 1)
    {
      yOffset--;
    }
    else
      if (anchor->frame == 3)
    {
      yOffset++;
    }
    xOffset = anchor->x - gCreditsTreasureAnim.xOffset;
    src = animation->oam;
    nextSlot += *(src++);
    pbPtr = &affine[1];
    pcPtr = &affine[2];
    pdPtr = &affine[3];
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = (*(dest++) = attr);
      gOamBuffer[currentSlot].split.y = attr + yOffset;
      gOamBuffer[currentSlot].split.affineMode = 3;
      attr = *(src++);
      gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
      gOamBuffer[currentSlot].split.matrixNum = 1;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 1;
      dest++;
    }

    affine[0] = FixedMul(sSinCosTable[64], (s16) FixedInverse((s16) gCreditsTreasureAnim.scaleX));
    *pbPtr = FixedMul(sSinCosTable[0], (s16) FixedInverse((s16) gCreditsTreasureAnim.scaleX));
    {
      register s16 sineZero asm("r4");
      asm("" : "=r"(sineZero));
      sineZero = sSinCosTable[0];
      *pcPtr = FixedMul(-sineZero, (s16) FixedInverse((s16) gCreditsTreasureAnim.scaleY));
    }
    *pdPtr = FixedMul(sSinCosTable[64], (s16) FixedInverse((s16) gCreditsTreasureAnim.scaleY));
    gOamBuffer[4].all.affineParam = affine[0];
    gOamBuffer[5].all.affineParam = *pbPtr;
    gOamBuffer[6].all.affineParam = *pcPtr;
    gOamBuffer[7].all.affineParam = *pdPtr;
  }
  if (gCreditsTreasureDrop.state != 0)
  {
    xOffset = anchor->x - gCreditsTreasureAnim.xOffset;
    yOffset = gCreditsTreasureDrop.y;
    src = sCreditsTreasureDropAnimation[0].oam;
    nextSlot += *(src++);
    pbPtr = &affine[1];
    pcPtr = &affine[2];
    pdPtr = &affine[3];
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = attr + yOffset;
      gOamBuffer[currentSlot].split.affineMode = 3;
      attr = (*(dest++) = *(src++));
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
      gOamBuffer[currentSlot].split.matrixNum = 2;
      gOamBuffer[currentSlot].split.priority = 1;
      dest++;
    }

    affine[0] = FixedMul(sSinCosTable[64], (s16) FixedInverse((s16) gCreditsTreasureDrop.scale));
    *pbPtr = FixedMul(sSinCosTable[0], (s16) FixedInverse((s16) gCreditsTreasureDrop.scale));
    {
      register s16 sineZero asm("r4");
      asm("" : "=r"(sineZero));
      sineZero = sSinCosTable[0];
      *pcPtr = FixedMul(-sineZero, (s16) FixedInverse((s16) gCreditsTreasureDrop.scale));
    }
    *pdPtr = FixedMul(sSinCosTable[64], (s16) FixedInverse((s16) gCreditsTreasureDrop.scale));
    gOamBuffer[8].all.affineParam = affine[0];
    gOamBuffer[9].all.affineParam = *pbPtr;
    gOamBuffer[10].all.affineParam = *pcPtr;
    gOamBuffer[11].all.affineParam = *pdPtr;
  }
  if (gDifficulty == 0)
  {
    animation = sCreditsEasyForegroundLayerAnimation;
    yOffset = anchor->y - 2;
  }
  else
    if (gDifficulty == 1)
  {
    animation = sCreditsNormalForegroundLayerAnimation;
    yOffset = anchor->y;
  }
  else
  {
    animation = sCreditsHardForegroundLayerAnimation;
    yOffset = anchor->y;
  }
  {
    register long long scrollX asm("r3");
    register struct CreditsSpriteState *scrollFrameState asm("r4");
    scrollX = anchor->x;
    xOffset = scrollX;
    scrollFrameState = &gCreditsForegroundLayerSpriteState.sprite;
    src = animation[scrollFrameState->frame].oam;
  }
  nextSlot += *(src++);
  asm("" : "=r"(secondState));
  secondState = &gCreditsForegroundLayerSpriteState.sprite;
  animation = (const struct AnimationFrame *) (&gCreditsClosingSpriteState.sprite);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = (*(dest++) = attr);
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 1;
    dest++;
  }

  if ((gMainTimer & 7) == 0)
  {
    register struct CreditsSpriteState *scrollState asm("r3");
    register u32 positionMask asm("r4");
    register u32 maskCopy asm("r1");
    u32 position;
    scrollState = secondState;
    position = scrollState->x - 1;
    positionMask = 0x1FF;
    asm("" : "+r"(positionMask));
    maskCopy = positionMask;
    position &= maskCopy;
    scrollState->x = position;
    {
      register struct CreditsSpriteState *middleState asm("r2");
      middleState = &gCreditsMiddleLayerSpriteState.sprite;
      middleState->x = (middleState->x - 1) & maskCopy;
    }
    {
      register struct CreditsSpriteState *rearState asm("r3");
      rearState = &gCreditsBackgroundLayerSpriteState.sprite;
      rearState->x = (rearState->x - 1) & maskCopy;
    }
  }
  {
    register struct CreditsSpriteState *scrollXState asm("r4");
    scrollXState = secondState;
    xOffset = scrollXState->x;
  }
  yOffset = secondState->y;
  src = sCreditsForegroundStripAnimation[0].oam;
  nextSlot += *(src++);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 3;
    dest++;
  }

  xOffset = gCreditsMiddleLayerSpriteState.sprite.x;
  yOffset = gCreditsMiddleLayerSpriteState.sprite.y;
  src = sCreditsMiddleStripAnimation[0].oam;
  nextSlot += *(src++);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 3;
    dest++;
  }

  xOffset = gCreditsBackgroundLayerSpriteState.sprite.x;
  yOffset = gCreditsBackgroundLayerSpriteState.sprite.y;
  src = sCreditsBackgroundStripAnimation[0].oam;
  nextSlot += *(src++);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 3;
    dest++;
  }

  if (((struct CreditsSpriteState *) animation)->timer >= sCreditsClosingAnimation[((struct CreditsSpriteState *) animation)->frame].time)
  {
    ((struct CreditsSpriteState *) animation)->timer = 0;
    ((struct CreditsSpriteState *) animation)->frame++;
    if (sCreditsClosingAnimation[((struct CreditsSpriteState *) animation)->frame].time == 0)
    {
      ((struct CreditsSpriteState *) animation)->frame = 0;
    }
  }
  ((struct CreditsSpriteState *) animation)->timer++;
  xOffset = ((struct CreditsSpriteState *) animation)->x;
  yOffset = ((struct CreditsSpriteState *) animation)->y;
  {
    register u32 finalFrameOffset asm("r0");
    finalFrameOffset = ((struct CreditsSpriteState *) animation)->frame;
    finalFrameOffset <<= 3;
    animation = (const struct AnimationFrame *) (((u32) sCreditsClosingAnimation) + finalFrameOffset);
  }
  src = animation->oam;
  nextSlot += *(src++);
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = attr + yOffset;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + xOffset) & 0x1FF;
    *(dest++) = *(src++);
    gOamBuffer[currentSlot].split.priority = 3;
    dest++;
  }

  gOamSlotsUsed = nextSlot;
}

#endif

u32 UpdateCreditsSequence(void)
{
    struct CreditsTreasureState *state;
    struct CreditsObjectState *object;
    register u32 completed asm("r8");
    int musicState;
    const u8 *fadeInTargets;
    register u8 *phasePtr asm("r4");
    register u8 *videoModePtr asm("r6");
    register u8 *videoModeSource asm("r0");
    register u8 mode asm("r1");
    register u8 *phaseSource asm("r0");
    register u8 phaseValue asm("r1");

    completed = 0;
    musicState = gMPlayMemAccArea[0];
    if (musicState == 1) {
        m4aSongNumStartOrChange(0x324);
    } else if (musicState == 2) {
        m4aSongNumStartOrChange(0x325);
    } else if (musicState == 3) {
        m4aSongNumStartOrChange(0x327);
    } else if (musicState == 4) {
        m4aSongNumStartOrChange(0x328);
    } else if (musicState == 5) {
        m4aSongNumStartOrChange(0x32A);
    } else if (musicState == 6) {
        m4aSongNumStartOrChange(0x32B);
    } else if (musicState == 7) {
        m4aSongNumStartOrChange(0x32D);
    } else if (musicState == 8) {
        m4aSongNumStartOrChange(0x32E);
    }

    phaseSource = (u8 *)&gCreditsSequencePhase;
    phaseValue = *phaseSource;
    phasePtr = phaseSource;
    switch (phaseValue) {
    case 0:
        object = &gCreditsAnchorSpriteState.object;
        if ((u16)(object->x - 81) > 366) {
            object->x = (object->x + 2) & 0x1FF;
        } else if (object->x == 150) {
            (*phasePtr)++;
        } else {
            object->x = (object->x + 1) & 0x1FF;
        }
        break;
    case 1:
        if (gCreditsAnchorSpriteState.object.x != 120) {
            if (gCreditsAnchorSpriteState.object.timer > 30) {
                if (gMainTimer & 1) {
                    gCreditsAnchorSpriteState.object.x = (gCreditsAnchorSpriteState.object.x - 1) & 0x1FF;
                }
            } else {
                gCreditsAnchorSpriteState.object.timer++;
            }
        } else {
            gCreditsAnchorSpriteState.object.timer = 0;
            (*phasePtr)++;
        }
        break;
    case 2: {
        register struct CreditsTreasureState *stateSource asm("r0");
        u8 timerValue;
        register struct CreditsTreasureState *caseState asm("r5");

        stateSource = &gCreditsTreasureState;
        timerValue = stateSource->timer;
        caseState = stateSource;
        if (timerValue <= 59) {
            caseState->timer = timerValue + 1;
        } else {
            register u8 *modePtr asm("r1");
            u8 modeValue;

            modePtr = &gVideoMode;
            modeValue = *modePtr;
            if (modeValue == 0) {
                // Prevent agbcc from folding the loaded zero into a constant move.
                COMPILER_FORGET_VALUE(modeValue);
                modeValue++;
                *modePtr = modeValue;
            }
        }

        {
            register u8 *modePtr asm("r1");
            register u8 modeValue asm("r0");

            modePtr = &gVideoMode;
            modeValue = *modePtr;
            if (modeValue > 6) {
                u8 phaseZero;
                u8 timerZero;
                register u8 treasureIndex asm("r2");

                modeValue = 0;
                *modePtr = modeValue;
                phaseZero = 0;
                caseState->phase = phaseZero;
                treasureIndex = caseState->treasureIndex;
                treasureIndex++;
                caseState->treasureIndex = treasureIndex;
                timerZero = 0;
                caseState->currentTreasureBit <<= 1;
                caseState->timer = timerZero;
                caseState->sequenceTimer = phaseZero;
                {
                    register u8 *templateDestination asm("r3");
                    register const u8 *templateSource asm("r0");
                    register u32 templateHigh asm("r1");

                    templateDestination = gCreditsTreasureBurstSpriteState.bytes;
                    templateSource = sCreditsSpriteStateTemplate;
                    templateHigh = *(const u32 *)(templateSource + 4);
                    *(u32 *)(templateDestination + 0) = *(const u32 *)(templateSource + 0);
                    *(u32 *)(templateDestination + 4) = templateHigh;
                }
                if (treasureIndex > 13) {
                    (*phasePtr)++;
                    m4aMPlayFadeOut(&gMPlayInfo_2, 20);
                }
            }
        }
        break;
    }
    case 3:
        if (gCreditsAnchorSpriteState.object.x != 90) {
            if (gMainTimer & 1) {
                gCreditsAnchorSpriteState.object.x = (gCreditsAnchorSpriteState.object.x - 1) & 0x1FF;
            }
        } else {
            gCreditsDifficultyEffectSpriteState.object.timer = 1;
            (*phasePtr)++;
        }
        break;
    case 4:
        if (gCreditsAnchorSpriteState.object.x > 319) {
            REG_DISPCNT = 0x1A00;
            REG_BLDCNT = 0x1FDF;
            completed = 1;
        } else {
            gCreditsAnchorSpriteState.object.x = (gCreditsAnchorSpriteState.object.x + 3) & 0x1FF;
        }
        break;
    }

    videoModeSource = &gVideoMode;
    mode = *videoModeSource;
    videoModePtr = videoModeSource;
    if (mode != 0) {
        struct CreditsTreasureState *updateState;
        struct CreditsTreasureAnim *updateAnim;

        updateState = &gCreditsTreasureState;
        updateState->sequenceTimer++;
        updateAnim = &gCreditsTreasureAnim;
        if ((updateAnim->collectedMask & updateState->currentTreasureBit) != 0) {
            if (updateState->sequenceTimer == 176) {
                updateState->gfxFrame = 1;
            } else if (updateState->sequenceTimer == 180) {
                updateState->gfxFrame = 2;
            } else if (updateState->sequenceTimer == 444) {
                updateState->gfxFrame = 1;
            }
        }
    }

    {
        register u32 done asm("r3");

        done = 0;
        switch (*videoModePtr) {
        case 1: {
            {
                register struct CreditsTreasureAnim *caseAnim asm("r0");
                register struct CreditsTreasureState *caseState asm("r2");

                caseAnim = &gCreditsTreasureAnim;
                caseState = &gCreditsTreasureState;
                if ((caseAnim->collectedMask & caseState->currentTreasureBit) == 0) {
                    *videoModePtr = 4;
                } else if (caseState->treasureIndex > 11) {
                    if (caseState->sequenceTimer > 168) {
                        done++;
                        COMPILER_BARRIER(done);
                    }
                } else {
                    done = UpdateCreditsTreasureDrop();
                }
            }
            if (done != 0) {
                register vu32 *caseDma asm("r1");
                register const u8 *const *caseTable asm("r2");
                register struct CreditsTreasureState *dmaState asm("r3");

                caseDma = (vu32 *)REG_ADDR_DMA3;
                caseTable = sCreditsSceneTilemaps;
                dmaState = &gCreditsTreasureState;
                caseDma[0] = (u32)caseTable[dmaState->treasureIndex];
                caseDma[1] = 0x06000000;
                caseDma[2] = 0x80001E00;
                caseDma[2];
                caseTable = sCreditsScenePalettes;
                caseDma[0] = (u32)caseTable[dmaState->treasureIndex];
                caseDma[1] = 0x050001E0;
                caseDma[2] = 0x80000010;
                caseDma[2];
                REG_DISPCNT = 0x1E00;
                REG_BLDCNT = 0x1844;
                {
                    register u8 *nextModePtr asm("r1");
                    register u8 nextMode asm("r0");

                    nextModePtr = &gVideoMode;
                    nextMode = *nextModePtr;
                    nextMode++;
                    *nextModePtr = nextMode;
                    COMPILER_BARRIER_INPUT(nextModePtr);
                }
            }
            break;
        }
    case 2: {
        register u16 *fadeIn asm("r5");
        register u16 *fadeOut asm("r3");
        register u32 stateOrIndex asm("r1");
        register u32 scratch asm("r0");
        register u32 fadeInValue asm("r2");
        register u32 fadeOutValue asm("r2");
        register u32 fadeOutTarget asm("r4");

        if (gMainTimer & 1) {
            fadeIn = &gBlendAlphaEva;
            fadeInTargets = sCreditsBlendEvaTargets;
            stateOrIndex = (u32)&gCreditsTreasureState;
            scratch = ((struct CreditsTreasureState *)stateOrIndex)->treasureIndex;
            scratch += (u32)fadeInTargets;
            fadeInValue = *fadeIn;
            scratch = *(const u8 *)scratch;
            if (fadeInValue < scratch) {
                scratch = fadeInValue + 1;
                *fadeIn = scratch;
            }

            fadeOut = &gBlendAlphaEvb;
            scratch = (u32)sCreditsBlendEvbTargets;
            stateOrIndex = ((struct CreditsTreasureState *)stateOrIndex)->treasureIndex;
            scratch = stateOrIndex + scratch;
            fadeOutValue = *fadeOut;
            fadeOutTarget = *(const u8 *)scratch;
            if (fadeOutValue > fadeOutTarget) {
                scratch = fadeOutValue - 1;
                *fadeOut = scratch;
            }

            stateOrIndex += (u32)fadeInTargets;
            if (*fadeIn != *(const u8 *)stateOrIndex) {
                break;
            }
            if (*fadeOut != fadeOutTarget) {
                break;
            }
            goto advanceVideoMode;
        }
        break;
    }
    case 3: {
        register struct CreditsTreasureState *stateSource asm("r0");
        register struct CreditsTreasureState *caseState asm("r5");
        register u16 sequenceTimer asm("r2");
        register u32 threshold asm("r1");

        stateSource = &gCreditsTreasureState;
        sequenceTimer = stateSource->sequenceTimer;
        threshold = 224;
        threshold <<= 1;
        caseState = stateSource;
        if (sequenceTimer > threshold) {
            if ((gMainTimer & 3) == 0) {
                if (gBlendAlphaEva != 0) {
                    gBlendAlphaEva--;
                }
                if (gBlendAlphaEvb <= 15) {
                    gBlendAlphaEvb++;
                }
                if (gBlendAlphaEva == 0 && gBlendAlphaEvb == 16) {
                    (*videoModePtr)++;
                }
            }
            caseState->gfxFrame = 0;
        }
        break;
    }
    case 4: {
        register u32 animValue asm("r0");
        register s32 maskOrTarget asm("r1");
        register struct CreditsTreasureState *stateSource asm("r2");
        register struct CreditsTreasureState *caseState asm("r5");

        animValue = (u32)&gCreditsTreasureAnim;
        stateSource = &gCreditsTreasureState;
        maskOrTarget = ((struct CreditsTreasureAnim *)animValue)->collectedMask;
        animValue = stateSource->currentTreasureBit;
        animValue &= maskOrTarget;
        maskOrTarget = 176;
        caseState = stateSource;
        if (animValue != 0) {
            maskOrTarget = 480;
        }
        if ((s32)caseState->sequenceTimer > maskOrTarget) {
                register vu32 *caseDma asm("r1");
                register const u8 *const *caseTable asm("r2");
                u16 dmaFill;

                caseDma = (vu32 *)&dmaFill;
                *(vu16 *)caseDma = 0;
                caseDma = (vu32 *)REG_ADDR_DMA3;
                caseDma[0] = (u32)&dmaFill;
                caseDma[1] = 0x06000000;
                caseDma[2] = 0x81000010;
                caseDma[2];
                if (gLanguage == 0 && caseState->treasureIndex == 13) {
                    dmaFill = 0;
                    caseDma[0] = (u32)&dmaFill;
                    caseDma[1] = 0x0600A000;
                    caseDma[2] = 0x81000280;
                    caseDma[2];
                } else {
                    caseDma = (vu32 *)REG_ADDR_DMA3;
                    caseTable = sCreditsCaptionTilemaps;
                    caseDma[0] = (u32)caseTable[caseState->treasureIndex];
                    caseDma[1] = 0x0600A000;
                    caseDma[2] = 0x80000280;
                    caseDma[2];
                    REG_DISPCNT = 0x1B00;
                    REG_BLDCNT = 0x1A41;
                }
            goto advanceVideoMode;
        }
        break;
    }
    case 5:
        if (gMainTimer & 1) {
            if (gBlendAlphaEva <= 15) {
                gBlendAlphaEva++;
            }
            if (gBlendAlphaEvb != 0) {
                gBlendAlphaEvb--;
            }
            if (gBlendAlphaEva != 16) {
                break;
            }
            if (gBlendAlphaEvb != 0) {
                break;
            }
            goto advanceVideoMode;
        }
        break;
    case 6:
        state = &gCreditsTreasureState;
        if (state->sequenceTimer > 848 && (gMainTimer & 3) == 0) {
            if (gBlendAlphaEva != 0) {
                gBlendAlphaEva--;
            }
            if (gBlendAlphaEvb <= 15) {
                gBlendAlphaEvb++;
            }
            if (gBlendAlphaEva == 0 && gBlendAlphaEvb == 16) {
                goto advanceVideoMode;
            }
        }
        break;
    }

    }

    goto sequenceDone;

advanceVideoMode:
    (*videoModePtr)++;

sequenceDone:
    return completed;
}




u32 UpdateCreditsTreasureDrop(void)
{
    vu32 *dma;
    u32 ret;
    struct CreditsTreasureState *state;
    struct CreditsTreasureAnim *anim;
    u16 y;
    u8 v;

    ret = 0;
    state = &gCreditsTreasureState;

    if (state->phase == 0) {
        v = gCreditsTreasureAnim.timer;
        anim = &gCreditsTreasureAnim;
        if (v > 6) {
            anim->frame++;
            anim->timer = 0;
            if (anim->frame == 2) {
                gCreditsTreasureDrop.state++;
                gCreditsTreasureDrop.scale = 0xA0;
                gCreditsTreasureDrop.y = anim->dropY;
                dma = (vu32 *)REG_ADDR_DMA3;
                dma[0] = (u32)sCreditsGoldenTreasureGfxPointers[state->treasureIndex];
                dma[1] = 0x06011800;
                dma[2] = 0x80000040;
                dma[2];
                dma[0] = (u32)(sCreditsGoldenTreasureGfxPointers[state->treasureIndex] + 0x80);
                dma[1] = 0x06011C00;
                dma[2] = 0x80000040;
                dma[2];
                dma[0] = (u32)(sCreditsGoldenTreasureGfxPointers[state->treasureIndex] + 0x100);
                dma[1] = 0x06012000;
                dma[2] = 0x80000040;
                dma[2];
                dma[0] = (u32)(sCreditsGoldenTreasureGfxPointers[state->treasureIndex] + 0x180);
                dma[1] = 0x06012400;
                dma[2] = 0x80000040;
                dma[2];
            }
            if (anim->frame > 4) {
                anim->frame = 0;
                state->phase++;
            }
        } else {
            anim->timer = v + 1;
        }
        anim->scaleX = sCreditsTreasureAnimXOffsets[anim->type * 5 + anim->frame];
        anim->scaleY = sCreditsTreasureAnimYOffsets[anim->type * 5 + anim->frame];
    }

    if (gCreditsTreasureDrop.state != 0) {
        y = gCreditsTreasureDrop.scale;
        if (y <= 0x1EF) {
            gCreditsTreasureDrop.scale = y + 6;
        }
    }

    switch (gCreditsTreasureDrop.state) {
    case 1:
        if (gCreditsTreasureDrop.y > 28) {
            gCreditsTreasureDrop.y -= 2;
        } else {
            gCreditsTreasureDrop.state++;
            gCreditsTreasureDrop.timer = 0;
        }
        break;
    case 2:
    case 4:
    case 6:
        if (gCreditsTreasureDrop.y > 35) {
            if (gCreditsTreasureDrop.timer > 3) {
                gCreditsTreasureDrop.state++;
                gCreditsTreasureDrop.timer = 0;
            } else {
                gCreditsTreasureDrop.timer++;
            }
        } else if (gMainTimer & 1) {
            gCreditsTreasureDrop.y++;
        }
        break;
    case 3:
    case 5:
    case 7:
        if (gCreditsTreasureDrop.y <= 28) {
            if (gCreditsTreasureDrop.state == 7) {
                gCreditsTreasureDrop.state = 0;
                gCreditsTreasureBurstSpriteState.spawn.count++;
                gCreditsTreasureBurstSpriteState.spawn.x = gCreditsAnchorSpriteState.object.x - gCreditsTreasureAnim.xOffset + 16;
                gCreditsTreasureBurstSpriteState.spawn.y = gCreditsTreasureDrop.y + 16;
                ret = 1;
            } else if (gCreditsTreasureDrop.timer > 3) {
                gCreditsTreasureDrop.state++;
                gCreditsTreasureDrop.timer = 0;
            } else {
                gCreditsTreasureDrop.timer++;
            }
        } else if (gMainTimer & 1) {
            gCreditsTreasureDrop.y--;
        }
        break;
    }

    return ret;
}
