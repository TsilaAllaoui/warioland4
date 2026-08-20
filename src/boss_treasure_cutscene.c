#include "boss_treasure_cutscene.h"

#include "background_registers.h"
#include "fixed_point.h"
#include "global_data.h"
#include "init_helpers.h"
#include "minigame.h"
#include "score.h"
#include "stage_select.h"
#include "gba/io_reg.h"
#include "gba/m4a.h"
#include "gba/syscall.h"

extern u16 gStageEntryHorizontalScroll[];
extern u16 gStageEntrySequenceTimer;
extern s16 gBossTreasureAffineScale;
extern s16 gBossTreasureItems[];
extern u8 gBossTreasureLastItemIndex;
extern u8 gBossTreasureUnlockIcons[];
extern u8 gBossTreasureUnlockSparkles[];
extern u8 gBossTreasureParticles[];
extern u8 gBossTreasureParticleRingIndex;
extern u8 gBossTreasureActivePassage;
extern u16 gBossTreasurePaletteFlashTimer;
extern u8 gBossTreasurePaletteFlashActive;

extern const u16 sBossTreasureFirstPhaseXPositions[];
extern const u16 sBossTreasureFirstPhaseYPositions[];
extern const u16 sBossTreasureFirstPhaseTileValues[];
extern const u8 sBossTreasureAffineXOffsets[];
extern const u8 sBossTreasureAffineYOffsets[];
extern const u16 sBossTreasureAffineScales[];
extern const u16 sBossTreasureSecondPhaseXPositions[];
extern const u16 sBossTreasureSecondPhaseYPositions[];
extern const u16 sBossTreasureSecondPhaseTileValues[];
extern const u8 sBossTreasureBlendInTimes[];
extern const u8 sBossTreasureBlendOutTimes[];
extern const u8 sBossTreasureUnlockIconDurations[];
extern const u8 sBossTreasurePassageIconTiles[];
extern const u8 sBossTreasureLockedIconTiles[];
extern const u8 sBossTreasureUnlockedIconTiles[];
extern const u8 sBossTreasureIconUnlockThresholds[];
extern const u8 sBossTreasureSparkleStartTimes[];
extern const u8 sBossTreasureSparkleDurations[];
extern const u8 sBossTreasureSparkle0XPath[];
extern const u8 sBossTreasureSparkle0YPath[];
extern const u8 sBossTreasureSparkle1XPath[];
extern const u8 sBossTreasureSparkle1YPath[];
extern const u8 sBossTreasureSparkle2XPath[];
extern const u8 sBossTreasureSparkle2YPath[];
extern const u8 sBossTreasureSparkle3XPath[];
extern const u8 sBossTreasureSparkle3YPath[];
extern const u8 sBossTreasureSparkle4XPath[];
extern const u8 sBossTreasureSparkle4YPath[];
extern const u8 sBossTreasureSparkle5XPath[];
extern const u8 sBossTreasureSparkle5YPath[];
extern const u8 sBossTreasureSparkle6XPath[];
extern const u8 sBossTreasureSparkle6YPath[];
extern const u8 sBossTreasureSparkle7XPath[];
extern const u8 sBossTreasureSparkle7YPath[];
extern const u8 sBossTreasureSparkle8XPath[];
extern const u8 sBossTreasureSparkle8YPath[];
extern const u8 sBossTreasureSparkle9XPath[];
extern const u8 sBossTreasureSparkle9YPath[];
extern const u8 sBossTreasureSparkle10XPath[];
extern const u8 sBossTreasureSparkle10YPath[];
extern const s32 sBossTreasureParticleXVelocities[];
extern const s32 sBossTreasureParticleYVelocities[];
extern const s32 sBossTreasureParticleXOffsets[];
extern const s32 sBossTreasureParticleYOffsets[];
extern const u8 sBossTreasureBackgroundPalette[];
extern const u8 sBossTreasureBackgroundTilesLz[];
extern const u8 sBossTreasureSpritePalette[];
extern const u8 sBossTreasureSpriteTiles[];
extern const u16 sBossTreasureIdlePaletteFlashFrames[];
extern const u16 sBossTreasureActivePaletteFlashFrames[];
extern const u16 *const sBossTreasureItemOamFramesByPassage[];
extern const u16 *const sBossTreasureUnlockIconOamFrames[];
extern const u16 *const sBossTreasureSparkleOamFrames[];
extern const u16 sBossTreasureItemOamFrame[];
extern const struct AnimationFrame sBossTreasureParticleAnimation[];

struct BossTreasureItem
{
    s16 x;
    s16 y;
    s16 scale;
    u8 active;
    u8 unused;
};

struct BossTreasureUnlockIcon
{
    u8 x;
    u8 y;
    u8 active;
    u8 unused;
};

struct BossTreasureSparkleSlot
{
    u8 x;
    u8 y;
    u8 active;
    u8 unused;
};

struct BossTreasureParticle
{
    s16 x;
    s16 y;
    u8 scaleIndex;
    s8 xVelocity;
    s8 yVelocity;
    u8 unused7;
    u16 animationTimer;
    u16 animationFrame;
    u8 active;
    u8 unusedD[3];
};

