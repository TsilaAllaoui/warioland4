#ifndef HUD_H
#define HUD_H

#include "types.h"

extern const u16 sCommonSpritesPal[];

void LoadHudSpriteGraphics(void);
void UpdateBossHealthGauge(void);
void UpdateWarioLifeHud(void);
void DrawGameplayHudOam(void);
void UpdateBigBoardSecondarySprite(void);
void UpdateTreasureCollectionHudEffects(void);
void StartNextCollectedTreasureHudEffect(void);
void StartCollectedJewelPieceHudEffect(void);

#endif  // HUD_H
