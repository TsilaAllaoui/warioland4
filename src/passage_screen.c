#include "passage_screen.h"

#include "global_data.h"
#include "init_helpers.h"
#include "minigame.h"
#include "shop.h"
#include "stage_select.h"
#include "color_effects.h"
#include "gba/m4a.h"

extern u8 gStageEntryStageVariant;
extern u8 gUnk_3003C45;
extern u8 gUnk_3003C4A;
extern u8 gUnk_3003C54;
extern u8 gUnk_3003C55;
extern u8 gUnk_3004700;
extern u8 gUnk_3004728;
extern u8 gUnk_3004729;
extern u8 gStageEntryExitRequested;
extern u8 gStageEntrySelectedStage;
extern u8 gStageEntryMainSpriteFalling;
extern u8 gStageEntrySequenceStep;
extern u16 gSoundRoomMessageTimer;
extern u16 gStageEntryMainSpriteState[];
extern s16 gStageEntryHorizontalScroll;
extern u16 gStageEntryWindowLeft;
extern u16 gStageEntryWindowRight;
extern u16 gStageEntryWindowTop;
extern u16 gStageEntryWindowBottom;
extern u16 gStageEntrySequenceTimer;
extern u16 gMedalCount;
extern s32 gTotalScore;
extern s32 gHighScoreTable[6][4];
extern u8 gCurrentCollection[];
extern struct PassageIconState gUnk_3004708[];
extern const struct AnimationFrame *gUnk_3003C40;

extern const u32 sUnk_863C41C[];
extern const u32 sUnk_863C424[];
extern const u32 sUnk_863C42C[];
extern const u32 sUnk_863C434[];
extern const u32 sUnk_863C494[];
extern const u32 sUnk_863C52C[];
extern const u32 sUnk_863C55C[];
extern const u32 sUnk_863C584[];
extern const u32 sUnk_863C5A4[];
extern const u32 sUnk_863C5AC[];
extern const u32 sUnk_863C5B4[];
extern const struct AnimationFrame *const sUnk_863C4AC[];
extern const struct AnimationFrame *const sUnk_863C4BC[];
extern const struct AnimationFrame *const sUnk_863C4CC[];
extern const struct AnimationFrame *const sUnk_863C5D4[];
extern const struct AnimationFrame sUnk_864130C[];
extern const struct AnimationFrame sUnk_864131C[];
extern const struct AnimationFrame sUnk_864132C[];
extern const struct AnimationFrame sUnk_864133C[];
extern const struct AnimationFrame sUnk_86413BC[];
extern const struct AnimationFrame sUnk_86413CC[];
extern const u8 *const sFileSelectPassageNameTableLanguage1[];
extern const u8 *const sFileSelectPassageNameTableLanguage0[];
extern const u8 sStageEntryPassageOverlayGraphics[];
extern const u8 sUnk_869CE48[];
extern const u8 sUnk_869F448[];
extern const u8 sUnk_869F648[];
extern const u8 sUnk_86A0A48[];
extern const u8 sUnk_86A0E08[];
extern const u8 sUnk_86A11C8[];
extern const u8 sUnk_86A13C8[];
extern const u8 sUnk_86A23C8[];
extern const u8 sUnk_86A25C8[];

void Shop_DrawText(const u8 *text, u32 destination, s32 length);
s32 __divsi3(s32 numerator, s32 denominator);

s32 PassageScreenSubroutine(void)
{
    gSoundRoomMessageTimer = 0;
    switch (gUnk_3004700)
    {
        case 0:
            if (gUnk_3003C45 == 0) {
                if (HandlePassageScreenInput() != 0) {
                    gUnk_3003C40 = sUnk_863C5D4[gStageEntryMainSpriteFalling];
                    return 1;
                }
            } else {
                UpdatePassageStageCursorMovement();
                gUnk_3003C54 = 0;
            }
            gUnk_3003C40 = sUnk_863C5D4[gStageEntryMainSpriteFalling];
            break;
        case 1:
            UpdatePassageStageCursorSound();
            if (UpdatePassageStageCursorArrival() != 0) {
                gUnk_3003C55 = 0;
                gUnk_3004700 = 0;
            }
            break;
        case 2:
            if (UpdatePassageStageSwitch() != 0)
                gUnk_3004700 = 0;
            break;
        case 3:
            UpdatePassageStageCursorSound();
            if (UpdatePassageScreenExitMovement() != 0) {
                gUnk_3003C55 = 0;
                return 1;
            }
            break;
        case 4:
            if (OpenPassageScreenWindow() != 0)
                return 1;
            break;
        case 5:
            if (ClosePassageScreenWindow() != 0)
                gUnk_3004700 = 0;
            break;
    }
    return 0;
}