int UpdateBossTreasureCutscene(void)
{
  s32 treasureIndex;
  s32 sparkleIndex;
  s32 iconIndex;
  s32 iconTrigger;
  s32 zero;
  vu16 *phaseCounterPointer;
  s32 timer;
  u8 *treasure;
  u8 *icon;
  vu16 *state3Counter;
  s8 *blendBPointer;
  const u8 *blendInTimes;
  const u8 *sparkleStartTimes;
  vu16 *blendAlphaRegister;
  UpdateBossTreasurePaletteFlash();
  UpdateBossTreasurePaletteSparkle();
  switch (gStageEntrySequenceStep)
  {
    case 0:
    {
      u8 *maximumPointer;
      u8 *maximumLoopPointer;
      s32 one;
      s32 iconTrigger;
      u8 *caseTreasure;
      s32 treasureOffset;
      treasureIndex = 0;
      maximumPointer = &gBossTreasureLastItemIndex;
      if (treasureIndex <= (*maximumPointer))
      {
        phaseCounterPointer = &gStageEntrySequenceTimer;
        maximumLoopPointer = maximumPointer;
        iconTrigger = 65;
        caseTreasure = (u8 *) gBossTreasureItems;
        one = 1;
        do
        {
          treasureOffset = treasureIndex << 3;
          if ((*phaseCounterPointer) == treasureOffset)
          {
            caseTreasure[6] = one;
          }
          if ((*phaseCounterPointer) == iconTrigger)
          {
            iconIndex = 0;
            caseTreasure[6] = iconIndex;
            if (treasureIndex == (*maximumLoopPointer))
            {
              goto first_phase_complete;
            }
          }
          iconTrigger += 8;
          caseTreasure += 8;
          treasureIndex++;
        }
        while (treasureIndex <= (*maximumLoopPointer));
      }
      UpdateBossTreasureFirstPhaseTreasureItems();
      UpdateBossTreasureParticles();
      if ((gStageEntrySequenceTimer % 3) == 0)
      {
        SpawnBossTreasureParticles();
      }
      gStageEntrySequenceTimer++;
      break;
    }

    case 1:
      UpdateBossTreasureParticles();
      gStageEntrySequenceTimer++;
      timer = gStageEntrySequenceTimer;
      if ((timer & 1) == 0)
    {
      gBldy++;
      *((vu16 *) (0x4000000 + 0x54)) = gBldy;
      if (gBldy == 15)
      {
        gStageEntrySequenceTimer = 0;
        gStageEntrySequenceStep++;
        *((vu16 *) (0x4000000 + 0x0)) = 0x1404;
        ClearBossTreasureParticles();
        m4aSongNumStart(0x1AE);
      }
    }
      break;

    case 2:
    {
      u16 initialCounter;
      vu16 *caseCounterPointer;
      s32 caseTrigger;
      initialCounter = gStageEntrySequenceTimer;
      if (((initialCounter & 3) == 0) && (gBldy != 0))
      {
        gBldy--;
        *((vu16 *) (0x4000000 + 0x54)) = gBldy;
      }
      treasureIndex = 0;
      if (treasureIndex <= gBossTreasureLastItemIndex)
      {
        caseCounterPointer = &gStageEntrySequenceTimer;
        asm("" : : "r"(caseCounterPointer));
        treasure = (u8 *) gBossTreasureItems;
        caseTrigger = 14;
        do
        {
          caseCounterPointer = &gStageEntrySequenceTimer;
          timer = treasureIndex << 4;
          if ((*caseCounterPointer) == caseTrigger)
          {
            treasure[6] = 1;
          }
          if (gStageEntrySequenceTimer == (timer + 174))
          {
            zero = 0;
            treasure[6] = zero;
            gBossTreasurePaletteFlashActive = 1;
            gBossTreasurePaletteFlashTimer = zero;
            m4aSongNumStart(0x1AC);
            if (treasureIndex == gBossTreasureLastItemIndex)
            {
              goto second_phase_complete;
            }
          }
          treasure += 8;
          caseTrigger += 16;
          treasureIndex++;
        }
        while (treasureIndex <= gBossTreasureLastItemIndex);
      }
      UpdateBossTreasureSecondPhaseTreasureItems();
      UpdateBossTreasureParticles();
      if ((gStageEntrySequenceTimer % 3) == 0)
      {
        SpawnBossTreasureParticles();
      }
      if (gStageEntrySequenceTimer <= 158)
      {
        gStageEntryHorizontalScroll[0] += (s8) sBossTreasureAffineXOffsets[gStageEntrySequenceTimer];
        gStageEntryHorizontalScroll[1] += (s8) sBossTreasureAffineYOffsets[gStageEntrySequenceTimer];
        gBossTreasureAffineScale = sBossTreasureAffineScales[gStageEntrySequenceTimer];
        UpdateBossTreasureAffineState();
      }
      gStageEntrySequenceTimer++;
      break;
    }

    case 3:
    {
      u16 stateTimer;
      sparkleIndex = 0;
      state3Counter = &gStageEntrySequenceTimer;
      blendInTimes = sBossTreasureBlendInTimes;
      sparkleStartTimes = sBossTreasureSparkleStartTimes;
      stateTimer = gStageEntrySequenceTimer;
      blendBPointer = &gStageTransitionBlendEvb;
      blendAlphaRegister = (vu16 *) 0x04000052;
      while (sparkleIndex <= 9)
      {
        if (stateTimer == (*((const u8 *) (((u32) sparkleIndex) + ((u32) blendInTimes)))))
        {
          gStageTransitionBlendEva--;
          if (((s8) gStageTransitionBlendEva) <= 11)
          {
            gStageTransitionBlendEva = 12;
          }
          (*blendBPointer)++;
          *blendAlphaRegister = (((s8) gStageTransitionBlendEva) << 8) | (*blendBPointer);
        }
        else
          if (stateTimer == sBossTreasureBlendOutTimes[sparkleIndex])
        {
          gStageTransitionBlendEva++;
          if (((s8) gStageTransitionBlendEva) > 16)
          {
            gStageTransitionBlendEva = 16;
          }
          (*blendBPointer)--;
          *blendAlphaRegister = (((s8) gStageTransitionBlendEva) << 8) | (*blendBPointer);
        }
        sparkleIndex++;
      }

      {
        vu16 *freshCounter;
        sparkleIndex = 0;
        while (sparkleIndex <= 10)
        {
          timer = *((const u8 *) (((u32) sparkleIndex) + ((u32) sparkleStartTimes)));
          asm("" : "=r"(freshCounter) : "0"(&gStageEntrySequenceTimer));
          if ((*freshCounter) == timer) { register s32 activeOne asm("r0") = 1; ((struct BossTreasureSparkleSlot *) gBossTreasureUnlockSparkles)[sparkleIndex].active = activeOne; }
          else if ((*state3Counter) == (timer + sBossTreasureSparkleDurations[sparkleIndex])) { ((struct BossTreasureSparkleSlot *) gBossTreasureUnlockSparkles)[sparkleIndex].active = 0; }
          sparkleIndex++;
        }
      }

      UpdateBossTreasureUnlockSparkles();
      {
        treasureIndex = 0;
        state3Counter = &gStageEntrySequenceTimer;
        asm("" : : "r"(state3Counter));
        icon = gBossTreasureUnlockIcons;
        iconTrigger = 34;
        {
          register s32 holdR7 asm("r7");
          asm volatile("" : "=r"(holdR7));
          while (treasureIndex <= 4)
          {
            asm volatile("" : "+r"(holdR7));
          if ((*((volatile u16 *) (&gStageEntrySequenceTimer))) == iconTrigger)
          {
            icon[2] = 1;
          }
          if ((*((volatile u16 *) (&gStageEntrySequenceTimer))) == (sBossTreasureUnlockIconDurations[treasureIndex] + iconTrigger))
          {
            {
              s32 localZero;
              localZero = 0;
              icon[2] = localZero;
            }
            if (treasureIndex == 4)
            {
              goto unlock_complete;
            }
          }
          icon += 4;
          iconTrigger -= 5;
          treasureIndex++;
            asm volatile("" : "+r"(holdR7));
          }
          asm volatile("" : : "r"(holdR7));
        }

      }
      UpdateBossTreasureUnlockIcons();
      gStageEntrySequenceTimer++;
      break;
    }

    case 4:
      gStageEntrySequenceTimer++;
      if (gStageEntrySequenceTimer > 10)
    {
      gStageEntrySequenceTimer = 0;
      gStageEntrySequenceStep = 0;
      return 1;
    }
      break;

  }

  return 0;
  first_phase_complete:
  gStageEntrySequenceStep++;

  *phaseCounterPointer = iconIndex;
  return 0;
  second_phase_complete:
  *((vu16 *) (0x4000000 + 0x50)) = 0x410;

  gStageTransitionBlendEva = 16;
  gStageTransitionBlendEvb = 0;
  *((vu16 *) (0x4000000 + 0x52)) = (((s8) gStageTransitionBlendEva) << 8) | ((s8) gStageTransitionBlendEvb);
  gBossTreasureActivePassage = 0;
  gStageEntrySequenceTimer = 0;
  gStageEntrySequenceStep++;
  m4aSongNumStart(0x1AF);
  return 0;
  unlock_complete:
  InitMinigameScoreDisplay();

  gBldy = 0;
  *((vu16 *) (0x4000000 + 0x54)) = 0;
  gStageEntrySequenceTimer = 0;
  gStageEntrySequenceStep++;
  return 0;
}

