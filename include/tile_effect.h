#ifndef TILE_EFFECT_H
#define TILE_EFFECT_H

#include "types.h"

struct TileEffectState {
    u8 state;
    u8 type;
    u8 timer;
};

extern struct TileEffectState gTileEffectState;

void StartTileEffect(u32 type);

#endif
