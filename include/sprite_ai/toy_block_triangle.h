#ifndef SPRITE_AI_TOY_BLOCK_TRIANGLE_H
#define SPRITE_AI_TOY_BLOCK_TRIANGLE_H

#include "oam.h"

extern const struct AnimationFrame sToyBlockTriangleOam[];
extern const struct AnimationFrame sToyBlockTriangleDoorOpenIdleAnimationOam[];
extern const struct AnimationFrame sToyBlockTriangleDoorOpeningOam[];
extern const struct AnimationFrame sToyBlockTriangleDoorOpenOam[];
extern const struct AnimationFrame sToyBlockTriangleDoorClosedOam[];

void SpriteToyBlockTriangle(void);
void SpriteToyBlockTriangleLock(void);
void SpriteToyBlockTriangleDoor(void);

#endif  // SPRITE_AI_TOY_BLOCK_TRIANGLE_H
