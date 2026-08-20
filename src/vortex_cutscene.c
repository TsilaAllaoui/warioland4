#include "vortex_cutscene.h"
#include "gba.h"
#include "global_data.h"
#include "fixed_point.h"
#include "init_helpers.h"
#include "stage_select.h"
#include "score.h"
#include "stage_results.h"
#include "voice_set.h"
#include "oam.h"
#include "gba/m4a.h"

extern u8 gColorFading;
extern u8 gUnk_3003C34;
extern u8 gStageEntrySequenceStep;
extern u8 gMainTimer;
extern u8 gUnk_3003D6A;
extern u16 gUnk_3003D68;
extern u16 gUnk_3003D6C;
extern u16 gUnk_3003D6E;
extern u16 gUnk_3003D70;
extern u16 gUnk_3003D72;
extern u16 gStageEntryMainSpriteState[];
extern u16 gStageEntryHorizontalScroll[];
extern u16 gUnk_3003D66;
extern u16 gUnk_3003D78[];
extern u16 gUnk_3003D8C;
extern u16 gUnk_3003D8E;
extern u16 gUnk_3003D90;
extern u16 gUnk_3003D92;
extern const s16 sSinCosTable[];
extern const u8 sUnk_867D8DC[];
extern u8 gUnk_3003C4A;
extern s16 gSubGameMode;
extern const u8 sStageEjectionObjPalette[];
extern const u8 sStageEjectionObjTiles[];
extern const u8 sStageEjectionPassagePalettes[];
extern const u8 sStageEjectionPassageExtraPalettes[];
extern const u8 sUnk_867DC9C[];
extern const u8 sUnk_8681C9C[];
extern const u8 sUnk_868669C[];
extern const u8 sUnk_868681C[];
extern const u8 sUnk_868901C[];
extern const u8 sUnk_868981C[];
extern const u8 sUnk_868A01C[];
extern const u16 sStageEjectionWarioOam[];
extern const u16 sUnk_863D9EC[];
extern const u16 sUnk_863D9F4[];
extern const u16 *const sUnk_863A47C[];
extern const struct AnimationFrame sUnk_863DB7C[];
extern const struct AnimationFrame sUnk_863DBE4[];
extern const struct AnimationFrame sUnk_863DCB4[];
extern const struct AnimationFrame sUnk_863DCCC[];
extern const struct AnimationFrame sUnk_863DCDC[];
extern const struct AnimationFrame sUnk_863DCEC[];

u32 UpdateVortexCutscene(void)
{
    if (UpdateVortexCutsceneMainSprite() != 0) {
        if (gUnk_3003C34 == 0) {
            gColorFading = 4;
            *(vu16 *)REG_ADDR_BLDCNT = 0x3FFF;
            return 1;
        }
        gStageEntrySequenceStep++;
        return 1;
    }
    UpdateVortexCutsceneAffine();
    UpdateVortexCutscenePaletteCycle();
    return 0;
}

