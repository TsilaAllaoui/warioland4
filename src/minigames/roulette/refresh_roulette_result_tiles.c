#include "minigames/roulette.h"

void RefreshRouletteResultTiles(void)
{
    register u8 *src asm("r1");
    register s32 quotient asm("r2");
    register struct RouletteSmallState *nextState asm("r8");

    CALC_PARTS_FROM_VALUE(GetRouletteFrameIndex(gRouletteTopResult.frame), sRouletteTopResultTiles);
    {
        register struct RouletteSmallState *stateLoad asm("r0");
        stateLoad = &gRouletteMiddleResult;
        nextState = stateLoad;
    }
    RUN_FOUR_DMAS(0x06017000);

    {
        register struct RouletteSmallState *stateLow asm("r1");
        stateLow = nextState;
        CALC_PARTS_FROM_VALUE(GetRouletteFrameIndex(stateLow->frame), sRouletteMiddleResultTiles);
    }
    {
        register struct RouletteSmallState *stateLoad asm("r0");
        stateLoad = &gRouletteBottomResult;
        nextState = stateLoad;
    }
    RUN_FOUR_DMAS(0x06017100);

    {
        register s32 frame asm("r3");
        register s32 frameOffset asm("r0");
        register u8 *graphics asm("r4");
        register u8 *dstBase asm("r12");
        register int i asm("r5");
        register volatile u32 *dma asm("r2");
        register u32 control asm("r7");
        register u32 busy asm("r6");

        {
            register struct RouletteSmallState *stateLow asm("r1");
            stateLow = nextState;
            frameOffset = GetRouletteFrameIndex(stateLow->frame);
        }
        frame = frameOffset;
        if (frame < 0)
            frameOffset = frame + 3;
        frameOffset >>= 2;
        asm volatile("" : "+r"(frameOffset));
        quotient = frameOffset;
        frameOffset = quotient << 2;
        frameOffset = frame - frameOffset;
        quotient <<= 12;
        frameOffset <<= 8;
        {
            register u8 *base asm("r1");
            base = sRouletteBottomResultTiles;
            frameOffset += (s32)base;
        }
        graphics = (u8 *)(quotient + frameOffset);
        dstBase = (u8 *)0x06017200;
        i = 0;
        dma = (volatile u32 *)0x040000D4;
        control = 0x80000080;
        busy = 0x80000000;
        do {
            register u32 offset asm("r1");
            register u32 value asm("r0");
            register int next asm("r1");
            offset = i << 10;
            dma[0] = (u32)(graphics + offset);
            dma[1] = (u32)(dstBase + offset);
            dma[2] = control;
            value = dma[2];
            value = dma[2];
            value &= busy;
            next = i + 1;
            if (value != 0) {
                register u32 pollMask asm("r3");
                pollMask = 0x80000000;
                do {
                    value = dma[2];
                    value &= pollMask;
                } while (value != 0);
            }
            i = next;
        } while (i <= 3);
    }
}
