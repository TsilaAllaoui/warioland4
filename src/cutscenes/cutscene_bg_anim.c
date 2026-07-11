#include "cutscenes/cutscene_bg_anim.h"

s32 func_800C264(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 72;
    if (frame <= 19) {
        *ppData = &sUnk_829F590;
        return frame == 71;
    }
    if (frame <= 23) {
        *ppData = &sUnk_829F5D4;
        return frame == 71;
    }
    if (frame <= 27) {
        *ppData = &sUnk_829F63C;
        return frame == 71;
    }
    if (frame <= 31) {
        *ppData = &sUnk_829F686;
        return frame == 71;
    }
    if (frame <= 37) {
        *ppData = &sUnk_829F6B8;
        return frame == 71;
    }
    if (frame <= 43) {
        *ppData = &sUnk_829F6E4;
        return frame == 71;
    }
    if (frame <= 47) {
        *ppData = &sUnk_829F738;
        return frame == 71;
    }
    if (frame <= 51) {
        *ppData = &sUnk_829F764;
        return frame == 71;
    }
    if (frame <= 55) {
        *ppData = &sUnk_829F790;
        return frame == 71;
    }
    if (frame <= 59) {
        *ppData = &sUnk_829F7E6;
        return frame == 71;
    }
    if (frame <= 63) {
        *ppData = &sUnk_829F85A;
        return frame == 71;
    }
    if (frame <= 67) {
        *ppData = &sUnk_829F8AA;
        return frame == 71;
    }

    *ppData = &sUnk_829F8FA;
    return frame == 71;
}

s32 func_800C318(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 28;
    if (frame <= 7) {
        *ppData = &sUnk_829F4DC;
         return frame == 27;
    }
    if (frame > 13) {
        if (frame <= 21) {
            *ppData = &sUnk_829F558;
             return frame == 27;
        }
    }
    *ppData = &sUnk_829F520;
    return frame == 27;
}

s32 func_800C358(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 36;
    if (frame <= 5) {
        *ppData = &sUnk_829F4D4;
        return frame == 35;
    }
    if (frame <= 11) {
        *ppData = &sUnk_829F710;
        return frame == 35;
    }
    if (frame <= 17) {
        *ppData = &sUnk_829F718;
        return frame == 35;
    }
    if (frame <= 23) {
        *ppData = &sUnk_829F720;
        return frame == 35;
    }
    if (frame <= 29) {
        *ppData = &sUnk_829F728;
        goto done;
    }
    *ppData = &sUnk_829F730;

done:
    return frame == 35;
}

s32 func_800C3B8(s32 timer, u8 **ppData)
{
    s32 frame;

    frame = timer % 24;
    if (frame <= 5) {
        *ppData = &sUnk_829F93E;
        return frame == 0;
    }
    if (frame <= 11) {
        *ppData = &sUnk_829F946;
         return frame == 0;
    }
    if (frame <= 17) {
        *ppData = &sUnk_829F94E;
        goto done;
    }
    *ppData = &sUnk_829F956;

done:
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
