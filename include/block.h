#ifndef BLOCK_H
#define BLOCK_H

#include "types.h"

void UpdateRoomStartDebugInfo(void);
s32 GetWarioBlockCollisionAtPosition(u32 y, u32 x);
s32 GetSpriteBlockCollisionAtPosition(u16 y, u16 x);

#endif  // BLOCK_H
