#include "minigames/roulette.h"

void ShuffleRouletteValuePool(void)
{
    int i;
    int index;
    u8 swappedValue;
    for (i = 0; i < gRouletteValueCount; i++)
        gRouletteValuePool[i] = i;
    for (i = gRouletteValueCount - 1; i > 0; i--) {
        index = __modsi3(MinigameRandom(), i);
        swappedValue = gRouletteValuePool[i];
        gRouletteValuePool[i] = gRouletteValuePool[index];
        gRouletteValuePool[index] = swappedValue;
    }
}
