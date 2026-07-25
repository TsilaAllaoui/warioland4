#include "minigames/roulette.h"

void InitRouletteGame(void)
{
  int i;
  register u8 *firstTileBlock asm("r8");
  register u8 *secondTileBlock asm("r10");
  register u8 *thirdTileBlock asm("r9");
  register u8 *postLoopTiles asm("r12");
  register u8 *nextPalette asm("r3");
  register u8 *mainTiles asm("r4");
  register u8 *objectTiles asm("r5");
  register u8 *loadTemp asm("r6");
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    dmaRegs[0] = (u32) sRouletteBgPalette;
    dmaRegs[1] = (u32) ((void *) 0x05000000);
    dmaRegs[2] = (u32) 0x80000100;
    dmaRegs[2];
  }
  ;
  {
    register volatile u32 *dmaRegs asm("r1");
    register u32 waitValue asm("r0");
    register u32 busyMask asm("r2");

    dmaRegs = (volatile u32 *)0x040000D4;
    waitValue = dmaRegs[2];
    busyMask = 0x80000000;
    nextPalette = sRouletteObjPalette;
    mainTiles = sRouletteBgTiles;
    objectTiles = sRouletteObjTiles;
    /* Empty boundary keeps the three future DMA sources in the target low registers. */
    asm volatile("" : : "r"(nextPalette), "r"(mainTiles), "r"(objectTiles));
    /* agbcc cannot retain these addresses in high registers from pure assignments. Each boundary emits one target move; the literal load remains compiler-generated. */
    loadTemp = sRouletteTopResultTiles;
    asm volatile("mov %0, %1" : "=r"(firstTileBlock) : "r"(loadTemp));
    loadTemp = sRouletteMiddleResultTiles;
    asm volatile("mov %0, %1" : "=r"(secondTileBlock) : "r"(loadTemp));
    loadTemp = sRouletteBottomResultTiles;
    asm volatile("mov %0, %1" : "=r"(thirdTileBlock) : "r"(loadTemp));
    loadTemp = sRouletteExtraBgTiles;
    asm volatile("mov %0, %1" : "=r"(postLoopTiles) : "r"(loadTemp));
    if ((s32)waitValue < 0)
    {
      do { waitValue = dmaRegs[2] & busyMask; } while (waitValue != 0);
    }
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    dmaRegs[0] = (u32) nextPalette;
    dmaRegs[1] = (u32) ((void *) 0x05000200);
    dmaRegs[2] = (u32) 0x80000100;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    dmaRegs[0] = (u32) mainTiles;
    dmaRegs[1] = (u32) ((void *) 0x06000000);
    dmaRegs[2] = (u32) 0x80003400;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    dmaRegs[0] = (u32) objectTiles;
    dmaRegs[1] = (u32) ((void *) 0x06010000);
    dmaRegs[2] = (u32) 0x80001800;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    dmaRegs[0] = (u32) firstTileBlock;
    dmaRegs[1] = (u32) ((void *) 0x06013000);
    dmaRegs[2] = (u32) 0x80002000;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    register int dmaIndex asm("r5");
    register int nextIndex asm("r4");
    register volatile u32 *dmaRegs asm("r2");
    register u32 dmaControl asm("r7");
    register u32 dmaBusyMask asm("r6");
    register u32 tileOffset asm("r1");
    register u32 value asm("r0");
    register u32 address asm("r3");

    dmaIndex = 0;
    dmaRegs = (volatile u32 *)0x040000D4;
    dmaControl = 0x80000080;
    dmaBusyMask = 0x80000000;
    do
    {
      tileOffset = dmaIndex << 10;
      address = (u32)firstTileBlock;
      value = tileOffset + address;
      dmaRegs[0] = value;
      address = 0x06017000;
      value = tileOffset + address;
      dmaRegs[1] = value;
      dmaRegs[2] = dmaControl;
      value = dmaRegs[2];
      value = dmaRegs[2] & dmaBusyMask;
      nextIndex = dmaIndex + 1;
      if (value != 0)
      {
        do { value = dmaRegs[2] & 0x80000000; } while (value != 0);
      }

      address = (u32)secondTileBlock;
      value = tileOffset + address;
      dmaRegs[0] = value;
      address = 0x06017100;
      value = tileOffset + address;
      dmaRegs[1] = value;
      dmaRegs[2] = dmaControl;
      value = dmaRegs[2];
      /* r5 is dead as an index here; the target reuses it as the DMA pointer. */
      dmaIndex = (u32)dmaRegs;
      value = dmaRegs[2] & dmaBusyMask;
      if (value != 0)
      {
        do { value = ((volatile u32 *)dmaIndex)[2] & 0x80000000; } while (value != 0);
      }

      address = (u32)thirdTileBlock;
      value = tileOffset + address;
      dmaRegs[0] = value;
      address = 0x06017200;
      value = tileOffset + address;
      dmaRegs[1] = value;
      dmaRegs[2] = dmaControl;
      value = dmaRegs[2];
      /* agbcc removes this repeated copy; the original reloads r5 from r2. */
      asm volatile("" : "+r"(dmaIndex));
      dmaIndex = (u32)dmaRegs;
      value = ((volatile u32 *)dmaIndex)[2] & dmaBusyMask;
      if (value != 0)
      {
        do { value = ((volatile u32 *)dmaIndex)[2] & 0x80000000; } while (value != 0);
      }
      /* Keep the tile offset live in r1 so the wait mask uses target r3. */
      asm volatile("" : "+r"(tileOffset));

      dmaIndex = nextIndex;
    } while (dmaIndex <= 3);
  }

  {
    register u8 *postSource asm("r6");
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;

    /* agbcc otherwise copies the persistent ip source through r0; the target
     * uses r6 for this single DMA source store. */
    postSource = postLoopTiles;
    dmaRegs[0] = (u32) postSource;
    dmaRegs[1] = (u32) ((void *) 0x0600C000);
    dmaRegs[2] = (u32) 0x80000400;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    register u8 *lateTiles asm("r0");
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;

    /* r0 is consumed immediately by this transfer, so agbcc cannot hoist the
     * address into the otherwise-free callee-saved r7 across the DMA loop. */
    lateTiles = sRouletteExtraObjTiles;
    dmaRegs[0] = (u32) lateTiles;
    dmaRegs[1] = (u32) ((void *) 0x0600D000);
    dmaRegs[2] = (u32) 0x80000400;
    dmaRegs[2];
  }
  ;
  {
    volatile u32 *dmaRegs = (volatile u32 *) 0x040000D4;
    while (dmaRegs[2] & 0x80000000)
    {
      ;
    }

  }
  ;
  {
    register int zero asm("r4");
    register u16 *roundOffset asm("r6");
    register u8 *rouletteState asm("r0");
    volatile u16 *scroll;
    *((volatile u16 *) 0x04000008) = 0x1800;
    *((volatile u16 *) 0x0400000A) = 0x1A01;
    scroll = (volatile u16 *) 0x04000012;
    zero = 0;
    *scroll = zero;
    scroll--;
    *scroll = zero;
    scroll += 3;
    *scroll = zero;
    scroll--;
    *scroll = zero;
    /* The target loads this first global into r6 only after the display
     * scroll registers are cleared; binding it here prevents early hoisting. */
    roundOffset = &gMinigameScore;
    *roundOffset = zero;
    rouletteState = &gMinigameNewHighScore;
    *rouletteState = zero;
    DrawRouletteScoreText();
    gRouletteAngularSpeed = 70;
    *((volatile u16 *) 0x04000000) = 0x1300;
    InitMinigameScoreDisplay();
    *((volatile u16 *) 0x04000054) = zero;
    gRouletteMoveProgress = zero;
    gRouletteAngularAcceleration = zero;
    gRouletteValueSequenceIndex = zero;
    gRouletteSelectedItemIndex = zero;
    gRouletteStopRequested = zero;
    gRouletteValueCount = 3;
    {
      register int activeZero asm("r6");
      register int tileZero asm("r4");
      register int angle asm("r3");
      register struct RouletteItem *item asm("r0");
      register int x asm("r2");
      register int y asm("r1");
      register int remaining asm("r5");

      activeZero = 0;
      asm volatile("" : "+r"(activeZero));
      /* agbcc proves the cached r4 is already zero and removes this target write. */
      asm volatile("movs %0, #0" : "=r"(tileZero));
      angle = 7168;
      asm volatile("" : "+r"(angle));
      item = gRouletteItems;
      asm volatile("" : "+r"(item));
      x = 1000;
      asm volatile("" : "+r"(x));
      y = 88;
      asm volatile("" : "+r"(y));
      remaining = 2;
      do
      {
        item->x = x;
        item->y = y;
        item->angle = angle;
        item->scale = tileZero;
        item->active = activeZero;
        item++;
        remaining--;
      } while (remaining >= 0);
    }

    {
      register u16 *rouletteCounter asm("r3");
      register struct RouletteSmallState *topLabel asm("r4");
      register struct RouletteSmallState *middleLabel asm("r5");
      register struct RouletteSmallState *bottomLabel asm("r6");
      register struct RouletteMainState *mainState;

      rouletteCounter = &gRouletteTickPeriod;
      topLabel = &gRouletteTopResult;
      middleLabel = &gRouletteMiddleResult;
      bottomLabel = &gRouletteBottomResult;

      /* agbcc cannot assign these cached addresses to the required high
       * registers from C alone. Each boundary is one move; all loads and all
       * state initialization remain compiler-generated C. */
      {
        register void *sideAnimAddress asm("r0");
        sideAnimAddress = &gRouletteSideAnim;
        asm volatile("mov %0, %1" : "=r"(postLoopTiles) : "r"(sideAnimAddress));
      }
      {
        register void *promptAnimAddress asm("r1");
        promptAnimAddress = &gRoulettePromptAnim;
        asm volatile("mov %0, %1" : "=r"(firstTileBlock) : "r"(promptAnimAddress));
      }
      {
        register void *centerAnimAddress asm("r2");
        centerAnimAddress = &gMinigameUiAnimation;
        asm volatile("mov %0, %1" : "=r"(thirdTileBlock) : "r"(centerAnimAddress));
      }
      mainState = &gMinigameCameraState;
      {
        register void *blendRegisterAddress asm("r0");
        blendRegisterAddress = &gRouletteBlendEva;
        asm volatile("mov %0, %1" : "=r"(secondTileBlock) : "r"(blendRegisterAddress));
      }
      for (i = 0; i < 3; i++)
      {
        gRouletteItemDrawOrder[i] = &gRouletteItems[i];
      }

      *rouletteCounter = 48;
      topLabel->x = 122;
      topLabel->y = 88;
      topLabel->frame = 0;
      middleLabel->x = 122;
      middleLabel->y = 106;
      middleLabel->frame = 0;
      bottomLabel->x = 122;
      bottomLabel->y = 116;
      bottomLabel->frame = 0;
      {
        register u16 *resultOffset asm("r1");
        resultOffset = &gRouletteFrameCounter;
        *resultOffset = 0;
      }
      {
        register u16 *clearPtr asm("r6");
        clearPtr = (u16 *)postLoopTiles;
        clearPtr[0] = 0;
        clearPtr[1] = 0;
      }
      {
        register u16 *clearPtr asm("r0");
        clearPtr = (u16 *)firstTileBlock;
        clearPtr[0] = 0;
        clearPtr[1] = 0;
      }
      {
        register u16 *clearPtr asm("r1");
        clearPtr = (u16 *)thirdTileBlock;
        clearPtr[0] = 0;
        clearPtr[1] = 0;
      }
      {
        register u8 *effectFlag asm("r6");
        effectFlag = &gMinigameMedalHighlight;
        *effectFlag = 0;
      }
      mainState->x = 120;
      mainState->y = 64;
      mainState->scale = 0x200;
      mainState->active = 1;
      gMinigameState = 0;
      gMinigameSubstate = 0;
      {
        register u8 *resultState asm("r6");
        resultState = &gMinigameSequenceState;
        *resultState = 0;
      }
      {
        register u16 *resultTimer asm("r0");
        resultTimer = &gMinigameSequenceTimer;
        *resultTimer = 0;
      }
      {
        register u8 *fadeLevel asm("r1");
        fadeLevel = secondTileBlock;
        *fadeLevel = 0;
      }
      gRouletteBlendEvb = 16;
      *((volatile u16 *) 0x04000050) = 0x240;
      {
        register volatile u16 *alphaRegister asm("r2");
        register s8 *fadePtr asm("r6");
        register int fadeValue asm("r0");

        alphaRegister = (volatile u16 *)0x04000052;
        fadePtr = (s8 *)secondTileBlock;
        fadeValue = 0;
        /* agbcc expands this signed byte read into ldrb/lsl/asr. The original
         * uses the single indexed ldrsb instruction with r6/r0. */
        asm volatile("ldrsb %0, [%1, %0]"
                     : "+r"(fadeValue)
                     : "r"(fadePtr));
        *alphaRegister = (fadeValue << 8) | 16;
      }
    }
    m4aSongNumStartOrChange(708);
    ShuffleRouletteOamTable();
    ShuffleRouletteValuePool();
    {
      register int randomIndex asm("r5");
      randomIndex = 0;
      do
      {
        /*
         * A pure-C assignment was tested and changes 13 ROM bytes: agbcc
         * schedules the destination-address calculation after __modsi3 and
         * colors the loop counter as r4. This tightly scoped call boundary
         * preserves the original r5/r4 call-clobber layout; the loop remains C.
         */
        asm volatile(
            "bl MinigameRandom\n"
            "ldr r4, =gRouletteWinningValues\n"
            "add r4, r5, r4\n"
            "ldr r1, [pc, #172]\n"
            "ldrh r1, [r1, #0]\n"
            "bl __modsi3\n"
            "strb r0, [r4, #0]"
            :
            : "r"(randomIndex)
            : "r0", "r1", "r4", "cc", "memory");
        randomIndex++;
      } while (randomIndex <= 2);
    }

  }
}
