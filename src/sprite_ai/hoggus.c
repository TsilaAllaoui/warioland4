#include "background_registers.h"
#include "global_data.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "transparency.h"
#include "wario.h"
#include "sprite_ai/hoggus.h"

void SpriteSpawnAsChildWide(u32 id, u32 roomSlot, u32 gfxSlot, u32 yPosition, u32 xPosition) asm("SpriteSpawnAsChild");

void UpdateHoggusPosition(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    u16 spriteCoordinate;
    u16 targetCoordinate;
    u16 distance;
    u16 velocity;

    sprite = &gCurrentSprite;
    spriteCoordinate = sprite->xPosition + 0x200;
    targetCoordinate = gWarioData.xPosition + 0x200;

    if (gWarioData.horizontalDirection & 0x20)
    {
        targetCoordinate -= 0x180;
        if (spriteCoordinate > targetCoordinate)
            distance = spriteCoordinate - targetCoordinate;
        else
            distance = targetCoordinate - spriteCoordinate;

        if (distance <= 8)
        {
            velocity = 0;
        }
        else
        {
            velocity = (distance - 8) >> 2;
            if (velocity > 16)
                velocity = 16;
        }

        if (spriteCoordinate > targetCoordinate)
            sprite->xPosition -= velocity;
        else if (spriteCoordinate < targetCoordinate)
            sprite->xPosition += velocity;
    }
    else
    {
        targetCoordinate += 0x140;
        if (spriteCoordinate > targetCoordinate)
            distance = spriteCoordinate - targetCoordinate;
        else
            distance = targetCoordinate - spriteCoordinate;

        velocity = (distance - 8) >> 2;
        if (velocity > 16)
            velocity = 16;

        if (spriteCoordinate < targetCoordinate)
            sprite->xPosition += velocity;
        else if (spriteCoordinate > targetCoordinate)
            sprite->xPosition -= velocity;
    }

    spriteCoordinate = sprite->yPosition + 0x200;
    targetCoordinate = gBg1YPosition + 0x2AA;
    if (spriteCoordinate > targetCoordinate)
        distance = spriteCoordinate - targetCoordinate;
    else
        distance = targetCoordinate - spriteCoordinate;

    if (distance <= 8)
    {
        velocity = 0;
    }
    else
    {
        velocity = (distance - 8) >> 5;
        if (velocity <= 1)
            velocity = 2;
    }

    asm("" : : : "memory");
    if (spriteCoordinate > targetCoordinate)
        sprite->yPosition -= velocity;
    else if (spriteCoordinate < targetCoordinate)
        sprite->yPosition += velocity;
}

void InitHoggus(void)
{
    register u32 existingSprite asm("r4");
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* work2 asm("r0");

    existingSprite = SpriteUtilDespawnIfSpriteExists(PSPRITE_HOGGUS);
    if (existingSprite == 0)
    {
        sprite = &gCurrentSprite;
        sprite->status |= 0x408;
        sprite->warioCollision = 0;
        sprite->drawDistanceDown = 32;
        sprite->drawDistanceUp = 32;
        sprite->drawDistanceLeftRight = 64;
        sprite->hitboxExtentUp = 4;
        sprite->hitboxExtentDown = 4;
        sprite->hitboxExtentLeft = 4;
        sprite->hitboxExtentRight = 4;
        sprite->pOamData = sHoggusIdleOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = existingSprite;
        sprite->pose = 15;
        sprite->work1 = 1;
        work2 = &sprite->work2;
        *work2 = 0;
    }
}

void StartHoggusIdle(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* direction asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    sprite->work0 = 60;
    if (sprite->xPosition > gWarioData.xPosition)
    {
        direction = &sprite->work2;
        *direction = 0;
    }
    else
    {
        direction = &sprite->work2;
        *direction = 1;
    }
}

