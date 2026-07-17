#ifndef BG_CLIP_H
#define BG_CLIP_H

#include "gba.h"

s32 GetBackgroundCollisionAtPosition(u16, u16);
s32 GetBg2CollisionTypeAtTile(s32 y, s32 x);
s32 TryTriggerRoomTransitionAtTile(s32 y, s32 x);
void CheckRoomTransitionAtPosition(u16 y, u16 x);
void ApplyRoomTransitionTileOffset(u8 value);
void SetRoomTransitionTileValues(s32 value);
void StartRoomTransitionFade(u8 type);

#endif  // BG_CLIP_H
