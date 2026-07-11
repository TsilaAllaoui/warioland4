#ifndef CUTSCENE_TITLE_SCREEN_OAM_ANIM_H
#define CUTSCENE_TITLE_SCREEN_OAM_ANIM_H

#include "types.h"

extern u8 sTitleScreenSHardLogoFrame0Oam;
extern u8 sTitleScreenSHardLogoFrame1Oam;
extern u8 sTitleScreenNormalLogoFrame0Oam;
extern u8 sTitleScreenNormalLogoFrame1Oam;
extern u8 sTitleScreenNormalLogoFrame2Oam;
extern u8 sTitleScreenNormalLogoIdleOam;
extern u8 sTitleScreenOverlayFrame00Oam;
extern u8 sTitleScreenOverlayFrame01Oam;
extern u8 sTitleScreenOverlayFrame02Oam;
extern u8 sTitleScreenOverlayFrame03Oam;
extern u8 sTitleScreenOverlayFrame04Oam;
extern u8 sTitleScreenOverlayFrame05Oam;
extern u8 sTitleScreenOverlayFrame06Oam;
extern u8 sTitleScreenOverlayFrame07Oam;
extern u8 sTitleScreenOverlayFrame08Oam;
extern u8 sTitleScreenOverlayFrame09Oam;
extern u8 sTitleScreenOverlayFrame10Oam;
extern u8 sTitleScreenOverlayFrame11Oam;
extern u8 sTitleScreenOverlayFrame12Oam;
extern u8 sTitleScreenOverlayFrame13Oam;
extern u8 sTitleScreenOverlayFrame14Oam;
extern u8 sTitleScreenOverlayFrame15Oam;
extern u8 sTitleScreenOverlayFrame16Oam;
extern u8 sTitleScreenOverlayFrame17Oam;
extern u8 sTitleScreenOverlayFrame18Oam;
extern u8 sTitleScreenOverlayFrame19Oam;
extern u8 sTitleScreenOverlayFrame20Oam;
extern u8 sTitleScreenOverlayFrame21Oam;
extern u8 sTitleScreenOverlayFrame22Oam;
extern u8 sTitleScreenOverlayFrame23Oam;
extern u8 sTitleScreenOverlayFrame24Oam;
extern u8 sTitleScreenOverlayFrame25Oam;
extern u8 sTitleScreenOverlayFrame26Oam;
extern u8 sTitleScreenOverlayFrame27Oam;
extern u8 sTitleScreenOverlayFrame28Oam;
extern u8 sTitleScreenOverlayFrame29Oam;
extern u8 sTitleScreenOverlayFrame30Oam;
extern u8 sTitleScreenOverlayFrame31Oam;
extern u8 sTitleScreenOverlayFrame32Oam;
extern u8 sTitleScreenOverlayFrame33Oam;
extern u8 sTitleScreenOverlayFrame34Oam;
extern u8 sTitleScreenOverlayFrame35Oam;
extern u8 sTitleScreenOverlayFrame36Oam;
extern u8 sTitleScreenOverlayFrame37Oam;
extern u8 sTitleScreenOverlayFrame38Oam;
extern u8 sTitleScreenOverlayFrame39Oam;
extern u8 sTitleScreenOverlayFrame40Oam;
extern u8 sTitleScreenOverlayFrame41Oam;
extern u8 sTitleScreenOverlayFrame42Oam;
extern u8 sTitleScreenOverlayFrame43Oam;
extern u8 sTitleScreenOverlayFrame44Oam;
extern u8 sTitleScreenOverlayFrame45Oam;
extern u8 sTitleScreenOverlayFrame46Oam;
extern u8 sTitleScreenOverlayFrame47Oam;
extern u8 sTitleScreenOverlayFrame48Oam;
extern u8 sTitleScreenOverlayFrame49Oam;
extern u8 sTitleScreenOverlayFrame50Oam;
extern u8 sTitleScreenOverlayFrame51Oam;

s32 SelectTitleScreenNormalLogoIntroOamFrame(s32 timer, u8 **oamFrame);
s32 SelectTitleScreenNormalLogoIdleOamFrame(s32 timer, u8 **oamFrame);
s32 SelectTitleScreenSHardLogoIntroOamFrame(s32 timer, u8 **oamFrame);
s32 SelectTitleScreenSHardLogoIdleOamFrame(s32 timer, u8 **oamFrame);
s32 SelectTitleScreenOverlayOamFrame(s32 timer, u8 **oamFrame);

#endif // CUTSCENE_TITLE_SCREEN_OAM_ANIM_H
