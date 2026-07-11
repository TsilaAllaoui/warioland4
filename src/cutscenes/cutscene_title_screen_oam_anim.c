#include "cutscenes/cutscene_title_screen_oam_anim.h"

s32 SelectTitleScreenNormalLogoIntroOamFrame(s32 timer, u8 **oamFrame)
{
    s32 frame;
    s32 result;

    frame = timer % 28;

    if (frame <= 5) {
        *oamFrame = &sTitleScreenNormalLogoFrame0Oam;
    } else if (frame <= 11) {
        *oamFrame = &sTitleScreenNormalLogoFrame1Oam;
    } else if (frame <= 17) {
        *oamFrame = &sTitleScreenNormalLogoFrame0Oam;
    } else {
        *oamFrame = &sTitleScreenNormalLogoFrame2Oam;
    }

    result = 0;
    if (frame == 27) {
        result = 1;
    }

    return result;
}

s32 SelectTitleScreenNormalLogoIdleOamFrame(s32 timer, u8 **oamFrame)
{
    s32 result;

    *oamFrame = &sTitleScreenNormalLogoIdleOam;
    result = 0;
    if (timer == 30) {
        result = 1;
    }

    return result;
}

s32 SelectTitleScreenSHardLogoIntroOamFrame(s32 timer, u8 **oamFrame)
{
    s32 frame;
    s32 result;

    frame = timer % 80;

    if (frame <= 29) {
        *oamFrame = &sTitleScreenSHardLogoFrame0Oam;
    } else if (frame <= 39) {
        *oamFrame = &sTitleScreenSHardLogoFrame1Oam;
    } else if (frame <= 49) {
        *oamFrame = &sTitleScreenSHardLogoFrame0Oam;
    } else if (frame <= 59) {
        *oamFrame = &sTitleScreenSHardLogoFrame1Oam;
    } else if (frame <= 69) {
        *oamFrame = &sTitleScreenSHardLogoFrame0Oam;
    } else {
        *oamFrame = &sTitleScreenSHardLogoFrame1Oam;
    }

    result = 0;
    if (frame == 79) {
        result = 1;
    }

    return result;
}

s32 SelectTitleScreenSHardLogoIdleOamFrame(s32 timer, u8 **oamFrame)
{
    s32 result;

    *oamFrame = &sTitleScreenSHardLogoFrame0Oam;
    result = 0;
    if (timer == 30) {
        result = 1;
    }

    return result;
}

