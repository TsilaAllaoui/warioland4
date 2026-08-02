#include "stage_entry.h"
#include "color_effects.h"
#include "global_data.h"
#include "init_helpers.h"
#include "score.h"
#include "stage_select.h"
#include "score.h"
#include "voice_set.h"
#include "gba/m4a.h"
#include "main.h"

s32 UpdateStageEntry(void)
{
    if (gStageEntryBlinkActive != 0)
        UpdateStageEntryBlinkState();
    UpdateStageEntryPaletteFadeCounters();
    CycleStageEntryPalette();
    return UpdateStageEntryStateMachine();
}

static inline s32 GetStageEntryWrappedScrollValue(const u16 *horizontalScroll)
{
    s32 scroll;
    s32 adjusted;

    scroll = *((const s16 *) horizontalScroll);
    adjusted = scroll;
    if (scroll < 0)
        adjusted += 0x1FF;
    return scroll - ((adjusted >> 9) << 9);
}

void InitializeStageEntrySceneGraphics(void)
{
  register vu32 *dma asm("r2");
  const u32 *stageIndexTable;
  const u8 * const *passageGraphics;
  struct ItemCollection *collectionEntry;
  u8 *stageGraphicIndex;
  u8 *stageGraphicMirror;
  u8 *stageVariant;
  register u8 *sequenceFlag asm("r12");
  u32 stageGraphic;
  s32 resetStart;
  s32 resetAddress;
  vu32 *initialDma;
  s32 resetEnd;
  s32 searchIndex;
  s32 entryOffset;
  s16 scroll;
  u16 *horizontalScroll;
  u32 graphicsDmaControl;
  u32 graphicsDestinationBase;
  register u32 graphicsStep asm("r1");
  graphicsDestinationBase = 0x06005E80;
  InitializeVideoMemory();
  gStageEntryHorizontalScroll = sStageEntryNormalPassageScrollOffsets[gStageEntryStageVariant];
  if ((gCurrentPassage == PASSAGE_ENTRY) || (gCurrentPassage == PASSAGE_GOLDEN))
  {
    gStageEntryHorizontalScroll = sStageEntryEntryPassageScrollOffsets[gStageEntryStageVariant];
  }
  gStageEntryMainSpriteState[0] = 0;
  gStageEntryMainSpriteState[1] = 0;
  if ((gCurrentPassage == PASSAGE_ENTRY) || (gCurrentPassage == PASSAGE_GOLDEN))
  {
    stageGraphicIndex = &gStageEntryStageGraphicIndex;
    stageIndexTable = sStageEntryEntryStageGraphicIds;
  }
  else
  {
    stageGraphicIndex = &gStageEntryStageGraphicIndex;
    stageIndexTable = sStageEntryNormalStageGraphicIds;
  }
  {
    register u8 *stageNumberPtr asm("r3");
    stageNumberPtr = &gCurrentStageNumber;
    stageGraphic = stageIndexTable[*stageNumberPtr];
  }
  *stageGraphicIndex = stageGraphic;
  {
    register u8 *stageGraphicStore asm("r2");
    register u8 *stageGraphicMirrorReg asm("r6");
    stageGraphicStore = &gStageEntryStageGraphicMirror;
    *stageGraphicStore = stageGraphic;
    gStageEntryStageGraphicId = stageGraphic;
    asm volatile("" : "=r"(stageGraphicMirrorReg) : "0"(stageGraphicStore));
    stageGraphicMirror = stageGraphicMirrorReg;
  }
  gStageEntrySecondarySpriteState.timer = 0;
  gStageEntrySecondarySpriteState.frame = 0;
  ((u16 *) (&gStageEntrySecondarySpriteState))[2] = (((*stageGraphicIndex) << 8) + 360) - gStageEntryHorizontalScroll;
  ((u16 *) (&gStageEntrySecondarySpriteState))[3] = 136;
  gStageEntrySequenceStep = 0;
  gStageEntrySequenceTimer = 0;
  gStageEntryShakeTimer = 0;
  gStageEntryShakeMode = 0;
  gStageEntryKeyzerTargetState[2] = (((*stageGraphicMirror) << 8) + 396) - gStageEntryHorizontalScroll;
  gStageEntryKeyzerTargetState[3] = 68;
  gStageEntryKeyzerTargetState[4] = 64;
  gStageEntryPaletteFadeCounters[0] = 0;
  gStageEntryPaletteFadeCounters[1] = 0;
  gStageEntryPaletteFadeCounters[2] = 0;
  gStageEntryPaletteCycleOffset = 0;
  gStageEntryImpactEffectState[0] = 0;
  gStageEntryImpactEffectState[1] = 0;
  initialDma = (vu32 *) 0x040000D4;
  gStageEntryImpactEffectActive = 0;
  gStageEntryKeyzerFlightFinished = 0;
  horizontalScroll = (u16 *) &gStageEntryHorizontalScroll;
  {
    register u8 *selectedStage asm("r4");
    register u8 *sequenceStore asm("r6");
    stageVariant = &gStageEntryStageVariant;
    selectedStage = &gStageEntrySelectedStage;
    {
    register struct ItemCollection (*collection)[6] asm("r5");
    collection = gCurrentCollection;
    {
      register u16 *keyzerPosition asm("r6");
      keyzerPosition = gStageEntryKeyzerPositionState;
      sequenceFlag = &gStageEntryKeyzerPaletteStep;
      passageGraphics = sStageEntryPassageBgGraphics;
      resetStart = (s32) gStageEntrySparkleFlags;
      {
        register u32 clearValue asm("r2");
        clearValue = 0;
        resetEnd = resetStart + 20;
        resetAddress = resetEnd;
        do
        {
          *((u32 *) resetAddress) = clearValue;
          resetAddress -= 4;
        }
        while (resetAddress >= resetStart);
      }
      *selectedStage = 0;
      if ((gCurrentPassage == PASSAGE_ENTRY) || (gCurrentPassage == PASSAGE_GOLDEN))
      {
        if (((s32) (((u32) (*((u8 *) (&collection[gCurrentPassage][0])))) << 26)) >= 0)
        {
          *selectedStage = 1;
        }
      }
      else
      {
        for (searchIndex = 0; searchIndex <= 3; searchIndex++)
        {
          entryOffset = (searchIndex * 4) + (gCurrentPassage * 24);
          collectionEntry = (struct ItemCollection *) (entryOffset + ((s32) collection));
          if (((s32) (((u32) (*((u8 *) collectionEntry))) << 26)) >= 0)
          {
            *selectedStage = searchIndex + 1;
            break;
          }
        }

      }
      if (((s32) (((u32) (*((u8 *) (&collection[gCurrentPassage][4])))) << 26)) < 0)
      {
        *selectedStage = 5;
      }
      if ((gCurrentPassage == PASSAGE_ENTRY) || (gCurrentPassage == PASSAGE_GOLDEN))
      {
        if ((*selectedStage) == 5)
        {
          keyzerPosition[2] = 732 - *horizontalScroll;
        }
        else
        {
          keyzerPosition[2] = (((*selectedStage) << 8) + 220) - *horizontalScroll;
        }
      }
      else
      {
        keyzerPosition[2] = (((*selectedStage) << 8) + 476) - *horizontalScroll;
      }
      {
        register u8 zero asm("r1");
        zero = 0;
        keyzerPosition[3] = 142;
        asm volatile("" : "=r"(sequenceStore) : "0"(sequenceFlag));
        *sequenceStore = zero;
      }
    }
    }
    {
      register vu32 *dma1 asm("r1");
      dma1 = initialDma;
      dma1[0] = (u32) passageGraphics[gCurrentPassage];
      dma1[1] = 0x06000000;
      dma1[2] = 0x80002E00;
      dma1[2];
      while ((dma1[2] & 0x80000000) != 0)
      {
      }

    }
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) (sStageEntryPassageOverlayGraphics + (gCurrentPassage * 0x1400));
    asm volatile("" : : "r"(sequenceStore));
    dma[1] = 0x06005C00;
    dma[2] = 0x80000A00;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

    {
      vu32 *dma3;
      register u32 dma3Scratch asm("r2");
      dma3 = (vu32 *) 0x040000D4;
      dma3Scratch = (u32) sStageEntryCommonBgTiles;
      dma3[0] = dma3Scratch;
      dma3[1] = 0x06007000;
      dma3[2] = 0x80000400;
      dma3[2];
      dma3Scratch = 0x80000000;
      while ((dma3[2] & dma3Scratch) != 0)
      {
      }

      {
        vu32 *dma4;
        dma4 = (vu32 *) 0x040000D4;
        dma4[0] = (u32) sStageEntryPassagePalettes[gCurrentPassage];
      asm volatile("" : : "r"(dma3Scratch));
        dma4[1] = 0x05000000;
        dma4[2] = 0x80000100;
        dma4[2];
        while ((dma4[2] & 0x80000000) != 0)
        {
        }
      }
    }

    if ((*selectedStage) != 5)
    {
      goto copyNormalStageGraphics;
    }
  }
  {
    register s32 graphicsIndexBound asm("r4");
    register vu32 *graphicsDma asm("r3");
    register const u8 *graphicsSource asm("r5");
    register u32 graphicsDestination asm("r12");
    register u32 graphicsControl asm("r6");
    register u32 graphicsBusyMask asm("r2");
    graphicsIndexBound = 0;
    graphicsDma = (vu32 *) 0x040000D4;
    {
      register u8 *graphicsPassage asm("r0");
      register u32 graphicsPassageValue asm("r1");
      graphicsPassage = &gCurrentPassage;
      graphicsPassageValue = *graphicsPassage;
      {
        register u32 graphicsPassageOffset asm("r0");
        register const u8 *graphicsBase asm("r1");
        graphicsPassageOffset = graphicsPassageValue * 5;
        graphicsPassageOffset <<= 10;
        graphicsBase = sStageEntryCompletedKeyzerGraphics;
        graphicsSource = (const u8 *) ((u32) graphicsPassageOffset + (u32) graphicsBase);
      }
    }
    {
      register u32 graphicsDestinationLoad asm("r6");
      graphicsDestinationLoad = 0x06005E80;
      asm volatile("" : "=r"(graphicsDestination) : "0"(graphicsDestinationLoad));
    }
    graphicsControl = 0x80000050;
    do
    {
      graphicsStep = graphicsIndexBound << 10;
      graphicsDma[0] = (u32) (graphicsSource + graphicsStep);
      graphicsDma[1] = graphicsDestination + graphicsStep;
      graphicsDma[2] = graphicsControl;
      graphicsDma[2];
      graphicsBusyMask = 0x80000000;
      while ((graphicsDma[2] & graphicsBusyMask) != 0)
      {
      }
      graphicsStep = graphicsIndexBound + 1;
      asm volatile("" : : "r"(graphicsStep));
      graphicsIndexBound = graphicsStep;
    }
    while (graphicsIndexBound <= 4);
  }
  goto afterStageGraphics;
  copyNormalStageGraphics:
  {
    register u8 *normalSelectedStage asm("r4");
    asm volatile("" : "=r"(normalSelectedStage));
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sStageEntryStagePalettes[gCurrentPassage][(*normalSelectedStage) - 1];
    {
      u32 normalOffset;
      normalOffset = (*normalSelectedStage) << 5;
      graphicsStep = 0x05000120;
      asm volatile("" : "+r"(graphicsStep));
      normalOffset += graphicsStep;
      dma[1] = normalOffset;
    }
    dma[2] = 0x80000010;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }

  afterStageGraphics:
  dma = (vu32 *) &gCollectedKeyzer;
  if (*((u8 *) dma) == 1)
  {
    dma = (vu32 *) 0x040000D4;
    {
      register u8 *keyzerStagePtr asm("r4");
      dma[0] = (u32) sStageEntryStagePalettes[gCurrentPassage][*(keyzerStagePtr = &gCurrentStageNumber)];
      dma[1] = 0x05000140 + ((*keyzerStagePtr) << 5);
      asm volatile("" : : "r"(keyzerStagePtr));
    }
    dma[2] = 0x80000010;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }

  graphicsDmaControl = 0x80000000;
  {
    vu32 *dmaLarge;
    dmaLarge = (vu32 *) 0x040000D4;
    dmaLarge[0] = (u32) sStageEntryObjectTiles;
    dmaLarge[1] = 0x06010000;
    dmaLarge[2] = 0x80004000;
    dmaLarge[2];
    while ((dmaLarge[2] & graphicsDmaControl) != 0)
    {
    }

  }
  {
    vu32 *dmaPalette;
    dmaPalette = (vu32 *) 0x040000D4;
    dmaPalette[0] = (u32) sStageEntryObjectPalette;
    dmaPalette[1] = 0x05000200;
    dmaPalette[2] = 0x80000100;
    dmaPalette[2];
    while ((dmaPalette[2] & 0x80000000) != 0)
    {
    }

  }
  scroll = GetStageEntryWrappedScrollValue(horizontalScroll);
  if (scroll <= 255)
  {
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sStageEntryBg0TilemapChunkTable[(gCurrentPassage * 7) + (*stageVariant)];
    dma[1] = 0x0600C000;
    dma[2] = 0x80000400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sStageEntryBg1TilemapChunkTable[(gCurrentPassage * 7) + (*stageVariant)];
    dma[1] = 0x0600D000;
    dma[2] = 0x80000400;
    dma[2];
  }
  else
  {
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sStageEntryBg0TilemapChunkTable[(gCurrentPassage * 7) + (*stageVariant)];
    dma[1] = 0x0600C800;
    dma[2] = 0x80000400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sStageEntryBg1TilemapChunkTable[(gCurrentPassage * 7) + (*stageVariant)];
    dma[1] = 0x0600D800;
    dma[2] = 0x80000400;
    dma[2];
  }
  LoadStageEntryTilemapChunks();
  *((vu16 *) 0x04000008) = 0x5802;
  *((vu16 *) 0x0400000A) = 0x5A01;
  gStageEntryIdleAnimationVariant = 0;
  gStageEntryShowCollectionSparkle = 0;
  gStageEntryBlinkVisible = 0;
  gStageEntryBlinkActive = 0;
  gStageEntryBlinkCounter = 0;
  gStageEntryExitRequested = 0;
  gStageEntryMainSpriteFalling = 0;
  InitMinigameScoreDisplay();
  *((vu16 *) 0x04000012) = 8;
  *((vu16 *) (resetStart = 0x04000010)) = GetStageEntryWrappedScrollValue((u16 *) &gStageEntryHorizontalScroll);
  *((vu16 *) 0x04000016) = 8;
  *((vu16 *) 0x04000014) = GetStageEntryWrappedScrollValue((u16 *) &gStageEntryHorizontalScroll);
  *((vu16 *) 0x04000054) = 0;
  *((vu16 *) 0x04000000) = 0x1300;
  *((vu16 *) 0x04000000) |= 0x2000;
  *((vu16 *) 0x04000048) = 0x3F;
  *((vu16 *) 0x0400004A) = 0;
  *((vu16 *) 0x04000050) = 0;
}

