#ifndef SPRITE_AI_ELECTRIC_LIFT_H
#define SPRITE_AI_ELECTRIC_LIFT_H

#include "oam.h"

extern const struct AnimationFrame sElectricLiftStationaryIdleOam[];
extern const struct AnimationFrame sElectricLiftStationaryTransitionOam[];
extern const struct AnimationFrame sElectricLiftStationaryResetOam[];
extern const struct AnimationFrame sElectricLiftStationaryActiveOam[];
extern const struct AnimationFrame sElectricLiftMovingTurnOam[];
extern const struct AnimationFrame sElectricLiftMovingOam[];

void SpriteElectricLiftStationary(void);
void SpriteElectricLiftVertical(void);
void SpriteElectricLiftHorizontal(void);

#endif  // SPRITE_AI_ELECTRIC_LIFT_H
