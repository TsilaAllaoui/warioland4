#ifndef SPRITE_AI_FOLDING_DOOR_H
#define SPRITE_AI_FOLDING_DOOR_H

#include "oam.h"

extern const struct AnimationFrame sFoldingDoorClosedOam[];
extern const struct AnimationFrame sFoldingDoorOpeningOam[];
extern const struct AnimationFrame sFoldingDoorOpenOam[];

void SetFoldingDoorCollision(void);
void ClearFoldingDoorCollision(void);
void InitFoldingDoor(void);
void FoldingDoorWaitForSwitch(void);
void FoldingDoorOpening(void);
void SpriteFoldingDoor(void);

#endif  // SPRITE_AI_FOLDING_DOOR_H
