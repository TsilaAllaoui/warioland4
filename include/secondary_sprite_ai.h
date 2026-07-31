#ifndef SECONDARY_SPRITE_AI_H
#define SECONDARY_SPRITE_AI_H

#include "types.h"

void ApplySecondarySpriteVerticalMotionTable(void);
void ApplySecondarySpriteScaleMotionTableA(void);
void ApplySecondarySpriteScaleMotionTableB(void);
void UpdateSecondarySpriteRisingScaleTrail(void);
void UpdateWarioCenteredScaleEffectSecondarySprite(void);
void UpdateLittleHeartPopSecondarySprite(void);

void UpdateVerticalMotionEffectSecondarySprite(void);
void UpdateScaleMotionEffectBSecondarySprite(void);
void UpdateScaleMotionEffectASecondarySprite(void);
void UpdateScaleMotionEffectCSecondarySprite(void);
void UpdateScaleMotionEffectDSecondarySprite(void);
void UpdateTimedSecondarySpriteAnimationA(void);
void UpdateSoundedTimedSecondarySpriteAnimation(void);
void UpdateSilentTimedSecondarySpriteAnimation(void);
void UpdateGoldenDivaBlackChickIntroSecondarySprite(void);
void UpdateGoldenDivaBlackChickSecondarySprite(void);
void UpdateGoldenDivaFinalEffectSecondarySprite(void);
void UpdateShortShopEffectSecondarySprite(void);
void UpdateLongShopEffectSecondarySprite(void);
void UpdateTimedSecondarySpriteAnimationB(void);
void UpdateTimedSecondarySpriteAnimationC(void);
void UpdateTimedSecondarySpriteAnimationD(void);
void UpdateProfessorProjectileSecondarySprite(void);
void UpdateTimedSecondarySpriteAnimationE(void);
void UpdateTimedSecondarySpriteAnimationF(void);

void UpdateTimedSecondarySpriteAnimation00(void);
void UpdateTimedSecondarySpriteAnimation01(void);
void UpdateTimedSecondarySpriteAnimation02(void);
void UpdateTimedSecondarySpriteAnimation03(void);
void UpdateTimedSecondarySpriteAnimation04(void);
void UpdateTimedSecondarySpriteAnimation05(void);
void UpdateTimedSecondarySpriteAnimation06(void);
void UpdateTimedSecondarySpriteAnimation07(void);
void UpdateTimedSecondarySpriteAnimation08(void);
void UpdateTimedSecondarySpriteAnimation09(void);
void UpdateTimedSecondarySpriteAnimation10(void);
void UpdateTimedSecondarySpriteAnimation11(void);
void UpdateTimedSecondarySpriteAnimation12(void);
void UpdateTimedSecondarySpriteAnimation13(void);
void UpdateTimedSecondarySpriteAnimation14(void);
void UpdateTimedSecondarySpriteAnimation15(void);
void UpdateTimedSecondarySpriteAnimation16(void);
void UpdateTimedSecondarySpriteAnimation17(void);
void UpdateTimedSecondarySpriteAnimation18(void);
void UpdateTimedSecondarySpriteAnimation19(void);
void UpdateTimedSecondarySpriteAnimation20(void);
void UpdateTimedSecondarySpriteAnimation21(void);
void UpdateTimedSecondarySpriteAnimation22(void);
void UpdateTimedSecondarySpriteAnimation23(void);
void UpdateTimedSecondarySpriteAnimation24(void);
void UpdateTimedSecondarySpriteAnimation25(void);
void UpdateTimedSecondarySpriteAnimation26(void);
void UpdateTimedSecondarySpriteAnimation27(void);
void UpdateTimedSecondarySpriteAnimation28(void);
void UpdateTimedSecondarySpriteAnimation29(void);
void UpdateTimedSecondarySpriteAnimation30(void);
void UpdateTimedSecondarySpriteAnimation31(void);
void UpdateTimedSecondarySpriteAnimation32(void);
void UpdateTimedSecondarySpriteAnimation33(void);
void UpdateTimedSecondarySpriteAnimation34(void);
void UpdateTimedSecondarySpriteAnimation35(void);
void UpdateTimedSecondarySpriteAnimation36(void);
void UpdateTimedSecondarySpriteAnimation37(void);

void UpdatePurchasedShopItemSecondarySprite(void);
u32 UpdateBugleNoteDriftMotion(void);
u32 ApplyBugleNoteRotatingAffine(u8 angle);
u32 ApplyBugleNotePulseAffine(u8 angle);
void UpdateBugleNote6SecondarySprite(void);
void UpdateBugleNote1SecondarySprite(void);
void UpdateBugleNote10SecondarySprite(void);
void UpdateBugleNote2SecondarySprite(void);
void UpdateBugleNote9SecondarySprite(void);
void UpdateBugleNote3SecondarySprite(void);
void UpdateBugleNote8SecondarySprite(void);
void UpdateBugleNote4SecondarySprite(void);
void UpdateBugleNote7SecondarySprite(void);
void UpdateBugleNote5SecondarySprite(void);

void ClearCurrentSecondarySprite(void);
void UpdateCoin50PointsSecondarySprite(void);
void UpdateTimeUpSecondarySprite(void);
void UpdateCDIconSecondarySprite(void);
void PlayAllJewelPiecesCollectedJingle(void);
void ApplyJewelPieceIconAffine(void);
void UpdateJewelPieceIconSecondarySprite(void);
void UpdateCollectedCDSecondarySprite(void);
void UpdateTreasureExitSecondarySprite(void);
void UpdateStageExitVortexSecondarySprite(void);

void ClampFallingSecondarySpriteAtBottom(u16 xVelocity);
void UpdateFallingSecondarySpriteVariantA(void);
void UpdateFallingSecondarySpriteVariantB(void);
void UpdateFallingSecondarySpriteVariantC(void);
void UpdateFallingSecondarySpriteVariantD(void);
void UpdateFallingSecondarySpriteVariantE(void);
void UpdateFallingSecondarySpriteVariantF(void);
void UpdateFallingSecondarySpriteVariantG(void);
void UpdateFallingSecondarySpriteVariantH(void);

#endif  // SECONDARY_SPRITE_AI_H
