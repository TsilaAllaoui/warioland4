#ifndef SPRITE_AI_BUBBLE_H
#define SPRITE_AI_BUBBLE_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBubbleMovingOam[];
extern const struct AnimationFrame sBubbleIdleOam[];
extern const struct AnimationFrame sBubblePopOam[];
extern const struct AnimationFrame sBubbleSpawnerOam[];

void SpriteBubble(void);
void SpriteBubbleInstance(void);

#endif  // SPRITE_AI_BUBBLE_H
