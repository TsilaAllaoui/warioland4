#include "minigame_transition.h"
#include "global_data.h"
#include "main.h"

#define SUBGAME_MODE_DELAYED_RETURN 46
#define SUBGAME_MODE_RETURN_TARGET 17
#define SUBGAME_INIT_DELAY_FRAMES 0x15

extern u8 gUnk_3002C6C;
extern u8 gUnk_3002C60;
extern u8 gUnk_3002C64;
extern u8 gUnk_3002C74;
extern OamData* gUnk_3002C70;

void SubGameInitAndDispatch(u32 subGameMode)
{
    u32 value;

    func_800B580(subGameMode);
    REG_DISPCNT = 0;
    func_800B6C0();

    gUnk_3002C6C = 0;
    gUnk_3002C70 = gOamBuffer;

    value = 0xA0;
    {
        register vu32 *dmaRegs asm("r1") = (vu32 *)REG_ADDR_DMA3SAD;
        dmaRegs[0] = (u32)&value;
        dmaRegs[1] = 0x07000000;
        dmaRegs[2] = 0x85000100;
        dmaRegs[2];
    }

    func_80033BC();
    func_8003428();

    gUnk_300188E = 0;
    gUnk_3002C60 = 0;
    gUnk_3002C64 = 0;

    switch (subGameMode) {
        case 0:
            SubGameClearGraphicsMemory();
            break;
        case 2:
            func_8003C90();
            break;
        case 4:
            func_8003F88();
            break;
        case 6:
            func_8004244();
            break;
        case 8:
            func_8004350();
            break;
        case 10:
            func_80046D8();
            break;
        case 12:
            func_8004B14();
            break;
        case 14:
            func_800542C();
            break;
        case 16:
            func_8005CC0();
            break;
        case 19:
            func_8006680();
            break;
        case 21:
            func_8006E00();
            break;
        case 23:
            func_80077C4();
            break;
        case 26:
            func_8007B14();
            break;
        case 28:
            func_8008900();
            break;
        case 30:
            func_8009B38();
            break;
        case 32:
            func_800A180();
            break;
        case 43:
            func_800AFDC();
            break;
        case 41:
            func_80057BC();
            break;
        case SUBGAME_MODE_DELAYED_RETURN:
            gUnk_3002C74 = 1;
            func_8005CC0();
            break;
    }

    if (subGameMode == SUBGAME_MODE_DELAYED_RETURN) {
        gSubGameMode = SUBGAME_MODE_RETURN_TARGET;
    } else {
        gSubGameMode++;
    }
}

void SubGameClearGraphicsMemory(void)
{
    u32 value;

    value = 0;
    {
        register vu32 *dmaRegs asm("r0") = (vu32 *)REG_ADDR_DMA3SAD;
        dmaRegs[0] = (u32)&value;
        dmaRegs[1] = 0x05000000;
        dmaRegs[2] = 0x85000100;
        dmaRegs[2];

        value = -1;
        dmaRegs[0] = (u32)&value;
        dmaRegs[1] = 0x06007F80;
        dmaRegs[2] = 0x85000010;
        dmaRegs[2];

        value = 0;
        dmaRegs[0] = (u32)&value;
        dmaRegs[1] = 0x06007FC0;
        dmaRegs[2] = 0x85000010;
        dmaRegs[2];

        value = 0x03FF03FF;
        dmaRegs[0] = (u32)&value;
        dmaRegs[1] = 0x06008000;
        dmaRegs[2] = 0x85001000;
        dmaRegs[2];
    }

    REG_BLDCNT = 0;
    REG_BLDALPHA = 0;
    REG_DISPCNT = 0;
}

void SubGameWaitAndAdvance(void)
{
    s32 frameCounter;

    frameCounter = gUnk_3002C64 + 1;
    gUnk_3002C64 = frameCounter;
    if (frameCounter == SUBGAME_INIT_DELAY_FRAMES) {
        gSubGameMode = (u16)gSubGameMode + 1;
    }
}