void InitializePassageScreen(void)
{
  InitializeVideoMemory();
  {
    register vu16 *ime asm("r3");
    register u32 zero asm("r4");
    ime = (vu16 *)0x04000208;
    asm("" : "+r"(ime));
    zero = 0;
    *ime = zero;
    *((vu16 *) 0x04000004) &= 0xFFEF;
    *((vu16 *) 0x04000200) &= 0xFFFD;
    *ime = 1;
    if ((gCurrentPassage == 0) || (gCurrentPassage == 5))
    {
      gUnk_3003C4A = 1;
    }
    else
    {
      gUnk_3003C4A = zero;
    }
  }
  {
    register u16 *mainSpriteState asm("r8");
    {
      register u8 *currentPassagePointer asm("r4");
      register const u32 *passagePaletteTable asm("r12");
      register const u8 *blankScoreTiles asm("r9");
      register const u32 *passageGraphicsTable asm("r6");
      u8 *selectedStagePointer;
      register u8 *selectedStageIndexPointer asm("r5");
      register u8 *collectionData asm("r10");
      {
        register vu32 *dma asm("r1");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        dma[0] = (u32) sUnk_86A11C8;
        dma[1] = 0x05000200;
        dma[2] = 0x80000100;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        currentPassagePointer = &gCurrentPassage;
        passagePaletteTable = sUnk_863C494;
        {
          register const u8 *blankTilesTemp asm("r3");
          blankTilesTemp = sUnk_869CE48;
          asm("" : "+r"(blankTilesTemp));
          blankScoreTiles = blankTilesTemp;
        }
        passageGraphicsTable = sUnk_863C434;
        selectedStagePointer = &gStageEntrySelectedStage;
        selectedStageIndexPointer = &gUnk_3004728;
        collectionData = gCurrentCollection;
        mainSpriteState = gStageEntryMainSpriteState;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r1");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        source = *currentPassagePointer;
        source <<= 5;
        source += (u32) sUnk_86A23C8;
        dma[0] = source;
        dma[1] = 0x05000240;
        dma[2] = 0x80000010;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r1");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        source = *currentPassagePointer;
        source <<= 2;
        source += (u32) passagePaletteTable;
        source = *((u32 *) source);
        dma[0] = source;
        dma[1] = 0x05000000;
        dma[2] = 0x80000100;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register u8 *passageFlag asm("r3");
        passageFlag = &gUnk_3003C4A;
        if (*passageFlag == 0)
        {
        register vu32 *dma asm("r2");
        register u32 source asm("r0");
        dma = (vu32 *) 0x040000D4;
        source = *currentPassagePointer;
        source--;
        source <<= 5;
        source += (u32) sUnk_86A25C8;
        dma[0] = source;
        dma[1] = 0x05000260;
        dma[2] = 0x80000010;
        dma[2];
        }
      }
      *((vu16 *) 0x05000000) = 0;
      {
        register vu32 *dma asm("r1");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        source = (u32) blankScoreTiles;
        dma[0] = source;
        dma[1] = 0x06000000;
        dma[2] = 0x80003C00;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r1");
        register const u8 *source asm("r2");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        source = sUnk_86A13C8;
        dma[0] = (u32) source;
        dma[1] = 0x06010000;
        dma[2] = 0x80000800;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r1");
        register u32 passageOffset asm("r0");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r2");
        dma = (vu32 *) 0x040000D4;
        passageOffset = *currentPassagePointer;
        passageOffset <<= 4;
        passageOffset += (u32) passageGraphicsTable;
        source = *((u32 *) (passageOffset + 0));
        dma[0] = source;
        dma[1] = 0x0600C000;
        dma[2] = 0x80000800;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r2");
        register u32 passageOffset asm("r0");
        register u32 tableOffset asm("r1");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r1");
        dma = (vu32 *) 0x040000D4;
        passageOffset = *currentPassagePointer;
        passageOffset <<= 4;
        tableOffset = (u32) passageGraphicsTable;
        tableOffset = tableOffset + 4;
        passageOffset += tableOffset;
        source = *((u32 *) passageOffset);
        dma[0] = source;
        dma[1] = 0x0600D000;
        dma[2] = 0x80000800;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r2");
        register u32 passageOffset asm("r0");
        register u32 tableOffset asm("r1");
        register u32 source asm("r0");
        register u32 control asm("r0");
        register u32 busyMask asm("r1");
        dma = (vu32 *) 0x040000D4;
        passageOffset = *currentPassagePointer;
        passageOffset <<= 4;
        tableOffset = (u32) passageGraphicsTable;
        tableOffset = tableOffset + 8;
        passageOffset += tableOffset;
        source = *((u32 *) passageOffset);
        dma[0] = source;
        dma[1] = 0x0600E000;
        dma[2] = 0x80000800;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        if (((s32) control) < 0)
        {
          do
          {
            control = dma[2];
            control &= busyMask;
          }
          while (control != 0);
        }
      }
      {
        register vu32 *dma asm("r2");
        register u32 passageOffset asm("r0");
        register u32 tableOffset asm("r1");
        register u32 source asm("r0");
        dma = (vu32 *) 0x040000D4;
        passageOffset = *currentPassagePointer;
        passageOffset <<= 4;
        tableOffset = (u32) passageGraphicsTable;
        tableOffset = tableOffset + 12;
        passageOffset += tableOffset;
        source = *((u32 *) passageOffset);
        dma[0] = source;
        dma[1] = 0x0600F000;
        dma[2] = 0x80000800;
        dma[2];
      }
      {
        register vu16 *bgControl asm("r1");
        register u32 value asm("r0");
        register u32 oddValue asm("r2");
        register u32 evenValue asm("r3");
        bgControl = (vu16 *)0x04000008;
        evenValue = 0x1800;
        asm("" : "+r"(evenValue));
        value = evenValue;
        asm("" : "+r"(value));
        *bgControl++ = value;
        oddValue = 0x1A01;
        asm("" : "+r"(oddValue));
        value = oddValue;
        asm("" : "+r"(value));
        *bgControl++ = value;
        evenValue = 0x5C02;
        asm("" : "+r"(evenValue));
        value = evenValue;
        asm("" : "+r"(value));
        *bgControl++ = value;
        oddValue = 0x1E03;
        asm("" : "+r"(oddValue));
        value = oddValue;
        asm("" : "+r"(value));
        *bgControl = value;
      }
      asm("" : "+r"(selectedStagePointer));
      *selectedStagePointer = 0;
      {
        register u32 one asm("r3");
        register u8 *passageFlag asm("r1");
        one = 1;
        *selectedStageIndexPointer = one;
        passageFlag = &gUnk_3003C4A;
        if (*passageFlag != 0)
        {
          register const u8 *collection asm("r2");
          register u32 passage asm("r1");
          register u32 address asm("r0");
          register s32 collected asm("r0");
          collection = gCurrentCollection;
          passage = *currentPassagePointer;
          address = passage << 1;
          address += passage;
          address <<= 3;
          asm("" : "+r"(address));
          address += (u32)collection;
          collected = *(u8 *)address;
          collected <<= 26;
          if (collected >= 0)
          {
            asm("" : "+r"(selectedStagePointer));
            *selectedStagePointer = one;
          }
          goto passage_selection_done;
        }
        else
        {
          register s32 stageIndex asm("r3");
          register u32 passage asm("r0");
          register u32 address asm("r1");
          register s32 collected asm("r0");
          register u32 selected asm("r0");
          register u32 stageOffset asm("r2");
          stageIndex = 0;
          passage = *currentPassagePointer;
          address = passage << 1;
          address += passage;
          address <<= 3;
          asm("" : "+r"(address));
          address += (u32)collectionData;
          collected = *(u8 *)address;
          collected <<= 26;
          if (collected >= 0)
          {
            selected = 1;
            goto passage_selection_store;
          }
passage_selection_loop:
          selected = 4;
          *selectedStageIndexPointer = selected;
          stageIndex++;
          if (stageIndex > 3)
            goto passage_selection_done;
          stageOffset = stageIndex << 2;
          {
            register u32 loopPassage asm("r1");
            register u32 loopAddress asm("r0");
            loopPassage = *currentPassagePointer;
            loopAddress = loopPassage << 1;
            loopAddress += loopPassage;
            loopAddress <<= 3;
            stageOffset += loopAddress;
          }
          asm("" : "+r"(stageOffset));
          stageOffset += (u32)collectionData;
          collected = *(u8 *)stageOffset;
          collected <<= 26;
          if (collected < 0)
            goto passage_selection_loop;
          selected = stageIndex + 1;
passage_selection_store:
          asm("" : "+r"(selectedStagePointer));
          *selectedStagePointer = selected;
          *selectedStageIndexPointer = stageIndex;
        }
passage_selection_done:;
      }
      {
        register u32 scrollValue asm("r0");
        register u32 zeroByte asm("r3");
        register u32 zeroHalf asm("r4");
        u32 offset;
        u32 x;
        {
          register u8 *passageFlag asm("r2");
          register u32 flag asm("r1");
          register u32 tableIndex asm("r0");
          register u32 selectedStage asm("r7");
          register const u32 *scrollTable asm("r3");
          register u32 base asm("r2");
          passageFlag = &gUnk_3003C4A;
          flag = *passageFlag;
          tableIndex = flag << 2;
          tableIndex += flag;
          selectedStage = *selectedStagePointer;
          tableIndex += selectedStage;
          tableIndex <<= 2;
          scrollTable = sUnk_863C55C;
          tableIndex += (u32)scrollTable;
          flag = *(u32 *)tableIndex;
          base = 0x200;
          asm("" : "+r"(base));
          scrollValue = base;
          asm("" : "+r"(scrollValue));
          scrollValue -= flag;
        }
        zeroByte = 0;
        zeroHalf = 0;
        {
          register s16 *horizontalScroll asm("r1");
          horizontalScroll = &gStageEntryHorizontalScroll;
          *horizontalScroll = scrollValue;
        }
      {
        register u16 *state asm("r2");
        state = mainSpriteState;
        state[0] = zeroHalf;
        state[1] = zeroHalf;
      }
      {
        register u8 *currentStagePointer asm("r0");
        register u32 stageOffset asm("r1");
        register u8 *passageFlag asm("r0");
        register u32 flag asm("r2");
        register u32 flagOffset asm("r0");
        register const u32 *xTable asm("r2");
        register u32 *entry asm("r1");
        register u32 xValue asm("r0");
        register u16 *state asm("r1");
        currentStagePointer = &gCurrentStageNumber;
        stageOffset = *currentStagePointer;
        stageOffset <<= 2;
        passageFlag = &gUnk_3003C4A;
        flag = *passageFlag;
        flagOffset = flag << 1;
        flagOffset += flag;
        flagOffset <<= 3;
        stageOffset += flagOffset;
        xTable = sUnk_863C52C;
        stageOffset += (u32)xTable;
        entry = (u32 *)stageOffset;
        xValue = *entry;
        xValue <<= 5;
        state = mainSpriteState;
        state[4] = xValue;
        xValue = 160;
        xValue <<= 4;
        state[5] = xValue;
      }
      {
        register u8 *falling asm("r2");
        falling = &gStageEntryMainSpriteFalling;
        *falling = zeroByte;
      }
      gUnk_3003C40 = sUnk_863C5D4[0];
      gStageEntrySequenceTimer = zeroHalf;
      gStageEntrySequenceStep = zeroByte;
      gUnk_3003C54 = zeroByte;
      gUnk_3003C55 = zeroByte;
      gStageEntryExitRequested = zeroByte;
      gSoundRoomMessageTimer = zeroHalf;
    }
  }
  }
  {
    register u32 *scorePointer asm("r3");
    register u32 score asm("r0");
    register const u8 *numberTiles asm("r1");
    register u32 position asm("r2");
    scorePointer = &gTotalScore;
    score = *scorePointer;
    position = 0x2980;
    numberTiles = sUnk_869F648;
    UploadTallFiveDigitNumberTiles(score, numberTiles, position);
  }
  {
    register u16 *medalPointer asm("r0");
    register u32 medalCount asm("r0");
    register const u8 *numberTiles asm("r1");
    register u32 position asm("r2");
    medalPointer = &gMedalCount;
    medalCount = *medalPointer;
    position = 0x20E0;
    numberTiles = sUnk_869F648;
    DrawMinigameNumber(medalCount, numberTiles, position);
  }
  {
    register s32 i asm("r3");
    register const u8 *collection asm("r6");
    register u16 zero asm("r5");
    register struct PassageIconState *icon asm("r4");
    i = 0;
    collection = gCurrentCollection;
    zero = 0;
    icon = gUnk_3004708;
    do
    {
      register u32 bits asm("r2");
      register u32 passage asm("r1");
      register u32 passageOffset asm("r0");
      register u32 test asm("r0");
      bits = i << 2;
      passage = gCurrentPassage;
      passageOffset = passage << 1;
      passageOffset += passage;
      passageOffset <<= 3;
      bits += passageOffset;
      asm("" : "+r"(bits));
      bits += (u32)collection;
      bits = *(u8 *)bits;
      test = bits << 31;
      if (test == 0)
        goto icon_inactive;
      test = bits << 30;
      if ((s32)test >= 0)
        goto icon_inactive;
      test = bits << 29;
      if ((s32)test >= 0)
        goto icon_inactive;
      test = bits << 28;
      if ((s32)test >= 0)
        goto icon_inactive;
      icon->active = 1;
      goto icon_frame_reset;
icon_inactive:
      icon->active = zero;
icon_frame_reset:
      icon->frame = zero;
      icon->timer = zero;
      icon++;
      i++;
    } while (i <= 3);
  }
  {
    register u32 zero asm("r4");
    zero = 0;
    LoadPassageStageDisplayGraphics();
    DrawPassageStageScore();
    InitMinigameScoreDisplay();
    *((vu16 *) 0x04000012) = zero;
    *((vu16 *) 0x04000010) = zero;
    *((vu16 *) 0x04000016) = zero;
    *((vu16 *) 0x04000014) = zero;
    *((vu16 *) 0x0400001A) = zero;
    *((vu16 *) 0x04000018) = gStageEntryHorizontalScroll;
    *((vu16 *) 0x0400001E) = zero;
    *((vu16 *) 0x0400001C) = zero;
    *((vu16 *) 0x04000054) = zero;
    {
      register vu16 *displayControl asm("r2");
      displayControl = (vu16 *)0x04000000;
      {
        register u32 displayBase asm("r1");
        register u32 value asm("r0");
        displayBase = 0x1F00;
        asm("" : "+r"(displayBase));
        value = displayBase;
        asm("" : "+r"(value));
        *displayControl = value;
      }
      *displayControl |= 0x2000;
    }
    *((vu16 *) 0x04000048) = zero;
    *((vu16 *) 0x0400004A) = 63;
  }
  gStageEntryWindowLeft = 120;
  gStageEntryWindowRight = 120;
  gStageEntryWindowTop = 80;
  gStageEntryWindowBottom = 80;
  *((vu16 *) 0x04000050) = 0x1844;
  *((vu16 *) 0x04000052) = 0x0A06;
}

