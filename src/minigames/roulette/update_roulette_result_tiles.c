#include "minigames/roulette.h"

void UpdateRouletteResultTiles(void)
{
    register u8 *src asm("r4");
    register u8 *dst asm("r5");
    register int i asm("r3");
    register volatile u32 *dma asm("r2");
    register u32 control;
    register u32 busy asm("r6");

    switch (gUnk_30047B9) {
    case 7:
        CALC_SOURCE(gRouletteTopResult, sRouletteTopResultTiles, 0x06017000);
        break;
    case 9:
        CALC_SOURCE(gRouletteMiddleResult, sRouletteMiddleResultTiles, 0x06017100);
        break;
    case 11:
        CALC_SOURCE(gRouletteBottomResult, sRouletteBottomResultTiles, 0x06017200);
        break;
    }

    i = 0;
    dma = (volatile u32 *)0x040000D4;
    control = 0x80000080;
    busy = 0x80000000;
    do {
        register u32 offset asm("r1");
        register u32 value asm("r0");
        register int next asm("r1");
        offset = i << 10;
        dma[0] = (u32)(src + offset);
        dma[1] = (u32)(dst + offset);
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