void InitializeBossTreasureCutscene(void)
{
  u8 *collection;
  u8 *passage;
  u8 *collectionEntry;
  u16 *scroll;
  u8 zeroByte;
  u8 loopZero;
  int new_var;
  u16 zeroHalf;
  s32 value;
  u16 finalZero;
  InitializeVideoMemory();
  {
    vu32 *dma;
    u32 dmaStatus;
    u32 dmaMask;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sBossTreasureSpritePalette;
    dma[1] = 0x05000200;
    dma[2] = 0x80000100;
    dmaStatus = dma[2];
    dmaStatus = dma[2];
    dmaMask = 0x80000000;
    if (((s32) dmaStatus) < 0)
    {
      do
      {
        dmaStatus = dma[2] & dmaMask;
      }
      while (dmaStatus != 0);
    }
  }
  {
    vu32 *dma;
    vu32 *waitDma;
    u32 dmaStatus;
    u32 dmaMask;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sBossTreasureBackgroundPalette;
    dma[1] = 0x05000000;
    dma[2] = 0x80000100;
    (void) dma[2];
    dma[0] = (u32) sBossTreasureSpriteTiles;
    dma[1] = 0x06014000;
    dma[2] = 0x80000C00;
    (void) dma[2];
    waitDma = dma;
    dmaStatus = waitDma[2];
    dmaMask = 0x80000000;
    if (((s32) dmaStatus) < 0)
    {
      do
      {
        dmaStatus = waitDma[2] & dmaMask;
      }
      while (dmaStatus != 0);
    }
  }
  LZ77UnCompVram((const u32 *) sBossTreasureBackgroundTilesLz, (void *) 0x06000000);
  InitMinigameScoreDisplay();
  scroll = gStageEntryHorizontalScroll;
  zeroByte = 0;
  new_var = 0;
  zeroHalf = new_var;
  scroll[0] = 32;
  scroll[1] = zeroHalf;
  gBossTreasureAffineScale = 0x100;
  gStageEntrySequenceStep = zeroByte;
  gStageEntrySequenceTimer = zeroHalf;
  UpdateBossTreasureAffineState();
  gBossTreasureLastItemIndex = zeroByte;
  collection = (u8 *) gCurrentCollection;
  passage = &gCurrentPassageTemp;
  value = *passage;
  if (((s32) (((u32) collection[(value * 24) + 16]) << 29)) < 0)
  {
    gBossTreasureLastItemIndex = 1;
  }
  collectionEntry = collection + ((*passage) * 24);
  if (((s32) (((u32) collectionEntry[16]) << 30)) < 0)
  {
    gBossTreasureLastItemIndex++;
  }
  if ((((u32) collectionEntry[16]) << 31) != 0)
  {
    gBossTreasureLastItemIndex++;
  }
  {
    volatile u8 *base;
    volatile u8 *current;
    base = (u8 *) gBossTreasureItems;
    loopZero = 0;
    current = base + 24;
    do
    {
      current[6] = loopZero;
      current -= 8;
    }
    while (((s32) current) >= ((s32) base));
    if (((s32) current) < ((s32) base))
    {
      base = gBossTreasureUnlockIcons;
    }
    loopZero = 0;
    current = base + 16;
    do
    {
      current[2] = loopZero;
      current -= 4;
    }
    while (((s32) current) >= ((s32) base));
    zeroHalf = ((s32) current) < ((s32) base);
    if (zeroHalf)
    {
      base = gBossTreasureUnlockSparkles;
    }
    loopZero = 0;
    current = base + 40;
    do
    {
      current[2] = loopZero;
      current -= 4;
    }
    while (((s32) current) >= ((s32) base));
  }
  finalZero = 0;
  ClearBossTreasureParticles();
  gStageTransitionPaletteCycleTimer = finalZero;
  gBossTreasureActivePassage = gCurrentPassageTemp;
  gBossTreasurePaletteFlashTimer = finalZero;
  gBossTreasurePaletteFlashActive = 0;
  *((vu16 *) 0x04000000) = 0x1004;
  *((vu16 *) 0x0400001A) = gStageEntryHorizontalScroll[1];
  *((vu16 *) 0x04000018) = gStageEntryHorizontalScroll[0];
  m4aSongNumStart(0x1AD);
}

void UpdateBossTreasureFirstPhaseTreasureItems(void)
{
    s32 i;
    s16 *treasure;
    const u16 *xPositions;
    u16 *timer;
    const u16 *yPositions;
    const u16 *tileValues;
    u32 baseIndex;
    u32 offset;

    i = 0;
    if (i <= gBossTreasureLastItemIndex) {
        xPositions = sBossTreasureFirstPhaseXPositions;
        timer = &gStageEntrySequenceTimer;
        yPositions = sBossTreasureFirstPhaseYPositions;
        tileValues = sBossTreasureFirstPhaseTileValues;
        treasure = gBossTreasureItems;
        do {
            baseIndex = i << 3;
            if (*((u8 *)treasure + 6) != 0) {
                offset = *timer - baseIndex;
                treasure[0] = xPositions[offset];
                offset = *timer - baseIndex;
                treasure[1] = yPositions[offset];
                offset = *timer - baseIndex;
                treasure[2] = tileValues[offset];
            }
            treasure = (s16 *)((u8 *)treasure + 8);
            i++;
        } while (i <= gBossTreasureLastItemIndex);
    }
}

