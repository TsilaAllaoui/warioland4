#ifndef WARIO_FLAT_H
#define WARIO_FLAT_H

#include "types.h"

struct WarioPoseProperties {
    u8 hitboxIndex;
    u8 movementCollisionTop;
    u8 movementCollisionBottom;
    u8 movementCollisionSide;
    u8 processCollisionTop;
    u8 processCollisionBottom;
    u8 processCollisionSide;
    u8 collisionType;
};

struct WarioCollisionState {
    u16 unk0;
    u16 unk2;
    u8 unk4[4];
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE[3];
    u8 unk11;
    u8 unk12;
};

struct WarioHitbox {
    s16 left;
    s16 top;
    s16 right;
    s16 bottom;
};

struct WarioAnimationFrame {
    const u16* leftOam;
    const u16* rightOam;
    u8 time;
};

extern const struct WarioAnimationFrame sFlatWarioTransformingAnimation[];
extern const struct WarioAnimationFrame sFlatWarioUnknown1Animation[];
extern const struct WarioAnimationFrame sFlatWarioFloatingAnimation[];
extern const struct WarioAnimationFrame sFlatWarioStandingAnimation[];
extern const struct WarioAnimationFrame sFlatWarioWalkingAnimation[];
extern const struct WarioAnimationFrame sFlatWarioDetransformingAnimation[];
extern const u16 sFlatWarioHorizontalMovement[];
extern const u16 sFlatWarioVerticalMovement[];
extern const struct WarioPoseProperties sFlatWarioPoseProperties[];
extern const struct WarioAnimationFrame* sFlatWarioAnimationTable[][2];

u8 UpdateFlatWario(void);
u8 FlatWarioTransforming(void);
u8 FlatWarioUnknown1(void);
u8 FlatWarioStanding(void);
u8 FlatWarioWalking(void);
u8 FlatWarioFloating(void);
u8 FlatWarioJumping(void);
u8 FlatWarioDetransforming(void);
void SetFlatWarioPose(u8 pose);
void UpdateFlatWarioMovement(void);
void ProcessFlatWarioCollision(void);
void LoadFlatWarioGraphics(u8 animationSide);
void ApplyFlatWarioMusicEffects(void);
void UpdateFlatWarioHitbox(void);

#endif  // WARIO_FLAT_H
