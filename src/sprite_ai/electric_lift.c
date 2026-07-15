#include "sprite_ai/electric_lift.h"

#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sElectricLiftStationaryTransitionOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryIdleOam_Frame1[] = {
    1,
    OAM_ENTRY(-16, -8, SPRITE_SIZE_32x16, 0, 530, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, 0, SPRITE_SIZE_8x8, 0, 547, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame2[] = {
    3,
    OAM_ENTRY(-12, 4, SPRITE_SIZE_8x8, 0, 547, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame3[] = {
    3,
    OAM_ENTRY(4, -4, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame4[] = {
    3,
    OAM_ENTRY(3, 2, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame5[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, 1, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 547, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame6[] = {
    3,
    OAM_ENTRY(-8, -3, SPRITE_SIZE_16x8, 0, 515, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame7[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-7, -3, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 515, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame8[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 515, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame9[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 515, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame10[] = {
    3,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x8, 0, 517, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame11[] = {
    3,
    OAM_ENTRY(-19, -14, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame12[] = {
    3,
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x8, 0, 521, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame13[] = {
    3,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame14[] = {
    3,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x8, 0, 553, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame16[] = {
    3,
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x8, 0, 553, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 514, 8, 0),
};

const u16 sElectricLiftStationaryResetOam_Frame15[] = {
    3,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 514, 8, 0),
};

const u16 sElectricLiftStationaryActiveOam_Frame2[] = {
    4,
    OAM_ENTRY(-12, 0, SPRITE_SIZE_8x8, 0, 547, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryActiveOam_Frame3[] = {
    4,
    OAM_ENTRY(-12, 4, SPRITE_SIZE_8x8, 0, 547, 8, 0),
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryActiveOam_Frame4[] = {
    4,
    OAM_ENTRY(4, -4, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-11, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u16 sElectricLiftStationaryActiveOam_Frame5[] = {
    4,
    OAM_ENTRY(3, 2, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u8 sElectricLiftRawData_83BDCDA[] = {
    0x03, 0x00, 0xF6, 0x00, 0xF4, 0x41, 0x0E, 0x82, 0xF6, 0x80, 0x04, 0x00, 0x10, 0x82, 0x05, 0x40,
    0xF8, 0x01, 0x0B, 0x82, 0x03, 0x00, 0xF6, 0x00, 0xF4, 0x41, 0x0E, 0x82, 0xF6, 0x80, 0x04, 0x00,
    0x10, 0x82, 0x05, 0x40, 0xF8, 0x01, 0x2B, 0x82, 0x03, 0x00, 0xF6, 0x00, 0xF4, 0x41, 0x0E, 0x82,
    0xF6, 0x80, 0x04, 0x00, 0x10, 0x82, 0x05, 0x00, 0xFC, 0x01, 0x0D, 0x82, 0x03, 0x00, 0xF6, 0x00,
    0xF4, 0x41, 0x0E, 0x82, 0xF6, 0x80, 0x04, 0x00, 0x10, 0x82, 0x05, 0x00, 0xFC, 0x11, 0x0D, 0x82,
    0x03, 0x00, 0xF6, 0x00, 0xF4, 0x41, 0x0E, 0x82, 0xF6, 0x80, 0x04, 0x00, 0x10, 0x82, 0x05, 0x40,
    0xF8, 0x11, 0x2B, 0x82,
};

const u16 sElectricLiftStationaryActiveOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x8, 0, 549, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 513, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
};

const u8 sElectricLiftRawData_83BDD52[] = {
    0x00, 0x00,
};

const struct AnimationFrame sElectricLiftStationaryIdleOam[] = {
    {sElectricLiftStationaryIdleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sElectricLiftStationaryTransitionOam[] = {
    {sElectricLiftStationaryTransitionOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sElectricLiftStationaryResetOam[] = {
    {sElectricLiftStationaryTransitionOam_Frame1, 4},
    {sElectricLiftStationaryResetOam_Frame1, 4},
    {sElectricLiftStationaryResetOam_Frame2, 4},
    {sElectricLiftStationaryResetOam_Frame3, 4},
    {sElectricLiftStationaryResetOam_Frame4, 4},
    {sElectricLiftStationaryResetOam_Frame5, 4},
    {sElectricLiftStationaryTransitionOam_Frame1, 3},
    {sElectricLiftStationaryResetOam_Frame6, 4},
    {sElectricLiftStationaryResetOam_Frame7, 4},
    {sElectricLiftStationaryResetOam_Frame8, 4},
    {sElectricLiftStationaryResetOam_Frame9, 4},
    {sElectricLiftStationaryTransitionOam_Frame1, 2},
    {sElectricLiftStationaryResetOam_Frame10, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame11, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame10, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame11, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame12, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame13, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame12, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame13, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame14, 1},
    {sElectricLiftStationaryResetOam_Frame15, 1},
    {sElectricLiftStationaryResetOam_Frame16, 1},
    {sElectricLiftStationaryResetOam_Frame15, 1},
    {sElectricLiftStationaryResetOam_Frame16, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryIdleOam_Frame1, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryIdleOam_Frame1, 40},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sElectricLiftStationaryActiveOam[] = {
    {sElectricLiftStationaryActiveOam_Frame1, 8},
    {sElectricLiftStationaryIdleOam_Frame1, 8},
    {sElectricLiftStationaryActiveOam_Frame1, 8},
    {sElectricLiftStationaryIdleOam_Frame1, 8},
    {sElectricLiftStationaryActiveOam_Frame1, 8},
    {sElectricLiftStationaryIdleOam_Frame1, 4},
    {sElectricLiftStationaryActiveOam_Frame2, 4},
    {sElectricLiftStationaryActiveOam_Frame3, 4},
    {sElectricLiftStationaryActiveOam_Frame4, 4},
    {sElectricLiftStationaryActiveOam_Frame5, 4},
    {sElectricLiftStationaryIdleOam_Frame1, 4},
    {sElectricLiftStationaryResetOam_Frame15, 4},
    {sElectricLiftStationaryIdleOam_Frame1, 4},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryIdleOam_Frame1, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryIdleOam_Frame1, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame14, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 1},
    {sElectricLiftStationaryResetOam_Frame14, 1},
    {sElectricLiftStationaryTransitionOam_Frame1, 32},
    ANIMATION_TERMINATOR
};

const u16 sElectricLiftMovingTurnOam_Frame1[] = {
    3,
    OAM_ENTRY(-12, -10, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, 5, SPRITE_SIZE_16x8, 0, 523, 8, 0),
};

const u16 sElectricLiftMovingTurnOam_Frame2[] = {
    3,
    OAM_ENTRY(-12, -10, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, 5, SPRITE_SIZE_16x8, 0, 555, 8, 0),
};

const u16 sElectricLiftMovingTurnOam_Frame3[] = {
    3,
    OAM_ENTRY(-12, -10, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, 0, 525, 8, 0),
};

const u16 sElectricLiftMovingTurnOam_Frame4[] = {
    3,
    OAM_ENTRY(-12, -10, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 525, 8, 0),
};

const u16 sElectricLiftMovingTurnOam_Frame5[] = {
    3,
    OAM_ENTRY(-12, -10, SPRITE_SIZE_16x16, 0, 526, 8, 0),
    OAM_ENTRY(4, -10, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-8, 5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 555, 8, 0),
};

const struct AnimationFrame sElectricLiftMovingTurnOam[] = {
    {sElectricLiftMovingTurnOam_Frame1, 3},
    {sElectricLiftMovingTurnOam_Frame2, 3},
    {sElectricLiftMovingTurnOam_Frame3, 3},
    {sElectricLiftMovingTurnOam_Frame4, 3},
    {sElectricLiftMovingTurnOam_Frame5, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sElectricLiftMovingOam[] = {
    {sElectricLiftMovingTurnOam_Frame1, 5},
    {sElectricLiftMovingTurnOam_Frame2, 5},
    {sElectricLiftMovingTurnOam_Frame3, 5},
    {sElectricLiftMovingTurnOam_Frame4, 5},
    {sElectricLiftMovingTurnOam_Frame5, 5},
    ANIMATION_TERMINATOR
};

void InitElectricLiftStationary(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    sprite->yPosition -= 32;
    sprite->warioCollision = 29;
    sprite->drawDistanceDown = 16;
    sprite->drawDistanceUp = 16;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 36;
    sprite->hitboxExtentDown = 32;
    sprite->hitboxExtentLeft = 40;
    sprite->hitboxExtentRight = 36;
    sprite->pOamData = sElectricLiftStationaryIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    sprite->work1 = 0;
}

void ElectricLiftStationaryIdle(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON) {
        sprite->pOamData = sElectricLiftStationaryActiveOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 81;
        sprite->pose = 18;
    }
}

void ElectricLiftStationaryActivated(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    --sprite->work0;
    if (sprite->work0 == 37)
        m4aSongNumStart(SE_ELECTRIC_LIFT_ACTIVATE);
    timer = sprite->work0;
    if (timer <= 9) {
        sprite->disableWarioCollisionTimer = 1;
        if (timer == 0) {
            sprite->pOamData = sElectricLiftStationaryTransitionOam;
            sprite->currentAnimationFrame = 0;
            sprite->animationTimer = 0;
            sprite->work0 = 60;
            sprite->pose = 20;
        }
    }
}

void ElectricLiftStationaryTransition(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = --sprite->work0;
    if (timer == 0) {
        sprite->pOamData = sElectricLiftStationaryResetOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->work0 = 70;
        sprite->pose = 22;
    }
}

void ElectricLiftStationaryReset(void)
{
    struct PrimarySpriteData* sprite;
    u8* work0;
    register u32 value asm("r0");
    register u32 timer asm("r1");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    value = *work0 - 1;
    *work0 = value;
    /* agbcc otherwise inserts a move before the original byte-normalization pair. */
    asm("lsl %1, %1, #24\n"
        "lsr %0, %1, #24"
        : "=r"(timer), "+r"(value));
    if (timer > 5) {
        sprite->disableWarioCollisionTimer = 1;
    } else if (timer == 0) {
        sprite->pOamData = sElectricLiftStationaryIdleOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 16;
    }
}

void SpriteElectricLiftStationary(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitElectricLiftStationary();
            break;
        case 16:
            ElectricLiftStationaryIdle();
            break;
        case 18:
            ElectricLiftStationaryActivated();
            break;
        case 20:
            ElectricLiftStationaryTransition();
            break;
        case 22:
            ElectricLiftStationaryReset();
            break;
        default:
            gCurrentSprite.pose = 0;
            break;
    }
    func_8026838();
}

void InitElectricLiftMoving(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    sprite->yPosition -= 32;
    sprite->warioCollision = 29;
    sprite->drawDistanceDown = 16;
    sprite->drawDistanceUp = 16;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 32;
    sprite->hitboxExtentDown = 32;
    sprite->hitboxExtentLeft = 36;
    sprite->hitboxExtentRight = 32;
    sprite->pOamData = sElectricLiftMovingOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    sprite->work1 = 0;
}

void ElectricLiftMoveDown(void)
{
    struct PrimarySpriteData* sprite;
    u8* work0;
    register u32 value asm("r0");
    register u32 timer asm("r2");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    value = *work0 - 1;
    *work0 = value;
    /* agbcc otherwise inserts a move before the original byte-normalization pair. */
    asm("lsl %1, %1, #24\n"
        "lsr %0, %1, #24"
        : "=r"(timer), "+r"(value));
    if (timer > 15) {
        sprite->yPosition += 2;
        if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON)
            gWarioData.yPosition += 2;
    } else if (timer == 0) {
        sprite->pOamData = sElectricLiftMovingTurnOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        *work0 = 144;
        sprite->pose = 18;
    }
}

void ElectricLiftMoveUp(void)
{
    struct PrimarySpriteData* sprite;
    u8* work0;
    register u32 value asm("r0");
    register u32 timer asm("r2");

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    value = *work0 - 1;
    *work0 = value;
    /* agbcc otherwise inserts a move before the original byte-normalization pair. */
    asm("lsl %1, %1, #24\n"
        "lsr %0, %1, #24"
        : "=r"(timer), "+r"(value));
    if (timer > 15) {
        sprite->yPosition -= 2;
        if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON)
            gWarioData.yPosition -= 2;
    } else if (timer == 0) {
        sprite->pOamData = sElectricLiftMovingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        *work0 = 144;
        sprite->pose = 16;
    }
}

void ElectricLiftMoveRight(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer > 15) {
        sprite->xPosition += 2;
        if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON)
            gWarioData.xPosition += 2;
    } else if (timer == 0) {
        sprite->work0 = 176;
        sprite->pose = 18;
    }
}

void ElectricLiftMoveLeft(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer > 15) {
        sprite->xPosition -= 2;
        if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON)
            gWarioData.xPosition -= 2;
    } else if (timer == 0) {
        sprite->work0 = 176;
        sprite->pose = 16;
    }
}

void SpriteElectricLiftVertical(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitElectricLiftMoving();
            gCurrentSprite.work0 = 80;
            break;
        case 16:
            ElectricLiftMoveDown();
            break;
        case 18:
            ElectricLiftMoveUp();
            break;
    }
    func_8026838();
}

void SpriteElectricLiftHorizontal(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitElectricLiftMoving();
            gCurrentSprite.work0 = 80;
            break;
        case 16:
            ElectricLiftMoveRight();
            break;
        case 18:
            ElectricLiftMoveLeft();
            break;
    }
    func_8026838();
}
