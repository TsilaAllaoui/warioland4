#ifndef SPRITE_AI_PIG_HEAD_STATUE_H
#define SPRITE_AI_PIG_HEAD_STATUE_H

#include "sprite.h"

enum PigHeadStatuePose {
    PIG_HEAD_STATUE_POSE_IDLE = SPOSE_IDLE,
    PIG_HEAD_STATUE_POSE_OPENING = SPOSE_12,
    PIG_HEAD_STATUE_POSE_FIRING = SPOSE_14,
    PIG_HEAD_STATUE_POSE_POST_FIRE = SPOSE_16,
    PIG_HEAD_STATUE_POSE_COOLDOWN = SPOSE_18,
};

enum PigHeadStatueChildPose {
    PIG_HEAD_STATUE_CHILD_POSE_FALLING = SPOSE_12,
    PIG_HEAD_STATUE_CHILD_POSE_LANDED = SPOSE_14,
    PIG_HEAD_STATUE_CHILD_POSE_DISAPPEARING = SPOSE_16,
};

extern const struct AnimationFrame sPigHeadStatueIdleOam[];
extern const struct AnimationFrame sPigHeadStatueOpeningOam[];
extern const struct AnimationFrame sPigHeadStatueFiringOam[];
extern const struct AnimationFrame sPigHeadStatueChildFallingOam[];
extern const struct AnimationFrame sPigHeadStatueChildLandedOam[];
extern const struct AnimationFrame sPigHeadStatueChildDisappearingOam[];

void InitPigHeadStatue(void);
void PigHeadStatueIdle(void);
void PigHeadStatueOpening(void);
void PigHeadStatueFiring(void);
void PigHeadStatuePostFire(void);
void PigHeadStatueCooldown(void);
void InitPigHeadStatueChild(void);
void PigHeadStatueChildFalling(void);
void PigHeadStatueChildLanded(void);
void PigHeadStatueChildDisappearing(void);
void SpritePigHeadStatue(void);
void SpritePigHeadStatueChild(void);

#endif  // SPRITE_AI_PIG_HEAD_STATUE_H
