#ifndef SPRITE_AI_PETBOTTOM_H
#define SPRITE_AI_PETBOTTOM_H

#include "oam.h"

extern const struct AnimationFrame sPetbottomIdleOam[];
extern const struct AnimationFrame sPetbottomFallingOam[];
extern const struct AnimationFrame sPetbottomTurningOam[];
extern const struct AnimationFrame sPetbottomTurningAroundOam[];
extern const struct AnimationFrame sPetbottomAlternateStunnedOam[];
extern const struct AnimationFrame sPetbottomGettingUpOam[];
extern const struct AnimationFrame sPetbottomStunnedOam[];
extern const struct AnimationFrame sPetbottomAlternatePushedOam[];
extern const struct AnimationFrame sPetbottomPushedOam[];
extern const struct AnimationFrame sPetbottomCrushedOam[];
extern const struct AnimationFrame sPetbottomTackledOam[];
extern const struct AnimationFrame sPetbottomRecoveringOam[];

void SpritePetbottom(void);

#endif  // SPRITE_AI_PETBOTTOM_H
