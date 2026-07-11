#ifndef SPRITE_AI_BUTATABI_H
#define SPRITE_AI_BUTATABI_H

#include "sprite.h"

extern const struct AnimationFrame sButatabiIdleOam[];
extern const struct AnimationFrame sButatabiTurnStartOam[];
extern const struct AnimationFrame sButatabiTurnEndOam[];
extern const struct AnimationFrame sButatabiTackledOam[];
extern const s16 sButatabiXVelocity[];
extern const s16 sButatabiYVelocity[];

void SetButatabiHitbox(void);
void InitButatabi(void);
void StartButatabiTackled(void);
void InitButatabiTackledRight(void);
void InitButatabiTackledLeft(void);
void StartButatabiBumped(void);
void InitButatabiBumpedRight(void);
void InitButatabiBumpedLeft(void);
void ButatabiHop(void);
void SpriteButatabi(void);

#endif  // SPRITE_AI_BUTATABI_H
