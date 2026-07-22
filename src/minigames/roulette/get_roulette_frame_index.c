#include "minigames/roulette.h"

int GetRouletteFrameIndex(u8 value)
{
    int result;
    result = 0;
    if (value != 0)
        result = gRouletteOamOrder[value - 1] + 1;
    return result;
}
