#ifndef SPRITE_AI_CATERPILLAR_H
#define SPRITE_AI_CATERPILLAR_H

#include "oam.h"

extern const struct AnimationFrame sCaterpillarCrawlingOam[];
extern const struct AnimationFrame sCaterpillarFallingOam[];
extern const struct AnimationFrame sCaterpillarTurningOam[];
extern const struct AnimationFrame sCaterpillarTurningAroundOam[];
extern const struct AnimationFrame sCaterpillarPushedBackwardOam[];
extern const struct AnimationFrame sCaterpillarPushedForwardOam[];
extern const struct AnimationFrame sCaterpillarCrushedOam[];
extern const struct AnimationFrame sCaterpillarTackledOam[];
extern const struct AnimationFrame sCaterpillarStunnedOam[];
extern const struct AnimationFrame sCaterpillarGettingUpOam[];
extern const struct AnimationFrame sCaterpillarCarriedOam[];

void SpriteCaterpillar(void);

#endif  // SPRITE_AI_CATERPILLAR_H