void UpdateBossTreasureSecondPhaseTreasureItems(void)
{
    s32 i;
    s16 *treasure;
    const u16 *xPositions;
    u16 *timer;
    const u16 *yPositions;
    const u16 *tileValues;
    s32 baseIndex;
    u32 offset;

    i = 0;
    if (i <= gBossTreasureLastItemIndex) {
        xPositions = sBossTreasureSecondPhaseXPositions;
        timer = &gStageEntrySequenceTimer;
        yPositions = sBossTreasureSecondPhaseYPositions;
        tileValues = sBossTreasureSecondPhaseTileValues;
        treasure = gBossTreasureItems;
        baseIndex = 14;
        do {
            if (*((u8 *)treasure + 6) != 0) {
                offset = *timer - baseIndex;
                treasure[0] = xPositions[offset];
                offset = *timer - baseIndex;
                treasure[1] = yPositions[offset];
                offset = *timer - baseIndex;
                treasure[2] = tileValues[offset];
            }
            treasure = (s16 *)((u8 *)treasure + 8);
            baseIndex += 16;
            i++;
        } while (i <= gBossTreasureLastItemIndex);
    }
}

void UpdateBossTreasureUnlockIcons(void)
{
    s32 iconIndex;
    s32 passage;
    s32 tableIndex;
    u8 *icon;
    s32 threshold;
    u32 passageIcons;
    u32 unlockedTiles;
    u32 lockedTiles;

    iconIndex = 0;
    passageIcons = (u32)sBossTreasurePassageIconTiles;
    unlockedTiles = (u32)sBossTreasureUnlockedIconTiles;
    lockedTiles = (u32)sBossTreasureLockedIconTiles;
    icon = gBossTreasureUnlockIcons;
    do {
        if (icon[2] != 0) {
            threshold = ((4 - iconIndex) * 5) + 14;
            passage = gCurrentPassageTemp;
            passage--;
            icon[0] = *(u8 *)(passage + passageIcons);
            if (sBossTreasureIconUnlockThresholds[iconIndex] <= (gStageEntrySequenceTimer - threshold)) {
                passage = gCurrentPassageTemp;
                passage--;
                tableIndex = passage << 2;
                tableIndex += passage;
                tableIndex = -(-tableIndex - iconIndex);
                tableIndex = tableIndex + unlockedTiles;
            } else {
                passage = gCurrentPassageTemp;
                passage--;
                tableIndex = passage << 2;
                tableIndex += passage;
                tableIndex = -(-tableIndex - iconIndex);
                tableIndex = tableIndex + lockedTiles;
            }
            icon[1] = *(u8 *)tableIndex;
        }
        icon += 4;
        iconIndex++;
    } while (iconIndex <= 4);
}

void UpdateBossTreasureUnlockSparkles(void)
{
  s32 sparkleIndex;
  s32 sparkleOffset;
  u8 *sparkleBase;
  sparkleIndex = 0;
  sparkleBase = gBossTreasureUnlockSparkles;
  do
  {
    sparkleOffset = sparkleIndex << 2;
    if (sparkleBase[sparkleOffset + 2] != 0)
    {
      switch (sparkleIndex)
      {
        case 0:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle0XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle0YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 1:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle1XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle1YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 2:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle2XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle2YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 3:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle3XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle3YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          break;

        case 4:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle4XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle4YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          break;

        case 5:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle5XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle5YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          break;

        case 6:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle6XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle6YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 7:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle7XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle7YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 8:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle8XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle8YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

        case 9:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle9XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle9YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 36)];
          break;

        case 10:
          sparkleBase[sparkleIndex << 2] = sBossTreasureSparkle10XPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          sparkleBase[(sparkleIndex << 2) + 1] = sBossTreasureSparkle10YPath[(gStageEntrySequenceTimer - sBossTreasureSparkleStartTimes[sparkleIndex]) + ((gCurrentPassageTemp - 1) * 46)];
          break;

      }

    }
    sparkleIndex++;
  }
  while (sparkleIndex <= 10);
}

void SpawnBossTreasureParticles(void)
{
  s32 treasureIndex;
  s32 groupOffset;
  u16 *treasure;
  u16 *writePointer;
  u8 *ringIndex;
  const s32 *verticalJitterTable;
  u8 *treasureBase;
  u8 (*particleArray)[];
  int zero;
  s32 scale;
  s32 particleGroupOffset;
  particleArray = &gBossTreasureParticles;
  treasureIndex = 0;
  if (treasureIndex <= gBossTreasureLastItemIndex)
  {
    ringIndex = &gBossTreasureParticleRingIndex;
    groupOffset = 0;
    do
    {
      writePointer = (u16 *)gBossTreasureItems;
      treasureBase = (u8 *)writePointer;
      treasure = (u16 *)(treasureBase + (treasureIndex << 3));
      if ((*(((u8 *) treasure) + 6)) != 0)
      {
        scale = 0x200 / treasure[2];
        {
          s32 random;
          u32 particleOffset;
          u8 *particle;
          s32 position;
          const s32 *table;
          random = MinigameRandom();
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          zero = 0;
          position = treasure[zero];
          position <<= 4;
          table = (const s32 *)sBossTreasureParticleXOffsets;
          random %= 3;
          random = table[random];
          random /= scale;
          position += random;
          *((u16 *) particle) = position;
        }
        {
          s32 random;
          u32 particleOffset;
          u8 *particle;
          s32 position;
          const s32 *table;
          random = MinigameRandom();
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          position = treasure[1];
          position <<= 4;
          table = (verticalJitterTable = (const s32 *)sBossTreasureParticleYOffsets);
          random %= 3;
          random = table[random];
          random /= scale;
          position += random;
          *((u16 *) (particle + 2)) = position;
        }
        {
          s32 random;
          u32 particleOffset;
          u8 *particle;
          const s32 *table;
          random = MinigameRandom();
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          table = (const s32 *)sBossTreasureParticleXVelocities;
          random %= 3;
          random = table[random];
          random /= scale;
          particle[5] = random;
        }
        {
          s32 random;
          u32 particleOffset;
          u8 *particle;
          const s32 *table;
          random = MinigameRandom();
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          table = (const s32 *)sBossTreasureParticleYVelocities;
          random %= 3;
          random = table[random];
          random /= scale;
          particle[6] = random;
        }
        {
          u32 particleOffset;
          u8 *particle;
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          particle[4] = treasure[2] >> 7;
        }
        {
          u32 particleOffset;
          u8 *particle;
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          particleOffset += (u32)(*particleArray);
          particle = (u8 *)particleOffset;
          particle[12] = 1;
        }
        particleGroupOffset = groupOffset;
        {
          u32 particleOffset;
          u8 *particle;
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += particleGroupOffset;
          particle = *particleArray;
          particleOffset += (u32)particle;
          particle = (u8 *)particleOffset;
          writePointer = (u16 *) (particle + 8);
          *writePointer = zero;
        }
        {
          u32 particleOffset;
          particleOffset = *ringIndex;
          particleOffset <<= 4;
          particleOffset += groupOffset;
          *((u16 *)((u8 *)((u32)particleOffset + (u32)(*particleArray)) + 10)) = zero;
        }
      }
      groupOffset += 0x140;
      treasureIndex++;
    }
    while (treasureIndex <= gBossTreasureLastItemIndex);
  }
  gBossTreasureParticleRingIndex++;
  if (gBossTreasureParticleRingIndex == 20)
  {
    gBossTreasureParticleRingIndex = 0;
  }
}

