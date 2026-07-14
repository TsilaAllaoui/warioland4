#include "sprite_ai/ringosuki.h"

#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

void func_8046A6C(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_HEAVY;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.drawDistanceDown = 48;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.hitboxExtentUp = 80;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 44;
    gCurrentSprite.hitboxExtentRight = 40;
    gCurrentSprite.pOamData = sUnk_83CA178;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work1 = 42;
    SpriteUtilTurnTowardWario();
}

void func_8046AD4(void)
{
    gCurrentSprite.pOamData = sUnk_83CA178;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work1 = 42;
}

void func_8046AF4(void)
{
    u32 nearby;
    register u8 collision asm("r2");
    u8 extent;
    register u8 *collisionPointer asm("r5");
    register u8 *extentPointer;
    u16 xPosition;
    u16 maskedX;
    u16 mask;
    u8 collisionResult;

    nearby = SpriteUtilWaitCheckWarioNearbyLeftRight(256, 256);
    func_80238A4();
    func_8023B88();
    collision = gUnk_3000A50;
    if (collision == 0)
    {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
        {
            func_8023BFC(gCurrentSprite.yPosition,
                         gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        }
        else
        {
            func_8023BFC(gCurrentSprite.yPosition,
                         gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (gUnk_3000A51 != 0)
            goto move;
        gCurrentSprite.pose = 27;
        return;
    }

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
    {
        if (nearby == NS_RIGHT)
        {
            if (gWarioData.reaction == 3)
                gCurrentSprite.pose = 114;
            else
                gCurrentSprite.pose = 110;
            return;
        }
        if (nearby == NS_LEFT)
        {
            gCurrentSprite.pose = 17;
            return;
        }
        if ((collision & 0xF0) == 0)
            goto move;
        xPosition = gCurrentSprite.xPosition;
        maskedX = xPosition & 0x3F;
        extentPointer = &gCurrentSprite.hitboxExtentRight;
        extent = *extentPointer;
        if (maskedX + extent <= 0x3F)
            goto move;
        func_8023BFC(gCurrentSprite.yPosition, xPosition + extent);
        collisionPointer = &gUnk_3000A51;
        if (*collisionPointer == 0)
        {
            gCurrentSprite.pose = 17;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
                     gCurrentSprite.xPosition + *extentPointer);
        collisionResult = *collisionPointer;
        if (collisionResult == 17)
        {
            gCurrentSprite.pose = collisionResult;
            return;
        }
    }
    else
    {
        if (nearby == NS_LEFT)
        {
            if (gWarioData.reaction == 3)
                gCurrentSprite.pose = 114;
            else
                gCurrentSprite.pose = 110;
            return;
        }
        if (nearby == NS_RIGHT)
        {
            gCurrentSprite.pose = 17;
            return;
        }
        if ((collision & 0xF0) == 0)
            goto move;
        xPosition = gCurrentSprite.xPosition;
        mask = 0x3F;
        extentPointer = &gCurrentSprite.hitboxExtentLeft;
        extent = *extentPointer;
        maskedX = mask & xPosition;
        if (maskedX >= extent)
            goto move;
        func_8023BFC(gCurrentSprite.yPosition, xPosition - extent);
        collisionPointer = &gUnk_3000A51;
        if (*collisionPointer == 0)
        {
            gCurrentSprite.pose = 17;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
                     gCurrentSprite.xPosition - *extentPointer);
        collisionResult = *collisionPointer;
        if (collisionResult == 17)
        {
            gCurrentSprite.pose = collisionResult;
            return;
        }
    }

move:
    func_80263AC();
}

void func_8046C5C(void)
{
    gCurrentSprite.pOamData = sUnk_83CA1A0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 9;
}

void func_8046C7C(void)
{
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0)
    {
        gCurrentSprite.pose = 27;
    }
    else if (--gCurrentSprite.work0 == 0)
    {
        if (gCurrentSprite.pose == 18)
        {
            gCurrentSprite.status ^= SPRITE_STATUS_FACING_RIGHT;
            gCurrentSprite.pOamData = sUnk_83CA1B8;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
            gCurrentSprite.pose = 20;
            gCurrentSprite.work0 = 7;
        }
        else
        {
            gCurrentSprite.pose = 112;
        }
    }
}

void func_8046CEC(void)
{
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 6;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5)
        gCurrentSprite.warioCollision = 5;
}

void func_8046D24(void)
{
    gCurrentSprite.pose = 52;
    func_8046CEC();
}

void func_8046D38(void)
{
    gCurrentSprite.pose = 54;
    func_8046CEC();
}

void func_8046D4C(void)
{
    gCurrentSprite.pOamData = sUnk_83CA1D0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 61;
}

void func_8046D6C(void)
{
    struct PrimarySpriteData *sprite;
    register u32 oldTimer asm("r0");
    register u32 newTimer asm("r1");
    u32 shifted;
    u8 timer;
    register u8 *timerPointer;
    u16 facing;

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    oldTimer = *timerPointer;
    newTimer = oldTimer - 1;
    *timerPointer = newTimer;
    shifted = newTimer << 24;
    if (shifted != 0)
    {
        timer = shifted >> 24;
        if (timer == 48)
        {
            facing = sprite->status & SPRITE_STATUS_FACING_RIGHT;
            if (facing != 0)
            {
                func_801E3A8(178, sprite->roomSlot, sprite->gfxSlot,
                             sprite->yPosition - 110, sprite->xPosition + 92,
                             SPRITE_STATUS_FACING_RIGHT);
            }
            else
            {
                func_801E3A8(178, sprite->roomSlot, sprite->gfxSlot,
                             sprite->yPosition - 110, sprite->xPosition - 92, facing);
            }
            m4aSongNumStart(SOUND_46);
        }

        func_80238A4();
        func_8023B88();
        if (gUnk_3000A50 == 0)
            gCurrentSprite.pose = 27;
    }
    else
    {
        sprite->pose = 17;
    }
}

void func_8046DFC(void)
{
    gCurrentSprite.pOamData = sUnk_83CA400;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 113;
    gCurrentSprite.work0 = 16;
    gCurrentSprite.work3 = 0;
}

void func_8046E24(void)
{
    u8 index;
    s16 velocity;
    u16 value;

    value = gCurrentSprite.work3;
    index = value;
    velocity = sUnk_83CA440[index];
    if (velocity == S16_MAX)
    {
        value = sUnk_83CA440[index - 1];
        gCurrentSprite.yPosition = gCurrentSprite.yPosition + value;
    }
    else
    {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += velocity;
    }
    value = --gCurrentSprite.work0;
    if (value == 0)
    {
        value = 15;
        gCurrentSprite.pose = value;
    }
}

void func_8046E84(void)
{
    gCurrentSprite.pOamData = sUnk_83CA358;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 115;
    gCurrentSprite.work0 = 58;
}

void func_8046EA8(void)
{
    func_80238A4();
    func_8023B88();
    if (gUnk_3000A50 == 0)
        gCurrentSprite.pose = 27;
    if (--gCurrentSprite.work0 == 0)
        gCurrentSprite.pose = 17;
}

void func_8046EE4(void)
{
    gCurrentSprite.pOamData = sUnk_83CA328;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 14;
}

void func_8046F04(void)
{
    gCurrentSprite.pOamData = sUnk_83CA2C0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 26;
    gCurrentSprite.work0 = 30;
    gCurrentSprite.work3 = 0;
}

void func_8046F2C(void)
{
    u8 index;
    s16 velocity;
    u16 value;

    value = gCurrentSprite.work3;
    index = value;
    velocity = sUnk_83CA462[index];
    if (velocity == S16_MAX)
    {
        value = sUnk_83CA462[index - 1];
        gCurrentSprite.yPosition = gCurrentSprite.yPosition + value;
    }
    else
    {
        value = index + 1;
        gCurrentSprite.work3 = value;
        gCurrentSprite.yPosition += velocity;
    }

    if (gCurrentSprite.work0 <= 17)
    {
        func_80238A4();
        func_8023B88();
        if (gUnk_3000A50 == 0)
            gCurrentSprite.pose = 27;
        gCurrentSprite.warioCollision = 1;
    }

    value = --gCurrentSprite.work0;
    if (value == 0)
    {
        if (gCurrentSprite.xPosition > gWarioData.xPosition)
        {
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 17;
            else
                gCurrentSprite.pose = 23;
        }
        else
        {
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 23;
            else
                gCurrentSprite.pose = 17;
        }
    }
}

void func_8046FE8(void)
{
    gCurrentSprite.pOamData = sUnk_83CA298;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 28;
    gCurrentSprite.work3 = 0;
}

void func_8047008(void)
{
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 30;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8047030(void)
{
    gCurrentSprite.pOamData = sUnk_83CA3F0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 4;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status = (gCurrentSprite.status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) |
                            SPRITE_STATUS_MAYBE_DEAD;
}

void func_8047080(void)
{
    gCurrentSprite.pose = 32;
    func_8047030();
}

void func_8047094(void)
{
    gCurrentSprite.pose = 34;
    func_8047030();
}

void func_80470A8(void)
{
    gCurrentSprite.pOamData = sUnk_83CA3F0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 3;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
}

void func_80470E4(void)
{
    gCurrentSprite.pose = 32;
    func_80470A8();
}

void func_80470F8(void)
{
    gCurrentSprite.pose = 34;
    func_80470A8();
}

void func_804710C(void)
{
    gCurrentSprite.pOamData = sUnk_83CA318;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 6;
}

void func_804713C(void)
{
    gCurrentSprite.pose = 36;
    func_804710C();
}

void func_8047150(void)
{
    gCurrentSprite.pose = 38;
    func_804710C();
}

void func_8047164(void)
{
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8047188(void)
{
    gCurrentSprite.pose = 44;
    func_8047164();
}

void func_804719C(void)
{
    gCurrentSprite.pose = 46;
    func_8047164();
}

void func_80471B0(void)
{
    register u8 *workPointer;
    register struct PrimarySpriteData *sprite asm("r2");
    u8 collision;

    workPointer = (u8 *)&gCurrentSprite;
    collision = ((struct PrimarySpriteData *)workPointer)->warioCollision;
    sprite = (struct PrimarySpriteData *)workPointer;
    if (collision == 5)
    {
        sprite->pOamData = sUnk_83CA300;
    }
    else
    {
        sprite->pOamData = sUnk_83CA2E8;
        workPointer = (u8 *)sprite;
    }
    workPointer += 39;
    *workPointer = 9;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 50;
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) |
                     SPRITE_STATUS_MAYBE_DEAD;
}

void func_80471F8(void)
{
    SpriteUtilDie();
}

void func_8047204(void)
{
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 6;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
}

void func_8047230(void)
{
    gCurrentSprite.pose = 72;
    func_8047204();
}

void func_8047244(void)
{
    gCurrentSprite.pose = 74;
    func_8047204();
}

void func_8047258(void)
{
    gCurrentSprite.pOamData = sUnk_83CA318;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = 76;
    gCurrentSprite.work0 = 15;
    gCurrentSprite.work3 = 0;
}

void func_8047280(void)
{
    register struct PrimarySpriteData *sprite;
    u8 *timerPointer;
    register u8 *indexPointer;
    register u32 index;
    register const s16 *table;
    register const s16 *entry asm("r0");
    register u16 rawVelocity asm("r3");
    register s32 velocity asm("r1");
    register const s16 *previousEntry;
    register u16 currentY asm("r0");
    register u16 previousVelocity asm("r1");
    register u32 newIndex;
    register u8 *storePointer;
    u16 nextPose;

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    if (--*timerPointer == 0)
        goto pose_27;

    func_8023BFC(sprite->yPosition - sprite->hitboxExtentUp, sprite->xPosition);
    if (gUnk_3000A51 & 0xF)
    {
        nextPose = 29;
        goto set_pose;
    }

    indexPointer = &sprite->work3;
    index = *indexPointer;
    table = sUnk_8352B18;
    entry = (const s16 *)((index << 1) + (u32)table);
    rawVelocity = *(const u16 *)entry;
    velocity = *entry;
    if (velocity == S16_MAX)
    {
        previousEntry = (const s16 *)(((index - 1) << 1) + (u32)table);
        currentY = *(volatile u16 *)&sprite->yPosition;
        previousVelocity = *(const u16 *)previousEntry;
        currentY += previousVelocity;
        sprite->yPosition = currentY;
    }
    else
    {
        newIndex = index + 1;
        storePointer = indexPointer;
        *storePointer = newIndex;
        sprite->yPosition += rawVelocity;
    }
    goto end;

pose_27:
    nextPose = 27;
set_pose:
    sprite->pose = nextPose;
end:
    ;
}

void func_804730C(void)
{
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8047324(void)
{
    gCurrentSprite.pose = 82;
    func_804730C();
}

void func_8047338(void)
{
    gCurrentSprite.pose = 84;
    func_804730C();
}

void func_804734C(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    gCurrentSprite.pOamData = sUnk_83CA270;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
}

void func_8047368(void)
{
    gCurrentSprite.pose = 88;
    func_804734C();
}

void func_804737C(void)
{
    gCurrentSprite.pose = 86;
    func_804734C();
}

void func_8047390(void)
{
    int collisionType;

    gCurrentSprite.status = gCurrentSprite.status | SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.status = gCurrentSprite.status & ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.drawDistanceDown = 16;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 8;
    gCurrentSprite.hitboxExtentUp = 48;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 24;
    gCurrentSprite.hitboxExtentRight = 20;
    gCurrentSprite.pOamData = sUnk_83CA430;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    collisionType = 15;
    gCurrentSprite.warioCollision = collisionType;
    gCurrentSprite.drawPriority = 1;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work3 = 0;
}

void func_8047404(void)
{
    u8 index;
    s16 velocity;
    u16 value;

    func_8023A60(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 == 1 || (gUnk_3000A50 & 0xF) != 0)
    {
        gCurrentSprite.pose = 107;
        return;
    }

    if (gCurrentSprite.work3 <= 7)
    {
        func_8023BFC(gCurrentSprite.yPosition - 64, gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF)
        {
            gCurrentSprite.pose = 107;
            return;
        }
    }

    value = gCurrentSprite.work3;
    index = value;
    velocity = sUnk_83CA47E[index];
    if (velocity == S16_MAX)
    {
        value = sUnk_83CA47E[index - 1];
        gCurrentSprite.yPosition = gCurrentSprite.yPosition + value;
    }
    else
    {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += velocity;
    }

    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
    {
        func_8023BFC(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition + 32);
        if (gUnk_3000A51 & 0xF)
            gCurrentSprite.pose = 107;
        else
            gCurrentSprite.xPosition += 8;
    }
    else
    {
        func_8023BFC(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition - 32);
        if (gUnk_3000A51 & 0xF)
            gCurrentSprite.pose = 107;
        else
            gCurrentSprite.xPosition -= 8;
    }
}

void func_804750C(void)
{
    gCurrentSprite.pose = 52;
    gCurrentSprite.work3 = 0;
}

void func_8047520(void)
{
    u8 index;
    s16 velocity;
    u16 value;

    value = gCurrentSprite.work3;
    index = value;
    velocity = sSpriteFallingOffscreenYVelocity[index];
    if (velocity == S16_MAX)
    {
        value = sSpriteFallingOffscreenYVelocity[index - 1];
        gCurrentSprite.yPosition = gCurrentSprite.yPosition + value;
    }
    else
    {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += velocity;
    }
    gCurrentSprite.xPosition += 8;
}

void func_8047570(void)
{
    gCurrentSprite.pose = 54;
    gCurrentSprite.work3 = 0;
}

void func_8047584(void)
{
    u8 index;
    s16 velocity;
    u16 value;

    value = gCurrentSprite.work3;
    index = value;
    velocity = sSpriteFallingOffscreenYVelocity[index];
    if (velocity == S16_MAX)
    {
        value = sSpriteFallingOffscreenYVelocity[index - 1];
        gCurrentSprite.yPosition = gCurrentSprite.yPosition + value;
    }
    else
    {
        gCurrentSprite.work3 = index + 1;
        gCurrentSprite.yPosition += velocity;
    }
    gCurrentSprite.xPosition -= 8;
}

void func_80475D4(void)
{
    gCurrentSprite.status = 0;
}

void SpriteRingosuki(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER)
        gCurrentSprite.pose = 107;

    switch (gCurrentSprite.pose)
    {
        case 0:
            func_8046A6C();
            break;

        case 15:
            func_8046AD4();
            /* Fall through. */
        case 16:
            func_8046AF4();
            break;

        case 17:
            func_8046C5C();
            /* Fall through. */
        case 18:
        case 20:
            func_8046C7C();
            break;

        case 110:
            func_8046D4C();
            /* Fall through. */
        case 111:
            func_8046D6C();
            break;

        case 112:
            func_8046DFC();
            /* Fall through. */
        case 113:
            func_8046E24();
            break;

        case 114:
            func_8046E84();
            /* Fall through. */
        case 115:
            func_8046EA8();
            break;

        case 23:
            func_8046EE4();
            /* Fall through. */
        case 24:
            func_8023C94();
            break;

        case 25:
            func_8046F04();
            /* Fall through. */
        case 26:
            func_8046F2C();
            break;

        case 27:
            func_8046FE8();
            /* Fall through. */
        case 28:
            func_8023D48();
            break;

        case 29:
            func_8047008();
            /* Fall through. */
        case 30:
            func_8023EE0();
            break;

        case 31:
        case 79:
            func_8047080();
            /* Fall through. */
        case 32:
            SpriteUtilFallOffscreenRight();
            break;

        case 33:
        case 80:
            func_8047094();
            /* Fall through. */
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;

        case 35:
            func_804713C();
            /* Fall through. */
        case 36:
            SpriteUtilPushedRight();
            break;

        case 37:
            func_8047150();
            /* Fall through. */
        case 38:
            SpriteUtilPushedLeft();
            break;

        case 43:
            func_8047188();
            /* Fall through. */
        case 44:
            func_8024478();
            break;

        case 45:
            func_804719C();
            /* Fall through. */
        case 46:
            func_802449C();
            break;

        case 47:
            func_80244C0();
            /* Fall through. */
        case 48:
            func_80244E0();
            break;

        case 49:
            func_80471B0();
            /* Fall through. */
        case 50:
            SpriteUtilDieAfterDelay();
            break;

        case 51:
            func_8046D24();
            goto state_53;

        case 53:
            func_8046D38();
            goto state_55;

        case 55:
            func_8024688();
            /* Fall through. */
        case 56:
            func_80246B8();
            break;

        case 57:
            func_802473C();
            goto state_55;

        case 54:
        case 58:
state_55:
            func_802476C();
            break;

        case 59:
            func_80247F0();
            /* Fall through. */
        case 60:
            func_8024820();
            break;

        case 61:
            func_80248A4();
            /* Fall through. */
        case 62:
            func_80248D4();
            break;

        case 63:
            func_8024958();
            goto state_53;

        case 52:
        case 64:
state_53:
            func_8024988();
            break;

        case 65:
            func_8024A0C();
            /* Fall through. */
        case 66:
            func_8024A3C();
            break;

        case 67:
            func_8024AC0();
            goto state_69;

        case 69:
            func_8024BEC();
            goto state_71;

        case 71:
            func_8047230();
            /* Fall through. */
        case 68:
        case 72:
state_69:
            func_8024AD4();
            break;

        case 73:
            func_8047244();
            /* Fall through. */
        case 70:
        case 74:
state_71:
            func_8024C00();
            break;

        case 75:
            func_8047258();
            /* Fall through. */
        case 76:
            func_8047280();
            break;

        case 81:
            func_8047324();
            break;

        case 82:
            SpriteUtilLiftingSpriteRight();
            break;

        case 83:
            func_8047338();
            break;

        case 84:
            SpriteUtilLiftingSpriteLeft();
            break;

        case 87:
            func_8047368();
            break;

        case 88:
            SpriteUtilCarryingSpriteRight();
            break;

        case 85:
            func_804737C();
            break;

        case 86:
            SpriteUtilCarryingSpriteLeft();
            break;

        case 89:
            gCurrentSprite.pose = 90;
            /* Fall through. */
        case 90:
            SpriteUtilThrownLeftSoft();
            break;

        case 93:
            gCurrentSprite.pose = 94;
            /* Fall through. */
        case 94:
            SpriteUtilThrownLeftHard();
            break;

        case 97:
            gCurrentSprite.pose = 98;
            /* Fall through. */
        case 98:
            SpriteUtilThrownUpLeftSoft();
            break;

        case 101:
            gCurrentSprite.pose = 102;
            /* Fall through. */
        case 102:
            SpriteUtilThrownUpLeftHard();
            break;

        case 91:
            gCurrentSprite.pose = 92;
            /* Fall through. */
        case 92:
            SpriteUtilThrownRightSoft();
            break;

        case 95:
            gCurrentSprite.pose = 96;
            /* Fall through. */
        case 96:
            SpriteUtilThrownRightHard();
            break;

        case 99:
            gCurrentSprite.pose = 100;
            /* Fall through. */
        case 100:
            SpriteUtilThrownUpRightSoft();
            break;

        case 103:
            gCurrentSprite.pose = 104;
            /* Fall through. */
        case 104:
            SpriteUtilThrownUpRightHard();
            break;

        case 105:
            func_80470F8();
            break;

        case 106:
            func_80470E4();
            break;

        default:
            func_80471F8();
            break;
    }
}

void SpriteUnknownB2(void)
{
    switch (gCurrentSprite.pose)
    {
        case 0:
            func_8047390();
            break;

        case 16:
            func_8047404();
            break;

        case 31:
        case 35:
        case 51:
            func_804750C();
            /* Fall through. */
        case 52:
            gCurrentSprite.disableWarioCollisionTimer = 1;
            func_8047520();
            break;

        case 33:
        case 37:
        case 53:
            func_8047570();
            /* Fall through. */
        case 54:
            gCurrentSprite.disableWarioCollisionTimer = 1;
            func_8047584();
            break;

        case 49:
            func_80475D4();
            break;

        default:
            SpriteUtilDie();
            break;
    }
}