void InitializeStageEntryState(void)
{
    s32 sparkleIndex;

    gStageEntrySoftResetDisabled = 0;
    gStageEntryPauseMenuDisabled = 0;
    gPauseFlag = 0;
    gStageEntryStageVariant = gCurrentStageNumber;
    m4aSongNumStart(0x27F);
    m4aSongNumStart(462);
    VoiceSetPlay(6);
    InitializeStageEntrySceneGraphics();

    gStageEntryWindowLeft = 0;
    gStageEntryWindowRight = 240;
    gStageEntryWindowTop = 0;
    gStageEntryWindowBottom = 160;
    gStageEntryMainSpriteState[7] = 16;
    gStageEntryMainSpriteState[6] = 0;
    gStageEntryUseAffineMainSprite = 1;
    gStageEntryMainSpriteState[2] = gStageEntryKeyzerTargetState[2];
    gStageEntryMainSpriteState[3] = gStageEntryKeyzerTargetState[3] + 16;
    gStageEntryVerticalVelocity = 0;
    gStageEntryKeyzerTargetState[4] = 256;

    if (gCollectedKeyzer == 1)
    {
        gStageEntryCompanionKeyzerState.timer = 0;
        gStageEntryCompanionKeyzerState.frame = 0;
        gStageEntryCompanionKeyzerState.x = 220;
        gStageEntryCompanionKeyzerState.y = 142;
        gStageEntryCompanionKeyzerAnimation = sStageEntryKeyzerCompanionAnimation;

        gStageEntryCompanionSpriteState.x = sStageEntryKeyzerXPositions[0];
        gStageEntryCompanionSpriteState.y = sStageEntryKeyzerYPositions[0];
        gStageEntryCompanionSpriteState.data = sStageEntryKeyzerSpriteData;
        gStageEntryCompanionSpriteState.attribute = 0;

        gStageEntryFlyingKeyzerState.x = gStageEntryKeyzerTargetState[2];
        gStageEntryFlyingKeyzerState.y = gStageEntryKeyzerTargetState[3];
        gStageEntryFlyingKeyzerState.frame = 0;
        gStageEntryFlyingKeyzerState.timer = 0;
        gStageEntryFlyingKeyzerState.attribute = 64;
        gStageEntryFlyingKeyzerAnimation = sStageEntryKeyzerFlightAnimation;

        gStageEntrySparkleGroupState.frame = 0;
        gStageEntrySparkleGroupState.timer = 0;
        for (sparkleIndex = 0; sparkleIndex < 6; sparkleIndex++)
        {
            gStageEntrySparkleAnimStates[sparkleIndex].frame = 0;
            gStageEntrySparkleAnimStates[sparkleIndex].timer = 0;
        }
        gStageEntrySequenceMode = 5;
    }
    else
    {
        gStageEntrySequenceMode = 4;
    }

    gStageEntryMainAnimation = sStageEntryKeyzerMainAnimation;
    gStageEntrySecondaryAnimation = sStageEntrySecondaryAnimation;
}

