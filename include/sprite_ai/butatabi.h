#ifndef SPRITE_AI_BUTATABI_H
#define SPRITE_AI_BUTATABI_H

#include "sprite.h"
#include "types.h"

extern const struct AnimationFrame sButatabiMovingOam[];
extern const struct AnimationFrame sButatabiTurningOam[];
extern const struct AnimationFrame sButatabiTurnAroundOam[];
extern const struct AnimationFrame sButatabiFallingOam[];
extern const s16 sButatabiXVelocity[];
extern const s16 sButatabiYVelocity[];

void SetButatabiHitbox(void);
void InitButatabi(void);
void ButatabiTackled(void);
void ButatabiTackledRightInit(void);
void ButatabiTackledLeftInit(void);
void ButatabiAirborne(void);
void ButatabiAirborneRightInit(void);
void ButatabiAirborneLeftInit(void);
void ButatabiMove(void);
void SpriteButatabi(void);

#endif  // SPRITE_AI_BUTATABI_H
