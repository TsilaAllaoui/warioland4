#ifndef CUTSCENE_BG_ANIM_H
#define CUTSCENE_BG_ANIM_H

#include "types.h"

extern u8 sUnk_829F590;
extern u8 sUnk_829F5D4;
extern u8 sUnk_829F63C;
extern u8 sUnk_829F686;
extern u8 sUnk_829F6B8;
extern u8 sUnk_829F6E4;
extern u8 sUnk_829F738;
extern u8 sUnk_829F764;
extern u8 sUnk_829F790;
extern u8 sUnk_829F7E6;
extern u8 sUnk_829F85A;
extern u8 sUnk_829F8AA;
extern u8 sUnk_829F8FA;
extern u8 sUnk_829F4DC;
extern u8 sUnk_829F520;
extern u8 sUnk_829F558;
extern u8 sUnk_829F4D4;
extern u8 sUnk_829F710;
extern u8 sUnk_829F718;
extern u8 sUnk_829F720;
extern u8 sUnk_829F728;
extern u8 sUnk_829F730;
extern u8 sUnk_829F93E;
extern u8 sUnk_829F946;
extern u8 sUnk_829F94E;
extern u8 sUnk_829F956;
extern u8 sUnk_829FA86;
extern u8 sUnk_829FB76;
extern u8 sUnk_829FC66;

s32 func_800C264(s32 timer, u8 **ppData);
s32 func_800C318(s32 timer, u8 **ppData);
s32 func_800C358(s32 timer, u8 **ppData);
s32 func_800C3B8(s32 timer, u8 **ppData);
void CutsceneLoadBgObjPalette(u32 paletteFrame);

#endif  // CUTSCENE_BG_ANIM_H
