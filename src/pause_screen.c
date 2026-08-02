#include "global_data.h"
#include "pause.h"
#include "gba/m4a.h"
#include "input.h"
#include "interrupt_callbacks.h"
#include "stage_entry.h"
#include "main.h"
#include "color_effects.h"
#include "init_helpers.h"
#include "score.h"
#include "stage_select.h"

struct DmaRegisters {
    vu32 src;
    vu32 dst;
    vu32 cnt;
};

extern u8 gLanguage;
extern u8 gCurrentStageNumber;
extern u8 gCurrentPassage;
extern const u8 *const sFileSelectPassageNameTableLanguage0[][6];
extern const u8 *const sFileSelectPassageNameTableLanguage1[][6];
extern void Shop_DrawText(const u8 *str, u32 tileBase, u32 param);
extern void m4aMPlayContinue(struct MusicPlayerInfo *mplayInfo);
extern u16 gUnk_3000000;
extern const struct AnimationFrame sUnk_86D3F58[];
extern const u8 sUnk_86DF1F8[];
extern const u8 sUnk_86D9638[];
extern u16 gSoundRoomMessageTimer;
extern const u8 sUnk_86D4038[];
extern const u8 sUnk_86D6838[];
extern const u8 sUnk_86D6E78[];
extern const u8 sUnk_86D7038[];
extern const u8 sUnk_86D7238[];
extern const u8 sUnk_86DCE38[];
extern const u8 sUnk_86DD638[];
extern const u8 sUnk_86DE638[];
extern const u8 sUnk_86DEE38[];
extern const u8 sUnk_86DEEF8[];
extern const u8 sUnk_86DF0F8[];
extern const u8 sUnk_86E29F8[];
extern const struct AnimationFrame sUnk_86D3F40[];
extern const s32 sUnk_86D36A4[];
extern const s32 sUnk_86D36B8[];
extern const s32 sUnk_86D36CC[];
extern const s32 sUnk_86D36D4[];
extern const struct AnimationFrame *const sUnk_86D36DC[];
extern const struct AnimationFrame *const sUnk_86D36FC[];
extern const struct AnimationFrame *const sUnk_86D370C[];
extern const struct AnimationFrame sUnk_86D3CF8[];
extern const struct AnimationFrame sUnk_86D3D08[];
extern const struct AnimationFrame sUnk_86D3DB0[];
extern const struct AnimationFrame sUnk_86D3F80[];
extern const struct AnimationFrame sUnk_86D3FD0[];
extern const struct AnimationFrame sUnk_86D4008[];
extern const struct AnimationFrame sUnk_86D4018[];
extern const struct AnimationFrame sUnk_86D4028[];

u32 PauseScreenSubroutine(void)
{
    u32 done;
    u32 result;

    SetPauseScreenVBlankCallback();
    gOamSlotsUsed = 0;
    done = 0;

    switch ((s16)gUnk_3000000) {
    case 0:
        InitializePauseScreen();
        gUnk_3000000++;
        break;
    case 1:
        UploadColorFadePalettes();
        if (UpdatePaletteFadeStep(0, 1))
            gUnk_3000000++;
        break;
    case 2:
        if (OpenPauseScreenWindow())
            gUnk_3000000++;
        break;
    case 3:
        if (UpdatePauseScreenSelection())
            gUnk_3000000++;
        break;
    case 4:
        result = gStageEntrySequenceTimer + 1;
        gStageEntrySequenceTimer = result;
        if ((u16)result > 30) {
            gStageEntrySequenceTimer = result + 1;
            gUnk_3000000++;
        }
        break;
    case 5:
        if (ClosePauseScreenWindow())
            gUnk_3000000++;
        break;
    case 6:
        UploadColorFadePalettes();
        if (UpdatePaletteFadeStep(1, 1)) {
            *(vu16 *)0x0400004A = 63;
            gUnk_3000000 = 0;
            if (gPauseScreenState.confirmedSelection == 0) {
                m4aMPlayContinue(gMPlayTable[3].info);
                m4aMPlayContinue(gMPlayTable[4].info);
                m4aMPlayContinue(gMPlayTable[5].info);
                m4aMPlayContinue(gMPlayTable[6].info);
            }
            done = 1;
        }
        break;
    case 7:
        {
            /* agbcc must retain the returned state in r0 for the original branch layout. */
            register u32 result_r0 asm("r0");
            result_r0 = UpdatePauseScreenConfirmation();
            if (result_r0 == 1) {
                gUnk_3000000 = 4;
                gPauseScreenAnimation = sUnk_86D3F58;
                gPauseScreenState.animationFrame = 0;
                gPauseScreenState.animationTimer = 0;
                if (gPauseScreenState.confirmedSelection == 1) {
                    gPauseFlag = 3;
                    gMainGameMode++;
                }
                if (gPauseScreenState.confirmedSelection == 2)
                    gPauseFlag = 2;
            } else if (result_r0 == 2) {
                gPauseScreenState.selection = gPauseScreenState.confirmedSelection;
                gUnk_3000000 = 3;
            }
        }
        break;
    }

    RenderPauseScreenOam();
    ResetFreeOam();
    return done;
}


