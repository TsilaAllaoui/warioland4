#ifndef SPRITE_AI_YETI_H
#define SPRITE_AI_YETI_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sYetiAttackOam[];
extern const struct AnimationFrame sYetiAttackRecoverOam[];
extern const struct AnimationFrame sYetiIdleOam[];
extern const struct AnimationFrame sYetiTurningOam[];
extern const struct AnimationFrame sYetiTurningAroundOam[];
extern const struct AnimationFrame sYetiFallingOam[];
extern const struct AnimationFrame sYetiCrushedOam[];
extern const struct AnimationFrame sYetiCrushedWhileStunnedOam[];
extern const struct AnimationFrame sYetiStunnedOam[];
extern const struct AnimationFrame sYetiAirborneOam[];
extern const struct AnimationFrame sYetiRecoveringOam[];
extern const struct AnimationFrame sYetiPushedOam[];
extern const struct AnimationFrame sYetiTackledOrDefeatedOam[];
extern const struct AnimationFrame sYetiSnowballOam[];
extern const struct AnimationFrame sYetiSnowballMovingOam[];
extern const struct AnimationFrame sYetiSnowballDisappearOam[];

void SpriteYeti(void);
void SpriteYetiSnowball(void);

#endif  // SPRITE_AI_YETI_H
