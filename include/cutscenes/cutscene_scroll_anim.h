#ifndef CUTSCENE_SCROLL_ANIM_H
#define CUTSCENE_SCROLL_ANIM_H

#include "types.h"

extern u8 sUnk_82D270C;
extern u8 sUnk_82D2714;
extern u8 sUnk_82D2722;
extern u8 sUnk_82D272A;
extern u8 sUnk_82D2738;
extern u8 sUnk_82D2746;
extern u8 sUnk_82D275A;
extern u8 sUnk_82D276E;
extern u8 sUnk_82D2956;
extern u8 sUnk_82D2788;
extern u8 sUnk_82D27B4;
extern u8 sUnk_82D27E0;
extern u8 sUnk_82D2812;
extern u8 sUnk_82D283E;
extern u8 sUnk_82D286A;
extern u8 sUnk_82D289C;
extern u8 sUnk_82D28D4;
extern u8 sUnk_82D2912;
extern u8 sUnk_82D2976;
extern u8 sUnk_82D297E;
extern u8 sUnk_82D298C;
extern u8 sUnk_82D2994;
extern u8 sUnk_82D29A2;
extern u8 sUnk_82D29B0;
extern u8 sUnk_82D29BE;
extern u8 sUnk_82D29D2;
extern u8 sUnk_82D29E6;
extern u8 sUnk_82D2A00;
extern u8 sUnk_82D2A20;
extern u8 sUnk_82D2A46;
extern u16 *sUnk_878E7C0[];
extern u16 *sUnk_878E7D0[];
extern u16 *sUnk_878E7E0[];
extern u16 *sUnk_878E7F0[];

s32 func_800F7BC(s32 timer, u8 **ppData);
s32 func_800F8A4(s32 timer, u8 **ppData);
s32 func_800F940(s32 tableIndex, s32 step, s16 *pX, s16 *pY);
s32 func_800F990(s32 tableIndex, s32 step, s16 *pX, s16 *pY);

#endif // CUTSCENE_SCROLL_ANIM_H