void UpdateBossTreasureParticles(void)
{
    s32 group;
    s32 initialEndGroup;
    s32 endGroup;
    s32 nextGroup;
    s32 particleIndex;
    u8 *particle;
    u8 *particleBase;
    s32 velocity;
    u16 position;
    u32 offsetBase;
    u32 offset;

    group = 0;
    initialEndGroup = gBossTreasureLastItemIndex + 1;
    if (group < initialEndGroup) {
        particleBase = gBossTreasureParticles;
        endGroup = initialEndGroup;
        do {
            offsetBase = group << 2;
            nextGroup = group + 1;
            offset = (offsetBase + group) << 6;
            particle = (u8 *)((u32)offset + (u32)particleBase);
            particleIndex = 19;
            do {
                velocity = (s8)particle[5];
                position = *(u16 *)&particle[0];
                *(u16 *)&particle[0] = velocity + position;
                velocity = (s8)particle[6];
                position = *(u16 *)&particle[2];
                *(u16 *)&particle[2] = velocity + position;
                particle += 16;
                particleIndex--;
            } while (particleIndex >= 0);
            group = nextGroup;
        } while (group < endGroup);
    }
}

void ClearBossTreasureParticles(void)
{
    s32 group;
    s32 nextGroup;
    s32 particleIndex;
    u8 *particle;
    u8 *particleTail;
    u8 *particleBase;
    u8 *particleTailBase;
    u8 byteZero;
    u16 halfwordZero;
    u32 offset;
    u32 offsetBase;

    gBossTreasureParticleRingIndex = 0;
    group = 0;
    particleBase = gBossTreasureParticles;
    byteZero = 0;
    halfwordZero = 0;
    particleTailBase = particleBase + 6;
    do {
        offsetBase = group << 2;
        nextGroup = group + 1;
        offset = (offsetBase + group) << 6;
        particleTail = (u8 *)((u32)offset + (u32)particleTailBase);
        particle = (u8 *)((u32)offset + (u32)particleBase);
        particleIndex = 19;
        do {
            *(u16 *)&particleTail[2] = halfwordZero;
            *(u16 *)&particleTail[4] = halfwordZero;
            particle[5] = byteZero;
            particleTail[0] = byteZero;
            particleTail[6] = byteZero;
            particleTail += 16;
            particle += 16;
            particleIndex--;
        } while (particleIndex >= 0);
        group = nextGroup;
    } while (group <= 3);
}

void UpdateBossTreasureAffineState(void)
{
  const s16 *sinCosTable;
  s16 *scale;
  u16 *state;
  s32 cosValue;
  s32 sinValue;
  s32 *new_var2;
  s16 inverse;
  s32 translation;
  s32 matrixValue;
  s32 product;
  s32 result;
  int new_var;
  sinCosTable = (const s16 *) sSinCosTable;
  cosValue = sinCosTable[0x40];
  scale = &gBossTreasureAffineScale;
  inverse = FixedInverse(*scale);
  result = FixedMul(cosValue, inverse);
  state = gStageEntryHorizontalScroll;
  state[2] = result;
  sinValue = sinCosTable[0];
  inverse = FixedInverse(*scale);
  state[3] = FixedMul(sinValue, inverse);
  new_var = (s16) (-((u16) sinCosTable[0]));
  sinValue = new_var;
  inverse = FixedInverse(*scale);
  state[4] = FixedMul(sinValue, inverse);
  inverse = FixedInverse(*scale);
  state[5] = FixedMul(cosValue, inverse);
  translation = (120 - ((s16) state[0])) << 8;
  matrixValue = (s16) state[2];
  new_var2 = &translation;
  product = ((matrixValue << 4) - matrixValue) << 3;
  translation -= product;
  matrixValue = (s16) state[3];
  product = ((matrixValue << 2) + matrixValue) << 4;
  translation -= product;
  *((s32 *) (&state[6])) = *new_var2;
  translation = (64 - ((s16) state[1])) << 8;
  matrixValue = (s16) state[4];
  product = ((matrixValue << 4) - matrixValue) << 3;
  translation -= product;
  matrixValue = (s16) state[5];
  product = ((matrixValue << 2) + matrixValue) << 4;
  translation -= product;
  *((s32 *) (&gStageEntryHorizontalScroll[8])) = *new_var2;
}

void UpdateBossTreasurePaletteSparkle(void)
{
    vu32 *dma;
    u16 *timer;
    u8 *collectionBase;
    u8 *collection;
    u32 collectionFlag;
    s32 frame;

    timer = &gStageTransitionPaletteCycleTimer;
    (*timer)++;
    frame = (u16)(*timer / 10);
    if (frame > 11) {
        *timer = 0;
        frame = 0;
    }
    if (frame > 6) {
        frame = 12 - frame;
    }

    collectionBase = (u8 *)gCurrentCollection;
    collectionFlag = collectionBase[0x70] & 0x20;
    collection = collectionBase;
    if ((collectionFlag != 0) && (gBossTreasureActivePassage != 4)) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)&sBossTreasureGoldenPaletteCycle[frame];
        dma[1] = 0x0500000C;
        dma[2] = 0x80000001;
        (void)dma[2];
    }
    if ((collection[0x40] & 0x20) && (gBossTreasureActivePassage != 2)) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)&sBossTreasureSapphirePaletteCycle[frame];
        dma[1] = 0x0500001A;
        dma[2] = 0x80000001;
        (void)dma[2];
    }
    if ((collection[0x28] & 0x20) && (gBossTreasureActivePassage != 1)) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)&sBossTreasureEmeraldPaletteCycle[frame];
        dma[1] = 0x0500000E;
        dma[2] = 0x80000001;
        (void)dma[2];
    }
    if ((collection[0x58] & 0x20) && (gBossTreasureActivePassage != 3)) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)&sBossTreasureRubyPaletteCycle[frame];
        dma[1] = 0x05000018;
        dma[2] = 0x80000001;
        (void)dma[2];
    }
}

