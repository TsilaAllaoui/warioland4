#include "sprite_ai/petbottom.h"

#include "score.h"
#include "sprite.h"
#include "sprite_util.h"

void UpdatePetbottomHorizontalHitbox(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        gCurrentSprite.hitboxExtentLeft = 52;
        gCurrentSprite.hitboxExtentRight = 60;
    } else {
        gCurrentSprite.hitboxExtentLeft = 64;
        gCurrentSprite.hitboxExtentRight = 48;
    }
}

void PetbottomInit(void)
{
    gCurrentSprite.drawDistanceDown = 24;
    gCurrentSprite.drawDistanceUp = 0;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.hitboxExtentUp = 64;
    gCurrentSprite.hitboxExtentDown = 0;
    SpriteUtilTurnTowardWario();
}

void PetbottomIdleInit(void)
{
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.pOamData = sPetbottomIdleOam;
    gCurrentSprite.warioCollision = 3;
    UpdatePetbottomHorizontalHitbox();
}

void PetbottomIdle(void)
{
    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        } else {
            func_8023BFC(gCurrentSprite.yPosition,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
        }
        if (!gUnk_3000A51) {
            gCurrentSprite.pose = SPOSE_1B;
            return;
        }
    } else if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT) {
        if ((gUnk_3000A50 & 0xF0) &&
            ((gCurrentSprite.xPosition & 0x3F) + gCurrentSprite.hitboxExtentRight > 0x3F)) {
            func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition + 40);
            if (!(gUnk_3000A51 & 0xF0)) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
            func_8023BFC(gCurrentSprite.yPosition - 32,
                gCurrentSprite.xPosition + gCurrentSprite.hitboxExtentRight);
            if (gUnk_3000A51 & 0xF) {
                gCurrentSprite.pose = SPOSE_11;
                return;
            }
        }
    } else if ((gUnk_3000A50 & 0xF0) &&
        ((gCurrentSprite.xPosition & 0x3F) < gCurrentSprite.hitboxExtentLeft)) {
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition - 44);
        if (!(gUnk_3000A51 & 0xF0)) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
        func_8023BFC(gCurrentSprite.yPosition - 32,
            gCurrentSprite.xPosition - gCurrentSprite.hitboxExtentLeft);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = SPOSE_11;
            return;
        }
    }

    SpriteUtilMoveForward1HalfPixel();
}

void PetbottomTurnInit(void)
{
    gCurrentSprite.pOamData = sPetbottomTurningOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_12;
    gCurrentSprite.work0 = 17;
    gCurrentSprite.warioCollision = 3;
    UpdatePetbottomHorizontalHitbox();
}

void PetbottomTurn(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register u32 remaining asm("r6");
    register u32 zero asm("r4");
    u8 *work0;

    func_80238A4();
    func_8023B88();
    if (!gUnk_3000A50) {
        gCurrentSprite.pose = SPOSE_1B;
        return;
    }

    sprite = &gCurrentSprite;
    work0 = &sprite->work0;
    {
        register u32 value asm("r0");

        value = *work0;
        value--;
        *work0 = value;
        remaining = (u8)value;
    }
    if (remaining != 0) {
        switch (sprite->pose) {
            case SPOSE_12:
                if (sprite->animationTimer > 1)
                    sprite->warioCollision = 1;
                break;

            case SPOSE_14:
                if (sprite->animationTimer > 1)
                    sprite->warioCollision = 3;
                break;
        }
    } else {
        switch (sprite->pose) {
            case SPOSE_12:
            {
                register u16 status asm("r0");

                status = sprite->status;
                status ^= SPRITE_STATUS_FACING_RIGHT;
                zero = 0;
                /* Keep the status value, zero, and work pointer in the target registers. */
                asm("" : "+r"(status), "+r"(zero), "+r"(work0));
                sprite->status = status;
                UpdatePetbottomHorizontalHitbox();
                sprite->pOamData = sPetbottomTurningAroundOam;
                sprite->currentAnimationFrame = zero;
                sprite->animationTimer = remaining;
                sprite->pose = SPOSE_14;
                *work0 = 19;
                break;
            }

            case SPOSE_14:
                sprite->pose = SPOSE_IDLE_INIT;
                break;
        }
    }
}

