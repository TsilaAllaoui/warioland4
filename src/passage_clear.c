#include "global_data.h"
#include "compiler.h"
#include "passage_clear.h"
#include "gba/io_reg.h"
#include "gba/m4a.h"
#include "voice_set.h"
#include "init_helpers.h"
#include "stage_select.h"
#include "stage_entry.h"
#include "fixed_point.h"
#include "boss_treasure_cutscene.h"


extern u16 gStageEntrySequenceTimer;
extern s8 gUnk_3003C3E;

extern const u8 sPassageClearBgPalette[];
extern const u8 sPassageClearBgTiles[];
extern const u8 sPassageClearObjPalette[];
extern const u8 sPassageClearObjTiles[];
extern const u8 sPassageClearBg0Tilemap[];
extern const u8 sPassageClearBg2Tilemap[];
extern const u8 sPassageClearBg1Tilemap0[];
extern const u16 sPassageClearBannerXOffsets[];
extern const u16 sPassageClearBannerYOffsets[];
extern const u16 * const sPassageClearBannerOamFrames[];
extern const u8 sPassageClearBannerFrameIndices[];
extern const s32 sPassageClearBonusItemInitialXOffsets[];
extern const s32 sPassageClearBonusItemInitialYOffsets[];
extern const s32 sPassageClearParticleSpawnX[];
extern const u8 sPassageClearBg1Tilemap1[];
extern const u8 sPassageClearBg1Tilemap2[];
extern const u8 sPassageClearPaletteCycleFrames[];
extern const struct AnimationFrame sPassageClearMainAnimation[];
extern const struct AnimationFrame sPassageClearSecondaryAnimation[];
extern const struct AnimationFrame sPassageClearSecondaryAltAnimation[];
extern const struct AnimationFrame sPassageClearBonusItemAnimation[];
extern const s32 sPassageClearBonusItemXVelocities[];
extern const s32 sPassageClearBonusItemYVelocities[];
extern const s32 sPassageClearParticleAngleSteps[];
extern const u16 * const sPassageClearSlowParticleOamFrames[];
extern const u16 * const sPassageClearMediumParticleOamFrames[];
extern const u16 * const sPassageClearFastParticleOamFrames[];

s32 MinigameRandom(void);

s32 UpdatePassageClearSequence(void)
{
    volatile u32 *dma;
    s32 i;
    u16 timer;

    gStageEntrySequenceTimer++;
    if (gStageEntrySequenceTimer > 368)
        return 1;

    SpawnPassageClearParticles();

    if (gStageEntrySequenceTimer == 44)
        REG_DISPCNT = 0x1700;

    timer = gStageEntrySequenceTimer;
    if (timer == 56)
    {
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBg1Tilemap1;
        dma[1] = 0x0600D000;
        dma[2] = 0x80000400;
        (void)dma[2];
    }

    if (timer == 68)
    {
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBg1Tilemap2;
        dma[1] = 0x0600D000;
        dma[2] = 0x80000400;
        (void)dma[2];
    }

    if (gStageEntrySequenceTimer == 80)
        gPassageClearBlendFadeActive = 1;
    if (gPassageClearBlendFadeActive != 0)
        UpdatePassageClearBlendFade();

    if (gStageEntrySequenceTimer == 128)
        gPassageClearPaletteCycleState++;
    if (gPassageClearPaletteCycleState != 0)
        UpdatePassageClearPaletteCycle();

    if (gStageEntrySequenceTimer == 22)
        gPassageClearSecondaryAnimationState[4] = 1;
    if (gStageEntrySequenceTimer == 45)
        gPassageClearSecondaryAnimationState[4] = 1;
    if (gStageEntrySequenceTimer == 152)
        gPassageClearMainAnimationState[4] = 1;
    if (gStageEntrySequenceTimer == 267)
        gPassageClearMainAnimationState[4] = 2;

    if (gStageEntrySequenceTimer == 252)
    {
        gPassageClearBonusAnimationActive = 1;
        m4aSongNumStart(0x1B1);
        VoiceSetPlay(2);
        for (i = 0; i <= 5; i++)
        {
            gPassageClearBonusItemPositions[i * 2] = (gStageEntryMainSpriteState[2] + sPassageClearBonusItemInitialXOffsets[i]) << 4;
            gPassageClearBonusItemPositions[i * 2 + 1] = (gStageEntryMainSpriteState[3] + sPassageClearBonusItemInitialYOffsets[i]) << 4;
        }
    }

    if (gStageEntrySequenceTimer <= 316)
        UpdatePassageClearBanner();
    return 0;
}

