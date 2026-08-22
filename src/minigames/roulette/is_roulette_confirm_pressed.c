#include "minigames/roulette.h"

int IsRouletteConfirmPressed(void)
{
    if (gButtonsPressed & 1)
        return 1;
    return 0;
}
