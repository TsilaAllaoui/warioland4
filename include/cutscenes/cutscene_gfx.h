#ifndef CUTSCENE_GFX_H
#define CUTSCENE_GFX_H

#include "types.h"

extern u8 *sCutsceneGfx1_Frame0;
extern u8 sCutsceneGfx1_Frame1;
extern u8 sCutsceneGfx1_Frame2;
extern u8 sCutsceneGfx1_Frame3;
extern u8 sCutsceneGfx2_Frame0;
extern u8 sCutsceneGfx2_Frame1;
extern u8 sCutsceneGfx2_Frame2;
extern u8 sCutsceneGfx2_Frame3;
extern u8 sCutsceneGfx2_Frame4;
extern u8 sCutsceneGfx2_Frame5;
extern u8 sCutsceneGfx2_Frame6;
extern u8 sCutsceneGfx3_Frame0;
extern u8 sCutsceneGfx3_Frame1;
extern u8 sCutsceneGfx3_Frame2;
extern u8 sCutsceneGfx3_Frame3;
extern u8 sCutsceneGfx4_Frame0;
extern u8 sCutsceneGfx4_Frame1;
extern u8 sCutsceneGfx4_Frame2;
extern u8 sCutsceneGfx4_Frame3;
extern u8 sCutsceneGfx4_Frame4;
extern u8 sCutsceneGfx4_Frame5;
extern u8 sCutsceneGfx4_Frame6;
extern u8 sCutsceneGfx4_Frame7;
extern u8 sCutsceneGfx5_Frame0;
extern u8 sCutsceneGfx5_Frame1;
extern u8 sCutsceneGfx5_Frame2;
extern u8 sCutsceneGfx5_Frame3;
extern u8 sCutsceneGfx5_Frame4;
extern u8 sCutsceneGfx5_Frame5;
extern u8 sCutsceneGfx5_Frame6;
extern u8 sCutsceneGfx5_Frame7;


s32 SelectCutsceneGfx1(s32 timer, u8 **gfxData);
s32 SelectCutsceneGfx2(s32 timer, u8 **gfxData);
s32 SelectCutsceneGfx3(s32 timer, u8 **gfxData);
s32 SelectCutsceneGfx4(s32 timer, u8 **gfxData);
s32 SelectCutsceneGfx5(s32 timer, u8 **gfxData);

#endif //CUTSCENE_GFX_H
