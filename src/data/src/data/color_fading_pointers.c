#include "types.h"

u16 func_8070D20(u32, u32, u32, u32);
u16 func_8070D68(u32, u32, u32, u32);
u16 func_8070DAC(u32, u32, u32, u32);
u16 func_8070DE4(u32, u32, u32, u32);

u16 (*sUnk_878F5CC[])(u32, u32, u32, u32) = {
    func_8070D20,
};

u16 (*sUnk_878F5D0[])(u32, u32, u32, u32) = {
    func_8070D68,
    func_8070DAC,
    func_8070DE4,
};
