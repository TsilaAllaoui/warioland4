#include "sprite_ai/utsuboanko.h"

#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"

#include "oam.h"
enum UtsuboankoCollision {
    UTSUBOANKO_COLLISION_IDLE = 81,
    UTSUBOANKO_COLLISION_EMERGING = 82,
};

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sUtsuboankoEmergingOam_Frame1[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 539, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame3[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 541, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 541, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame4[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 595, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 595, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame5[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 596, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 596, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame6[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 597, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 597, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame7[] = {
    2,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 598, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 598, 8, 0),
};

const u8 sUtsuboankoRawData_83DDCAE[] = {
    0x02, 0x00, 0xF8, 0x00, 0xF0, 0x41, 0x1E, 0x82, 0xF8, 0x00, 0x00, 0x50, 0x1E, 0x82,
};

const u16 sUtsuboankoEmergingOam_Frame8[] = {
    2,
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 542, 8, 0),
};

const u16 sUtsuboankoEmergingOam_Frame9[] = {
    7,
    OAM_ENTRY(7, 2, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 606, 9, 0),
    OAM_ENTRY(-23, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 606, 9, 0),
    OAM_ENTRY(-16, -13, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-16, 3, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(0, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, 3, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-4, -19, SPRITE_SIZE_8x16, 0, 537, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame10[] = {
    7,
    OAM_ENTRY(9, 2, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 606, 9, 0),
    OAM_ENTRY(-25, 1, SPRITE_SIZE_16x16, ST_OAM_VFLIP, 606, 9, 0),
    OAM_ENTRY(-16, -13, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-16, 3, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(0, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, 3, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-4, -20, SPRITE_SIZE_8x16, 0, 537, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame11[] = {
    7,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-16, 2, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, 2, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-4, -22, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-24, 0, SPRITE_SIZE_16x16, 0, 535, 9, 0),
    OAM_ENTRY(7, 1, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 535, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame12[] = {
    9,
    OAM_ENTRY(-16, -14, SPRITE_SIZE_16x16, 0, 529, 8, 0),
    OAM_ENTRY(-16, 2, SPRITE_SIZE_16x8, 0, 593, 8, 0),
    OAM_ENTRY(0, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, 2, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 593, 8, 0),
    OAM_ENTRY(-22, 7, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(6, 7, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
    OAM_ENTRY(-16, 1, SPRITE_SIZE_8x8, 0, 637, 9, 0),
    OAM_ENTRY(10, 0, SPRITE_SIZE_8x8, 0, 637, 9, 0),
    OAM_ENTRY(-4, -23, SPRITE_SIZE_8x16, 0, 537, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame13[] = {
    9,
    OAM_ENTRY(-3, -30, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-24, -18, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-8, -18, SPRITE_SIZE_8x32, 0, 514, 8, 0),
    OAM_ENTRY(8, -18, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(0, -18, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-24, 14, SPRITE_SIZE_32x8, 0, 603, 8, 0),
    OAM_ENTRY(-8, 14, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 603, 8, 0),
    OAM_ENTRY(-23, 11, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(7, 11, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame14[] = {
    9,
    OAM_ENTRY(-3, -31, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-24, -19, SPRITE_SIZE_16x32, 0, 512, 8, 0),
    OAM_ENTRY(-8, -19, SPRITE_SIZE_8x32, 0, 514, 8, 0),
    OAM_ENTRY(8, -19, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(0, -19, SPRITE_SIZE_8x32, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_32x8, 0, 603, 8, 0),
    OAM_ENTRY(-8, 13, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 603, 8, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame15[] = {
    7,
    OAM_ENTRY(-3, -35, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-24, -25, SPRITE_SIZE_32x32, 0, 515, 8, 0),
    OAM_ENTRY(8, -25, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 515, 8, 0),
    OAM_ENTRY(-24, 7, SPRITE_SIZE_32x16, 0, 531, 8, 0),
    OAM_ENTRY(8, 7, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame16[] = {
    7,
    OAM_ENTRY(-3, -36, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-24, -26, SPRITE_SIZE_32x32, 0, 515, 8, 0),
    OAM_ENTRY(8, -26, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 515, 8, 0),
    OAM_ENTRY(-24, 6, SPRITE_SIZE_32x16, 0, 531, 8, 0),
    OAM_ENTRY(8, 6, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
};

const u16 sUtsuboankoEmergingOam_Frame17[] = {
    9,
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
    OAM_ENTRY(-3, -37, SPRITE_SIZE_8x16, 0, 537, 9, 0),
    OAM_ENTRY(-8, -26, SPRITE_SIZE_32x32, 0, 519, 8, 0),
    OAM_ENTRY(-24, -26, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(0, 6, SPRITE_SIZE_32x8, 0, 571, 8, 0),
    OAM_ENTRY(-32, 6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 571, 8, 0),
    OAM_ENTRY(-18, 5, SPRITE_SIZE_8x8, 0, 637, 9, 0),
    OAM_ENTRY(12, 5, SPRITE_SIZE_8x8, 0, 637, 9, 0),
};

const u16 sUtsuboankoRetreatingOam_Frame1[] = {
    9,
    OAM_ENTRY(9, 9, SPRITE_SIZE_8x8, 0, 636, 9, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
    OAM_ENTRY(-5, -37, SPRITE_SIZE_16x16, 0, 601, 9, 0),
    OAM_ENTRY(-24, -26, SPRITE_SIZE_32x32, 0, 523, 8, 0),
    OAM_ENTRY(8, -26, SPRITE_SIZE_16x32, 0, 527, 8, 0),
    OAM_ENTRY(-24, 6, SPRITE_SIZE_32x8, 0, 625, 8, 0),
    OAM_ENTRY(8, 6, SPRITE_SIZE_16x8, 0, 629, 8, 0),
    OAM_ENTRY(-20, 5, SPRITE_SIZE_8x8, 0, 637, 9, 0),
};

const u16 sUtsuboankoRetreatingOam_Frame2[] = {
    9,
    OAM_ENTRY(-17, 9, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 636, 9, 0),
    OAM_ENTRY(8, 13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 599, 9, 0),
    OAM_ENTRY(-24, 13, SPRITE_SIZE_16x16, 0, 599, 9, 0),
    OAM_ENTRY(-11, -37, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 601, 9, 0),
    OAM_ENTRY(-8, -26, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 523, 8, 0),
    OAM_ENTRY(-24, -26, SPRITE_SIZE_16x32, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-8, 6, SPRITE_SIZE_32x8, ST_OAM_HFLIP, 625, 8, 0),
    OAM_ENTRY(-24, 6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 629, 8, 0),
    OAM_ENTRY(12, 5, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 637, 9, 0),
};

const u16 sUtsuboankoHidingOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 635, 8, 0),
};

const u8 sUtsuboankoRawData_83DDEFE[] = {
    0x00, 0x00,
};

const struct AnimationFrame sUtsuboankoEmergingOam[] = {
    {sUtsuboankoEmergingOam_Frame1, 2},
    {sUtsuboankoEmergingOam_Frame2, 2},
    {sUtsuboankoEmergingOam_Frame3, 2},
    {sUtsuboankoEmergingOam_Frame4, 2},
    {sUtsuboankoEmergingOam_Frame5, 2},
    {sUtsuboankoEmergingOam_Frame6, 2},
    {sUtsuboankoEmergingOam_Frame7, 2},
    {sUtsuboankoEmergingOam_Frame8, 3},
    {sUtsuboankoEmergingOam_Frame9, 1},
    {sUtsuboankoEmergingOam_Frame10, 1},
    {sUtsuboankoEmergingOam_Frame11, 2},
    {sUtsuboankoEmergingOam_Frame12, 2},
    {sUtsuboankoEmergingOam_Frame13, 2},
    {sUtsuboankoEmergingOam_Frame14, 2},
    {sUtsuboankoEmergingOam_Frame15, 4},
    {sUtsuboankoEmergingOam_Frame16, 4},
    {sUtsuboankoEmergingOam_Frame17, 8},
    {sUtsuboankoEmergingOam_Frame16, 8},
    {sUtsuboankoEmergingOam_Frame17, 8},
    {sUtsuboankoEmergingOam_Frame16, 8},
    {sUtsuboankoEmergingOam_Frame17, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sUtsuboankoHidingOam[] = {
    {sUtsuboankoEmergingOam_Frame13, 2},
    {sUtsuboankoEmergingOam_Frame12, 2},
    {sUtsuboankoEmergingOam_Frame11, 2},
    {sUtsuboankoEmergingOam_Frame10, 1},
    {sUtsuboankoEmergingOam_Frame9, 1},
    {sUtsuboankoEmergingOam_Frame8, 4},
    {sUtsuboankoEmergingOam_Frame7, 4},
    {sUtsuboankoEmergingOam_Frame6, 4},
    {sUtsuboankoEmergingOam_Frame5, 4},
    {sUtsuboankoEmergingOam_Frame4, 4},
    {sUtsuboankoEmergingOam_Frame3, 4},
    {sUtsuboankoEmergingOam_Frame2, 4},
    {sUtsuboankoEmergingOam_Frame1, 4},
    {sUtsuboankoHidingOam_Frame1, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sUtsuboankoRetreatingOam[] = {
    {sUtsuboankoRetreatingOam_Frame1, 6},
    {sUtsuboankoEmergingOam_Frame17, 6},
    {sUtsuboankoRetreatingOam_Frame2, 6},
    {sUtsuboankoEmergingOam_Frame17, 6},
    {sUtsuboankoRetreatingOam_Frame1, 6},
    {sUtsuboankoEmergingOam_Frame17, 6},
    {sUtsuboankoRetreatingOam_Frame2, 6},
    {sUtsuboankoEmergingOam_Frame17, 6},
    {sUtsuboankoEmergingOam_Frame13, 2},
    {sUtsuboankoEmergingOam_Frame12, 2},
    {sUtsuboankoEmergingOam_Frame11, 2},
    {sUtsuboankoEmergingOam_Frame10, 1},
    {sUtsuboankoEmergingOam_Frame9, 1},
    {sUtsuboankoEmergingOam_Frame8, 4},
    {sUtsuboankoEmergingOam_Frame7, 4},
    {sUtsuboankoEmergingOam_Frame6, 4},
    {sUtsuboankoEmergingOam_Frame5, 4},
    {sUtsuboankoEmergingOam_Frame4, 4},
    {sUtsuboankoEmergingOam_Frame3, 4},
    {sUtsuboankoEmergingOam_Frame2, 4},
    {sUtsuboankoEmergingOam_Frame1, 4},
    {sUtsuboankoHidingOam_Frame1, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sUtsuboankoIdleOam[] = {
    {sUtsuboankoEmergingOam_Frame1, 10},
    {sUtsuboankoEmergingOam_Frame2, 10},
    {sUtsuboankoEmergingOam_Frame3, 10},
    {sUtsuboankoEmergingOam_Frame4, 7},
    {sUtsuboankoEmergingOam_Frame5, 6},
    {sUtsuboankoEmergingOam_Frame5, 5},
    {sUtsuboankoEmergingOam_Frame4, 6},
    {sUtsuboankoEmergingOam_Frame3, 6},
    {sUtsuboankoEmergingOam_Frame2, 6},
    {sUtsuboankoEmergingOam_Frame1, 6},
    {sUtsuboankoHidingOam_Frame1, 30},
    ANIMATION_TERMINATOR
};

void InitUtsuboanko(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.drawDistanceDown = 48;
    gCurrentSprite.drawDistanceUp = 48;
    gCurrentSprite.drawDistanceLeftRight = 24;
    gCurrentSprite.hitboxExtentUp = 48;
    gCurrentSprite.hitboxExtentDown = 44;
    gCurrentSprite.hitboxExtentLeft = 64;
    gCurrentSprite.hitboxExtentRight = 60;
    gCurrentSprite.work0 = 0;
}

void UtsuboankoIdleInit(void)
{
    gCurrentSprite.pOamData = sUtsuboankoIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.warioCollision = UTSUBOANKO_COLLISION_IDLE;
}

void UtsuboankoIdle(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.work0 != 0) {
        gCurrentSprite.work0--;
    } else if (SpriteUtilCheckWarioNearbyLeftRight(140, 256)) {
        gCurrentSprite.pOamData = sUtsuboankoEmergingOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
        gCurrentSprite.pose = SPOSE_12;
        gCurrentSprite.work0 = 75;
    }
}

void UtsuboankoEmerge(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *timerPointer asm("ip");
    register s32 nextTimer asm("r2");
    u8 timer;

    sprite = &gCurrentSprite;
    {
        register u32 address asm("r0");

        address = 39;
        /* Preserve agbcc's original register form for the work0 address calculation. */
        asm("" : "+r" (address));
        address += (u32) sprite;
        timerPointer = (u8 *) address;
        {
            register int oldTimer asm("r0");
            register u8 *storePointer asm("r1");

            oldTimer = *(u8 *) address;
            nextTimer = oldTimer - 1;
            storePointer = timerPointer;
            *storePointer = nextTimer;
        }
    }
    {
        register u32 shiftedTimer asm("r0");

        shiftedTimer = nextTimer << 24;
        /* Keep the byte truncation in r0 before agbcc moves the timer to r1. */
        asm("" : "+r" (shiftedTimer));
        timer = shiftedTimer >> 24;
    }
    if (timer != 0) {
        if (timer > 51) {
            sprite->disableWarioCollisionTimer = 1;
            if (timer == 52) {
                m4aSongNumStart(SOUND_64);
            }
        } else if (timer == 10) {
            sprite->warioCollision = UTSUBOANKO_COLLISION_EMERGING;
        }
    } else {
        sprite->pOamData = sUtsuboankoRetreatingOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = SPOSE_14;
        {
            register int resetTimer asm("r0");
            register u8 *resetPointer asm("r1");

            resetTimer = 117;
            resetPointer = timerPointer;
            *resetPointer = resetTimer;
        }
    }
}

void UtsuboankoRetreat(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *timerPointer asm("r2");
    register int oldTimer asm("r0");
    register int nextTimer asm("r1");
    register u32 shiftedTimer asm("r0");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    oldTimer = *timerPointer;
    nextTimer = oldTimer - 1;
    *timerPointer = nextTimer;
    shiftedTimer = nextTimer << 24;
    if (shiftedTimer != 0) {
        shiftedTimer >>= 24;
        if (shiftedTimer > 68) {
            return;
        }
    } else {
        sprite->pose = SPOSE_IDLE_INIT;
        *timerPointer = 70;
    }
    sprite->disableWarioCollisionTimer = 1;
}

void UtsuboankoHideInit(void)
{
    gCurrentSprite.pOamData = sUtsuboankoHidingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_6D;
    gCurrentSprite.work0 = 70;
}

void UtsuboankoHide(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0) {
        gCurrentSprite.pose = SPOSE_IDLE_INIT;
        gCurrentSprite.work0 = 70;
    }
}

void SpriteUtsuboanko(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitUtsuboanko();
        case SPOSE_IDLE_INIT:
            UtsuboankoIdleInit();
        case SPOSE_IDLE:
            UtsuboankoIdle();
            break;
        case SPOSE_12:
            UtsuboankoEmerge();
            break;
        case SPOSE_14:
            UtsuboankoRetreat();
            break;
        case SPOSE_6C:
            UtsuboankoHideInit();
        case SPOSE_6D:
            UtsuboankoHide();
            break;
        default:
            gCurrentSprite.pose = SPOSE_6C;
            gCurrentSprite.disableWarioCollisionTimer = 1;
            break;
    }
}
