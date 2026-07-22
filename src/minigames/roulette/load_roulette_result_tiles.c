#include "minigames/roulette.h"

void LoadRouletteResultTiles(void)
{
    volatile u32 *dma;
    const u8 *src;
    switch (gMinigameState) {
    case 9:
        dma = (volatile u32 *)0x040000D4;
        src = sRouletteMiddleResultTiles;
        goto transfer;
    case 11:
        dma = (volatile u32 *)0x040000D4;
        src = sRouletteBottomResultTiles;
transfer:
        dma[0] = (u32)src;
        dma[1] = 0x06013000;
        dma[2] = 0x80002000;
        dma[2];
        break;
    }
}
