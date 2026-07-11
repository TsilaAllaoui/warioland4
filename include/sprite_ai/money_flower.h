#ifndef SPRITE_AI_MONEY_FLOWER_H
#define SPRITE_AI_MONEY_FLOWER_H

#include "oam.h"

extern const struct AnimationFrame sMoneyFlowerSeedIdleOam[];
extern const struct AnimationFrame sMoneyFlowerSeedOpeningOam[];
extern const struct AnimationFrame sMoneyFlowerStage1IdleOam[];
extern const struct AnimationFrame sMoneyFlowerStage2GrowingOam[];
extern const struct AnimationFrame sMoneyFlowerStage2IdleOam[];
extern const struct AnimationFrame sMoneyFlowerStage3GrowingOam[];
extern const struct AnimationFrame sMoneyFlowerStage3IdleOam[];
extern const struct AnimationFrame sMoneyFlowerStage4GrowingOam[];
extern const struct AnimationFrame sMoneyFlowerStage4IdleOam[];
extern const struct AnimationFrame sMoneyFlowerStage5GrowingOam[];
extern const struct AnimationFrame sMoneyFlowerStage5IdleOam[];
extern const struct AnimationFrame sMoneyFlowerCollectedOam[];
extern const struct AnimationFrame sMoneyFlowerStage2CollectionOam[];
extern const struct AnimationFrame sMoneyFlowerStage3CollectionOam[];
extern const struct AnimationFrame sMoneyFlowerStage4CollectionOam[];
extern const struct AnimationFrame sMoneyFlowerStage5CollectionOam[];

void SpriteMoneyFlower(void);

#endif  // SPRITE_AI_MONEY_FLOWER_H
