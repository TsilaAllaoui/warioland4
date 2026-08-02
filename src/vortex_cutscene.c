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
void RenderVortexCutsceneOam(void)
{
    const struct AnimationFrame *animation;
    const u16 *frame;
    const s16 *table;
    OamData *oam;
    u16 *rawOut;
    s32 drawn;
    s32 next;
    s32 count;
    s32 i;
    s32 value;
    s32 yOffset;
    s32 xOffset;
    u16 affine[4];
    u16 *affine1Ptr;
    u16 *affine2Ptr;
    u16 *affine3Ptr;
    u16 attr0;
    u16 attr1;
    u16 attr2;

    drawn = 0;
    next = gOamSlotsUsed;
    rawOut = (u16 *)&gOamBuffer[next];
    table = sSinCosTable;

    if ((u16)(gUnk_3003D66 - 1) <= 88) {
        frame = sStageEjectionWarioOam;
        next += *frame++;
        if (next > MAX_OAM_SLOTS) {
            return;
        }
        oam = gOamBuffer;
        while (drawn < next) {
            attr0 = *frame++;
            *rawOut++ = attr0;
            oam->split.y = attr0 + (u8)gStageEntryMainSpriteState[3] - 32;
            ((u8 *)oam)[1] |= 3;
            attr1 = *frame++;
            *rawOut++ = attr1;
            value = attr1 + gStageEntryMainSpriteState[2] - 32;
            oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
            ((u8 *)oam)[3] &= 0xF1;
            attr2 = *frame++;
            *rawOut = attr2;
            ((u8 *)oam)[5] &= 0xF3;
            rawOut += 2;
            oam++;
            drawn++;
        }
        affine1Ptr = &affine[1];
        affine2Ptr = &affine[2];
        affine3Ptr = &affine[3];
        affine[0] = FixedMul(table[gStageEntryMainSpriteState[6] + 0x40],
                             (s16)FixedInverse(gStageEntryMainSpriteState[7] >> 4));
        *affine1Ptr = FixedMul(table[gStageEntryMainSpriteState[6]],
                             (s16)FixedInverse(gStageEntryMainSpriteState[7] >> 4));
        *affine2Ptr = FixedMul(-table[gStageEntryMainSpriteState[6]],
                             (s16)FixedInverse(gStageEntryMainSpriteState[8] >> 4));
        *affine3Ptr = FixedMul(table[gStageEntryMainSpriteState[6] + 0x40],
                             (s16)FixedInverse(gStageEntryMainSpriteState[8] >> 4));
        gOamBuffer[0].all.affineParam = affine[0];
        gOamBuffer[1].all.affineParam = *affine1Ptr;
        gOamBuffer[2].all.affineParam = *affine2Ptr;
        gOamBuffer[3].all.affineParam = *affine3Ptr;
    }

    if ((u16)(gUnk_3003D66 - 30) <= 89 && gCollectedKeyzer == 1 && gUnk_3003C34 == 1) {
        frame = sUnk_863D9EC;
        next += *frame++;
        if (next > MAX_OAM_SLOTS) {
            return;
        }
        oam = &gOamBuffer[drawn];
        while (drawn < next) {
            attr0 = *frame++;
            *rawOut++ = attr0;
            oam->split.y = attr0 + (u8)gUnk_3003D78[3] - 32;
            ((u8 *)oam)[1] |= 3;
            attr1 = *frame++;
            *rawOut++ = attr1;
            value = attr1 + gUnk_3003D78[2] - 32;
            oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
            ((u8 *)oam)[3] = (((u8 *)oam)[3] & 0xF1) | 2;
            attr2 = *frame++;
            *rawOut = attr2;
            ((u8 *)oam)[5] &= 0xF3;
            rawOut += 2;
            oam++;
            drawn++;
        }
        affine1Ptr = &affine[1];
        affine2Ptr = &affine[2];
        affine3Ptr = &affine[3];
        affine[0] = FixedMul(table[gUnk_3003D78[6] + 0x40],
                             (s16)FixedInverse(gUnk_3003D78[7] >> 4));
        *affine1Ptr = FixedMul(table[gUnk_3003D78[6]],
                             (s16)FixedInverse(gUnk_3003D78[7] >> 4));
        *affine2Ptr = FixedMul(-table[gUnk_3003D78[6]],
                             (s16)FixedInverse(gUnk_3003D78[8] >> 4));
        *affine3Ptr = FixedMul(table[gUnk_3003D78[6] + 0x40],
                             (s16)FixedInverse(gUnk_3003D78[8] >> 4));
        gOamBuffer[4].all.affineParam = affine[0];
        gOamBuffer[5].all.affineParam = *affine1Ptr;
        gOamBuffer[6].all.affineParam = *affine2Ptr;
        gOamBuffer[7].all.affineParam = *affine3Ptr;
    }

    if (gSubGameMode == 18 && gStageEntrySequenceStep > 1) {
        if (gStageEntrySequenceStep == 3 && gStageResultsAnimationFinished == 0) {
            frame = sUnk_863A47C[gStageResultsTreasure.state];
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            while (drawn < next) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                yOffset = gStageResultsTreasure.y - 16;
                if (gStageResultsTreasure.state == 4) {
                    yOffset = gStageResultsTreasure.y - 32;
                }
                oam->split.y = attr0 + yOffset;
                ((u8 *)oam)[1] |= 3;
                attr1 = *frame++;
                *rawOut++ = attr1;
                xOffset = gStageResultsTreasure.x - 16;
                if (gStageResultsTreasure.state == 4) {
                    xOffset = (u8)(gStageResultsTreasure.x + attr1 - 32) - attr1;
                }
                value = attr1 + xOffset;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                ((u8 *)oam)[3] &= 0xF1;
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                drawn++;
            }
            affine1Ptr = &affine[1];
            affine2Ptr = &affine[2];
            affine3Ptr = &affine[3];
            affine[0] = FixedMul(table[0x40], (s16)FixedInverse((s16)gStageResultsTreasure.scale));
            *affine1Ptr = FixedMul(table[0], (s16)FixedInverse((s16)gStageResultsTreasure.scale));
            *affine2Ptr = FixedMul(-table[0], (s16)FixedInverse((s16)gStageResultsTreasure.scale));
            *affine3Ptr = FixedMul(table[0x40], (s16)FixedInverse((s16)gStageResultsTreasure.scale));
            gOamBuffer[0].all.affineParam = affine[0];
            gOamBuffer[1].all.affineParam = *affine1Ptr;
            gOamBuffer[2].all.affineParam = *affine2Ptr;
            gOamBuffer[3].all.affineParam = *affine3Ptr;
        }

        if (gStageResultsAllJewelPieces == 1) {
            gStageResultsTreasureIcons[0].x++;
            animation = sUnk_863DB7C;
            if (animation[gStageResultsTreasureIcons[0].y].time < gStageResultsTreasureIcons[0].x) {
                gStageResultsTreasureIcons[0].x = 1;
                gStageResultsTreasureIcons[0].y++;
                if (animation[gStageResultsTreasureIcons[0].y].time == 0) {
                    gStageResultsTreasureIcons[0].y = 0;
                }
            }
            frame = animation[gStageResultsTreasureIcons[0].y].oam;
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            count = next - drawn;
            while (count != 0) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                oam->split.y = attr0 + 112;
                attr1 = *frame++;
                *rawOut++ = attr1;
                value = attr1 + sStageResultsTreasureXPositions[gUnk_3003C4A];
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                count--;
            }
            drawn = next;
        }

        for (i = 0; i <= 3; i++) {
            if (gStageResultsTreasureIcons[i].state != 0) {
                frame = sUnk_863A47C[i];
                next += *frame++;
                if (next > MAX_OAM_SLOTS) {
                    return;
                }
                oam = &gOamBuffer[drawn];
                count = next - drawn;
                while (count != 0) {
                    attr0 = *frame++;
                    *rawOut++ = attr0;
                    oam->split.y = attr0 + 112;
                    attr1 = *frame++;
                    *rawOut++ = attr1;
                    value = attr1 + sStageResultsTreasureXPositions[gUnk_3003C4A];
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                    attr2 = *frame++;
                    *rawOut = attr2;
                    ((u8 *)oam)[5] &= 0xF3;
                    rawOut += 2;
                    oam++;
                    count--;
                }
                drawn = next;
            }
        }

        if (gStageResultsTreasureIcons[4].state != 0) {
            gStageResultsTreasureIcons[4].x++;
            animation = sUnk_863DBE4;
            if (animation[gStageResultsTreasureIcons[4].y].time < gStageResultsTreasureIcons[4].x) {
                gStageResultsTreasureIcons[4].x = 1;
                gStageResultsTreasureIcons[4].y++;
                if (animation[gStageResultsTreasureIcons[4].y].time == 0) {
                    gStageResultsTreasureIcons[4].y = 0;
                }
            }
            frame = animation[gStageResultsTreasureIcons[4].y].oam;
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            count = next - drawn;
            while (count != 0) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                oam->split.y = attr0 + 112;
                attr1 = *frame++;
                *rawOut++ = attr1;
                value = attr1 + 144;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                count--;
            }
            drawn = next;
        }

        if (gStageEntrySequenceStep > 4 && gStageResultsScoreRank != 0) {
            if (gStageResultsScoreRank == 1) {
                animation = sUnk_863DCCC;
            } else if (gStageResultsScoreRank == 2) {
                animation = sUnk_863DCDC;
            } else {
                animation = sUnk_863DCEC;
            }
            frame = animation[0].oam;
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            count = next - drawn;
            while (count != 0) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                oam->split.y = attr0 + 64;
                attr1 = *frame++;
                *rawOut++ = attr1;
                value = attr1 + 80;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                count--;
            }
            drawn = next;
        }

        if (gStageResultsNewHighScoreIcon.state != 0) {
            gStageResultsNewHighScoreIcon.x++;
            animation = sUnk_863DCB4;
            if (animation[gStageResultsNewHighScoreIcon.y].time < gStageResultsNewHighScoreIcon.x) {
                gStageResultsNewHighScoreIcon.x = 1;
                gStageResultsNewHighScoreIcon.y++;
                if (animation[gStageResultsNewHighScoreIcon.y].time == 0) {
                    gStageResultsNewHighScoreIcon.y = 0;
                }
            }
            frame = animation[gStageResultsNewHighScoreIcon.y].oam;
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            count = next - drawn;
            while (count != 0) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                oam->split.y = attr0 + 56;
                attr1 = *frame++;
                *rawOut++ = attr1;
                value = attr1 + 120;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                count--;
            }
            drawn = next;
        }

        for (i = 0; i < gStageResultsRemainingHearts; i++) {
            frame = sUnk_863D9F4;
            next += *frame++;
            if (next > MAX_OAM_SLOTS) {
                return;
            }
            oam = &gOamBuffer[drawn];
            count = next - drawn;
            while (count != 0) {
                attr0 = *frame++;
                *rawOut++ = attr0;
                oam->split.y = attr0 + 88;
                attr1 = *frame++;
                *rawOut++ = attr1;
                value = attr1 + 88 + i * 8;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (value & 0x1FF);
                attr2 = *frame++;
                *rawOut = attr2;
                ((u8 *)oam)[5] &= 0xF3;
                rawOut += 2;
                oam++;
                count--;
            }
            drawn = next;
        }
    }

    gOamSlotsUsed = next;
}
#endif
