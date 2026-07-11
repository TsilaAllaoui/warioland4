#ifndef SPRITE_AI_MAGMA_H
#define SPRITE_AI_MAGMA_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sMagmaOam_83D2570[];
extern const struct AnimationFrame sMagmaOam_83D2598[];
extern const s16 sMagmaYVelocity[];

void InitMagma(void);
void MagmaWaitBeforeRising(void);
void MagmaRise(void);
void MagmaSink(void);
void SpriteMagma(void);

#endif  // SPRITE_AI_MAGMA_H
