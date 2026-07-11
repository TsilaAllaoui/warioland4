#include "cutscenes/cutscene_ending_oam_paths.h"
#include "gba/m4a.h"

s32 SelectEndingCutsceneOamSequence00(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame000;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame001;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame002;
    else
        *oamFrame = sEndingCutsceneOamFrame001;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence01(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame003;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame004;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame005;
    else
        *oamFrame = sEndingCutsceneOamFrame004;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence02(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame022;

    return timer > 98;
}

s32 SelectEndingCutsceneOamSequence03(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame021;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame022;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame023;
    else
        *oamFrame = sEndingCutsceneOamFrame022;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence04(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 20;

    if (frame <= 9)
        *oamFrame = sEndingCutsceneOamFrame006;
    else
        *oamFrame = sEndingCutsceneOamFrame007;

    return frame == 19;
}

s32 SelectEndingCutsceneOamSequence05(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 184;

    if (frame <= 99)
        *oamFrame = sEndingCutsceneOamFrame010;
    else if (frame <= 103)
        *oamFrame = sEndingCutsceneOamFrame008;
    else if (frame <= 107)
        *oamFrame = sEndingCutsceneOamFrame009;
    else if (frame <= 111)
        *oamFrame = sEndingCutsceneOamFrame008;
    else if (frame <= 121)
        *oamFrame = sEndingCutsceneOamFrame010;
    else if (frame <= 125)
        *oamFrame = sEndingCutsceneOamFrame008;
    else if (frame <= 129)
        *oamFrame = sEndingCutsceneOamFrame009;
    else if (frame <= 133)
        *oamFrame = sEndingCutsceneOamFrame008;
    else
        *oamFrame = sEndingCutsceneOamFrame010;

    return frame == 183;
}

s32 SelectEndingCutsceneOamSequence06(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame011;

    return timer > 98;
}

s32 SelectEndingCutsceneOamSequence07(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame012;

    return timer > 98;
}

s32 SelectEndingCutsceneOamSequence08(s32 timer, u16 **oamFrame)
{

    if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame013;
    else if (timer <= 15)
        *oamFrame = sEndingCutsceneOamFrame014;
    else if (timer <= 23)
        *oamFrame = sEndingCutsceneOamFrame015;
    else if (timer <= 43)
        *oamFrame = sEndingCutsceneOamFrame016;
    else if (timer <= 47)
        *oamFrame = sEndingCutsceneOamFrame017;
    else if (timer <= 51)
        *oamFrame = sEndingCutsceneOamFrame018;
    else if (timer <= 59)
        *oamFrame = sEndingCutsceneOamFrame016;
    else if (timer <= 65)
        *oamFrame = sEndingCutsceneOamFrame017;
    else if (timer <= 71)
        *oamFrame = sEndingCutsceneOamFrame018;
    else
        *oamFrame = sEndingCutsceneOamFrame016;

    return timer > 170;
}

s32 SelectEndingCutsceneOamSequence09(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 16;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame019;
    else
        *oamFrame = sEndingCutsceneOamFrame020;

    return frame == 15;
}

s32 SelectEndingCutsceneOamSequence10(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame016;

    return timer > 2;
}

s32 SelectEndingCutsceneOamSequence11(s32 timer, u16 **oamFrame)
{

    if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame024;
    else if (timer <= 15)
        *oamFrame = sEndingCutsceneOamFrame025;
    else if (timer <= 23)
        *oamFrame = sEndingCutsceneOamFrame026;
    else if (timer <= 31)
        *oamFrame = sEndingCutsceneOamFrame027;
    else
        *oamFrame = sEndingCutsceneOamFrame028;

    return timer > 130;
}

s32 SelectEndingCutsceneOamSequence12(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 24;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame028;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame029;
    else
        *oamFrame = sEndingCutsceneOamFrame030;

    return frame == 23;
}

s32 SelectEndingCutsceneOamSequence13(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 48;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame028;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame029;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame030;
    else if (frame <= 31)
        *oamFrame = sEndingCutsceneOamFrame031;
    else if (frame <= 39)
        *oamFrame = sEndingCutsceneOamFrame032;
    else
        *oamFrame = sEndingCutsceneOamFrame033;

    return frame == 47;
}

s32 SelectEndingCutsceneOamSequence14(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame024;

    return timer > 2;
}

s32 SelectEndingCutsceneOamSequence15(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame035;

    return timer > 2;
}

s32 SelectEndingCutsceneOamSequence16(s32 timer, u16 **oamFrame)
{

    if (timer <= 44)
        *oamFrame = sEndingCutsceneOamFrame024;
    else if (timer <= 106)
        *oamFrame = sEndingCutsceneOamFrame034;
    else
        *oamFrame = sEndingCutsceneOamFrame035;

    return timer == 126;
}

s32 SelectEndingCutsceneOamSequence17(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 24;

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame033;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame032;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame031;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame030;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame029;
    else
        *oamFrame = sEndingCutsceneOamFrame028;

    return frame == 23;
}

s32 SelectEndingCutsceneOamSequence18(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 30;

    if (frame <= 5)
        *oamFrame = sEndingCutsceneOamFrame036;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame037;
    else if (frame <= 17)
        *oamFrame = sEndingCutsceneOamFrame038;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame039;
    else
        *oamFrame = 0;

    return frame == 29;
}

s32 SelectEndingCutsceneOamSequence19(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 30;

    if (frame <= 5)
        *oamFrame = sEndingCutsceneOamFrame040;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame041;
    else if (frame <= 17)
        *oamFrame = sEndingCutsceneOamFrame042;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame043;
    else
        *oamFrame = 0;

    return frame == 29;
}

s32 SelectEndingCutsceneOamSequence20(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 30;

    if (frame <= 5)
        *oamFrame = sEndingCutsceneOamFrame044;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame045;
    else if (frame <= 17)
        *oamFrame = sEndingCutsceneOamFrame046;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame047;
    else
        *oamFrame = 0;

    return frame == 29;
}

s32 SelectEndingCutsceneOamSequence21(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame048;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence22(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame049;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence23(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame050;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence24(s32 timer, u16 **oamFrame)
{

    *oamFrame = sEndingCutsceneOamFrame051;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence25(s32 timer, u16 **oamFrame)
{
    *oamFrame = sEndingCutsceneOamFrame052;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence25Frame053(s32 timer, u16 **oamFrame)
{
    *oamFrame = sEndingCutsceneOamFrame053;

    return timer == 3;
}

s32 SelectEndingCutsceneOamSequence26(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame054;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame055;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame056;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame057;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame058;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame059;
    else if (frame <= 27)
        *oamFrame = sEndingCutsceneOamFrame060;
    else
        *oamFrame = sEndingCutsceneOamFrame061;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence27(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 72;

    if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame062;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame063;
    else if (frame <= 35)
        *oamFrame = sEndingCutsceneOamFrame064;
    else if (frame <= 47)
        *oamFrame = sEndingCutsceneOamFrame065;
    else if (frame <= 59)
        *oamFrame = sEndingCutsceneOamFrame066;
    else
        *oamFrame = sEndingCutsceneOamFrame067;

    return frame == 71;
}

s32 SelectEndingCutsceneOamSequence28(s32 timer, u16 **oamFrame)
{

    if (timer <= 3)
        *oamFrame = sEndingCutsceneOamFrame068;
    else if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame069;
    else if (timer <= 11)
        *oamFrame = sEndingCutsceneOamFrame070;
    else if (timer <= 15)
        *oamFrame = sEndingCutsceneOamFrame071;
    else if (timer <= 19)
        *oamFrame = sEndingCutsceneOamFrame072;
    else if (timer <= 23)
        *oamFrame = sEndingCutsceneOamFrame073;
    else if (timer <= 27)
        *oamFrame = sEndingCutsceneOamFrame074;
    else if (timer <= 31)
        *oamFrame = sEndingCutsceneOamFrame075;
    else
        *oamFrame = 0;

    return timer > 30;
}

s32 SelectEndingCutsceneOamSequence29(s32 timer, u16 **oamFrame)
{

    if (timer <= 1)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 3)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 5)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 9)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 11)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 13)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 17)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 21)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 25)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 29)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 33)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 37)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 41)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 45)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 49)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 53)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 57)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 61)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 65)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 69)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 73)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 77)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 81)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 85)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 105)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 107)
        *oamFrame = sEndingCutsceneOamFrame084;
    else if (timer <= 109)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 111)
        *oamFrame = sEndingCutsceneOamFrame084;
    else if (timer <= 113)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 163)
        *oamFrame = sEndingCutsceneOamFrame084;
    else if (timer <= 213)
        *oamFrame = sEndingCutsceneOamFrame085;
    else if (timer <= 221)
        *oamFrame = sEndingCutsceneOamFrame084;
    else if (timer <= 241)
        *oamFrame = sEndingCutsceneOamFrame085;
    else if (timer <= 247)
        *oamFrame = sEndingCutsceneOamFrame084;
    else if (timer <= 297)
        *oamFrame = sEndingCutsceneOamFrame085;
    else if (timer <= 347)
        *oamFrame = sEndingCutsceneOamFrame086;
    else
        *oamFrame = sEndingCutsceneOamFrame085;

    if (timer == 78)
        m4aSongNumStartOrChange(425);

    if (timer == 114)
        return 2;
    return timer > 347;
}