void BeginPassageStageCursorArrival(void)
{
    gCurrentStageNumber = 0;
    gStageEntryStageVariant = 0;
    BuildTemporaryStageSelectionSave();
    gUnk_3003C45 = 1;
    InitializePassageScreen();
    gUnk_3003C45 = 0;
    gStageEntryMainSpriteState[4] = sUnk_863C41C[gUnk_3003C4A] << 5;
    gStageEntryMainSpriteState[5] = 0x880;
    gUnk_3004700 = 1;
}

void BeginPassageStageSwitch(void)
{
    register s16 *scroll asm("r4");
    const u32 *table;
    u32 passage;
    u32 stage;
    u32 value;
    register u32 work asm("r2");
    register u32 result asm("r0");

    gStageEntryStageVariant = gCurrentStageNumber;
    gUnk_3003C45 = 0;
    InitializePassageScreen();
    scroll = &gStageEntryHorizontalScroll;
    table = sUnk_863C55C;
    stage = gUnk_3004728;
    passage = gUnk_3003C4A;
    value = table[passage * 5 + stage];
    work = 0x200;
    asm("" : "=r"(result) : "0"(work));
    result -= value;
    work = 0;
    *scroll = result;
    gUnk_3004729 = 80;
    gStageEntryWindowLeft = work;
    gStageEntryWindowRight = 240;
    gStageEntryWindowTop = work;
    gStageEntryWindowBottom = 160;
    gUnk_3004700 = 2;
}

void InitializePassageStageEntry(void)
{
    gStageEntryStageVariant = gCurrentStageNumber;
    m4aSongNumStart(0x27F);
    gUnk_3003C45 = 0;
    InitializePassageScreen();
    gUnk_3004700 = 0;
}

void BeginPassageScreenWindowClose(void)
{
    gStageEntryStageVariant = gCurrentStageNumber;
    gUnk_3003C45 = 0;
    InitializePassageScreen();
    if (gCurrentStageNumber == 5)
        m4aSongNumStart(0x27F);
    gStageEntryWindowLeft = 0;
    gStageEntryWindowRight = 240;
    gStageEntryWindowTop = 0;
    gStageEntryWindowBottom = 160;
    gUnk_3004700 = 5;
}

void UpdatePassageStageCursorMovement(void)
{
    register const u32 *table asm("r3");
    register s32 target asm("r5");
    register s32 previous asm("r4");
    register u32 stage asm("r0");
    register u32 passage asm("r2");
    register u32 offset asm("r1");

    table = sUnk_863C52C;
    stage = gCurrentStageNumber;
    stage <<= 2;
    passage = gUnk_3003C4A;
    offset = passage * 3;
    offset <<= 3;
    stage += offset;
    stage += (u32)table;
    target = *(const u32 *)stage;
    stage = gStageEntryStageVariant;
    stage <<= 2;
    stage += offset;
    stage += (u32)table;
    previous = *(const u32 *)stage;
    UpdatePassageStageCursorSound();

    if (target > previous) {
        register u16 *state asm("r2");
        register s32 position asm("r1");
        register s32 current asm("r0");
        state = gStageEntryMainSpriteState;
        current = state[4];
        current += 60;
        previous = 0;
        state[4] = current;
        position = target << 5;
        current = (s16)state[4];
        if (position > current)
            return;
        state[4] = position;
    } else {
        register u16 *state asm("r2");
        register s32 position asm("r1");
        register s32 current asm("r0");
        state = gStageEntryMainSpriteState;
        current = state[4];
        current -= 60;
        previous = 0;
        state[4] = current;
        position = target << 5;
        current = (s16)state[4];
        if (position < current)
            return;
        state[4] = position;
    }

    gUnk_3003C45 = previous;
    LoadPassageStageDisplayGraphics();
    DrawPassageStageScore();
    gUnk_3003C55 = previous;
}

void UpdatePassageStageCursorSound(void)
{
    register u8 *counter asm("r1");
    register u32 value asm("r0");

    counter = &gUnk_3003C55;
    (*counter)++;
    asm("" : : : "memory");
    value = *counter;
    value &= 7;
    if (value == 0)
        m4aSongNumStart(1);
}

s32 HandlePassageScreenInput(void)
{
    register u32 r4Value asm("r4");
    register u32 r5Value asm("r5");
    register u32 direction asm("r6");
    u32 oldFalling;
    register u32 pressedPtrSaved asm("r12");
    register u8 *fallingInitial asm("r2");
    register u16 *pressedPtr asm("r1");
    register u32 pressed asm("r3");
    register u32 mask asm("r0");
    u16 held;
    u32 nextStage;

    fallingInitial = &gStageEntryMainSpriteFalling;
    oldFalling = *fallingInitial;
    direction = 4;
    pressedPtr = &gButtonsPressed;
    pressed = *pressedPtr;
    r5Value = 1;
    mask = 1;
    mask &= pressed;
    r4Value = (u32)fallingInitial;
    pressedPtrSaved = (u32)pressedPtr;

    if (mask != 0) {
        mask = gCurrentStageNumber;
        if (mask == 4) {
            BeginPassageBossStageEntry();
            goto done;
        }
        if (mask == 5) {
            m4aSongNumStart(0x127);
        } else {
            m4aSongNumStart(294);
            m4aSongNumStart(458);
        }
        gUnk_3004700 = 4;
        m4aMPlayFadeOut(gMPlayTable[2].info, 6);
        gStageEntryExitRequested = 0;
        goto done;
    }

    mask = 2;
    mask &= pressed;
    if (mask != 0) {
        *(u8 *)r4Value = r5Value;
        BeginPassageScreenExit();
        if (*(u8 *)r4Value == oldFalling)
            goto done;
        m4aSongNumStart(8);
        goto done;
    }

    {
        register u32 heldValue asm("r1");
        register u16 rightMask asm("r2");
        heldValue = gButtonsHeld;
        mask = 32;
        mask &= heldValue;
        asm("" : "+r"(mask));
        mask <<= 16;
        rightMask = mask >> 16;
        if (rightMask != 0) {
            gUnk_3003C54++;
            if (gUnk_3003C54 > 10) {
                direction = 0;
                *(u8 *)r4Value = r5Value;
            }
        } else {
            mask = 16;
            mask &= heldValue;
            mask <<= 16;
            heldValue = mask >> 16;
            if (heldValue != 0) {
                gUnk_3003C54++;
                if (gUnk_3003C54 > 10) {
                    direction = 1;
                    *(u8 *)r4Value = rightMask;
                }
            } else {
                gUnk_3003C54 = heldValue;
            }
        }

        {
            register u32 pressedAgain asm("r1");
            pressedAgain = *(u16 *)pressedPtrSaved;
            mask = 32;
            mask &= pressedAgain;
            asm("" : "+r"(mask));
            mask <<= 16;
            rightMask = mask >> 16;
            if (rightMask != 0) {
                direction = 0;
                mask = 1;
                *(u8 *)r4Value = mask;
            } else {
                mask = 16;
                mask &= pressedAgain;
                if (mask != 0) {
                    direction = 1;
                    *(u8 *)r4Value = rightMask;
                }
            }
        }
    }

    if (*(u8 *)r4Value != oldFalling)
        m4aSongNumStart(8);

    r5Value = (u32)&gCurrentStageNumber;
    {
        register u32 current asm("r2");
        register u32 compareValue asm("r1");
        current = *(u8 *)r5Value;
        compareValue = current + 1;
        mask = gStageEntrySelectedStage;
        if (compareValue == mask && direction == 1)
            goto invalid;
        if (direction == 4)
            goto invalid;

        {
            register const u8 *table asm("r3");
            register u32 offset asm("r1");
            register u32 passageValue asm("r2");
            table = (const u8 *)sUnk_863C4CC;
            offset = direction << 2;
            mask = current << 3;
            offset += mask;
            passageValue = gUnk_3003C4A;
            mask = passageValue * 3;
            mask <<= 4;
            offset += mask;
            offset += (u32)table;
            r4Value = *(const u32 *)offset;
        }
    }

    if (r4Value == 7) {
        *(u8 *)r5Value = 4;
        BeginPassageBossStageEntry();
        goto done;
    }
    if (r4Value == 8) {
        *(u8 *)r5Value = 0;
        BeginPassageScreenExit();
        goto done;
    }

    gUnk_3003C45 = 1;
    LoadPassageStageDisplayGraphics();
    DrawPassageStageScore();
    gStageEntryStageVariant = *(u8 *)r5Value;
    *(u8 *)r5Value = r4Value;
    BuildTemporaryStageSelectionSave();
    goto done;

invalid:
    gSoundRoomMessageTimer = 1000;

done:
    nextStage = 0;
    return nextStage;
}

