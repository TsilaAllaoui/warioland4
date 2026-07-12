#ifndef SPRITE_AI_ONOMI_H
#define SPRITE_AI_ONOMI_H

#include "oam.h"

extern const struct AnimationFrame sOnomiPushedOam[];
extern const struct AnimationFrame sOnomiTurningOam[];
extern const struct AnimationFrame sOnomiPreparingAttackOam[];
extern const struct AnimationFrame sOnomiWalkingOam[];
extern const struct AnimationFrame sOnomiAttackingOam[];
extern const struct AnimationFrame sOnomiStunnedOam[];
extern const struct AnimationFrame sOnomiFallingOam[];
extern const struct AnimationFrame sOnomiTackledOam[];
extern const struct AnimationFrame sOnomiCrushedOam[];
extern const struct AnimationFrame sOnomiGettingUpOam[];
extern const struct AnimationFrame sOnomiTurningAroundOam[];
extern const struct AnimationFrame sOnomiCrushedWhileStunnedOam[];

void SpriteOnomi(void);

#endif  // SPRITE_AI_ONOMI_H
