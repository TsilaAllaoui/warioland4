#ifndef WARIO_BOUNCY_H
#define WARIO_BOUNCY_H

#include "global_data.h"
#include "types.h"

extern const struct WarioAnimationFrame sBouncyWarioTransformingAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioJumpingAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioHittingCeilingAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioStartingJumpAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioFinalLandingAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioFinalBounceAnimation[];
extern const struct WarioAnimationFrame sBouncyWarioHoppingAnimation[];

extern u8 func_80143D8(void);
extern u8 func_8014758(void);
extern void func_8016614(u8);

u8 UpdateBouncyWario(void);
u8 BouncyWarioTransforming(void);
u8 BouncyWarioUnknown1(void);
u8 BouncyWarioJumping(void);
u8 BouncyWarioHitCeiling(void);
u8 BouncyWarioStartJump(void);
u8 BouncyWarioFallFromCeiling(void);
u8 BouncyWarioFinalLanding(void);
u8 BouncyWarioFinalBounce(void);
u8 BouncyWarioHopping(void);
void SetBouncyWarioPose(u8 result);
void UpdateBouncyWarioMovement(void);
void ProcessBouncyWarioCollision(void);
void UpdateBouncyWarioGraphics(u8 variant);
void ApplyBouncyWarioMusicEffect(void);
void UpdateBouncyWarioHitbox(void);

#endif  // WARIO_BOUNCY_H
