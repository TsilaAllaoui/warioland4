#ifndef SPRITE_AI_BOSS_CORRIDOR_CAT_H
#define SPRITE_AI_BOSS_CORRIDOR_CAT_H

#include "sprite.h"

extern const struct AnimationFrame sBossCorridorCatRunOam[];
extern const struct AnimationFrame sBossCorridorCatWalkLeftOam[];
extern const struct AnimationFrame sBossCorridorCatTurnOam[];
extern const struct AnimationFrame sBossCorridorCatWaitToTurnOam[];
extern const struct AnimationFrame sBossCorridorCatWaitLeftOam[];
extern const struct AnimationFrame sBossCorridorCatWaitRightOam[];

void InitBossCorridorCat(void);
void BossCorridorCatWaitToTurn(void);
void BossCorridorCatStartRunningLeft(void);
void BossCorridorCatRunLeftFast(void);
void BossCorridorCatRunLeftSlow(void);
void BossCorridorCatWaitBeforeRunningRight(void);
void BossCorridorCatWaitBeforeRunningLeft(void);
void BossCorridorCatRunRightFast(void);
void SpriteBossCorridorCat(void);

#endif  // SPRITE_AI_BOSS_CORRIDOR_CAT_H
