#ifndef WARIO_SWIMMING_H
#define WARIO_SWIMMING_H

#include "wario.h"

struct WarioCollisionData {
    u16 horizontalDirection;
    u16 environmentFlags;
    u8 primaryProbe;
    u8 secondaryProbe;
    u16 xCorrection;
    u8 collisionIndex;
    u8 surfaceStatus;
    u8 poseField3;
    u8 poseField4;
    u8 verticalCollisionEnabled;
    u8 poseField6;
    u8 reserved0E;
    u8 forceGroundSnap;
    u8 minimumGroundDistance;
    u8 poseFlags;
    u8 wallCollisionCount;
    u8 groundCollision;
};

struct WarioAnimationFrame {
    const u16 *graphics;
    const u16 *oam;
    u8 time;
};

extern struct WarioCollisionData gWarioCollisionData;
extern s16 gWarioWaterCurrentXVelocity;
extern s16 gWarioWaterCurrentYVelocity;

extern const struct WarioAnimationFrame sWarioSwimmingHorizontalOam[];
extern const struct WarioAnimationFrame sWarioSwimmingVerticalOam[];
extern const struct WarioAnimationFrame sWarioSwimmingFreelyOam[];
extern const struct WarioAnimationFrame sWarioFloatingOam[];
extern const struct WarioAnimationFrame sWarioJumpingOutOfWaterOam[];
extern const struct WarioAnimationFrame sWarioDamageOam[];
extern const struct WarioAnimationFrame sWarioSuperGroundPoundOam[];
extern const struct AnimationFrameU16 sWarioSuperGroundPoundAfterimageOam[];
extern const struct WarioAnimationFrame sWarioSuperGroundPoundLandingOam[];
extern const struct AnimationFrameU16 sWarioAfterimageFrames[];
extern const struct WarioAnimationFrame sBubbleWarioOam[];
extern const s16 sHorizontalOscillationVelocity[];
extern const struct WarioAnimationFrame *const sWarioWaterOamTable[];
extern const struct WarioAnimationFrame *const sWarioWaterVerticalOamTable[];
extern const u8 sWarioWaterPoseData[];
extern const u16 sWarioDamagePalette[];
extern const u16 sWarioSuperGroundPoundPalette[];
extern const u16 *const sWarioSuperGroundPoundPaletteTable[];
extern const u16 sBubbleWarioPalette[];
extern const u16 sWarioSecondaryPalette[];
extern const s16 sWarioHitboxes[];
extern const s16 sWarioCollisionProbeTable[];

u8 UpdateWarioWaterPose(void);
u8 UpdateWarioWaterLanding(void);
u8 UpdateWarioSwimmingHorizontal(void);
u8 UpdateWarioSwimmingVertical(void);
u8 UpdateWarioSwimmingFreely(void);
u8 UpdateWarioFloating(void);
u8 UpdateWarioJumpingOutOfWater(void);
u8 UpdateWarioWaterDamage(void);
u8 UpdateWarioWaterSuperGroundPound(void);
u8 UpdateWarioWaterSuperGroundPoundLanding(void);
u8 UpdateWarioWaterHorizontalBonk(void);
u8 UpdateWarioWaterVerticalBonk(void);
u8 UpdateWarioWaterTransition(void);
u8 UpdateFatWarioFallingInWater(void);
u8 UpdateFatWarioLandingInWater(void);
u8 UpdateBubbleWarioInWater(void);
u8 UpdateWarioWaterRecovery(void);
void SetWarioWaterPose(u8 pose);
void UpdateWarioWaterPhysics(void);
void ProcessWarioWaterCollision(void);
u8 ResolveWarioWaterCollision(void);
u8 ResolveWarioWaterSurfaceCollision(void);
u8 ResolveWarioWaterCollisionContinuation(void);
void UpdateWarioWaterAnimation(u8 direction);
void UpdateBubbleWarioMusic(void);
void UpdateWarioWaterHitbox(void);

#endif  // WARIO_SWIMMING_H