void InitializeStageEntryLandingState(void)
{
    gStageEntrySoftResetDisabled = 0;
    gStageEntryPauseMenuDisabled = 0;
    gPauseFlag = 0;
    gStageEntryStageVariant = gCurrentStageNumber;
    m4aSongNumStart(0x27F);
    InitializeStageEntrySceneGraphics();
    gStageEntryWindowLeft = 0;
    gStageEntryWindowRight = 240;
    gStageEntryWindowTop = 0;
    gStageEntryWindowBottom = 160;
    gStageEntryMainSpriteFalling = 1;
    gStageEntryMainSpriteState[7] = 256;
    gStageEntryMainSpriteState[6] = 0;
    gStageEntryUseAffineMainSprite = 0;
    gStageEntryMainSpriteState[2] = 148;
    gStageEntryMainSpriteState[3] = 0;
    gStageEntryVerticalVelocity = 0;
    if (gStageExitType == 1)
        m4aSongNumStart(0x1C7);
    gStageEntrySequenceMode = 2;
    gStageEntryMainAnimation = sStageEntryLandingIntroAnimation;
    gStageEntrySecondaryAnimation = sStageEntrySecondaryIdleAnimation;
}

void InitializeStageEntryKeyzerArrivalState(void)
{
    gStageEntrySoftResetDisabled = 0;
    gStageEntryPauseMenuDisabled = 0;
    gPauseFlag = 0;
    gStageEntryStageVariant = gCurrentStageNumber;
    InitializeStageEntrySceneGraphics();
    gStageEntryWindowLeft = 120;
    gStageEntryWindowRight = 120;
    gStageEntryWindowTop = 80;
    gStageEntryWindowBottom = 80;
    gStageEntryMainSpriteState[2] = 56;
    gStageEntryMainSpriteState[3] = 136;
    gStageEntryMainSpriteState[7] = 256;
    gStageEntryMainSpriteState[6] = 0;
    gStageEntryUseAffineMainSprite = 0;
    gStageEntrySequenceMode = 1;
    gStageEntryMainAnimation = sStageEntryIdleAnimationsByVariant[gStageEntryIdleAnimationVariant];
    gStageEntrySecondaryAnimation = sStageEntrySecondaryIdleAnimation;
}

