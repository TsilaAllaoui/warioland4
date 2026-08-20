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
/* Best current WIP C for RenderPassageClearOam: 25609 / 99200 (74.18%),
 * EXACT size match 0x814 (was 0x808 / 12 bytes short). First copy block
 * rewritten to match target (slot = total - slot countdown; no frozen
 * attr0 pointer). Rescore: bash decomp_work/DrawSoundRoomSprites/score_any.sh
 * src/passage_clear.c RenderPassageClearOam
 * asm/disasm_passage_clear_RenderPassageClearOam.s us
 * Full history/notes: decomp_work/RenderPassageClearOam/README.md */
void RenderPassageClearOam(void)
{
  register s32 slot asm("r9");
  const u16 * const *new_var42;
  u16 *new_var6;
  s16 new_var40;
  short new_var10;
  OamData new_var24;
  register u16 *rawDst asm("r6");
  char new_var44;
  u8 *new_var16;
  register volatile int total asm("r8");
  register const u16 *src asm("r4");
  register OamData *oam asm("r5");
  u16 new_var22;
  const u16 *srcPtr;
  int new_var13;
  s32 i;
  struct PassageClearAnimationState *mainAnim;
  struct PassageClearAnimationState *secondaryAnim;
  const s16 *new_var31;
  struct PassageClearParticle *particle;
  const struct AnimationFrame *animation;
  int new_var5;
  int affineA;
  int new_var45;
  const u16 * const *new_var19;
  int new_var52;
  u16 new_var18;
  unsigned long new_var9;
  s16 affineB;
  int new_var12;
  s16 new_var30;
  u8 new_var3;
  unsigned char new_var43;
  unsigned int new_var51;
  s16 affineC;
  s32 new_var47;
  int new_var54;
  s32 new_var21;
  struct PassageClearParticle *new_var27;
  unsigned long affineD;
  s32 new_var49;
  int new_var37;
  int attr1XMask;
  unsigned short oamSlotLimit;
  s32 angle;
  u8 new_var32;
  short new_var;
  u16 *mainSpriteXPtr;
  const s16 *new_var4;
  volatile unsigned char new_var7;
  int new_var33;
  const struct AnimationFrame *new_var15;
  OamData *new_var17;
  OamData *new_var46;
  int new_var35;
  int new_var14;
  const u16 *new_var39;
  u16 *new_var8;
  struct PassageClearParticle *new_var26;
  u8 new_var2;
  int new_var53;
  const u16 *new_var20;
  int new_var38;
  int new_var48;
  s16 new_var36;
  s32 new_var50;
  s32 sine;
  s32 inverse;
  u16 new_var11;
  OamData *new_var28;
  int new_var34;
  int new_var29;
  int new_var23;
  const u16 *new_var25;
  OamData *new_var41;
  unsigned int initialAttr1;
  new_var33 = (0, 128);
  slot = 0;
  total = gOamSlotsUsed;
  { register u32 initOff asm("r0"); initOff = ((u32) total) << 3; rawDst = (u16 *) ((u32) gOamBuffer + initOff); }
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
      src = animation[mainAnim->frame].oam;
      total += *(src++);
      if (total > 128)
        goto finish;
      if (slot < total)
      {
        register OamData *oamBase asm("r1");
        register u16 *mainState asm("r7");
        register s32 attr2Mask asm("ip");
        register u32 xMask asm("sl");
        oamBase = gOamBuffer;
        mainState = gStageEntryMainSpriteState;
        attr2Mask = -13;
        xMask = 0x1FF;
        oam = (OamData *)(((u32)slot << 3) + (u32)oamBase);
        slot = total - slot;
        do
        {
          u16 value;
          s32 coord;
          value = *(src++);
          *(rawDst++) = value;
          ((u8 *)oam)[0] = (value + ((u8 *)mainState)[6]) - 4;
          value = *(src++);
          *(rawDst++) = value;
          coord = (value + mainState[2]) - 2;
          {
            register u16 oldAttr1 asm("r2");
            register u32 merged asm("r0");
            oldAttr1 = oam->all.attr1;
            merged = 0xFE00;
            merged &= oldAttr1;
            merged |= (coord & xMask);
            oam->all.attr1 = merged;
          }
          *rawDst = *(src++);
          ((u8 *)oam)[5] &= (u8)attr2Mask;
          rawDst += 2;
          oam++;
          slot--;
        }
        while (slot != 0);
        slot = total;
      }
    }
  }
  new_var29 = -13;
  if (gPassageClearBonusAnimationActive != 0)
  {
    gPassageClearBonusAnimationTimer++;
    if ((*(&animation[gPassageClearBonusAnimationFrame])).time < gPassageClearBonusAnimationTimer)
    {
      gPassageClearBonusAnimationTimer = 1;
      gPassageClearBonusAnimationFrame++;
      if (animation[gPassageClearBonusAnimationFrame].time == 0)
      {
        gPassageClearBonusAnimationFrame = 0;
        animation = sPassageClearBonusItemAnimation;
        gPassageClearBonusAnimationTimer = 0;
        gPassageClearBonusAnimationActive = 0;
      }
    }
    if (1)
    {
      if (gPassageClearBonusAnimationActive != 0)
      {
        i = 0;
        new_var50 = i;
        do
        {
          s16 x;
          s16 y;
          src = (&animation[gPassageClearBonusAnimationFrame])->oam;
          new_var45 = (new_var50 * 2) + 1;
          new_var25 = src++;
          total += *new_var25;
          if (total > 128)
          {
            slot = total - slot;
            goto finish;
          }
          if (slot < total)
          {
            new_var10 = gPassageClearBonusItemPositions[new_var45];
            if (1)
            {
            }
            x = ((s16) gPassageClearBonusItemPositions[i * 2]) >> 4;
            y = 4;
            y = ((s16) new_var10) >> y;
            oam = &gOamBuffer[slot];
            slot = total - slot;
            do
            {
              u16 value;
              s32 coord;
              value = *(src++);
              if (new_var52 = 1)
              {
                *(rawDst++) = value;
                ((u8 *) (&gOamBuffer[slot]))[0] = y;
                ((u8 *) oam)[0] = (initialAttr1 = value + ((u8 *) oam)[0]);
                new_var20 = src++;
                *(rawDst++) = value;
                value = *new_var20;
                new_var30 = oam->all.attr1;
                *rawDst = *(src++);
                new_var12 = x + value;
                coord = new_var12;
                attr1XMask = 0x1FF;
                value = (coord & attr1XMask) | (new_var30 & 0xFE00);
                new_var12 = value;
                oam->all.attr1 = new_var12;
                src++;
                value = *(src++);
                ((u8 *) oam)[5] = ((u8 *) oam)[5] & ((u8) ((int) new_var29));
              }
              rawDst += 2;
              oam++;
              slot--;
            }
            while (0 != slot);
            slot = total;
          }
          angle = ((const s32 *) sPassageClearBonusItemYVelocities)[i];
          gPassageClearBonusItemPositions[new_var45] += angle;
          gPassageClearBonusItemPositions[i * 2] += ((const s32 *) sPassageClearBonusItemXVelocities)[i];
          i++;
        }
        while (i <= 5);
      }
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
    oam = new_var41;
    mainSpriteXPtr = &gStageEntryMainSpriteState[2];
    slot = total - slot;
    do
    {
      unsigned long value;
      unsigned long coord;
      new_var18 = *(src++);
      value = new_var18;
      *(rawDst++) = value;
      ((u8 *) oam)[0] = value + ((u8 *) gStageEntryMainSpriteState)[6];
      affineA = *(src++);
      ;
      *(rawDst++) = affineA;
      new_var41 = &gOamBuffer[slot];
      coord = value + (*mainSpriteXPtr);
      new_var24 = *oam;
      affineC = new_var24.all.attr1;
      inverse = (u8) (-13);
      oam->all.attr1 = affineC & 0xFE00;
      oam->all.attr1 = oam->all.attr1 | (coord & 0x1FF);
      value = (*rawDst = *(src++));
      new_var2 = inverse;
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
    if (animation[(*secondaryAnim).frame].time < secondaryAnim->timer)
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
    oamSlotLimit = 128;
    if (secondaryAnim->state != 0)
    {
      new_var = 2;
      src = animation[secondaryAnim->frame].oam;
      total += *(src++);
      if (total > oamSlotLimit)
      {
        goto finish;
      }
      new_var9 = total;
      if (slot < total)
      {
        if (1)
        {
          if (1)
          {
            total = new_var9;
            oam = &gOamBuffer[slot];
            slot = total - slot;
          }
          srcPtr = &(*(src++));
          do
          {
            u16 value;
            s32 coord;
            value = *srcPtr;
            *(rawDst++) = value;
            ((u8 *) oam)[0] = value + ((u8 *) gStageEntryMainSpriteState)[6];
            if (1)
            {
              coord = *(src++);
              do
              {
                ;
                value = coord;
                *(rawDst++) = value;
                coord = (gStageEntryMainSpriteState[2] + value) - 16;
                new_var35 = 0x1FF & coord;
                oam->all.attr1 = (oam->all.attr1 & 0xFE00) | new_var35;
                *rawDst = (value = *(src++));
                ((u8 *) oam)[5] &= new_var2;
              }
              while (0);
              rawDst += new_var;
            }
            oam++;
            slot--;
          }
          while (slot != 0);
        }
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
        new_var37 = 0xFE00;
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
          new_var14 = new_var37;
          oam->all.attr1 = ((&oam->all)->attr1 & new_var14) | (coord & new_var);
          *rawDst = (value = *(src++));
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
    new_var49 = slot;
    particle = &gPassageClearFastParticles[i];
    if (particle->type != 0)
    {
      src = sPassageClearFastParticleOamFrames[particle->type - 1];
      new_var26 = particle;
      total += *(src++);
      if (1)
      {
        if (total > new_var33)
        {
          goto finish;
        }
        if (new_var49 < total)
        {
          new_var32 = (u8) (-4);
          oam = &gOamBuffer[new_var49];
          slot = total - slot;
          do
          {
            u16 value;
            s32 coord;
            u8 matrix;
            value = *(src++);
            *(rawDst++) = value;
            ((u8 *) oam)[0] = value + (particle->y >> 4);
            ((u8 *) oam)[1] = (((u8 *) oam)[1] & new_var32) | 1;
            value = *(src++);
            new_var7 = oam->all.attr1;
            *(rawDst++) = value;
            coord = new_var26->x;
            new_var48 = -15;
            coord = value + coord;
            oam->all.attr1 = (new_var7 & 0xFE00) | (coord & 0x1FF);
            matrix = (((new_var26->type - ((unsigned long) 1)) / 3) + 4) & 7;
            affineD = matrix << 1;
            ((u8 *) oam)[3] = ((u8 *) oam)[3] & ((u8) new_var48);
            ((u8 *) oam)[3] = ((u8 *) oam)[3] | affineD;
            ;
            *rawDst = *(src++);
            ((u8 *) oam)[5] = (((u8 *) oam)[5] & new_var2) | 8;
            rawDst += 2;
            oam++;
            slot--;
          }
          while (slot != 0);
          slot = total;
        }
        new_var26->y += 60;
      }
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
      src = sPassageClearMediumParticleOamFrames[particle->type - 1];
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
          new_var40 = particle->y;
          ((u8 *) oam)[0] = value + (new_var40 >> 4);
          ((u8 *) oam)[1] |= 3;
          value = *(src++);
          *(rawDst++) = value;
          new_var30 = particle->x;
          coord = new_var30;
          if (1)
          {
            coord = value + coord;
            new_var34 = 7;
            oam->all.attr1 = (coord & 0x1FF) | new_var5;
            matrix = (((particle->type - 1) / 3) + 2) & new_var34;
            ((u8 *) oam)[3] = (matrix << 1) | (((u8 *) oam)[3] & (new_var43 = (u8) (-15)));
          }
          *rawDst = (value = *(src++));
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
    ;
    new_var42 = (const u16 * const *) sPassageClearSlowParticleOamFrames;
    particle = &gPassageClearSlowParticles[i];
    new_var19 = new_var42;
    if (particle->type != 0)
    {
      src = new_var19[particle->type - 1];
      new_var54 = 1;
      total += *(src++);
      if (((total - 1) + 1) > oamSlotLimit)
      {
        if (1)
        {
          goto finish;
        }
      }
      if (slot < total)
      {
        total = slot;
        new_var46 = &gOamBuffer[total];
        oam = new_var46;
        slot = total - slot;
        do
        {
          u16 value;
          unsigned int coord;
          u8 matrix;
          value = (new_var22 = *(src++));
          *(rawDst++) = value;
          ((u8 *) oam)[new_var32 * 0] = value + (particle->y >> 4);
          new_var53 = new_var34;
          ((u8 *) oam)[1] = (((u8 *) oam)[1] & new_var32) | 1;
          value = *(src++);
          *(rawDst++) = value;
          coord = particle->x;
          coord = value + coord;
          oam->all.attr1 = (coord & new_var23) | (oam->all.attr1 & 0xFE00);
          matrix = ((particle->type + (-1)) / 3) & new_var53;
          coord = matrix << new_var54;
          ((u8 *) oam)[3] = (((u8 *) oam)[3] & ((u8) (-15))) | coord;
          value = (*rawDst = *(src++));
          new_var17 = oam;
          affineB = ((unsigned short) ((u8 *) new_var17)[5]) & new_var2;
          ((u8 *) oam)[5] = (((((affineB & 0xFFFFFFFFu) & 0xFFFFFFFFu) & 0xFFFFFFFFu) & 0xFFFFFFFFu) & 0xFFFFFFFFu) | 8;
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
        do
        {
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
    ;
    new_var47 = FixedInverse(0x100);
    gPassageClearParticleAffineAngles[i] += sPassageClearParticleAngleSteps[i];
    angle = gPassageClearParticleAffineAngles[i];
    sine = sSinCosTable[angle - (-64)];
    inverse = FixedInverse(0x100);
    affineA = FixedMul(sine, (s16) inverse);
    sine = (float) sSinCosTable[angle];
    inverse = (new_var30 = new_var47);
    affineB = FixedMul(sine, (s16) inverse);
    new_var4 = sSinCosTable;
    sine = -((u16) new_var4[angle]);
    inverse = FixedInverse(0x100);
    new_var36 = affineB;
    new_var44 = FixedMul((s16) sine, (s16) inverse);
    affineC = new_var44;
    new_var31 = new_var4;
    affineD = new_var31[new_var51 = angle + 64];
    sine = affineD;
    affineD = (gOamBuffer[3 + (2 * (2 * i))].all.affineParam = FixedMul(sine, (s16) inverse));
    gOamBuffer[i * 4].all.affineParam = affineA;
    new_var9 = affineC;
    gOamBuffer[(i * 4) + 1].all.affineParam = new_var36;
    gOamBuffer[(i * 4) + 2].all.affineParam = new_var9;
    i++;
  }
  while (i <= 5);
  gOamSlotsUsed = total;
  finish:
  return;

  inverse = FixedInverse(0x100);
}
#endif
