#include "sprite_ai/pencil.h"

#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"
enum PencilPose {
    PENCIL_POSE_IDLE = SPOSE_IDLE,
    PENCIL_POSE_MOVE_RIGHT_INIT = SPOSE_TACKLED_RIGHT_INIT,
    PENCIL_POSE_MOVE_RIGHT = SPOSE_TACKLED_RIGHT,
    PENCIL_POSE_MOVE_LEFT_INIT = SPOSE_TACKLED_LEFT_INIT,
    PENCIL_POSE_MOVE_LEFT = SPOSE_TACKLED_LEFT,
};

enum PencilCollision {
    PENCIL_COLLISION_MOVING = 25,
    PENCIL_COLLISION_IDLE = 26,
};

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sPencilPurpleOam_Frame1[] = {
    3,
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(23, -16, SPRITE_SIZE_32x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -16, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sPencilBlueOam_Frame1[] = {
    3,
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 576, 9, 0),
    OAM_ENTRY(23, -16, SPRITE_SIZE_32x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -16, SPRITE_SIZE_16x16, 0, 580, 9, 0),
};

const u16 sPencilRedOam_Frame1[] = {
    3,
    OAM_ENTRY(-24, -16, SPRITE_SIZE_32x16, 0, 522, 9, 0),
    OAM_ENTRY(23, -16, SPRITE_SIZE_32x16, 0, 518, 8, 0),
    OAM_ENTRY(8, -16, SPRITE_SIZE_16x16, 0, 526, 9, 0),
};

const struct AnimationFrame sPencilPurpleOam[] = {
    {sPencilPurpleOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPencilBlueOam[] = {
    {sPencilBlueOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sPencilRedOam[] = {
    {sPencilRedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void InitPencil(void)
{
    const struct AnimationFrame *oamData;

    gCurrentSprite.status |= SPRITE_STATUS_DISABLE_DRAW_DISTANCE | SPRITE_STATUS_IGNORE_SPRITE_COLLISION |
                             SPRITE_STATUS_BACKGROUND;
    gCurrentSprite.warioCollision = PENCIL_COLLISION_IDLE;
    gCurrentSprite.drawDistanceDown = 20;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 40;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 96;
    gCurrentSprite.hitboxExtentRight = 160;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work2 = 0;
    gCurrentSprite.pose = PENCIL_POSE_IDLE;

    if (gCurrentSprite.globalID == PSPRITE_PENCIL_BLUE) {
        goto bluePencil;
    }
    if (gCurrentSprite.globalID != PSPRITE_PENCIl_RED) {
        goto purplePencil;
    }
    oamData = sPencilRedOam;
    goto setOam;

bluePencil:
    oamData = sPencilBlueOam;
    goto setOam;

purplePencil:
    oamData = sPencilPurpleOam;

setOam:
    gCurrentSprite.pOamData = oamData;
    gCurrentSprite.work1 = 0;
}

void PencilStartMovingRight(void)
{
    register struct PrimarySpriteData *initial asm("r0");
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *direction asm("r3");
    register u8 currentDirection asm("r1");

    initial = &gCurrentSprite;
    direction = &initial->work2;
    currentDirection = *direction;
    sprite = initial;
    {
        register u8 nextDirection asm("r0");

        if (currentDirection != 0) {
            if (sprite->globalID != PSPRITE_PENCIL_BLUE) {
                goto cancel;
            }
            nextDirection = 0;
            goto startMoving;
        }
        if (sprite->globalID != PSPRITE_PENCIL_BLUE) {
            goto setDirection;
        }

cancel:
        sprite->pose = PENCIL_POSE_IDLE;
        return;

setDirection:
        nextDirection = 1;

startMoving:
        *direction = nextDirection;
    }

    sprite->pose = PENCIL_POSE_MOVE_RIGHT;
    sprite->work0 = 16;
    sprite->warioCollision = PENCIL_COLLISION_MOVING;
    m4aSongNumStart(SOUND_DB);
}

void PencilMoveRight(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");

    sprite = &gCurrentSprite;
    sprite->xPosition += 8;
    timer = &sprite->work0;
    if ((*timer = *timer - 1) == 0) {
        sprite->pose = PENCIL_POSE_IDLE;
        sprite->warioCollision = PENCIL_COLLISION_IDLE;
    }
}

void PencilStartMovingLeft(void)
{
    register struct PrimarySpriteData *initial asm("r0");
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *direction asm("r3");
    register u8 currentDirection asm("r1");

    initial = &gCurrentSprite;
    direction = &initial->work2;
    currentDirection = *direction;
    sprite = initial;
    {
        register u8 nextDirection asm("r0");

        if (currentDirection != 0) {
            if (sprite->globalID == PSPRITE_PENCIL_BLUE) {
                goto cancel;
            }
            nextDirection = 0;
            goto startMoving;
        }
        if (sprite->globalID == PSPRITE_PENCIL_BLUE) {
            goto setDirection;
        }

cancel:
        sprite->pose = PENCIL_POSE_IDLE;
        return;

setDirection:
        nextDirection = 1;

startMoving:
        *direction = nextDirection;
    }

    sprite->pose = PENCIL_POSE_MOVE_LEFT;
    sprite->work0 = 16;
    sprite->warioCollision = PENCIL_COLLISION_MOVING;
    m4aSongNumStart(SOUND_DB);
}

void PencilMoveLeft(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");

    sprite = &gCurrentSprite;
    sprite->xPosition -= 8;
    timer = &sprite->work0;
    if ((*timer = *timer - 1) == 0) {
        sprite->pose = PENCIL_POSE_IDLE;
        sprite->warioCollision = PENCIL_COLLISION_IDLE;
    }
}

void SpritePencil(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitPencil();
            break;
        case PENCIL_POSE_MOVE_RIGHT_INIT:
            PencilStartMovingRight();
            break;
        case PENCIL_POSE_MOVE_RIGHT:
            PencilMoveRight();
            break;
        case PENCIL_POSE_MOVE_LEFT_INIT:
            PencilStartMovingLeft();
            break;
        case PENCIL_POSE_MOVE_LEFT:
            PencilMoveLeft();
            break;
    }

    func_8026838();
}
