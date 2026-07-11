#ifndef WARIO_FROZEN_H
#define WARIO_FROZEN_H

#include "types.h"

u8 UpdateFrozenWario(void);
u8 FrozenWarioTransforming(void);
u8 FrozenWarioSlideLeft(void);
u8 FrozenWarioSlideRight(void);
u8 FrozenWarioBonk(void);
void SetFrozenWarioPose(int pose);
void UpdateFrozenWarioMovement(void);
void ProcessFrozenWarioCollision(void);
void LoadFrozenWarioGraphics(int index);
void ApplyFrozenWarioMusicEffects(void);
void UpdateFrozenWarioHitbox(void);

#endif  // WARIO_FROZEN_H