s32 SelectTitleScreenOverlayOamFrame(s32 timer, u8 **oamFrame)
{
    s32 frame;
    s32 result;

    frame = timer % 208;

    if (frame <= 3) {
        *oamFrame = &sTitleScreenOverlayFrame00Oam;
    } else if (frame <= 7) {
        *oamFrame = &sTitleScreenOverlayFrame01Oam;
    } else if (frame <= 11) {
        *oamFrame = &sTitleScreenOverlayFrame02Oam;
    } else if (frame <= 15) {
        *oamFrame = &sTitleScreenOverlayFrame03Oam;
    } else if (frame <= 19) {
        *oamFrame = &sTitleScreenOverlayFrame04Oam;
    } else if (frame <= 23) {
        *oamFrame = &sTitleScreenOverlayFrame05Oam;
    } else if (frame <= 27) {
        *oamFrame = &sTitleScreenOverlayFrame06Oam;
    } else if (frame <= 31) {
        *oamFrame = &sTitleScreenOverlayFrame07Oam;
    } else if (frame <= 35) {
        *oamFrame = &sTitleScreenOverlayFrame08Oam;
    } else if (frame <= 39) {
        *oamFrame = &sTitleScreenOverlayFrame09Oam;
    } else if (frame <= 43) {
        *oamFrame = &sTitleScreenOverlayFrame10Oam;
    } else if (frame <= 47) {
        *oamFrame = &sTitleScreenOverlayFrame11Oam;
    } else if (frame <= 51) {
        *oamFrame = &sTitleScreenOverlayFrame12Oam;
    } else if (frame <= 55) {
        *oamFrame = &sTitleScreenOverlayFrame13Oam;
    } else if (frame <= 59) {
        *oamFrame = &sTitleScreenOverlayFrame14Oam;
    } else if (frame <= 63) {
        *oamFrame = &sTitleScreenOverlayFrame15Oam;
    } else if (frame <= 67) {
        *oamFrame = &sTitleScreenOverlayFrame16Oam;
    } else if (frame <= 71) {
        *oamFrame = &sTitleScreenOverlayFrame17Oam;
    } else if (frame <= 75) {
        *oamFrame = &sTitleScreenOverlayFrame18Oam;
    } else if (frame <= 79) {
        *oamFrame = &sTitleScreenOverlayFrame19Oam;
    } else if (frame <= 83) {
        *oamFrame = &sTitleScreenOverlayFrame20Oam;
    } else if (frame <= 87) {
        *oamFrame = &sTitleScreenOverlayFrame21Oam;
    } else if (frame <= 91) {
        *oamFrame = &sTitleScreenOverlayFrame22Oam;
    } else if (frame <= 95) {
        *oamFrame = &sTitleScreenOverlayFrame23Oam;
    } else if (frame <= 99) {
        *oamFrame = &sTitleScreenOverlayFrame24Oam;
    } else if (frame <= 103) {
        *oamFrame = &sTitleScreenOverlayFrame25Oam;
    } else if (frame <= 107) {
        *oamFrame = &sTitleScreenOverlayFrame26Oam;
    } else if (frame <= 111) {
        *oamFrame = &sTitleScreenOverlayFrame27Oam;
    } else if (frame <= 115) {
        *oamFrame = &sTitleScreenOverlayFrame28Oam;
    } else if (frame <= 119) {
        *oamFrame = &sTitleScreenOverlayFrame29Oam;
    } else if (frame <= 123) {
        *oamFrame = &sTitleScreenOverlayFrame30Oam;
    } else if (frame <= 127) {
        *oamFrame = &sTitleScreenOverlayFrame31Oam;
    } else if (frame <= 131) {
        *oamFrame = &sTitleScreenOverlayFrame32Oam;
    } else if (frame <= 135) {
        *oamFrame = &sTitleScreenOverlayFrame33Oam;
    } else if (frame <= 139) {
        *oamFrame = &sTitleScreenOverlayFrame34Oam;
    } else if (frame <= 143) {
        *oamFrame = &sTitleScreenOverlayFrame35Oam;
    } else if (frame <= 147) {
        *oamFrame = &sTitleScreenOverlayFrame36Oam;
    } else if (frame <= 151) {
        *oamFrame = &sTitleScreenOverlayFrame37Oam;
    } else if (frame <= 155) {
        *oamFrame = &sTitleScreenOverlayFrame38Oam;
    } else if (frame <= 159) {
        *oamFrame = &sTitleScreenOverlayFrame39Oam;
    } else if (frame <= 163) {
        *oamFrame = &sTitleScreenOverlayFrame40Oam;
    } else if (frame <= 167) {
        *oamFrame = &sTitleScreenOverlayFrame41Oam;
    } else if (frame <= 171) {
        *oamFrame = &sTitleScreenOverlayFrame42Oam;
    } else if (frame <= 175) {
        *oamFrame = &sTitleScreenOverlayFrame43Oam;
    } else if (frame <= 179) {
        *oamFrame = &sTitleScreenOverlayFrame44Oam;
    } else if (frame <= 183) {
        *oamFrame = &sTitleScreenOverlayFrame45Oam;
    } else if (frame <= 187) {
        *oamFrame = &sTitleScreenOverlayFrame46Oam;
    } else if (frame <= 191) {
        *oamFrame = &sTitleScreenOverlayFrame47Oam;
    } else if (frame <= 195) {
        *oamFrame = &sTitleScreenOverlayFrame48Oam;
    } else if (frame <= 199) {
        *oamFrame = &sTitleScreenOverlayFrame49Oam;
    } else if (frame <= 203) {
        *oamFrame = &sTitleScreenOverlayFrame50Oam;
    } else {
        *oamFrame = &sTitleScreenOverlayFrame51Oam;
    }

    result = 0;
    if (frame == 207) {
        result = 1;
    }

    return result;
}
