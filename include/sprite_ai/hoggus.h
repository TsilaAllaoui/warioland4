#ifndef SPRITE_AI_HOGGUS_H
#define SPRITE_AI_HOGGUS_H

#include "oam.h"

extern const struct AnimationFrame sHoggusIdleOam[];
extern const struct AnimationFrame sHoggusChargeOam[];
extern const struct AnimationFrame sHoggusAttackVariant1Oam[];
extern const struct AnimationFrame sHoggusAttackVariant0Oam[];
extern const struct AnimationFrame sHoggusEggOam[];
extern const struct AnimationFrame sHoggusSpawnVariant1Oam[];
extern const struct AnimationFrame sHoggusSpawnVariant0Oam[];

void UpdateHoggusPosition(void);
void InitHoggus(void);
void StartHoggusIdle(void);
void HoggusIdle(void);
void StartHoggusCharge(void);
void HoggusCharge(void);
void StartHoggusAttack(void);
void HoggusAttack(void);
void StartHoggusSpawn(void);
void HoggusSpawn(void);
void StartHoggusEscape(void);
void HoggusEscape(void);
void InitHoggusEgg(void);
void HoggusEggUpdate(void);
void SpriteHoggus(void);
void SpriteHoggusEgg(void);

#endif  // SPRITE_AI_HOGGUS_H
