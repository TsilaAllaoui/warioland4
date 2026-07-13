#ifndef SPRITE_AI_BOW_BALLOON_H
#define SPRITE_AI_BOW_BALLOON_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBowBalloonIdleOam[];
extern const struct AnimationFrame sBowBalloonFallingOam[];
extern const struct AnimationFrame sBowBalloonTurningOam[];
extern const struct AnimationFrame sBowBalloonTurningAroundOam[];
extern const struct AnimationFrame sBowBalloonRecoveringOam[];
extern const struct AnimationFrame sBowBalloonAirborneOam[];
extern const struct AnimationFrame sBowBalloonAttackingOam[];
extern const struct AnimationFrame sBowBalloonPushedOam[];
extern const struct AnimationFrame sBowBalloonStunnedOam[];
extern const struct AnimationFrame sBowBalloonGettingUpOam[];
extern const struct AnimationFrame sBowBalloonCrushedWhileStunnedOam[];
extern const struct AnimationFrame sBowBalloonCrushedOam[];
extern const struct AnimationFrame sBowBalloonTackledOam[];
extern const struct AnimationFrame sBowBalloonProjectileOam[];
extern const s16 sBowBalloonGettingUpYVelocity[];

void SpriteBowBalloon(void);
void SpriteBowBalloonProjectile(void);

#endif  // SPRITE_AI_BOW_BALLOON_H