void InitializePassageClear(void)
{
    u8 *indexA;
    u8 *indexB;
    u8 *indexC;
    u8 zero8;
    u16 zero16;

    InitializeVideoMemory();

    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBgPalette;
        dma[1] = 0x05000000;
        dma[2] = 0x80000030;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearObjPalette;
        dma[1] = 0x05000200;
        dma[2] = 0x80000100;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBgTiles;
        dma[1] = 0x06000000;
        dma[2] = 0x80002A00;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearObjTiles;
        dma[1] = 0x06010000;
        dma[2] = 0x80002800;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBg0Tilemap;
        dma[1] = 0x0600C000;
        dma[2] = 0x80000400;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBg1Tilemap0;
        dma[1] = 0x0600D000;
        dma[2] = 0x80000400;
        (void)dma[2];
        while (dma[2] & 0x80000000)
            ;
    }
    {
        volatile u32 *dma;
        dma = (volatile u32 *)REG_ADDR_DMA3;
        dma[0] = (u32)sPassageClearBg2Tilemap;
        dma[1] = 0x0600E000;
        dma[2] = 0x80000400;
        (void)dma[2];
    }

    REG_BG0CNT = 0x1800;
    REG_BG1CNT = 0x1A01;
    REG_BG2CNT = 0x1C02;
    InitMinigameScoreDisplay();

    {
        volatile u16 *bldy;

        bldy = (volatile u16 *)REG_ADDR_BLDY;
        zero8 = 0;
        COMPILER_BARRIER(zero8);
        *bldy = zero8;
    }
    REG_DISPCNT = 0x1500;
    REG_BLDCNT = 0x1641;
    gStageTransitionBlendEvb = zero8;
    gStageTransitionBlendEva = 16;
    gUnk_3003C3E = 16;
    {
        volatile u16 *blendAlpha;
        u16 alpha;

        blendAlpha = (volatile u16 *)REG_ADDR_BLDALPHA;
        alpha = 0x1000;
        COMPILER_BARRIER(alpha);
        zero16 = 0;
        COMPILER_BARRIER(zero16);
        *blendAlpha = alpha;
    }
    gPassageClearBlendFadeActive = zero8;
    gStageEntrySequenceTimer = zero16;
    gStageEntrySequenceStep = zero8;
    {
        volatile u16 *reg;
        reg = (volatile u16 *)REG_ADDR_BG0VOFS;
        *reg = zero16; reg--; *reg = zero16; reg += 3; *reg = zero16; reg--; *reg = zero16; reg += 3; *reg = zero16; reg--; *reg = zero16;
    }
    gPassageClearPaletteCycleState = zero8;
    gStageEntryMainSpriteState[2] = 0x1E5;
    gStageEntryMainSpriteState[3] = 0x8C;
    UpdatePassageClearBanner();
    *(u16 *)&gPassageClearMainAnimationState[0] = zero16;
    *(u16 *)&gPassageClearMainAnimationState[2] = zero16;
    gPassageClearMainAnimationState[4] = zero8;
    *(u16 *)&gPassageClearSecondaryAnimationState[0] = zero16;
    *(u16 *)&gPassageClearSecondaryAnimationState[2] = zero16;
    gPassageClearSecondaryAnimationState[4] = zero8;
    gPassageClearBonusAnimationActive = zero8;
    gPassageClearBonusAnimationTimer = zero16;
    gPassageClearBonusAnimationFrame = zero16;

    {
        u8 *start;
        u8 *current;
        u8 zero;

        start = (u8 *)gPassageClearSlowParticles;
        zero = 0;
        current = start;
        current += 32;
        do
        {
            current[4] = zero;
            current -= 8;
        } while ((s32)current >= (s32)start);
    }
    indexA = &gPassageClearSlowParticleIndex;
    indexB = &gPassageClearMediumParticleIndex;
    indexC = &gPassageClearFastParticleIndex;
    {
        u8 *start;
        u8 *current;
        u8 zero;

        start = (u8 *)gPassageClearMediumParticles;
        zero = 0;
        COMPILER_BARRIER4(zero, indexA, indexB, indexC);
        current = start;
        current += 32;
        do
        {
            current[4] = zero;
            current -= 8;
        } while ((s32)current >= (s32)start);

        if ((s32)current < (s32)start)
        {
            u8 *thirdStart;
            u8 *thirdCurrent;
            u8 thirdZero;

            thirdStart = (u8 *)gPassageClearFastParticles;
            thirdZero = 0;
            thirdCurrent = thirdStart;
            thirdCurrent += 32;
            do
            {
                thirdCurrent[4] = thirdZero;
                thirdCurrent -= 8;
            } while ((s32)thirdCurrent >= (s32)thirdStart);
        }
    }
    *indexA = 0;
    *indexB = 0;
    *indexC = 0;
    m4aSongNumStart(0x1B0);
}

