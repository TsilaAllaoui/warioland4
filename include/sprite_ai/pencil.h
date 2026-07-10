#ifndef SPRITE_AI_PENCIL_H
#define SPRITE_AI_PENCIL_H

#include "oam.h"

extern const struct AnimationFrame sPencilPurpleOam[];
extern const struct AnimationFrame sPencilBlueOam[];
extern const struct AnimationFrame sPencilRedOam[];

void InitPencil(void);
void PencilStartMovingRight(void);
void PencilMoveRight(void);
void PencilStartMovingLeft(void);
void PencilMoveLeft(void);
void SpritePencil(void);

#endif  // SPRITE_AI_PENCIL_H
