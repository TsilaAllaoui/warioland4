#include "cutscenes/cutscene_layered_oam_anim.h"
#include "gba/m4a.h"

s32 SelectLayeredCutsceneOamSequence00(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame == 0 || frame == 15) {
        m4aSongNumStartOrChange(1);
    }
    if (frame <= 2) {
        *oamFrame = &sLayeredCutsceneOamFrame000;
    } else if (frame <= 6) {
        *oamFrame = &sLayeredCutsceneOamFrame001;
    } else if (frame <= 10) {
        *oamFrame = &sLayeredCutsceneOamFrame002;
    } else if (frame <= 13) {
        *oamFrame = &sLayeredCutsceneOamFrame003;
    } else if (frame <= 16) {
        *oamFrame = &sLayeredCutsceneOamFrame007;
    } else if (frame <= 20) {
        *oamFrame = &sLayeredCutsceneOamFrame004;
    } else if (frame <= 24) {
        *oamFrame = &sLayeredCutsceneOamFrame005;
    } else if (frame <= 28) {
        *oamFrame = &sLayeredCutsceneOamFrame006;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame007;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence01(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame <= 2) {
        *oamFrame = &sLayeredCutsceneOamFrame021;
    } else if (frame <= 6) {
        *oamFrame = &sLayeredCutsceneOamFrame022;
    } else if (frame <= 10) {
        *oamFrame = &sLayeredCutsceneOamFrame023;
    } else if (frame <= 13) {
        *oamFrame = &sLayeredCutsceneOamFrame024;
    } else if (frame <= 16) {
        *oamFrame = &sLayeredCutsceneOamFrame028;
    } else if (frame <= 20) {
        *oamFrame = &sLayeredCutsceneOamFrame025;
    } else if (frame <= 24) {
        *oamFrame = &sLayeredCutsceneOamFrame026;
    } else if (frame <= 28) {
        *oamFrame = &sLayeredCutsceneOamFrame027;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame028;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence02(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame == 0 || frame == 15) {
        m4aSongNumStartOrChange(5);
    }
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame008;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame009;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame010;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame011;
    } else if (frame <= 27) {
        *oamFrame = &sLayeredCutsceneOamFrame012;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame013;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence03(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame032;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame033;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame034;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame032;
    } else if (frame <= 27) {
        *oamFrame = &sLayeredCutsceneOamFrame033;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame034;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence04(s32 timer, u8 **oamFrame)
{
    *oamFrame = &sLayeredCutsceneOamFrame017;
    return timer == 3;
}

s32 SelectLayeredCutsceneOamSequence05(s32 timer, u8 **oamFrame)
{
    *oamFrame = &sLayeredCutsceneOamFrame035;
    return timer == 3;
}

s32 SelectLayeredCutsceneOamSequence06(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame018;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame020;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame019;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame020;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence07(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame036;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame037;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame038;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame037;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence08(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 18;
    if (frame <= 5) {
        *oamFrame = &sLayeredCutsceneOamFrame014;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame015;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame016;
    }

    return frame == 17;
}

s32 SelectLayeredCutsceneOamSequence09(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 18;
    if (frame <= 5) {
        *oamFrame = &sLayeredCutsceneOamFrame029;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame030;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame031;
    }

    return frame == 17;
}

s32 SelectLayeredCutsceneOamSequence10(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 32;
    if (frame == 0 || frame == 15) {
        m4aSongNumStartOrChange(1);
    }
    if (frame <= 2) {
        *oamFrame = &sLayeredCutsceneOamFrame039;
    } else if (frame <= 6) {
        *oamFrame = &sLayeredCutsceneOamFrame040;
    } else if (frame <= 10) {
        *oamFrame = &sLayeredCutsceneOamFrame041;
    } else if (frame <= 13) {
        *oamFrame = &sLayeredCutsceneOamFrame042;
    } else if (frame <= 16) {
        *oamFrame = &sLayeredCutsceneOamFrame046;
    } else if (frame <= 20) {
        *oamFrame = &sLayeredCutsceneOamFrame043;
    } else if (frame <= 24) {
        *oamFrame = &sLayeredCutsceneOamFrame044;
    } else if (frame <= 28) {
        *oamFrame = &sLayeredCutsceneOamFrame045;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame046;
    }

    return frame == 31;
}

s32 SelectLayeredCutsceneOamSequence11(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 24;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame050;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame051;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame052;
    }

    return frame == 23;
}

s32 SelectLayeredCutsceneOamSequence12(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 18;
    if (frame <= 5) {
        *oamFrame = &sLayeredCutsceneOamFrame047;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame048;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame049;
    }

    return frame == 17;
}

s32 SelectLayeredCutsceneOamSequence13(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 14;
    if (frame <= 5) {
        *oamFrame = &sLayeredCutsceneOamFrame053;
    } else if (frame <= 9) {
        *oamFrame = &sLayeredCutsceneOamFrame054;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame055;
    }

    return frame == 13;
}

s32 SelectLayeredCutsceneOamSequence14(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 148;
    if (frame <= 19) {
        *oamFrame = &sLayeredCutsceneOamFrame054;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame059;
    } else if (frame <= 27) {
        *oamFrame = &sLayeredCutsceneOamFrame058;
    } else if (frame <= 47) {
        *oamFrame = &sLayeredCutsceneOamFrame056;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame057;
    }

    return frame == 147;
}

s32 SelectLayeredCutsceneOamSequence15(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 12;
    if (frame <= 3) {
        *oamFrame = &sLayeredCutsceneOamFrame057;
    } else if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame058;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame059;
    }

    return frame == 11;
}

s32 SelectLayeredCutsceneOamSequence16(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 24;
    if (frame == 0 || frame == 12) {
        m4aSongNumStartOrChange(1);
    }
    if (frame <= 3) {
        *oamFrame = &sLayeredCutsceneOamFrame060;
    } else if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame061;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame062;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame063;
    } else if (frame <= 19) {
        *oamFrame = &sLayeredCutsceneOamFrame064;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame065;
    }

    return frame == 23;
}

s32 SelectLayeredCutsceneOamSequence17(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 16;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame066;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame067;
    }

    return frame == 15;
}

s32 SelectLayeredCutsceneOamSequence18(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 24;
    if (frame == 0 || frame == 12) {
        m4aSongNumStartOrChange(1);
    }
    if (frame <= 3) {
        *oamFrame = &sLayeredCutsceneOamFrame068;
    } else if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame069;
    } else if (frame <= 11) {
        *oamFrame = &sLayeredCutsceneOamFrame070;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame071;
    } else if (frame <= 19) {
        *oamFrame = &sLayeredCutsceneOamFrame072;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame073;
    }

    return frame == 23;
}

