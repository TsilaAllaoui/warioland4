#ifndef SPRITE_AI_ROBOBIRD_H
#define SPRITE_AI_ROBOBIRD_H

#include "sprite.h"

extern const struct AnimationFrame sRobobirdIdleOam[];
extern const struct AnimationFrame sRobobirdAttackStartupOam[];
extern const struct AnimationFrame sRobobirdAttackOam[];
extern const struct AnimationFrame sRobobirdFallingOam[];
extern const struct AnimationFrame sRobobirdFastAttackOam[];

void SpriteRobobird(void);

#endif  // SPRITE_AI_ROBOBIRD_H