void HoggusIdle(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* timer asm("r6");
    register int count asm("r4");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    {
        u8 value;

        value = *timer;
        if (value != 0)
        {
            value--;
            *timer = value;
        }
        else
        {
            func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition + 96));
        if ((gUnk_3000A51 & 0xF) == 0)
        {
            count = SpriteUtilCountSpriteType(PSPRITE_DENDEN);
            count += SpriteUtilCountSpriteType(PSPRITE_BUTATABI);
            if (count <= 1)
            {
                sprite->pose = 17;
                *timer = 120;
                {
                    register u8* direction asm("r2");

                    direction = &sprite->work1;
                    *direction ^= 1;
                }
            }
            }
        }
    }
    UpdateHoggusPosition();
}

void StartHoggusCharge(void)
{
    register struct PrimarySpriteData* sprite asm("r0");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusChargeOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 18;
    sprite->work0 = 160;
    m4aSongNumStart(SE_HOGGUS_CHARGE);
}

void HoggusCharge(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r1");
    int value;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    if ((value << 24) == 0)
        sprite->pose = 19;
    UpdateHoggusPosition();
}

void StartHoggusAttack(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");

    initialSprite = &gCurrentSprite;
    {
        register u8 work1 asm("r1");

        work1 = initialSprite->work1;
        sprite = initialSprite;
        if (work1 != 0)
            sprite->pOamData = sHoggusAttackVariant1Oam;
        else
            sprite->pOamData = sHoggusAttackVariant0Oam;
    }
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 20;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 40;
    }
    m4aSongNumStart(SE_HOGGUS_ATTACK);
}

void HoggusAttack(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("r1");
    int value;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    if ((value << 24) == 0)
        sprite->pose = 21;
    UpdateHoggusPosition();
}

void StartHoggusSpawn(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");

    initialSprite = &gCurrentSprite;
    {
        register u8 work1 asm("r1");

        work1 = initialSprite->work1;
        sprite = initialSprite;
        if (work1 != 0)
            sprite->pOamData = sHoggusSpawnVariant1Oam;
        else
            sprite->pOamData = sHoggusSpawnVariant0Oam;
    }
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 22;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 40;
    }
}

void HoggusSpawn(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* variant asm("r4");
    register u8* timerPointer asm("r2");
    register int timer asm("r1");
    register int pose asm("r3");
    register int collisionState asm("r1");
    register int maskedState asm("r0");
    int shiftedTimer;

    sprite = &gCurrentSprite;
    func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition + 96));
    collisionState = gUnk_3000A51;
    pose = 15;
    maskedState = pose;
    maskedState &= collisionState;
    if (maskedState != 0)
        goto set_idle_pose;

    timerPointer = &sprite->work0;
    shiftedTimer = *timerPointer;
    timer = shiftedTimer - 1;
    *timerPointer = timer;
    shiftedTimer = timer << 24;
    if (shiftedTimer == 0)
        goto set_idle_pose;

    if ((u32)shiftedTimer >> 24 == 10)
    {
        variant = &sprite->work1;
        SpriteSpawnAsChild(PSPRITE_D0, *variant, sprite->gfxSlot,
            sprite->yPosition - 32, sprite->xPosition + 96);
        if (*variant != 0)
            m4aSongNumStart(SE_HOGGUS_SPAWN_BUTATABI);
        else
            m4aSongNumStart(SE_HOGGUS_SPAWN_DENDEN);
    }
    goto update_movement;

set_idle_pose:
    sprite->pose = pose;

update_movement:
    UpdateHoggusPosition();
}

void StartHoggusEscape(void)
{
    register struct PrimarySpriteData* sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sHoggusIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 111;
    sprite->status &= 0x7FFF;
}

void HoggusEscape(void)
{
    gCurrentSprite.yPosition -= 8;
}

