#ifndef SPRITE_AI_BOSS_DOOR_H
#define SPRITE_AI_BOSS_DOOR_H

#include "oam.h"

extern const struct AnimationFrame sBossDoorEntryClosedOam[];
extern const struct AnimationFrame sBossDoorEntryOpenOam[];
extern const struct AnimationFrame sBossDoorEntryOpeningOam[];
extern const struct AnimationFrame sBossDoorEmeraldClosedOam[];
extern const struct AnimationFrame sBossDoorEmeraldOpenOam[];
extern const struct AnimationFrame sBossDoorEmeraldOpeningOam[];
extern const struct AnimationFrame sBossDoorRubyClosedOam[];
extern const struct AnimationFrame sBossDoorRubyOpenOam[];
extern const struct AnimationFrame sBossDoorRubyOpeningOam[];
extern const struct AnimationFrame sBossDoorTopazClosedOam[];
extern const struct AnimationFrame sBossDoorTopazOpenOam[];
extern const struct AnimationFrame sBossDoorTopazOpeningOam[];
extern const struct AnimationFrame sBossDoorSapphireClosedOam[];
extern const struct AnimationFrame sBossDoorSapphireOpenOam[];
extern const struct AnimationFrame sBossDoorSapphireOpeningOam[];
extern const struct AnimationFrame sBossDoorGoldenPyramidClosedOam[];
extern const struct AnimationFrame sBossDoorGoldenPyramidOpenOam[];
extern const struct AnimationFrame sBossDoorGoldenPyramidOpeningOam[];

void SetBossDoorOpeningAnimation(void);
void SetBossDoorClosedAnimation(void);
void SetBossDoorOpenAnimation(void);
void InitBossDoor(void);
void BossDoorWaitForWario(void);
void BossDoorRise(void);
void SpriteBossDoor(void);

#endif  // SPRITE_AI_BOSS_DOOR_H
