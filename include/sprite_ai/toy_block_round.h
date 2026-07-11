#ifndef SPRITE_AI_TOY_BLOCK_ROUND_H
#define SPRITE_AI_TOY_BLOCK_ROUND_H

#include "sprite.h"

extern const struct AnimationFrame sToyBlockRoundOam[];

void InitToyBlockRound(void);
void ResetToyBlockRound(void);
void ToyBlockRoundIdle(void);
void StartToyBlockRoundFalling(void);
void ToyBlockRoundFalling(void);
void StartToyBlockRoundCounterclockwiseSpin(void);
void StartToyBlockRoundClockwiseSpin(void);
void StartToyBlockRoundCounterclockwisePush(void);
void ToyBlockRoundCounterclockwisePush(void);
void StartToyBlockRoundClockwisePush(void);
void ToyBlockRoundClockwisePush(void);
void StartToyBlockRoundClockwiseRoll(void);
void ToyBlockRoundClockwiseRoll(void);
void StartToyBlockRoundCounterclockwiseRoll(void);
void ToyBlockRoundCounterclockwiseRoll(void);
void SpriteToyBlockRound(void);

#endif  // SPRITE_AI_TOY_BLOCK_ROUND_H
