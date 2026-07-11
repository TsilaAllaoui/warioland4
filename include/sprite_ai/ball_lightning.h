#ifndef SPRITE_AI_BALL_LIGHTNING_H
#define SPRITE_AI_BALL_LIGHTNING_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBallLightningBoltFallingLeftOam[];
extern const struct AnimationFrame sBallLightningBoltFallingRightOam[];
extern const struct AnimationFrame sBallLightningBoltIdleOam[];
extern const struct AnimationFrame sBallLightningTrailOam[];
extern const struct AnimationFrame sBallLightningBoltDisappearingOam[];
extern const struct AnimationFrame sBallLightningSpawnerOam[];
extern const s16 sBallLightningTrailYVelocity[];

void SpriteBallLightning(void);
void SpriteBallLightningBolt(void);
void SpriteBallLightningTrail(void);

#endif  // SPRITE_AI_BALL_LIGHTNING_H
