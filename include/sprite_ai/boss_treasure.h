#ifndef SPRITE_AI_BOSS_TREASURE_H
#define SPRITE_AI_BOSS_TREASURE_H

#include "oam.h"
#include "types.h"

extern const struct AnimationFrame sBossTreasureOam_83BA7BC[];
extern const struct AnimationFrame sBossTreasureOam_83CF72C[];
extern const struct AnimationFrame sBossTreasureOam_83DAB40[];
extern const struct AnimationFrame sBossTreasureOam_83DABA0[];
extern const struct AnimationFrame sBossTreasureOam_83DF9E8[];

void func_806F650(s32 index);
void BossTreasureInit(void);

void SpriteBossTreasure(void);

#endif  // SPRITE_AI_BOSS_TREASURE_H