void PetbottomRecoverInit(void)
{
    gCurrentSprite.pOamData = sPetbottomRecoveringOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_18;
    gCurrentSprite.work0 = 48;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomGetUpInit(void)
{
    gCurrentSprite.pOamData = sPetbottomGettingUpOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_1A;
    gCurrentSprite.work0 = 33;
}

void PetbottomFallingInit(void)
{
    gCurrentSprite.pOamData = sPetbottomFallingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1C;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
}

void PetbottomStunnedFallingInit(void)
{
    gCurrentSprite.pOamData = sPetbottomStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_1E;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomTackledInit(void)
{
    gCurrentSprite.pOamData = sPetbottomTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(PSPRITE_PETBOTTOM, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void PetbottomTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    PetbottomTackledInit();
}

void PetbottomTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    PetbottomTackledInit();
}

void PetbottomDefeatedInit(void)
{
    gCurrentSprite.pOamData = sPetbottomTackledOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 7;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(PSPRITE_PETBOTTOM, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void PetbottomDefeatedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    PetbottomDefeatedInit();
}

void PetbottomDefeatedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    PetbottomDefeatedInit();
}

void PetbottomPushedInit(void)
{
    gCurrentSprite.pOamData = sPetbottomPushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.warioCollision = 1;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomPushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_RIGHT;
    PetbottomPushedInit();
}

void PetbottomPushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_PUSHED_LEFT;
    PetbottomPushedInit();
}

void PetbottomAlternatePushedInit(void)
{
    gCurrentSprite.pOamData = sPetbottomAlternatePushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work0 = 12;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.work2 = 8;
}

void PetbottomAlternatePushedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_28;
    PetbottomAlternatePushedInit();
}

void PetbottomAlternatePushedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_2A;
    PetbottomAlternatePushedInit();
}