void BeginPassageScreenExit(void)
{
    m4aSongNumStart(0x129);
    gStageEntryExitRequested = 1;
    gUnk_3004700 = 3;
    gUnk_3003C45 = 1;
    LoadPassageStageDisplayGraphics();
    DrawPassageStageScore();
    gUnk_3003C45 = 0;
}

void BeginPassageBossStageEntry(void)
{
    m4aSongNumStart(0x126);
    gStageEntryExitRequested = 0;
    gUnk_3004700 = 4;
}

void LoadPassageStageDisplayGraphics(void)
{
    register u32 passage asm("r12");
    register u32 stage asm("r6");
    register u32 paletteVariant asm("r8");
    register u32 graphicsIndex asm("r5");
    u32 passageTimesFour;
    register vu32 *dma asm("r4");

    {
        register u32 value asm("r0");
        value = gUnk_3003C45;
        if (value != 0) {
            value = 5;
            passage = value;
            stage = 2;
            goto clearPaletteVariant;
        }
    }

    {
        register u8 *stagePointer asm("r1");
        register u32 currentStage asm("r0");
        stagePointer = &gCurrentStageNumber;
        currentStage = *stagePointer;
        if (currentStage == 5) {
            register u32 passageFive asm("r3");
            passageFive = 5;
            asm("" : "+r"(passageFive));
            passage = passageFive;
            stage = 1;
            goto zeroPaletteVariant;
        }
        if (currentStage == 4) {
            register u8 *collection asm("r2");
            register u32 stageValue asm("r4");
            register u32 collectionOffset asm("r1");
            register u8 *passagePointer asm("r0");
            register u32 passageValue asm("r3");
            register s32 flag asm("r0");

            collection = gCurrentCollection;
            stageValue = *stagePointer;
            collectionOffset = stageValue << 2;
            passagePointer = &gCurrentPassage;
            passageValue = *passagePointer;
            flag = passageValue << 1;
            flag += passageValue;
            flag <<= 3;
            collectionOffset += flag;
            collectionOffset += (u32)collection;
            flag = *(u8 *)collectionOffset;
            flag <<= 26;
            if (flag < 0) {
                passage = passageValue;
                stage = 5;
                goto clearPaletteVariant;
            }
            passage = passageValue;
            stage = stageValue;
clearPaletteVariant:
            {
                register u32 zero asm("r1");
                zero = 0;
                asm("" : "+r"(zero));
                paletteVariant = zero;
                asm("" : "+r"(paletteVariant));
            }
            goto copyGraphics;
        }

        {
            register u8 *passagePointer asm("r0");
            register u32 passageValue asm("r0");
            register u8 *collection asm("r2");
            register u32 collectionOffset asm("r1");
            register s32 flag asm("r0");
            register u32 one asm("r3");

            passagePointer = &gCurrentPassage;
            passageValue = *passagePointer;
            passage = passageValue;
            stage = *stagePointer;
            collection = gCurrentCollection;
            collectionOffset = stage << 2;
            flag = passageValue << 1;
            flag += passage;
            flag <<= 3;
            collectionOffset += flag;
            collectionOffset += (u32)collection;
            flag = *(u8 *)collectionOffset;
            flag <<= 26;
            one = 1;
            asm("" : "+r"(one));
            paletteVariant = one;
            if (flag >= 0)
                goto copyGraphics;
        }
    }
zeroPaletteVariant:
    {
        register u32 zero asm("r0");
        zero = 0;
        asm("" : "+r"(zero));
        paletteVariant = zero;
    }

copyGraphics:
    graphicsIndex = 0;
    {
        register u32 stageTimesFour asm("r0");
        register u32 passageValue asm("r1");
        register u32 source asm("r2");
        register u32 temp asm("r0");

        stageTimesFour = stage << 2;
        passageValue = passage;
        passageTimesFour = passageValue << 2;
        dma = (vu32 *)0x040000D4;
        source = passageTimesFour + passageValue;
        source <<= 10;
        stageTimesFour += stage;
        stageTimesFour <<= 5;
        passageValue = (u32)sStageEntryPassageOverlayGraphics;
        stageTimesFour += passageValue;
        source += stageTimesFour;

        do {
            register u32 graphicsOffset asm("r1");
            register u32 sourceAddress asm("r0");
            register u32 destinationBase asm("r3");
            register u32 control asm("r0");
            register u32 busyMask asm("r3");
            register u32 nextIndex asm("r1");

            graphicsOffset = graphicsIndex << 10;
            sourceAddress = source + graphicsOffset;
            dma[0] = sourceAddress;
            destinationBase = 0x06005C00;
            asm("" : "+r"(destinationBase));
            graphicsOffset += destinationBase;
            dma[1] = graphicsOffset;
            control = 0x80000050;
            dma[2] = control;
            control = dma[2];
            control = dma[2];
            busyMask = 0x80000000;
            nextIndex = graphicsIndex + 1;
            if ((s32)control < 0) {
                do {
                    control = dma[2];
                    control &= busyMask;
                } while (control != 0);
            }
            graphicsIndex = nextIndex;
        } while ((s32)graphicsIndex <= 4);
    }

    {
        register u32 variant asm("r0");
        variant = paletteVariant;
        asm("" : "+r"(variant));
        if (variant != 0) {
            register vu32 *paletteDma asm("r3");
            register u32 stageOffset asm("r2");
            register u32 passageValue asm("r1");
            register u32 passageOffset asm("r0");
            register u32 paletteBase asm("r1");

            paletteDma = (vu32 *)0x040000D4;
            stageOffset = stage << 5;
            passageValue = passage;
            passageOffset = passageTimesFour + passageValue;
            passageOffset <<= 5;
            paletteBase = (u32)sUnk_86A0E08;
            passageOffset += paletteBase;
            stageOffset += passageOffset;
            paletteDma[0] = stageOffset;
            paletteDma[1] = 0x05000140;
            paletteDma[2] = 0x80000010;
            paletteDma[2];
        } else {
            register u32 currentStage asm("r0");
            register vu32 *paletteDma asm("r3");
            register u32 stageOffset asm("r2");
            register u32 passageValue asm("r1");
            register u32 passageOffset asm("r0");
            register u32 paletteBase asm("r1");

            currentStage = gCurrentStageNumber;
            if (currentStage == 4)
                stage = 4;
            paletteDma = (vu32 *)0x040000D4;
            stageOffset = stage << 5;
            passageValue = passage;
            passageOffset = passageTimesFour + passageValue;
            passageOffset <<= 5;
            paletteBase = (u32)sUnk_86A0A48;
            passageOffset += paletteBase;
            stageOffset += passageOffset;
            paletteDma[0] = stageOffset;
            paletteDma[1] = 0x05000140;
            paletteDma[2] = 0x80000010;
            paletteDma[2];
        }
    }

    BackupPalettesForColorFade();
}

