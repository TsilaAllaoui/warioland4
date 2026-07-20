#ifndef SPRITE_AI_CUCKOO_CONDOR_H
#define SPRITE_AI_CUCKOO_CONDOR_H

#include "oam.h"

extern const u16 sCuckooCondorBattleGfx[];
extern const s16 sCuckooCondorChickYVelocity[];
extern const s16 sCuckooCondorFlightYVelocity[];
extern const s16 sCuckooCondorClockYVelocity[];

void UpdateCuckooCondorPendulumHeight(void);
void InitCuckooCondorSmallDebris(void);
void UpdateCuckooCondorSmallDebrisFall(void);
void UpdateCuckooCondorSmallDebris(void);
void ResetCuckooCondorEggMotion(void);
void PrepareCuckooCondorEggFallOffscreen(void);
void ResetCuckooCondorEggBounce(void);
void ResetCuckooCondorChickMotion(void);
void PrepareCuckooCondorChickDash(void);

void SpriteCuckooCondor(void);
void SpriteCuckooCondorClockPiece(void);
void SpriteCuckooCondorPendulumPart(void);
void SpriteCuckooCondorHead(void);
void SpriteCuckooCondorClockBody(void);
void SpriteCuckooCondorSmallDebris(void);
void SpriteCuckooCondorLargeDebris(void);
void SpriteCuckooCondorEgg(void);
void SpriteCuckooCondorChick(void);

#endif  // SPRITE_AI_CUCKOO_CONDOR_H
