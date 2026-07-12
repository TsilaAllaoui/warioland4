#ifndef SPRITE_AI_MENHAMMER_H
#define SPRITE_AI_MENHAMMER_H

#include "oam.h"

extern const struct AnimationFrame sMenhammerPushedOam[];
extern const struct AnimationFrame sMenhammerWalkingOam[];
extern const struct AnimationFrame sMenhammerFallingOam[];
extern const struct AnimationFrame sMenhammerTurningOam[];
extern const struct AnimationFrame sMenhammerGettingUpOam[];
extern const struct AnimationFrame sMenhammerJumpingAttackOam[];
extern const struct AnimationFrame sMenhammerStunnedOam[];
extern const struct AnimationFrame sMenhammerCrushedOam[];
extern const struct AnimationFrame sMenhammerTackledOam[];
extern const struct AnimationFrame sMenhammerCrushedWhileStunnedOam[];
extern const struct AnimationFrame sMenhammerTurningAroundOam[];
extern const struct AnimationFrame sMenhammerLandingAttackOam[];
extern const s16 sMenhammerYVelocity[];

void SpriteMenhammer(void);

#endif  // SPRITE_AI_MENHAMMER_H
