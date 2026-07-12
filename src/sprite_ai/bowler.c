#include "sprite_ai/bowler.h"

#include "fixed_point.h"
#include "global_data.h"
#include "gba/m4a.h"
#include "score.h"
#include "screen_shake.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

void func_801E3A8(u8 id, u8 roomSlot, u8 gfxSlot, u32 y, u32 x, u32 status);

int BowlerCheckSwitch(void)
{
    int result;

    if (gSwitchPressed != 0) {
        gCurrentSprite.pose = 112;
        result = 1;
    } else {
        asm("");
        result = 0;
    }
    return result;
}

void InitBowler(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->drawPriority |= 0x80;
    sprite->warioCollision = 53;
    sprite->drawDistanceDown = 24;
    sprite->drawDistanceUp = 0;
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = 80;
    sprite->hitboxExtentDown = 0;
    sprite->hitboxExtentLeft = 40;
    sprite->hitboxExtentRight = 36;
    sprite->work1 = 30;
    sprite->work0 = 96;
    SpriteUtilTurnTowardWario();
}

void BowlerStartWalking(void)
{
    gCurrentSprite.pOamData = sBowlerWalkingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
}

void BowlerWalking(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* work1Pointer asm("r2");
    register u8* work0Pointer asm("r1");
    register int oldTimer asm("r5");
    register int mask asm("r3");
    register int value asm("r0");

    func_80238A4();
    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        work1Pointer = &sprite->work1;
        oldTimer = *work1Pointer;
        value = oldTimer - 1;
        *work1Pointer = value;
        mask = 0xFF;
        value <<= 24;
        if (value == 0) {
            if (sprite->xPosition < gWarioData.xPosition)
                goto setAttackPose;
            *work1Pointer = oldTimer;
            goto setWalkPose;
        }

        work0Pointer = &sprite->work0;
        value = *work0Pointer;
        value--;
        *work0Pointer = value;
        value &= mask;
        if (value == 0)
            goto setWalkPose;

        func_8023BFC(sprite->yPosition, sprite->xPosition + 120);
        {
            register volatile u8* collision asm("r5");
            collision = &gUnk_3000A51;
            if ((*collision & 0xF0) == 0)
                goto setWalkPose;
            func_8023BFC(sprite->yPosition - 32, sprite->xPosition + 120);
            if ((*collision & 0xF) != 0)
                goto setWalkPose;
        }
        value = sprite->xPosition + 2;
        goto storePosition;
    }

    work1Pointer = &sprite->work1;
    oldTimer = *work1Pointer;
    value = oldTimer - 1;
    *work1Pointer = value;
    mask = 0xFF;
    value <<= 24;
    if (value == 0) {
        if (sprite->xPosition > gWarioData.xPosition) {
setAttackPose:
            *(volatile u8*)&sprite->pose = 110;
            return;
        }
        *work1Pointer = oldTimer;
        asm("");
        goto setWalkPose;
    }

    work0Pointer = &sprite->work0;
    value = *work0Pointer;
    value--;
    *work0Pointer = value;
    value &= mask;
    if (value == 0)
        goto setWalkPose;

    func_8023BFC(sprite->yPosition, sprite->xPosition - 116);
    {
        register volatile u8* collision asm("r5");
        collision = &gUnk_3000A51;
        if ((*collision & 0xF0) == 0)
            goto setWalkPose;
        func_8023BFC(sprite->yPosition - 32, sprite->xPosition - 116);
        if ((*collision & 0xF) == 0)
            goto moveLeft;
    }

setWalkPose:
    sprite->pose = 17;
    return;

moveLeft:
    value = sprite->xPosition - 2;
storePosition:
    sprite->xPosition = value;
}

void BowlerStartTurning(void)
{
    gCurrentSprite.pOamData = sBowlerTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 18;
    gCurrentSprite.work0 = 7;
}

void BowlerTurning(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8* timer asm("ip");
    register int zero asm("r3");
    register int value asm("r0");

    func_80238A4();
    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer;
    value--;
    *timer = value;
    zero = (u8)value;
    if (zero == 0) {
        if (sprite->pose == 18) {
            sprite->status ^= SPRITE_STATUS_FACING_RIGHT;
            sprite->pOamData = sBowlerTurnAroundOam;
            sprite->currentAnimationFrame = 0;
            sprite->animationTimer = zero;
            sprite->pose = 20;
            value = 5;
        } else {
            sprite->pOamData = sBowlerWalkingOam;
            sprite->currentAnimationFrame = zero;
            sprite->animationTimer = zero;
            sprite->pose = 16;
            value = 96;
        }
        *timer = value;
    }
}