s32 SelectEndingCutsceneOamSequence30(s32 timer, u16 **oamFrame)
{

    if (timer <= 1)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 3)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 5)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 9)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 11)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 13)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 15)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 19)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 23)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 27)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 31)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 35)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 39)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 43)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 47)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 51)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 55)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 59)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 63)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 67)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 71)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 75)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 79)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 83)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 103)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 105)
        *oamFrame = sEndingCutsceneOamFrame089;
    else if (timer <= 107)
        *oamFrame = sEndingCutsceneOamFrame087;
    else if (timer <= 109)
        *oamFrame = sEndingCutsceneOamFrame089;
    else if (timer <= 111)
        *oamFrame = sEndingCutsceneOamFrame087;
    else if (timer <= 161)
        *oamFrame = sEndingCutsceneOamFrame089;
    else if (timer <= 211)
        *oamFrame = sEndingCutsceneOamFrame088;
    else if (timer <= 219)
        *oamFrame = sEndingCutsceneOamFrame089;
    else if (timer <= 239)
        *oamFrame = sEndingCutsceneOamFrame088;
    else if (timer <= 245)
        *oamFrame = sEndingCutsceneOamFrame089;
    else if (timer <= 295)
        *oamFrame = sEndingCutsceneOamFrame088;
    else if (timer <= 345)
        *oamFrame = sEndingCutsceneOamFrame090;
    else
        *oamFrame = sEndingCutsceneOamFrame088;

    if (timer == 76)
        m4aSongNumStartOrChange(425);

    if (timer == 112)
        return 2;
    return timer > 345;
}

