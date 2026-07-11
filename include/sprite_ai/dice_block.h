#ifndef SPRITE_AI_DICE_BLOCK_H
#define SPRITE_AI_DICE_BLOCK_H

#include "oam.h"

extern const struct AnimationFrame sDiceBlockIdleOam[];
extern const struct AnimationFrame sDiceBlockCrushedOam[];
extern const struct AnimationFrame sDiceBlockBreakingOam[];

void SetDiceBlockCollision(void);
void ClearDiceBlockCollision(void);
void InitDiceBlock(void);
void DiceBlockCrushedInit(void);
void DiceBlockCrushed(void);
void DiceBlockBreakInit(void);
void DiceBlockBreak(void);
void SpriteDiceBlock(void);

#endif  // SPRITE_AI_DICE_BLOCK_H