void SetPauseScreenVBlankCallback(void)
{
    InterruptCallbackSetVBlank(PauseScreenVBlank);
}

void PauseScreenVBlank(void)
{
    struct DmaRegisters *dma;

    m4aSoundVSync();
    dma = (struct DmaRegisters *)0x040000D4;
    dma->src = (u32)gOamBuffer;
    dma->dst = 0x07000000;
    dma->cnt = 0x84000100;
    dma->cnt;

    *(vu16 *)0x04000044 = (gStageEntryWindowTop << 8) | gStageEntryWindowBottom;
    *(vu16 *)0x04000040 = 0xF0;

    switch (gLanguage) {
    case 0:
        Shop_DrawText(sFileSelectPassageNameTableLanguage0[gCurrentPassage][gCurrentStageNumber], 0x7800, 26);
        break;
    case 1:
        Shop_DrawText(sFileSelectPassageNameTableLanguage1[gCurrentPassage][gCurrentStageNumber], 0x7800, 26);
        break;
    }
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_pause_screen_InitializePauseScreen.s");
#else
/* Best current WIP C for InitializePauseScreen: 22010 / 63700. */
void InitializePauseScreen(void)
{
    struct DmaRegisters *dma;
    u8 *screenSide;
    u8 collectionFlags;
    s32 i;
    /* Best nonmatching C keeps the DMA active-bit mask in r2. */
    register u32 dmaMask asm("r2");

    *(vu16 *)0x04000200 ^= 1;
    *(vu16 *)0x04000208 = 0;
    *(vu16 *)0x04000004 &= 0xFFEF;
    *(vu16 *)0x04000200 &= 0xFFFD;
    *(vu16 *)0x04000208 = 1;

    if (gCurrentPassage == 0 || gCurrentPassage == 5)
        gUnk_3003C4A = 1;
    else
        gUnk_3003C4A = 0;

    dma = (struct DmaRegisters *)0x040000D4;
    dmaMask = 0x80000000;

#define WAIT_DMA3() \
    do { \
        dma->cnt; \
        if ((s32)dma->cnt < 0) { \
            while (dma->cnt & 0x80000000) {} \
        } \
    } while (0)
#define START_DMA3(src_, dst_, cnt_) \
    do { \
        dma->src = (u32)(src_); \
        dma->dst = (u32)(dst_); \
        dma->cnt = (cnt_); \
        WAIT_DMA3(); \
    } while (0)

    START_DMA3((const void *)0x02020600, (void *)0x05000200, 0x80000100);
    START_DMA3((const void *)0x02020600, (void *)0x05000000, 0x80000100);
    START_DMA3(sUnk_86D7038, (void *)0x05000000, 0x80000100);
    START_DMA3(sUnk_86D7038 + 0x100, (void *)0x05000300, 0x80000080);
    START_DMA3(sUnk_86D4038, (void *)0x06000000, 0x80001800);
    START_DMA3(sUnk_86D7238, (void *)0x06012400, 0x80002E00);

    if (gLanguage == 0)
        START_DMA3(sUnk_86DCE38, (void *)0x0600C000, 0x80000400);
    else
        START_DMA3(sUnk_86E29F8, (void *)0x0600C000, 0x80000400);

    START_DMA3(sUnk_86DD638, (void *)0x0600D000, 0x80000400);

    if (gUnk_3003C4A != 0)
        START_DMA3(sUnk_86DD638 + 0x800, (void *)0x0600E000, 0x80000400);
    else
        START_DMA3(sUnk_86DE638, (void *)0x0600E000, 0x80000400);

    if (gUnk_3003C4A == 0) {
        dma->src = (u32)(sUnk_86DF0F8 + ((gCurrentPassage - 1) << 6));
        dma->dst = 0x05000200;
        dma->cnt = 0x80000020;
        dma->cnt;
    }

    START_DMA3(sUnk_86DEEF8 + (gCurrentPassage << 6), (void *)0x05000240, 0x80000020);

    dma->src = (u32)(sUnk_86DEE38 + (gCurrentPassage << 5));
    dma->dst = 0x05000160;
    dma->cnt = 0x80000010;
    dma->cnt;

    *(vu16 *)0x05000000 = 0;
    *(vu16 *)0x04000008 = 0x1800;
    *(vu16 *)0x0400000A = 0x1A01;
    *(vu16 *)0x0400000C = 0x1C02;
    gSoundRoomMessageTimer = 1000;

    gColorFading.type = 2;
    gColorFading.uploadFlags = 3;
    FillColorFadePalettes();

    gPauseScreenAnimation = sUnk_86D3F40;
    gPauseScreenState.animationTimer = 0;
    gPauseScreenState.animationFrame = 0;
    gPauseScreenState.selection = 0;

    collectionFlags = *((u8 *)&gCurrentCollection[gCurrentPassage][gCurrentStageNumber]);
    if ((collectionFlags & 0x0F) == 0x0F)
        gPauseAllJewelPiecesCollected = 1;
    else
        gPauseAllJewelPiecesCollected = 0;

    screenSide = gPauseJewelPieceStates;
    for (i = 3; i >= 0; i--)
        screenSide[i] = 0;

    if ((u8)(gCollectedNEJewelPiece - 1) <= 1)
        gPauseJewelPieceStates[0] = 1;
    else if (collectionFlags & 1)
        gPauseJewelPieceStates[0] = 2;

    if ((u8)(gCollectedSEJewelPiece - 1) <= 1)
        gPauseJewelPieceStates[1] = 1;
    else if (collectionFlags & 2)
        gPauseJewelPieceStates[1] = 2;

    if ((u8)(gCollectedSWJewelPiece - 1) <= 1)
        gPauseJewelPieceStates[2] = 1;
    else if (collectionFlags & 4)
        gPauseJewelPieceStates[2] = 2;

    if ((u8)(gCollectedNWJewelPiece - 1) <= 1)
        gPauseJewelPieceStates[3] = 1;
    else if (collectionFlags & 8)
        gPauseJewelPieceStates[3] = 2;

    gStageEntrySequenceTimer = 0;
    gStageEntrySequenceStep = 0;

    for (i = 0; i < 4; i++) {
        gPauseJewelAnimationStates[i].animationTimer = 0;
        gPauseJewelAnimationStates[i].animationFrame = 0;
    }
    gPauseCdAnimationState.animationTimer = 0;
    gPauseCdAnimationState.animationFrame = 0;
    gPauseKeyzerAnimationState.animationTimer = 0;
    gPauseKeyzerAnimationState.animationFrame = 0;

    UploadFiveDigitNumberTiles(gHighScoreTable[gCurrentPassage][gCurrentStageNumber], sUnk_86D6E78, 0x2A80);
    if ((s32)dma->cnt < 0) {
        while (dma->cnt & dmaMask) {}
    }
    UploadTallFiveDigitNumberTiles(gTotalScore, sUnk_86D6838, 0x2980);

    gStageEntryWindowTop = 160;
    gStageEntryWindowBottom = 160;

    *(vu16 *)0x04000012 = 0;
    *(vu16 *)0x04000010 = 0;
    *(vu16 *)0x04000016 = 0;
    *(vu16 *)0x04000014 = 0;
    *(vu16 *)0x0400001A = 0;
    *(vu16 *)0x04000018 = 0;
    *(vu16 *)0x04000000 = 0x1700;
    *(vu16 *)0x04000000 |= 0x2000;
    *(vu16 *)0x04000048 = 0x3F;
    *(vu16 *)0x0400004A = 0;
    *(vu16 *)0x04000050 = 0;

    MPlayStop(gMPlayTable[3].info);
    MPlayStop(gMPlayTable[4].info);
    MPlayStop(gMPlayTable[5].info);
    MPlayStop(gMPlayTable[6].info);

    *(vu16 *)0x04000200 |= 1;

#undef START_DMA3
#undef WAIT_DMA3
}
#endif

u32 UpdatePauseScreenSelection(void)
{
    u16 buttons;
    struct DmaRegisters *dma;

    switch (gPauseScreenState.selection) {
    case 0:
        buttons = gButtonsPressed;
        if (buttons & 1) {
            gPauseScreenAnimation = sUnk_86D3F58;
            gPauseScreenState.animationFrame = 0;
            gPauseScreenState.animationTimer = 0;
            gPauseFlag = 1;
            m4aSongNumStart(0x123);
            return 1;
        }
        if (buttons & 0x10) {
            gPauseScreenState.selection = 1;
            m4aSongNumStart(0x124);
        } else {
            /* agbcc must evaluate this directional mask in r0 to preserve operand order. */
            register u32 mask asm("r0");
            mask = 0x20;
            mask &= buttons;
            if (mask) {
                gPauseScreenState.selection = 2;
                m4aSongNumStart(0x124);
            }
        }
        break;
    case 1:
        buttons = gButtonsPressed;
        if (buttons & 1) {
            dma = (struct DmaRegisters *)0x040000D4;
            dma->src = (u32)sUnk_86DF1F8;
            dma->dst = 0x06014800;
            dma->cnt = 0x80001C00;
            dma->cnt;
            gUnk_3000000 = 7;
            gPauseScreenState.confirmedSelection = gPauseScreenState.selection;
            gPauseScreenState.selection = 3;
            m4aSongNumStart(0x125);
            return 0;
        }
        if (buttons & 0x10) {
            gPauseScreenState.selection = 2;
            m4aSongNumStart(0x124);
        } else {
            /* agbcc must evaluate this directional mask in r0 to preserve operand order. */
            register u32 mask asm("r0");
            mask = 0x20;
            mask &= buttons;
            if (mask) {
                gPauseScreenState.selection = 0;
                m4aSongNumStart(0x124);
            }
        }
        break;
    case 2:
        buttons = gButtonsPressed;
        if (buttons & 1) {
            dma = (struct DmaRegisters *)0x040000D4;
            dma->src = (u32)sUnk_86D9638;
            dma->dst = 0x06014800;
            dma->cnt = 0x80001C00;
            dma->cnt;
            gUnk_3000000 = 7;
            gPauseScreenState.confirmedSelection = gPauseScreenState.selection;
            gPauseScreenState.selection = 3;
            m4aSongNumStart(0x125);
            return 0;
        }
        if (buttons & 0x10) {
            gPauseScreenState.selection = 0;
            m4aSongNumStart(0x124);
        } else {
            /* agbcc must evaluate this directional mask in r0 to preserve operand order. */
            register u32 mask asm("r0");
            mask = 0x20;
            mask &= buttons;
            if (mask) {
                gPauseScreenState.selection = 1;
                m4aSongNumStart(0x124);
            }
        }
        break;
    }

    if (gButtonsPressed & 2) {
        gPauseFlag = 1;
        m4aSongNumStart(0x123);
        return 1;
    }
    return 0;
}


u32 UpdatePauseScreenConfirmation(void)
{
    switch (gPauseScreenState.selection) {
    case 3:
        if (gButtonsPressed & 1) {
            m4aSongNumStart(0x129);
            return 2;
        }
        if (gButtonsPressed & 0x10) {
            gPauseScreenState.selection = 4;
            m4aSongNumStart(0x124);
        }
        break;
    case 4:
        if (gButtonsPressed & 1) {
            m4aSongNumStart(0x126);
            return 1;
        }
        if (gButtonsPressed & 0x20) {
            gPauseScreenState.selection = 3;
            m4aSongNumStart(0x124);
        }
        break;
    }

    if (gButtonsPressed & 2) {
        m4aSongNumStart(0x129);
        return 2;
    }
    return 0;
}

u32 OpenPauseScreenWindow(void)
{
    gStageEntryWindowTop -= 17;
    if ((s16)gStageEntryWindowTop < 0) {
        gStageEntryWindowTop = 0;
        return 1;
    }
    return 0;
}

u32 ClosePauseScreenWindow(void)
{
    gStageEntryWindowTop += 17;
    if ((s16)gStageEntryWindowTop > 160) {
        gStageEntryWindowTop = 160;
        return 1;
    }
    return 0;
}


#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_pause_screen_RenderPauseScreenOam.s");
#else
/* Best current WIP C for RenderPauseScreenOam: 4241 / 100500. */
void RenderPauseScreenOam(void)
{
  u8 *new_var7;
  volatile short new_var2;
  const struct AnimationFrame *new_var5;
  const struct AnimationFrame *animation;
  PauseAnimationState *animationState;
  const u16 *src;
  u16 *dest;
  u16 attr;
  const struct AnimationFrame * const *new_var9;
  s32 currentSlot;
  short new_var8;
  s32 nextSlot;
  s32 i;
  s32 tableOffset;
  u8 itemState;
  u16 *new_var6;
  char new_var3;
  int new_var;
  u8 cdState;
  s32 score;
  currentSlot = 0;
  dest = (u16 *) gOamBuffer;
  nextSlot = gOamSlotsUsed;
  dest += (nextSlot * (sizeof(OamData))) / (sizeof(u16));
  gPauseScreenState.animationTimer++;
  animation = gPauseScreenAnimation;
  if (animation[gPauseScreenState.animationFrame].time < gPauseScreenState.animationTimer)
  {
    gPauseScreenState.animationTimer = 1;
    gPauseScreenState.animationFrame++;
    if (animation[gPauseScreenState.animationFrame].time == 0)
    {
      gPauseScreenState.animationFrame = 0;
      if (animation == sUnk_86D3F58)
      {
        gPauseScreenState.animationFrame = 1;
      }
    }
  }
  src = animation[gPauseScreenState.animationFrame].oam;
  nextSlot += *(src++);
  if (nextSlot > 128)
  {
    return;
  }
  for (; currentSlot < nextSlot; currentSlot++)
  {
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.y = (attr + sUnk_86D36B8[gPauseScreenState.selection]) & 0xFF;
    attr = *(src++);
    *(dest++) = attr;
    gOamBuffer[currentSlot].split.x = (attr + sUnk_86D36A4[gPauseScreenState.selection]) & 0x1FF;
    new_var6 = dest++;
    *new_var6 = *(src++);
    gOamBuffer[currentSlot].split.priority = 0;
    dest++;
  }

  if (((u8) (gPauseScreenState.selection - 3)) <= 1)
  {
    if (gLanguage == 0)
    {
      animation = sUnk_86D370C[gPauseScreenState.selection - 3];
    }
    else
    {
      animation = sUnk_86D370C[gPauseScreenState.selection - 1];
    }
    src = animation->oam;
    nextSlot += *(src++);
    if (nextSlot > 128)
    {
      return;
    }
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = (attr + 80) & 0xFF;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + 120) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 0;
      dest++;
    }

  }
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.y = 32;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.x = 176;
  *(dest++) = 0;
  cdState = 7;
  gOamBuffer[currentSlot].split.tileNum = 203;
  gOamBuffer[currentSlot].split.paletteNum = 6;
  currentSlot++;
  dest++;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.y = 32;
  gOamBuffer[currentSlot].split.shape = 1;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.x = 184;
  gOamBuffer[currentSlot].split.size = 0;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.tileNum = 132;
  gOamBuffer[currentSlot].split.paletteNum = 4;
  currentSlot++;
  dest++;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.y = 32;
  gOamBuffer[currentSlot].split.shape = 1;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.x = 200;
  gOamBuffer[currentSlot].split.size = 2;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.tileNum = 134;
  gOamBuffer[currentSlot].split.paletteNum = 4;
  new_var3 = 32;
  currentSlot++;
  dest++;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.y = new_var3;
  gOamBuffer[currentSlot].split.shape = 1;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.x = 8;
  gOamBuffer[currentSlot].split.size = 2;
  *(dest++) = 0;
  new_var3 = 2;
  gOamBuffer[currentSlot].split.tileNum = 144;
  gOamBuffer[currentSlot].split.paletteNum = 7;
  currentSlot++;
  dest++;
  nextSlot += 5;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.y = 32;
  gOamBuffer[currentSlot].split.shape = 1;
  *(dest++) = 0;
  new_var9 = sUnk_86D36FC;
  new_var = 128;
  gOamBuffer[currentSlot].split.x = 40;
  gOamBuffer[currentSlot].split.size = new_var3;
  *(dest++) = 0;
  gOamBuffer[currentSlot].split.tileNum = 148;
  gOamBuffer[currentSlot].split.paletteNum = cdState;
  currentSlot++;
  dest++;
  tableOffset = 0;
  for (i = 0; i < 4; i++)
  {
    itemState = gPauseJewelPieceStates[i];
    if (itemState == 2)
    {
      animation = *((const struct AnimationFrame **) (((u8 *) new_var9) + tableOffset));
      animationState = (PauseAnimationState *) (((u8 *) gPauseJewelAnimationStates) + tableOffset);
      animationState->animationTimer++;
      if (animation[animationState->animationFrame].time < animationState->animationTimer)
      {
        animationState->animationTimer = 1;
        animationState->animationFrame++;
        ;
        if ((*(&animation[animationState->animationFrame])).time == 0)
        {
          animationState->animationFrame = 0;
        }
      }
      src = animation[animationState->animationFrame].oam;
      nextSlot += *(src++);
      if (nextSlot > new_var)
      {
        return;
      }
      for (; currentSlot < nextSlot; currentSlot++)
      {
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.y = (attr + 88) & 0xFF;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + sUnk_86D36CC[gUnk_3003C4A]) & 0x1FF;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 0;
        dest++;
      }

    }
    if ((gPauseAllJewelPiecesCollected == 0) && (gPauseJewelPieceStates[i] != 0))
    {
      animation = *((const struct AnimationFrame **) ((((u8 *) sUnk_86D36DC) + ((gPauseJewelPieceStates[i] - 1) * 16)) + tableOffset));
      src = animation->oam;
      nextSlot += *(src++);
      if (nextSlot > new_var)
      {
        return;
      }
      new_var7 = &gUnk_3003C4A;
      for (; currentSlot < nextSlot; currentSlot++)
      {
        attr = *(src++);
        new_var2 = attr;
        new_var8 = new_var2;
        *(dest++) = new_var8;
        gOamBuffer[currentSlot].split.y = (new_var8 + 88) & 0xFF;
        attr = *(src++);
        *(dest++) = attr;
        gOamBuffer[currentSlot].split.x = (attr + sUnk_86D36CC[*new_var7]) & 0x1FF;
        *(dest++) = *(src++);
        gOamBuffer[currentSlot].split.priority = 0;
        dest++;
      }

    }
    tableOffset += 4;
  }

  if (gPauseAllJewelPiecesCollected != 0)
  {
    src = sUnk_86D3DB0[0].oam;
    nextSlot += *(src++);
    if (nextSlot > new_var)
    {
      return;
    }
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = (attr + 88) & 0xFF;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + sUnk_86D36CC[gUnk_3003C4A]) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 0;
      dest++;
    }

  }
  if ((gCollectedKeyzer == 1) || gCurrentCollection[gCurrentPassage][gCurrentStageNumber].keyzer)
  {
    if (gCollectedKeyzer == 1)
    {
      animation = sUnk_86D3CF8;
    }
    else
    {
      animation = sUnk_86D3D08;
    }
    gPauseKeyzerAnimationState.animationTimer++;
    if (animation[gPauseKeyzerAnimationState.animationFrame].time < gPauseKeyzerAnimationState.animationTimer)
    {
      gPauseKeyzerAnimationState.animationTimer = 1;
      gPauseKeyzerAnimationState.animationFrame++;
      if (animation[gPauseKeyzerAnimationState.animationFrame].time == 0)
      {
        gPauseKeyzerAnimationState.animationFrame = 0;
      }
    }
    src = animation[gPauseKeyzerAnimationState.animationFrame].oam;
    nextSlot += *(src++);
    if (nextSlot > new_var)
    {
      return;
    }
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = (attr + 96) & 0xFF;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + sUnk_86D36D4[gUnk_3003C4A]) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 0;
      dest++;
    }

  }
  cdState = (u8) (gCollectedCD - 1);
  if (((cdState <= 1) || gCurrentCollection[gCurrentPassage][gCurrentStageNumber].cd) && (gUnk_3003C4A == 0))
  {
    if (cdState <= 1)
    {
      animation = sUnk_86D3F80;
    }
    else
    {
      animation = sUnk_86D3FD0;
    }
    gPauseCdAnimationState.animationTimer++;
    if (animation[gPauseCdAnimationState.animationFrame].time < gPauseCdAnimationState.animationTimer)
    {
      gPauseCdAnimationState.animationTimer = 1;
      gPauseCdAnimationState.animationFrame++;
      if (animation[gPauseCdAnimationState.animationFrame].time == 0)
      {
        gPauseCdAnimationState.animationFrame = 0;
      }
    }
    src = animation[gPauseCdAnimationState.animationFrame].oam;
    nextSlot += *(src++);
    if (nextSlot > new_var)
    {
      return;
    }
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = (attr + 88) & 0xFF;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + 200) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 0;
      dest++;
    }

  }
  score = gHighScoreTable[gCurrentPassage][gCurrentStageNumber];
  if (score > 599)
  {
    if (score > 999)
    {
      animation = sUnk_86D4008;
    }
    else
      if (score > 799)
    {
      animation = sUnk_86D4018;
    }
    else
    {
      new_var5 = sUnk_86D4028;
      animation = new_var5;
    }
    src = animation->oam;
    nextSlot += *(src++);
    if (nextSlot > new_var)
    {
      return;
    }
    for (; currentSlot < nextSlot; currentSlot++)
    {
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.y = (attr + 48) & 0xFF;
      attr = *(src++);
      *(dest++) = attr;
      gOamBuffer[currentSlot].split.x = (attr + 168) & 0x1FF;
      *(dest++) = *(src++);
      gOamBuffer[currentSlot].split.priority = 0;
      dest++;
    }

  }
  gOamSlotsUsed = nextSlot;
}
#endif
