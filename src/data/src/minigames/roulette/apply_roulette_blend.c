#include "minigames/roulette.h"

void ApplyRouletteBlend(void)
{
    *(volatile u16 *)0x04000052 = ((*(s8 *)&gRouletteBlendEva) << 8) | gRouletteBlendEvb;
}
