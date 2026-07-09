#include "minigames/minigame_wario_hop.h"
#include "gba/m4a.h"


u32 func_808CB18(void)
{
    switch (gUnk_30047B9) {
        case 0:
            func_808D5AC();
            func_808D394();
            if (func_8089B9C(40) != 0) {
                gUnk_30047B9++;
            }
            break;
        case 1:
            func_808D5AC();
            func_808D394();
            gUnk_30047E4.unk4 -= 20;
            if (gUnk_30047E4.unk4 <= 31) {
                gUnk_30047E4.unk4 = 32;
                gUnk_30047E4.unkC = 0;
                gUnk_30047B9++;
            }
            break;
        case 2:
            func_808D5AC();
            func_808D394();
            if (func_808D028() != 0) {
                gUnk_30047B9++;
            }
            break;
        case 3:
            func_808D44C();
            func_808D7CC();
            if (func_8089B9C(120) != 0) {
                gUnk_30047B9++;
                gUnk_30047E4.unkC = 2;
            }
            break;
        case 4:
            func_808D44C();
            gUnk_30047E4.unk4 += 20;
            if (gUnk_30047E4.unk4 > 512) {
                m4aSongNumStart(0x236);
                gUnk_30047E4.unk4 = 512;
                gUnk_30047B9++;
            }
            break;
        case 5:
            func_808D44C();
            if (func_8089B9C(60) != 0) {
                gUnk_30047B9 = 0;
                return 1;
            }
            break;
    }

    return 0;
}

void func_808CC24(void)
{
    *(vu16 *)0x04000010 = (s16)gUnk_3004914[0] >> 4;
    *(vu16 *)0x04000014 = (s16)gUnk_3004918[0] >> 4;
    *(vu16 *)0x04000018 = (s16)gUnk_300491C[0] >> 4;
}
