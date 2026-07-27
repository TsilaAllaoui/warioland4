#ifndef TILE_COLLISION_H
#define TILE_COLLISION_H

#include "types.h"

u32 ProcessHorizontalTileInteraction(u32 y, u32 x);
u32 ProcessPointTileInteraction(u32 y, u32 x);
u32 ProcessSideTileInteraction(u32 y, u32 x);

#endif