void InitializeStageEntryMovingLandingState(void)
{
    gStageEntrySoftResetDisabled = 0;
    gStageEntryPauseMenuDisabled = 0;
    gPauseFlag = 0;
    gStageEntryStageVariant = gCurrentStageNumber;
    m4aSongNumStart(0x27F);
    InitializeStageEntrySceneGraphics();
    gStageEntryWindowLeft = 0;
    gStageEntryWindowRight = 240;
    gStageEntryWindowTop = 0;
    gStageEntryWindowBottom = 160;
    gStageEntryMainSpriteFalling = 1;
    gStageEntryMainSpriteState[7] = 256;
    gStageEntryMainSpriteState[6] = 0;
    gStageEntryUseAffineMainSprite = 0;
    gStageEntryMainSpriteState[2] = 240;
    gStageEntryMainSpriteState[3] = 132;
    gStageEntryHorizontalVelocity = -70;
    gStageEntryVerticalVelocity = -50;
    gStageEntrySequenceMode = 3;
    gStageEntryMainAnimation = sStageEntryMovingLandingIntroAnimation;
    gStageEntrySecondaryAnimation = sStageEntrySecondaryIdleAnimation;
}

void LoadStageEntryTilemapChunks(void)
{
    const u8 *const *table;
    u8 *stage;
    u8 *passage;
    u32 control;

    if (gStageEntryHorizontalScroll % 512 <= 255)
    {
        vu32 *dma;

        dma = (vu32 *)0x040000D4;
        table = sStageEntryBg0TilemapChunkTable;
        stage = &gCurrentStageNumber;
        passage = &gCurrentPassage;
        dma[0] = (u32)table[*passage * 7 + *stage];
        dma[1] = 0x0600C800;
        control = 0x80000400;
        dma[2] = control;
        dma[2];
        table = sStageEntryBg1TilemapChunkTable;
        dma[0] = (u32)table[*passage * 7 + *stage];
        dma[1] = 0x0600D800;
        dma[2] = control;
        dma[2];
    }
    else
    {
        vu32 *dma;

        dma = (vu32 *)0x040000D4;
        table = sStageEntryBg0TilemapChunkTable;
        stage = &gCurrentStageNumber;
        passage = &gCurrentPassage;
        dma[0] = (u32)table[*passage * 7 + *stage];
        dma[1] = 0x0600C000;
        control = 0x80000400;
        dma[2] = control;
        dma[2];
        table = sStageEntryBg1TilemapChunkTable;
        dma[0] = (u32)table[*passage * 7 + *stage];
        dma[1] = 0x0600D000;
        dma[2] = control;
        dma[2];
    }
}

s32 UpdateStageEntryStateMachine(void)
{
    s32 result;

    result = 0;
    switch (gStageEntrySequenceMode)
    {
        case 1:
            result = UpdateStageEntryKeyzerSequence();
            break;
        case 2:
            result = UpdateStageEntryLandingSequence();
            break;
        case 3:
            result = UpdateStageEntryMovingLandingSequence();
            break;
        case 4:
            result = UpdateStageEntryNoKeyzerSequence();
            break;
        case 5:
            result = UpdateStageEntryWithKeyzerSequence();
            break;
    }

    if (result == 6)
        return 1;
    return 0;
}

s32 UpdateStageEntryKeyzerSequence(void)
{
    switch (gStageEntrySequenceStep)
    {
        case 0:
            if (ExpandStageEntryWindow() != 0)
                gStageEntrySequenceStep++;
            break;

        case 1:
            gStageEntryMainSpriteState[2] += sStageEntryKeyzerApproachXOffsets[gStageEntrySequenceTimer];
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerApproachYOffsets[gStageEntrySequenceTimer];
            gStageEntrySequenceTimer++;
            gStageEntryMainAnimation = sStageEntryKeyzerMovingAnimation;
            if (gStageEntrySequenceTimer == 23)
            {
                gStageEntrySequenceStep++;
                gStageEntrySequenceTimer = 0;
            }
            break;

        case 2:
            gStageEntryMainSpriteState[2] += sStageEntryKeyzerImpactXOffsets[gStageEntrySequenceTimer];
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerImpactYOffsets[gStageEntrySequenceTimer];
            gStageEntryMainAnimation = sStageEntryKeyzerImpactAnimation;
            if (gStageEntrySequenceTimer == 8)
            {
                VoiceSetPlay(3);
                m4aSongNumStart(218);
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntrySequenceStep++;
                gStageEntrySequenceTimer = 0;
            }
            else
            {
                gStageEntrySequenceTimer++;
            }
            break;

        case 3:
            gStageEntryMainAnimation = sStageEntryKeyzerRiseAnimation;
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerRiseYOffsets[gStageEntrySequenceTimer];
            gStageEntrySecondarySpriteState.timer++;
            gStageEntrySecondaryAnimation = sStageEntrySecondaryIntroAnimation;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
                if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time == 0)
                {
                    gStageEntrySecondarySpriteState.frame = 0;
                    gStageEntrySecondaryAnimation = sStageEntrySecondaryLoopAnimation;
                    gStageEntrySequenceStep++;
                    gStageEntrySequenceTimer = 0;
                    break;
                }
            }
            gStageEntrySequenceTimer++;
            break;

        case 4:
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerFloatYOffsets[gStageEntrySequenceTimer];
            gStageEntryKeyzerTargetState[4] += 3;
            if (gStageEntryKeyzerTargetState[4] > 256)
                gStageEntryKeyzerTargetState[4] = 256;
            gStageEntrySecondarySpriteState.timer++;
            gStageEntrySecondaryAnimation = sStageEntrySecondaryLoopAnimation;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
                if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time == 0)
                {
                    gStageEntrySecondarySpriteState.frame = 0;
                    gStageEntrySecondaryAnimation = sStageEntrySecondaryAnimation;
                    gStageEntrySequenceStep++;
                    gStageEntrySequenceTimer = 0;
                    break;
                }
            }
            gStageEntrySequenceTimer++;
            break;

        case 5:
            gStageEntryMainSpriteState[2] += sStageEntryKeyzerExitXOffsets[gStageEntrySequenceTimer];
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerExitYOffsets[gStageEntrySequenceTimer];
            gStageEntryMainAnimation = sStageEntryKeyzerMovingAnimation;
            if (gStageEntrySequenceTimer == 11)
            {
                gStageEntrySequenceStep++;
                gStageEntrySequenceTimer = 0;
            }
            else
            {
                gStageEntrySequenceTimer++;
            }
            break;

        case 6:
            gStageEntryMainSpriteState[2] += sStageEntryKeyzerFinalXOffsets[gStageEntrySequenceTimer];
            gStageEntryMainSpriteState[3] += sStageEntryKeyzerFinalYOffsets[gStageEntrySequenceTimer];
            gStageEntryMainAnimation = sStageEntryKeyzerImpactAnimation;
            if (gStageEntrySequenceTimer == 7)
            {
                gStageEntrySequenceStep++;
                gStageEntrySequenceTimer = 0;
            }
            else
            {
                gStageEntrySequenceTimer++;
            }
            break;

        case 7:
            gStageEntryUseAffineMainSprite = 1;
            gStageEntryMainAnimation = sStageEntryKeyzerMainAnimation;
            gStageEntryMainSpriteState[2] = gStageEntryKeyzerTargetState[2];
            gStageEntryMainSpriteState[3] = gStageEntryKeyzerTargetState[3] + 16;
            gStageEntryMainSpriteState[6] = (gStageEntryMainSpriteState[6] + 248) & 0xFF;
            gStageEntryMainSpriteState[7] -= 4;
            if (gStageEntryMainSpriteState[7] <= 15)
                return 6;
            break;
    }

    return 0;
}

