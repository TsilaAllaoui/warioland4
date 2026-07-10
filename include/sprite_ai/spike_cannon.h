#ifndef SPRITE_AI_SPIKE_CANNON_H
#define SPRITE_AI_SPIKE_CANNON_H

#include "types.h"

struct AnimationFrame;

extern const struct AnimationFrame sSpikeCannonProjectileFlyingOam[];
extern const struct AnimationFrame sSpikeCannonProjectileDespawnOam[];
extern const struct AnimationFrame sSpikeCannonOam[];
extern const s16 sSpikeCannonProjectileYVelocity[];

void func_801E3A8(u8 id, u8 roomSlot, u8 gfxSlot, u32 yPosition, u32 xPosition, u32 status);

void InitSpikeCannon(void);
void SpikeCannonWait(void);
void SpikeCannonFire(void);
void InitSpikeCannonProjectile(void);
void SpikeCannonProjectileMove(void);
void StartSpikeCannonProjectileDespawn(void);
void SpikeCannonProjectileDespawn(void);
void SpriteSpikeCannon(void);
void SpriteSpikeCannonProjectile(void);

#endif  // SPRITE_AI_SPIKE_CANNON_H
