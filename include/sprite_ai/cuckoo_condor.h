#ifndef SPRITE_AI_CUCKOO_CONDOR_H
#define SPRITE_AI_CUCKOO_CONDOR_H

#include "oam.h"

extern const u16 sCuckooCondorBattleGfx[];
extern const s16 sCuckooCondorChickYVelocity[];
extern const s16 sCuckooCondorFlightYVelocity[];
extern const s16 sCuckooCondorClockYVelocity[];

extern const struct AnimationFrame sCuckooCondorHurtOam[];
extern const struct AnimationFrame sCuckooCondorClockIntroOam[];
extern const struct AnimationFrame sCuckooCondorClockBodyFallingOam[];
extern const struct AnimationFrame sCuckooCondorClockBodyOam[];
extern const struct AnimationFrame sCuckooCondorClockIdleOam[];
extern const struct AnimationFrame sCuckooCondorHeadIdleOam[];
extern const struct AnimationFrame sCuckooCondorHeadBlinkOam[];
extern const struct AnimationFrame sCuckooCondorHeadHurtOam[];
extern const struct AnimationFrame sCuckooCondorHeadAttackOam[];
extern const struct AnimationFrame sCuckooCondorPendulumRetractedOam[];
extern const struct AnimationFrame sCuckooCondorPendulumLinkOam[];
extern const struct AnimationFrame sCuckooCondorClawIdleOam[];
extern const struct AnimationFrame sCuckooCondorClawOpenOam[];
extern const struct AnimationFrame sCuckooCondorClawGrabOam[];
extern const struct AnimationFrame sCuckooCondorClawCloseOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceTopOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceUpperRightOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceLowerRightOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceLowerLeftOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceUpperLeftWindupOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceUpperLeftDrop1Oam[];
extern const struct AnimationFrame sCuckooCondorClockPieceUpperLeftDrop2Oam[];
extern const struct AnimationFrame sCuckooCondorSmallDebrisOam[];
extern const struct AnimationFrame sCuckooCondorClockPieceUpperLeftOam[];
extern const struct AnimationFrame sCuckooCondorBodyOam[];
extern const struct AnimationFrame sCuckooCondorHeadPhase2Oam[];
extern const struct AnimationFrame sCuckooCondorChickWalkOam[];
extern const struct AnimationFrame sCuckooCondorChickExplodeOam[];
extern const struct AnimationFrame sCuckooCondorChickDashOam[];
extern const struct AnimationFrame sCuckooCondorChickChaseOam[];
extern const struct AnimationFrame sCuckooCondorChickAttackOam[];
extern const struct AnimationFrame sCuckooCondorChickAttackEndOam[];
extern const struct AnimationFrame sCuckooCondorEggOam[];
extern const struct AnimationFrame sCuckooCondorEggHatchOam[];

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