s32 SelectLayeredCutsceneOamSequence19(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 16;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame074;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame075;
    }

    return frame == 15;
}

s32 SelectLayeredCutsceneOamSequence20(s32 timer, u8 **oamFrame)
{
    s32 frame;

    frame = timer % 136;
    if (frame <= 7) {
        *oamFrame = &sLayeredCutsceneOamFrame076;
    } else if (frame <= 15) {
        *oamFrame = &sLayeredCutsceneOamFrame077;
    } else if (frame <= 23) {
        *oamFrame = &sLayeredCutsceneOamFrame090;
    } else if (frame <= 31) {
        *oamFrame = &sLayeredCutsceneOamFrame078;
    } else if (frame <= 39) {
        *oamFrame = &sLayeredCutsceneOamFrame079;
    } else if (frame <= 47) {
        *oamFrame = &sLayeredCutsceneOamFrame090;
    } else if (frame <= 55) {
        *oamFrame = &sLayeredCutsceneOamFrame080;
    } else if (frame <= 63) {
        *oamFrame = &sLayeredCutsceneOamFrame081;
    } else if (frame <= 71) {
        *oamFrame = &sLayeredCutsceneOamFrame082;
    } else if (frame <= 79) {
        *oamFrame = &sLayeredCutsceneOamFrame083;
    } else if (frame <= 87) {
        *oamFrame = &sLayeredCutsceneOamFrame084;
    } else if (frame <= 95) {
        *oamFrame = &sLayeredCutsceneOamFrame085;
    } else if (frame <= 103) {
        *oamFrame = &sLayeredCutsceneOamFrame086;
    } else if (frame <= 111) {
        *oamFrame = &sLayeredCutsceneOamFrame087;
    } else if (frame <= 119) {
        *oamFrame = &sLayeredCutsceneOamFrame088;
    } else if (frame <= 127) {
        *oamFrame = &sLayeredCutsceneOamFrame090;
    } else {
        *oamFrame = &sLayeredCutsceneOamFrame089;
    }

    return frame == 135;
}

void SelectLayeredCutsceneOamSequence21(s32 timer, u8 **oamFrame)
{
    register u8 *frameOam asm("r2");

    frameOam = &sLayeredCutsceneOamFrame091;
    *oamFrame = frameOam;
}

void SelectLayeredCutsceneOamSequence22(s32 timer, u8 **oamFrame)
{
    register u8 *frameOam asm("r2");

    frameOam = &sLayeredCutsceneOamFrame092;
    *oamFrame = frameOam;
}

void SelectLayeredCutsceneOamSequence23(s32 timer, u8 **oamFrame)
{
    register u8 *frameOam asm("r2");

    frameOam = &sLayeredCutsceneOamFrame093;
    *oamFrame = frameOam;
}

void SelectLayeredCutsceneOamSequence24(s32 timer, u8 **oamFrame)
{
    register u8 *frameOam asm("r2");

    frameOam = &sLayeredCutsceneOamFrame094;
    *oamFrame = frameOam;
}