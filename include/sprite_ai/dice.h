#ifndef SPRITE_AI_DICE_H
#define SPRITE_AI_DICE_H

#include "oam.h"

extern const struct AnimationFrame sDiceIdleOam[];
extern const struct AnimationFrame sDiceFallingOam[];
extern const struct AnimationFrame sDiceTurningOam[];
extern const struct AnimationFrame sDiceTurningAroundOam[];
extern const struct AnimationFrame sDiceAlternateStunnedOam[];
extern const struct AnimationFrame sDiceStunnedOam[];
extern const struct AnimationFrame sDiceGettingUpOam[];
extern const struct AnimationFrame sDiceAlternatePushedOam[];
extern const struct AnimationFrame sDicePushedOam[];
extern const struct AnimationFrame sDiceAlternateCrushedOam[];
extern const struct AnimationFrame sDiceCrushedOam[];
extern const struct AnimationFrame sDiceAlternateTackledOam[];
extern const struct AnimationFrame sDiceTackledOam[];
extern const struct AnimationFrame sDiceRecoveringOam[];

void SpriteDice(void);

#endif  // SPRITE_AI_DICE_H