void InitializeVortexCutsceneResources(void)
{
    volatile u32 *dma;
    u32 status;
    u32 mask;
    u16 zero;

    InitializeVideoMemory();
    InitMinigameScoreDisplay();

    dma = (volatile u32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sUnk_867D8DC;
    dma[1] = 0x05000000;
    dma[2] = 0x80000020;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if ((s32)status < 0) {
        do {
            status = dma[2] & mask;
        } while (status != 0);
    }

    dma = (volatile u32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sStageEjectionObjPalette;
    dma[1] = 0x05000200;
    dma[2] = 0x80000100;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if ((s32)status < 0) {
        do {
            status = dma[2] & mask;
        } while (status != 0);
    }

    dma = (volatile u32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sUnk_867DC9C;
    dma[1] = 0x06000000;
    dma[2] = 0x80002000;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if ((s32)status < 0) {
        do {
            status = dma[2] & mask;
        } while (status != 0);
    }

    dma = (volatile u32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sStageEjectionObjTiles;
    dma[1] = 0x06010000;
    dma[2] = 0x80002000;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if ((s32)status < 0) {
        do {
            status = dma[2] & mask;
        } while (status != 0);
    }

    dma = (volatile u32 *)REG_ADDR_DMA3;
    dma[0] = (u32)sUnk_8681C9C;
    dma[1] = 0x0600E000;
    dma[2] = 0x80000400;
    dma[2];

    REG_BG2CNT = 0x5C82;
    gUnk_3003D68 = 0;
    gUnk_3003D6A = 0;
    zero = 0;
    gStageEntryHorizontalScroll[0] = zero;
    gStageEntryHorizontalScroll[1] = zero;
    gUnk_3003D66 = zero;
    gStageEntrySequenceStep = zero;
    gStageResultsTimer = zero;
    REG_DISPCNT = 0x1401;
    REG_BG0VOFS = zero;
    REG_BG0HOFS = zero;
    REG_BG1VOFS = zero;
    REG_BG1HOFS = zero;
    REG_BG2VOFS = zero;
    REG_BG2HOFS = zero;
    UpdateVortexCutsceneAffine();
    m4aSongNumStart(0x1CB);
    VoiceSetPlay(6);
}

void InitializeVortexCutsceneFromPortal(void)
{
    s32 value;
    u16 *sprite;
    const s16 *sincos;
    u32 angle;
    u16 radius;
    u16 zero;

    InitializeVortexCutsceneResources();
    gUnk_3003D6C = 0xE00;
    gUnk_3003D70 = (angle = 0xE0);
    gUnk_3003D6E = 0x640;
    gUnk_3003D72 = (radius = 100);
    sprite = gStageEntryMainSpriteState;
    zero = 0;
    sprite[0] = zero;
    sprite[1] = zero;
    sincos = sSinCosTable;
    value = sincos[(angle + 0x40) & 0xFFFF];
    value = (value * radius) >> 8;
    sprite[2] = value + 124;
    value = sincos[angle];
    value = (value * radius) >> 8;
    sprite[3] = value + 78;
    sprite[6] = zero;
    value = 0x4000;
    sprite[7] = value;
    sprite[8] = value;
}

void InitializeVortexCutsceneFromPassage(void)
{
  struct VortexSpriteStateCopy
  {
    u32 words[5];
  };
  u32 control;
  u16 *sprite;
  volatile u32 *transfer;
  InitializeVortexCutsceneResources();
  if ((gCurrentPassage == 0) || (gCurrentPassage == 5))
  {
    gUnk_3003C4A = 1;
  }
  else
  {
    gUnk_3003C4A = 0;
  }
  if (gUnk_3003C4A != 0)
  {
    volatile u32 *dma;
    u32 status;
    u32 mask;
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) sUnk_868A01C;
    dma[1] = 0x0600C000;
    dma[2] = 0x80000400;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        status = dma[2] & mask;
      }
      while (status != 0);
    }
    transfer = (volatile u32 *) (0x4000000 + 0xd4);
    transfer[0] = (u32) sUnk_868981C;
    transfer[1] = 0x0600D000;
    control = 0x80000400;
  }
  else
  {
    volatile u32 *dma;
    u32 status;
    u32 mask;
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) sUnk_868901C;
    dma[1] = 0x0600C000;
    dma[2] = 0x80000400;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        status = dma[2] & mask;
      }
      while (status != 0);
    }
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) sUnk_868981C;
    dma[1] = 0x0600D000;
    dma[2] = 0x80000400;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        status = dma[2] & mask;
      }
      while (status != 0);
    }
    transfer = (volatile u32 *) (0x4000000 + 0xd4);
    transfer[0] = (u32) (&sStageEjectionPassageExtraPalettes[(gCurrentPassage - 1) << 5]);
    transfer[1] = 0x050003C0;
    control = 0x80000010;
  }
  {
    volatile u32 *waitDma;
    u32 status;
    u32 mask;
    transfer[2] = control;
    status = transfer[2];
    waitDma = (volatile u32 *) (0x4000000 + 0xd4);
    status = waitDma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        do
        {
          status = waitDma[2] & mask;
        }
        while (status != 0);
      }
      while (0);
    }
  }
  {
    volatile u32 *dma;
    u32 status;
    u32 mask;
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) (&sStageEjectionPassagePalettes[gCurrentPassage << 5]);
    dma[1] = 0x050003A0;
    dma[2] = 0x80000010;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        status = dma[2] & mask;
      }
      while (status != 0);
    }
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) sUnk_868669C;
    dma[1] = 0x05000080;
    dma[2] = 0x800000C0;
    status = dma[2];
    status = dma[2];
    mask = 0x80000000;
    if (((s32) status) < 0)
    {
      do
      {
        status = dma[2] & mask;
      }
      while (status != 0);
    }
    dma = (volatile u32 *) (0x4000000 + 0xd4);
    dma[0] = (u32) sUnk_868681C;
    dma[1] = 0x06008000;
    dma[2] = 0x80001400;
    dma[2];
  }
  *((vu16 *) (0x4000000 + 0x8)) = 0x1808;
  *((vu16 *) (0x4000000 + 0xa)) = 0x1A09;
  {
    register u16 firstZero asm("r1");
    u16 spriteZero;
    firstZero = 0;
    /* Keep the first zero live in r1 until the sprite-state zero is introduced in r2. */
    asm("" : : "r"(firstZero));
    gUnk_3003D6C = firstZero;
    gUnk_3003D70 = firstZero;
    gUnk_3003D6E = firstZero;
    gUnk_3003D72 = firstZero;
    spriteZero = 0;
    sprite = gStageEntryMainSpriteState;
    sprite[0] = spriteZero;
    sprite[1] = spriteZero;
    sprite[2] = 120;
    sprite[3] = 80;
    sprite[6] = spriteZero;
    sprite[7] = 128;
    sprite[8] = 128;
    gStageResultsNewHighScoreIcon.state = firstZero;
    *((struct VortexSpriteStateCopy *) gUnk_3003D78) = *((struct VortexSpriteStateCopy *) sprite);
    gUnk_3003D8C = spriteZero;
    gUnk_3003D90 = spriteZero;
    gUnk_3003D8E = spriteZero;
    gUnk_3003D92 = spriteZero;
  }
}

