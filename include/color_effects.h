#ifndef COLOR_EFFECTS_H
#define COLOR_EFFECTS_H

#include "types.h"

struct ColorFading {
    u8 type;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
    u8 unk_5;
};

extern struct ColorFading gColorFading;

void ColorFadingProcess(void);
void func_8070A84(u8, u8, u8);
s32 func_80710D8(u8, u8);
void func_80711E8(void);
s32 func_80712F8(void);
s32 func_8071394(void);

void func_8070964(u8, u8, u8);

#endif  // COLOR_EFFECTS_H
