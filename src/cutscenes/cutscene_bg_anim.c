#include "cutscenes/cutscene_bg_anim.h"

s32 SelectCutsceneBgAnimation72Frame(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 72;

    if (frame <= 19)
        *ppData = &sUnk_829F590;
    else if (frame <= 23)
        *ppData = &sUnk_829F5D4;
    else if (frame <= 27)
        *ppData = &sUnk_829F63C;
    else if (frame <= 31)
        *ppData = &sUnk_829F686;
    else if (frame <= 37)
        *ppData = &sUnk_829F6B8;
    else if (frame <= 43)
        *ppData = &sUnk_829F6E4;
    else if (frame <= 47)
        *ppData = &sUnk_829F738;
    else if (frame <= 51)
        *ppData = &sUnk_829F764;
    else if (frame <= 55)
        *ppData = &sUnk_829F790;
    else if (frame <= 59)
        *ppData = &sUnk_829F7E6;
    else if (frame <= 63)
        *ppData = &sUnk_829F85A;
    else if (frame <= 67)
        *ppData = &sUnk_829F8AA;
    else
        *ppData = &sUnk_829F8FA;

    return frame == 71;
}

s32 SelectCutsceneBgAnimation28Frame(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 28;

    if (frame <= 7) {
        *ppData = &sUnk_829F4DC;
    } else {
        if (frame > 13) {
            if (frame <= 21) {
                *ppData = &sUnk_829F558;
                return frame == 27;
            }
        }
        *ppData = &sUnk_829F520;
    }

    return frame == 27;
}

s32 SelectCutsceneBgAnimation36Frame(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 36;

    if (frame <= 5)
        *ppData = &sUnk_829F4D4;
    else if (frame <= 11)
        *ppData = &sUnk_829F710;
    else if (frame <= 17)
        *ppData = &sUnk_829F718;
    else if (frame <= 23)
        *ppData = &sUnk_829F720;
    else if (frame <= 29)
        *ppData = &sUnk_829F728;
    else
        *ppData = &sUnk_829F730;

    return frame == 35;
}

s32 SelectCutsceneBgAnimation24Frame(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 24;

    if (frame <= 5)
        *ppData = &sUnk_829F93E;
    else if (frame <= 11)
        *ppData = &sUnk_829F946;
    else if (frame <= 17)
        *ppData = &sUnk_829F94E;
    else
        *ppData = &sUnk_829F956;

    return frame == 0;
}

void CutsceneLoadBgObjPalette(u32 paletteFrame)
{
    vu32 *dma;
    s32 offset;

    if (paletteFrame <= 7) {
        dma = (vu32 *)0x040000D4;
        offset = (paletteFrame * 15) * 2;

        dma[0] = (u32)(&sUnk_829FA86 + offset);
        dma[1] = 0x05000002;
        dma[2] = 0x8000000F;
        dma[2];

        dma[0] = (u32)(&sUnk_829FB76 + offset);
        dma[1] = 0x05000202;
        dma[2] = 0x8000000F;
        dma[2];

        offset = (paletteFrame * 7) * 4;
        dma[0] = (u32)(&sUnk_829FC66 + offset);
        dma[1] = 0x05000222;
        dma[2] = 0x8000000E;
        dma[2];
    }
}