u32 UpdateVortexCutsceneMainSprite(void)
{
    u8 *modePtr;
    u8 mode;
    u16 *timerPtr;

    mode = gUnk_3003C34;
    modePtr = &gUnk_3003C34;
    if (mode == 0) {
        s32 value;
        s32 radius1;
        s32 radius2;
        u16 timer;
        u16 *sprite;
        const s16 *table;
        u32 angle;
        u32 zero;

        gUnk_3003D6C = (gUnk_3003D6C + 0xFBC) & 0xFFF;
        gUnk_3003D6E -= 17;
        timer = gUnk_3003D66;
        timerPtr = &gUnk_3003D66;
        sprite = gStageEntryMainSpriteState;
        if (timer != 0) {
            sprite[7] -= 159;
            sprite[8] -= 159;
        }
        sprite[6] = (sprite[6] + 2) & 0xFF;
        gUnk_3003D70 = (s16)gUnk_3003D6C >> 4;
        gUnk_3003D72 = (s16)gUnk_3003D6E >> 4;
        zero = 0;
        radius1 = (s16)gUnk_3003D72;
        table = sSinCosTable;
        angle = gUnk_3003D70;
        angle += 0x40;
        value = table[angle + zero];
        value = (value * radius1) >> 8;
        sprite[2] = value + 124;
        zero = 0;
        radius2 = (s16)gUnk_3003D72;
        value = table[gUnk_3003D70 + zero];
        value = (value * radius2) >> 8;
        sprite[3] = value + 78;
    } else {
        s32 value;
        s32 radius1;
        s32 radius2;
        u16 timer;
        u16 *sprite;
        const s16 *table;
        u32 angle;
        u32 zero;

        gUnk_3003D6C = (gUnk_3003D6C + 68) & 0xFFF;
        gUnk_3003D6E += 17;
        timer = gUnk_3003D66;
        timerPtr = &gUnk_3003D66;
        sprite = gStageEntryMainSpriteState;
        if (timer <= 89) {
            sprite[7] += 159;
            sprite[8] += 159;
        }
        sprite[6] = (sprite[6] + 254) & 0xFF;
        gUnk_3003D70 = (s16)gUnk_3003D6C >> 4;
        gUnk_3003D72 = (s16)gUnk_3003D6E >> 4;
        zero = 0;
        radius1 = (s16)gUnk_3003D72;
        table = sSinCosTable;
        angle = gUnk_3003D70;
        angle += 0x40;
        value = table[angle + zero];
        value = (value * radius1) >> 8;
        sprite[2] = value + 120;
        zero = 0;
        radius2 = (s16)gUnk_3003D72;
        value = table[gUnk_3003D70 + zero];
        value = (value * radius2) >> 8;
        sprite[3] = value + 80;
    }

    if (gCollectedKeyzer == 1 && *modePtr == 1) {
        if (*timerPtr > 29) {
            if (UpdateVortexCutsceneKeyzerSprite() != 0) {
                return 1;
            }
        }
    } else if (*timerPtr > 89) {
        return 1;
    }
    gUnk_3003D66++;
    return 0;
}

u32 UpdateVortexCutsceneKeyzerSprite(void)
{
    s32 value;
    s32 radius1;
    s32 radius2;
    u16 timer;
    u32 angle;
    u16 *sprite;
    const s16 *table;
    u32 zero;

    gUnk_3003D8C = (gUnk_3003D8C + 68) & 0xFFF;
    gUnk_3003D8E += 17;
    timer = gUnk_3003D66;
    sprite = gUnk_3003D78;
    if (timer <= 119) {
        sprite[7] += 159;
        sprite[8] += 159;
    }
    sprite[6] = (sprite[6] + 254) & 0xFF;
    gUnk_3003D90 = (s16)gUnk_3003D8C >> 4;
    gUnk_3003D92 = (s16)gUnk_3003D8E >> 4;
    zero = 0;
    radius1 = (s16)gUnk_3003D92;
    table = sSinCosTable;
    angle = gUnk_3003D90;
    angle += 0x40;
    value = table[angle + zero];
    value = (value * radius1) >> 8;
    sprite[2] = value + 120;
    zero = 0;
    radius2 = (s16)gUnk_3003D92;
    value = table[gUnk_3003D90 + zero];
    value = (value * radius2) >> 8;
    sprite[3] = value + 80;
    if (gUnk_3003D66 > 119) {
        return 1;
    }
    return 0;
}


void UpdateVortexCutsceneAffine(void)
{
    const s16 *table;
    s32 *tempAlias;
    s32 value;
    s16 inverse;
    s32 *valueAlias;
    s32 temp;
    s16 *affine;
    if (gUnk_3003C34 == 0)
    {
        gUnk_3003D68 = (gUnk_3003D68 + 5) & 0xFF;
    }
    else
    {
        gUnk_3003D68 = (gUnk_3003D68 + 251) & 0xFF;
    }
    table = sSinCosTable;
    {
        s32 index;
        index = gUnk_3003D68;
        index += 0x40;
        value = table[index];
    }
    inverse = FixedInverse(0x200);
    value = FixedMul(value, inverse);
    affine = (s16 *) gStageEntryHorizontalScroll;
    affine[2] = value;
    value = table[gUnk_3003D68];
    valueAlias = &value;
    inverse = FixedInverse(0x200);
    affine[3] = FixedMul(value, inverse);
    value = (s16) (-table[gUnk_3003D68]);
    inverse = FixedInverse(0x200);
    affine[4] = FixedMul(value, inverse);
    {
        s32 index;
        index = gUnk_3003D68;
        index += 0x40;
        value = table[index];
    }
    inverse = FixedInverse(0x200);
    affine[5] = FixedMul(value, inverse);
    temp = (128 - affine[0]) << 8;
    value = affine[2];
    temp -= ((value << 4) - value) << 3;
    value = affine[3];
    temp -= ((value << 2) + value) << 4;
    /* Keep aliases alive so agbcc preserves the original value lifetimes. */
    tempAlias = &temp;
    *((s32 *) (affine + 6)) = *tempAlias;
    temp = (128 - affine[1]) << 8;
    value = affine[4];
    temp -= ((value << 4) - value) << 3;
    value = affine[5];
    temp -= (((*valueAlias) << 2) + value) << 4;
    *((s32 *) (affine + 8)) = *tempAlias;
}