void DrawPassageStageScore(void)
{
    u8 *stagePointer;

    if (gUnk_3003C45 != 0)
        goto drawBlankScores;

    {
        register u8 *stageLoad asm("r0");
        register u32 stageValue asm("r1");
        stageLoad = &gCurrentStageNumber;
        stageValue = *stageLoad;
        asm("" : "+r"(stageLoad), "+r"(stageValue));
        stagePointer = stageLoad;
        if (stageValue <= 3)
            goto drawScore;
    }

drawBlankScores:
    {
        register s32 row asm("r2");
        register vu32 *dma asm("r3");
        register const u8 *source asm("r5");
        register u32 destination asm("r4");

        row = 0;
        dma = (vu32 *)0x040000D4;
        source = sUnk_869CE48;
        destination = 0x06002580;
        do {
            register u32 offset asm("r0");
            register u32 control asm("r0");
            register u32 busyMask asm("r1");

            dma[0] = (u32)source;
            offset = row << 5;
            offset += destination;
            dma[1] = offset;
            control = 0x80000010;
            dma[2] = control;
            control = dma[2];
            control = dma[2];
            busyMask = 0x80000000;
            row++;
            if ((s32)control < 0) {
                do {
                    control = dma[2];
                    control &= busyMask;
                } while (control != 0);
            }
        } while (row <= 14);
    }
    goto end;

drawScore:
    {
        register vu32 *dma asm("r1");
        register const u8 *source asm("r2");
        register u32 control asm("r0");
        register u32 busyMask asm("r3");
        register s32 (*scores)[4] asm("r6");
        register u8 *passagePointer asm("r5");
        register const u8 *digitTiles asm("r4");
        register const u8 *savedDigitTiles asm("r8");
        s32 score;

        dma = (vu32 *)0x040000D4;
        source = sUnk_869F448;
        dma[0] = (u32)source;
        dma[1] = 0x06002600;
        dma[2] = 0x800000B0;
        control = dma[2];
        control = dma[2];
        busyMask = 0x80000000;
        scores = gHighScoreTable;
        passagePointer = &gCurrentPassage;
        digitTiles = (const u8 *)(132 << 4);
        asm("" : "+r"(digitTiles));
        digitTiles += (u32)source;
        savedDigitTiles = digitTiles;
        if ((s32)control < 0) {
            register u32 waitMask asm("r2");
            waitMask = busyMask;
            do {
                control = dma[2];
                control &= waitMask;
            } while (control != 0);
        }

        {
            u32 scoreAddress;
            register u32 passageOffset asm("r1");
            register s32 scoreArgument asm("r0");

            scoreAddress = *stagePointer;
            scoreAddress <<= 2;
            passageOffset = *passagePointer;
            passageOffset <<= 4;
            scoreAddress += passageOffset;
            scoreAddress += (u32)scores;
            scoreArgument = *(s32 *)scoreAddress;
            digitTiles = savedDigitTiles;
            asm("" : "+r"(digitTiles));
            UploadFiveDigitNumberTiles(scoreArgument, digitTiles, 0x26A0);
        }

        {
            u32 scoreAddress;
            register u32 passageOffset asm("r1");
            register s32 scoreValue asm("r1");
            register vu32 *copyDma asm("r1");
            register u32 copySource asm("r0");

            scoreAddress = *stagePointer;
            scoreAddress <<= 2;
            passageOffset = *passagePointer;
            passageOffset <<= 4;
            scoreAddress += passageOffset;
            scoreAddress += (u32)scores;
            scoreValue = *(s32 *)scoreAddress;
            if (scoreValue > 999) {
                register s32 sourceOffset asm("r2");
                copyDma = (vu32 *)0x040000D4;
                sourceOffset = -0xC60;
                asm("" : "+r"(sourceOffset));
                copySource = (u32)digitTiles + sourceOffset;
            } else if (scoreValue > 799) {
                register s32 sourceOffset asm("r2");
                copyDma = (vu32 *)0x040000D4;
                sourceOffset = -0xBE0;
                asm("" : "+r"(sourceOffset));
                copySource = (u32)digitTiles + sourceOffset;
            } else if (scoreValue > 599) {
                copyDma = (vu32 *)0x040000D4;
                copySource = -0xB60;
                copySource += (u32)savedDigitTiles;
            } else {
                goto end;
            }

            asm("" : "+r"(copyDma), "+r"(copySource));
            copyDma[0] = copySource;
            copyDma[1] = 0x06002580;
            copyDma[2] = 0x80000040;
            copyDma[2];
        }
    }

end:
    return;
}

s32 UpdatePassageStageCursorArrival(void)
{
    s32 target;
    s32 delta;

    switch (gStageEntrySequenceStep)
    {
        case 0:
        {
            register u16 *state asm("r3");
            register s32 current asm("r2");
            state = gStageEntryMainSpriteState;
            state[4] += 60;
            current = (s16)state[4];
            target = sUnk_863C424[gUnk_3003C4A] << 5;
            if (current > target) {
                state[4] = target;
                gStageEntrySequenceStep++;
            }
            break;
        }
        case 1:
        {
            register u16 *state asm("r6");
            register s32 current asm("r1");
            state = gStageEntryMainSpriteState;
            state[4] += 60;
            delta = sUnk_863C42C[gUnk_3003C4A] - sUnk_863C424[gUnk_3003C4A];
            state[5] += __divsi3(720, delta);
            current = (s16)state[4];
            target = sUnk_863C42C[gUnk_3003C4A] << 5;
            if (current > target) {
                register u32 finalSpeed asm("r0");
                state[4] = target;
                finalSpeed = 2560;
                state[5] = finalSpeed;
                gStageEntrySequenceStep++;
            }
            break;
        }
        case 2:
        {
            register u16 *state asm("r5");
            register s32 current asm("r4");
            register const u32 *table asm("r3");
            register u32 stage asm("r1");
            register u32 passage asm("r2");
            register u32 offset asm("r0");
            state = gStageEntryMainSpriteState;
            state[4] += 60;
            current = (s16)state[4];
            table = sUnk_863C52C;
            stage = gCurrentStageNumber;
            stage <<= 2;
            passage = gUnk_3003C4A;
            offset = passage * 3;
            offset <<= 3;
            stage += offset;
            stage += (u32)table;
            target = *(const u32 *)stage;
            target <<= 5;
            if (current > target) {
                state[4] = target;
                gStageEntrySequenceStep = 0;
                LoadPassageStageDisplayGraphics();
                DrawPassageStageScore();
                return 1;
            }
            break;
        }
    }
    return 0;
}

s32 UpdatePassageStageSwitch(void)
{
  s32 target;
  s32 current;
  const u32 *new_var2;
  u32 new_var;
  switch (gStageEntrySequenceStep)
  {
    case 0:
      if (ClosePassageScreenWindow() != 0)
    {
      gStageEntrySequenceStep++;
    }
      break;

    case 1:
      gUnk_3004729--;
      if (gUnk_3004729 <= 63)
    {
      gStageEntrySequenceStep++;
    }
      break;

    case 2:
      gStageEntryHorizontalScroll -= 2;
      current = gStageEntryHorizontalScroll;
      new_var2 = sUnk_863C55C;
      new_var = gStageEntrySelectedStage;
      new_var = (gUnk_3003C4A * 5) + new_var;
      target = 0x200 - new_var2[new_var];
      if (current < target)
    {
      gStageEntryHorizontalScroll = target;
      gUnk_3003C45 = 1;
      LoadPassageStageDisplayGraphics();
      DrawPassageStageScore();
      gStageEntryStageVariant = gCurrentStageNumber;
      {
        register u8 *currentStage asm("r4");
        register const u8 *table2 asm("r3");
        register u32 stageOffset asm("r1");
        register u32 passageValue asm("r2");
        register u32 passageOffset asm("r0");
        currentStage = &gCurrentStageNumber;
        table2 = (const u8 *)sUnk_863C4CC;
        stageOffset = *currentStage;
        stageOffset <<= 3;
        passageValue = gUnk_3003C4A;
        passageOffset = passageValue * 3;
        passageOffset <<= 4;
        stageOffset += passageOffset;
        table2 += 4;
        stageOffset += (u32)table2;
        *currentStage = *(const u32 *)stageOffset;
      }
      BuildTemporaryStageSelectionSave();
      gStageEntrySequenceStep++;
    }
      break;

    case 3:
      UpdatePassageStageCursorMovement();
      if (gUnk_3003C45 == 0)
    {
      gStageEntrySequenceStep = 0;
      return (double) 1;
    }
      break;

  }

  target = 0;
  return target;
}

