#ifndef SPRITE_AI_TOGENOBI_H
#define SPRITE_AI_TOGENOBI_H

#include "oam.h"

extern const struct AnimationFrame sTogenobiCenterPartOam[];
extern const struct AnimationFrame sTogenobiOuterPartVerticalOam[];
extern const struct AnimationFrame sTogenobiOuterPartHorizontalOam[];
extern const struct AnimationFrame sTogenobiInnerPartOam[];
extern const struct AnimationFrame sTogenobiOam[];

void SpriteTogenobi(void);
void SpriteTogenobiOuterPart(void);
void SpriteTogenobiInnerPart(void);
void SpriteTogenobiCenterPart(void);

#endif  // SPRITE_AI_TOGENOBI_H
