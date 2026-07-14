#ifndef SPRITE_AI_PROFESSOR_H
#define SPRITE_AI_PROFESSOR_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sProfessorWalkOam[];
extern const struct AnimationFrame sProfessorTurnOam[];
extern const struct AnimationFrame sProfessorAirborneOam[];
extern const struct AnimationFrame sProfessorThrownRightOam[];
extern const struct AnimationFrame sProfessorThrownLeftOam[];
extern const struct AnimationFrame sProfessorWaitOam[];
extern const struct AnimationFrame sProfessorFallOam[];
extern const struct AnimationFrame sProfessorSplashOam[];
extern const struct AnimationFrame sProfessorScoreDigitTwoOrSevenOam[];
extern const struct AnimationFrame sProfessorUnderwaterPatrolOam[];
extern const struct AnimationFrame sProfessorScoreDigitFourOrNineOam[];
extern const s16 sProfessorPatrolYOffsets[];
extern const struct AnimationFrame sProfessorProjectileOam[];

void SpriteProfessor(void);
void SpriteProfessorProjectile(void);

#endif  // SPRITE_AI_PROFESSOR_H