s32 SelectEndingCutsceneOamSequence31(s32 timer, u16 **oamFrame)
{

    if (timer <= 1)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 3)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 5)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 9)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 11)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 13)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 17)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 21)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 25)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 29)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 33)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 37)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 41)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 45)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 49)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 53)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 57)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 61)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 65)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 69)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 73)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 77)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 81)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 85)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 105)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 109)
        *oamFrame = sEndingCutsceneOamFrame100;
    else if (timer <= 113)
        *oamFrame = sEndingCutsceneOamFrame099;
    else if (timer <= 117)
        *oamFrame = sEndingCutsceneOamFrame101;
    else if (timer <= 121)
        *oamFrame = sEndingCutsceneOamFrame099;
    else if (timer <= 125)
        *oamFrame = sEndingCutsceneOamFrame100;
    else if (timer <= 127)
        *oamFrame = sEndingCutsceneOamFrame093;
    else if (timer <= 129)
        *oamFrame = sEndingCutsceneOamFrame091;
    else if (timer <= 131)
        *oamFrame = sEndingCutsceneOamFrame093;
    else if (timer <= 133)
        *oamFrame = sEndingCutsceneOamFrame091;
    else if (timer <= 183)
        *oamFrame = sEndingCutsceneOamFrame093;
    else if (timer <= 233)
        *oamFrame = sEndingCutsceneOamFrame092;
    else if (timer <= 241)
        *oamFrame = sEndingCutsceneOamFrame093;
    else if (timer <= 261)
        *oamFrame = sEndingCutsceneOamFrame092;
    else if (timer <= 267)
        *oamFrame = sEndingCutsceneOamFrame093;
    else if (timer <= 317)
        *oamFrame = sEndingCutsceneOamFrame092;
    else if (timer <= 367)
        *oamFrame = sEndingCutsceneOamFrame094;
    else
        *oamFrame = sEndingCutsceneOamFrame092;

    if (timer == 78)
        m4aSongNumStartOrChange(425);

    if (timer == 134)
        return 2;
    return timer > 367;
}

