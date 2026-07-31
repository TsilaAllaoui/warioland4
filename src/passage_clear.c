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


extern u16 gStageEntrySequenceTimer;
extern s8 gUnk_3003C3E;
extern s8 gUnk_3003C3C;
extern s8 gUnk_3003C3D;

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
    gUnk_3003C3D = zero8;
    gUnk_3003C3C = 16;
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
        gUnk_3003C3D++;
        gUnk_3003C3C--;
        *(volatile u16 *)0x04000052 = (gUnk_3003C3C << 8) | gUnk_3003C3D;
        if (gUnk_3003C3D == 16)
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
/* Best current pure-C scratch: 2750 / 51700 (94.680851%), 0x808 vs target 0x814. */
void RenderPassageClearOam(void)
{
    s32 slot;
    s32 total;
    u16 *rawDst;
    const u16 *src;
    OamData *oam;
    s32 count;
    s32 i;
    struct PassageClearAnimationState *mainAnim;
    struct PassageClearAnimationState *secondaryAnim;
    struct PassageClearParticle *particle;
    const struct AnimationFrame *animation;
    s16 affineA;
    s16 affineB;
    s16 affineC;
    s16 affineD;
    s32 angle;
    s32 sine;
    s32 inverse;

    slot = 0;
    total = gOamSlotsUsed;
    rawDst = (u16 *)&gOamBuffer[total];
    mainAnim = (struct PassageClearAnimationState *)gPassageClearMainAnimationState;
    secondaryAnim = (struct PassageClearAnimationState *)gPassageClearSecondaryAnimationState;

    if (mainAnim->state == 2)
    {
        mainAnim->timer++;
        animation = sPassageClearMainAnimation;
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
        if (mainAnim->state == 2)
        {
            src = animation[mainAnim->frame].oam;
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + ((u8 *)gStageEntryMainSpriteState)[6] - 4;
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + gStageEntryMainSpriteState[2] - 2;
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] &= (u8)-13;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
                slot = total;
            }
        }
    }

    if (gPassageClearBonusAnimationActive != 0)
    {
        gPassageClearBonusAnimationTimer++;
        animation = sPassageClearBonusItemAnimation;
        if (animation[gPassageClearBonusAnimationFrame].time < gPassageClearBonusAnimationTimer)
        {
            gPassageClearBonusAnimationTimer = 1;
            gPassageClearBonusAnimationFrame++;
            if (animation[gPassageClearBonusAnimationFrame].time == 0)
            {
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
                total += *src++;
                if (total > MAX_OAM_SLOTS)
                    goto finish;
                if (slot < total)
                {
                    x = (s16)gPassageClearBonusItemPositions[i * 2] >> 4;
                    y = (s16)gPassageClearBonusItemPositions[i * 2 + 1] >> 4;
                    oam = &gOamBuffer[slot];
                    count = total - slot;
                    do
                    {
                        u16 value;
                        s32 coord;

                        value = *src++;
                        *rawDst++ = value;
                        ((u8 *)oam)[0] = value + y;
                        value = *src++;
                        *rawDst++ = value;
                        coord = value + x;
                        oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                        value = *src++;
                        *rawDst = value;
                        src++;
                        ((u8 *)oam)[5] &= (u8)-13;
                        rawDst += 2;
                        oam++;
                        count--;
                    } while (count != 0);
                    slot = total;
                }
                gPassageClearBonusItemPositions[i * 2] += ((const s32 *)sPassageClearBonusItemXVelocities)[i];
                gPassageClearBonusItemPositions[i * 2 + 1] += ((const s32 *)sPassageClearBonusItemYVelocities)[i];
                i++;
            } while (i <= 5);
        }
    }

    src = (const u16 *)gPassageClearBannerOam;
    total += *src++;
    if (total > MAX_OAM_SLOTS)
        goto finish;
    if (slot < total)
    {
        oam = &gOamBuffer[slot];
        count = total - slot;
        do
        {
            u16 value;
            s32 coord;

            value = *src++;
            *rawDst++ = value;
            ((u8 *)oam)[0] = value + ((u8 *)gStageEntryMainSpriteState)[6];
            value = *src++;
            *rawDst++ = value;
            coord = value + gStageEntryMainSpriteState[2];
            oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
            value = *src++;
            *rawDst = value;
            src++;
            ((u8 *)oam)[5] &= (u8)-13;
            rawDst += 2;
            oam++;
            count--;
        } while (count != 0);
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
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + ((u8 *)gStageEntryMainSpriteState)[6];
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + gStageEntryMainSpriteState[2] - 16;
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] &= (u8)-13;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
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
            src = animation[mainAnim->frame].oam;
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + ((u8 *)gStageEntryMainSpriteState)[6] - 4;
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + gStageEntryMainSpriteState[2];
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] &= (u8)-13;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
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
            src = ((const u16 * const *)sPassageClearFastParticleOamFrames)[particle->type - 1];
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;
                    u8 matrix;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + (particle->y >> 4);
                    ((u8 *)oam)[1] = (((u8 *)oam)[1] & (u8)-4) | 1;
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + particle->x;
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    matrix = ((particle->type - 1) / 3 + 4) & 7;
                    ((u8 *)oam)[3] = (((u8 *)oam)[3] & (u8)-15) | (matrix << 1);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] = (((u8 *)oam)[5] & (u8)-13) | 8;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
                slot = total;
            }
            particle->y += 60;
            if (particle->y > 0xAA0)
                particle->type = 0;
        }
        i++;
    } while (i <= 4);

    i = 0;
    do
    {
        particle = &gPassageClearMediumParticles[i];
        if (particle->type != 0)
        {
            src = ((const u16 * const *)sPassageClearMediumParticleOamFrames)[particle->type - 1];
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;
                    u8 matrix;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + (particle->y >> 4);
                    ((u8 *)oam)[1] |= 3;
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + particle->x;
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    matrix = ((particle->type - 1) / 3 + 2) & 7;
                    ((u8 *)oam)[3] = (((u8 *)oam)[3] & (u8)-15) | (matrix << 1);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] = (((u8 *)oam)[5] & (u8)-13) | 8;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
                slot = total;
            }
            particle->y += 52;
            if (particle->y > 0xAA0)
                particle->type = 0;
        }
        i++;
    } while (i <= 4);

    i = 0;
    do
    {
        particle = &gPassageClearSlowParticles[i];
        if (particle->type != 0)
        {
            src = ((const u16 * const *)sPassageClearSlowParticleOamFrames)[particle->type - 1];
            total += *src++;
            if (total > MAX_OAM_SLOTS)
                goto finish;
            if (slot < total)
            {
                oam = &gOamBuffer[slot];
                count = total - slot;
                do
                {
                    u16 value;
                    s32 coord;
                    u8 matrix;

                    value = *src++;
                    *rawDst++ = value;
                    ((u8 *)oam)[0] = value + (particle->y >> 4);
                    ((u8 *)oam)[1] = (((u8 *)oam)[1] & (u8)-4) | 1;
                    value = *src++;
                    *rawDst++ = value;
                    coord = value + particle->x;
                    oam->all.attr1 = (oam->all.attr1 & 0xFE00) | (coord & 0x1FF);
                    matrix = ((particle->type - 1) / 3) & 7;
                    ((u8 *)oam)[3] = (((u8 *)oam)[3] & (u8)-15) | (matrix << 1);
                    value = *src++;
                    *rawDst = value;
                    src++;
                    ((u8 *)oam)[5] = (((u8 *)oam)[5] & (u8)-13) | 8;
                    rawDst += 2;
                    oam++;
                    count--;
                } while (count != 0);
                slot = total;
            }
            particle->y += 32;
            if (particle->y > 0xAA0)
                particle->type = 0;
        }
        i++;
    } while (i <= 4);

    i = 0;
    do
    {
        gPassageClearParticleAffineAngles[i] += ((const s32 *)sPassageClearParticleAngleSteps)[i];
        angle = gPassageClearParticleAffineAngles[i];
        sine = sSinCosTable[angle + 64];
        inverse = FixedInverse(0x100);
        affineA = FixedMul(sine, (s16)inverse);
        sine = sSinCosTable[angle];
        inverse = FixedInverse(0x100);
        affineB = FixedMul(sine, (s16)inverse);
        sine = -(u16)sSinCosTable[angle];
        inverse = FixedInverse(0x100);
        affineC = FixedMul((s16)sine, (s16)inverse);
        sine = sSinCosTable[angle + 64];
        inverse = FixedInverse(0x100);
        affineD = FixedMul(sine, (s16)inverse);
        gOamBuffer[i * 4].all.affineParam = affineA;
        gOamBuffer[i * 4 + 1].all.affineParam = affineB;
        gOamBuffer[i * 4 + 2].all.affineParam = affineC;
        gOamBuffer[i * 4 + 3].all.affineParam = affineD;
        i++;
    } while (i <= 5);

    gOamSlotsUsed = total;
finish:
    return;
}
#endif