void PetbottomPose2BOr2DInit(void)
{
    gCurrentSprite.pOamData = sPetbottomStunnedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.work1 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomPose2BInit(void)
{
    gCurrentSprite.pose = SPOSE_2C;
    PetbottomPose2BOr2DInit();
}

void PetbottomPose2DInit(void)
{
    gCurrentSprite.pose = SPOSE_2E;
    PetbottomPose2BOr2DInit();
}

void PetbottomCrushed(void)
{
    gCurrentSprite.pOamData = sPetbottomCrushedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_CRUSHED_OR_COLLECTED;
    gCurrentSprite.work0 = 11;
    gCurrentSprite.status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    gCurrentSprite.status |= SPRITE_STATUS_MAYBE_DEAD;
    func_807687C(PSPRITE_PETBOTTOM, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void PetbottomInstantlyKill(void)
{
    func_807687C(PSPRITE_PETBOTTOM, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 5);
    SpriteUtilDie();
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = PERSISTENT_STATUS_DESPAWNED;
}

void PetbottomStunnedInit(void)
{
    if (gCurrentSprite.warioCollision == 5) {
        gCurrentSprite.pOamData = sPetbottomStunnedOam;
    } else {
        gCurrentSprite.pOamData = sPetbottomAlternateStunnedOam;
    }
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    if (gCurrentSprite.warioCollision != 5) {
        gCurrentSprite.warioCollision = 5;
        gCurrentSprite.hitboxExtentLeft = 40;
        gCurrentSprite.hitboxExtentRight = 36;
    }
}

void PetbottomPose33Init(void)
{
    gCurrentSprite.pose = SPOSE_34;
    PetbottomStunnedInit();
}

void PetbottomPose35Init(void)
{
    gCurrentSprite.pose = SPOSE_36;
    PetbottomStunnedInit();
}

void PetbottomStunnedWithoutTimerInit(void)
{
    gCurrentSprite.pOamData = sPetbottomStunnedOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 5;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomPose47Init(void)
{
    gCurrentSprite.pose = SPOSE_48;
    PetbottomStunnedWithoutTimerInit();
}

void PetbottomPose49Init(void)
{
    gCurrentSprite.pose = SPOSE_4A;
    PetbottomStunnedWithoutTimerInit();
}

void PetbottomAirborneInit(void)
{
    gCurrentSprite.pOamData = sPetbottomFallingOam;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.pose = SPOSE_4C;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.warioCollision = 3;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void PetbottomAirborne(void)
{
    register u8 *indexPointer asm("ip");
    register u32 index asm("r2");
    s16 velocity;

    gCurrentSprite.work0--;
    if (gCurrentSprite.work0 != 0) {
        func_8023BFC(gCurrentSprite.yPosition - gCurrentSprite.hitboxExtentUp,
            gCurrentSprite.xPosition);
        if (gUnk_3000A51 & 0xF) {
            gCurrentSprite.pose = SPOSE_1D;
        } else {
            indexPointer = &gCurrentSprite.work3;
            index = *indexPointer;
            /* Keep the work index and its address live so agbcc delays the table load. */
            asm("" : "+r" (indexPointer), "+r" (index));
            velocity = sUnk_8352B18[index];
            if (velocity == 0x7FFF) {
                register u32 previousVelocityAddress asm("r1");
                register u16 yPosition asm("r0");

                previousVelocityAddress = index - 1;
                previousVelocityAddress <<= 1;
                previousVelocityAddress += (u32) sUnk_8352B18;
                /* Preserve agbcc's original address calculation and halfword load order. */
                asm("" : "+r" (previousVelocityAddress));
                yPosition = gCurrentSprite.yPosition;
                asm("" : "+r" (yPosition), "+r" (previousVelocityAddress));
                gCurrentSprite.yPosition = yPosition + *(const s16 *) previousVelocityAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePointer asm("r1");

                nextIndex = index + 1;
                storePointer = indexPointer;
                /* Keep the incremented index in r0 and the destination pointer in r1. */
                asm("" : "+r" (nextIndex), "+r" (storePointer));
                *storePointer = nextIndex;
                gCurrentSprite.yPosition += velocity;
            }
        }
    } else {
        gCurrentSprite.pose = SPOSE_1B;
    }
}

void PetbottomHeldInit(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register const struct AnimationFrame *oam asm("r1");
    register u8 zero8 asm("r3");
    register u16 zero16 asm("r1");

    sprite = &gCurrentSprite;
    oam = sPetbottomStunnedOam;
    sprite->pOamData = oam;
    zero8 = 0;
    zero16 = 0;
    asm("" : "+r"(sprite), "+r"(zero8), "+r"(zero16));
    sprite->animationTimer = zero16;
    sprite->currentAnimationFrame = zero8;
}

void PetbottomLiftedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_RIGHT;
    PetbottomHeldInit();
}

void PetbottomLiftedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_BEING_LIFTED_LEFT;
    PetbottomHeldInit();
}

void PetbottomCarriedRightInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_RIGHT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
    PetbottomHeldInit();
}

void PetbottomCarriedLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_CARRIED_LEFT;
    gCurrentSprite.disableWarioCollisionTimer = 1;
    PetbottomHeldInit();
}

void SpritePetbottom(void)
{
    if (gCurrentSprite.status & SPRITE_STATUS_UNDERWATER) {
        gCurrentSprite.pose = SPOSE_6B;
    }

    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            PetbottomInit();
        case SPOSE_IDLE_INIT:
            PetbottomIdleInit();
        case SPOSE_IDLE:
            PetbottomIdle();
            break;
        case SPOSE_11:
            PetbottomTurnInit();
        case SPOSE_12:
        case SPOSE_14:
            PetbottomTurn();
            break;
        case SPOSE_17:
            PetbottomRecoverInit();
        case SPOSE_18:
            func_8023C94();
            break;
        case SPOSE_19:
            PetbottomGetUpInit();
        case SPOSE_1A:
            func_8023CD8();
            break;
        case SPOSE_1B:
            PetbottomFallingInit();
        case SPOSE_1C:
            func_8023D48();
            break;
        case SPOSE_1D:
            PetbottomStunnedFallingInit();
        case SPOSE_1E:
            func_8023EE0();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            PetbottomTackledRightInit();
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            PetbottomTackledLeftInit();
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_PUSHED_RIGHT_INIT:
            PetbottomPushedRightInit();
        case SPOSE_PUSHED_RIGHT:
            SpriteUtilPushedRight();
            break;
        case SPOSE_PUSHED_LEFT_INIT:
            PetbottomPushedLeftInit();
        case SPOSE_PUSHED_LEFT:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_27:
            PetbottomAlternatePushedRightInit();
        case SPOSE_28:
            SpriteUtilPushedRight();
            break;
        case SPOSE_29:
            PetbottomAlternatePushedLeftInit();
        case SPOSE_2A:
            SpriteUtilPushedLeft();
            break;
        case SPOSE_2B:
            PetbottomPose2BInit();
        case SPOSE_2C:
            func_8024478();
            break;
        case SPOSE_2D:
            PetbottomPose2DInit();
        case SPOSE_2E:
            func_802449C();
            break;
        case SPOSE_2F:
            func_80244C0();
        case SPOSE_30:
            func_80244E0();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            PetbottomCrushed();
        case SPOSE_CRUSHED_OR_COLLECTED:
            SpriteUtilDieAfterDelay();
            break;
        case SPOSE_33:
            PetbottomPose33Init();
        case SPOSE_34:
            func_8024988();
            break;
        case SPOSE_35:
            PetbottomPose35Init();
        case SPOSE_36:
            func_802476C();
            break;
        case SPOSE_37:
            func_8024688();
        case SPOSE_38:
            func_80246B8();
            break;
        case SPOSE_39:
            func_802473C();
        case SPOSE_3A:
            func_802476C();
            break;
        case SPOSE_3B:
            func_80247F0();
        case SPOSE_3C:
            func_8024820();
            break;
        case SPOSE_3D:
            func_80248A4();
        case SPOSE_3E:
            func_80248D4();
            break;
        case SPOSE_3F:
            func_8024958();
        case SPOSE_40:
            func_8024988();
            break;
        case SPOSE_41:
            func_8024A0C();
        case SPOSE_42:
            func_8024A3C();
            break;
        case SPOSE_43:
            func_8024AC0();
        case SPOSE_44:
            func_8024AD4();
            break;
        case SPOSE_45:
            func_8024BEC();
        case SPOSE_46:
            func_8024C00();
            break;
        case SPOSE_47:
            PetbottomPose47Init();
        case SPOSE_48:
            func_8024AD4();
            break;
        case SPOSE_49:
            PetbottomPose49Init();
        case SPOSE_4A:
            func_8024C00();
            break;
        case SPOSE_4B:
            PetbottomAirborneInit();
        case SPOSE_4C:
            PetbottomAirborne();
            break;
        case SPOSE_BEING_LIFTED_RIGHT_INIT:
            PetbottomLiftedRightInit();
            break;
        case SPOSE_BEING_LIFTED_RIGHT:
            SpriteUtilLiftingSpriteRight();
            break;
        case SPOSE_BEING_LIFTED_LEFT_INIT:
            PetbottomLiftedLeftInit();
            break;
        case SPOSE_BEING_LIFTED_LEFT:
            SpriteUtilLiftingSpriteLeft();
            break;
        case SPOSE_CARRIED_RIGHT_INIT:
            PetbottomCarriedRightInit();
            break;
        case SPOSE_CARRIED_RIGHT:
            SpriteUtilCarryingSpriteRight();
            break;
        case SPOSE_CARRIED_LEFT_INIT:
            PetbottomCarriedLeftInit();
            break;
        case SPOSE_CARRIED_LEFT:
            SpriteUtilCarryingSpriteLeft();
            break;
        case SPOSE_THROWN_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_SOFT;
        case SPOSE_THROWN_LEFT_SOFT:
            SpriteUtilThrownLeftSoft();
            break;
        case SPOSE_THROWN_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_LEFT_HARD;
        case SPOSE_THROWN_LEFT_HARD:
            SpriteUtilThrownLeftHard();
            break;
        case SPOSE_THROWN_UP_LEFT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_SOFT;
        case SPOSE_THROWN_UP_LEFT_SOFT:
            SpriteUtilThrownUpLeftSoft();
            break;
        case SPOSE_THROWN_UP_LEFT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_LEFT_HARD;
        case SPOSE_THROWN_UP_LEFT_HARD:
            SpriteUtilThrownUpLeftHard();
            break;
        case SPOSE_THROWN_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_SOFT;
        case SPOSE_THROWN_RIGHT_SOFT:
            SpriteUtilThrownRightSoft();
            break;
        case SPOSE_THROWN_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_RIGHT_HARD;
        case SPOSE_THROWN_RIGHT_HARD:
            SpriteUtilThrownRightHard();
            break;
        case SPOSE_THROWN_UP_RIGHT_SOFT_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_SOFT;
        case SPOSE_THROWN_UP_RIGHT_SOFT:
            SpriteUtilThrownUpRightSoft();
            break;
        case SPOSE_THROWN_UP_RIGHT_HARD_INIT:
            gCurrentSprite.pose = SPOSE_THROWN_UP_RIGHT_HARD;
        case SPOSE_THROWN_UP_RIGHT_HARD:
            SpriteUtilThrownUpRightHard();
            break;
        case SPOSE_69:
            PetbottomDefeatedLeftInit();
            break;
        case SPOSE_6A:
            PetbottomDefeatedRightInit();
            break;
        default:
            PetbottomInstantlyKill();
            break;
    }
}
