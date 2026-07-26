#include "minigames/roulette.h"

void UpdateRouletteResultTiles(void)
{
    u8 *src;
    u8 *dst;
    int i;
    volatile u32 *dma;
    register u32 control;
    u32 busy;

    switch (gMinigameState) {
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
        u32 offset;
        u32 value;
        int next;
        offset = i << 10;
        dma[0] = (u32)(src + offset);
        dma[1] = (u32)(dst + offset);
        dma[2] = control;
        value = dma[2];
        value = dma[2];
        value &= busy;
        next = i + 1;
        if (value != 0) {
            u32 pollMask;
            pollMask = 0x80000000;
            do {
                value = dma[2];
                value &= pollMask;
            } while (value != 0);
        }
        i = next;
    } while (i <= 3);
}