void BowlerStartDying(void)
{
    register struct PrimarySpriteData* sprite asm("r4");

    sprite = &gCurrentSprite;
    sprite->pOamData = sBowlerDyingOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 50;
    sprite->work0 = 8;
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(sprite->globalID, sprite->yPosition, sprite->xPosition, 10);
    gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void BowlerStartIdle(void)
{
    gCurrentSprite.pOamData = sBowlerIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 20;
}

void BowlerIdle(void)
{
    struct PrimarySpriteData* sprite;

    func_80238A4();
    sprite = &gCurrentSprite;
    sprite->work0--;
    if (sprite->work0 == 0) {
        sprite->work1 = 80;
        if (sprite->xPosition > gWarioData.xPosition) {
            if (!(sprite->status & SPRITE_STATUS_FACING_RIGHT))
                sprite->pose = 15;
            else
                sprite->pose = 17;
        } else {
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->pose = 15;
            else
                sprite->pose = 17;
        }
    }
}

void BowlerStartKnockback(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 52;
    gCurrentSprite.work0 = 20;
}

void BowlerStartKnockbackForward(void)
{
    BowlerStartKnockback();
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
        gCurrentSprite.pOamData = sBowlerKnockbackRightOam;
    else
        gCurrentSprite.pOamData = sBowlerKnockbackLeftOam;
}

void BowlerStartKnockbackBackward(void)
{
    BowlerStartKnockback();
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
        gCurrentSprite.pOamData = sBowlerKnockbackLeftOam;
    else
        gCurrentSprite.pOamData = sBowlerKnockbackRightOam;
}

void BowlerStartKnockbackUp(void)
{
    BowlerStartKnockback();
    gCurrentSprite.pOamData = sBowlerKnockbackUpOam;
}

void BowlerKnockback(void)
{
    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 == 0)
        gCurrentSprite.pose = 23;
}

void BowlerStartThrowingBall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u32 direction asm("r6");
    register u32 status asm("r5");
    register u32 temp asm("r0");
    register u32 oldStatus asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sBowlerThrowOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 111;
    sprite->work0 = 107;
    oldStatus = sprite->status;
    direction = SPRITE_STATUS_FACING_RIGHT;
    temp = direction;
    asm("" : "+r"(temp), "+r"(oldStatus));
    temp &= oldStatus;
    temp <<= 16;
    status = temp >> 16;
    if (status != 0) {
        asm("" : : "r"(direction));
        func_801E3A8(PSPRITE_BOWLER_BALL, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition + 128,
            sprite->xPosition, direction);
    } else {
        asm("" : : "r"(status));
        func_801E3A8(PSPRITE_BOWLER_BALL, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition + 128,
            sprite->xPosition, status);
    }
}

void BowlerThrowingBall(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPointer asm("r2");
    register int timer asm("r0");
    register int value asm("r1");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    timer = *timerPointer;
    value = timer;
    value += 255;
    *timerPointer = value;
    asm("" : "+r"(timer));
    timer = (u8)timer;
    value = timer;
    if (timer == 89) {
        ScreenShakeRequestY(48, 129);
        m4aSongNumStart(SE_BOWLER_BALL_LAND);
    } else if (timer == 79) {
        m4aSongNumStart(SE_BOWLER_THROW);
    } else if (value == 0) {
        sprite->pose = 23;
    }
}

void BowlerStartTransformingIntoYeti(void)
{
    gCurrentSprite.pOamData = sBowlerTransformOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 113;
    gCurrentSprite.work0 = 152;
}

void BowlerTransformingIntoYeti(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register int value asm("r0");
    int timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    {
        u8* timerPointer;
        timerPointer = &sprite->work0;
        value = *timerPointer;
        value--;
        *timerPointer = value;
    }
    asm("" : "+r"(value));
    timer = (u8)value;
    if (timer == 0) {
        sprite->gfxSlot = gUnk_3000544[1];
        sprite->globalID = 96;
        sprite->pose = timer;
    }
}

