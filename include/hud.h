#ifndef HUD_H
#define HUD_H

#include "types.h"

extern const u16 sCommonSpritesPal[];
extern const u8 sScoreDigitsGfx[];
extern const u8 sTimeDigitsUpperGfx[];
extern const u8 sTimeDigitsLowerGfx[];
extern const u8 sTimeDigitsYellowUpperGfx[];
extern const u8 sTimeDigitsYellowLowerGfx[];
extern const u8 sTimeDigitsRedUpperGfx[];
extern const u8 sTimeDigitsRedLowerGfx[];
extern const u8 sTimeColonUpperGfx[];
extern const u8 sTimeColonEmptyUpperGfx[];
extern const u8 sTimeColonLowerGfx[];
extern const u8 sTimeColonEmptyLowerGfx[];
extern const u8 sTimeColonYellowUpperGfx[];
extern const u8 sTimeColonEmptyYellowUpperGfx[];
extern const u8 sTimeColonYellowLowerGfx[];
extern const u8 sTimeColonEmptyYellowLowerGfx[];
extern const u8 sTimeColonRedUpperGfx[];
extern const u8 sTimeColonEmptyRedUpperGfx[];
extern const u8 sTimeColonRedLowerGfx[];
extern const u8 sTimeColonEmptyRedLowerGfx[];
extern const u8 sTimeUpBaseGfx[];
extern const u8 sTimeUpTextGfx[];
extern const u8 sTimeUpWarioGfx[];
extern const u8 sTimeUpEffect0Gfx[];
extern const u8 sTimeUpEffect1Gfx[];
extern const u8 sTimeUpEffect2Gfx[];
extern const u8 sTimeUpEffect3Gfx[];
extern const u16 sTimeUpTextPal[];
extern const u16 sTimeUpWarioPal[];
extern const u8 sJewelPieceIconNEGfx[];
extern const u8 sJewelPieceIconPartialNEGfx[];
extern const u8 sJewelPieceIconSEGfx[];
extern const u8 sJewelPieceIconPartialSEGfx[];
extern const u8 sJewelPieceIconSWGfx[];
extern const u8 sJewelPieceIconPartialSWGfx[];
extern const u8 sJewelPieceIconNWGfx[];
extern const u8 sJewelPieceIconPartialNWGfx[];
extern const u8 sCDIconGfx[];
extern const u8 sCDIconPartialGfx[];

void LoadHudSpriteGraphics(void);
void UpdateBossHealthGauge(void);
void UpdateWarioLifeHud(void);
void DrawGameplayHudOam(void);
void UpdateBigBoardSecondarySprite(void);
void UpdateTreasureCollectionHudEffects(void);
void StartNextCollectedTreasureHudEffect(void);
void StartCollectedJewelPieceHudEffect(void);

#endif  // HUD_H
