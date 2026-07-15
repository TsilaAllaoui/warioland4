#include "global_data.h"
#include "gba/m4a.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/spike_cannon.h"
#include "sprite_util.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sSpikeCannonProjectileFlyingOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, 4, SPRITE_SIZE_32x8, 0, 526, 8, 0),
};

const u16 sSpikeCannonProjectileFlyingOam_Frame4[] = {
    2,
    OAM_ENTRY(-20, -12, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-12, 4, SPRITE_SIZE_32x8, 0, 558, 8, 0),
};

const u16 sSpikeCannonProjectileFlyingOam_Frame3[] = {
    2,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-12, 4, SPRITE_SIZE_16x8, 0, 530, 8, 0),
};

const u16 sSpikeCannonProjectileFlyingOam_Frame2[] = {
    2,
    OAM_ENTRY(-20, -12, SPRITE_SIZE_32x16, 0, 522, 8, 0),
    OAM_ENTRY(-4, 4, SPRITE_SIZE_16x8, 0, 562, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame1[] = {
    1,
    OAM_ENTRY(-8, -8, SPRITE_SIZE_8x8, 0, 532, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame2[] = {
    1,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_16x16, 0, 533, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame3[] = {
    1,
    OAM_ENTRY(-12, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 535, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame4[] = {
    2,
    OAM_ENTRY(0, -5, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-12, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP | ST_OAM_VFLIP, 537, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame5[] = {
    3,
    OAM_ENTRY(-8, 2, SPRITE_SIZE_8x8, 0, 532, 8, 0),
    OAM_ENTRY(-12, -12, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x16, 0, 533, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame6[] = {
    2,
    OAM_ENTRY(-11, -2, SPRITE_SIZE_16x16, 0, 533, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x16, 0, 535, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame7[] = {
    2,
    OAM_ENTRY(-11, -2, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 535, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x16, 0, 537, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame8[] = {
    2,
    OAM_ENTRY(-4, -8, SPRITE_SIZE_16x16, 0, 539, 8, 0),
    OAM_ENTRY(-11, -2, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
};

const u16 sSpikeCannonProjectileDespawnOam_Frame9[] = {
    1,
    OAM_ENTRY(-12, -2, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 539, 8, 0),
};

const u16 sSpikeCannonOam_Frame2[] = {
    1,
    OAM_ENTRY(-5, -5, SPRITE_SIZE_8x8, 0, 515, 8, 0),
};

const u16 sSpikeCannonOam_Frame1[] = {
    1,
    OAM_ENTRY(0, -13, SPRITE_SIZE_16x8, 0, 541, 8, 0),
};

const u8 sSpikeCannonRawData_83D0D14[] = {
    0x60, 0x0C, 0x3D, 0x08, 0x05, 0x00, 0x00, 0x00, 0x6E, 0x0C, 0x3D, 0x08, 0x05, 0x00, 0x00, 0x00,
    0x7C, 0x0C, 0x3D, 0x08, 0x05, 0x00, 0x00, 0x00, 0x8A, 0x0C, 0x3D, 0x08, 0x05, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const struct AnimationFrame sSpikeCannonProjectileFlyingOam[] = {
    {sSpikeCannonProjectileFlyingOam_Frame1, 5},
    {sSpikeCannonProjectileFlyingOam_Frame2, 5},
    {sSpikeCannonProjectileFlyingOam_Frame3, 5},
    {sSpikeCannonProjectileFlyingOam_Frame4, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikeCannonProjectileDespawnOam[] = {
    {sSpikeCannonProjectileDespawnOam_Frame1, 2},
    {sSpikeCannonProjectileDespawnOam_Frame2, 2},
    {sSpikeCannonProjectileDespawnOam_Frame3, 3},
    {sSpikeCannonProjectileDespawnOam_Frame4, 3},
    {sSpikeCannonProjectileDespawnOam_Frame5, 3},
    {sSpikeCannonProjectileDespawnOam_Frame6, 3},
    {sSpikeCannonProjectileDespawnOam_Frame7, 3},
    {sSpikeCannonProjectileDespawnOam_Frame8, 3},
    {sSpikeCannonProjectileDespawnOam_Frame9, 5},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sSpikeCannonOam[] = {
    {sSpikeCannonOam_Frame1, 24},
    {sSpikeCannonOam_Frame2, 24},
    {sSpikeCannonOam_Frame1, 24},
    {sSpikeCannonOam_Frame2, 24},
    ANIMATION_TERMINATOR
};

void InitSpikeCannon(void)
{
    register struct PrimarySpriteData *current asm("ip");
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u32 flags asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");

    current = &gCurrentSprite;
    oldStatus = current->status;
    flags = SPRITE_STATUS_HIDDEN | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = flags;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    sprite = current;
    sprite->status = status;
    current->drawDistanceDown = 1;
    current->drawDistanceUp = 1;
    current->drawDistanceLeftRight = 1;
    current->hitboxExtentUp = 1;
    current->hitboxExtentDown = 1;
    current->hitboxExtentLeft = 1;
    current->hitboxExtentRight = 1;
    sprite->pOamData = sSpikeCannonOam;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->pose = 15;
    sprite->warioCollision = zeroByte;
    current->work0 = 80;
    sprite->drawPriority = 1;
}

void SpikeCannonWait(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("ip");
    register int next asm("r0");
    register u8 value asm("r3");

    if (SpriteUtilCheckWarioNearbyAboveBelow(70, 96) != 1) {
        sprite = &gCurrentSprite;
        timer = &sprite->work0;
        next = *timer;
        next--;
        {
            register u8 *storePointer asm("r1");
            storePointer = timer;
            *storePointer = next;
        }
        next <<= 24;
        value = (u32)next >> 24;
        if (value == 0) {
            sprite->status &= ~SPRITE_STATUS_HIDDEN;
            sprite->currentAnimationFrame = 0;
            sprite->animationTimer = value;
            sprite->pose = 16;
            {
                register int resetValue asm("r0");
                register u8 *resetPointer asm("r1");
                resetValue = 72;
                resetPointer = timer;
                *resetPointer = resetValue;
            }
        }
    }
}

void SpikeCannonFire(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r6");
    register int next asm("r0");
    register u8 value asm("r5");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    next = *timer;
    next--;
    *timer = next;
    next <<= 24;
    value = (u32)next >> 24;
    if (value == 0) {
        sprite->status |= SPRITE_STATUS_HIDDEN;
        func_801E3A8(184, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition,
                     sprite->xPosition + 32, value);
        func_801E3A8(184, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition,
                     sprite->xPosition + 32, SPRITE_STATUS_FACING_RIGHT);
        *timer = 220;
        sprite->pose = 15;
        m4aSongNumStart(SE_SPIKE_CANNON_FIRE);
    }
}

void InitSpikeCannonProjectile(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u16 oldStatus asm("r0");
    register u16 status asm("r3");
    register int zeroByte asm("r5");
    register int zeroHalf asm("r6");
    register int distance asm("r4");
    register u8 *bounds asm("r0");
    register int horizontalExtent asm("r2");
    register int verticalExtent asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = SPRITE_STATUS_BACKGROUND | SPRITE_STATUS_HEAVY;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    {
        register struct PrimarySpriteData *storePointer asm("r1");
        storePointer = sprite;
        storePointer->status = status;
    }
    bounds = (u8 *)sprite + 32;
    distance = 16;
    *bounds = distance;
    bounds++;
    *bounds = distance;
    bounds++;
    *bounds = distance;
    bounds++;
    horizontalExtent = 32;
    *bounds = horizontalExtent;
    bounds++;
    verticalExtent = 28;
    *bounds = verticalExtent;
    bounds++;
    *bounds = horizontalExtent;
    bounds++;
    asm("" : "+r"(bounds));
    *bounds = verticalExtent;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    {
        register int collision asm("r0");
        register u8 *workPointer asm("r1");
        collision = 9;
        workPointer = (u8 *)sprite;
        workPointer[30] = collision;
        asm("" : "+r"(workPointer));
        workPointer += 39;
        *workPointer = 36;
        workPointer += 2;
        asm("" : "+r"(workPointer));
        *workPointer = 4;
    }
    sprite->work3 = zeroByte;
    sprite->pose = distance;
    /* agbcc otherwise removes this unused facing-direction test. */
    asm("mov r0, #64\n\tand r0, %0" : : "r"(status) : "r0");
    {
        register const struct AnimationFrame *oam asm("r0");
        register struct PrimarySpriteData *storePointer asm("r1");
        oam = sSpikeCannonProjectileFlyingOam;
        storePointer = sprite;
        storePointer->pOamData = oam;
    }
}

void SpikeCannonProjectileMove(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register const s16 *movement asm("r5");
    register int index asm("r2");
    register u8 *indexPointer asm("ip");
    register u8 *timer asm("r1");
    register int timerValue asm("r0");
    s16 delta;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    timerValue = *timer;
    if (timerValue != 0) {
        timerValue--;
        *timer = timerValue;
        sprite->currentAnimationFrame--;
        sprite->yPosition -= 2;
        return;
    }

    func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1 || (gUnk_3000A50 & 0xF) != 0) {
        sprite->pose = 49;
        return;
    }

    indexPointer = &sprite->work3;
    index = *indexPointer;
    movement = sSpikeCannonProjectileYVelocity;
    delta = movement[index];
    if (delta == 0x7FFF) {
        register int previous asm("r1");
        register u16 yPosition asm("r0");
        register const s16 *previousPointer asm("r1");
        register u16 previousDelta asm("r1");

        previous = index - 1;
        previous <<= 1;
        previous += (u32)movement;
        previousPointer = (const s16 *)previous;
        yPosition = sprite->yPosition;
        previousDelta = *previousPointer;
        yPosition += previousDelta;
        sprite->yPosition = yPosition;
    } else {
        register int nextIndex asm("r0");
        register u8 *storePointer asm("r1");
        nextIndex = index + 1;
        storePointer = indexPointer;
        *storePointer = nextIndex;
        sprite->yPosition += delta;
    }

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.xPosition += gCurrentSprite.work2;
    } else {
        gCurrentSprite.xPosition -= gCurrentSprite.work2;
    }
}

void StartSpikeCannonProjectileDespawn(void)
{
    register struct PrimarySpriteData *sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    sprite->pOamData = sSpikeCannonProjectileDespawnOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 50;
    sprite->work0 = 27;
    sprite->status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
}

void SpikeCannonProjectileDespawn(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register u8 value asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = --*timer;
    if (value == 0) {
        sprite->status = 0;
    }
}

void SpriteSpikeCannon(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitSpikeCannon();
            break;
        case 15:
            SpikeCannonWait();
            break;
        case 16:
            SpikeCannonFire();
            break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteSpikeCannonProjectile(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitSpikeCannonProjectile();
            break;
        case 16:
            SpikeCannonProjectileMove();
            break;
        case 50:
            SpikeCannonProjectileDespawn();
            break;
        default:
            StartSpikeCannonProjectileDespawn();
            break;
    }
}