s32 SelectEndingCutsceneOamSequence32(s32 timer, u16 **oamFrame)
{

    if (timer <= 1)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 3)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 5)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 7)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 9)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 11)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 13)
        *oamFrame = sEndingCutsceneOamFrame076;
    else if (timer <= 17)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 21)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 25)
        *oamFrame = sEndingCutsceneOamFrame077;
    else if (timer <= 29)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 33)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 37)
        *oamFrame = sEndingCutsceneOamFrame078;
    else if (timer <= 41)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 45)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 49)
        *oamFrame = sEndingCutsceneOamFrame079;
    else if (timer <= 53)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 57)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 61)
        *oamFrame = sEndingCutsceneOamFrame080;
    else if (timer <= 65)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 69)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 73)
        *oamFrame = sEndingCutsceneOamFrame081;
    else if (timer <= 77)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 81)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 85)
        *oamFrame = sEndingCutsceneOamFrame082;
    else if (timer <= 105)
        *oamFrame = sEndingCutsceneOamFrame083;
    else if (timer <= 109)
        *oamFrame = sEndingCutsceneOamFrame100;
    else if (timer <= 113)
        *oamFrame = sEndingCutsceneOamFrame099;
    else if (timer <= 117)
        *oamFrame = sEndingCutsceneOamFrame101;
    else if (timer <= 121)
        *oamFrame = sEndingCutsceneOamFrame099;
    else if (timer <= 125)
        *oamFrame = sEndingCutsceneOamFrame100;
    else if (timer <= 127)
        *oamFrame = sEndingCutsceneOamFrame097;
    else if (timer <= 129)
        *oamFrame = sEndingCutsceneOamFrame095;
    else if (timer <= 131)
        *oamFrame = sEndingCutsceneOamFrame097;
    else if (timer <= 133)
        *oamFrame = sEndingCutsceneOamFrame095;
    else if (timer <= 135)
        *oamFrame = sEndingCutsceneOamFrame097;
    else if (timer <= 185)
        *oamFrame = sEndingCutsceneOamFrame096;
    else if (timer <= 193)
        *oamFrame = sEndingCutsceneOamFrame102;
    else if (timer <= 201)
        *oamFrame = sEndingCutsceneOamFrame103;
    else if (timer <= 209)
        *oamFrame = sEndingCutsceneOamFrame104;
    else if (timer <= 217)
        *oamFrame = sEndingCutsceneOamFrame105;
    else if (timer <= 225)
        *oamFrame = sEndingCutsceneOamFrame102;
    else if (timer <= 233)
        *oamFrame = sEndingCutsceneOamFrame103;
    else if (timer <= 241)
        *oamFrame = sEndingCutsceneOamFrame104;
    else if (timer <= 249)
        *oamFrame = sEndingCutsceneOamFrame105;
    else if (timer <= 269)
        *oamFrame = sEndingCutsceneOamFrame096;
    else if (timer <= 289)
        *oamFrame = sEndingCutsceneOamFrame098;
    else
        *oamFrame = sEndingCutsceneOamFrame096;

    if (timer == 78)
        m4aSongNumStartOrChange(425);

    if (timer == 134)
        return 2;
    return timer > 289;
}

s32 SelectEndingCutsceneOamSequence33(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 24;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame106;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame115;
    else
        *oamFrame = sEndingCutsceneOamFrame116;

    return frame == 23;
}

s32 SelectEndingCutsceneOamSequence34(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 24;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame107;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame117;
    else
        *oamFrame = sEndingCutsceneOamFrame118;

    return frame == 23;
}

