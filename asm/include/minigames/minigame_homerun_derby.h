#ifndef MINIGAME_HOMERUN_DERBY_H
#define MINIGAME_HOMERUN_DERBY_H

#include "types.h"

struct Unk_3004A20 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    s16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
};

extern u16 gUnk_30049E8[];
extern u8 gUnk_30049FC;
extern u8 gUnk_30049FD;
extern u16 gUnk_3004A00[];
extern u16 gUnk_3004A08;
extern u16 gUnk_3004A0A;
extern u8 gUnk_3004A0C;
extern u16 gUnk_3004A18[];
extern const u8 sUnk_871D64A[];
extern const u16 sUnk_871D652[];
extern const u16 sUnk_871D9C4[];
extern u8 gUnk_3004A2D;
extern u8 gUnk_3004A2F;
extern unsigned char sUnk_871D53C[];
extern u16 gButtonsPressed;
extern const u8 sUnk_871DD44[];
extern const s16 sSinCosTable[];
extern u8 gUnk_30047E0;
extern u8 gUnk_30047BA;
extern u16 gMedalCount;
extern u16 gUnk_30047D6;
extern u16 gUnk_30049E0;
extern u16 gUnk_30049E2;
extern u16 gMinigameHighScores;
extern const u16 sUnk_8724AA4[];
extern const u16 sUnk_8724964[];
extern const u16 sUnk_8725164[];
extern u8 gUnk_30047BB;
extern u16 gUnk_30047BC;
extern u8 gUnk_30047D4;
extern u16 gUnk_3004A20[];
extern s32 sUnk_871DD84[];
extern u8 gUnk_3004A2C;
extern u8 sUnk_871E6E4[];
extern u8 sUnk_871EEE4[];
extern u8 sUnk_8720EE4[];
extern u8 sUnk_87210E4[];
extern u8 sUnk_8725CE4[];
extern u8 sUnk_8725EE4[];
extern u8 sUnk_872DEE4[];
extern u8 sUnk_872E6E4[];
extern u8 sUnk_872EEE4[];

extern void func_807A428(void);
extern void func_807AB8C(u32, const u16 *, u32);
extern void func_8089C98(u32, const u16 *, u32);

extern u8  gUnk_30047B9;      /* state index */
extern u8  gUnk_30047E4[];    /* camera/scroll block (+4 = scrollY, +6 = wrap, +12 = flag) */
extern u16 gUnk_30047D6;      /* RNG-ish counter used with % 9 */
extern u8  gUnk_30049FC;      /* pitch selection index */
extern u8  gUnk_3004A0C;      /* "active" flag, cleared via func_808EB88 */
extern u8  gUnk_3004A10[];    /* pitcher block (+4 = chosen pitch, +5 = counter) */
extern u8  gUnk_3004A2D;      /* sub-mode selector */
extern u8  gUnk_3004A2E;      /* retry/strike counter */

/* ROM data tables (pitch lookup by difficulty). */
extern u8  sUnk_871D604[];    /* easy/normal pitch table */
extern u8  sUnk_871D627[];    /* hard (difficulty == 2) pitch table */

s32 func_808DFD0(void);
void func_808E4DC(void);
void func_808E55C(void);
void func_808E96C(void);
void func_808E834(void);
void func_808E898(void);
s32 func_808E8CC(void);
s32 func_808E9B4(void);
s32 func_808EB88(void);
s32 func_808EC10(void);
s32 func_808ECF0(void);
s32 func_808F8E4(void);
void func_808FAF4(void);
void func_808ED88(void);
s32 func_8089B9C(s32);

#endif // MINIGAME_HOMERUN_DERBY_H