void UpdateVortexCutscenePaletteCycle(void)
{
    vu32 *dma;

    if (gMainTimer % 5 == 0) {
        gUnk_3003D6A++;
        if (gUnk_3003D6A > 14) {
            gUnk_3003D6A = 0;
        }
        dma = (vu32 *)REG_ADDR_DMA3;
        dma[0] = (u32)(sUnk_867D8DC + (gUnk_3003D6A << 6));
        dma[1] = 0x05000000;
        dma[2] = 0x80000020;
        dma[2];
    }
}

void ApplyVortexCutsceneAffineRegisters(void)
{
    volatile u16 *finalDestination;
    volatile u16 *destination;
    u16 *source;
    s32 value;
    u16 *ySource;
    s32 upperMask;
    do {
        destination = (volatile u16 *) 0x04000020;
        /* agbcc otherwise reuses the later mask pseudo-register for the first halfword copy.
         * This zero-byte boundary only splits that lifetime and emits no instruction. */
        AGBCC_SPLIT_REGISTER_LIFETIME(upperMask);
        source = gStageEntryHorizontalScroll;
        *destination = source[2];
        destination++;
        *destination = source[3];
        destination++;
        *destination = source[4];
        destination++;
        *destination = source[5];
        destination++;
        value = *((s32 *) (source + 6));
        *destination = value;
        destination++;
        upperMask = 0x0FFF0000;
        value &= upperMask;
    } while (0);
    value >>= 16;
    *destination = value;
    destination++;
    ySource = source;
    value = *((s32 *) (ySource + 8));
    *destination = value;
    destination++;
    value &= upperMask;
    value >>= 16;
    finalDestination = destination;
    *finalDestination = value;
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_vortex_cutscene_RenderVortexCutsceneOam.s");
#else
/* Best current WIP C for RenderVortexCutsceneOam: 4630 / 106800 (95.66%),
 * exact size 0x8e0. Independently compiled and scored in real context; hard
 * register lifetimes were audited before promotion. See decomp_work/updates. */
void RenderVortexCutsceneOam(void)
{
  const struct AnimationFrame *animation;
  const u16 *frame;
  const s16 *table;
  u16 *mainState;
  OamData *oam;
  register u16 *rawOut asm("r6");
  register s32 drawn asm("r8");
  int new_var21;
  int new_var23;
  OamData *new_var9;
  register s32 next asm("r9");
  int new_var18;
  long long new_var17;
  int new_var10;
  const struct AnimationFrame *new_var11;
  s32 new_var8;
  short new_var7;
  s32 count;
  int new_var13;
  s32 i;
  s16 new_var31;
  s32 yOffset;
  int new_var15;
  int new_var5;
  u8 *allIndexPtr;
  s32 value;
  unsigned short new_var35;
  s32 xOffset;
  unsigned long long new_var22;
  u16 new_var29;
  short new_var6;
  u16 *new_var27;
  int new_var20;
  u16 *affine1Ptr;
  const u16 new_var12;
  union VortexLocalStorage
  {
    u16 a[4];
    volatile s32 nextI;
  } localStorage;
  u16 *affine2Ptr;
  u16 *new_var26;
  u8 new_var25;
  u16 *affine3Ptr;
  long long new_var19;
  int new_var14;
  s32 mask1FF;
  int new_var30;
  int new_var2;
  s32 maskF3;
  u32 attr0;
  u16 attr1;
  register u8 remainingHearts asm("r3");
  u16 attr2;
  drawn = 0;
  next = gOamSlotsUsed;
  {
    register s32 rawOffset asm("r0");
    rawOffset = next << 3;
    rawOut = (u16 *) (((u8 *) gOamBuffer) + rawOffset);
  }
  table = sSinCosTable;
  new_var30 = 128;
  if (((u16) (gUnk_3003D66 - 1)) <= 88)
  {
    frame = sStageEjectionWarioOam;
    next += *(frame++);
    if (next > new_var30)
    {
      return;
    }
    mainState = gStageEntryMainSpriteState;
    affine1Ptr = &localStorage.a[1];
    affine2Ptr = &localStorage.a[2];
    affine3Ptr = &localStorage.a[3];
    mask1FF = 0x1FF;
    maskF3 = (u8) (-13);
    if (drawn < next)
    {
      OamData *drawOam;
      drawn = next;
      drawOam = gOamBuffer;
      do
      {
        attr0 = *(frame++);
        *(rawOut++) = attr0;
        drawOam->split.y = (attr0 + ((u8) mainState[3])) - 32;
        ((u8 *) drawOam)[1] |= 3;
        attr1 = *(frame++);
        *(rawOut++) = attr1;
        value = (mainState[2] + attr1) - 32;
        value &= mask1FF;
        asm volatile("" : "+r"(value));
        {
          s32 firstOldAttr = drawOam->all.attr1;
          s32 firstFullMask = 0xFFFFFE00;
          asm volatile("" : "+r"(firstOldAttr));
          drawOam->all.attr1 = (firstOldAttr & firstFullMask) | value;
        }
        ((u8 *) drawOam)[3] &= (u8) (-15);
        *rawOut = *(frame++);
        new_var14 = 13;
        ((u8 *) drawOam)[5] &= (u8) (-new_var14);
        rawOut += 2;
        drawOam++;
        drawn--;
      }
      while (drawn != 0);
      drawn = next;
    }
    {
      s32 anglePlus = mainState[6] + 0x40;
      localStorage.a[0] = FixedMul(table[anglePlus], (s16) FixedInverse(mainState[7] >> 4));
    }
    new_var13 = 0x40;
    *affine1Ptr = FixedMul(table[mainState[6]], (s16) FixedInverse(mainState[7] >> 4));
    new_var35 = table[mainState[6]];
    new_var35 = (u16) (-new_var35);
    *affine2Ptr = FixedMul((s16) new_var35, (s16) FixedInverse(mainState[8] >> 4));
    new_var29 = FixedMul(table[new_var10 = mainState[6] + new_var13], (s16) FixedInverse(mainState[8] >> 4));
    *affine3Ptr = new_var29;
    gOamBuffer[0].all.affineParam = localStorage.a[0];
    gOamBuffer[1].all.affineParam = *affine1Ptr;
    gOamBuffer[2].all.affineParam = *affine2Ptr;
    gOamBuffer[3].all.affineParam = new_var29;
  }
  if (((((u16) (gUnk_3003D66 - 30)) <= 89) && (gCollectedKeyzer == 1)) && (gUnk_3003C34 == 1))
  {
    register u16 keyAffine3Value asm("r0");
    frame = sUnk_863D9EC;
    next += *(frame++);
    {
      register s32 nextCheck asm("r7") = next;
      if (nextCheck > 128)
      {
        return;
      }
    }
    ;
    affine1Ptr = &localStorage.a[1];
    affine2Ptr = &localStorage.a[2];
    affine3Ptr = &localStorage.a[3];
    mask1FF = 0x1FF;
    do
    {
      maskF3 = -13;
      if (drawn < next)
      {
        do
        {
          OamData *keyOam = &gOamBuffer[drawn];
          attr0 = *(frame++);
          *(rawOut++) = attr0;
          keyOam->split.y = (attr0 + ((u8) gUnk_3003D78[3])) - 32;
          ((u8 *) keyOam)[1] |= 3;
          attr1 = *(frame++);
          *(rawOut++) = attr1;
          value = gUnk_3003D78[2] + attr1;
          value = value - 32;
          value &= mask1FF;
          asm volatile("" : "+r"(value));
          {
            register s32 keyOldAttr asm("r1") = keyOam->all.attr1;
            s32 keyFullMask = 0xFFFFFE00;
            keyOam->all.attr1 = (keyOldAttr & keyFullMask) | value;
          }
          new_var13 = 15;
          ((u8 *) keyOam)[3] = (((u8 *) keyOam)[3] & ((u8) (-new_var13))) | 2;
          attr2 = (*rawOut = *(frame++));
          ((u8 *) keyOam)[5] &= maskF3;
          rawOut += 2;
          {
            register s32 keyPlusOne asm("r0") = 1;
            asm volatile("" : : "r"(keyPlusOne));
            drawn += keyPlusOne;
          }
        }
        while (drawn < next);
      }
      {
        s32 keyAnglePlus = gUnk_3003D78[6] + 0x40;
        localStorage.a[0] = FixedMul(table[keyAnglePlus], (s16) FixedInverse(gUnk_3003D78[7] >> 4));
      }
      *affine1Ptr = FixedMul(table[gUnk_3003D78[6]], (s16) FixedInverse(gUnk_3003D78[7] >> 4));
      new_var35 = table[gUnk_3003D78[6]];
      *affine2Ptr = FixedMul((s16) (-new_var35), (s16) FixedInverse((gUnk_3003D78[8] >> 2) >> 2));
    }
    while (0);
    new_var15 = gUnk_3003D78[6] + 0x40;
    keyAffine3Value = FixedMul(table[new_var15], (s16) FixedInverse(gUnk_3003D78[8] >> 4));
    *affine3Ptr = keyAffine3Value;
    gOamBuffer[4].all.affineParam = localStorage.a[0];
    gOamBuffer[5].all.affineParam = *affine1Ptr;
    gOamBuffer[6].all.affineParam = *affine2Ptr;
    gOamBuffer[7].all.affineParam = keyAffine3Value;
  }
  if ((gSubGameMode == 18) && (gStageEntrySequenceStep > 1))
  {
    mask1FF = 0x1FF;
    maskF3 = (u8) (-13);
    if ((gStageEntrySequenceStep == 3) && (gStageResultsAnimationFinished == 0))
    {
      register const u16 * const *frameTable asm("r1");
      register struct StageResultsTreasure *treasureLookup asm("r4");
      register struct StageResultsTreasure *treasureBase asm("sl");
      frameTable = sUnk_863A47C;
      treasureLookup = &gStageResultsTreasure;
      frame = frameTable[treasureLookup->state];
      treasureBase = treasureLookup;
      next += *(frame++);
      affine1Ptr = &localStorage.a[1];
      affine2Ptr = &localStorage.a[2];
      affine3Ptr = &localStorage.a[3];
      while (drawn < next)
      {
        register s32 treasureAttr1 asm("r2");
        attr0 = *(frame++);
        *(rawOut++) = attr0;
        oam = &gOamBuffer[drawn];
        oam->split.y = (attr0 + ((u8) gStageResultsTreasure.y)) - 16;
        if (gStageResultsTreasure.state == 4)
        {
          oam->split.y = (attr0 + gStageResultsTreasure.y) - 32;
          do
          {
          }
          while (0);
        }
        ((u8 *) oam)[1] |= 3;
        treasureAttr1 = *(frame++);
        *(rawOut++) = treasureAttr1;
        xOffset = (treasureAttr1 + ((s16) treasureBase->x)) - 16;
        xOffset &= mask1FF;
        value = xOffset;
        asm volatile("" : "+r"(value));
        {
          s32 treasureOldAttr = oam->all.attr1;
          register s32 treasureFullMask asm("r4") = 0xFFFFFE00;
          treasureOldAttr &= treasureFullMask;
          treasureOldAttr |= value;
          oam->all.attr1 = treasureOldAttr;
          if (treasureBase->state == 4)
          {
            value = treasureAttr1 + ((s16) treasureBase->x);
            value -= 32;
            value &= 0xFF;
            treasureOldAttr &= treasureFullMask;
            value &= mask1FF;
            treasureOldAttr |= value;
            oam->all.attr1 = treasureOldAttr;
          }
        }
        new_var13 = 15;
        ((u8 *) oam)[3] &= (u8) (-new_var13);
        ;
        *rawOut = *(frame++);
        new_var13 = 13;
        ((u8 *) oam)[5] &= (u8) (-new_var13);
        rawOut += 2;
        drawn++;
      }

      {
        register const s16 *tableCos asm("r0") = sSinCosTable;
        register s32 cos40 asm("r5") = tableCos[0x40];
        register u16 affine3Value asm("r0");
        const s16 *pairPointer;
        s16 zero1;
        u16 neg0;
        localStorage.a[0] = FixedMul(cos40, (s16) FixedInverse((s16) gStageResultsTreasure.scale));
        pairPointer = sSinCosTable;
        zero1 = pairPointer[0];
        *affine1Ptr = FixedMul(zero1, (s16) FixedInverse((s16) gStageResultsTreasure.scale));
        neg0 = pairPointer[0];
        asm volatile("" : : "r"(treasureBase));
        neg0 = (u16) (-neg0);
        pairPointer = (const s16 *) &gStageResultsTreasure;
        *affine2Ptr = FixedMul((s16) neg0, (unsigned long) ((s16) FixedInverse((s16) ((struct StageResultsTreasure *) pairPointer)->scale)));
        asm volatile("" : "+r"(pairPointer));
        affine3Value = FixedMul(cos40, (s16) FixedInverse((s16) ((struct StageResultsTreasure *) pairPointer)->scale));
        *affine3Ptr = affine3Value;
        gOamBuffer[0].all.affineParam = localStorage.a[0];
        gOamBuffer[1].all.affineParam = *affine1Ptr;
        gOamBuffer[2].all.affineParam = *affine2Ptr;
        gOamBuffer[3].all.affineParam = affine3Value;
      }
    }
    new_var2 = gStageResultsTreasureIcons[4].state != 0;
    if (gStageResultsAllJewelPieces == 1)
    {
      do
      {
        register u16 icon0X asm("r1") = gStageResultsTreasureIcons[0].x + 1;
        gStageResultsTreasureIcons[0].x = icon0X;
        animation = sUnk_863DB7C;
        if (animation[gStageResultsTreasureIcons[0].y].time < icon0X)
        {
          gStageResultsTreasureIcons[0].x = 1;
          gStageResultsTreasureIcons[0].y++;
          if (animation[gStageResultsTreasureIcons[0].y].time == 0)
          {
            gStageResultsTreasureIcons[0].y = 0;
          }
        }
        frame = animation[gStageResultsTreasureIcons[0].y].oam;
      }
      while (0);
      next += *(frame++);
      if (drawn < next)
      {
        OamData *allOamBase = gOamBuffer;
        register s32 localMask13 asm("sl") = -13;
        u8 *allIndexPtr2 = &gUnk_3003C4A;
        OamData *allOam = &allOamBase[drawn];
        register s32 allMask1FF asm("r4") = 0x1FF;
        asm volatile("" : "+r"(allIndexPtr2), "+r"(allMask1FF));
        {
          register s32 allCountInit asm("r0") = next;
          register s32 allDrawCopy asm("r1") = drawn;
          asm volatile("" : "+r"(allCountInit), "+r"(allDrawCopy));
          allCountInit -= allDrawCopy;
          asm volatile("" : "+r"(allCountInit));
          drawn = allCountInit;
        }
        do
        {
          attr0 = *(frame++);
          *(rawOut++) = attr0;
          allOam->split.y = attr0 + 112;
          attr1 = *(frame++);
          *(rawOut++) = attr1;
          new_var21 = 2;
          value = sStageResultsTreasureXPositions[*allIndexPtr2];
          value = attr1 + value;
          value &= allMask1FF;
          asm volatile("" : "+r"(value));
          {
            register s32 oldAttr asm("r1") = allOam->all.attr1;
            s32 fullMask = 0xFFFFFE00;
            allOam->all.attr1 = (oldAttr & fullMask) | value;
          }
          *rawOut = (attr2 = *(frame++));
          ((u8 *) allOam)[5] &= localMask13;
          rawOut += new_var21;
          allOam++;
          drawn--;
        }
        while (drawn != 0);
        drawn = next;
      }
    }
    {
      for (i = 0; i <= 3;)
      {
        s32 nextI;
        u8 iconState;
        iconState = gStageResultsTreasureIcons[i].state;
        nextI = i + 1;
        asm volatile("" : "+r"(nextI));
        if (iconState != 0)
        {
          frame = sUnk_863A47C[i];
          next += *(frame++);
          if (drawn < next)
          {
            register u8 *iconIndexPtr asm("sl") = &gUnk_3003C4A;
            OamData *iconOam;
            OamData *iconOamBase;
            s32 iconMask13 = -13;
            s32 iconMask1FF;
            iconOamBase = gOamBuffer;
            iconOam = &iconOamBase[drawn];
            iconMask1FF = 0x1FF;
            asm volatile("" : : "r"(iconMask1FF));
            drawn = next - drawn;
            {
              register s32 loopCheck asm("r0");
              do
              {
                attr0 = *(frame++);
                *(rawOut++) = attr0;
                iconOam->split.y = attr0 + 112;
                attr1 = *(frame++);
                *(rawOut++) = attr1;
                value = sStageResultsTreasureXPositions[*iconIndexPtr];
                value = attr1 + value;
                {
                  s32 iconFullMask = 0xFFFFFE00;
                  xOffset = value & iconMask1FF;
                  new_var20 = iconOam->all.attr1;
                  iconOam->all.attr1 = xOffset | (new_var20 & iconFullMask);
                }
                *rawOut = *(frame++);
                asm volatile("" : "+r"(xOffset));
                ((u8 *) iconOam)[5] &= iconMask13;
                rawOut += 2;
                iconOam++;
                {
                  register s32 iconMinusOne asm("r2") = -1;
                  asm volatile("" : : "r"(iconMinusOne));
                  drawn += iconMinusOne;
                }
                loopCheck = drawn;
                asm volatile("" : : "r"(loopCheck));
              }
              while (loopCheck != 0);
            }
            drawn = next;
          }
        }
        i = nextI;
      }

    }
    {
      register const u16 *f5 asm("r5");
      if (gStageResultsTreasureIcons[4].state != 0)
      {
        register u16 icon4X asm("r1") = gStageResultsTreasureIcons[4].x + 1;
        gStageResultsTreasureIcons[4].x = icon4X;
        {
          const struct AnimationFrame *icon4Anim = sUnk_863DBE4;
          asm volatile("" : : "r"(icon4Anim));
          if (icon4Anim[gStageResultsTreasureIcons[4].y].time < icon4X)
          {
            gStageResultsTreasureIcons[4].x = 1;
            gStageResultsTreasureIcons[4].y++;
            if (icon4Anim[gStageResultsTreasureIcons[4].y].time == 0)
            {
              gStageResultsTreasureIcons[4].y = 0;
            }
          }
          f5 = icon4Anim[gStageResultsTreasureIcons[4].y].oam;
          next += *(f5++);
          if (drawn < next)
          {
            s32 icon4FullMask;
            s32 icon4Mask1FF;
            s32 icon4Mask13;
            OamData *icon4OamBase;
            icon4OamBase = gOamBuffer;
            icon4Mask1FF = 0x1FF;
            asm volatile("" : : "r"(icon4Mask1FF));
            icon4FullMask = 0xFFFFFE00;
            icon4Mask13 = -13;
            oam = &icon4OamBase[drawn];
            {
              register s32 icon4CountInit asm("r0");
              icon4CountInit = next;
              icon4CountInit -= drawn;
              count = icon4CountInit;
            }
            do
            {
              attr0 = *(f5++);
              *(rawOut++) = attr0;
              oam->split.y = attr0;
              oam->split.y += 112;
              new_var27 = &oam->all.attr1;
              attr1 = *(f5++);
              *(rawOut++) = attr1;
              value = attr1 + 144;
              new_var26 = new_var27;
              oam->all.attr1 = (value & icon4Mask1FF) | ((*new_var26) & icon4FullMask);
              *rawOut = *(f5++);
              ((u8 *) oam)[5] &= icon4Mask13;
              rawOut += 2;
              oam++;
              count--;
            }
            while (count != 0);
            drawn = next;
          }
        }
      }
      if ((gStageEntrySequenceStep > 4) && (gStageResultsScoreRank != 0))
      {
        register const struct AnimationFrame *rankAnim asm("r0");
        if (gStageResultsScoreRank == 1)
        {
          rankAnim = sUnk_863DCCC;
        }
        else
          if (gStageResultsScoreRank == 2)
        {
          rankAnim = sUnk_863DCDC;
        }
        else
        {
          new_var11 = sUnk_863DCEC;
          rankAnim = new_var11;
        }
        f5 = rankAnim[0].oam;
        next += *(f5++);
        {
          register s32 rankNextCheck asm("sl") = next;
          asm volatile("" : : "r"(rankNextCheck));
          if (rankNextCheck > 128)
          {
            return;
          }
        }
        if (drawn < next)
        {
          OamData *rankBase = gOamBuffer;
          OamData *rankOam;
          s32 rankMask1FF = 0x1FF;
          s32 rankFullMask = 0xFFFFFE00;
          s32 rankMask13 = -13;
          asm volatile("" : "+r"(rankFullMask), "+r"(rankMask1FF), "+r"(rankMask13));
          rankOam = &rankBase[drawn];
          drawn = next - drawn;
          do
          {
            attr0 = *(f5++);
            *(rawOut++) = attr0;
            rankOam->split.y = attr0 + 64;
            attr1 = *(f5++);
            *(rawOut++) = attr1;
            value = attr1 + 80;
            rankOam->all.attr1 = (value & rankMask1FF) | (rankOam->all.attr1 & rankFullMask);
            ;
            *rawOut = *(f5++);
            ((u8 *) rankOam)[5] = ((u8 *) rankOam)[5] & rankMask13;
            rawOut += 2;
            rankOam++;
            drawn--;
          }
          while (drawn != 0);
          drawn = next;
        }
      }
    }
    if (gStageResultsNewHighScoreIcon.state != 0)
    {
      register u16 highX asm("r1") = gStageResultsNewHighScoreIcon.x + 1;
      gStageResultsNewHighScoreIcon.x = highX;
      {
        register const struct AnimationFrame *highAnim asm("r2") = sUnk_863DCB4;
        if (highAnim[gStageResultsNewHighScoreIcon.y].time < highX)
        {
          gStageResultsNewHighScoreIcon.x = 1;
          gStageResultsNewHighScoreIcon.y++;
          if (highAnim[gStageResultsNewHighScoreIcon.y].time == 0)
          {
            gStageResultsNewHighScoreIcon.y = 0;
          }
        }
        frame = highAnim[gStageResultsNewHighScoreIcon.y].oam;
        next += *(frame++);
        if (drawn < next)
        {
          OamData *highBase = gOamBuffer;
          s32 highMask1FF = 0x1FF;
          s32 highFullMask = 0xFFFFFE00;
          register s32 highMask13 asm("r4") = -13;
          asm volatile("" : "+r"(highFullMask), "+r"(highMask1FF), "+r"(highMask13));
          {
            register s32 drawIndex asm("r2") = drawn;
            oam = &highBase[drawIndex];
            {
              register s32 highCountInit asm("r0") = next - drawIndex;
              asm volatile("" : : "r"(highCountInit));
              drawn = highCountInit;
            }
          }
          do
          {
            attr0 = *(frame++);
            new_var8 = mask1FF;
            *(rawOut++) = attr0;
            oam->split.y = attr0 + 56;
            {
              register s32 highAttr1 asm("r2") = *(frame++);
              *(rawOut++) = highAttr1;
              value = highAttr1;
              value = value + 120;
              new_var7 = 5;
              value &= highMask1FF;
              asm volatile("" : "+r"(value));
              {
                s32 oldAttr = oam->all.attr1;
                oam->all.attr1 = (oldAttr & highFullMask) | value;
              }
            }
            attr2 = (*rawOut = *(frame++));
            new_var9 = oam;
            ((u8 *) new_var9)[new_var7] &= highMask13;
            rawOut += 2;
            oam++;
            drawn--;
          }
          while (drawn != 0);
          drawn = next;
        }
      }
    }
    new_var18 = 5;
    for (i = 0; (remainingHearts = gStageResultsRemainingHearts), i < remainingHearts;)
    {
      s32 nextI;
      frame = sUnk_863D9F4;
      next += *(frame++);
      nextI = i + 1;
      asm volatile("" : "+r"(nextI));
      if (drawn < next)
      {
        OamData *heartOam;
        register s32 heartX asm("r1");
        s32 heartMask13;
        s32 heartMask1FF;
        heartX = (i << 3) + 88;
        heartMask13 = -13;
        heartOam = &gOamBuffer[drawn];
        heartMask1FF = 0x1FF;
        asm volatile("" : "+r"(heartMask13), "+r"(heartMask1FF));
        {
          register s32 heartCountInit asm("r2");
          heartCountInit = next;
          asm volatile("" : "+r"(heartCountInit));
          heartCountInit -= drawn;
          asm volatile("" : : "r"(heartCountInit));
          count = heartCountInit;
        }
        do
        {
          attr0 = *(frame++);
          *(rawOut++) = attr0;
          heartOam->split.y = attr0 + 88;
          {
            register s32 heartAttr1 asm("r2") = *(frame++);
            new_var19 = 0xFE00;
            *(rawOut++) = heartAttr1;
            do
            {
              value = heartAttr1 + heartX;
              heartOam->all.attr1 = (value & heartMask1FF) | (heartOam->all.attr1 & new_var19);
              attr2 = (*rawOut = *(frame++));
              ((u8 *) heartOam)[5] &= heartMask13;
              new_var25 = 2;
            }
            while (0);
          }
          rawOut += new_var25;
          heartOam++;
          count--;
        }
        while (count != 0);
        drawn = next;
      }
      i = nextI;
    }

  }
  gOamSlotsUsed = next;
}
#endif