s32 UpdateStageEntryLandingSequence(void)
{
    vu16 *blinkTimer;
    u32 value;
    u16 mask;

    switch (gStageEntrySequenceStep)
    {
        case 0:
            gStageEntryMainSpriteState[2] += -1;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                m4aSongNumStart(446);
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryVerticalVelocity = -60;
                gStageEntryShakeMode = 1;
                gStageEntrySequenceStep++;
            }
            break;

        case 1:
            gStageEntryMainSpriteState[2] += -1;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryVerticalVelocity = -30;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryShakeMode = 1;
                gStageEntryShakeTimer = 0;
                gStageEntrySequenceStep++;
            }
            break;

        case 2:
            gStageEntryMainSpriteState[2] += -1;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryMainSpriteState[2] = 56;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryMainSpriteFalling = 0;
                gStageEntryMainAnimation = sStageEntryLandingAnimation;
                gStageEntrySequenceStep++;
                gStageEntryBlinkVisible = 1;
            }
            break;

        case 3:
            gStageEntryBlinkActive = 1;
            blinkTimer = &gStageEntrySequenceTimer;
            (*blinkTimer)++;
            value = *blinkTimer;
            mask = value & 3;
            if (mask <= 1)
                gStageEntryBlinkVisible = 1;
            else
                gStageEntryBlinkVisible = 0;
            if (*blinkTimer > 45)
            {
                gStageEntryBlinkVisible = 0;
                gStageEntrySequenceStep++;
                m4aSongNumStart(221);
            }
            break;

        case 4:
            if (CollapseStageEntryWindow() != 0)
            {
                gStageEntrySequenceTimer = 0;
                gStageEntrySequenceStep = 0;
                gStageEntryExitRequested = 1;
                return 6;
            }
            break;
    }

    return 0;
}

s32 UpdateStageEntryMovingLandingSequence(void)
{
    vu16 *blinkTimer;
    u32 value;
    u16 mask;

    switch (gStageEntrySequenceStep)
    {
        case 0:
            gStageEntryHorizontalVelocity++;
            if (gStageEntryHorizontalVelocity >= -32)
                gStageEntryHorizontalVelocity = -32;
            gStageEntryMainSpriteState[2] += gStageEntryHorizontalVelocity >> 4;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                m4aSongNumStart(446);
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryVerticalVelocity = -30;
                gStageEntryShakeMode = 1;
                gStageEntrySequenceStep++;
            }
            break;

        case 1:
            gStageEntryHorizontalVelocity++;
            if (gStageEntryHorizontalVelocity >= -32)
                gStageEntryHorizontalVelocity = -32;
            gStageEntryMainSpriteState[2] += gStageEntryHorizontalVelocity >> 4;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                gStageEntryImpactEffectState[0] = (gStageEntryImpactEffectState[1] = 0);
                gStageEntryImpactEffectActive = 1;
                gStageEntryShakeTimer = (gStageEntryShakeMode = 1) - 1;
                gStageEntryVerticalVelocity = -20;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntrySequenceStep++;
            }
            break;

        case 2:
            gStageEntryHorizontalVelocity++;
            if (gStageEntryHorizontalVelocity >= -32)
                gStageEntryHorizontalVelocity = -32;
            gStageEntryMainSpriteState[2] += gStageEntryHorizontalVelocity >> 4;
            gStageEntryVerticalVelocity += 4;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryMainSpriteState[2] = 56;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryMainSpriteFalling = 0;
                gStageEntryMainAnimation = sStageEntryLandingAnimation;
                gStageEntrySequenceStep++;
                gStageEntryBlinkVisible = 1;
            }
            break;

        case 3:
            gStageEntryBlinkActive = 1;
            blinkTimer = &gStageEntrySequenceTimer;
            (*blinkTimer)++;
            value = *blinkTimer;
            mask = value & 3;
            if (mask <= 1)
                gStageEntryBlinkVisible = 1;
            else
                gStageEntryBlinkVisible = 0;
            if (*blinkTimer > 45)
            {
                gStageEntryBlinkVisible = 0;
                gStageEntrySequenceStep++;
                m4aSongNumStart(221);
            }
            break;

        case 4:
            if (CollapseStageEntryWindow() != 0)
            {
                gStageEntrySequenceTimer = 0;
                gStageEntrySequenceStep = 0;
                gStageEntryExitRequested = 1;
                return 6;
            }
            break;
    }

    return 0;
}

