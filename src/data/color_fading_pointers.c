#include "color_effects.h"

typedef u16 (*ColorBlendFunction)(u32, u32, u32, u32);

ColorBlendFunction sColorBlendFunctionTable[] = {
    (ColorBlendFunction)BlendColorFromWhite,
};

ColorBlendFunction sColorBlendFunctionTableTail[] = {
    (ColorBlendFunction)BlendColorToWhite,
    (ColorBlendFunction)BlendColorFromBlack,
    (ColorBlendFunction)BlendColorToBlack,
};