void UpdatePassageClearBanner(void)
{
    u16 *state;
    const u16 *xOffsets;
    u16 *timer;
    const u16 *yOffsets;
    const u16 **animation;
    const u16 * const *animations;
    const u8 *animationIndices;

    state = gStageEntryMainSpriteState;
    xOffsets = sPassageClearBannerXOffsets;
    timer = &gStageEntrySequenceTimer;
    state[2] += xOffsets[*timer];
    yOffsets = sPassageClearBannerYOffsets;
    state[3] += yOffsets[*timer];
    animation = &gPassageClearBannerOam;
    animations = sPassageClearBannerOamFrames;
    animationIndices = sPassageClearBannerFrameIndices;
    *animation = animations[animationIndices[*timer]];
}

void UpdatePassageClearBlendFade(void)
{
    u16 remainder;

    remainder = gStageEntrySequenceTimer % 3;
    if (remainder == 0)
    {
        gStageTransitionBlendEvb++;
        gStageTransitionBlendEva--;
        *(volatile u16 *)0x04000052 = (gStageTransitionBlendEva << 8) | gStageTransitionBlendEvb;
        if (gStageTransitionBlendEvb == 16)
        {
            gPassageClearBlendFadeActive = remainder;
        }
    }
}

void UpdatePassageClearPaletteCycle(void)
{
    u8 *source;
    volatile u8 *state;
    u8 value;
    volatile u32 *dma;
    u32 offset;

    source = &gPassageClearPaletteCycleState;
    value = *source;
    state = source;
    if (value <= 9)
    {
        dma = (volatile u32 *)0x040000D4;
        offset = *state - 1;
    }
    else
    {
        dma = (volatile u32 *)0x040000D4;
        value = *state;
        offset = 17 - value;
    }
    dma[0] = (u32)(sPassageClearPaletteCycleFrames + offset * 32);
    dma[1] = 0x05000020;
    dma[2] = 0x80000010;
    (void)dma[2];
    if (gStageEntrySequenceTimer % 3 == 0)
    {
        (*state)++;
    }
    if (*state == 18)
    {
        *state = 0;
    }
}

