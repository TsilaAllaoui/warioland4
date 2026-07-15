#include "sprite_ai/magma.h"
#include "background_registers.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMagmaOam_83D2570_Frame1[] = {
    8,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 512, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 516, 8, 0),
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, 0, 516, 8, 0),
    OAM_ENTRY(-32, 32, SPRITE_SIZE_32x32, 0, 516, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(0, 32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 520, 8, 0),
};

const u16 sMagmaOam_83D2570_Frame2[] = {
    8,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 520, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 524, 8, 0),
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, 0, 524, 8, 0),
    OAM_ENTRY(-32, 32, SPRITE_SIZE_32x32, 0, 524, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(0, 32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 528, 8, 0),
};

const u16 sMagmaOam_83D2570_Frame3[] = {
    8,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 532, 8, 0),
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, 0, 532, 8, 0),
    OAM_ENTRY(-32, 32, SPRITE_SIZE_32x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(0, 32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 536, 8, 0),
};

const u16 sMagmaOam_83D2570_Frame4[] = {
    8,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(-32, 32, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(0, 32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sMagmaOam_83D2598_Frame1[] = {
    4,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 512, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 516, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 520, 8, 0),
};

const u16 sMagmaOam_83D2598_Frame2[] = {
    4,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 520, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 524, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 528, 8, 0),
};

const u16 sMagmaOam_83D2598_Frame3[] = {
    4,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 532, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 536, 8, 0),
};

const u16 sMagmaOam_83D2598_Frame4[] = {
    4,
    OAM_ENTRY(-32, -64, SPRITE_SIZE_32x32, 0, 536, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 540, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(0, -64, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
};

const struct AnimationFrame sMagmaOam_83D2570[] = {
    {sMagmaOam_83D2570_Frame1, 4},
    {sMagmaOam_83D2570_Frame2, 4},
    {sMagmaOam_83D2570_Frame3, 4},
    {sMagmaOam_83D2570_Frame4, 4},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMagmaOam_83D2598[] = {
    {sMagmaOam_83D2598_Frame1, 4},
    {sMagmaOam_83D2598_Frame2, 4},
    {sMagmaOam_83D2598_Frame3, 4},
    {sMagmaOam_83D2598_Frame4, 4},
    ANIMATION_TERMINATOR
};

void InitMagma(void)
{
    if (gSwitchPressed) {
        gCurrentSprite.status = 0;
        return;
    }

    gCurrentSprite.status |= SPRITE_STATUS_DISABLE_DRAW_DISTANCE | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 56;
    gCurrentSprite.drawDistanceDown = 64;
    gCurrentSprite.drawDistanceUp = 64;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.hitboxExtentUp = 200;
    gCurrentSprite.hitboxExtentLeft = 104;
    gCurrentSprite.hitboxExtentRight = 100;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE_INIT;
    gCurrentSprite.xPosition += 32;
    gCurrentSprite.yPosition += 448;
    gCurrentSprite.work0 = 24;
}

void MagmaWaitBeforeRising(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = SPOSE_IDLE;
        gCurrentSprite.work3 = 0;
        m4aSongNumStart(MAGMA_RISE_SOUND);
    }
}

void MagmaRise(void)
{
    u8 index;
    s16 velocity;

    index = gCurrentSprite.work3;
    velocity = sMagmaYVelocity[index];
    if (velocity == 0x7FFF) {
        gCurrentSprite.work0 = 247;
        gCurrentSprite.pose = SPOSE_12;
        m4aSongNumStart(MAGMA_SINK_SOUND);
    } else {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += velocity;
    }
}

void MagmaSink(void)
{
    if (gCurrentSprite.work0 != 0) {
        gCurrentSprite.work0--;
        gCurrentSprite.yPosition += 2;
    } else {
        gCurrentSprite.pose = SPOSE_IDLE_INIT;
        gCurrentSprite.work0 = 24;
    }
}

void SpriteMagma(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitMagma();
            break;
        case SPOSE_IDLE_INIT:
            MagmaWaitBeforeRising();
            break;
        case SPOSE_IDLE:
            MagmaRise();
            break;
        case SPOSE_12:
            MagmaSink();
            break;
    }

    if ((u16)((gCurrentSprite.yPosition >> 2) - (gBg1YPosition >> 2)) <= 160) {
        gCurrentSprite.pOamData = sMagmaOam_83D2570;
        gCurrentSprite.hitboxExtentDown = 127;
    } else {
        gCurrentSprite.pOamData = sMagmaOam_83D2598;
        gCurrentSprite.hitboxExtentDown = 0;
    }
}
