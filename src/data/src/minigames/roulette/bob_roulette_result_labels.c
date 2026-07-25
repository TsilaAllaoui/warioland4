#include "minigames/roulette.h"

void BobRouletteResultLabels(void)
{
    register u16 value asm("r1");
    register u16 mask asm("r0");
    gRouletteFrameCounter++;
    value = gRouletteFrameCounter;
    mask = 0xF;
    value &= mask;
    if (value <= 3) {
        gRouletteTopResult.y++;
        gRouletteMiddleResult.y--;
        gRouletteBottomResult.y++;
    } else {
        register u16 wrappedFrame asm("r0");
        /* agbcc otherwise subtracts directly in r1; the target first copies to r0. */
        asm volatile("mov %0, %1" : "=r"(wrappedFrame) : "r"(value));
        if ((u16)(wrappedFrame - 8) <= 3) {
            gRouletteTopResult.y--;
            gRouletteMiddleResult.y++;
            gRouletteBottomResult.y--;
        }
    }
}
