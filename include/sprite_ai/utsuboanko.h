#ifndef SPRITE_AI_UTSUBOANKO_H
#define SPRITE_AI_UTSUBOANKO_H

#include "oam.h"

extern const struct AnimationFrame sUtsuboankoEmergingOam[];
extern const struct AnimationFrame sUtsuboankoHidingOam[];
extern const struct AnimationFrame sUtsuboankoRetreatingOam[];
extern const struct AnimationFrame sUtsuboankoIdleOam[];

void InitUtsuboanko(void);
void UtsuboankoIdleInit(void);
void UtsuboankoIdle(void);
void UtsuboankoEmerge(void);
void UtsuboankoRetreat(void);
void UtsuboankoHideInit(void);
void UtsuboankoHide(void);
void SpriteUtsuboanko(void);

#endif  // SPRITE_AI_UTSUBOANKO_H
