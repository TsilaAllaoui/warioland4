#ifndef SPRITE_AI_CRUMBLING_BLOCK_H
#define SPRITE_AI_CRUMBLING_BLOCK_H

#include "oam.h"

extern const struct AnimationFrame sCrumblingBlockIdleOam[];
extern const struct AnimationFrame sCrumblingBlockCrackingOam[];
extern const struct AnimationFrame sCrumblingBlockReformingOam[];
extern const struct AnimationFrame sCrumblingBlockCollapsedOam[];

void SetCrumblingBlockCollision(void);
void ClearCrumblingBlockCollision(void);
void InitCrumblingBlock(void);
void StartCrumblingBlockCollapse(void);
void CrumblingBlockCollapse(void);
void CrumblingBlockRespawnDelay(void);
void CrumblingBlockReform(void);
void SpriteCrumblingBlock(void);

#endif  // SPRITE_AI_CRUMBLING_BLOCK_H
