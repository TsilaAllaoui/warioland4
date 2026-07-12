#ifndef SPRITE_AI_MENONO_H
#define SPRITE_AI_MENONO_H

#include "oam.h"

extern const struct AnimationFrame sMenonoPushedOam[];
extern const struct AnimationFrame sMenonoTurningOam[];
extern const struct AnimationFrame sMenonoPreparingAttackOam[];
extern const struct AnimationFrame sMenonoWalkingOam[];
extern const struct AnimationFrame sMenonoAttackingOam[];
extern const struct AnimationFrame sMenonoStunnedOam[];
extern const struct AnimationFrame sMenonoFallingOam[];
extern const struct AnimationFrame sMenonoTackledOam[];
extern const struct AnimationFrame sMenonoCrushedOam[];
extern const struct AnimationFrame sMenonoGettingUpOam[];
extern const struct AnimationFrame sMenonoTurningAroundOam[];
extern const struct AnimationFrame sMenonoCrushedWhileStunnedOam[];

void SpriteMenono(void);

#endif  // SPRITE_AI_MENONO_H
