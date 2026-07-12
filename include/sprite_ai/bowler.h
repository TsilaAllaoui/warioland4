#ifndef SPRITE_AI_BOWLER_H
#define SPRITE_AI_BOWLER_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBowlerIdleOam[];
extern const struct AnimationFrame sBowlerTurningOam[];
extern const struct AnimationFrame sBowlerTurnAroundOam[];
extern const struct AnimationFrame sBowlerThrowOam[];
extern const struct AnimationFrame sBowlerWalkingOam[];
extern const struct AnimationFrame sBowlerDyingOam[];
extern const struct AnimationFrame sBowlerKnockbackLeftOam[];
extern const struct AnimationFrame sBowlerKnockbackUpOam[];
extern const struct AnimationFrame sBowlerBallOam[];
extern const struct AnimationFrame sBowlerTransformOam[];
extern const struct AnimationFrame sBowlerKnockbackRightOam[];
extern const s16 sBowlerBallYMovement[];

void SpriteBowler(void);
void SpriteBowlerBall(void);

#endif  // SPRITE_AI_BOWLER_H