void UpdateBossTreasurePaletteFlash(void)
{
    vu32 *dma;
    vu16 *timer;
    u8 *activeFlag;
    s32 frame;
    s32 active;

    timer = &gBossTreasurePaletteFlashTimer;
    (*timer)++;
    activeFlag = &gBossTreasurePaletteFlashActive;
    active = *activeFlag;
    if (active != 0) {
        frame = *timer >> 1;
        if (frame > 5) {
            *timer = 0;
            *activeFlag = 0;
            frame = 0;
        }
        if (frame > 3) {
            frame = 6 - frame;
        }
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)(sBossTreasureActivePaletteFlashFrames + (frame * 16));
    } else {
        frame = *timer / 10;
        if (frame > 9) {
            *timer = active;
            frame = 0;
        }
        if (frame > 5) {
            frame = 10 - frame;
        }
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)(sBossTreasureIdlePaletteFlashFrames + (frame * 16));
    }
    dma[1] = 0x05000002;
    dma[2] = 0x80000010;
    dma[2];
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_boss_treasure_cutscene_DrawBossTreasureCutsceneSprites.s");
#else
/* Best current WIP C for DrawBossTreasureCutsceneSprites: 28679 / 95000
 * (69.81%). Isolated permuter score diverges from real-context -- rescore:
 * tools/score_func.sh src/boss_treasure_cutscene.c DrawBossTreasureCutsceneSprites
 *   asm/disasm_boss_treasure_cutscene_DrawBossTreasureCutsceneSprites.s us
 * Full history/notes: decomp_work/DrawBossTreasureCutsceneSprites/HANDOFF.md */
