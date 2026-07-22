#include "minigames/roulette.h"
#include "minigame.h"

void ShuffleRouletteOamTable(void)
{
    register int i asm("r4");
    int index;
    u8 swappedOrder;

    {
        register const u16 **dst asm("r1");
        register const u16 **frames asm("r0");
        dst = gRouletteItemOamTable;
        frames = sRouletteItemOamFrames;
        *dst = *frames;
    }

    {
        register u8 *order asm("r0");
        order = gRouletteOamOrder;
        /* Prevent agbcc from folding +13 into the relocation addend. */
        asm volatile("" : "+r"(order));
        i = 13;
        order += 13;
        do {
            *order-- = i;
            i--;
        } while (i >= 0);
    }

    {
        register u8 *order asm("r5");
        register u8 *current asm("r2");
        register u8 *random asm("r0");
        i = 13;
        order = gRouletteOamOrder;
        do {
            index = __modsi3(MinigameRandom(), i);
            current = (u8 *)((unsigned int)i + (unsigned int)order);
            swappedOrder = *current;
            random = (u8 *)index;
            /* agbcc commutes this pointer add; keep the target r0 + r5 operand order. */
            asm volatile("add %0, %0, %1" : "+r"(random) : "r"(order));
            *current = *random;
            *random = swappedOrder;
            i--;
        } while (i > 0);
    }

    {
        register const u16 **dstBase asm("r0");
        register const u16 **frames asm("r3");
        register u8 *order asm("r1");
        register const u16 **dst asm("r2");
        dstBase = gRouletteItemOamTable;
        frames = sRouletteItemOamFrames;
        order = gRouletteOamOrder;
        dst = dstBase + 1;
        i = 13;
        do {
            register int frameIndex asm("r0");
            frameIndex = *order;
            frameIndex++;
            *dst++ = frames[frameIndex];
            order++;
            i--;
        } while (i >= 0);
    }
}
