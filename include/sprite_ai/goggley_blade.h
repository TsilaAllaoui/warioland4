#ifndef SPRITE_AI_GOGGLEY_BLADE_H
#define SPRITE_AI_GOGGLEY_BLADE_H

#include "global_data.h"
#include "types.h"

extern const struct AnimationFrame sGoggleyBladeHorizontalOam[];
extern const struct AnimationFrame sGoggleyBladeKnockbackHorizontalOam[];
extern const struct AnimationFrame sGoggleyBladeHurtHorizontalOam[];
extern const struct AnimationFrame sGoggleyBladeDefeatedHorizontalOam[];
extern const struct AnimationFrame sGoggleyBladeVerticalUpOam[];
extern const struct AnimationFrame sGoggleyBladeKnockbackVerticalUpOam[];
extern const struct AnimationFrame sGoggleyBladeHurtVerticalUpOam[];
extern const struct AnimationFrame sGoggleyBladeDefeatedVerticalUpOam[];
extern const struct AnimationFrame sGoggleyBladeVerticalDownOam[];
extern const struct AnimationFrame sGoggleyBladeKnockbackVerticalDownOam[];
extern const struct AnimationFrame sGoggleyBladeHurtVerticalDownOam[];
extern const struct AnimationFrame sGoggleyBladeDefeatedVerticalDownOam[];
extern const struct AnimationFrame sGoggleyBladeTurnDownOam[];
extern const struct AnimationFrame sGoggleyBladeTurnUpOam[];
extern const s16 sGoggleyBladeMovementVelocity[];
extern const s16 sGoggleyBladeTurnVelocity[];

void InitGoggleyBlade(void);
void GoggleyBladeSetHorizontalMovement(void);
void GoggleyBladeHorizontalMovement(void);
void GoggleyBladeSetTurnDown(void);
void GoggleyBladeTurnDown(void);
void GoggleyBladeSetTurnUp(void);
void GoggleyBladeTurnUp(void);
void GoggleyBladeSetVerticalMovement(void);
void GoggleyBladeVerticalMovement(void);
void GoggleyBladeSetTurnHorizontal(void);
void GoggleyBladeTurnHorizontal(void);
void GoggleyBladeSetKnockback(void);
void GoggleyBladeKnockback(void);
void GoggleyBladeSetStunned(void);
void GoggleyBladeStunned(void);
void DefeatGoggleyBlade(void);
void GoggleyBladeFallRight(void);
void GoggleyBladeFallLeft(void);
void SpriteGoggleyBlade(void);

#endif  // SPRITE_AI_GOGGLEY_BLADE_H