s32 UpdatePassageScreenExitMovement(void)
{
  s32 target;
  int new_var;
  s32 current;
  s32 delta;
  u16 *state;
  switch (gStageEntrySequenceStep)
  {
    case 0:
      ;
      gStageEntryMainSpriteState[4] -= 80;
      current = (s16) gStageEntryMainSpriteState[4];
      target = sUnk_863C42C[gUnk_3003C4A] << 5;
      if (current < target)
    {
      gStageEntryMainSpriteState[4] = target;
      gStageEntrySequenceStep++;
    }
      break;

    case 1:
      state = gStageEntryMainSpriteState;
      state[4] -= 80;
      delta = sUnk_863C42C[gUnk_3003C4A] - sUnk_863C424[gUnk_3003C4A];
      state[5] -= __divsi3(960, delta);
      {
        register s32 branchCurrent asm("r1");
        branchCurrent = (s16) state[4];
        target = sUnk_863C424[gUnk_3003C4A] << 5;
        if (branchCurrent < target)
    {
      state[4] = target;
      new_var = 2176;
      state[5] = new_var;
      gStageEntrySequenceStep++;
        }
      }
      break;

    case 2:
      gStageEntryMainSpriteState[4] -= 80;
      delta = gStageEntryMainSpriteState[4];
      current = (s16) delta;
      target = sUnk_863C41C[gUnk_3003C4A] << 5;
      if (current < target)
    {
      gStageEntryMainSpriteState[4] = target;
      gStageEntrySequenceStep = 0;
      return 1;
    }
      break;

  }

  return 0;
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_passage_screen_DrawPassageScreenSprites.s");
#else
#define ADVANCE_FRAME(stateValue, animationValue) \
    do { \
        register struct PassageIconState *advanceState asm("r2"); \
        register const struct AnimationFrame *advanceAnimation asm("r3"); \
        register u32 advanceTimer asm("r1"); \
        register u32 advanceFrame asm("r0"); \
        advanceState = (stateValue); \
        advanceAnimation = (animationValue); \
        advanceTimer = advanceState->timer + 1; \
        advanceState->timer = advanceTimer; \
        advanceFrame = advanceState->frame; \
        if (advanceAnimation[advanceFrame].time < (u16)advanceTimer) { \
            advanceState->timer = 1; \
            advanceState->frame++; \
            advanceFrame = advanceState->frame; \
            if (advanceAnimation[advanceFrame].time == 0) \
                advanceState->frame = 0; \
        } \
    } while (0)


#define DRAW_ACTIVE_STAGE(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 clearMask asm("r10"); \
            register u32 byteMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r2"); \
            register u8 *screen asm("r4"); \
            coordinateOffset = tableOffset; \
            clearMask = 0xFFFFFE00; \
            byteMask = (u32)-13; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            screenOffset += (u32)screenBase; \
            screen = (u8 *)screenOffset; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 36; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C584 + value); \
                x = attr + x; \
                attr = 0x1FF; \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = byteMask; \
                    mergedByte &= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_ACTIVE_STAGE_FIRST(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 clearMask asm("r10"); \
            register u32 byteMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r1"); \
            register u8 *screen asm("r4"); \
            coordinateOffset = tableOffset; \
            clearMask = 0xFFFFFE00; \
            byteMask = (u32)-13; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            screenOffset += (u32)screenBase; \
            screen = (u8 *)screenOffset; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 36; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C584 + value); \
                x = attr + x; \
                attr = 0x1FF; \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = byteMask; \
                    mergedByte &= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_FIRST_ACTIVE_STAGE(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 clearMask asm("r10"); \
            register u32 byteMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r2"); \
            register u8 *screen asm("r4"); \
            coordinateOffset = tableOffset; \
            clearMask = 0xFFFFFE00; \
            byteMask = (u32)-13; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            asm("" : "+r"(screenOffset)); \
            screen = (u8 *)screenOffset; \
            screen += (u32)screenBase; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 36; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C584 + value); \
                x = attr + x; \
                attr = 0x1FF; \
                asm("" : "+r"(attr)); \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = byteMask; \
                    mergedByte &= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_ACTIVE_PASSAGE(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u8 *passagePtr asm("r12"); \
            register const s32 *xTable asm("r10"); \
            register u32 byteMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r1"); \
            register u8 *screen asm("r4"); \
            screen = &gUnk_3003C4A; \
            asm("" : "+r"(screen)); \
            passagePtr = screen; \
            screenOffset = (u32)sUnk_863C5A4; \
            asm("" : "+r"(screenOffset)); \
            xTable = (const s32 *)screenOffset; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            asm("" : "+r"(screenOffset)); \
            screen = (u8 *)screenOffset; \
            screen += (u32)screenBase; \
            { \
                register u32 lowMask asm("r2"); \
                lowMask = (u32)-13; \
                asm("" : "+r"(lowMask)); \
                byteMask = lowMask; \
            } \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u8 *lowPtr asm("r1"); \
                    lowPtr = passagePtr; \
                    asm("" : "+r"(lowPtr)); \
                    value = *lowPtr; \
                } \
                value = sUnk_863C5AC[value]; \
                value += attr; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u8 *lowPtr asm("r1"); \
                    lowPtr = passagePtr; \
                    asm("" : "+r"(lowPtr)); \
                    value = *lowPtr; \
                } \
                x = xTable[value]; \
                x = attr + x; \
                attr = 0x1FF; \
                asm("" : "+r"(attr)); \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = 0xFFFFFE00; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = byteMask; \
                    mergedByte &= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_LOCKED_STAGE(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 byteMask asm("r10"); \
            register u32 coordinateMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r2"); \
            register u8 *screen asm("r4"); \
            coordinateOffset = tableOffset; \
            byteMask = (u32)-13; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            screenOffset += (u32)screenBase; \
            screen = (u8 *)screenOffset; \
            coordinateMask = 0x1FF; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 20; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C584 + value); \
                x = attr + x; \
                x &= coordinateMask; \
                attr = *(u16 *)(screen + 2); \
                value = 0xFFFFFE00; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                screen[5] = byteMask & screen[5]; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_UNAVAILABLE_STAGE(frameValue, stageIndex) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 clearMask asm("r10"); \
            register u32 coordinateMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r2"); \
            register u8 *screen asm("r4"); \
            coordinateOffset = (stageIndex) << 2; \
            clearMask = 0xFFFFFE00; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            screenOffset += (u32)screenBase; \
            screen = (u8 *)screenOffset; \
            coordinateMask = 0x1FF; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 80; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C5B4 + value); \
                x += attr; \
                x &= coordinateMask; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                value = screen[5]; \
                value &= (u8)-13; \
                value |= 8; \
                screen[5] = value; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_CLEAR(frameValue, yValue, xValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        asm("" : "+r"(drawn)); \
        if (drawn < used) { \
            register u8 *screen asm("r4"); \
            register u32 attr asm("r2"); \
            register u32 adjusted asm("r0"); \
            screen = gOamBuffer + drawn * 8; \
            drawn = used - drawn; \
            do { \
                attr = *drawFrame++; \
                *copy++ = attr; \
                adjusted = attr; \
                adjusted += (yValue); \
                screen[0] = adjusted; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u32 x asm("r1"); \
                    register u32 old asm("r2"); \
                    register u32 merged asm("r0"); \
                    x = attr + (xValue); \
                    x &= 0x1FF; \
                    old = *(u16 *)(screen + 2); \
                    merged = 0xFFFFFE00; \
                    merged &= old; \
                    merged |= x; \
                    *(u16 *)(screen + 2) = merged; \
                } \
                *copy = *drawFrame++; \
                screen[5] &= (u8)-13; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_PRIORITY1(frameValue, yValue, xValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        asm("" : "+r"(drawn)); \
        if (drawn < used) { \
            register u8 *screen asm("r4"); \
            register u32 attr asm("r2"); \
            register u32 adjusted asm("r0"); \
            screen = gOamBuffer + drawn * 8; \
            drawn = used - drawn; \
            do { \
                attr = *drawFrame++; \
                *copy++ = attr; \
                adjusted = attr; \
                adjusted += (yValue); \
                screen[0] = adjusted; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u32 x asm("r1"); \
                    register u32 old asm("r2"); \
                    register u32 merged asm("r0"); \
                    x = attr + (xValue); \
                    x &= 0x1FF; \
                    old = *(u16 *)(screen + 2); \
                    merged = 0xFFFFFE00; \
                    merged &= old; \
                    merged |= x; \
                    *(u16 *)(screen + 2) = merged; \
                } \
                *copy = *drawFrame++; \
                screen[5] = (screen[5] & (u8)-13) | 8; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)



#define DRAW_SELECTED_UNAVAILABLE(frameValue, nextIndexValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        register s32 indexTemp asm("r4"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        indexTemp = locals.index; \
        indexTemp++; \
        (nextIndexValue) = indexTemp; \
        if (drawn < used) { \
            register u32 coordinateOffset asm("r12"); \
            register u32 clearMask asm("r10"); \
            register u32 coordinateMask asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screenBase asm("r2"); \
            register u8 *screen asm("r4"); \
            screenOffset = locals.index; \
            screenOffset <<= 2; \
            coordinateOffset = screenOffset; \
            clearMask = 0xFFFFFE00; \
            screenOffset = drawn << 3; \
            screenBase = gOamBuffer; \
            screenOffset += (u32)screenBase; \
            screen = (u8 *)screenOffset; \
            coordinateMask = 0x1FF; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = attr; \
                value += 80; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                value = gUnk_3003C4A; \
                value <<= 4; \
                value += coordinateOffset; \
                x = *(const s32 *)((const u8 *)sUnk_863C5B4 + value); \
                x = attr + x; \
                x &= coordinateMask; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = (u32)-13; \
                    mergedByte &= oldByte; \
                    oldByte = 8; \
                    mergedByte |= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)

#define DRAW_CURSOR(frameValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u8 *screenBase asm("r1"); \
            register u32 byteMask asm("r12"); \
            register u8 *yPosition asm("r10"); \
            register u8 *reverseIndex asm("r9"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screen asm("r4"); \
            register u32 coordinateMask asm("r8"); \
            register u32 lowValue asm("r0"); \
            register u8 *lowPointer asm("r2"); \
            screenBase = gOamBuffer; \
            lowValue = (u32)-13; \
            byteMask = lowValue; \
            lowPointer = &gUnk_3004729; \
            asm("" : "+r"(lowPointer)); \
            yPosition = lowPointer; \
            { \
                register u8 *reverseLow asm("r4"); \
                reverseLow = &gUnk_3004728; \
                asm("" : "+r"(reverseLow)); \
                reverseIndex = reverseLow; \
            } \
            screenOffset = drawn << 3; \
            asm("" : "+r"(screenOffset)); \
            screen = (u8 *)screenOffset; \
            screen += (u32)screenBase; \
            lowValue = 0x1FF; \
            asm("" : "+r"(lowValue)); \
            coordinateMask = lowValue; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register u32 value asm("r0"); \
                register u32 x asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u8 *positionLow asm("r1"); \
                    positionLow = yPosition; \
                    value = positionLow[0]; \
                } \
                value += attr; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u8 *reverseLow asm("r1"); \
                    reverseLow = reverseIndex; \
                    value = reverseLow[0]; \
                } \
                x = 4; \
                x -= value; \
                x <<= 2; \
                locals.scratch = x; \
                { \
                    register u8 *modePtr asm("r1"); \
                    modePtr = &gUnk_3003C4A; \
                    value = modePtr[0]; \
                } \
                value <<= 4; \
                x = locals.scratch; \
                value = x + value; \
                { \
                    register const s32 *coordinateTable asm("r1"); \
                    coordinateTable = sUnk_863C5B4; \
                    value += (u32)coordinateTable; \
                } \
                locals.scratch = value; \
                x = *(const s32 *)value; \
                x = attr + x; \
                attr = coordinateMask; \
                asm("" : "+r"(attr)); \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = 0xFFFFFE00; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                { \
                    register u32 oldByte asm("r1"); \
                    register u32 mergedByte asm("r0"); \
                    oldByte = screen[5]; \
                    mergedByte = byteMask; \
                    mergedByte &= oldByte; \
                    oldByte = 8; \
                    mergedByte |= oldByte; \
                    screen[5] = mergedByte; \
                } \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
            drawn = used; \
        } \
    } while (0)


