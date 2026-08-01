#ifndef BOSS_TREASURE_CUTSCENE_H
#define BOSS_TREASURE_CUTSCENE_H

#include "types.h"

extern s8 gStageTransitionBlendEva;
extern s8 gStageTransitionBlendEvb;
extern u16 gStageTransitionPaletteCycleTimer;

extern const u16 sBossTreasureGoldenPaletteCycle[];
extern const u16 sBossTreasureSapphirePaletteCycle[];
extern const u16 sBossTreasureEmeraldPaletteCycle[];
extern const u16 sBossTreasureRubyPaletteCycle[];

int UpdateBossTreasureCutscene(void);
void InitializeBossTreasureCutscene(void);
void UpdateBossTreasureFirstPhaseTreasureItems(void);
void UpdateBossTreasureSecondPhaseTreasureItems(void);
void UpdateBossTreasureUnlockIcons(void);
void UpdateBossTreasureUnlockSparkles(void);
void SpawnBossTreasureParticles(void);
void UpdateBossTreasureParticles(void);
void ClearBossTreasureParticles(void);
void UpdateBossTreasureAffineState(void);
void UpdateBossTreasurePaletteSparkle(void);
void UpdateBossTreasurePaletteFlash(void);
void DrawBossTreasureCutsceneSprites(void);
void ApplyBossTreasureAffineRegisters(void);

#endif /* BOSS_TREASURE_CUTSCENE_H */