void DrawBossTreasureCutsceneSprites(void)
{
  const u16 *new_var3;
  unsigned int new_var36;
  u16 *affine2_;
  const s16 *new_var29;
  volatile long pad2;
  struct BossTreasureParticle *particles;
  struct BossTreasureParticle **new_var18;
  OamData *new_var66;
  u8 new_var11;
  long new_var5;
  s32 new_var38;
  OamData *new_var63;
  short new_var52;
  const s16 new_var80;
  u16 *new_var91;
  const s16 *new_var21;
  struct BossTreasureItem *new_var9;
  const u16 new_var58;
  int new_var68;
  struct BossTreasureParticle *particle;
  long new_var64;
  const u16 *new_var69;
  const s16 new_var83;
  u8 new_var79;
  struct BossTreasureItem *items;
  struct BossTreasureUnlockIcon *icons;
  u16 *new_var44;
  struct BossTreasureSparkleSlot *sparkles;
  u16 new_var35;
  const struct AnimationFrame *animation;
  u8 new_var56;
  struct BossTreasureParticle *new_var7;
  int new_var78;
  const u16 new_var82;
  const s16 **new_var51;
  u16 *new_var59;
  OamData *new_var72;
  u16 *new_var57;
  char new_var76;
  int new_var37;
  int new_var16;
  int groupIndex;
  const u16 *new_var33;
  const u16 *frame;
  int new_var12;
  u8 new_var17;
  u16 *new_var42;
  unsigned int new_var14;
  OamData *new_var28;
  u8 new_var30;
  struct BossTreasureItem *new_var87;
  s32 itemIndex;
  u16 *new_var39;
  struct BossTreasureSparkleSlot *new_var85;
  s32 iconIndex;
  u16 *new_var54;
  s32 x;
  s32 sparkleIndex;
  u16 new_var90;
  u16 *new_var34;
  u32 new_var6;
  int new_var22;
  s32 y;
  s16 *new_var62;
  struct BossTreasureUnlockIcon *new_var25;
  const u16 new_var89;
  OamData *new_var46;
  u16 *new_var75;
  int new_var15;
  u8 new_var8;
  u16 *new_var71;
  const s16 *new_var24;
  const u16 *new_var40;
  u16 new_var65;
  u8 affineMode;
  int objectCount;
  volatile int new_var13;
  u16 *affine3_;
  struct BossTreasureParticle *new_var45;
  const u16 *new_var47;
  short new_var50;
  const u16 *new_var70;
  s16 new_var10;
  u16 *new_var84;
  u16 *new_var61;
  const u16 * const *new_var23;
  int new_var31;
  int new_var74;
  const u16 *new_var27;
  s16 new_var55;
  u16 *new_var60;
  s32 new_var19;
  OamData *oam;
  struct BossTreasureItem *new_var26;
  s32 *new_var2;
  struct BossTreasureItem *new_var53;
  u16 new_var88;
  s32 particleIndex;
  int new_var49;
  u16 *rawOut;
  u16 *new_var48;
  u16 attr0;
  const u16 new_var20;
  u16 attr1;
  u16 attr2;
  register s32 drawn asm("r9");
  s32 new_var41;
  u8 new_var81;
  register volatile int next asm("r8");
  const u16 *new_var67;
  OamData *new_var32;
  int new_var86;
  int new_var4;
  drawn = 0;
  next = gOamSlotsUsed;
  new_var44 = (u16 *) (&gOamBuffer[next]);
  rawOut = new_var44;
  new_var87 = (struct BossTreasureItem *) gBossTreasureItems;
  new_var7 = (struct BossTreasureParticle *) gBossTreasureParticles;
  particles = new_var7;
  items = new_var87;
  icons = (struct BossTreasureUnlockIcon *) gBossTreasureUnlockIcons;
  new_var64 = (groupIndex = 0);
  sparkles = (struct BossTreasureSparkleSlot *) gBossTreasureUnlockSparkles;
  while (groupIndex <= gBossTreasureLastItemIndex)
  {
    particleIndex = 0;
    while (particleIndex < 20)
    {
      particle = &particles[particleIndex + ((2 * groupIndex) * 10)];
      if (particle->active != 0)
      {
        particle->animationTimer++;
        animation = &sBossTreasureParticleAnimation[particle->animationFrame];
        if (animation->time < particle->animationTimer)
        {
          particle->animationTimer = 0;
          particle->animationFrame++;
          if (sBossTreasureParticleAnimation[particle->animationFrame].time == 0)
          {
            particle->animationFrame--;
            if (0 == new_var87[groupIndex].active)
            {
              (new_var45 = particle)->active = 0;
            }
          }
        }
        do
        {
          frame = sBossTreasureParticleAnimation[particle->animationFrame].oam;
          if (1)
          {
            new_var82 = *(frame++);
            do
            {
              objectCount = new_var82;
              next += objectCount;
            }
            while (0);
            if (next > 128)
            {
              return;
            }
            oam = &gOamBuffer[drawn];
            new_var69 = frame++;
            while (drawn < next)
            {
              attr0 = *new_var69;
              *(rawOut++) = attr0;
              if (particle->scaleIndex > 1)
              {
                oam->split.y = (attr0 + (particle->y >> 4)) - 8;
                oam->split.affineMode = 3;
              }
              else
              {
                oam->split.y = attr0 + (particle->y >> 4);
                oam->split.affineMode = 1;
              }
              attr1 = *(frame++);
              *(rawOut++) = attr1;
              if (particle->scaleIndex > 1)
              {
                oam->split.x = ((attr1 + (((particle->x >> 1) >> 1) >> 2)) - 8) & 0x1FF;
              }
              else
              {
                oam->split.x = (attr1 + (new_var55 = (*(new_var18 = &particle))->x >> 4)) & 0x1FF;
              }
              new_var52 = particle->scaleIndex;
              oam->split.matrixNum = 4 + new_var52;
              new_var40 = &(*(frame++));
              ;
              new_var33 = new_var40;
              frame = new_var33;
              *rawOut = *frame;
              ((u8 *) oam)[5] &= (u8) (-13);
              rawOut += 2;
              oam++;
              drawn++;
            }

          }
        }
        while (particle->y * 0);
      }
      particleIndex++;
    }

    groupIndex++;
  }

  new_var74 = (new_var16 = 0);
  if (1 != 0U)
  {
    particleIndex = 0;
    groupIndex = particleIndex + 4;
    while ((particleIndex < 4) != 0)
    {
      do
      {
        u8 matrixNum_ = groupIndex;
        s16 scale_ = 32 * (3 * (particleIndex + 1));
        OamData *matrix_;
        const s16 *sinCosTable_;
        u16 affine_[4];
        u16 *affine3_;
        u16 *affine1_;
        objectCount = FixedInverse(scale_);
        new_var20 = objectCount;
        new_var14 = (s16) new_var20;
        new_var21 = sSinCosTable;
        new_var24 = new_var21;
        sinCosTable_ = (const s16 *) new_var24;
        new_var44 = &affine_[1];
        affine1_ = new_var44;
        new_var54 = &affine_[2];
        affine2_ = new_var54;
        new_var80 = sinCosTable_[0x40];
        affine3_ = &affine_[3];
        matrix_ = &gOamBuffer[matrixNum_ * 4];
        affine_[0] = FixedMul(new_var80, new_var14);
        new_var4 = sinCosTable_[0];
        new_var31 = -new_var4;
        new_var41 = FixedInverse(scale_);
        new_var88 = (*affine1_ = FixedMul(new_var4, (s16) new_var41));
        matrix_[1].all.affineParam = new_var88;
        *affine2_ = FixedMul(new_var31, (s16) FixedInverse(scale_));
        new_var38 = FixedInverse(scale_);
        new_var78 = (s16) new_var38;
        new_var76 = FixedMul(sinCosTable_[0x40], new_var78);
        *affine3_ = (matrix_[3].all.affineParam = new_var76);
        matrix_[0].all.affineParam = affine_[0];
        (*(matrix_ + 2)).all.affineParam = *affine2_;
      }
      while (0);
      particleIndex++;
    }

  }
  if ((float) (gStageEntrySequenceStep == 0))
  {
    if (1)
    {
      itemIndex = 0;
    }
    while (itemIndex <= gBossTreasureLastItemIndex)
    {
      new_var53 = &items[itemIndex];
      new_var2 = &itemIndex;
      if ((*new_var53).active != 0)
      {
        new_var10 = (*(items + (*new_var2))).scale;
        if (itemIndex == 0)
        {
          frame = sBossTreasureItemOamFramesByPassage[gCurrentPassageTemp - 1];
        }
        else
        {
          if ((char) 1)
          {
          }
          frame = sBossTreasureItemOamFrame;
        }
        do
        {
          do
          {
            if (1)
            {
              frame = frame;
              if (1)
              {
                if (1)
                {
                  new_var20 = *(frame++);
                  objectCount = new_var20;
                  next += objectCount;
                  ;
                  if (next > 128)
                  {
                    return;
                  }
                  oam = &gOamBuffer[drawn];
                  new_var26 = &items[itemIndex];
                  while (drawn < next)
                  {
                    new_var27 = frame++;
                    attr0 = *new_var27;
                    new_var72 = oam;
                    if (1)
                    {
                      new_var70 = &(*(frame++));
                      *(rawOut++) = attr0;
                      oam->split.y = (attr0 + (*new_var26).y) - 16;
                      new_var67 = new_var70;
                      oam->split.affineMode = 3;
                      attr1 = *new_var67;
                      x = *(frame++);
                      *(rawOut++) = x;
                      oam->split.x = ((attr1 + (*new_var26).x) - 16) & 0x1FF;
                      oam->split.matrixNum = itemIndex;
                    }
                    attr2 = (*rawOut = *(frame++));
                    ((u8 *) new_var72)[5] = ((u8 *) oam)[5] & ((u8) (-13));
                    rawOut += 2;
                    oam++;
                    drawn++;
                  }

                }
              }
            }
          }
          while (0);
        }
        while (0);
        iconIndex = new_var10;
        do
        {
          int matrixNum_ = itemIndex;
          s16 scale_ = iconIndex;
          OamData *matrix_;
          const s16 *sinCosTable_;
          u16 affine_[4];
          u16 *affine1_;
          u16 *affine2_;
          u16 *affine3_;
          new_var91 = &affine_[2];
          sinCosTable_ = (const s16 *) sSinCosTable;
          new_var75 = new_var91;
          new_var78 = matrixNum_ * 4;
          new_var60 = &affine_[3];
          new_var39 = &affine_[1];
          affine1_ = new_var39;
          new_var59 = new_var75;
          new_var48 = new_var59;
          affine2_ = new_var48;
          affine3_ = new_var60;
          matrix_ = &gOamBuffer[new_var78];
          affine_[0] = FixedMul(sinCosTable_[0x40], (s16) FixedInverse(scale_));
          *affine1_ = FixedMul(sinCosTable_[0], (s16) FixedInverse(scale_));
          new_var50 = 0;
          new_var35 = affine_[new_var50];
          *affine2_ = FixedMul((-sinCosTable_[0]) ^ 0, (s16) FixedInverse(scale_));
          *affine3_ = FixedMul(sinCosTable_[0x40], (s16) FixedInverse(scale_));
          new_var65 = *affine3_;
          matrix_[0].all.affineParam = new_var35;
          matrix_[1].all.affineParam = *affine1_;
          matrix_[2].all.affineParam = *affine2_;
          matrix_[3].all.affineParam = new_var65;
        }
        while (0);
      }
      goto dummy_label_914316;
      dummy_label_914316:
      ;

      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      ;
      itemIndex++;
    }

    if (1)
    {
    }
  }
  else
  {
    itemIndex = gBossTreasureLastItemIndex;
    new_var62 = gBossTreasureItems;
    new_var68 = ((u16) items[itemIndex].scale) > 0xFF;
    while (itemIndex >= 0)
    {
      if (((struct BossTreasureItem *) new_var62)[itemIndex].active != 0)
      {
        new_var36 = drawn;
        if (itemIndex == 0)
        {
          frame = sBossTreasureItemOamFramesByPassage[gCurrentPassageTemp - 1];
        }
        else
        {
          frame = sBossTreasureItemOamFrame;
        }
        new_var17 = next;
        affineMode = 1;
        if (new_var68)
        {
          affineMode = 3;
        }
        do
        {
          frame = frame;
          new_var22 = 0xFF;
          if (1)
          {
            new_var58 = *(frame++);
            objectCount = new_var58;
            ;
            next += objectCount;
            oam = &gOamBuffer[new_var36];
            if (next >= (128 + 1))
            {
              return;
            }
            while (drawn < next)
            {
              attr0 = *(frame++);
              new_var5 = 3;
              *(rawOut++) = attr0;
              new_var9 = &items[itemIndex];
              new_var46 = oam;
              new_var32 = oam;
              if (((u16) items[itemIndex].scale) > new_var22)
              {
                if (1)
                {
                  new_var46->split.y = (attr0 + (*(&items[itemIndex])).y) - 16;
                }
              }
              else
              {
                new_var46->split.y = attr0 + (*(&items[itemIndex])).y;
              }
              new_var46->split.affineMode = new_var5;
              attr1 = *(frame++);
              new_var63 = new_var32;
              *(rawOut++) = attr1;
              new_var90 = (u16) ((0, items))[itemIndex].scale;
              new_var47 = frame++;
              if (new_var90 > new_var22)
              {
                if (1)
                {
                  if (1)
                  {
                    new_var46->split.x = ((attr1 + (*new_var9).x) - 16) & 0x1FF;
                  }
                }
              }
              else
              {
                new_var63->split.x = (attr1 + (*new_var9).x) & 0x1FF;
              }
              new_var46->split.matrixNum = itemIndex;
              attr2 = (*rawOut = *new_var47);
              new_var20 = -13;
              new_var81 = (u8) (new_var64 = new_var20);
              ((u8 *) new_var46)[5] &= new_var81;
              rawOut += 2;
              oam++;
              drawn++;
            }

          }
        }
        while (0);
        do
        {
          unsigned int matrixNum_ = itemIndex;
          unsigned int scale_ = (items + itemIndex)->scale;
          OamData *matrix_;
          const s16 *sinCosTable_;
          u16 affine_[4];
          u16 *affine1_;
          u16 *affine2_;
          new_var71 = &affine_[2];
          new_var61 = new_var71;
          new_var57 = new_var61;
          sinCosTable_ = (const s16 *) new_var24;
          new_var34 = (affine1_ = &affine_[1]);
          affine2_ = new_var57;
          new_var51 = &sinCosTable_;
          new_var42 = &(*affine2_);
          affine3_ = &affine_[3];
          matrix_ = (0, &gOamBuffer[matrixNum_ * 4]);
          affine_[0] = FixedMul(*(new_var29 = &sinCosTable_[0x40]), (s16) FixedInverse(scale_));
          new_var83 = sinCosTable_[0];
          *affine1_ = FixedMul(new_var83, (s16) FixedInverse(items[itemIndex].scale));
          *affine2_ = FixedMul(-new_var83, (s16) FixedInverse(items[itemIndex].scale));
          *affine3_ = FixedMul(sinCosTable_[0x40], (s16) FixedInverse(items[itemIndex].scale));
          matrix_[0].all.affineParam = affine_[0];
          matrix_[1].all.affineParam = *affine1_;
          matrix_[2].all.affineParam = *new_var42;
          matrix_[3].all.affineParam = *affine3_;
        }
        while (0);
      }
      itemIndex--;
    }

  }
  pad2 = new_var74;
  sparkleIndex = 0;
  while (sparkleIndex <= 10)
  {
    new_var56 = sparkles[sparkleIndex].active;
    if (new_var56 != 0)
    {
      do
      {
        frame = sBossTreasureSparkleOamFrames[sparkleIndex];
        if (1)
        {
          do
          {
          }
          while (0);
          if (1)
          {
          }
        }
        if (1)
        {
          new_var89 = *(frame++);
          objectCount = new_var89;
          next += objectCount;
          if (next > 128)
          {
            return;
          }
          new_var85 = &sparkles[sparkleIndex];
          oam = &gOamBuffer[drawn];
          objectCount = next - drawn;
          while (objectCount != 0)
          {
            attr0 = *(frame++);
            *(rawOut++) = attr0;
            ;
            new_var66 = oam;
            new_var79 = (u8) (-13);
            new_var66->split.y = (*new_var85).y;
            new_var66->split.y = attr0 + new_var66->split.y;
            new_var66->split.objMode = 0;
            attr1 = *(frame++);
            new_var28 = new_var66;
            *(rawOut++) = attr1;
            new_var17 = (new_var35 = new_var79);
            (*new_var28).split.x = attr1 + (*new_var85).x;
            attr2 = (*rawOut = *(frame++));
            new_var49 = 5;
            ((u8 *) new_var28)[new_var49] &= new_var35;
            rawOut += 2;
            oam++;
            drawn++;
          }

          objectCount--;
        }
      }
      while (0);
    }
    sparkleIndex++;
  }

  iconIndex = 4;
  while (iconIndex >= 0)
  {
    if (icons[iconIndex].active != 0)
    {
      new_var86 = gCurrentPassageTemp - 1;
      do
      {
        new_var23 = &sBossTreasureUnlockIconOamFrames[new_var86];
        frame = *new_var23;
        if (1)
        {
          new_var3 = frame++;
          objectCount = *new_var3;
          next += objectCount;
          if (next >= (128 + 1))
          {
            return;
          }
          new_var84 = rawOut++;
          oam = &gOamBuffer[drawn];
          objectCount = next - drawn;
          while (objectCount != 0)
          {
            attr0 = *(frame++);
            new_var25 = &icons[iconIndex];
            *new_var84 = attr0;
            oam->split.y = (*new_var25).y;
            oam->split.y = attr0 + oam->split.y;
            oam->split.objMode = 1;
            attr1 = *(frame++);
            new_var30 = (u8) (-13);
            *(rawOut++) = attr1;
            oam->split.x = (attr1 + icons[iconIndex].x) & 0x1FF;
            *rawOut = (attr2 = *(frame++));
            ((u8 *) oam)[5] &= new_var30;
            rawOut += 2;
            oam++;
            drawn++;
            objectCount--;
          }

        }
      }
      while (0);
    }
    iconIndex--;
  }

  objectCount = next;
  gOamSlotsUsed = objectCount;
}
#endif

void ApplyBossTreasureAffineRegisters(void)
{
    u16 *stateCopy;
    vu16 *affineReg;
    u16 *state;
    s32 stateIndex;
    s32 value;

    do {
        affineReg = (vu16 *)0x04000020;
        state = gStageEntryHorizontalScroll;
        stateIndex = 2;
        *affineReg = state[stateIndex];
        affineReg++;
        *affineReg = state[3];
        affineReg++;
    } while (0);

    *affineReg = state[4];
    stateCopy = state;
    affineReg++;
    *affineReg = stateCopy[5];

    do {
        affineReg++;
        value = *(s32 *)&state[6];
        *affineReg = value;
        affineReg++;
        *affineReg = (value & 0x0FFF0000) >> 16;
    } while (0);

    affineReg++;
    value = *(s32 *)&state[8];
    *affineReg = value;
    affineReg++;
    *affineReg = (value & 0x0FFF0000) >> 16;
}
