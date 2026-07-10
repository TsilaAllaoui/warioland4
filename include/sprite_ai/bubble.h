#ifndef SPRITE_AI_BUBBLE_H
#define SPRITE_AI_BUBBLE_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBubbleMovingOam[];
extern const struct AnimationFrame sBubbleIdleOam[];
extern const struct AnimationFrame sBubblePopOam[];
extern const struct AnimationFrame sBubbleSpawnerOam[];

void func_801E3A8(u8 globalID, u8 roomSlot, u8 gfxSlot, u16 yPosition, u16 xPosition, u16 status);

void SpriteBubble(void);
void SpriteBubbleInstance(void);

#endif  // SPRITE_AI_BUBBLE_H