void SpawnPassageClearParticles(void)
{
    if (gStageEntrySequenceTimer % 18 == 0)
    {
        gPassageClearSlowParticles[gPassageClearSlowParticleIndex].x = sPassageClearParticleSpawnX[MinigameRandom() % 11];
        gPassageClearSlowParticles[gPassageClearSlowParticleIndex].y = -160;
        gPassageClearSlowParticles[gPassageClearSlowParticleIndex].type = MinigameRandom() % 6 + 1;
        gPassageClearSlowParticleIndex++;
        if (gPassageClearSlowParticleIndex > 4)
            gPassageClearSlowParticleIndex = 0;
    }
    if (gStageEntrySequenceTimer % 11 == 0)
    {
        gPassageClearMediumParticles[gPassageClearMediumParticleIndex].x = sPassageClearParticleSpawnX[MinigameRandom() % 11];
        gPassageClearMediumParticles[gPassageClearMediumParticleIndex].y = -160;
        gPassageClearMediumParticles[gPassageClearMediumParticleIndex].type = MinigameRandom() % 6 + 1;
        gPassageClearMediumParticleIndex++;
        if (gPassageClearMediumParticleIndex > 4)
            gPassageClearMediumParticleIndex = 0;
    }
    if (gStageEntrySequenceTimer % 9 == 0)
    {
        gPassageClearFastParticles[gPassageClearFastParticleIndex].x = sPassageClearParticleSpawnX[MinigameRandom() % 11];
        gPassageClearFastParticles[gPassageClearFastParticleIndex].y = -160;
        gPassageClearFastParticles[gPassageClearFastParticleIndex].type = MinigameRandom() % 6 + 1;
        gPassageClearFastParticleIndex++;
        if (gPassageClearFastParticleIndex > 4)
            gPassageClearFastParticleIndex = 0;
    }
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_passage_clear_RenderPassageClearOam.s");
#else
/* Best current WIP C for RenderPassageClearOam: 30888 / 99200 (68.86%), size
 * 0x81c vs target 0x814 (report.json-confirmed, 8 bytes over). Reached via
 * hand fixes (49.18% -> 61.59%) then a permuter-assisted search (61.59% ->
 * 68.86%) -- see decomp_work/RenderPassageClearOam/README.md for what was
 * fixed, the permuter-reliability caveat, and what's left. Rescore with:
 * bash decomp_work/DrawSoundRoomSprites/score_any.sh src/passage_clear.c
 * RenderPassageClearOam asm/disasm_passage_clear_RenderPassageClearOam.s us */
void RenderPassageClearOam(void)
{
  register s32 slot asm("r9");
  u16 *new_var6;
  short new_var10;
  register u16 *rawDst asm("r6");
  u8 *new_var16;
  register s32 total asm("r8");
  OamData new_var24;
  register const u16 *src asm("r4");
  register OamData *oam asm("r5");
  const u16 new_var22;
  int new_var13;
  s32 i;
  struct PassageClearAnimationState *mainAnim;
  struct PassageClearAnimationState *secondaryAnim;
  struct PassageClearParticle *particle;
  const struct AnimationFrame *animation;
  int new_var5;
  s16 affineA;
  const u16 new_var18;
  const u16 * const *new_var19;
  unsigned long new_var9;
  s16 affineB;
  int new_var12;
  u8 new_var3;
  s16 affineC;
  const s32 new_var21;
  struct PassageClearParticle *new_var27;
  s16 affineD;
  s32 angle;
  short new_var;
  const s16 *new_var4;
  volatile unsigned char new_var7;
  const struct AnimationFrame *new_var15;
  OamData *new_var17;
  int new_var14;
  u16 *new_var8;
  struct PassageClearParticle *new_var26;
  u8 new_var2;
  const u16 *new_var20;
  s32 sine;
  s32 inverse;
  const u16 new_var11;
  int new_var23;
  const u16 *new_var25;
  slot = 0;
  total = gOamSlotsUsed;
  rawDst = (u16 *) (&gOamBuffer[total]);
  mainAnim = (struct PassageClearAnimationState *) gPassageClearMainAnimationState;
  secondaryAnim = (struct PassageClearAnimationState *) gPassageClearSecondaryAnimationState;
  if (mainAnim->state == 2)
  {
    mainAnim->timer++;
    animation = sPassageClearMainAnimation;
    if (animation[mainAnim->frame].time < mainAnim->timer)
    {
      mainAnim->timer = 1;
      mainAnim->frame++;
      if ((new_var15 = animation)[mainAnim->frame].time == 0)
      {
        mainAnim->timer = 0;
        mainAnim->frame = 0;
        mainAnim->state = 0;
      }
    }
    if (mainAnim->state == 2)
    {
      src = new_var15[mainAnim->frame].oam;
      total += *(src++);
      new_var = total;
      if (new_var > 128)
      {
        if (1)
        {
        }
        goto finish;
      }
      if (slot < total)
      {
        oam = &gOamBuffer[slot];
        slot = slot;
        slot = total - slot;
        do
        {
          u16 value;
          s32 coord;
          value = *(src++);
          new_var8 = gStageEntryMainSpriteState;
          *(rawDst++) = value;
          ((u8 *) oam)[0] = (value + ((u8 *) gStageEntryMainSpriteState)[6]) - 4;
          value = *(src++);
          *(rawDst++) = value;
          new_var13 = oam->all.attr1 & 0xFE00;
          coord = (value + new_var8[2]) - 2;
          oam->all.attr1 = new_var13 | (0x1FF & coord);
          value = *(src++);
          *rawDst = value;
          src++;
          ((u8 *) oam)[5] &= (u8) inline_fn(-13);
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
    }
  }
  if (gPassageClearBonusAnimationActive != 0)
  {
    gPassageClearBonusAnimationTimer++;
    if ((*(&animation[gPassageClearBonusAnimationFrame])).time < gPassageClearBonusAnimationTimer)
    {
      gPassageClearBonusAnimationTimer = 1;
      gPassageClearBonusAnimationFrame++;
      if (animation[gPassageClearBonusAnimationFrame].time == 0)
      {
        animation = sPassageClearBonusItemAnimation;
        gPassageClearBonusAnimationTimer = 0;
        gPassageClearBonusAnimationFrame = 0;
        gPassageClearBonusAnimationActive = 0;
      }
    }
    if (gPassageClearBonusAnimationActive != 0)
    {
      i = 0;
      do
      {
        s16 x;
        s16 y;
        src = animation[gPassageClearBonusAnimationFrame].oam;
        new_var25 = src++;
        total += *new_var25;
        if (total > 128)
        {
          goto finish;
        }
        if (slot < total)
        {
          new_var10 = gPassageClearBonusItemPositions[(i * 2) + 1];
          x = ((s16) gPassageClearBonusItemPositions[i * 2]) >> 4;
          y = ((s16) new_var10) >> 4;
          oam = &gOamBuffer[slot];
          slot = total - slot;
          do
          {
            u16 value;
            s32 coord;
            value = *(src++);
            if (1)
            {
              *(rawDst++) = value;
              ((u8 *) (&gOamBuffer[slot]))[0] = y;
              ((u8 *) oam)[0] = value + ((u8 *) oam)[0];
              new_var20 = src++;
              value = *new_var20;
              *(rawDst++) = value;
              new_var12 = value + x;
              coord = new_var12;
              new_var12 = (coord & 0x1FF) | (oam->all.attr1 & 0xFE00);
              oam->all.attr1 = new_var12;
              src++;
              value = *(src++);
              *rawDst = *(src++);
              ((u8 *) oam)[5] &= (u8) (-13);
            }
            rawDst += 2;
            oam++;
            slot--;
          }
          while (slot != 0);
          slot = total;
        }
        gPassageClearBonusItemPositions[i * 2] += ((const s32 *) sPassageClearBonusItemXVelocities)[i];
        gPassageClearBonusItemPositions[(i * 2) + 1] += ((const s32 *) sPassageClearBonusItemYVelocities)[i];
        i++;
      }
      while (i <= 5);
    }
  }
  src = (const u16 *) gPassageClearBannerOam;
  total += *(src++);
  if (total > 128)
  {
    goto finish;
  }
  if (slot < total)
  {
    oam = &gOamBuffer[slot];
    slot = total;
    slot = slot - slot;
    do
    {
      u16 value;
      s32 coord;
      new_var18 = *(src++);
      value = new_var18;
      *(rawDst++) = value;
      ((u8 *) oam)[0] = value + ((u8 *) gStageEntryMainSpriteState)[6];
      affineA = *(src++);
      value = affineA;
      *(rawDst++) = value;
      coord = value + gStageEntryMainSpriteState[2];
      new_var24 = *oam;
      affineC = new_var24.all.attr1;
      inverse = (u8) (-13);
      oam->all.attr1 = affineC & 0xFE00;
      oam->all.attr1 = oam->all.attr1 | (coord & 0x1FF);
      value = *(src++);
      *rawDst = value;
      new_var2 = inverse;
      src++;
      ((u8 *) oam)[5] &= new_var2;
      rawDst += 2;
      oam++;
      slot--;
    }
    while (slot != 0);
    slot = total;
  }
  if (secondaryAnim->state != 0)
  {
    secondaryAnim->timer++;
    animation = sPassageClearSecondaryAltAnimation;
    if (animation[secondaryAnim->frame].time < secondaryAnim->timer)
    {
      secondaryAnim->timer = 1;
      secondaryAnim->frame++;
      if (animation[secondaryAnim->frame].time == 0)
      {
        mainAnim->timer = 0;
        secondaryAnim->frame = 0;
        secondaryAnim->state = 0;
      }
    }
    if (secondaryAnim->state != 0)
    {
      src = animation[secondaryAnim->frame].oam;
      total += *(src++);
      if (total > 128)
      {
        goto finish;
      }
      new_var9 = total;
      if (slot < total)
      {
        oam = &gOamBuffer[slot];
        slot = new_var9 - slot;
        do
        {
          u16 value;
          s32 coord;
          value = *(src++);
          *(rawDst++) = value;
          ((u8 *) oam)[0] = value + ((u8 *) gStageEntryMainSpriteState)[6];
          do
          {
            value = *(src++);
            *(rawDst++) = value;
            coord = (value + gStageEntryMainSpriteState[2]) - 16;
            oam->all.attr1 = (0x1FF & coord) | (oam->all.attr1 & 0xFE00);
            value = *(src++);
            *rawDst = value;
            src++;
            ((u8 *) oam)[5] &= new_var2;
          }
          while (0);
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
    }
  }
  if (mainAnim->state == 1)
  {
    mainAnim->timer++;
    animation = sPassageClearSecondaryAnimation;
    if (animation[mainAnim->frame].time < mainAnim->timer)
    {
      mainAnim->timer = 1;
      mainAnim->frame++;
      if (animation[mainAnim->frame].time == 0)
      {
        mainAnim->timer = 0;
        mainAnim->frame = 0;
        mainAnim->state = 0;
      }
    }
    if (mainAnim->state == 1)
    {
      new_var6 = rawDst++;
      src = animation[mainAnim->frame].oam;
      total += *(src++);
      if (total > 128)
      {
        goto finish;
      }
      if (slot < total)
      {
        oam = &gOamBuffer[slot];
        slot = total - slot;
        new_var11 = *(src++);
        do
        {
          u16 value;
          s32 coord;
          value = new_var11;
          new_var16 = (u8 *) gStageEntryMainSpriteState;
          *new_var6 = value;
          ((u8 *) oam)[0] = (value + new_var16[6]) - 4;
          new_var23 = 0x1FF;
          value = *(src++);
          *(rawDst++) = value;
          new_var = new_var23;
          coord = gStageEntryMainSpriteState[2] + value;
          new_var14 = 0xFE00;
          oam->all.attr1 = (oam->all.attr1 & new_var14) | (coord & new_var);
          value = *(src++);
          *rawDst = value;
          src++;
          ((u8 *) oam)[5] &= new_var2;
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
    }
  }
  i = 0;
  do
  {
    particle = &gPassageClearFastParticles[i];
    if (particle->type != 0)
    {
      src = ((const u16 * const *) sPassageClearFastParticleOamFrames)[particle->type - 1];
      new_var26 = particle;
      total += *(src++);
      if (total > 128)
      {
        goto finish;
      }
      if (slot < total)
      {
        oam = &gOamBuffer[slot];
        slot = total - slot;
        do
        {
          u16 value;
          s32 coord;
          u8 matrix;
          value = *(src++);
          *(rawDst++) = value;
          ((u8 *) oam)[0] = value + (particle->y >> 4);
          ((u8 *) oam)[1] = (((u8 *) oam)[1] & ((u8) (-4))) | 1;
          value = *(src++);
          new_var7 = oam->all.attr1;
          *(rawDst++) = value;
          coord = new_var26->x;
          coord = value + coord;
          oam->all.attr1 = (new_var7 & 0xFE00) | (coord & 0x1FF);
          matrix = (((new_var26->type - 1) / 3) + 4) & 7;
          affineD = matrix << 1;
          ((u8 *) oam)[3] = (((u8 *) oam)[3] & ((u8) (-15))) | affineD;
          value = *(src++);
          *rawDst = value;
          src++;
          ((u8 *) oam)[5] = (((u8 *) oam)[5] & new_var2) | 8;
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
      new_var26->y += 60;
      if (new_var26->y > 0xAA0)
      {
        do
        {
          new_var27 = particle;
          new_var27->type = 0;
        }
        while (0);
      }
    }
    i++;
  }
  while (i <= 4);
  i = 0;
  do
  {
    particle = &gPassageClearMediumParticles[i];
    if (particle->type != 0)
    {
      src = ((const u16 * const *) sPassageClearMediumParticleOamFrames)[particle->type - 1];
      total += *(src++);
      if (total > 128)
      {
        goto finish;
      }
      if (slot < total)
      {
        oam = &gOamBuffer[slot];
        slot = total - slot;
        do
        {
          u16 value;
          s32 coord;
          u8 matrix;
          value = *(src++);
          *(rawDst++) = value;
          new_var5 = oam->all.attr1 & 0xFE00;
          ((u8 *) oam)[0] = value + (particle->y >> 4);
          ((u8 *) oam)[1] |= 3;
          value = *(src++);
          *(rawDst++) = value;
          coord = particle->x;
          coord = value + coord;
          oam->all.attr1 = new_var5 | (coord & 0x1FF);
          matrix = (((particle->type - 1) / 3) + 2) & 7;
          ((u8 *) oam)[3] = (((u8 *) oam)[3] & ((u8) (-15))) | (matrix << 1);
          value = *(src++);
          *rawDst = value;
          src++;
          ((u8 *) oam)[5] = (((u8 *) oam)[5] & new_var2) | 8;
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
      (&gPassageClearMediumParticles[i])->y += 52;
      if ((&gPassageClearMediumParticles[i])->y > 0xAA0)
      {
        particle->type = 0;
      }
    }
    i++;
  }
  while (i <= 4);
  i = 0;
  do
  {
    new_var3 = (u8) (-4);
    particle = &gPassageClearSlowParticles[i];
    new_var19 = (const u16 * const *) sPassageClearSlowParticleOamFrames;
    if (particle->type != 0)
    {
      src = new_var19[particle->type - 1];
      total += *(src++);
      if (((total - 1) + 1) > 128)
      {
        if (1)
        {
          goto finish;
        }
      }
      if (slot < total)
      {
        total = slot;
        oam = &gOamBuffer[total];
        slot = total - slot;
        do
        {
          u16 value;
          s32 coord;
          u8 matrix;
          value = (new_var22 = *(src++));
          *(rawDst++) = value;
          ((u8 *) oam)[0] = value + (particle->y >> 4);
          ((u8 *) oam)[1] = (((u8 *) oam)[1] & new_var3) | 1;
          value = *(src++);
          *(rawDst++) = value;
          coord = particle->x;
          coord = value + coord;
          oam->all.attr1 = (coord & new_var23) | (oam->all.attr1 & 0xFE00);
          matrix = ((particle->type + (-1)) / 3) & 7;
          coord = matrix << 1;
          ((u8 *) oam)[3] = (((u8 *) oam)[3] & ((u8) (-15))) | coord;
          value = *(src++);
          *rawDst = value;
          src++;
          new_var17 = oam;
          ((u8 *) oam)[5] = (((unsigned short) ((u8 *) new_var17)[5]) & new_var2) | 8;
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
      particle->y = particle->y + 32;
      if (particle->y > 0xAA0)
      {
        particle->type = 0;
      }
    }
    i++;
  }
  while (i <= 4);
  i = 0;
  do
  {
    new_var21 = ((const s32 *) sPassageClearParticleAngleSteps)[i];
    gPassageClearParticleAffineAngles[i] += new_var21;
    angle = gPassageClearParticleAffineAngles[i];
    sine = sSinCosTable[angle + 64];
    inverse = FixedInverse(0x100);
    affineA = FixedMul(sine, (s16) inverse);
    sine = (float) sSinCosTable[angle];
    inverse = FixedInverse(0x100);
    affineB = FixedMul(sine, (s16) inverse);
    new_var4 = sSinCosTable;
    sine = -((u16) new_var4[angle]);
    inverse = FixedInverse(0x100);
    affineC = FixedMul((s16) sine, (s16) inverse);
    sine = new_var4[angle + 64];
    affineD = FixedMul(sine, (s16) inverse);
    gOamBuffer[i * 4].all.affineParam = affineA;
    new_var9 = affineC;
    gOamBuffer[(i * 4) + 1].all.affineParam = affineB;
    gOamBuffer[(i * 4) + 2].all.affineParam = new_var9;
    gOamBuffer[3 + (i * 4)].all.affineParam = affineD;
    i++;
  }
  while (i <= 5);
  gOamSlotsUsed = total;
  finish:
  return;

  inverse = FixedInverse(0x100);
}
#endif
