#ifndef SPRITE_AI_TOY_CAR_H
#define SPRITE_AI_TOY_CAR_H

#include "oam.h"

extern const struct AnimationFrame sToyCarIdleOam[];
extern const struct AnimationFrame sToyCarFallingOam[];
extern const struct AnimationFrame sToyCarTurningOam[];
extern const struct AnimationFrame sToyCarTurningAroundOam[];
extern const struct AnimationFrame sToyCarAlternateStunnedOam[];
extern const struct AnimationFrame sToyCarStunnedOam[];
extern const struct AnimationFrame sToyCarGettingUpOam[];
extern const struct AnimationFrame sToyCarHeldOam[];
extern const struct AnimationFrame sToyCarAlternatePushedOam[];
extern const struct AnimationFrame sToyCarPushedOam[];
extern const struct AnimationFrame sToyCarAlternateCrushedOam[];
extern const struct AnimationFrame sToyCarCrushedOam[];
extern const struct AnimationFrame sToyCarAlternateTackledOam[];
extern const struct AnimationFrame sToyCarTackledOam[];
extern const struct AnimationFrame sToyCarRecoveringOam[];

void SpriteToyCar(void);

#endif  // SPRITE_AI_TOY_CAR_H
