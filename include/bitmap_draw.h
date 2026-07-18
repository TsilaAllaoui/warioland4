#ifndef BITMAP_DRAW_H
#define BITMAP_DRAW_H

#include "types.h"
#include "global_data.h"

void DrawSetBgTileColor(s32 x, s32 y, s32 color);
void BitmapDrawBgLine(s32 x0, s32 y0, s32 x1, s32 y1, s32 color);

#endif //BITMAP_DRAW_H
