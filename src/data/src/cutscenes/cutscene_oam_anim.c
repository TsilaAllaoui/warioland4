#include "cutscenes/cutscene_oam_anim.h"
#include "global_data.h"

s32 SelectCutsceneOamAnimation01(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 9;

    if (frame <= 5) {
        *ppOamData = sUnk_829A7C0;
    } else {
        *ppOamData = sUnk_829A7E6;
    }

    return frame == 8;
}

s32 SelectCutsceneOamAnimation02(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 9;

    if (frame <= 5) {
        *ppOamData = sUnk_829A80C;
    } else {
        *ppOamData = sUnk_829A850;
    }

    return frame == 8;
}

s32 SelectCutsceneOamAnimation03(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 16;

    if (frame <= 3) {
        *ppOamData = sUnk_829A894;
    } else if (frame <= 7) {
        *ppOamData = sUnk_829A8A8;
    } else if (frame <= 11) {
        *ppOamData = sUnk_829A8BC;
    } else {
        *ppOamData = sUnk_829A8D0;
    }

    return frame == 15;
}

void SetCutsceneOamFrame01(u16 **ppOamData)
{
    *ppOamData = sUnk_829A8E4;
}

void SetCutsceneOamFrame02(u16 **ppOamData)
{
    *ppOamData = sUnk_829A8F8;
}

void SetCutsceneOamFrame03(u16 **ppOamData)
{
    *ppOamData = sUnk_829A90C;
}

s32 SelectCutsceneOamAnimation04(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 24;

    if (frame <= 7) {
        *ppOamData = sUnk_829A926;
    } else if (frame <= 15) {
        *ppOamData = sUnk_829A92E;
    } else {
        *ppOamData = sUnk_829A936;
    }

    return frame == 23;
}

s32 SelectCutsceneOamAnimation05(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 116;

    if (frame <= 7) {
        *ppOamData = sUnk_829A9A6;
    } else if (frame <= 15) {
        *ppOamData = sUnk_829A9AE;
    } else {
        *ppOamData = sUnk_829A9B6;
    }

    return frame == 115;
}

s32 SelectCutsceneOamAnimation06(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 24;

    if (frame <= 5) {
        *ppOamData = sUnk_829A9BE;
    } else if (frame <= 11) {
        *ppOamData = sUnk_829A9D8;
    } else if (frame <= 17) {
        *ppOamData = sUnk_829A9F2;
    } else {
        *ppOamData = sUnk_829AA0C;
    }

    return frame == 23;
}

s32 SelectCutsceneOamAnimation07(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 9;

    if (frame <= 5) {
        *ppOamData = sUnk_829AA5E;
    } else {
        *ppOamData = sUnk_829AA6C;
    }

    return frame == 8;
}

s32 SelectCutsceneBlinkOamAnimation01(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 8;

    if (frame <= 1) {
        *ppOamData = sUnk_829AA7A;
    } else if (frame <= 3) {
        *ppOamData = 0;
    } else if (frame <= 5) {
        *ppOamData = sUnk_829AA94;
    } else {
        *ppOamData = 0;
    }

    return frame == 7;
}

s32 SelectCutsceneBlinkOamAnimation02(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 4;

    if (frame <= 0) {
        *ppOamData = sUnk_829AAAE;
    } else if (frame <= 1) {
        *ppOamData = 0;
    } else if (frame <= 2) {
        *ppOamData = sUnk_829AAE0;
    } else {
        *ppOamData = 0;
    }

    return frame == 3;
}

s32 SelectCutsceneOamAnimation08(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 42;

    if (frame <= 2) {
        *ppOamData = sUnk_829AB84;
    } else if (frame <= 5) {
        *ppOamData = sUnk_829ABB6;
    } else if (frame <= 9) {
        *ppOamData = sUnk_829AC00;
    } else if (frame <= 13) {
        *ppOamData = sUnk_829AC62;
    } else if (frame <= 18) {
        *ppOamData = sUnk_829ACC4;
    } else if (frame <= 23) {
        *ppOamData = sUnk_829AD0E;
    } else if (frame <= 29) {
        *ppOamData = sUnk_829AD58;
    } else if (frame <= 35) {
        *ppOamData = sUnk_829AD8A;
    } else {
        *ppOamData = sUnk_829ADA4;
    }

    return frame == 41;
}

void SetCutsceneOamFrame04(u16 **ppOamData)
{
    *ppOamData = sUnk_829AB1E;
}

void SetCutsceneOamFrame05(u16 **ppOamData)
{
    *ppOamData = sUnk_829AB2C;
}

void SetCutsceneOamFrame06(u16 **ppOamData)
{
    *ppOamData = sUnk_829AB46;
}

void SetCutsceneOamFrame07(u16 **ppOamData)
{
    *ppOamData = sUnk_829ADBE;
}

void SetCutsceneOamFrame08(u16 **ppOamData)
{
    *ppOamData = sUnk_829AA56;
}

void SetCutsceneOamFrame09(u16 **ppOamData)
{
    *ppOamData = sUnk_829A93E;
}

void SetCutsceneOamFrame10(u16 **ppOamData)
{
    *ppOamData = sUnk_829A952;
}

void SetCutsceneOamFrame11(u16 **ppOamData)
{
    *ppOamData = sUnk_829A966;
}

void SetCutsceneOamFrame12(u16 **ppOamData)
{
    *ppOamData = sUnk_829A986;
}

void SetCutsceneOamFrame13(u16 **ppOamData)
{
    *ppOamData = sUnk_829AA26;
}

void SetCutsceneOamFrame14(u16 **ppOamData)
{
    *ppOamData = sUnk_829AA3A;
}

void SetCutsceneOamFrame15(u16 **ppOamData)
{
    *ppOamData = sUnk_829AA48;
}

s32 SelectCutsceneOamAnimation09(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 24;

    if (frame <= 7) {
        *ppOamData = sUnk_829ADEA;
    } else if (frame <= 15) {
        *ppOamData = sUnk_829ADF8;
    } else {
        *ppOamData = sUnk_829AE06;
    }

    return frame == 23;
}

s32 SelectCutsceneOamAnimation10(s32 timer, u16 **ppOamData)
{
    s32 frame;

    frame = timer % 116;

    if (frame <= 7) {
        *ppOamData = sUnk_829AE14;
    } else if (frame <= 15) {
        *ppOamData = sUnk_829AE22;
    } else {
        *ppOamData = sUnk_829AE30;
    }

    return frame == 115;
}

void CutsceneLoadObjPalette(u32 paletteFrame)
{
    if (paletteFrame <= 15) {
        vu32 *dma;
        u32 offset;
        u32 control;

        dma = (vu32 *)0x040000D4;
        offset = paletteFrame << 5;

        dma[0] = (u32)(sUnk_829AE3E + offset);
        dma[1] = 0x05000200;
        control = 0x80000010;
        dma[2] = control;
        dma[2];

        dma[0] = (u32)(sUnk_829B03E + offset);
        dma[1] = 0x05000220;
        dma[2] = control;
        dma[2];
    }
}