s32 UpdateStageEntryNoKeyzerSequence(void)
{
    switch (gStageEntrySequenceStep)
    {
        case 0:
            gStageEntryMainSpriteState[6] = (gStageEntryMainSpriteState[6] + 248) & 0xFF;
            gStageEntryMainSpriteState[7] += 4;
            if (gStageEntryMainSpriteState[7] > 256)
            {
                gStageEntrySequenceStep++;
                gStageEntryMainSpriteState[7] = 256;
                gStageEntryUseAffineMainSprite = 0;
                gStageEntryMainSpriteFalling = 1;
                gStageEntryMainAnimation = sStageEntryKeyzerMovingAnimation;
                gStageEntrySecondaryAnimation = sStageEntrySecondaryFallAnimation;
                gStageEntryVerticalVelocity = -20;
            }
            break;

        case 1:
            gStageEntryVerticalVelocity += 4;
            if (gStageEntryVerticalVelocity > 0)
                gStageEntryMainAnimation = sStageEntryKeyzerImpactAnimation;
            gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
            gStageEntryMainSpriteState[2] += -3;
            if (gStageEntryMainSpriteState[3] > 136)
            {
                gStageEntryImpactEffectState[1] = 0;
                gStageEntryImpactEffectState[0] = 0;
                gStageEntryImpactEffectActive = 1;
                gStageEntryVerticalVelocity = 0;
                gStageEntryMainSpriteFalling = 0;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryMainSpriteState[2] = 56;
                gStageEntryMainAnimation = sStageEntryLandingAnimation;
                gStageEntrySequenceStep++;
            }
            gStageEntrySecondarySpriteState.timer++;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
            }
            gStageEntryKeyzerTargetState[4] -= 2;
            if (gStageEntryKeyzerTargetState[4] <= 63)
                gStageEntryKeyzerTargetState[4] = 64;
            break;

        case 2:
            gStageEntrySecondarySpriteState.timer++;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
                if (gStageEntrySecondarySpriteState.frame == 8)
                {
                    if (gCurrentCollection[gCurrentPassage][gCurrentStageNumber].keyzer)
                    {
                        m4aSongNumStart(447);
                        gStageEntryMainAnimation = sStageEntryKeyzerFoundAnimation;
                        gStageEntryShowCollectionSparkle = 1;
                        gStageEntrySequenceStep++;
                    }
                    else
                    {
                        gStageEntrySequenceStep += 2;
                    }
                }
            }
            gStageEntryKeyzerTargetState[4] -= 2;
            if (gStageEntryKeyzerTargetState[4] <= 63)
                gStageEntryKeyzerTargetState[4] = 64;
            break;

        case 3:
            gStageEntryMainSpriteState[0]++;
            if (gStageEntryMainAnimation[gStageEntryMainSpriteState[1]].time < gStageEntryMainSpriteState[0])
            {
                gStageEntryMainSpriteState[1]++;
                if (gStageEntryMainAnimation[gStageEntryMainSpriteState[1]].time == 0)
                {
                    gStageEntryMainSpriteState[0] = 1;
                    gStageEntryMainSpriteState[1] = 0;
                    gStageEntryShowCollectionSparkle = 0;
                    gStageEntrySequenceStep = 5;
                    gStageEntryMainAnimation = sStageEntryIdleAnimationsByVariant[gStageEntryIdleAnimationVariant];
                }
            }
            gStageEntrySecondarySpriteState.timer++;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
                if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time == 0)
                {
                    gStageEntrySecondarySpriteState.frame = 0;
                    gStageEntrySecondaryAnimation = sStageEntrySecondaryIdleAnimation;
                }
            }
            gStageEntryKeyzerTargetState[4] -= 2;
            if (gStageEntryKeyzerTargetState[4] <= 63)
                gStageEntryKeyzerTargetState[4] = 64;
            break;

        case 4:
            gStageEntrySecondarySpriteState.timer++;
            if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
            {
                gStageEntrySecondarySpriteState.timer = 1;
                gStageEntrySecondarySpriteState.frame++;
                if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time == 0)
                {
                    gStageEntrySecondarySpriteState.frame = 0;
                    gStageEntrySecondaryAnimation = sStageEntrySecondaryIdleAnimation;
                    gStageEntrySequenceStep++;
                    gStageEntryMainAnimation = sStageEntryIdleAnimationsByVariant[gStageEntryIdleAnimationVariant];
                }
            }
            gStageEntryKeyzerTargetState[4] -= 2;
            if (gStageEntryKeyzerTargetState[4] <= 63)
                gStageEntryKeyzerTargetState[4] = 64;
            break;

        case 5:
            gStageEntrySequenceTimer++;
            if (gStageEntrySequenceTimer > 45)
            {
                m4aSongNumStart(221);
                gStageEntrySequenceStep++;
            }
            break;

        case 6:
            if (CollapseStageEntryWindow() != 0)
            {
                gStageEntrySequenceTimer = 0;
                gStageEntrySequenceStep = 0;
                gStageEntryExitRequested = 1;
                return 6;
            }
            break;
    }

    return 0;
}

