#include "minigames/roulette.h"
#include "minigame.h"

void ResetRouletteRound(void)
{
    volatile u32 *dma;
    u16 remainder;

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)sRouletteTopResultTiles;
    dma[1] = 0x06013000;
    dma[2] = 0x80002000;
    dma[2];

    {
        register s32 value asm("r0");
        register u16 *angularSpeedAddress asm("r1");
        angularSpeedAddress = &gRouletteAngularSpeed;
        /* agbcc otherwise emits indexed ldrsh; the target uses ldrh/lsl/asr. */
        asm volatile("ldrh %0, [%1, #0]\nlsl %0, %0, #16\nasr %0, %0, #16"
                     : "=r"(value) : "r"(angularSpeedAddress));
        if (value > 100)
            *angularSpeedAddress = 100;
    }

    remainder = __umodsi3(gMinigameScore, 10);
    if (remainder == 0)
    {
        gRouletteValueCount++;
        if (gRouletteValueCount > 15)
            gRouletteValueCount = 15;
    }

    gRouletteTickPeriod -= 5;
    if ((s16)gRouletteTickPeriod <= 2)
        gRouletteTickPeriod = 48;

    gRoulettePromptAnim.timer = 0;
    gRoulettePromptAnim.frame = 0;
    gRouletteMoveProgress = 0;
    gRouletteAngularAcceleration = 0;
    gRouletteValueSequenceIndex = 0;
    gRouletteSelectedItemIndex = 0;
    gRouletteStopRequested = 0;
    gRouletteFrameCounter = 0;
    gRouletteTopResult.y = 88;
    gRouletteMiddleResult.y = 106;
    gRouletteBottomResult.y = 116;
    ShuffleRouletteOamTable();
    ShuffleRouletteValuePool();

    {
        register s32 tileValue asm("r0");
        register s32 tileOffset asm("r1");
        register struct RouletteItem *item asm("r2");
        register s32 y asm("r3");
        register s32 x asm("r4");
        register s32 remaining asm("r5");
        register s32 angle asm("r6");
        register s32 inactive;

        inactive = 0;
        angle = 7168;
        tileOffset = 0;
        tileValue = sRouletteInitialTileSin;
        item = gRouletteItems;
        x = 1000;
        y = 88;
        tileOffset = 256;
        /* agbcc otherwise reverses this commutative add and changes r0/r1. */
        asm volatile("add %0, %0, %1" : "+r"(tileValue) : "r"(tileOffset));
        tileValue = ((s32)(tileValue + ((u32)tileValue >> 31)) >> 1) << 1;
        remaining = 2;
        do
        {
            item->x = x;
            item->y = y;
            item->angle = angle;
            item->scale = tileValue;
            item->active = inactive;
            item++;
            remaining--;
        } while (remaining >= 0);
    }

    {
        register struct RouletteItem **base asm("r2");
        register struct RouletteItem *item asm("r0");
        register struct RouletteItem **dst asm("r1");
        base = gRouletteItemDrawOrder;
        item = gRouletteItems;
        item += 2;
        dst = base;
        dst += 2;
        do
        {
            *dst = item;
            item--;
            dst--;
        } while ((s32)dst >= (s32)base);
    }

    {
        register s32 index asm("r5");
        register u8 *values asm("r6");
        register u8 *dst asm("r4");
        register s32 value asm("r0");

        index = 0;
        do
        {
            value = MinigameRandom();
            values = gRouletteWinningValues;
            /* agbcc reverses this commutative add; the boundary preserves the target r5+r6 order. */
            asm volatile("add %0, %1, %2" : "=r"(dst) : "r"(index), "r"(values));
            value = __modsi3(value, gRouletteValueCount);
            *dst = value;
            index++;
        } while (index <= 2);

        {
            register struct RouletteSmallState *label asm("r1");
            register u8 value asm("r0");
            label = &gRouletteTopResult;
            value = values[0];
            label->frame = value;
            label = &gRouletteMiddleResult;
            value = values[1];
            label->frame = value;
            label = &gRouletteBottomResult;
            value = values[2];
            label->frame = value;
        }
    }
    RefreshRouletteResultTiles();
}
