#include "minigames/roulette.h"

int UpdateRouletteIntro(void)
{
    switch (gUnk_30047BB) {
    case 0:
        gUnk_30047BC++;
        if (gUnk_30047BC > 120) {
            gUnk_30047BB++;
            gUnk_30047BC = 0;
            gUnk_30047E4.active = 2;
        }
        break;
    case 1:
        gUnk_30047E4.scale += 20;
        if (gUnk_30047E4.scale > 0x200) {
            m4aSongNumStart(0x236);
            gUnk_30047E4.scale = 0x200;
            gUnk_30047BB++;
        }
        break;
    case 2:
        if (func_8089B9C(60)) {
            gUnk_30047BB = 0;
            return 1;
        }
        break;
    }
    return 0;
}
/* Keep the original two zero bytes as C data between functions; agbcc otherwise emits a Thumb NOP. */
__attribute__((section(".text"))) static const u16 sRouletteIntroAlignment = 0;