s32 UpdateStageEntryWithKeyzerSequence(void)
{
    vu32 *dma;
    s32 sparkleIndex;
    s32 triggerIndex;
    u32 paletteStepLimit;
    u16 keyzerRecoveryTimer;

    switch (gStageEntrySequenceStep)
    {
        case 0:
            gStageEntryMainSpriteState[6] = (gStageEntryMainSpriteState[6] + 248) & 0xFF;
            gStageEntryMainSpriteState[7] += 4;
            if (gStageEntryMainSpriteState[7] > 256)
            {
                gStageEntrySequenceStep++;
                gStageEntryMainSpriteState[7] = 256;
                gStageEntryUseAffineMainSprite = 0;
                gStageEntryMainSpriteFalling = 1;
                gStageEntryMainAnimation = sStageEntryKeyzerMovingAnimation;
                gStageEntrySecondaryAnimation = sStageEntrySecondaryFallAnimation;
                gStageEntryVerticalVelocity = -20;
            }
            break;

        case 1:
            if (gStageEntryMainSpriteFalling != 0)
            {
                gStageEntryVerticalVelocity += 4;
                if (gStageEntryVerticalVelocity > 0)
                    gStageEntryMainAnimation = sStageEntryKeyzerImpactAnimation;
                gStageEntryMainSpriteState[3] += gStageEntryVerticalVelocity >> 4;
                gStageEntryMainSpriteState[2] += -3;
            }
            if (gStageEntryMainSpriteState[3] > 136 && gStageEntryMainSpriteFalling != 0)
            {
                if (gStageEntryImpactEffectActive == 0)
                {
                    gStageEntryImpactEffectState[1] = 0;
                    gStageEntryImpactEffectState[0] = 0;
                    gStageEntryImpactEffectActive = 1;
                }
                gStageEntryMainSpriteFalling = 0;
                gStageEntryMainSpriteState[3] = 136;
                gStageEntryMainSpriteState[2] = 56;
                gStageEntryMainAnimation = sStageEntryLandingAnimation;
            }
            UpdateStageEntrySecondaryAnimationAndScale();
            UpdateStageEntryFlyingKeyzerAnimation();
            if (gStageEntrySequenceTimer > 39)
            {
                gStageEntryFlyingKeyzerAnimation = sStageEntryFlyingKeyzerEscapeAnimation;
                gStageEntryFlyingKeyzerState.attribute = 0;
                m4aSongNumStart(448);
                gStageEntrySequenceStep++;
                gStageEntrySequenceTimer = 0;
            }
            else
            {
                gStageEntryFlyingKeyzerState.attribute += 248;
                gStageEntryFlyingKeyzerState.x += sStageEntryFlyingKeyzerApproachXOffsets[gStageEntrySequenceTimer];
                gStageEntryFlyingKeyzerState.y += sStageEntryFlyingKeyzerApproachYOffsets[gStageEntrySequenceTimer];
                gStageEntrySequenceTimer++;
            }
            break;

        case 2:
            UpdateStageEntrySecondaryAnimationAndScale();
            if (gStageEntrySequenceTimer <= 143)
            {
                gStageEntryFlyingKeyzerState.x = sStageEntryFlyingKeyzerScriptXPositions[gStageEntrySequenceTimer];
                gStageEntryFlyingKeyzerState.y = sStageEntryFlyingKeyzerScriptYPositions[gStageEntrySequenceTimer];
            }
            else
            {
                gStageEntryFlyingKeyzerState.y = 200;
            }
            if (gStageEntrySequenceTimer == 43)
            {
                gStageEntryFlyingKeyzerAnimation = sStageEntryFlyingKeyzerSpinAnimation;
                gStageEntryFlyingKeyzerState.frame = 0;
                gStageEntryFlyingKeyzerState.timer = 0;
            }
            UpdateStageEntryFlyingKeyzerAnimation();
            if (gStageEntrySequenceTimer == 142)
                gStageEntryKeyzerFlightFinished = 1;
            if (gStageEntrySequenceTimer == 177)
                gStageEntryShakeMode = 2;
            if (gStageEntrySequenceTimer == 356)
                gStageEntryShakeMode = 3;
            if (gStageEntrySequenceTimer == 389)
                gStageEntryShakeMode = 0;
            if (gStageEntrySequenceTimer <= 277)
            {
                gStageEntryCompanionSpriteState.x = sStageEntryKeyzerXPositions[gStageEntrySequenceTimer];
                gStageEntryCompanionSpriteState.y = sStageEntryKeyzerYPositions[gStageEntrySequenceTimer];
                gStageEntryCompanionSpriteState.data = sStageEntryCompanionSpriteDataByFrame[sStageEntryCompanionSpriteFrameIndices[gStageEntrySequenceTimer]];
            }
            else
            {
                gStageEntryCompanionSpriteState.y = 200;
            }
            if ((u16)(gStageEntrySequenceTimer - 199) <= 29)
                gStageEntryCompanionSpriteState.attribute += 255;
            sparkleIndex = 0;
            while (sparkleIndex <= 5)
            {
                triggerIndex = 0;
                while (triggerIndex <= 1)
                {
                    if (gStageEntrySequenceTimer == sStageEntrySparkleTriggerFrames[sparkleIndex][triggerIndex])
                        gStageEntrySparkleFlags[sparkleIndex] = 1;
                    triggerIndex++;
                }
                sparkleIndex++;
            }
            if (gStageEntrySequenceTimer == 259)
            {
                gStageEntryCompanionKeyzerState.frame = 0;
                gStageEntryCompanionKeyzerState.timer = 0;
                gStageEntryCompanionKeyzerAnimation = sStageEntryCompanionKeyzerRescueAnimation;
                m4aSongNumStart(457);
            }
            if (UpdateStageEntryCompanionKeyzerAnimation() != 0 && gStageEntrySequenceTimer > 259)
            {
                gStageEntryMainAnimation = sStageEntryKeyzerRewardAnimation;
                gStageEntryShowCollectionSparkle = 1;
                gStageEntryMainSpriteState[1] = 0;
                gStageEntryMainSpriteState[0] = 0;
                gStageEntryCompanionKeyzerState.x = 300;
                gStageEntrySequenceStep++;
                gStageEntryShakeMode = 0;
                gStageEntrySequenceTimer = 0;
            }
            else
            {
                gStageEntrySequenceTimer++;
            }
            break;

        case 3:
            keyzerRecoveryTimer = gStageEntrySequenceTimer;
            paletteStepLimit = 7;
            if ((keyzerRecoveryTimer & paletteStepLimit) == 0)
                gStageEntryKeyzerPaletteStep++;
            if (gStageEntryKeyzerPaletteStep > paletteStepLimit)
            {
                gStageEntryKeyzerPaletteStep = paletteStepLimit;
                BackupPalettesForColorFade();
            }
            dma = (vu32 *)0x040000D4;
            dma[0] = (u32)(sStageEntryStagePalettes[gCurrentPassage][gCurrentStageNumber] + (gStageEntryKeyzerPaletteStep << 5));
            dma[1] = 0x05000140 + (gCurrentStageNumber << 5);
            dma[2] = 0x80000010;
            dma[2];
            gStageEntrySequenceTimer++;
            gStageEntryMainSpriteState[0]++;
            if (gStageEntryMainAnimation[gStageEntryMainSpriteState[1]].time < gStageEntryMainSpriteState[0])
            {
                gStageEntryMainSpriteState[0] = 1;
                gStageEntryMainSpriteState[1]++;
                if (gStageEntryMainAnimation[gStageEntryMainSpriteState[1]].time == 0)
                {
                    gStageEntryMainSpriteState[1] = 0;
                    gStageEntryShowCollectionSparkle = 0;
                    gStageEntryMainAnimation = sStageEntryIdleAnimationsByVariant[gStageEntryIdleAnimationVariant];
                    gStageEntrySequenceStep++;
                    m4aSongNumStart(221);
                }
            }
            break;

        case 4:
            if (CollapseStageEntryWindow() != 0)
            {
                gStageEntrySequenceTimer = 0;
                gStageEntrySequenceStep = 0;
                gStageEntryExitRequested = 1;
                return 6;
            }
            break;
    }

    return 0;
}

s32 UpdateStageEntryFlyingKeyzerAnimation(void)
{
    gStageEntryFlyingKeyzerState.timer++;
    if (gStageEntryFlyingKeyzerAnimation[gStageEntryFlyingKeyzerState.frame].time < gStageEntryFlyingKeyzerState.timer)
    {
        gStageEntryFlyingKeyzerState.timer = 1;
        gStageEntryFlyingKeyzerState.frame++;
        if (gStageEntryFlyingKeyzerAnimation[gStageEntryFlyingKeyzerState.frame].time == 0)
        {
            gStageEntryFlyingKeyzerState.frame = 0;
            return 1;
        }
    }
    return 0;
}

