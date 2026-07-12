#ifndef SPRITE_AI_SPIKY_H
#define SPRITE_AI_SPIKY_H

#include "oam.h"

extern const struct AnimationFrame sSpikyIdleOam[];
extern const struct AnimationFrame sSpikyFallingOam[];
extern const struct AnimationFrame sSpikyTurningOam[];
extern const struct AnimationFrame sSpikyTurningAroundOam[];
extern const struct AnimationFrame sSpikyAirborneOam[];
extern const struct AnimationFrame sSpikyGettingUpOam[];
extern const struct AnimationFrame sSpikyRecoveringOam[];
extern const struct AnimationFrame sSpikyStunnedOam[];
extern const struct AnimationFrame sSpikyPushedOam[];
extern const struct AnimationFrame sSpikyDefeatedOam[];

void SpriteSpiky(void);

#endif  // SPRITE_AI_SPIKY_H