#define DRAW_MAIN_SPRITE(frameValue, stateValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        if (drawn < used) { \
            register u8 *screenBase asm("r1"); \
            register const u16 *mainState asm("r8"); \
            register u32 clearMask asm("r10"); \
            register u32 screenOffset asm("r0"); \
            register u8 *screen asm("r4"); \
            register u32 coordinateMask asm("r9"); \
            register u32 lowValue asm("r0"); \
            screenBase = gOamBuffer; \
            mainState = (stateValue); \
            { \
                register u32 clearLow asm("r4"); \
                clearLow = 0xFFFFFE00; \
                asm("" : "+r"(clearLow)); \
                clearMask = clearLow; \
            } \
            screenOffset = drawn << 3; \
            asm("" : "+r"(screenOffset)); \
            screen = (u8 *)screenOffset; \
            screen += (u32)screenBase; \
            lowValue = 0x1FF; \
            asm("" : "+r"(lowValue)); \
            coordinateMask = lowValue; \
            drawn = used - drawn; \
            do { \
                register u32 attr asm("r2"); \
                register s32 value asm("r0"); \
                register s32 x asm("r1"); \
                register const u16 *stateLow asm("r1"); \
                attr = *drawFrame++; \
                *copy++ = attr; \
                stateLow = mainState; \
                value = stateLow[5]; \
                value <<= 16; \
                value >>= 21; \
                value += attr; \
                screen[0] = value; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                x = stateLow[4]; \
                x <<= 16; \
                x >>= 21; \
                x = attr + x; \
                attr = coordinateMask; \
                asm("" : "+r"(attr)); \
                x &= attr; \
                attr = *(u16 *)(screen + 2); \
                value = clearMask; \
                value &= attr; \
                value |= x; \
                *(u16 *)(screen + 2) = value; \
                value = *drawFrame; \
                *copy = value; \
                drawFrame++; \
                value = screen[5]; \
                x = 12; \
                value |= x; \
                screen[5] = value; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
        } \
    } while (0)

#define DRAW_MAIN(frameValue, yValue, xValue) \
    do { \
        register const u16 *drawFrame asm("r3"); \
        drawFrame = (frameValue); \
        used += *drawFrame++; \
        if (used > 128) goto overflow; \
        asm("" : "+r"(drawn)); \
        if (drawn < used) { \
            register u8 *screen asm("r4"); \
            register u32 attr asm("r2"); \
            register u32 adjusted asm("r0"); \
            screen = gOamBuffer + drawn * 8; \
            drawn = used - drawn; \
            do { \
                attr = *drawFrame++; \
                *copy++ = attr; \
                adjusted = attr; \
                adjusted += (yValue); \
                screen[0] = adjusted; \
                attr = *drawFrame++; \
                *copy++ = attr; \
                { \
                    register u32 x asm("r1"); \
                    register u32 old asm("r2"); \
                    register u32 merged asm("r0"); \
                    x = attr + (xValue); \
                    x &= 0x1FF; \
                    old = *(u16 *)(screen + 2); \
                    merged = 0xFFFFFE00; \
                    merged &= old; \
                    merged |= x; \
                    *(u16 *)(screen + 2) = merged; \
                } \
                *copy = *drawFrame++; \
                screen[5] |= 12; \
                copy += 2; \
                screen += 8; \
                drawn--; \
            } while (drawn != 0); \
        } \
    } while (0)

struct PassageRendererLocals
{
    s32 index;
    s32 count;
    s32 stateOffset;
    s32 scratch;
};