s32 UpdateStageEntryCompanionKeyzerAnimation(void)
{
    gStageEntryCompanionKeyzerState.timer++;
    if (gStageEntryCompanionKeyzerAnimation[gStageEntryCompanionKeyzerState.frame].time < gStageEntryCompanionKeyzerState.timer)
    {
        gStageEntryCompanionKeyzerState.timer = 1;
        gStageEntryCompanionKeyzerState.frame++;
        if (gStageEntryCompanionKeyzerAnimation[gStageEntryCompanionKeyzerState.frame].time == 0)
        {
            gStageEntryCompanionKeyzerState.frame = 0;
            return 1;
        }
    }
    return 0;
}

void UpdateStageEntrySecondaryAnimationAndScale(void)
{
    s32 value;

    gStageEntrySecondarySpriteState.timer++;
    if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time < gStageEntrySecondarySpriteState.timer)
    {
        gStageEntrySecondarySpriteState.timer = 1;
        gStageEntrySecondarySpriteState.frame++;
        if (gStageEntrySecondaryAnimation[gStageEntrySecondarySpriteState.frame].time == 0)
        {
            gStageEntrySecondarySpriteState.frame = 0;
            gStageEntrySecondaryAnimation = (const struct AnimationFrame *)sStageEntrySecondaryIdleAnimation;
        }
    }

    value = gStageEntryKeyzerTargetState[4] - 2;
    gStageEntryKeyzerTargetState[4] = value;
    if ((u16)value <= 63)
        gStageEntryKeyzerTargetState[4] = 64;
}

void UpdateStageEntryPaletteFadeCounters(void)
{
    gStageEntryPaletteFadeCounters[0]--;
    if ((gMainTimer & 1) != 0)
        gStageEntryPaletteFadeCounters[1]--;
    if ((gMainTimer & 3) == 0)
        gStageEntryPaletteFadeCounters[2]--;
}

void CycleStageEntryPalette(void)
{
    vu32 *dma;

    if ((gMainTimer & 7) == 0)
    {
        gStageEntryPaletteCycleOffset = (gStageEntryPaletteCycleOffset + 1) & 31;
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)(sStageEntryPaletteCycleTable + (gStageEntryPaletteCycleOffset << 5));
        dma[1] = 0x05000300;
        dma[2] = 0x80000010;
        dma[2];
    }
}

void UpdateStageEntryBlinkState(void)
{
    u8 *counter;
    u32 value;

    value = gStageEntryBlinkCounter;
    value &= 3;
    counter = &gStageEntryBlinkCounter;
    if (value <= 1)
        gStageEntryBlinkVisible = 1;
    else
        gStageEntryBlinkVisible = 0;

    (*counter)++;
    if (*counter == 60)
    {
        *counter = 0;
        gStageEntryBlinkVisible = 0;
        gStageEntryBlinkActive = 0;
    }
}

// Non matching function
// Scratch link: https://decomp.me/scratch/oXj7d
ASM_INCLUDE("asm/disasm_stage_entry.s");

s32 UpdateStageEntryHorizontalShake(void)
{
    s32 counter;
    u32 masked;
    s32 nextCounter;
    s32 offset;

    offset = 0;
    switch (gStageEntryShakeMode)
    {
        case 0:
            offset = 0;
            gStageEntryShakeTimer = 0;
            break;

        case 1:
            counter = gStageEntryShakeTimer;
            masked = counter & 3;
            offset = 1;
            if (masked <= 1)
                offset -= 2;
            nextCounter = counter + 1;
            gStageEntryShakeTimer = nextCounter;
            if ((u8)nextCounter > 30)
            {
                gStageEntryShakeTimer = 0;
                gStageEntryShakeMode = 0;
            }
            break;

        case 2:
            counter = gStageEntryShakeTimer;
            masked = counter & 3;
            offset = 1;
            if (masked <= 1)
                offset -= 2;
            nextCounter = counter + 1;
            gStageEntryShakeTimer = nextCounter;
            break;

        case 3:
            counter = gStageEntryShakeTimer;
            masked = counter & 3;
            offset = 1;
            if (masked <= 1)
                offset = 0;
            nextCounter = counter + 1;
            gStageEntryShakeTimer = nextCounter;
            break;

        case 4:
            counter = gStageEntryShakeTimer;
            masked = counter & 3;
            offset = 2;
            if (masked <= 1)
                offset -= 4;
            nextCounter = counter + 1;
            gStageEntryShakeTimer = nextCounter;
            break;
    }

    return offset;
}

s32 ExpandStageEntryWindow(void)
{
    s32 right;

    gStageEntryWindowLeft -= 10;
    right = gStageEntryWindowRight + 10;
    gStageEntryWindowRight = right;
    gStageEntryWindowTop -= 10;
    gStageEntryWindowBottom += 10;

    if ((s16)gStageEntryWindowBottom > 160)
    {
        gStageEntryWindowTop = 0;
        gStageEntryWindowBottom = 160;
    }

    if ((s16)right > 240)
    {
        gStageEntryWindowLeft = 0;
        gStageEntryWindowRight = 240;
        return 1;
    }

    return 0;
}

s32 CollapseStageEntryWindow(void)
{
    s32 top;

    top = gStageEntryWindowLeft + 10;
    gStageEntryWindowLeft = top;
    gStageEntryWindowRight -= 10;

    if ((s16)top > 40)
    {
        gStageEntryWindowTop += 10;
        gStageEntryWindowBottom -= 10;
    }

    if ((s16)gStageEntryWindowBottom <= 79)
    {
        gStageEntryWindowTop = 80;
        gStageEntryWindowBottom = 80;
    }

    if ((s16)gStageEntryWindowRight <= 119)
    {
        gStageEntryWindowLeft = 120;
        gStageEntryWindowRight = 120;
        return 1;
    }

    return 0;
}

static inline s32 GetStageEntryWrappedScroll(void)
{
    s32 scroll;
    s32 adjusted;

    scroll = gStageEntryHorizontalScroll;
    adjusted = scroll;
    if (scroll < 0)
        adjusted += 0x1FF;
    return scroll - ((adjusted >> 9) << 9);
}

void UpdateStageEntryDisplayRegisters(void)
{
    vu16 *windowRegister;
    vu16 *backgroundRegister;
    s32 shake;
    s32 verticalOffset;

    shake = UpdateStageEntryHorizontalShake();

    windowRegister = (vu16 *)0x04000040;
    *windowRegister = (gStageEntryWindowLeft << 8) | gStageEntryWindowRight;
    windowRegister += 2;
    *windowRegister = (gStageEntryWindowTop << 8) | gStageEntryWindowBottom;

    backgroundRegister = (vu16 *)0x04000012;
    verticalOffset = shake;
    verticalOffset += 8;
    *backgroundRegister = verticalOffset;

    *(vu16 *)0x04000010 = GetStageEntryWrappedScroll();
    *(vu16 *)0x04000016 = verticalOffset;
    *(vu16 *)0x04000014 = GetStageEntryWrappedScroll();
}