void InitBowlerBall(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u32 status asm("r0");
    register u32 oldStatus asm("r1");
    register int value asm("r2");
    register int zero16 asm("r3");
    register u8* field asm("r1");
    register const struct AnimationFrame* oam asm("r0");
    register struct PrimarySpriteData* data asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    value = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    asm("" : "+r"(value));
    status = value;
    value = 0;
    zero16 = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    data = sprite;
    data->status = status;

    field = (u8*)sprite + 32;
    *field = 32;
    *((u8*)sprite + 33) = value;
    field += 2;
    *field = 16;
    field++;
    *field = 108;
    *((u8*)sprite + 36) = value;
    field += 2;
    *field = 40;
    field++;
    asm("" : "+r"(field));
    *field = 40;

    oam = sBowlerBallOam;
    data = sprite;
    data->pOamData = oam;
    *((u8*)data + 22) = value;
    data->animationTimer = zero16;
    data->warioCollision = 58;
    data->pose = 111;
    *((u8*)sprite + 42) = value;
}

void BowlerBallStartSpinning(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 57;
    sprite->work0 = 6;
    sprite->work1 = 0;
    sprite->work2 = 12;
    sprite->work3 = 0;
    sprite->status |= SPRITE_STATUS_AFFINE;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
        sprite->pose = 66;
    else
        sprite->pose = 60;
}

void BowlerBallMoving(void)
{
    register struct PrimarySpriteData* current asm("r2");
    register u8* indexPointer asm("r5");
    register u32 index asm("r4");
    register const s16* table asm("r1");
    register const s16* movementPointer asm("r0");
    register u16 movementRaw asm("r3");
    register int movement asm("r1");
    register int zero asm("r6");

    current = &gCurrentSprite;
    indexPointer = &current->work3;
    index = *indexPointer;
    table = sBowlerBallYMovement;
    movementPointer = (const s16*)(index * 2 + (u32)table);
    movementRaw = *(const u16*)movementPointer;
    zero = 0;
    /* agbcc otherwise emits an add plus ldrh instead of the required signed register-offset load. */
    asm("ldrsh %0, [%1, %2]" : "=r"(movement) : "r"(movementPointer), "r"(zero));
    {
        struct PrimarySpriteData* sprite;
        register int sentinel asm("r0");

        sentinel = 0x7FFF;
        sprite = current;
        if (movement == sentinel) {
            BowlerBallStartSpinning();
            m4aSongNumStart(SE_BOWLER_BALL_SPIN);
            return;
        }

        {
            register int nextIndex asm("r0");
            nextIndex = index + 1;
            nextIndex <<= 24;
            index = (u32)nextIndex >> 24;
        }
        *indexPointer = index;
        current->yPosition += movementRaw;

        {
            register int roomSlot asm("r5");
            register int i asm("r3");
            register struct PrimarySpriteData* data asm("r6");
            register int offset asm("r0");

            roomSlot = current->roomSlot;
            i = 0;
            data = gSpriteData;
            do {
                offset = 44;
                offset *= i;
                current = (struct PrimarySpriteData*)((u32)offset + (u32)data);
                if (current->roomSlot == roomSlot && current->globalID == PSPRITE_BOWLER
                    && (current->status & SPRITE_STATUS_EXISTS)) {
                    if (current->pose == 111)
                        return;
                    if (index <= 20) {
                        *((volatile u16*)sprite) = 0;
                        return;
                    }
                    BowlerBallStartSpinning();
                    return;
                }
                i++;
            } while (i <= 23);
        }
    }
}

void DestroyBowlerBall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_ONSCREEN) {
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
            SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition + 32, 8);
            SpriteSpawnSecondary(sprite->yPosition - 96, sprite->xPosition + 32, 14);
            SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition - 32, 14);
            SpriteSpawnSecondary(sprite->yPosition - 96, sprite->xPosition - 32, 8);
        } else {
            SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition + 32, 9);
            SpriteSpawnSecondary(sprite->yPosition - 96, sprite->xPosition + 32, 15);
            SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition - 32, 15);
            SpriteSpawnSecondary(sprite->yPosition - 96, sprite->xPosition - 32, 9);
        }
    }
    *(volatile u16*)&gCurrentSprite.status = 0;
}

