#ifndef SPRITE_AI_DENDEN_H
#define SPRITE_AI_DENDEN_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sDendenIdleOam[];
extern const struct AnimationFrame sDendenAirborneOam[];
extern const struct AnimationFrame sDendenThrownOam[];
extern const struct AnimationFrame sDendenLandingOam[];
extern const struct AnimationFrame sDendenHideOam[];
extern const struct AnimationFrame sDendenPushedOam[];
extern const struct AnimationFrame sDendenSpawnShellOam[];
extern const struct AnimationFrame sDendenShellOam[];
extern const struct AnimationFrame sDendenTurnStartOam[];
extern const struct AnimationFrame sDendenTurnMiddleOam[];
extern const struct AnimationFrame sDendenTurnEndOam[];
extern const struct AnimationFrame sDendenDeathOam[];
extern const struct AnimationFrame sDendenKnockedAwayOam[];
extern const struct AnimationFrame sDendenRetreatOam[];
extern const s16 sDendenFallingYVelocity[];

void SpriteDenden(void);
void SpriteDendenShell(void);

#endif  // SPRITE_AI_DENDEN_H
