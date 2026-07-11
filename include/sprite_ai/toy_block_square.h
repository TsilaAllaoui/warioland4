#ifndef SPRITE_AI_TOY_BLOCK_SQUARE_H
#define SPRITE_AI_TOY_BLOCK_SQUARE_H

#include "sprite.h"

extern const struct AnimationFrame sToyBlockSquareOam[];
extern const s16 sToyBlockSquareYMovement[];

void ToyBlockSquareCheckSpriteCollisions(void);
void ToyBlockSquareSetPassableTiles(void);
void ToyBlockSquareSetSolidTiles(void);
void InitToyBlockSquare(void);
void ToyBlockSquareIdle(void);
void StartToyBlockSquareFalling(void);
void ToyBlockSquareFalling(void);
void SpriteToyBlockSquare(void);

#endif  // SPRITE_AI_TOY_BLOCK_SQUARE_H