void DrawPassageScreenSprites(void)
{
    register u16 *copy asm("r5");
    register s32 used asm("r6");
    s32 drawn;
    register u32 tableOffset asm("r8");
    struct PassageRendererLocals locals;

    drawn = 0;
    {
        register u8 *slots asm("r2");
        register u32 offset asm("r0");
        register u8 *oam asm("r3");
        slots = &gOamSlotsUsed;
        used = *slots;
        offset = used << 3;
        oam = gOamBuffer;
        offset += (u32)oam;
        copy = (u16 *)offset;
    }
    {
        register u8 *modePtr asm("r0");
        register u32 mode asm("r1");
        register s32 four asm("r4");
        modePtr = &gUnk_3003C4A;
        mode = *modePtr;
        four = 4;
        locals.count = four;
        if (mode != 0)
            locals.count = 1;
    }
    {
        register s32 zero asm("r1");
        register s32 loopCount asm("r2");
        zero = 0;
        locals.index = zero;
        loopCount = locals.count;
        if (drawn < loopCount)
        {
            register s32 stateZero asm("r4");
            tableOffset = zero;
            stateZero = 0;
            locals.stateOffset = stateZero;
            asm("" : "+m"(locals.index), "+m"(locals.count), "+m"(locals.stateOffset));
        do
        {
            register const struct AnimationFrame *animation asm("r3");
            register u8 *stateBase asm("r0");
            register s32 stateIndex asm("r1");
            register struct PassageIconState *iconState asm("r2");
            stateBase = (u8 *)gUnk_3004708;
            stateIndex = locals.stateOffset;
            asm("" : "+r"(stateIndex));
            iconState = (struct PassageIconState *)stateIndex;
            iconState = (struct PassageIconState *)((u32)iconState + (u32)stateBase);
            if (iconState->active != 0)
            {
                {
                    register struct PassageIconState *state asm("r2");
                    state = iconState;
                    animation = *(const struct AnimationFrame *const *)((const u8 *)sUnk_863C4AC + tableOffset);
                    ADVANCE_FRAME(state, animation);
                }
                {
                    register s32 stateOffset2 asm("r2");
                    register u8 *stateBase2 asm("r4");
                    register u32 frameAddress asm("r0");
                    register const u16 *frameOam asm("r3");
                    stateOffset2 = locals.stateOffset;
                    stateBase2 = (u8 *)gUnk_3004708;
                    frameAddress = stateOffset2 + (u32)stateBase2;
                    frameAddress = *(u16 *)(frameAddress + 2);
                    frameAddress <<= 3;
                    frameAddress += (u32)animation;
                    frameOam = *(const u16 **)frameAddress;
                    DRAW_FIRST_ACTIVE_STAGE(frameOam);
                }
                animation = *(const struct AnimationFrame *const *)((const u8 *)sUnk_863C4BC + tableOffset);
                DRAW_ACTIVE_PASSAGE(animation[0].oam);
            }
            else
            {
                {
                    register u8 *passagePtr asm("r2");
                    register u32 passage asm("r1");
                    register u32 offset asm("r0");
                    register u8 *collection asm("r3");
                    passagePtr = &gCurrentPassage;
                    passage = *passagePtr;
                    offset = passage << 1;
                    offset += passage;
                    offset <<= 3;
                    offset += tableOffset;
                    collection = gCurrentCollection;
                    offset += (u32)collection;
                    offset = *(u8 *)offset;
                    offset <<= 31;
                    if (offset != 0)
                        DRAW_ACTIVE_STAGE_FIRST(sUnk_864131C[0].oam);
                }
                {
                    register u8 *passagePtr asm("r3");
                    register u32 passage asm("r0");
                    register u32 offset asm("r1");
                    register u8 *collection asm("r4");
                    passagePtr = &gCurrentPassage;
                    passage = *passagePtr;
                    offset = passage << 1;
                    offset += passage;
                    offset <<= 3;
                    offset += tableOffset;
                    collection = gCurrentCollection;
                    offset += (u32)collection;
                    passage = *(u8 *)offset;
                    passage <<= 30;
                    if ((s32)passage < 0)
                        DRAW_ACTIVE_STAGE(sUnk_864133C[0].oam);
                }
                {
                    register u8 *passagePtr asm("r3");
                    register u32 passage asm("r0");
                    register u32 offset asm("r1");
                    register u8 *collection asm("r4");
                    passagePtr = &gCurrentPassage;
                    passage = *passagePtr;
                    offset = passage << 1;
                    offset += passage;
                    offset <<= 3;
                    offset += tableOffset;
                    collection = gCurrentCollection;
                    offset += (u32)collection;
                    passage = *(u8 *)offset;
                    passage <<= 29;
                    if ((s32)passage < 0)
                        DRAW_ACTIVE_STAGE(sUnk_864132C[0].oam);
                }
                {
                    register u8 *passagePtr asm("r3");
                    register u32 passage asm("r0");
                    register u32 offset asm("r1");
                    register u8 *collection asm("r4");
                    passagePtr = &gCurrentPassage;
                    passage = *passagePtr;
                    offset = passage << 1;
                    offset += passage;
                    offset <<= 3;
                    offset += tableOffset;
                    collection = gCurrentCollection;
                    offset += (u32)collection;
                    passage = *(u8 *)offset;
                    passage <<= 28;
                    if ((s32)passage < 0)
                        DRAW_ACTIVE_STAGE(sUnk_864130C[0].oam);
                }
            }
            {
                register s32 four asm("r3");
                register s32 stateOffset asm("r4");
                register s32 index asm("r0");
                register s32 count asm("r1");
                four = 4;
                tableOffset += four;
                stateOffset = locals.stateOffset;
                stateOffset += 8;
                locals.stateOffset = stateOffset;
                index = locals.index;
                index++;
                locals.index = index;
                count = locals.count;
                if (index >= count) break;
            }
            } while (1);
        }
    }

    {
        register u8 *modePtr asm("r2");
        register u32 mode asm("r0");
        modePtr = &gUnk_3003C4A;
        mode = *modePtr;
        if (mode == 0)
        {
            register s32 zero asm("r3");
            zero = 0;
            locals.index = zero;
            tableOffset = zero;
            do
            {
                register u8 *passagePtr asm("r4");
                register u32 passage asm("r0");
                register u32 collectionOffset asm("r1");
                register u8 *collection asm("r0");
                register u32 flags asm("r0");
                passagePtr = &gCurrentPassage;
                passage = *passagePtr;
                collectionOffset = passage << 1;
                collectionOffset += passage;
                collectionOffset <<= 3;
                collectionOffset += tableOffset;
                collection = gCurrentCollection;
                collectionOffset += (u32)collection;
                flags = *(u8 *)collectionOffset;
                flags <<= 27;
                if ((s32)flags < 0)
                    DRAW_LOCKED_STAGE(sUnk_86413BC[0].oam);
                {
                    register s32 four asm("r3");
                    register s32 nextIndex asm("r4");
                    four = 4;
                    tableOffset += four;
                    nextIndex = locals.index;
                    nextIndex++;
                    locals.index = nextIndex;
                    if (nextIndex > 3)
                        break;
                }
            } while (1);
        }
    }

    {
        register u8 *selectedPtr asm("r0");
        register u32 selected asm("r1");
        selectedPtr = &gStageEntrySelectedStage;
        selected = *selectedPtr;
        if (selected != 0)
        {
            register s32 zero asm("r0");
            zero = 0;
            locals.index = zero;
            {
                register u8 *selectedPtr2 asm("r2");
                register u32 selected2 asm("r1");
                register s32 limit asm("r0");
                register s32 index asm("r3");
                selectedPtr2 = &gStageEntrySelectedStage;
                selected2 = *selectedPtr2;
                limit = 5;
                limit -= selected2;
                index = locals.index;
                if (index < limit)
                {
                    do
                    {
                        register s32 nextIndex asm("r8");
                        DRAW_SELECTED_UNAVAILABLE(sUnk_86413CC[0].oam, nextIndex);
                        {
                            register s32 storeIndex asm("r3");
                            register u8 *selectedPtr3 asm("r4");
                            register u32 selected3 asm("r1");
                            register s32 limit3 asm("r0");
                            storeIndex = nextIndex;
                            locals.index = storeIndex;
                            selectedPtr3 = &gStageEntrySelectedStage;
                            selected3 = *selectedPtr3;
                            limit3 = 5;
                            limit3 -= selected3;
                            if (storeIndex >= limit3)
                                break;
                        }
                    } while (1);
                }
            }
        }
    }

    if (gUnk_3004700 == 2)
    {
        DRAW_CURSOR(sUnk_86413CC[0].oam);
    }

    {
        register u16 *state asm("r2");
        register u32 timer asm("r1");
        register u32 frame asm("r0");
        register const struct AnimationFrame **animationPointer asm("r3");
        register const struct AnimationFrame *animation asm("r4");
        register const struct AnimationFrame **savedAnimationPointer asm("r8");
        state = gStageEntryMainSpriteState;
        timer = state[0];
        timer++;
        state[0] = timer;
        frame = state[1];
        asm("" : "+r"(frame));
        animationPointer = &gUnk_3003C40;
        animation = *animationPointer;
        {
            register u32 frameTime asm("r0");
            frameTime = animation[frame].time;
            timer = (u16)timer;
            savedAnimationPointer = animationPointer;
            asm("" : "+r"(savedAnimationPointer));
            if (frameTime < timer)
            {
            state[0] = 1;
            frame = state[1];
            frame++;
            state[1] = frame;
            frame = state[1];
            {
                register u32 nextTime asm("r3");
                nextTime = animation[frame].time;
                if (nextTime == 0)
                    state[1] = nextTime;
            }
            }
        }
        frame = state[1];
        asm("" : "+r"(frame));
        {
            register const struct AnimationFrame **pointerLow asm("r3");
            register const struct AnimationFrame *animationLow asm("r1");
            pointerLow = savedAnimationPointer;
            animationLow = *pointerLow;
            DRAW_MAIN_SPRITE(animationLow[frame].oam, state);
        }
    }
    asm("" : : : "r3");
    {
        register u8 *slots asm("r3");
        slots = &gOamSlotsUsed;
        *slots = used;
    }
overflow:
    return;
}

#undef ADVANCE_FRAME
#undef DRAW_ACTIVE_STAGE
#undef DRAW_ACTIVE_STAGE_FIRST
#undef DRAW_FIRST_ACTIVE_STAGE
#undef DRAW_ACTIVE_PASSAGE
#undef DRAW_LOCKED_STAGE
#undef DRAW_UNAVAILABLE_STAGE
#undef DRAW_CLEAR
#undef DRAW_PRIORITY1
#undef DRAW_SELECTED_UNAVAILABLE
#undef DRAW_CURSOR
#undef DRAW_MAIN_SPRITE
#undef DRAW_MAIN
#endif /* NONMATCHING */

s32 ClosePassageScreenWindow(void)
{
    register u16 *leftPtr asm("r4");
    register u16 *rightPtr asm("r3");
    register u16 *bottomPtr asm("r2");
    register s32 left asm("r1");
    register s32 value asm("r0");

    leftPtr = &gStageEntryWindowLeft;
    left = *leftPtr;
    left += 10;
    *leftPtr = left;

    rightPtr = &gStageEntryWindowRight;
    value = *rightPtr;
    value -= 10;
    *rightPtr = value;

    left = (s16)left;
    bottomPtr = &gStageEntryWindowBottom;
    if (left > 40) {
        register u16 *topPtr asm("r0");
        topPtr = &gStageEntryWindowTop;
        left = *topPtr;
        left += 10;
        *topPtr = left;
        value = *bottomPtr;
        value -= 10;
        *bottomPtr = value;
    }

    value = (s16)*bottomPtr;
    if (value <= 79) {
        register u16 *topPtr asm("r1");
        topPtr = &gStageEntryWindowTop;
        value = 80;
        *topPtr = value;
        *bottomPtr = value;
    }

    value = (s16)*rightPtr;
    if (value <= 119)
        goto finished;
    value = 0;
    goto done;
finished:
    asm("" : : : "memory");
    value = 120;
    *leftPtr = value;
    *rightPtr = value;
    value = 1;
done:
    return value;
}

s32 OpenPassageScreenWindow(void)
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

#define DRAW_PASSAGE_NAME_TEXT(tableValue) \
    do { \
        register const u8 *const *nameTable asm("r3"); \
        register u8 *stagePointer asm("r0"); \
        register u32 stageOffset asm("r1"); \
        register u8 *passagePointer asm("r0"); \
        register u32 passageValue asm("r2"); \
        register u32 passageOffset asm("r0"); \
        register const u8 *text asm("r0"); \
        nameTable = (tableValue); \
        stagePointer = &gCurrentStageNumber; \
        stageOffset = *stagePointer; \
        stageOffset <<= 2; \
        passagePointer = &gCurrentPassage; \
        passageValue = *passagePointer; \
        passageOffset = passageValue; \
        passageOffset <<= 1; \
        passageOffset += passageValue; \
        passageOffset <<= 3; \
        stageOffset += passageOffset; \
        stageOffset += (u32)nameTable; \
        text = *(const u8 **)stageOffset; \
        Shop_DrawText(text, 0x7800, 26); \
    } while (0)

void PassageScreenVBlank(void)
{
    volatile u16 *window;
    window = (volatile u16 *)0x04000040;
    *window = (gStageEntryWindowLeft << 8) | gStageEntryWindowRight;
    window += 2;
    *window = (gStageEntryWindowTop << 8) | gStageEntryWindowBottom;
    switch (gLanguage)
    {
        case 0:
            DRAW_PASSAGE_NAME_TEXT(sFileSelectPassageNameTableLanguage0);
            break;
        case 1:
            DRAW_PASSAGE_NAME_TEXT(sFileSelectPassageNameTableLanguage1);
            break;
    }
    *(volatile u16 *)0x04000018 = gStageEntryHorizontalScroll;
}

#undef DRAW_PASSAGE_NAME_TEXT
