#include "sprite_ai/togemasuku.h"

#include "score.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sTogemasukuIdleOam_Frame1[] = {
    2,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-19, 3, SPRITE_SIZE_32x8, 0, 515, 8, 0),
};

const u16 sTogemasukuDefeatedOam_Frame1[] = {
    2,
    OAM_ENTRY(-19, -12, SPRITE_SIZE_32x16, 0, 522, 8, 0),
    OAM_ENTRY(-19, 4, SPRITE_SIZE_32x8, 0, 547, 8, 0),
};

const u16 sTogemasukuRespawningOam_Frame1[] = {
    2,
    OAM_ENTRY(-11, -5, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_32x8, 0, 512, 8, 0),
};

const u16 sTogemasukuRespawningOam_Frame2[] = {
    2,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_32x8, 0, 512, 8, 0),
    OAM_ENTRY(-20, -5, SPRITE_SIZE_32x16, ST_OAM_HFLIP, 519, 8, 0),
};

const u16 sTogemasukuIdleOam_Frame3[] = {
    3,
    OAM_ENTRY(-7, 2, SPRITE_SIZE_16x8, 0, 542, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-19, 3, SPRITE_SIZE_32x8, 0, 515, 8, 0),
};

const u16 sTogemasukuIdleOam_Frame2[] = {
    3,
    OAM_ENTRY(-7, -9, SPRITE_SIZE_16x8, 0, 572, 8, 0),
    OAM_ENTRY(-19, -12, SPRITE_SIZE_32x16, 0, 522, 8, 0),
    OAM_ENTRY(-19, 4, SPRITE_SIZE_32x8, 0, 547, 8, 0),
};

const u8 sTogemasukuRawData_83BD644[] = {
    0x04, 0x00, 0x02, 0x40, 0xF9, 0x01, 0x1E, 0x82, 0xF7, 0x40, 0xF9, 0x01, 0x3C, 0x82, 0xF4, 0x40,
    0xED, 0x81, 0x0A, 0x82, 0x04, 0x40, 0xED, 0x41, 0x23, 0x82, 0x00, 0x00,
};

const struct AnimationFrame sTogemasukuIdleOam[] = {
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame2, 8},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame2, 8},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame2, 8},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame3, 7},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame2, 8},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame3, 7},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogemasukuDefeatedOam[] = {
    {sTogemasukuIdleOam_Frame1, 2},
    {sTogemasukuDefeatedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sTogemasukuRespawningOam[] = {
    {sTogemasukuIdleOam_Frame1, 6},
    {sTogemasukuRespawningOam_Frame1, 6},
    {sTogemasukuIdleOam_Frame1, 6},
    {sTogemasukuRespawningOam_Frame2, 6},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuRespawningOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuRespawningOam_Frame2, 8},
    {sTogemasukuIdleOam_Frame1, 10},
    {sTogemasukuRespawningOam_Frame1, 10},
    {sTogemasukuIdleOam_Frame1, 10},
    {sTogemasukuRespawningOam_Frame2, 10},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame3, 7},
    {sTogemasukuIdleOam_Frame1, 8},
    {sTogemasukuIdleOam_Frame1, 1},
    {sTogemasukuIdleOam_Frame3, 7},
    ANIMATION_TERMINATOR
};

void InitTogemasuku(void)
{
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 16;
    gCurrentSprite.hitboxExtentUp = 32;
    gCurrentSprite.hitboxExtentDown = 32;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 32;
    gCurrentSprite.pOamData = sTogemasukuIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = 11;
    gCurrentSprite.yPosition -= 32;
}

void StartTogemasukuRespawn(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_MAYBE_DEAD) {
        gCurrentSprite.status &= ~SPRITE_STATUS_MAYBE_DEAD;
    }
    gCurrentSprite.pOamData = sTogemasukuDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6D;
    gCurrentSprite.work0 = 60;
}

void TogemasukuRespawnDelay(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pOamData = sTogemasukuRespawningOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_6F;
        gCurrentSprite.work0 = 128;
    }
}

void RestoreTogemasukuIdle(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pOamData = sTogemasukuIdleOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_IDLE;
    }
}

void DefeatTogemasuku(void)
{
    gCurrentSprite.pOamData = sTogemasukuDefeatedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, SSPRITE_06);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
}

void StartTogemasukuFallRight(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    DefeatTogemasuku();
}

void StartTogemasukuFallLeft(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    DefeatTogemasuku();
}

void KillTogemasuku(void)
{
    SpriteUtilDie();
}

void SpriteTogemasuku(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            goto init;
        case SPOSE_IDLE:
            goto end;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            goto fallRightInitShared;
        case SPOSE_TACKLED_RIGHT:
            goto fallRight;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            goto fallLeftInitShared;
        case SPOSE_TACKLED_LEFT:
            goto fallLeft;
        case SPOSE_69:
            goto fallLeftInit;
        case SPOSE_6A:
            goto fallRightInit;
        case SPOSE_6B:
            goto die;
        case SPOSE_6C:
            goto beginRespawn;
        case SPOSE_6D:
            goto respawnDelay;
        case SPOSE_6F:
            goto restoreIdle;
        default:
            goto invalidPose;
    }

init:
    InitTogemasuku();
    goto end;

beginRespawn:
    StartTogemasukuRespawn();
respawnDelay:
    TogemasukuRespawnDelay();
    goto end;

restoreIdle:
    RestoreTogemasukuIdle();
    goto end;

fallRightInit:
    StartTogemasukuFallRight();
fallRight:
    SpriteUtilFallOffscreenRight();
    goto end;

fallRightInitShared:
    StartTogemasukuFallRight();
    goto fallRight;

fallLeftInit:
    StartTogemasukuFallLeft();
fallLeft:
    SpriteUtilFallOffscreenLeft();
    goto end;

fallLeftInitShared:
    StartTogemasukuFallLeft();
    goto fallLeft;

die:
    KillTogemasuku();
    goto end;

invalidPose:
    gCurrentSprite.pose = SPOSE_6C;

end:
    return;
}