s32 SelectEndingCutsceneOamSequence35(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 16;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame108;
    else
        *oamFrame = sEndingCutsceneOamFrame109;

    return frame == 15;
}

s32 SelectEndingCutsceneOamSequence36(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 47;

    if (frame <= 14)
        *oamFrame = sEndingCutsceneOamFrame110;
    else if (frame <= 22)
        *oamFrame = sEndingCutsceneOamFrame111;
    else if (frame <= 30)
        *oamFrame = sEndingCutsceneOamFrame112;
    else if (frame <= 38)
        *oamFrame = sEndingCutsceneOamFrame113;
    else
        *oamFrame = sEndingCutsceneOamFrame114;

    return frame == 46;
}

s32 SelectEndingCutsceneOamSequence37(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame119;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame120;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame121;
    else
        *oamFrame = sEndingCutsceneOamFrame120;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence38(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame122;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame123;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame124;
    else
        *oamFrame = sEndingCutsceneOamFrame123;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence39(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame125;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame126;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame127;
    else
        *oamFrame = sEndingCutsceneOamFrame126;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence40(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame128;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame129;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame130;
    else
        *oamFrame = sEndingCutsceneOamFrame129;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence41(s32 timer, u16 **oamFrame)
{
    s32 frame;
    frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame131;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame132;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame133;
    else
        *oamFrame = sEndingCutsceneOamFrame132;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence41Variant01(s32 timer, u16 **oamFrame)
{
    s32 frame;
    frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame134;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame135;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame136;
    else
        *oamFrame = sEndingCutsceneOamFrame135;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence41Variant02(s32 timer, u16 **oamFrame)
{
    s32 frame;
    frame = timer % 32;
    
    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame137;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame138;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame139;
    else
        *oamFrame = sEndingCutsceneOamFrame138;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence41Variant03(s32 timer, u16 **oamFrame)
{
    s32 frame;
    frame = timer % 32;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame140;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame141;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame142;
    else
        *oamFrame = sEndingCutsceneOamFrame141;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence41Variant04(s32 timer, u16 **oamFrame)
{
    s32 frame;
    frame = timer % 64;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame119;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame137;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame122;
    else if (frame <= 31)
        *oamFrame = sEndingCutsceneOamFrame140;
    else if (frame <= 39)
        *oamFrame = sEndingCutsceneOamFrame128;
    else if (frame <= 47)
        *oamFrame = sEndingCutsceneOamFrame134;
    else if (frame <= 55)
        *oamFrame = sEndingCutsceneOamFrame125;
    else
        *oamFrame = sEndingCutsceneOamFrame131;

    return frame == 63;
}

s32 SelectEndingCutsceneOamSequence42(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame == 0 || frame == 15)
        m4aSongNumStartOrChange(1);

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame143;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame144;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame145;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame146;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame147;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame148;
    else if (frame <= 27)
        *oamFrame = sEndingCutsceneOamFrame149;
    else
        *oamFrame = sEndingCutsceneOamFrame150;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence43(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 24;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame151;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame152;
    else
        *oamFrame = sEndingCutsceneOamFrame153;

    return frame == 23;
}

s32 SelectEndingCutsceneOamSequence44(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame == 0 || frame == 15)
        m4aSongNumStartOrChange(1);

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame154;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame155;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame156;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame157;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame158;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame159;
    else if (frame <= 27)
        *oamFrame = sEndingCutsceneOamFrame160;
    else
        *oamFrame = sEndingCutsceneOamFrame161;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence45(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 48;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame151;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame152;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame163;
    else if (frame <= 31)
        *oamFrame = sEndingCutsceneOamFrame162;
    else if (frame <= 39)
        *oamFrame = sEndingCutsceneOamFrame153;
    else
        *oamFrame = sEndingCutsceneOamFrame164;

    return frame == 47;
}

s32 SelectEndingCutsceneOamSequence46(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame == 0 || frame == 15)
        m4aSongNumStartOrChange(1);

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame165;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame166;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame167;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame168;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame169;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame170;
    else if (frame <= 27)
        *oamFrame = sEndingCutsceneOamFrame171;
    else
        *oamFrame = sEndingCutsceneOamFrame172;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence47(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 32;

    if (frame <= 3)
        *oamFrame = sEndingCutsceneOamFrame173;
    else if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame174;
    else if (frame <= 11)
        *oamFrame = sEndingCutsceneOamFrame175;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame176;
    else if (frame <= 19)
        *oamFrame = sEndingCutsceneOamFrame177;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame178;
    else if (frame <= 27)
        *oamFrame = sEndingCutsceneOamFrame179;
    else
        *oamFrame = sEndingCutsceneOamFrame180;

    return frame == 31;
}

s32 SelectEndingCutsceneOamSequence48(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 48;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame181;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame182;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame183;
    else if (frame <= 31)
        *oamFrame = sEndingCutsceneOamFrame181;
    else if (frame <= 39)
        *oamFrame = sEndingCutsceneOamFrame182;
    else
        *oamFrame = sEndingCutsceneOamFrame183;

    return frame == 47;
}

s32 SelectEndingCutsceneOamSequence49(s32 timer, u16 **oamFrame)
{
    s32 frame = timer % 48;

    if (frame <= 7)
        *oamFrame = sEndingCutsceneOamFrame184;
    else if (frame <= 15)
        *oamFrame = sEndingCutsceneOamFrame185;
    else if (frame <= 23)
        *oamFrame = sEndingCutsceneOamFrame186;
    else if (frame <= 31)
        *oamFrame = sEndingCutsceneOamFrame184;
    else if (frame <= 39)
        *oamFrame = sEndingCutsceneOamFrame185;
    else
        *oamFrame = sEndingCutsceneOamFrame186;

    return frame == 47;
}

s32 ReadEndingCutscenePath00(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = 0;

    if (timer >= 0) {
        frame = 269;
        if ((u32)timer <= (u32)frame)
            frame = timer;
    }

    *xOut = sEndingCutscenePathData000[frame];
    *yOut = sEndingCutscenePathData001[frame];
    *scaleOut = sEndingCutscenePathData002[frame];
    *oamFrameOut = sEndingCutscenePathData003[frame];

    return timer == 269;
}

s32 ReadEndingCutscenePath01(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = 0;

    if (timer >= 0) {
        frame = 269;
        if ((u32)timer <= (u32)frame)
            frame = timer;
    }

    *xOut = sEndingCutscenePathData004[frame];
    *yOut = sEndingCutscenePathData005[frame];
    *scaleOut = sEndingCutscenePathData006[frame];
    *oamFrameOut = sEndingCutscenePathData007[frame];

    return timer == 269;
}

s32 ReadEndingCutscenePath02(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = 0;

    if (timer >= 0) {
        frame = 269;
        if ((u32)timer <= (u32)frame)
            frame = timer;
    }

    *xOut = sEndingCutscenePathData008[frame];
    *yOut = sEndingCutscenePathData009[frame];
    *scaleOut = sEndingCutscenePathData010[frame];
    *oamFrameOut = sEndingCutscenePathData011[frame];

    return timer == 269;
}

s32 ReadEndingCutscenePath03(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = 0;

    if (timer >= 0) {
        frame = 269;
        if ((u32)timer <= (u32)frame)
            frame = timer;
    }

    *xOut = sEndingCutscenePathData012[frame];
    *yOut = sEndingCutscenePathData013[frame];
    *scaleOut = sEndingCutscenePathData014[frame];
    *oamFrameOut = sEndingCutscenePathData015[frame];

    return timer == 269;
}

s32 ReadEndingCutscenePath04(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData016[frame];
    *yOut = sEndingCutscenePathData017[frame];
    *scaleOut = sEndingCutscenePathData018[frame];
    *oamFrameOut = sEndingCutscenePathData019[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath05(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData020[frame];
    *yOut = sEndingCutscenePathData021[frame];
    *scaleOut = sEndingCutscenePathData022[frame];
    *oamFrameOut = sEndingCutscenePathData023[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath06(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData024[frame];
    *yOut = sEndingCutscenePathData025[frame];
    *scaleOut = sEndingCutscenePathData026[frame];
    *oamFrameOut = sEndingCutscenePathData027[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath07(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData028[frame];
    *yOut = sEndingCutscenePathData029[frame];
    *scaleOut = sEndingCutscenePathData030[frame];
    *oamFrameOut = sEndingCutscenePathData031[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath08(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData032[frame];
    *yOut = sEndingCutscenePathData033[frame];
    *scaleOut = sEndingCutscenePathData034[frame];
    *oamFrameOut = sEndingCutscenePathData035[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath09(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData036[frame];
    *yOut = sEndingCutscenePathData037[frame];
    *scaleOut = sEndingCutscenePathData038[frame];
    *oamFrameOut = sEndingCutscenePathData039[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath10(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData040[frame];
    *yOut = sEndingCutscenePathData041[frame];
    *scaleOut = sEndingCutscenePathData042[frame];
    *oamFrameOut = sEndingCutscenePathData043[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath11(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 279)
        frame = 279;

    *xOut = sEndingCutscenePathData044[frame];
    *yOut = sEndingCutscenePathData045[frame];
    *scaleOut = sEndingCutscenePathData046[frame];
    *oamFrameOut = sEndingCutscenePathData047[frame];

    return (u32)timer > 278;
}

s32 ReadEndingCutscenePath12(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData048[frame];
    *yOut = sEndingCutscenePathData049[frame];
    *scaleOut = sEndingCutscenePathData050[frame];
    *oamFrameOut = sEndingCutscenePathData051[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath13(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData052[frame];
    *yOut = sEndingCutscenePathData053[frame];
    *scaleOut = sEndingCutscenePathData054[frame];
    *oamFrameOut = sEndingCutscenePathData055[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath14(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData056[frame];
    *yOut = sEndingCutscenePathData057[frame];
    *scaleOut = sEndingCutscenePathData058[frame];
    *oamFrameOut = sEndingCutscenePathData059[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath15(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData060[frame];
    *yOut = sEndingCutscenePathData061[frame];
    *scaleOut = sEndingCutscenePathData062[frame];
    *oamFrameOut = sEndingCutscenePathData063[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath16(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData064[frame];
    *yOut = sEndingCutscenePathData065[frame];
    *scaleOut = sEndingCutscenePathData066[frame];
    *oamFrameOut = sEndingCutscenePathData067[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath17(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData068[frame];
    *yOut = sEndingCutscenePathData069[frame];
    *scaleOut = sEndingCutscenePathData070[frame];
    *oamFrameOut = sEndingCutscenePathData071[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath18(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData072[frame];
    *yOut = sEndingCutscenePathData073[frame];
    *scaleOut = sEndingCutscenePathData074[frame];
    *oamFrameOut = sEndingCutscenePathData075[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath19(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData076[frame];
    *yOut = sEndingCutscenePathData077[frame];
    *scaleOut = sEndingCutscenePathData078[frame];
    *oamFrameOut = sEndingCutscenePathData079[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath20(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData080[frame];
    *yOut = sEndingCutscenePathData081[frame];
    *scaleOut = sEndingCutscenePathData082[frame];
    *oamFrameOut = sEndingCutscenePathData083[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath21(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData084[frame];
    *yOut = sEndingCutscenePathData085[frame];
    *scaleOut = sEndingCutscenePathData086[frame];
    *oamFrameOut = sEndingCutscenePathData087[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath22(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData088[frame];
    *yOut = sEndingCutscenePathData089[frame];
    *scaleOut = sEndingCutscenePathData090[frame];
    *oamFrameOut = sEndingCutscenePathData091[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath23(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData092[frame];
    *yOut = sEndingCutscenePathData093[frame];
    *scaleOut = sEndingCutscenePathData094[frame];
    *oamFrameOut = sEndingCutscenePathData095[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath24(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData096[frame];
    *yOut = sEndingCutscenePathData097[frame];
    *scaleOut = sEndingCutscenePathData098[frame];
    *oamFrameOut = sEndingCutscenePathData099[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath25(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData100[frame];
    *yOut = sEndingCutscenePathData101[frame];
    *scaleOut = sEndingCutscenePathData102[frame];
    *oamFrameOut = sEndingCutscenePathData103[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath26(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData104[frame];
    *yOut = sEndingCutscenePathData105[frame];
    *scaleOut = sEndingCutscenePathData106[frame];
    *oamFrameOut = sEndingCutscenePathData107[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath27(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData108[frame];
    *yOut = sEndingCutscenePathData109[frame];
    *scaleOut = sEndingCutscenePathData110[frame];
    *oamFrameOut = sEndingCutscenePathData111[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath28(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData112[frame];
    *yOut = sEndingCutscenePathData113[frame];
    *scaleOut = sEndingCutscenePathData114[frame];
    *oamFrameOut = sEndingCutscenePathData115[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath29(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData116[frame];
    *yOut = sEndingCutscenePathData117[frame];
    *scaleOut = sEndingCutscenePathData118[frame];
    *oamFrameOut = sEndingCutscenePathData119[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath30(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData120[frame];
    *yOut = sEndingCutscenePathData121[frame];
    *scaleOut = sEndingCutscenePathData122[frame];
    *oamFrameOut = sEndingCutscenePathData123[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath31(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData124[frame];
    *yOut = sEndingCutscenePathData125[frame];
    *scaleOut = sEndingCutscenePathData126[frame];
    *oamFrameOut = sEndingCutscenePathData127[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath32(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData128[frame];
    *yOut = sEndingCutscenePathData129[frame];
    *scaleOut = sEndingCutscenePathData130[frame];
    *oamFrameOut = sEndingCutscenePathData131[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath33(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData132[frame];
    *yOut = sEndingCutscenePathData133[frame];
    *scaleOut = sEndingCutscenePathData134[frame];
    *oamFrameOut = sEndingCutscenePathData135[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath34(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData136[frame];
    *yOut = sEndingCutscenePathData137[frame];
    *scaleOut = sEndingCutscenePathData138[frame];
    *oamFrameOut = sEndingCutscenePathData139[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutscenePath35(s32 timer, u16 *xOut, u16 *yOut, u16 *scaleOut, u16 *oamFrameOut)
{
    s32 frame = timer;

    if ((u32)timer > 280)
        frame = 280;

    *xOut = sEndingCutscenePathData140[frame];
    *yOut = sEndingCutscenePathData141[frame];
    *scaleOut = sEndingCutscenePathData142[frame];
    *oamFrameOut = sEndingCutscenePathData143[frame];

    return (u32)timer > 279;
}

s32 ReadEndingCutsceneIndexedPathPair(s32 pathIndex, u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x2BA;
    u16 *xPath;
    u16 *yPath;

    if (timer > maxTimer)
        timer = maxTimer;

    xPath = sEndingCutscenePathXTable[pathIndex];
    yPath = sEndingCutscenePathYTable[pathIndex];

    *xOut = xPath[timer];
    *yOut = yPath[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath36(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x1D3;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData144[timer];
    *yOut = sEndingCutscenePathData145[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath37(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x1D3;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData146[timer];
    *yOut = sEndingCutscenePathData147[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath38(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x1D3;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData148[timer];
    *yOut = sEndingCutscenePathData149[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath39(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x1D3;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData150[timer];
    *yOut = sEndingCutscenePathData151[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath40(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 252;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData152[timer];
    *yOut = sEndingCutscenePathData153[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath41(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 268;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData154[timer];
    *yOut = sEndingCutscenePathData155[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath42(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 260;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData156[timer];
    *yOut = sEndingCutscenePathData157[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath43(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 0x115;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData158[timer];
    *yOut = sEndingCutscenePathData159[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath44(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 256;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData160[timer];
    *yOut = sEndingCutscenePathData161[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath45(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 272;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData162[timer];
    *yOut = sEndingCutscenePathData163[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath46(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 264;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData164[timer];
    *yOut = sEndingCutscenePathData165[timer];

    return timer == maxTimer;
}

s32 ReadEndingCutscenePath47(u32 timer, u16 *xOut, u16 *yOut)
{
    u32 maxTimer = 280;

    if (timer > maxTimer)
        timer = maxTimer;

    *xOut = sEndingCutscenePathData166[timer];
    *yOut = sEndingCutscenePathData167[timer];

    return timer == maxTimer;
}