void SpriteBowler(void)
{
    switch (gCurrentSprite.pose) {
    case 0:
        InitBowler();
    case 15:
        BowlerStartWalking();
    case 16:
        if (!BowlerCheckSwitch())
            BowlerWalking();
        break;
    case 17:
        BowlerStartTurning();
    case 18:
    case 20:
        if (!BowlerCheckSwitch())
            BowlerTurning();
        break;
    case 23:
        BowlerStartIdle();
    case 24:
        if (!BowlerCheckSwitch())
            BowlerIdle();
        break;
    case 31:
    case 35:
    case 106:
        BowlerStartKnockbackForward();
        break;
    case 33:
    case 37:
    case 105:
        BowlerStartKnockbackBackward();
        break;
    case 51:
    case 53:
    case 75:
        BowlerStartKnockbackUp();
        break;
    case 52:
        if (!BowlerCheckSwitch())
            BowlerKnockback();
        break;
    case 49:
        BowlerStartDying();
    case 50:
        SpriteUtilDieAfterDelay();
        break;
    case 110:
        BowlerStartThrowingBall();
    case 111:
        if (!BowlerCheckSwitch())
            BowlerThrowingBall();
        break;
    case 112:
        BowlerStartTransformingIntoYeti();
    case 113:
        BowlerTransformingIntoYeti();
        break;
    default:
        SpriteUtilDie();
        break;
    }

    {
        register struct PrimarySpriteData* sprite asm("r2");
        register int priority asm("r1");

        sprite = &gCurrentSprite;
        priority = sprite->drawPriority;
        if (priority & 0x80) {
            if (gHeartMeter.current == 0 || gTimerState > 3) {
                register int mask asm("r0");
                mask = 0x7F;
                mask &= priority;
                sprite->drawPriority = mask;
            }
        }
    }
}

void SpriteBowlerBall(void)
{
    struct PrimarySpriteData* sprite;
    register const s16* table asm("r8");
    register u8* anglePointer asm("r6");
    register s32 value asm("r4");
    register s32 fixedOne asm("r5");
    register int affine asm("r0");
    u32 index;

    gCurrentSprite.status &= ~SPRITE_STATUS_HEAVY;
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER)
        gCurrentSprite.pose = 107;

    switch (gCurrentSprite.pose) {
    case 0:
        InitBowlerBall();
        break;
    case 111:
        BowlerBallMoving();
        break;
    case 43:
    case 44:
        gCurrentSprite.work2 = 6;
        func_8025E98();
        break;
    case 45:
    case 46:
        gCurrentSprite.work2 = 6;
        func_8025DE8();
        break;
    case 55:
        func_8024688();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 56:
        func_80246B8();
        break;
    case 57:
        func_802473C();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 58:
        func_802476C();
        break;
    case 59:
        func_80247F0();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 60:
        func_8024820();
        break;
    case 61:
        func_80248A4();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 62:
        func_80248D4();
        break;
    case 63:
        func_8024958();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 64:
        func_8024988();
        break;
    case 65:
        func_8024A0C();
        m4aSongNumStart(SE_BOWLER_BALL_BOUNCE);
    case 66:
        func_8024A3C();
        break;
    case 67:
    case 71:
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            gCurrentSprite.pose = 49;
            break;
        }
        func_8024AC0();
    case 68:
        func_8024AD4();
        break;
    case 69:
    case 73:
        if (!(gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)) {
            gCurrentSprite.pose = 49;
            break;
        }
        func_8024BEC();
    case 70:
        func_8024C00();
        break;
    default:
        DestroyBowlerBall();
        break;
    }

    gCurrentSprite.status |= SPRITE_STATUS_HEAVY;
    affine = gCurrentSprite.status & SPRITE_STATUS_AFFINE;
    sprite = &gCurrentSprite;
    if (affine != 0) {
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
            sprite->work1 += 5;
        else
            sprite->work1 -= 5;
        table = sSinCosTable;
        /* Keep the sprite base live while invalidating the prior temporary work pointer. */
        asm("" : "+r"(sprite) : : "r1");
        anglePointer = (u8*)sprite;
        anglePointer += 40;
        index = *anglePointer;
        index += 64;
        value = table[index];
        fixedOne = 256;
        sprite->affinePA = FixedMul(value, FixedInverse(fixedOne));
        value = table[*anglePointer];
        sprite->affinePB = FixedMul(value, FixedInverse(fixedOne));
        value = -table[*anglePointer];
        sprite->affinePC = FixedMul(value, FixedInverse(fixedOne));
        index = *anglePointer;
        index += 64;
        value = table[index];
        sprite->affinePD = FixedMul(value, FixedInverse(fixedOne));
    }
}
