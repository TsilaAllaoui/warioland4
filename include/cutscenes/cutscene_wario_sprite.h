#ifndef CUTSCENE_WARIO_SPRITE_H
#define CUTSCENE_WARIO_SPRITE_H

#include "types.h"

extern u16 sCutsceneWarioEffectAFrame0Oam[];
extern u16 sCutsceneWarioEffectAFrame1Oam[];
extern u16 sCutsceneWarioEffectAFrame2Oam[];
extern u16 sCutsceneWarioEffectAFrame3Oam[];
extern u16 sCutsceneWarioEffectAFrame4Oam[];
extern u16 sCutsceneWarioEffectAFrame5Oam[];
extern u16 sCutsceneWarioEffectAFrame6Oam[];
extern u16 sCutsceneWarioEffectAFrame7Oam[];
extern u16 sCutsceneWarioEffectAFrame8Oam[];
extern u16 sCutsceneWarioEffectAFrame9Oam[];
extern u16 sCutsceneWarioEffectAFrame10Oam[];
extern u16 sCutsceneWarioEffectAFrame11Oam[];
extern u16 sCutsceneWarioEffectBFrame0Oam[];
extern u16 sCutsceneWarioEffectBFrame1Oam[];
extern u16 sCutsceneWarioEffectBFrame2Oam[];
extern u16 sCutsceneWarioEffectBFrame3Oam[];
extern u16 sCutsceneWarioEffectCFrame0Oam[];
extern u16 sCutsceneWarioEffectCFrame1Oam[];
extern u16 sCutsceneWarioEffectCFrame2Oam[];
extern u16 sCutsceneWarioEffectCFrame3Oam[];
extern u16 sCutsceneWarioEffectCFrame4Oam[];
extern u16 sCutsceneWarioEffectDFrame0Oam[];
extern u16 sCutsceneWarioEffectDFrame1Oam[];
extern u16 sCutsceneWarioEffectDFrame2Oam[];
extern u16 sCutsceneWarioEffectDFrame3Oam[];
extern u16 sCutsceneWarioEffectDFrame4Oam[];
extern u16 sCutsceneWarioEffectEFrame0Oam[];
extern u16 sCutsceneWarioEffectEFrame1Oam[];
extern u16 sCutsceneWarioEffectEFrame2Oam[];
extern u16 sCutsceneWarioEffectEFrame3Oam[];
extern u16 sCutsceneWarioEffectFFrame0Oam[];
extern u16 sCutsceneWarioEffectFFrame1Oam[];
extern u16 sCutsceneWarioEffectFFrame2Oam[];
extern u16 sCutsceneWarioEffectFFrame3Oam[];
extern u16 sCutsceneWarioStaticOam[];
extern u16 sWarioDefaultObjPalette[];

s32 CutsceneWarioSelectEffectAAnimOam(s32 timer, u16 **outOam);
s32 CutsceneWarioSelectEffectBAnimOam(s32 timer, u16 **outOam);
s32 CutsceneWarioSelectEffectCAnimOam(s32 timer, u16 **outOam);
s32 CutsceneWarioSelectEffectDAnimOam(s32 timer, u16 **outOam);
s32 CutsceneWarioSelectEffectEAnimOam(s32 timer, u16 **outOam);
s32 CutsceneWarioSelectEffectFAnimOam(s32 timer, u16 **outOam);
void CutsceneWarioGetStaticOam(u16 **outOam);
void CutsceneWarioSetPose(u8 reaction, u8 pose, u16 direction);
u16 *CutsceneWarioDrawPoseOam(s32 xOffset, s32 yOffset, u16 priority, u16 heldKeys, u16 pressedKeys);
void CutsceneWarioLoadObjTiles(void);
void CutsceneWarioLoadObjPalette(void);

#endif // CUTSCENE_WARIO_SPRITE_H
