#ifndef MINIGAME_TRANSITION_H
#define MINIGAME_TRANSITION_H

#include "gba.h"
#include "oam.h"
#include "types.h"

void SubGameInitAndDispatch(u32 subGameMode);
void SubGameClearGraphicsMemory(void);
void SubGameWaitAndAdvance(void);

void func_80033BC(void);
void func_8003428(void);
void func_8003C90(void);
void func_8003F88(void);
void func_8004244(void);
void func_8004350(void);
void func_80046D8(void);
void func_8004B14(void);
void func_800542C(void);
void func_80057BC(void);
void func_8005CC0(void);
void func_8006680(void);
void func_8006E00(void);
void func_80077C4(void);
void func_8007B14(void);
void func_8008900(void);
void func_8009B38(void);
void func_800A180(void);
void func_800AFDC(void);
void func_800B580(u32 subGameMode);
void func_800B6C0(void);

#endif // MINIGAME_TRANSITION_H