void InitHoggusEgg(void)
{
    register struct PrimarySpriteData* sprite asm("r12");
    register struct PrimarySpriteData* setupSprite asm("r1");
    register struct PrimarySpriteData* finalSprite asm("r4");
    register u32 zeroByte asm("r2");
    register u32 zeroHalf asm("r3");
    register u16 status asm("r0");

    sprite = &gCurrentSprite;
    {
        register u16 originalStatus asm("r1");

        originalStatus = sprite->status;
        status = originalStatus & 0xFFFB;
    }
    zeroByte = 0;
    zeroHalf = 0;
    status |= 0x400;
    setupSprite = sprite;
    setupSprite->status = status;
    setupSprite->drawPriority = zeroByte;
    setupSprite->warioCollision = zeroByte;
    {
        register u8* distance asm("r1");

        distance = &setupSprite->drawDistanceDown;
        *distance = 32;
        distance++;
        *distance = 32;
        distance++;
        asm("" : "+r"(distance));
        *distance = 32;
    }
    {
        register u8* hitbox asm("r0");

        hitbox = &sprite->hitboxExtentUp;
        *hitbox = 4;
        hitbox++;
        *hitbox = 4;
        hitbox++;
        *hitbox = 4;
        hitbox++;
        asm("" : "+r"(hitbox));
        *hitbox = 4;
    }
    {
        register const struct AnimationFrame* oam asm("r0");

        oam = sHoggusEggOam;
        finalSprite = sprite;
        finalSprite->pOamData = oam;
    }
    finalSprite->currentAnimationFrame = zeroByte;
    finalSprite->animationTimer = zeroHalf;
    finalSprite->pose = 15;
    {
        register u8* timer asm("r1");

        timer = &sprite->work0;
        *timer = 36;
    }
}

void HoggusEggUpdate(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* timerPointer asm("r2");
    register int timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    value = *timerPointer;
    timer = value - 1;
    *timerPointer = timer;
    value = (u8)timer;
    if (value == 0)
        goto despawn;

    value = (u8)timer;
    if (value != 16)
        goto finished;

    value = sprite->roomSlot;
    if (value == 0)
    {
        register int roomSlot asm("r1");
        register int gfxSlot asm("r2");

        /* agbcc otherwise hoists this register copy before the room-slot comparison. */
        asm("mov %0, %1" : "=r"(roomSlot) : "r"(value));
        gfxSlot = sprite->gfxSlot + 3;
        SpriteSpawnAsChildWide(PSPRITE_DENDEN, roomSlot, gfxSlot,
            sprite->yPosition + 16, sprite->xPosition);
    }
    else
    {
        register int roomSlot asm("r1");
        register int gfxSlot asm("r2");

        /* Preserve the original post-branch room-slot reload into r1. */
        asm("ldrb %0, [%1, #24]" : "=r"(roomSlot) : "r"(sprite));
        gfxSlot = sprite->gfxSlot + 5;
        SpriteSpawnAsChildWide(PSPRITE_BUTATABI, roomSlot, gfxSlot,
            sprite->yPosition + 16, sprite->xPosition);
    }
    goto finished;

despawn:
    sprite->status = value;

finished:
    return;
}

void SpriteHoggus(void)
{
    register struct PrimarySpriteData* initialSprite asm("r0");
    register struct PrimarySpriteData* sprite asm("r2");
    register u8 pose asm("r1");

    initialSprite = &gCurrentSprite;
    pose = initialSprite->pose;
    sprite = initialSprite;
    if (pose != 110 && gUnk_30000D8.targetAlpha == 16)
        sprite->pose = 110;

    switch (sprite->pose)
    {
        case 0:
            InitHoggus();
            break;
        case 15:
            StartHoggusIdle();
        case 16:
            HoggusIdle();
            break;
        case 17:
            StartHoggusCharge();
        case 18:
            HoggusCharge();
            break;
        case 19:
            StartHoggusAttack();
        case 20:
            HoggusAttack();
            break;
        case 21:
            StartHoggusSpawn();
        case 22:
            HoggusSpawn();
            break;
        case 110:
            StartHoggusEscape();
        case 111:
            HoggusEscape();
            break;
    }
}

void SpriteHoggusEgg(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitHoggusEgg();
    HoggusEggUpdate();
}
