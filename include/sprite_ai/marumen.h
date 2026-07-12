#ifndef SPRITE_AI_MARUMEN_H
#define SPRITE_AI_MARUMEN_H

#include "oam.h"

extern const struct AnimationFrame sMarumenIdleOam[];
extern const struct AnimationFrame sMarumenFallingOam[];
extern const struct AnimationFrame sMarumenTurningOam[];
extern const struct AnimationFrame sMarumenTurningAroundOam[];
extern const struct AnimationFrame sMarumenAirborneOam[];
extern const struct AnimationFrame sMarumenStunnedOam[];
extern const struct AnimationFrame sMarumenGettingUpOam[];
extern const struct AnimationFrame sMarumenDefeatedOam[];
extern const struct AnimationFrame sMarumenAlternateCrushedOam[];
extern const struct AnimationFrame sMarumenCrushedOam[];
extern const struct AnimationFrame sMarumenRecoveringOam[];
extern const struct AnimationFrame sMarumenPushedOam[];
extern const s16 sMarumenGettingUpYVelocity[];
extern const s16 sMarumenAirborneYVelocity[];

void SpriteMarumen(void);

#endif  // SPRITE_AI_MARUMEN_H
