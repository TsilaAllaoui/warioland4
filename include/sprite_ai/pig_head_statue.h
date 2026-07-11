#ifndef SPRITE_AI_PIG_HEAD_STATUE_H
#define SPRITE_AI_PIG_HEAD_STATUE_H

#include "sprite.h"

extern const struct AnimationFrame sPigHeadStatueIdleOam[];
extern const struct AnimationFrame sPigHeadStatueOpeningOam[];
extern const struct AnimationFrame sPigHeadStatueFireOam[];
extern const struct AnimationFrame sPigHeadProjectileFallOam[];
extern const struct AnimationFrame sPigHeadProjectileLandedOam[];
extern const struct AnimationFrame sPigHeadProjectileDespawnOam[];

void InitPigHeadStatue(void);
void PigHeadStatueWaitToOpen(void);
void PigHeadStatueWaitToFire(void);
void PigHeadStatueFireProjectile(void);
void PigHeadStatueStartCooldown(void);
void PigHeadStatueCooldown(void);
void InitPigHeadProjectile(void);
void PigHeadProjectileFall(void);
void PigHeadProjectileStartDespawn(void);
void PigHeadProjectileDespawn(void);
void SpritePigHeadStatue(void);
void SpritePigHeadProjectile(void);

#endif  // SPRITE_AI_PIG_HEAD_STATUE_H
