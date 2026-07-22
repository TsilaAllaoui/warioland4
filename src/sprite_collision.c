#include "sprite_collision.h"

#include "block.h"
#include "input.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/cuckoo_condor.h"
#include "sprite_ai/golden_diva.h"
#include "voice_set.h"
#include "wario.h"

#define SpriteCollisionTransformWario(react)                                   \
{                                                                              \
    if (!WarioCheckReaction(react)) {                                          \
        gWarioData.reaction = react;                                           \
        WarioRequestPose(0);                                                   \
    }                                                                          \
}

void func_801E4B0(void)
{
    if (gCurrentCarriedSprite.state != 7) {
        return;
    }

    MPlayStop(gMPlayTable[3].info);
    m4aSongNumStart(SOUND_28);
}

void func_801E4D4(void)
{
    m4aSongNumStart(SOUND_1CD);
    MPlayStop(gMPlayTable[3].info);
    m4aMPlayFadeOut(gMPlayTable[0].info, 2);
    m4aMPlayFadeOut(gMPlayTable[1].info, 2);
    m4aMPlayFadeOut(gMPlayTable[2].info, 2);
    m4aSongNumStop(SOUND_D9);
    m4aSongNumStop(SOUND_1C2);
}

void func_801E518(void)
{
    m4aMPlayFadeOut(gMPlayTable[1].info, 4);
}

void SpriteCollisionMakeWarioDropCoins(s32 slot)
{
    s32 amount;

    switch (gSpriteData[slot].globalID) {
        case PSPRITE_SPEAR_MASK_BLUE:
        case PSPRITE_SPIKY:
        case PSPRITE_MAYUBIRD:
        case PSPRITE_TOBAWANI:
            amount = CONVERT_SCORE(-200);
            break;

        case PSPRITE_SPEAR_MASK_RED:
        case PSPRITE_TOGEROBO:
        case PSPRITE_TOGETOGE:
        case PSPRITE_9C:
            amount = CONVERT_SCORE(-400);
            break;

        case PSPRITE_MOGURAMEN:
        case PSPRITE_SPIKY_Z:
        case PSPRITE_9A:
        case PSPRITE_9F:
            amount = CONVERT_SCORE(-500);
            break;

        case PSPRITE_TOGEMASUKU:
        case PSPRITE_GOGGLEY_BLADE:
        case PSPRITE_GOGGLEY_BLADE_2:
        case PSPRITE_MAGMA:
            amount = CONVERT_SCORE(-300);
            break;

        case PSPRITE_SPEAR_MASK_YELLOW:
        case PSPRITE_TOTSUMEN:
        case PSPRITE_MENONO:
        case PSPRITE_SHIERAGUTCHI:
        case PSPRITE_DENDEN:
        case PSPRITE_BUTATABI:
        case PSPRITE_ROBOBIRD:
        case PSPRITE_UTSUBOANKO:
        case PSPRITE_TOGENOBI:
        case PSPRITE_ICICLE:
        case PSPRITE_TOY_CAR:
        case PSPRITE_ONOMI:
        case PSPRITE_PETBOTTOM:
        case PSPRITE_B8:
        case PSPRITE_BA:
        case PSPRITE_D2:
            amount = CONVERT_SCORE(-100);
            break;

        default:
            amount = 0;
            break;
    }
    ScoreGiveOrDropCoins(amount);
}

void func_801E884(s32 slot)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_VERTICAL) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            gSpriteData[slot].pose = SPOSE_33;
        } else {
            gSpriteData[slot].pose = SPOSE_35;
        }
        m4aSongNumStart(SOUND_35);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if (gSpriteData[slot].warioCollision == 5) {
            gSpriteData[slot].pose = SPOSE_33;
            m4aSongNumStart(SOUND_35);
        } else {
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
            m4aSongNumStart(SOUND_34);
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        if (gSpriteData[slot].warioCollision == 5) {
            gSpriteData[slot].pose = SPOSE_35;
            m4aSongNumStart(SOUND_35);
        } else {
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
            m4aSongNumStart(SOUND_34);
        }
    }
}

void func_801E92C(s32 slot)
{
    switch (gWarioData.reaction) {
        case REACTION_FLAMING:
            if (gWarioData.pose <= WPOSE_FLAMING_RED_MIDAIR) {
                func_801E884(slot);
                break;
            }
            gSpriteData[slot].pose = SPOSE_6B;
            break;

        case REACTION_FAT:
            if (gWarioData.pose != 0) {
                if (gSpriteData[slot].xPosition > gWarioData.xPosition) {
                    gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                } else {
                    gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                }
                if (gWarioData.pose != WPOSE_FAT_DETRANSFORMING) {
                    WarioRequestPose(WPOSE_FAT_KILLING_ENEMY);
                }
                m4aSongNumStart(SOUND_38);
                break;
            }
            func_801E884(slot);
            break;

        case REACTION_ZOMBIE:
            if (gSpriteData[slot].xPosition > gWarioData.xPosition) {
                gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
            }
            if (gWarioData.unk_05 != 0) {
                WarioRequestPose(WPOSE_ZOMBIE_UNKNOWN_5);
            }
            m4aSongNumStart(SOUND_38);
            break;

        case REACTION_FROZEN:
        case REACTION_SNOWMAN:
            if (gSpriteData[slot].xPosition > gWarioData.xPosition) {
                gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
            }
            m4aSongNumStart(SOUND_38);
            break;

        case REACTION_BAT:
            gSpriteData[slot].pose = SPOSE_6B;
            break;

        default:
            func_801E884(slot);
            break;
    }
}

void SpriteCollisionTransformWarioFlaming(void)
{
    SpriteCollisionTransformWario(REACTION_FLAMING);
}

void SpriteCollisionTransformWarioFat(void)
{
    SpriteCollisionTransformWario(REACTION_FAT);
}

void SpriteCollisionTransformWarioZombie(void)
{
    SpriteCollisionTransformWario(REACTION_ZOMBIE);
}

void SpriteCollisionTransformWarioSnowman(void)
{
    SpriteCollisionTransformWario(REACTION_SNOWMAN);
}

void SpriteCollisionTransformWarioPuffy(void)
{
    SpriteCollisionTransformWario(REACTION_PUFFY);
}

void SpriteCollisionTransformWarioBouncy(void)
{
    SpriteCollisionTransformWario(REACTION_BOUNCY);
}

void SpriteCollisionTransformWarioBat(void)
{
    SpriteCollisionTransformWario(REACTION_BAT);
}

void SpriteCollisionTransformWarioFrozen(void)
{
    SpriteCollisionTransformWario(REACTION_FROZEN);
}

void SpriteCollisionTransformWarioFlat(void)
{
    SpriteCollisionTransformWario(REACTION_FLAT);
}

void SpriteCollisionTransformWarioMask(void)
{
    SpriteCollisionTransformWario(REACTION_MASK);
}

void func_801EBCC(s32 slot)
{
    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer > 0) {
            func_801E884(slot);
            return;
        }

        gWarioData.unk_03 = gWarioData.damageTimer;
        if (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) {
            gWarioData.horizontalDirection = DPAD_LEFT;
        } else {
            gWarioData.horizontalDirection = DPAD_RIGHT;
        }

        SpriteCollisionTransformWarioFrozen();
        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    } else {
        func_801E92C(slot);
    }
}

void func_801EC30(s32 slot)
{
    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer > 0) {
            func_801E884(slot);
            return;
        }

        SpriteCollisionTransformWarioPuffy();
        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    } else {
        func_801E92C(slot);
    }
}

void func_801EC74(s32 slot)
{
    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer > 0) {
            func_801E884(slot);
            return;
        }

        SpriteCollisionTransformWarioSnowman();
        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    } else {
        func_801E92C(slot);
    }
}

void func_801ECB8(s32 slot)
{
    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer > 0) {
            func_801E884(slot);
            return;
        }

        SpriteCollisionTransformWarioZombie();
        gSpriteData[slot].pose = SPOSE_6B;
    } else {
        func_801E92C(slot);
    }
}

void func_801ECFC(s32 slot)
{
    if (gWarioData.reaction != REACTION_NORMAL) {
        return;
    }
    if (gWarioData.damageTimer > 0) {
        return;
    }

    SpriteCollisionTransformWarioZombie();
}

void func_801ED18(void)
{
    if (gWarioData.reaction != REACTION_ZOMBIE) {
        return;
    }
    if (gWarioData.pose == WPOSE_ZOMBIE_TRANSFORMING || gWarioData.pose == WPOSE_ZOMBIE_TOUCHING_LIGHT_SOURCE) {
        return;
    }

    WarioRequestPose(WPOSE_ZOMBIE_TOUCHING_LIGHT_SOURCE);
}

void func_801ED48(s32 slot)
{
    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer != 0) {
            func_801E884(slot);
            return;
        }

        SpriteCollisionTransformWarioFat();
        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    } else {
        func_801E92C(slot);
    }
}

void SpriteCollisionMaybeTransformWarioBubble(s32 slot)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_WATER_BUBBLE_WARIO);
    gSpriteData[slot].pose = SPOSE_6B;
}

void SpriteCollisionTakeDamageLeft(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    gWarioData.horizontalDirection = DPAD_LEFT;
    WarioRequestPose(WPOSE_NORMAL_TAKING_DAMAGE);
}

void SpriteCollisionTakeDamageRight(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    gWarioData.horizontalDirection = DPAD_RIGHT;
    WarioRequestPose(WPOSE_NORMAL_TAKING_DAMAGE);
}

void SpriteCollisionLandOnEnemyLeft(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
    if (gWarioData.pose == WPOSE_NORMAL_LANDING_ON_ENEMY) {
        gWarioData.horizontalDirection = DPAD_LEFT;
        gWarioData.xVelocity = 0x10;
    }
    m4aSongNumStart(SOUND_35);
}

void SpriteCollisionLandOnEnemyRight(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
    if (gWarioData.pose == WPOSE_NORMAL_LANDING_ON_ENEMY) {
        gWarioData.horizontalDirection = DPAD_RIGHT;
        gWarioData.xVelocity = -0x10;
    }
    m4aSongNumStart(SOUND_35);
}

void func_801EE9C(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
    if (gWarioData.unk_1A != 0) {
        gWarioData.yVelocity = 0;
    }
    if (gWarioData.pose == WPOSE_NORMAL_LANDING_ON_ENEMY) {
        gWarioData.horizontalDirection = DPAD_LEFT;
        gWarioData.xVelocity = 0x10;
    }
    m4aSongNumStart(SOUND_35);
}

void func_801EEE0(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
    if (gWarioData.unk_1A != 0) {
        gWarioData.yVelocity = 0;
    }
    if (gWarioData.pose == WPOSE_NORMAL_LANDING_ON_ENEMY) {
        gWarioData.horizontalDirection = DPAD_RIGHT;
        gWarioData.xVelocity = -0x10;
    }
    m4aSongNumStart(SOUND_35);
}

void SpriteCollisionLandOnEnemy(void)
{
    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
    m4aSongNumStart(SOUND_35);
}

void func_801EF50(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_ROLLING_IN_MIDAIR);
    gWarioData.xVelocity = -0x10;
    func_801E4B0();
    gCurrentCarriedSprite.state = 0;
    m4aSongNumStart(SOUND_34);
}

void func_801EF94(void)
{
    if (gWarioData.damageTimer > 0) {
        return;
    }

    WarioRequestPose(WPOSE_NORMAL_ROLLING_IN_MIDAIR);
    gWarioData.xVelocity = 0x10;
    func_801E4B0();
    gCurrentCarriedSprite.state = 0;
    m4aSongNumStart(SOUND_34);
}

u8 func_801EFD4(void)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
        case WPOSE_NORMAL_ROLLING:
        case WPOSE_NORMAL_ROLLING_JUMP:
            m4aSongNumStart(SOUND_38);
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            break;

        default:
            pose = 0;
            break;
    }

    return pose;
}

u8 func_801F00C(s32 slot, u16 direction, u8 arg2)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_TACKLED_RIGHT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_STANDING);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_TACKLED_LEFT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_STANDING);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_TACKLED_RIGHT_INIT;
                    WarioRequestPose(-2);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_TACKLED_LEFT_INIT;
                    WarioRequestPose(-2);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        case WPOSE_NORMAL_DASH_ATTACK:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_4F;
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_50;
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        default:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_33;
                if (arg2) {
                    SpriteCollisionLandOnEnemyRight();
                } else {
                    func_801EEE0();
                }
            } else {
                pose = SPOSE_35;
                if (arg2) {
                    SpriteCollisionLandOnEnemyLeft();
                } else {
                    func_801EE9C();
                }
            }
            break;
    }

    return pose;
}

u8 func_801F14C(s32 slot, u8 right)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
            if (right) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            WarioRequestPose(WPOSE_NORMAL_STANDING);
            m4aSongNumStart(SOUND_38);
            break;

        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            if (right) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            WarioRequestPose(-2);
            m4aSongNumStart(SOUND_38);
            break;

        case WPOSE_NORMAL_DASH_ATTACK:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (right) {
                pose = SPOSE_4F;
            } else {
                pose = SPOSE_50;
            }
            m4aSongNumStart(SOUND_38);
            break;

        default:
            if (gSpriteData[slot].warioCollision == 5) {
                if (right) {
                    pose = SPOSE_33;
                } else {
                    pose = SPOSE_35;
                }
            } else {
                if (right) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                }
            }
            if (right) {
                func_801EF50();
            } else {
                func_801EF94();
            }
            break;
    }

    return pose;
}

u8 func_801F200(s32 slot, u16 direction)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_TACKLED_RIGHT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_STANDING);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_TACKLED_LEFT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_STANDING);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_TACKLED_RIGHT_INIT;
                    WarioRequestPose(-2);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_TACKLED_LEFT_INIT;
                    WarioRequestPose(-2);
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        case WPOSE_NORMAL_DASH_ATTACK:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    pose = SPOSE_4F;
                    m4aSongNumStart(SOUND_38);
                } else {
                    pose = SPOSE_33;
                }
            } else {
                if (direction & DPAD_LEFT) {
                    pose = SPOSE_50;
                    m4aSongNumStart(SOUND_38);
                    break;
                } else {
                    pose = SPOSE_35;
                }
            }
            break;

        case WPOSE_NORMAL_CROUCHING:
        case WPOSE_NORMAL_CROUCH_SLIDE:
        case WPOSE_NORMAL_CRAWLING:
        case WPOSE_NORMAL_TURNING_CROUCHED:
        case WPOSE_NORMAL_CROUCH_JUMP:
        case WPOSE_NORMAL_TAKING_DAMAGE:
        case WPOSE_NORMAL_BUMPING_INTO_ENEMY:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_33;
            } else {
                pose = SPOSE_35;
            }
            break;

        default:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (direction & DPAD_RIGHT) {
                    if (gSpriteData[slot].status & SPRITE_STATUS_HEAVY) {
                        gCurrentCarriedSprite.unk1 = 2;
                    } else {
                        gCurrentCarriedSprite.unk1 = 1;
                    }
                    gCurrentCarriedSprite.state = 4;
                    gWarioData.unk_08 = 2;
                    WarioRequestPose(-2);
                    pose = SPOSE_CARRIED_RIGHT_INIT;
                    m4aSongNumStart(SOUND_32);
                } else {
                    pose = SPOSE_33;
                    func_801EEE0();
                }
            } else {
                if (direction & DPAD_LEFT) {
                    if (gSpriteData[slot].status & SPRITE_STATUS_HEAVY) {
                        gCurrentCarriedSprite.unk1 = 2;
                    } else {
                        gCurrentCarriedSprite.unk1 = 1;
                    }
                    gCurrentCarriedSprite.state = 4;
                    gWarioData.unk_08 = 2;
                    WarioRequestPose(-2);
                    pose = SPOSE_CARRIED_LEFT_INIT;
                    m4aSongNumStart(SOUND_32);
                } else {
                    pose = SPOSE_35;
                    func_801EE9C();
                }
            }
            break;
    }

    return pose;
}

u8 func_801F43C(s32 slot, u8 right)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
            if (right) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            WarioRequestPose(WPOSE_NORMAL_STANDING);
            m4aSongNumStart(SOUND_38);
            break;

        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            if (right) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            WarioRequestPose(-2);
            m4aSongNumStart(SOUND_38);
            break;

        case WPOSE_NORMAL_DASH_ATTACK:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (right) {
                pose = SPOSE_4F;
            } else {
                pose = SPOSE_50;
            }
            m4aSongNumStart(SOUND_38);
            break;

        case WPOSE_NORMAL_FALLING:
            if (right) {
                pose = SPOSE_CARRIED_RIGHT_INIT;
            } else {
                pose = SPOSE_CARRIED_LEFT_INIT;
            }
            if (gSpriteData[slot].status & SPRITE_STATUS_HEAVY) {
                gCurrentCarriedSprite.unk1 = 2;
            } else {
                gCurrentCarriedSprite.unk1 = 1;
            }
            gCurrentCarriedSprite.state = 4;
            gWarioData.unk_08 = 2;
            WarioRequestPose(-2);
            m4aSongNumStart(SOUND_32);
            break;

        case WPOSE_NORMAL_WALKING:
        case WPOSE_NORMAL_STANDING:
            gSpriteData[slot].status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
            if (right) {
                pose = SPOSE_BEING_LIFTED_RIGHT_INIT;
            } else {
                pose = SPOSE_BEING_LIFTED_LEFT_INIT;
            }
            if (gSpriteData[slot].status & SPRITE_STATUS_HEAVY) {
                WarioRequestPose(WPOSE_NORMAL_LIFTING_HEAVY_SPRITE);
            } else {
                WarioRequestPose(WPOSE_NORMAL_LIFTING_SPRITE);
            }
            m4aSongNumStart(SOUND_32);
            break;

        default:
            if (right) {
                pose = SPOSE_33;
            } else {
                pose = SPOSE_35;
            }
            break;
    }

    return pose;
}

s32 SpriteCollisionCheckObjectsTouching(
    u16 o1Top,
    u16 o1Bottom,
    u16 o1Left,
    u16 o1Right,
    u16 o2Top,
    u16 o2Bottom,
    u16 o2Left,
    u16 o2Right
)
{
    if ((o2Bottom >= o1Top) && (o2Top < o1Bottom) && (o2Right >= o1Left) && (o2Left < o1Right)) {
        return TRUE;
    }
    return FALSE;
}

// https://decomp.me/scratch/3n8fv
#ifdef NON_MATCHING
void SpriteCollisionProcess(void)
{
    s32 slot;

    u16 warioY;
    u16 warioX;
    u16 warioTop;
    u16 warioBottom;
    u16 warioLeft;
    u16 warioRight;
    u16 previousX;

    u16 spriteY;
    u16 spriteX;
    u16 hitboxDown;
    u16 spriteTop;
    u16 spriteBottom;
    u16 spriteLeft;
    u16 spriteRight;
    u16 status;

    u16 verticalCenter;
    u16 horizontalCenter;
    u16 statusFlags;
    u16 warioDirection;

    if (gTimerState > 3 || gWarioData.unk_02) {
        return;
    }

    warioY = gWarioData.yPosition;
    warioX = gWarioData.xPosition;
    previousX = gPreviousXPosition;

    warioTop = warioY + gWarioData.hitboxOffsetTop;
    warioBottom = warioY + gWarioData.hitboxOffsetBottom;
    warioLeft = gWarioData.xPosition + gWarioData.hitboxOffsetLeft;
    warioRight = gWarioData.xPosition + gWarioData.hitboxOffsetRight;

    statusFlags = SPRITE_STATUS_EXISTS | SPRITE_STATUS_ONSCREEN;
    for (slot = 0; slot < MAX_SPRITE_COUNT; slot++) {
        status = gSpriteData[slot].status;
        if ((status & statusFlags) == statusFlags) {
            if (gSpriteData[slot].disableWarioCollisionTimer > 0) {
                gSpriteData[slot].disableWarioCollisionTimer -= 1;
                continue;
            }

            spriteY = gSpriteData[slot].yPosition;
            spriteX = gSpriteData[slot].xPosition;
            spriteTop = spriteY - gSpriteData[slot].hitboxExtentUp;
            spriteLeft = spriteX - gSpriteData[slot].hitboxExtentLeft;
            spriteRight = spriteX + gSpriteData[slot].hitboxExtentRight;
            hitboxDown = gSpriteData[slot].hitboxExtentDown;
            // one's complement lmao
            if (hitboxDown <= S8_MAX) {
                spriteBottom = spriteY + hitboxDown;
            } else {
                spriteBottom = spriteY - (hitboxDown & S8_MAX);
            }

            if (!SpriteCollisionCheckObjectsTouching(
                    warioTop, warioBottom, warioLeft, warioRight, spriteTop, spriteBottom, spriteLeft, spriteRight
                )) {
                continue;
            }

            gIgnoreSpriteCollision = FALSE;

            verticalCenter = spriteTop + (spriteBottom - spriteTop) / 2;
            horizontalCenter = spriteLeft + (spriteRight - spriteLeft) / 2;
            gSpriteCollisionFlags = SPRITE_COLLISION_NONE;
            if (((verticalCenter - PIXEL_SIZE) > warioBottom) && (gWarioData.yVelocity <= 0x18)) {
                gSpriteCollisionFlags = SPRITE_COLLISION_ABOVE;
            }
            if ((verticalCenter + PIXEL_SIZE) < warioTop) {
                gSpriteCollisionFlags |= SPRITE_COLLISION_BELOW;
            }
            if (horizontalCenter >= warioX) {
                gSpriteCollisionFlags |= SPRITE_COLLISION_LEFT;
            } else {
                gSpriteCollisionFlags |= SPRITE_COLLISION_RIGHT;
            }

            warioDirection = gWarioData.horizontalDirection;
            if (gWarioData.unk_1A != 3) {
                switch (gSpriteData[slot].warioCollision) {
                    case 0x1:
                        if (gWarioData.reaction == 0) {
                            func_8020B10(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x2:
                        if (gWarioData.reaction == 0) {
                            func_8020BB8(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x3:
                        if (gWarioData.reaction == 0) {
                            func_8020E1C(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x4:
                        if (gWarioData.reaction == 0) {
                            func_8020CEC(slot, warioDirection, spriteLeft, spriteRight, warioX);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x21:
                        if (gWarioData.reaction == 0) {
                            func_8020F28(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xA:
                        if (gWarioData.reaction == 0) {
                            func_80211E0(slot);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x5:
                        if (gWarioData.reaction == REACTION_NORMAL) {
                            if (gCurrentCarriedSprite.state != 0) {
                                func_8020B10(slot, warioDirection);
                            } else {
                                if (!(gSpriteCollisionFlags & SPRITE_COLLISION_BELOW)) {
                                    func_8023BFC(spriteY - 0xA0, spriteX);
                                    if (gSpriteAiCollisionFlags & 0xF) {
                                        func_8023BFC(warioY - 0x60, warioX);
                                        if (!(0xF & gSpriteAiCollisionFlags) || ((gWarioData.pose < 5) || (gWarioData.pose > 9))) {
                                            func_8020B10(slot, warioDirection);
                                        }
                                    } else {
                                        func_802125C(slot, warioDirection);
                                    }
                                } else {
                                    func_802125C(slot, warioDirection);
                                }
                            }
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x3B:
                        if (gWarioData.reaction == 0) {
                            if (gCurrentCarriedSprite.state != 0) {
                                func_8020F28(slot, warioDirection);
                            } else {
                                func_8021318(slot, warioDirection);
                            }
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x25:
                        if (gWarioData.reaction == 0) {
                            func_8020FF4(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x26:
                        if (gWarioData.reaction == 0) {
                            func_80210E8(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x6:
                        func_8021720(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x46:
                        gSpriteData[slot].pose = SPOSE_70;
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x7:
                        func_8021734(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x35:
                        if (gWarioData.reaction == 0) {
                            func_80236C4(slot, warioDirection, spriteLeft, spriteRight);
                        } else {
                            gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x8:
                        func_8021564(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xC:
                        if (gWarioData.reaction == 0) {
                            func_8021650(slot);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x9:
                        if (gWarioData.reaction == 0) {
                            func_80215E8(slot);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xB:
                        if (gWarioData.reaction == 0) {
                            func_80216B8(slot);
                        } else if (gWarioData.reaction == 8) {
                            gWarioData.reaction = 0;
                            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                                SpriteCollisionTakeDamageRight();
                            } else {
                                SpriteCollisionTakeDamageLeft();
                            }
                            gSpriteData[slot].pose = SPOSE_6C;
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xD:
                        func_8021500(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xE:
                        if ((gWarioData.reaction == 0) && (gWarioData.damageTimer == 0)) {
                            SpriteCollisionTransformWarioFlaming();
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0xF:
                        func_801ED48(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x10:
                        func_801ECB8(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x11:
                        func_801ECFC(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x12:
                        func_801EC74(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x27:
                        func_801EC30(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x28:
                        func_8022C64(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x14:
                        func_801EBCC(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x13:
                        if ((gWarioData.reaction == 0) && (gWarioData.damageTimer == 0)) {
                            SpriteCollisionTransformWarioBat();
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x15:
                        if ((gWarioData.reaction == 0) && (gWarioData.damageTimer == 0)) {
                            func_8020C78(slot, warioDirection);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x1B:
                        func_8021C30(slot, spriteTop);
                        break;
                    case 0x1C:
                        func_8021CC8(slot, spriteTop);
                        break;
                    case 0x1D:
                        func_8021D5C(slot, spriteTop);
                        break;
                    case 0x30:
                        func_8021DD0(slot, spriteTop);
                        break;
                    case 0x1E:
                        if ((gWarioData.reaction != 0) || (gWarioData.damageTimer != 0)) {
                            func_8021E6C(slot, spriteBottom, spriteLeft, spriteRight);
                            gIgnoreSpriteCollision = 1;
                        } else {
                            func_8021784(
                                slot,
                                warioDirection,
                                spriteTop,
                                spriteBottom,
                                spriteLeft,
                                spriteRight,
                                warioLeft,
                                warioRight
                            );
                        }
                        break;
                    case 0x1F:
                        if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
                            if (gWarioData.reaction == 0 || gWarioData.reaction == 2) {
                                if (gWarioData.damageTimer != 0) {
                                    gWarioData.damageTimer = 0;
                                }
                                SpriteCollisionTransformWarioFlat();
                                gSpriteData[slot].work1 = 1;
                                gSpriteData[slot].disableWarioCollisionTimer = 0xF;
                                gWarioData.yPosition = gSpriteData[slot].yPosition + 0x90;
                            } else if (gWarioData.reaction != 10) {
                                func_8021E6C(slot, spriteBottom, spriteLeft, spriteRight);
                            }
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8021E6C(slot, spriteBottom, spriteLeft, spriteRight);
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                    case 0x16:
                    case 0x17:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                        func_8021784(
                            slot,
                            warioDirection,
                            spriteTop,
                            spriteBottom,
                            spriteLeft,
                            spriteRight,
                            warioLeft,
                            warioRight
                        );
                        break;
                    case 0x20:
                        func_80220F8(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x22:
                        func_8022118(slot, warioX, previousX);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x23:
                        if (gWarioData.reaction == 0) {
                            func_8022188(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x24:
                        if (gWarioData.reaction == 0) {
                            func_8022220(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x29:
                    case 0x2A:
                    case 0x2B:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_80222D8(slot, spriteBottom, spriteLeft, spriteRight);
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                        }
                        break;
                    case 0x48:
                        func_8022524(slot, spriteTop, spriteBottom, warioTop, warioX);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x42:
                    case 0x43:
                    case 0x44:
                        if (gWarioData.reaction == 0) {
                            func_8022724(slot, warioDirection);
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                        }
                        break;
                    case 0x45:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_80215C0();
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                        break;
                    case 0x2C:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8022EF8(slot, spriteLeft, spriteRight);
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                        break;
                    case 0x2D:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8022FC8(slot, spriteLeft, spriteRight);
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                        break;
                    case 0x47:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8023110(slot, spriteLeft, spriteRight);
                            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                            gIgnoreSpriteCollision = 1;
                            break;
                        }
                        break;
                    case 0x2E:
                        if (gWarioData.reaction == 0) {
                            func_80233B8(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x2F:
                        if (gWarioData.reaction == 0) {
                            func_802349C(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x31:
                    case 0x32:
                        if (gWarioData.reaction == 0) {
                            func_80235A0(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x33:
                        if (gWarioData.reaction == 0) {
                            func_80231F8(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x34:
                        if (gWarioData.reaction == 0) {
                            func_80232C4(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x36:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            gSpriteData[slot].pose = SPOSE_6C;
                            if (gCurrentCarriedSprite.state != 0) {
                                func_801E4B0();
                                gCurrentCarriedSprite.state = 0;
                            }
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x37:
                        if (gWarioData.reaction == 0) {
                            func_8020958(slot, warioDirection);
                        } else {
                            func_801E92C(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x38:
                        if ((gWarioData.reaction == 0) && (gWarioData.damageTimer == 0)) {
                            func_80213F4(slot, warioX, previousX);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x39:
                    case 0x3A:
                        if ((gWarioData.reaction == 0) && (gWarioData.damageTimer == 0)) {
                            func_8021434(slot, spriteLeft, spriteRight);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x3C:
                        if (gWarioData.reaction == 0) {
                            func_80237E4(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x3D:
                        func_801ED18();
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x3E:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8021F84(slot, spriteLeft, spriteRight, spriteTop);
                        }
                        break;
                    case 0x3F:
                    case 0x40:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8022948(slot, spriteTop);
                        }
                        gIgnoreSpriteCollision = 1;
                        break;
                    case 0x41:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8022AE8(slot, spriteLeft, spriteRight);
                            gIgnoreSpriteCollision = 1;
                        }
                        break;
                    case 0x49:
                        if (gWarioData.reaction == 0 && gWarioData.damageTimer == 0) {
                            func_8022CE8(
                                slot, warioY, warioX, warioLeft, warioRight, spriteLeft, spriteRight, warioDirection
                            );
                        }
                        gIgnoreSpriteCollision = 1;
                        break;
                    default:
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        gIgnoreSpriteCollision = 1;
                        break;
                }
            } else {
                switch (gSpriteData[slot].warioCollision) {
                    case 0x6:
                        func_8021720(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        break;
                    case 0x4A:
                        SpriteCollisionMaybeTransformWarioBubble(slot);
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        break;
                    case 0x4B:
                    case 0x4C:
                    case 0x4D:
                        if (gWarioData.damageTimer == 0) {
                            func_80204F4(slot, spriteLeft, spriteRight, warioX);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    case 0x53:
                    case 0x54:
                        if (gWarioData.damageTimer == 0) {
                            func_80209E0(slot, spriteLeft, spriteRight, warioX);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    case 0x4E:
                        if (gWarioData.damageTimer == 0) {
                            func_80206B8(slot, spriteLeft, spriteRight, warioX);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    case 0x4F:
                    case 0x50:
                        if (gWarioData.damageTimer == 0) {
                            func_80207D8(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    case 0x51:
                        if (gWarioData.damageTimer == 0) {
                            SpriteCollisionTakeDamageUnderwater(slot);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    case 0x52:
                        if (gWarioData.damageTimer == 0) {
                            SpriteCollisionUnderwaterBonk(slot, spriteLeft, spriteRight, warioX);
                        }
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.5) + DELTA_TIME;
                        break;
                    default:
                        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                        break;
                }
                gIgnoreSpriteCollision = 1;
            }

            if (gIgnoreSpriteCollision) {
                break;
            }
        } else {
            if (gSpriteData[slot].disableWarioCollisionTimer != 0) {
                gSpriteData[slot].disableWarioCollisionTimer -= 1;
            }
        }
    }
}
#else
NAKED void SpriteCollisionProcess(void)
{
    __asm__(
        "\
	push	{r4, r5, r6, r7, lr} \n\
	mov	r7, sl \n\
	mov	r6, r9 \n\
	mov	r5, r8 \n\
	push	{r5, r6, r7} \n\
	sub	sp, #56	@ 0x38 \n\
	ldr	r0, .L_1f6e8 \n\
	ldrb	r0, [r0, #0] \n\
	cmp	r0, #3 \n\
	bls	.L_1f640 \n\
	bl	.L_203f8 \n\
.L_1f640: \n\
	ldr	r1, .L_1f6ec \n\
	ldrb	r0, [r1, #2] \n\
	cmp	r0, #0 \n\
	beq	.L_1f64c \n\
	bl	.L_203f8 \n\
.L_1f64c: \n\
	ldrh	r0, [r1, #20] \n\
	str	r0, [sp, #16] \n\
	ldrh	r2, [r1, #18] \n\
	str	r2, [sp, #20] \n\
	ldr	r0, .L_1f6f0 \n\
	ldrh	r0, [r0, #0] \n\
	str	r0, [sp, #40]	@ 0x28 \n\
	ldrh	r0, [r1, #52]	@ 0x34 \n\
	ldr	r3, [sp, #16] \n\
	add	r0, r3, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	str	r0, [sp, #24] \n\
	ldrh	r0, [r1, #56]	@ 0x38 \n\
	add	r0, r3, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	str	r0, [sp, #28] \n\
	ldrh	r0, [r1, #50]	@ 0x32 \n\
	add	r0, r2, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	str	r0, [sp, #32] \n\
	ldrh	r0, [r1, #54]	@ 0x36 \n\
	add	r0, r2, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	str	r0, [sp, #36]	@ 0x24 \n\
	mov	r7, #0 \n\
.L_1f686: \n\
	ldr	r1, .L_1f6f4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r1, r0, r1 \n\
	ldrh	r0, [r1, #0] \n\
	mov	r2, #3 \n\
	and	r0, r2 \n\
	cmp	r0, #3 \n\
	beq	.L_1f69c \n\
	bl	.L_203e4 \n\
.L_1f69c: \n\
	ldrb	r0, [r1, #31] \n\
	cmp	r0, #0 \n\
	beq	.L_1f6a6 \n\
	bl	.L_203ea \n\
.L_1f6a6: \n\
	ldrh	r3, [r1, #8] \n\
	str	r3, [sp, #44]	@ 0x2c \n\
	ldrh	r0, [r1, #10] \n\
	str	r0, [sp, #48]	@ 0x30 \n\
	add	r0, r1, #0 \n\
	add	r0, #35	@ 0x23 \n\
	ldrb	r0, [r0, #0] \n\
	sub	r0, r3, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	mov	sl, r0 \n\
	add	r0, r1, #0 \n\
	add	r0, #37	@ 0x25 \n\
	ldrb	r0, [r0, #0] \n\
	ldr	r2, [sp, #48]	@ 0x30 \n\
	sub	r0, r2, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	mov	r8, r0 \n\
	add	r0, r1, #0 \n\
	add	r0, #38	@ 0x26 \n\
	ldrb	r0, [r0, #0] \n\
	add	r0, r2, r0 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	mov	r9, r0 \n\
	add	r0, r1, #0 \n\
	add	r0, #36	@ 0x24 \n\
	ldrb	r5, [r0, #0] \n\
	cmp	r5, #127	@ 0x7f \n\
	bhi	.L_1f6f8 \n\
	add	r0, r3, r5 \n\
	b	.L_1f700 \n\
.L_1f6e8: \n\
	.4byte	gTimerState \n\
.L_1f6ec: \n\
	.4byte	gWarioData \n\
.L_1f6f0: \n\
	.4byte	gPreviousXPosition \n\
.L_1f6f4: \n\
	.4byte	gSpriteData \n\
.L_1f6f8: \n\
	mov	r0, #127	@ 0x7f \n\
	and	r5, r0 \n\
	ldr	r3, [sp, #44]	@ 0x2c \n\
	sub	r0, r3, r5 \n\
.L_1f700: \n\
	lsl	r0, r0, #16 \n\
	lsr	r5, r0, #16 \n\
	mov	r0, sl \n\
	str	r0, [sp, #0] \n\
	str	r5, [sp, #4] \n\
	mov	r1, r8 \n\
	str	r1, [sp, #8] \n\
	mov	r2, r9 \n\
	str	r2, [sp, #12] \n\
	ldr	r0, [sp, #24] \n\
	ldr	r1, [sp, #28] \n\
	ldr	r2, [sp, #32] \n\
	ldr	r3, [sp, #36]	@ 0x24 \n\
	bl	SpriteCollisionCheckObjectsTouching \n\
	cmp	r0, #0 \n\
	bne	.L_1f726 \n\
	bl	.L_203ee \n\
.L_1f726: \n\
	ldr	r0, .L_1f788 \n\
	mov	r2, #0 \n\
	strb	r2, [r0, #0] \n\
	mov	r3, sl \n\
	sub	r0, r5, r3 \n\
	lsr	r1, r0, #31 \n\
	add	r0, r0, r1 \n\
	asr	r0, r0, #1 \n\
	add	r0, sl \n\
	lsl	r0, r0, #16 \n\
	lsr	r4, r0, #16 \n\
	mov	r1, r9 \n\
	mov	r3, r8 \n\
	sub	r0, r1, r3 \n\
	lsr	r1, r0, #31 \n\
	add	r0, r0, r1 \n\
	asr	r0, r0, #1 \n\
	add	r0, r8 \n\
	lsl	r0, r0, #16 \n\
	lsr	r0, r0, #16 \n\
	mov	ip, r0 \n\
	ldr	r0, .L_1f78c \n\
	strb	r2, [r0, #0] \n\
	sub	r1, r4, #4 \n\
	ldr	r6, .L_1f790 \n\
	add	r3, r0, #0 \n\
	ldr	r0, [sp, #28] \n\
	cmp	r1, r0 \n\
	ble	.L_1f76c \n\
	mov	r1, #24 \n\
	ldrsh	r0, [r6, r1] \n\
	cmp	r0, #24 \n\
	bgt	.L_1f76c \n\
	mov	r0, #1 \n\
	strb	r0, [r3, #0] \n\
.L_1f76c: \n\
	add	r0, r4, #4 \n\
	ldr	r2, [sp, #24] \n\
	cmp	r0, r2 \n\
	bge	.L_1f77c \n\
	ldrb	r0, [r3, #0] \n\
	mov	r1, #2 \n\
	orr	r0, r1 \n\
	strb	r0, [r3, #0] \n\
.L_1f77c: \n\
	ldr	r0, [sp, #20] \n\
	cmp	ip, r0 \n\
	bcc	.L_1f794 \n\
	ldrb	r0, [r3, #0] \n\
	mov	r1, #4 \n\
	b	.L_1f798 \n\
.L_1f788: \n\
	.4byte	gIgnoreSpriteCollision \n\
.L_1f78c: \n\
	.4byte	gSpriteCollisionFlags \n\
.L_1f790: \n\
	.4byte	gWarioData \n\
.L_1f794: \n\
	ldrb	r0, [r3, #0] \n\
	mov	r1, #8 \n\
.L_1f798: \n\
	orr	r0, r1 \n\
	strb	r0, [r3, #0] \n\
	ldrh	r4, [r6, #14] \n\
	ldrb	r0, [r6, #26] \n\
	cmp	r0, #3 \n\
	bne	.L_1f7a8 \n\
	bl	.L_20172 \n\
.L_1f7a8: \n\
	ldr	r1, .L_1f7c8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r2, r0, r1 \n\
	ldrb	r0, [r2, #30] \n\
	sub	r0, #1 \n\
	mov	ip, r1 \n\
	cmp	r0, #72	@ 0x48 \n\
	bls	.L_1f7be \n\
	bl	.L_2016c \n\
.L_1f7be: \n\
	lsl	r0, r0, #2 \n\
	ldr	r1, .L_1f7cc \n\
	add	r0, r0, r1 \n\
	ldr	r0, [r0, #0] \n\
	mov	pc, r0 \n\
.L_1f7c8: \n\
	.4byte	gSpriteData \n\
.L_1f7cc: \n\
	.4byte	.L_1f7d0 \n\
.L_1f7d0: \n\
	.4byte	.L_1f8f4 \n\
	.4byte	.L_1f91c \n\
	.4byte	.L_1f944 \n\
	.4byte	.L_1f96c \n\
	.4byte	.L_1f9e8 \n\
	.4byte	.L_1fafc \n\
	.4byte	.L_1fb22 \n\
	.4byte	.L_1fb68 \n\
	.4byte	.L_1fba4 \n\
	.4byte	.L_1f9c4 \n\
	.4byte	.L_1fbc8 \n\
	.4byte	.L_1fb80 \n\
	.4byte	.L_1fc1c \n\
	.4byte	.L_1fc34 \n\
	.4byte	.L_1fc54 \n\
	.4byte	.L_1fc68 \n\
	.4byte	.L_1fc7c \n\
	.4byte	.L_1fc90 \n\
	.4byte	.L_1fce0 \n\
	.4byte	.L_1fccc \n\
	.4byte	.L_1fd00 \n\
	.4byte	.L_1fdcc \n\
	.4byte	.L_1fdcc \n\
	.4byte	.L_1fdcc \n\
	.4byte	.L_1fdcc \n\
	.4byte	.L_1fdcc \n\
	.4byte	.L_1fd24 \n\
	.4byte	.L_1fd2e \n\
	.4byte	.L_1fd38 \n\
	.4byte	.L_1fd4c \n\
	.4byte	.L_1fd66 \n\
	.4byte	.L_1fdf8 \n\
	.4byte	.L_1f99c \n\
	.4byte	.L_1fe0c \n\
	.4byte	.L_1fe24 \n\
	.4byte	.L_1fe48 \n\
	.4byte	.L_1faac \n\
	.4byte	.L_1fad4 \n\
	.4byte	.L_1fca4 \n\
	.4byte	.L_1fcb8 \n\
	.4byte	.L_1fe6c \n\
	.4byte	.L_1fe6c \n\
	.4byte	.L_1fe6c \n\
	.4byte	.L_1feec \n\
	.4byte	.L_1ff14 \n\
	.4byte	.L_1ff64 \n\
	.4byte	.L_1ff88 \n\
	.4byte	.L_1fd42 \n\
	.4byte	.L_1ffac \n\
	.4byte	.L_1ffac \n\
	.4byte	.L_1ffd0 \n\
	.4byte	.L_1fff4 \n\
	.4byte	.L_1fb38 \n\
	.4byte	.L_20018 \n\
	.4byte	.L_20050 \n\
	.4byte	.L_20074 \n\
	.4byte	.L_20098 \n\
	.4byte	.L_20098 \n\
	.4byte	.L_1fa70 \n\
	.4byte	.L_200bc \n\
	.4byte	.L_200d8 \n\
	.4byte	.L_200ec \n\
	.4byte	.L_2010a \n\
	.4byte	.L_2010a \n\
	.4byte	.L_20124 \n\
	.4byte	.L_1feaa \n\
	.4byte	.L_1feaa \n\
	.4byte	.L_1feaa \n\
	.4byte	.L_1fec8 \n\
	.4byte	.L_1fb14 \n\
	.4byte	.L_1ff3c \n\
	.4byte	.L_1fe98 \n\
	.4byte	.L_20140 \n\
.L_1f8f4: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f904 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020B10 \n\
	b	.L_1f90a \n\
.L_1f904: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f90a: \n\
	ldr	r1, .L_1f918 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1f918: \n\
	.4byte	gSpriteData \n\
.L_1f91c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f92c \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020BB8 \n\
	b	.L_1f932 \n\
.L_1f92c: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f932: \n\
	ldr	r1, .L_1f940 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1f940: \n\
	.4byte	gSpriteData \n\
.L_1f944: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f954 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020E1C \n\
	b	.L_1f95a \n\
.L_1f954: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f95a: \n\
	ldr	r1, .L_1f968 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1f968: \n\
	.4byte	gSpriteData \n\
.L_1f96c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f984 \n\
	ldr	r1, [sp, #20] \n\
	str	r1, [sp, #0] \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_8020CEC \n\
	b	.L_1f98a \n\
.L_1f984: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f98a: \n\
	ldr	r1, .L_1f998 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1f998: \n\
	.4byte	gSpriteData \n\
.L_1f99c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f9ac \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020F28 \n\
	b	.L_1f9b2 \n\
.L_1f9ac: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f9b2: \n\
	ldr	r1, .L_1f9c0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1f9c0: \n\
	.4byte	gSpriteData \n\
.L_1f9c4: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1f9d2 \n\
	add	r0, r7, #0 \n\
	bl	func_80211E0 \n\
	b	.L_1f9d8 \n\
.L_1f9d2: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1f9d8: \n\
	ldr	r1, .L_1f9e4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1f9e4: \n\
	.4byte	gSpriteData \n\
.L_1f9e8: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fa5a \n\
	ldr	r0, .L_1fa48 \n\
	ldrb	r0, [r0, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fa3c \n\
	ldrb	r1, [r3, #0] \n\
	mov	r0, #2 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	bne	.L_1fa50 \n\
	ldr	r0, [sp, #44]	@ 0x2c \n\
	sub	r0, #160	@ 0xa0 \n\
	ldr	r1, [sp, #48]	@ 0x30 \n\
	bl	func_8023BFC \n\
	ldr	r5, .L_1fa4c \n\
	ldrb	r1, [r5, #0] \n\
	mov	r2, #15 \n\
	add	r0, r2, #0 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_1fa50 \n\
	ldr	r0, [sp, #16] \n\
	sub	r0, #96	@ 0x60 \n\
	ldr	r1, [sp, #20] \n\
	str	r2, [sp, #52]	@ 0x34 \n\
	bl	func_8023BFC \n\
	ldrb	r1, [r5, #0] \n\
	ldr	r2, [sp, #52]	@ 0x34 \n\
	add	r0, r2, #0 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_1fa3c \n\
	ldrb	r0, [r6, #1] \n\
	sub	r0, #5 \n\
	lsl	r0, r0, #24 \n\
	lsr	r0, r0, #24 \n\
	cmp	r0, #4 \n\
	bls	.L_1fa60 \n\
.L_1fa3c: \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020B10 \n\
	b	.L_1fa60 \n\
	.align	2, 0 \n\
.L_1fa48: \n\
	.4byte	gCurrentCarriedSprite \n\
.L_1fa4c: \n\
	.4byte	gSpriteAiCollisionFlags \n\
.L_1fa50: \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_802125C \n\
	b	.L_1fa60 \n\
.L_1fa5a: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fa60: \n\
	ldr	r1, .L_1fa6c \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fa6c: \n\
	.4byte	gSpriteData \n\
.L_1fa70: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fa96 \n\
	ldr	r0, .L_1fa88 \n\
	ldrb	r0, [r0, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1fa8c \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020F28 \n\
	b	.L_1fa9c \n\
.L_1fa88: \n\
	.4byte	gCurrentCarriedSprite \n\
.L_1fa8c: \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8021318 \n\
	b	.L_1fa9c \n\
.L_1fa96: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fa9c: \n\
	ldr	r1, .L_1faa8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1faa8: \n\
	.4byte	gSpriteData \n\
.L_1faac: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fabc \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020FF4 \n\
	b	.L_1fac2 \n\
.L_1fabc: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fac2: \n\
	ldr	r1, .L_1fad0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1fad0: \n\
	.4byte	gSpriteData \n\
.L_1fad4: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fae4 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_80210E8 \n\
	b	.L_1faea \n\
.L_1fae4: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1faea: \n\
	ldr	r1, .L_1faf8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1faf8: \n\
	.4byte	gSpriteData \n\
.L_1fafc: \n\
	add	r0, r7, #0 \n\
	bl	func_8021720 \n\
	ldr	r1, .L_1fb10 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1fb10: \n\
	.4byte	gSpriteData \n\
.L_1fb14: \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, ip \n\
	mov	r1, #112	@ 0x70 \n\
	strb	r1, [r0, #28] \n\
	bl	.L_203ce \n\
.L_1fb22: \n\
	add	r0, r7, #0 \n\
	bl	func_8021734 \n\
	ldr	r1, .L_1fb34 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fb34: \n\
	.4byte	gSpriteData \n\
.L_1fb38: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fb4c \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_80236C4 \n\
	b	.L_1fb58 \n\
.L_1fb4c: \n\
	ldr	r1, .L_1fb64 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #49	@ 0x31 \n\
	strb	r1, [r0, #28] \n\
.L_1fb58: \n\
	ldr	r1, .L_1fb64 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fb64: \n\
	.4byte	gSpriteData \n\
.L_1fb68: \n\
	add	r0, r7, #0 \n\
	bl	func_8021564 \n\
	ldr	r1, .L_1fb7c \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1fb7c: \n\
	.4byte	gSpriteData \n\
.L_1fb80: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fb8e \n\
	add	r0, r7, #0 \n\
	bl	func_8021650 \n\
	b	.L_1fb94 \n\
.L_1fb8e: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fb94: \n\
	ldr	r1, .L_1fba0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fba0: \n\
	.4byte	gSpriteData \n\
.L_1fba4: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fbb2 \n\
	add	r0, r7, #0 \n\
	bl	func_80215E8 \n\
	b	.L_1fbb8 \n\
.L_1fbb2: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fbb8: \n\
	ldr	r1, .L_1fbc4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fbc4: \n\
	.4byte	gSpriteData \n\
.L_1fbc8: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fbd6 \n\
	add	r0, r7, #0 \n\
	bl	func_80216B8 \n\
	b	.L_1fc0a \n\
.L_1fbd6: \n\
	cmp	r0, #8 \n\
	bne	.L_1fc04 \n\
	mov	r0, #0 \n\
	strb	r0, [r6, #0] \n\
	ldrb	r1, [r3, #0] \n\
	mov	r0, #4 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_1fbee \n\
	bl	SpriteCollisionTakeDamageRight \n\
	b	.L_1fbf2 \n\
.L_1fbee: \n\
	bl	SpriteCollisionTakeDamageLeft \n\
.L_1fbf2: \n\
	ldr	r1, .L_1fc00 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #108	@ 0x6c \n\
	strb	r1, [r0, #28] \n\
	b	.L_1fc0a \n\
.L_1fc00: \n\
	.4byte	gSpriteData \n\
.L_1fc04: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fc0a: \n\
	ldr	r1, .L_1fc18 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1fc18: \n\
	.4byte	gSpriteData \n\
.L_1fc1c: \n\
	add	r0, r7, #0 \n\
	bl	func_8021500 \n\
	ldr	r1, .L_1fc30 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
	.align	2, 0 \n\
.L_1fc30: \n\
	.4byte	gSpriteData \n\
.L_1fc34: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fc44 \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_1fc44 \n\
	bl	SpriteCollisionTransformWarioFlaming \n\
.L_1fc44: \n\
	ldr	r1, .L_1fc50 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	bl	.L_203ca \n\
.L_1fc50: \n\
	.4byte	gSpriteData \n\
.L_1fc54: \n\
	add	r0, r7, #0 \n\
	bl	func_801ED48 \n\
	ldr	r1, .L_1fc64 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fc64: \n\
	.4byte	gSpriteData \n\
.L_1fc68: \n\
	add	r0, r7, #0 \n\
	bl	func_801ECB8 \n\
	ldr	r1, .L_1fc78 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fc78: \n\
	.4byte	gSpriteData \n\
.L_1fc7c: \n\
	add	r0, r7, #0 \n\
	bl	func_801ECFC \n\
	ldr	r1, .L_1fc8c \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fc8c: \n\
	.4byte	gSpriteData \n\
.L_1fc90: \n\
	add	r0, r7, #0 \n\
	bl	func_801EC74 \n\
	ldr	r1, .L_1fca0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fca0: \n\
	.4byte	gSpriteData \n\
.L_1fca4: \n\
	add	r0, r7, #0 \n\
	bl	func_801EC30 \n\
	ldr	r1, .L_1fcb4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fcb4: \n\
	.4byte	gSpriteData \n\
.L_1fcb8: \n\
	add	r0, r7, #0 \n\
	bl	func_8022C64 \n\
	ldr	r1, .L_1fcc8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fcc8: \n\
	.4byte	gSpriteData \n\
.L_1fccc: \n\
	add	r0, r7, #0 \n\
	bl	func_801EBCC \n\
	ldr	r1, .L_1fcdc \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fcdc: \n\
	.4byte	gSpriteData \n\
.L_1fce0: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fcf0 \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_1fcf0 \n\
	bl	SpriteCollisionTransformWarioBat \n\
.L_1fcf0: \n\
	ldr	r1, .L_1fcfc \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_1fcfc: \n\
	.4byte	gSpriteData \n\
.L_1fd00: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fd14 \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_1fd14 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020C78 \n\
.L_1fd14: \n\
	ldr	r1, .L_1fd20 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_1fd20: \n\
	.4byte	gSpriteData \n\
.L_1fd24: \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	bl	func_8021C30 \n\
	b	.L_203d4 \n\
.L_1fd2e: \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	bl	func_8021CC8 \n\
	b	.L_203d4 \n\
.L_1fd38: \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	bl	func_8021D5C \n\
	b	.L_203d4 \n\
.L_1fd42: \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	bl	func_8021DD0 \n\
	b	.L_203d4 \n\
.L_1fd4c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fdcc \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_1fdcc \n\
	add	r0, r7, #0 \n\
	add	r1, r5, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_8021E6C \n\
	b	.L_203ce \n\
.L_1fd66: \n\
	ldrb	r1, [r3, #0] \n\
	mov	r0, #2 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_1fdc0 \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1fd7a \n\
	cmp	r0, #2 \n\
	bne	.L_1fdac \n\
.L_1fd7a: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1fd84 \n\
	mov	r0, #0 \n\
	strb	r0, [r6, #4] \n\
.L_1fd84: \n\
	bl	SpriteCollisionTransformWarioFlat \n\
	ldr	r2, .L_1fda8 \n\
	mov	r0, #44	@ 0x2c \n\
	add	r1, r7, #0 \n\
	mul	r1, r0 \n\
	add	r1, r1, r2 \n\
	add	r2, r1, #0 \n\
	add	r2, #40	@ 0x28 \n\
	mov	r0, #1 \n\
	strb	r0, [r2, #0] \n\
	mov	r0, #15 \n\
	strb	r0, [r1, #31] \n\
	ldrh	r0, [r1, #8] \n\
	add	r0, #144	@ 0x90 \n\
	strh	r0, [r6, #20] \n\
	b	.L_203ce \n\
	.align	2, 0 \n\
.L_1fda8: \n\
	.4byte	gSpriteData \n\
.L_1fdac: \n\
	cmp	r0, #10 \n\
	bne	.L_1fdb2 \n\
	b	.L_203ce \n\
.L_1fdb2: \n\
	add	r0, r7, #0 \n\
	add	r1, r5, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_8021E6C \n\
	b	.L_203ce \n\
.L_1fdc0: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fdcc \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1fdea \n\
.L_1fdcc: \n\
	mov	r2, r8 \n\
	str	r2, [sp, #0] \n\
	mov	r3, r9 \n\
	str	r3, [sp, #4] \n\
	ldr	r0, [sp, #32] \n\
	str	r0, [sp, #8] \n\
	ldr	r1, [sp, #36]	@ 0x24 \n\
	str	r1, [sp, #12] \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	mov	r2, sl \n\
	add	r3, r5, #0 \n\
	bl	func_8021784 \n\
	b	.L_203d4 \n\
.L_1fdea: \n\
	add	r0, r7, #0 \n\
	add	r1, r5, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_8021E6C \n\
	b	.L_203ce \n\
.L_1fdf8: \n\
	add	r0, r7, #0 \n\
	bl	func_80220F8 \n\
	ldr	r1, .L_1fe08 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fe08: \n\
	.4byte	gSpriteData \n\
.L_1fe0c: \n\
	add	r0, r7, #0 \n\
	ldr	r1, [sp, #20] \n\
	ldr	r2, [sp, #40]	@ 0x28 \n\
	bl	func_8022118 \n\
	ldr	r1, .L_1fe20 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fe20: \n\
	.4byte	gSpriteData \n\
.L_1fe24: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fe34 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8022188 \n\
	b	.L_1fe3a \n\
.L_1fe34: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fe3a: \n\
	ldr	r1, .L_1fe44 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fe44: \n\
	.4byte	gSpriteData \n\
.L_1fe48: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1fe58 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8022220 \n\
	b	.L_1fe5e \n\
.L_1fe58: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1fe5e: \n\
	ldr	r1, .L_1fe68 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fe68: \n\
	.4byte	gSpriteData \n\
.L_1fe6c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1fe74 \n\
	b	.L_203d4 \n\
.L_1fe74: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1fe7c \n\
	b	.L_203d4 \n\
.L_1fe7c: \n\
	add	r0, r7, #0 \n\
	add	r1, r5, #0 \n\
	mov	r2, r8 \n\
	mov	r3, r9 \n\
	bl	func_80222D8 \n\
	ldr	r1, .L_1fe94 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_1fe94: \n\
	.4byte	gSpriteData \n\
.L_1fe98: \n\
	ldr	r2, [sp, #20] \n\
	str	r2, [sp, #0] \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	add	r2, r5, #0 \n\
	ldr	r3, [sp, #24] \n\
	bl	func_8022524 \n\
	b	.L_203ce \n\
.L_1feaa: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1feb2 \n\
	b	.L_203d4 \n\
.L_1feb2: \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8022724 \n\
	ldr	r1, .L_1fec4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fec4: \n\
	.4byte	gSpriteData \n\
.L_1fec8: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1fed0 \n\
	b	.L_203d4 \n\
.L_1fed0: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1fed8 \n\
	b	.L_203d4 \n\
.L_1fed8: \n\
	bl	func_80215C0 \n\
	ldr	r1, .L_1fee8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_1fee8: \n\
	.4byte	gSpriteData \n\
.L_1feec: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1fef4 \n\
	b	.L_203d4 \n\
.L_1fef4: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1fefc \n\
	b	.L_203d4 \n\
.L_1fefc: \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	bl	func_8022EF8 \n\
	ldr	r1, .L_1ff10 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ff10: \n\
	.4byte	gSpriteData \n\
.L_1ff14: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1ff1c \n\
	b	.L_203d4 \n\
.L_1ff1c: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1ff24 \n\
	b	.L_203d4 \n\
.L_1ff24: \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	bl	func_8022FC8 \n\
	ldr	r1, .L_1ff38 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ff38: \n\
	.4byte	gSpriteData \n\
.L_1ff3c: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_1ff44 \n\
	b	.L_203d4 \n\
.L_1ff44: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_1ff4c \n\
	b	.L_203d4 \n\
.L_1ff4c: \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	bl	func_8023110 \n\
	ldr	r1, .L_1ff60 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ff60: \n\
	.4byte	gSpriteData \n\
.L_1ff64: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1ff74 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_80233B8 \n\
	b	.L_1ff7a \n\
.L_1ff74: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1ff7a: \n\
	ldr	r1, .L_1ff84 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ff84: \n\
	.4byte	gSpriteData \n\
.L_1ff88: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1ff98 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_802349C \n\
	b	.L_1ff9e \n\
.L_1ff98: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1ff9e: \n\
	ldr	r1, .L_1ffa8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ffa8: \n\
	.4byte	gSpriteData \n\
.L_1ffac: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1ffbc \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_80235A0 \n\
	b	.L_1ffc2 \n\
.L_1ffbc: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1ffc2: \n\
	ldr	r1, .L_1ffcc \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1ffcc: \n\
	.4byte	gSpriteData \n\
.L_1ffd0: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_1ffe0 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_80231F8 \n\
	b	.L_1ffe6 \n\
.L_1ffe0: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_1ffe6: \n\
	ldr	r1, .L_1fff0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_1fff0: \n\
	.4byte	gSpriteData \n\
.L_1fff4: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_20004 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_80232C4 \n\
	b	.L_2000a \n\
.L_20004: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_2000a: \n\
	ldr	r1, .L_20014 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_20014: \n\
	.4byte	gSpriteData \n\
.L_20018: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_2003e \n\
	ldrb	r5, [r6, #4] \n\
	cmp	r5, #0 \n\
	bne	.L_2003e \n\
	ldr	r1, .L_20048 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #108	@ 0x6c \n\
	strb	r1, [r0, #28] \n\
	ldr	r4, .L_2004c \n\
	ldrb	r0, [r4, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_2003e \n\
	bl	func_801E4B0 \n\
	strb	r5, [r4, #0] \n\
.L_2003e: \n\
	ldr	r1, .L_20048 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_20048: \n\
	.4byte	gSpriteData \n\
.L_2004c: \n\
	.4byte	gCurrentCarriedSprite \n\
.L_20050: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_20060 \n\
	add	r0, r7, #0 \n\
	add	r1, r4, #0 \n\
	bl	func_8020958 \n\
	b	.L_20066 \n\
.L_20060: \n\
	add	r0, r7, #0 \n\
	bl	func_801E92C \n\
.L_20066: \n\
	ldr	r1, .L_20070 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_20070: \n\
	.4byte	gSpriteData \n\
.L_20074: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_2008a \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_2008a \n\
	add	r0, r7, #0 \n\
	ldr	r1, [sp, #20] \n\
	ldr	r2, [sp, #40]	@ 0x28 \n\
	bl	func_80213F4 \n\
.L_2008a: \n\
	ldr	r1, .L_20094 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_20094: \n\
	.4byte	gSpriteData \n\
.L_20098: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_200ae \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_200ae \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	bl	func_8021434 \n\
.L_200ae: \n\
	ldr	r1, .L_200b8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_200b8: \n\
	.4byte	gSpriteData \n\
.L_200bc: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_200c8 \n\
	add	r0, r7, #0 \n\
	bl	func_80237E4 \n\
.L_200c8: \n\
	ldr	r1, .L_200d4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_200d4: \n\
	.4byte	gSpriteData \n\
.L_200d8: \n\
	bl	func_801ED18 \n\
	ldr	r1, .L_200e8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
	.align	2, 0 \n\
.L_200e8: \n\
	.4byte	gSpriteData \n\
.L_200ec: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_200f4 \n\
	b	.L_203d4 \n\
.L_200f4: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_200fc \n\
	b	.L_203d4 \n\
.L_200fc: \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	mov	r3, sl \n\
	bl	func_8021F84 \n\
	b	.L_203d4 \n\
.L_2010a: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_20112 \n\
	b	.L_203ce \n\
.L_20112: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_2011a \n\
	b	.L_203ce \n\
.L_2011a: \n\
	add	r0, r7, #0 \n\
	mov	r1, sl \n\
	bl	func_8022948 \n\
	b	.L_203ce \n\
.L_20124: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_2012c \n\
	b	.L_203d4 \n\
.L_2012c: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_20134 \n\
	b	.L_203d4 \n\
.L_20134: \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	bl	func_8022AE8 \n\
	b	.L_203ce \n\
.L_20140: \n\
	ldrb	r0, [r6, #0] \n\
	cmp	r0, #0 \n\
	beq	.L_20148 \n\
	b	.L_203ce \n\
.L_20148: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	beq	.L_20150 \n\
	b	.L_203ce \n\
.L_20150: \n\
	ldr	r3, [sp, #36]	@ 0x24 \n\
	str	r3, [sp, #0] \n\
	mov	r0, r8 \n\
	str	r0, [sp, #4] \n\
	mov	r1, r9 \n\
	str	r1, [sp, #8] \n\
	str	r4, [sp, #12] \n\
	add	r0, r7, #0 \n\
	ldr	r1, [sp, #16] \n\
	ldr	r2, [sp, #20] \n\
	ldr	r3, [sp, #32] \n\
	bl	func_8022CE8 \n\
	b	.L_203ce \n\
.L_2016c: \n\
	mov	r0, #15 \n\
	strb	r0, [r2, #31] \n\
	b	.L_203ce \n\
.L_20172: \n\
	ldr	r1, .L_20190 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	ldrb	r0, [r0, #30] \n\
	sub	r0, #6 \n\
	mov	ip, r1 \n\
	cmp	r0, #78	@ 0x4e \n\
	bls	.L_20186 \n\
	b	.L_203c4 \n\
.L_20186: \n\
	lsl	r0, r0, #2 \n\
	ldr	r1, .L_20194 \n\
	add	r0, r0, r1 \n\
	ldr	r0, [r0, #0] \n\
	mov	pc, r0 \n\
.L_20190: \n\
	.4byte	gSpriteData \n\
.L_20194: \n\
	.4byte	.L_20198 \n\
.L_20198: \n\
	.4byte	.L_202d4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_203c4 \n\
	.4byte	.L_202e8 \n\
	.4byte	.L_202fc \n\
	.4byte	.L_202fc \n\
	.4byte	.L_202fc \n\
	.4byte	.L_20344 \n\
	.4byte	.L_20368 \n\
	.4byte	.L_20368 \n\
	.4byte	.L_20384 \n\
	.4byte	.L_203a0 \n\
	.4byte	.L_20320 \n\
	.4byte	.L_20320 \n\
.L_202d4: \n\
	add	r0, r7, #0 \n\
	bl	func_8021720 \n\
	ldr	r1, .L_202e4 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_202e4: \n\
	.4byte	gSpriteData \n\
.L_202e8: \n\
	add	r0, r7, #0 \n\
	bl	SpriteCollisionMaybeTransformWarioBubble \n\
	ldr	r1, .L_202f8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	b	.L_203ca \n\
.L_202f8: \n\
	.4byte	gSpriteData \n\
.L_202fc: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_2030e \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	ldr	r3, [sp, #20] \n\
	bl	func_80204F4 \n\
.L_2030e: \n\
	ldr	r1, .L_2031c \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
	.align	2, 0 \n\
.L_2031c: \n\
	.4byte	gSpriteData \n\
.L_20320: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_20332 \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	ldr	r3, [sp, #20] \n\
	bl	func_80209E0 \n\
.L_20332: \n\
	ldr	r1, .L_20340 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
	.align	2, 0 \n\
.L_20340: \n\
	.4byte	gSpriteData \n\
.L_20344: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_20356 \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	ldr	r3, [sp, #20] \n\
	bl	func_80206B8 \n\
.L_20356: \n\
	ldr	r1, .L_20364 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
	.align	2, 0 \n\
.L_20364: \n\
	.4byte	gSpriteData \n\
.L_20368: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_20374 \n\
	add	r0, r7, #0 \n\
	bl	func_80207D8 \n\
.L_20374: \n\
	ldr	r1, .L_20380 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
.L_20380: \n\
	.4byte	gSpriteData \n\
.L_20384: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_20390 \n\
	add	r0, r7, #0 \n\
	bl	SpriteCollisionTakeDamageUnderwater \n\
.L_20390: \n\
	ldr	r1, .L_2039c \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
.L_2039c: \n\
	.4byte	gSpriteData \n\
.L_203a0: \n\
	ldrb	r0, [r6, #4] \n\
	cmp	r0, #0 \n\
	bne	.L_203b2 \n\
	add	r0, r7, #0 \n\
	mov	r1, r8 \n\
	mov	r2, r9 \n\
	ldr	r3, [sp, #20] \n\
	bl	SpriteCollisionUnderwaterBonk \n\
.L_203b2: \n\
	ldr	r1, .L_203c0 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, r0, r1 \n\
	mov	r1, #31 \n\
	b	.L_203cc \n\
	.align	2, 0 \n\
.L_203c0: \n\
	.4byte	gSpriteData \n\
.L_203c4: \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r7 \n\
	add	r0, ip \n\
.L_203ca: \n\
	mov	r1, #15 \n\
.L_203cc: \n\
	strb	r1, [r0, #31] \n\
.L_203ce: \n\
	ldr	r1, .L_203e0 \n\
	mov	r0, #1 \n\
	strb	r0, [r1, #0] \n\
.L_203d4: \n\
	ldr	r0, .L_203e0 \n\
	ldrb	r0, [r0, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_203f8 \n\
	b	.L_203ee \n\
	.align	2, 0 \n\
.L_203e0: \n\
	.4byte	gIgnoreSpriteCollision \n\
.L_203e4: \n\
	ldrb	r0, [r1, #31] \n\
	cmp	r0, #0 \n\
	beq	.L_203ee \n\
.L_203ea: \n\
	sub	r0, #1 \n\
	strb	r0, [r1, #31] \n\
.L_203ee: \n\
	add	r7, #1 \n\
	cmp	r7, #23 \n\
	bgt	.L_203f8 \n\
	bl	.L_1f686 \n\
.L_203f8: \n\
	add	sp, #56	@ 0x38 \n\
	pop	{r3, r4, r5} \n\
	mov	r8, r3 \n\
	mov	r9, r4 \n\
	mov	sl, r5 \n\
	pop	{r4, r5, r6, r7} \n\
	pop	{r0} \n\
	bx	r0"
    );
}
#endif

void SpriteCollisionTakeDamageUnderwater(s32 slot)
{
    WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
    SpriteCollisionMakeWarioDropCoins(slot);
    gSpriteData[slot].pose = SPOSE_6C;
}

void SpriteCollisionUnderwaterBonk(s32 slot, u16 left, u16 right, u16 xPosition)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.verticalDirection = DPAD_DOWN;
        WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
    } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (left < xPosition) && (xPosition < right)) {
        gWarioData.verticalDirection = DPAD_UP;
        WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        gWarioData.horizontalDirection = DPAD_RIGHT;
        WarioRequestPose(WPOSE_WATER_BONK_HORIZONTAL);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        gWarioData.horizontalDirection = DPAD_LEFT;
        WarioRequestPose(WPOSE_WATER_BONK_HORIZONTAL);
    }
}

void func_80204F4(s32 slot, u16 left, u16 right, u16 xPosition)
{
    u8 warioCollision;
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
            }
            m4aSongNumStart(SOUND_3C);
            return;
    }

    warioCollision = gSpriteData[slot].warioCollision;
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = SPOSE_33;
        } else {
            pose = SPOSE_35;
        }
        switch (warioCollision) {
            case 0x4B:
            case 0x4D:
                WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
                SpriteCollisionMakeWarioDropCoins(slot);
                break;
        }
    } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (left < xPosition) && (xPosition < right)) {
        if (warioCollision == 0x4C) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_27;
            } else {
                pose = SPOSE_29;
            }
            WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
            SpriteCollisionMakeWarioDropCoins(slot);
        } else if (warioCollision == 0x4B) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
            }
            gWarioData.verticalDirection = DPAD_UP;
            WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
            m4aSongNumStart(SOUND_3C);
        } else {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_27;
            } else {
                pose = SPOSE_29;
            }
            gWarioData.verticalDirection = DPAD_UP;
            WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        pose = SPOSE_PUSHED_RIGHT_INIT;
        if (warioCollision != 0x4B || (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
            if (warioCollision == 0x4C || warioCollision == 0x4D) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
                gWarioData.horizontalDirection = DPAD_RIGHT;
                WarioRequestPose(WPOSE_WATER_BONK_HORIZONTAL);
                m4aSongNumStart(SOUND_3C);
            }
        } else {
            WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
            SpriteCollisionMakeWarioDropCoins(slot);
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        pose = SPOSE_PUSHED_LEFT_INIT;
        if (((warioCollision == 0x4B && (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) ||
             (warioCollision == 0x4C || warioCollision == 0x4D))) {
            WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
            SpriteCollisionMakeWarioDropCoins(slot);
        }
    } else {
        pose = gSpriteData[slot].pose;
    }
    gSpriteData[slot].pose = pose;
}

void func_80206B8(s32 slot, u16 left, u16 right, u16 xPosition)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
            }
            m4aSongNumStart(SOUND_3C);
            return;
    }

    if ((gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) && (left < xPosition) && (xPosition < right)) {
        pose = SPOSE_74;
        WarioRequestPose(WPOSE_WATER_UNKNOWN_15);
        SpriteCollisionMakeWarioDropCoins(slot);
    } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (left < xPosition) && (xPosition < right)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = SPOSE_TACKLED_RIGHT_INIT;
        } else {
            pose = SPOSE_TACKLED_LEFT_INIT;
        }
        m4aSongNumStart(SOUND_3C);
        gWarioData.verticalDirection = DPAD_UP;
        WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        pose = SPOSE_PUSHED_RIGHT_INIT;
        WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
        SpriteCollisionMakeWarioDropCoins(slot);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        pose = SPOSE_PUSHED_LEFT_INIT;
        WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
        SpriteCollisionMakeWarioDropCoins(slot);
    } else {
        pose = gSpriteData[slot].pose;
    }

    gSpriteData[slot].pose = pose;
}

void func_80207D8(s32 slot)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_CRAWLING:
            if (!(gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE)) {
                break;
            }
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
            } else {
                gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
            }
            m4aSongNumStart(SOUND_3C);
            return;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) {
            pose = SPOSE_27;
        } else {
            pose = SPOSE_29;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) {
            pose = SPOSE_27;
        } else {
            pose = SPOSE_29;
        }
        gWarioData.verticalDirection = DPAD_UP;
        WarioRequestPose(WPOSE_WATER_BONK_VERTICAL);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if ((gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) || gSpriteData[slot].warioCollision != 0x4F) {
            pose = SPOSE_27;
            gWarioData.horizontalDirection = DPAD_RIGHT;
            WarioRequestPose(WPOSE_WATER_BONK_HORIZONTAL);
        } else {
            WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
            SpriteCollisionMakeWarioDropCoins(slot);
            return;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        if ((gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) && gSpriteData[slot].warioCollision == 0x4F) {
            WarioRequestPose(WPOSE_WATER_TAKING_DAMAGE);
            SpriteCollisionMakeWarioDropCoins(slot);
            return;
        } else {
            pose = SPOSE_29;
            gWarioData.horizontalDirection = DPAD_LEFT;
            WarioRequestPose(WPOSE_WATER_BONK_HORIZONTAL);
        }
    } else {
        pose = gSpriteData[slot].pose;
    }
    gSpriteData[slot].pose = pose;
}

void func_8020958(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
                pose = SPOSE_33;
            } else {
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
                pose = SPOSE_35;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = func_801F14C(slot, 1);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            pose = func_801F14C(slot, 0);
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80209E0(s32 slot, u16 left, u16 right, u16 xPosition)
{
    u8 pose;

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_CRAWLING:
            if (!(gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE)) {
                break;
            }
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
            gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
            m4aSongNumStart(SOUND_3C);
            return;
    }
    if ((gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) && (left < xPosition) && (xPosition < right)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = SPOSE_PUSHED_RIGHT_INIT;
        } else {
            pose = SPOSE_PUSHED_LEFT_INIT;
        }
    } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (left < xPosition) && (xPosition < right)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = SPOSE_PUSHED_RIGHT_INIT;
        } else {
            pose = SPOSE_PUSHED_LEFT_INIT;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if (gSpriteData[slot].warioCollision != 0x54) {
            if (gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) {
                pose = SPOSE_PUSHED_RIGHT_INIT;
            } else {
                pose = SPOSE_27;
                if (gTimerState != 0xB) {
                    WarioRequestPose(6);  // TODO: Unknown reaction
                }
            }
        } else {
            pose = SPOSE_PUSHED_RIGHT_INIT;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        if (gSpriteData[slot].warioCollision == 0x54) {
            pose = SPOSE_PUSHED_LEFT_INIT;
        } else {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                pose = SPOSE_PUSHED_LEFT_INIT;
            } else {
                pose = SPOSE_29;
                if (gTimerState != 0xB) {
                    WarioRequestPose(6);  // TODO: Unknown reaction
                }
            }
        }
    } else {
        pose = gSpriteData[slot].pose;
    }
    gSpriteData[slot].pose = pose;
}

void func_8020B10(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = func_801F14C(slot, TRUE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            pose = func_801F14C(slot, FALSE);
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8020BB8(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (direction & DPAD_RIGHT) {
                pose = func_801F14C(slot, TRUE);
            } else {
                pose = SPOSE_33;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (direction & DPAD_LEFT) {
                pose = func_801F14C(slot, FALSE);
            } else {
                pose = SPOSE_35;
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8020C78(s32 slot, u16 direction)
{
    u8 pose;

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gSpriteData[slot].warioCollision = 1;
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SUPER_GROUND_POUND:
                m4aSongNumStart(SOUND_2B);
            case WPOSE_NORMAL_GROUND_POUND:
                pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                SpriteCollisionLandOnEnemy();
                break;

            default:
                pose = func_801F00C(slot, direction, TRUE);
                break;
        }
    } else {
        SpriteCollisionTransformWarioMask();
        pose = SPOSE_13;
    }
    gSpriteData[slot].pose = pose;
}

void func_8020CEC(s32 slot, u16 direction, u16 left, u16 right, u16 xPosition)
{
    u16 facingRight;
    u8 pose;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (pose == 0) {
        if ((gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) && (left < xPosition) && (xPosition < right)) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (left < xPosition) && (xPosition < right)) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (!facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (facingRight != 0) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, FALSE);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8020E1C(s32 slot, u16 direction)
{
    u16 facingRight;
    u8 pose;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
                pose = func_801F00C(slot, direction, FALSE);
            } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (facingRight == 0) {
                    if (gWarioData.damageTimer) {
                        pose = SPOSE_PUSHED_RIGHT_INIT;
                    } else {
                        pose = SPOSE_27;
                        SpriteCollisionTakeDamageRight();
                        SpriteCollisionMakeWarioDropCoins(slot);
                    }
                } else {
                    pose = func_801F14C(slot, TRUE);
                }
            } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
                if (facingRight != 0) {
                    if (gWarioData.damageTimer) {
                        pose = SPOSE_PUSHED_LEFT_INIT;
                    } else {
                        pose = SPOSE_29;
                        SpriteCollisionTakeDamageLeft();
                        SpriteCollisionMakeWarioDropCoins(slot);
                    }
                } else {
                    pose = func_801F14C(slot, FALSE);
                }
            } else {
                pose = gSpriteData[slot].pose;
            }
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8020F28(s32 slot, u16 direction)
{
    u16 facingRight;
    u8 pose;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            if (!facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = func_801F14C(slot, TRUE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            pose = func_801F14C(slot, FALSE);
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8020FF4(s32 slot, u16 direction)
{
    u16 facingRight;
    u8 pose;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            if (!facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (!facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, FALSE);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80210E8(s32 slot, u16 direction)
{
    u16 facingRight;
    u8 pose;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (!facingRight) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                pose = func_801F14C(slot, FALSE);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80211E0(s32 slot)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_RIGHT_INIT;
            } else {
                pose = SPOSE_6E;
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_LEFT_INIT;
            } else {
                pose = SPOSE_70;
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_802125C(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F200(slot, direction);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (direction & DPAD_RIGHT) {
                pose = func_801F43C(slot, TRUE);
            } else {
                pose = SPOSE_33;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (direction & DPAD_LEFT) {
                pose = func_801F43C(slot, FALSE);
            } else {
                pose = SPOSE_35;
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8021318(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F200(slot, direction);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (direction & DPAD_RIGHT) {
                pose = func_801F43C(slot, TRUE);
            } else {
                pose = SPOSE_33;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (direction & DPAD_LEFT) {
                pose = func_801F43C(slot, FALSE);
            } else {
                pose = SPOSE_35;
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80213F4(s32 slot, u16 currentX, u16 previousX)
{
    if (currentX > previousX) {
        SpriteCollisionTakeDamageRight();
    } else if (currentX < previousX) {
        SpriteCollisionTakeDamageLeft();
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        SpriteCollisionTakeDamageRight();
    } else {
        SpriteCollisionTakeDamageLeft();
    }
    SpriteCollisionMakeWarioDropCoins(slot);
}

void func_8021434(s32 slot, u16 left, u16 right)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if ((gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) || (gSpriteData[slot].warioCollision == 0x3A)) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_STARTING_ROLL:
                case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
                case WPOSE_NORMAL_ROLLING:
                case WPOSE_NORMAL_ROLLING_JUMP:
                    gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                    WarioRequestPose(WPOSE_NORMAL_ROLLING_BONK);
                    break;

                default:
                    func_801EF50();
            }
        } else {
            SpriteCollisionTakeDamageRight();
            SpriteCollisionMakeWarioDropCoins(slot);
        }
    } else {
        if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) || (gSpriteData[slot].warioCollision == 0x3A)) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_STARTING_ROLL:
                case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
                case WPOSE_NORMAL_ROLLING:
                case WPOSE_NORMAL_ROLLING_JUMP:
                    gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
                    WarioRequestPose(WPOSE_NORMAL_ROLLING_BONK);
                    break;

                default:
                    func_801EF94();
            }
        } else {
            SpriteCollisionTakeDamageLeft();
            SpriteCollisionMakeWarioDropCoins(slot);
        }
    }
}

void func_8021500(s32 slot)
{
    if ((gWarioData.reaction == REACTION_NORMAL) && (gTimerState != 0xB)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageRight();
                gSpriteAiMasksRemaining = 0x3C;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageLeft();
                gSpriteAiMasksRemaining = 0x3C;
            }
        }
        gSpriteAiHealth = 0;
    }
}

void func_8021564(s32 slot)
{
    if ((gWarioData.reaction == REACTION_NORMAL) && (func_801EFD4() == 0)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else if ((gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT)) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        }
    }
}

void func_80215C0(void)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        SpriteCollisionTakeDamageRight();
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        SpriteCollisionTakeDamageLeft();
    }
}

void func_80215E8(s32 slot)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
            pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
            pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8021650(s32 slot)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        }
    } else {
        gSpriteData[slot].pose = pose;
    }
}

void func_80216B8(s32 slot)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
            pose = SPOSE_6C;
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer == 0) {
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
            pose = SPOSE_6C;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8021720(s32 slot)
{
    gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
}

void func_8021734(s32 slot)
{
    gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    if ((gWarioData.reaction == REACTION_NORMAL) && (gWarioData.damageTimer == 0)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
        } else {
            func_801EF94();
        }
        gWarioData.yVelocity = 0x40;
    }
}

void func_8021784(
    s32 slot,
    u16 direction,
    u16 spriteTop,
    u16 spriteBottom,
    u16 spriteLeft,
    u16 spriteRight,
    u16 warioLeft,
    u16 warioRight
)
{
    u8 pose;

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if ((gWarioData.reaction != REACTION_NORMAL)) {
            if (gWarioData.reaction == REACTION_PUFFY) {
                gSpriteCollisionFlags &= ~1;
            } else if (spriteLeft + 5 > warioRight || spriteRight - 5 < warioLeft) {
                gSpriteCollisionFlags &= ~1;
            }
        }
        if (gPreviousYPosition > gWarioData.yPosition) {
            gSpriteCollisionFlags &= ~1;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW && gSpriteData[slot].warioCollision != 0x16 &&
               gPreviousYPosition < gWarioData.yPosition) {
        gSpriteCollisionFlags &= ~2;
        return;
    }

    pose = gSpriteData[slot].pose;
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.yPosition = spriteTop + 1;
        if (gWarioData.reaction == REACTION_NORMAL) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                    break;
            }
        } else {
            gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
            gSpriteData[slot].work1 = 2;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (gSpriteData[slot].warioCollision == 0x16) {
            gSpriteData[slot].yPosition = gWarioData.yPosition + gWarioData.hitboxOffsetTop;
            if ((gWarioData.reaction == REACTION_NORMAL) && (gWarioData.pose != WPOSE_NORMAL_DASH_ATTACK)) {
                gSpriteData[slot].work3 = U8_MAX;
                if (gWarioData.hitboxOffsetTop < -0x50) {
                    WarioRequestPose(WPOSE_NORMAL_UNKNOWN_52);
                }
            }
            gIgnoreSpriteCollision = TRUE;
            return;
        }

        gSpriteAiCollisionFlags = 0;
        func_8023BFC(spriteBottom + 0x64, gSpriteData[slot].xPosition);
        if (gSpriteAiCollisionFlags == 0) {
            gWarioData.yPosition = spriteBottom + 1 - gWarioData.hitboxOffsetTop;
        }
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = SPOSE_33;
        } else {
            pose = SPOSE_35;
        }
        if (gWarioData.unk_1A && gWarioData.yVelocity > 0) {
            gWarioData.yVelocity = 0;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        gWarioData.xPosition = spriteLeft - gWarioData.hitboxOffsetRight;
        gWarioData.xVelocity = 0;
        switch (gWarioData.reaction) {
            case REACTION_NORMAL:
                if (gSpriteData[slot].warioCollision == 0x17 || gSpriteData[slot].warioCollision == 0x18) {
                    if (direction & DPAD_RIGHT) {
                        func_801EF50();
                    }
                } else {
                    if (direction & DPAD_RIGHT) {
                        switch (gWarioData.pose) {
                            case WPOSE_NORMAL_SHOULDER_BASH:
                            case WPOSE_NORMAL_DASH_ATTACK:
                                gWarioData.unk_08 = 1;
                                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                                pose = SPOSE_TACKLED_RIGHT_INIT;
                                break;

                            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
                            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                                pose = SPOSE_TACKLED_RIGHT_INIT;
                                break;

                            case WPOSE_NORMAL_STARTING_ROLL:
                            case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
                            case WPOSE_NORMAL_ROLLING:
                            case WPOSE_NORMAL_ROLLING_JUMP:
                                gWarioData.xPosition = spriteLeft - gWarioData.hitboxOffsetRight;
                                WarioRequestPose(WPOSE_NORMAL_ROLLING_BONK);

                            default:
                                pose = SPOSE_33;
                                break;
                        }
                    }
                }
                break;

            case REACTION_FLAMING:
                if ((direction & DPAD_RIGHT) && gWarioData.pose < WPOSE_FLAMING_ENGULFED) {
                    gWarioData.horizontalDirection ^= (DPAD_LEFT | DPAD_RIGHT);
                    WarioRequestPose(gWarioData.pose + 2);
                }
                break;

            case REACTION_SNOWMAN:
                if (gWarioData.pose >= WPOSE_SNOWMAN_ROLLING_SMALL) {
                    WarioRequestPose(WPOSE_SNOWMAN_BONK);
                }
                break;

            case REACTION_FROZEN:
                WarioRequestPose(WPOSE_FROZEN_BONK);
                break;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        gWarioData.xPosition = (spriteRight - gWarioData.hitboxOffsetLeft) + 1;
        gWarioData.xVelocity = 0;
        switch (gWarioData.reaction) {
            case REACTION_NORMAL:
                if (gSpriteData[slot].warioCollision == 0x17 || gSpriteData[slot].warioCollision == 0x18) {
                    if (direction & DPAD_LEFT) {
                        func_801EF94();
                    }
                } else {
                    if (direction & DPAD_LEFT) {
                        switch (gWarioData.pose) {
                            case WPOSE_NORMAL_SHOULDER_BASH:
                            case WPOSE_NORMAL_DASH_ATTACK:
                                gWarioData.unk_08 = 1;
                                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                                pose = SPOSE_TACKLED_LEFT_INIT;
                                break;

                            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
                            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                                pose = SPOSE_TACKLED_LEFT_INIT;
                                break;

                            case WPOSE_NORMAL_STARTING_ROLL:
                            case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
                            case WPOSE_NORMAL_ROLLING:
                            case WPOSE_NORMAL_ROLLING_JUMP:
                                gWarioData.xPosition = (spriteRight - gWarioData.hitboxOffsetLeft) + 1;
                                WarioRequestPose(WPOSE_NORMAL_ROLLING_BONK);

                            default:
                                pose = SPOSE_35;
                                break;
                        }
                    }
                }
                break;

            case REACTION_FLAMING:
                if ((direction & DPAD_LEFT) && gWarioData.pose < WPOSE_FLAMING_ENGULFED) {
                    gWarioData.horizontalDirection ^= (DPAD_LEFT | DPAD_RIGHT);
                    WarioRequestPose(gWarioData.pose + 2);
                }
                break;

            case REACTION_FROZEN:
                WarioRequestPose(WPOSE_FROZEN_BONK);
                break;

            case REACTION_SNOWMAN:
                if (gWarioData.pose >= WPOSE_SNOWMAN_ROLLING_SMALL) {
                    WarioRequestPose(WPOSE_SNOWMAN_BONK);
                }
                break;
        }
    }

    if ((gSpriteData[slot].warioCollision == 0x18) || (gSpriteData[slot].warioCollision == 0x1A)) {
        gSpriteData[slot].pose = pose;
    }
}

void func_8021C30(s32 slot, u16 top)
{
    if (gWarioData.reaction == REACTION_PUFFY) {
        gSpriteCollisionFlags &= ~1;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.yPosition = top + 1;
        if (gWarioData.reaction == REACTION_NORMAL) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    if (!CHECK_KEYS_ALL(gButtonsHeld, A_BUTTON)) {
                        gWarioData.yVelocity = 0x20;
                    }
                    break;

                default:
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                    break;
            }
        } else {
            gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
            gSpriteData[slot].work1 = 2;
        }
    }
}

void func_8021CC8(s32 slot, u16 top)
{
    if (gWarioData.reaction == REACTION_PUFFY) {
        gSpriteCollisionFlags &= ~1;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.yPosition = top + 1;
        if (gWarioData.reaction == REACTION_NORMAL) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    SpriteCollisionLandOnEnemy();
                    if (!CHECK_KEYS_ALL(gButtonsHeld, A_BUTTON)) {
                        gWarioData.yVelocity = 0x20;
                    }
                    break;

                default:
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                    break;
            }
        } else {
            gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
            gSpriteData[slot].work1 = 2;
        }
        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
    }
}

void func_8021D5C(s32 slot, u16 top)
{
    if (gWarioData.reaction == REACTION_PUFFY) {
        gSpriteCollisionFlags &= ~1;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.yPosition = top + 1;
        if (gWarioData.reaction == REACTION_NORMAL) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    SpriteCollisionLandOnEnemy();
                    break;
                default:
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                    break;
            }
        } else {
            gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
            gSpriteData[slot].work1 = 2;
        }
    }
}

void func_8021DD0(s32 slot, u16 top)
{
    if (gWarioData.reaction == REACTION_PUFFY) {
        gSpriteCollisionFlags &= ~1;
    } else if (gWarioData.yVelocity >= 0) {
        gSpriteCollisionFlags &= ~1;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        gWarioData.yPosition = top + 1;
        if (gWarioData.reaction == REACTION_NORMAL) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    SpriteCollisionLandOnEnemy();
                    break;
                default:
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                    break;
            }
        } else {
            gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
            gSpriteData[slot].work1 = 2;
        }
        gSpriteData[slot].pose = SPOSE_11;
    }
}

void func_8021E6C(s32 slot, u16 bottom, u16 left, u16 right)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
        } else {
            func_801EF94();
        }
        gWarioData.yVelocity = 0x40;
        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        gSpriteAiCollisionFlags = 0;
        func_8023BFC(bottom + 0x64, gSpriteData[slot].xPosition);
        if (gSpriteAiCollisionFlags == 0) {
            gWarioData.yPosition = bottom + 1 - gWarioData.hitboxOffsetTop;
        }
        WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
        if (gWarioData.unk_1A != 0) {
            gWarioData.yVelocity = 0;
        }
        if (gWarioData.pose == WPOSE_NORMAL_LANDING_ON_ENEMY) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gWarioData.horizontalDirection = DPAD_RIGHT;
                gWarioData.xVelocity = -0x10;
            } else {
                gWarioData.horizontalDirection = DPAD_LEFT;
                gWarioData.xVelocity = 0x10;
            }
        }
        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
        func_801EF50();
        gWarioData.yVelocity = 0x40;
        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
        func_801EF94();
        gWarioData.yVelocity = 0x40;
        gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
    }
}

void func_8021F84(s32 slot, u16 left, u16 right, u16 top)
{
    if (gPreviousYPosition > gWarioData.yPosition) {
        gSpriteCollisionFlags &= 0xFE;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SUPER_GROUND_POUND:
                m4aSongNumStart(SOUND_2B);
            case WPOSE_NORMAL_GROUND_POUND:
                SpriteCollisionLandOnEnemy();
                if (!(A_BUTTON & gButtonsHeld)) {
                    gWarioData.yVelocity = 0x20;
                }
                gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                gIgnoreSpriteCollision = 1;
                break;
            default:
                if (1 & gButtonsHeld) {
                    WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
                    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                    gIgnoreSpriteCollision = 1;
                    m4aSongNumStart(SOUND_35);
                } else {
                    gWarioData.yPosition = top + 1;
                    gSpriteData[slot].status |= SPRITE_STATUS_WARIO_STANDING_ON;
                    gSpriteData[slot].work1 = 2;
                }
                break;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        func_806D5C0(gWarioData.yPosition, gWarioData.xPosition);
        if (gUnk_30000A0.unk_02 != 1) {
            gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
            WarioRequestPose(WPOSE_NORMAL_STANDING);
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        func_806D5C0(gWarioData.yPosition, gWarioData.xPosition);
        if (gUnk_30000A0.unk_02 != 1) {
            gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
            WarioRequestPose(WPOSE_NORMAL_STANDING);
        }
    }
}

void func_80220F8(s32 slot)
{
    if (gWarioData.reaction == REACTION_ZOMBIE) {
        gSpriteData[slot].pose = SPOSE_72;
    }
}

void func_8022118(s32 slot, u16 currentX, u16 previousX)
{
    if (currentX > previousX) {
        if (gWarioData.xVelocity == 0x80) {
            gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
        } else {
            gSpriteData[slot].pose = SPOSE_33;
        }
    } else {
        if (gWarioData.xVelocity == -0x80) {
            gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
        } else {
            gSpriteData[slot].pose = SPOSE_35;
        }
    }
}

void func_8022188(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_RIGHT_INIT;
            } else {
                pose = SPOSE_27;
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_LEFT_INIT;
            } else {
                pose = SPOSE_29;
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_8022220(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_RIGHT_INIT;
            } else {
                pose = SPOSE_27;
                SpriteCollisionTakeDamageRight();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (gWarioData.damageTimer) {
                pose = SPOSE_PUSHED_LEFT_INIT;
            } else {
                pose = SPOSE_29;
                SpriteCollisionTakeDamageLeft();
                SpriteCollisionMakeWarioDropCoins(slot);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

// https://decomp.me/scratch/7xzFL
#ifdef NON_MATCHING
void func_80222D8(s32 slot, u16 bottom, u16 left, u16 right)
{
    s32 facingRight;

    facingRight = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
            gWarioData.xVelocity = -0x20;
        } else {
            func_801EF94();
            gWarioData.xVelocity = 0x20;
        }
        gWarioData.yVelocity = 0x50;
        return;
    }
    if (gSpriteCollisionFlags & COLLISION_BELOW) {
        gSpriteAiCollisionFlags = 0;
        func_8023BFC(bottom + 0x64, gSpriteData[slot].xPosition);
        if (gSpriteAiCollisionFlags == 0) {
            gWarioData.yPosition = bottom + 1 - gWarioData.hitboxOffsetTop;
        }
        if (gWarioData.unk_1A) {
            gWarioData.yVelocity = 0;
        } else {
            WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gWarioData.horizontalDirection = 0x10;
                gWarioData.xVelocity = -0x20;
            } else {
                gWarioData.horizontalDirection = 0x20;
                gWarioData.xVelocity = 0x20;
            }
        }
        return;
    }
    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
        case WPOSE_NORMAL_DASH_ATTACK:
            gWarioData.unk_08 = 1;
        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if ((gSpriteData[slot].warioCollision != 0x2B) || facingRight) {
                    gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                    gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = -0x48;
                    gWarioData.yVelocity = 0x78;
                    m4aSongNumStart(SOUND_38);
                } else {
                    SpriteCollisionTakeDamageRight();
                    gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT
                }
            } else {
                if ((gSpriteData[slot].warioCollision != 0x2B) || !facingRight) {
                    gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
                    gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = 0x48;
                    gWarioData.yVelocity = 0x78;
                    m4aSongNumStart(SOUND_38);
                } else {
                    SpriteCollisionTakeDamageLeft();
                    gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
                }
            }
            return;
    }
    if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if ((gSpriteData[slot].warioCollision == 0x2B) && !facingRight) {
            SpriteCollisionTakeDamageRight();
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
        } else {
            gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
            func_801EF50();
            gWarioData.xVelocity = -0x20;
            if (gSpriteData[slot].warioCollision == 0x29) {
                gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
            }
            gWarioData.yVelocity = 0x50;
        }
    } else {
        if ((gSpriteData[slot].warioCollision == 0x2B) && facingRight) {
            SpriteCollisionTakeDamageLeft();
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
        } else {
            gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
            func_801EF94();
            gWarioData.xVelocity = 0x20;
            if (gSpriteData[slot].warioCollision == 0x29) {
                gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
            }
            gWarioData.yVelocity = 0x50;
        }
    }
}
#else
NAKED void func_80222D8(s32 slot, u16 bottom, u16 left, u16 right)
{
    __asm__(
        " \n\
	push	{r4, r5, r6, r7, lr} \n\
	mov	r7, sl \n\
	mov	r6, r9 \n\
	mov	r5, r8 \n\
	push	{r5, r6, r7} \n\
	sub	sp, #4 \n\
	add	r6, r0, #0 \n\
	lsl	r1, r1, #16 \n\
	lsr	r1, r1, #16 \n\
	mov	r9, r1 \n\
	lsl	r2, r2, #16 \n\
	lsr	r2, r2, #16 \n\
	str	r2, [sp, #0] \n\
	lsl	r3, r3, #16 \n\
	lsr	r3, r3, #16 \n\
	mov	sl, r3 \n\
	ldr	r2, .L_22330 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r7, r0, r2 \n\
	ldrh	r1, [r7, #0] \n\
	mov	r0, #64	@ 0x40 \n\
	and	r0, r1 \n\
	lsl	r0, r0, #16 \n\
	lsr	r3, r0, #16 \n\
	ldr	r0, .L_22334 \n\
	ldrb	r4, [r0, #0] \n\
	mov	r1, #1 \n\
	mov	ip, r1 \n\
	mov	r5, ip \n\
	and	r5, r4 \n\
	mov	r8, r0 \n\
	cmp	r5, #0 \n\
	beq	.L_22358 \n\
	mov	r0, #4 \n\
	and	r0, r4 \n\
	cmp	r0, #0 \n\
	beq	.L_22340 \n\
	bl	func_801EF50 \n\
	ldr	r1, .L_22338 \n\
	ldr	r0, .L_2233c \n\
	b	.L_22348 \n\
	.align	2, 0 \n\
.L_22330: \n\
	.4byte	gSpriteData \n\
.L_22334: \n\
	.4byte	gSpriteCollisionFlags \n\
.L_22338: \n\
	.4byte	gWarioData \n\
.L_2233c: \n\
	.4byte	0x0000ffe0 \n\
.L_22340: \n\
	bl	func_801EF94 \n\
	ldr	r1, .L_22354 \n\
	mov	r0, #32 \n\
.L_22348: \n\
	strh	r0, [r1, #22] \n\
	ldr	r1, .L_22354 \n\
	mov	r0, #80	@ 0x50 \n\
	strh	r0, [r1, #24] \n\
	b	.L_22510 \n\
	.align	2, 0 \n\
.L_22354: \n\
	.4byte	gWarioData \n\
.L_22358: \n\
	mov	r0, #2 \n\
	and	r0, r4 \n\
	cmp	r0, #0 \n\
	beq	.L_223cc \n\
	ldr	r4, .L_2238c \n\
	strb	r5, [r4, #0] \n\
	mov	r0, r9 \n\
	add	r0, #100	@ 0x64 \n\
	ldrh	r1, [r7, #10] \n\
	bl	func_8023BFC \n\
	ldrb	r0, [r4, #0] \n\
	cmp	r0, #0 \n\
	bne	.L_22380 \n\
	ldr	r1, .L_22390 \n\
	ldrh	r0, [r1, #52]	@ 0x34 \n\
	sub	r0, #1 \n\
	mov	r2, r9 \n\
	sub	r0, r2, r0 \n\
	strh	r0, [r1, #20] \n\
.L_22380: \n\
	ldr	r4, .L_22390 \n\
	ldrb	r0, [r4, #26] \n\
	cmp	r0, #0 \n\
	beq	.L_22394 \n\
	strh	r5, [r4, #24] \n\
	b	.L_22510 \n\
.L_2238c: \n\
	.4byte	gSpriteAiCollisionFlags \n\
.L_22390: \n\
	.4byte	gWarioData \n\
.L_22394: \n\
	ldr	r1, .L_223bc \n\
	ldrb	r0, [r4, #0] \n\
	lsl	r0, r0, #2 \n\
	add	r0, r0, r1 \n\
	ldr	r1, [r0, #0] \n\
	mov	r0, #31 \n\
	bl	_call_via_r1 \n\
	mov	r0, r8 \n\
	ldrb	r1, [r0, #0] \n\
	mov	r0, #4 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_223c4 \n\
	mov	r0, #16 \n\
	strh	r0, [r4, #14] \n\
	ldr	r0, .L_223c0 \n\
	strh	r0, [r4, #22] \n\
	b	.L_22510 \n\
	.align	2, 0 \n\
.L_223bc: \n\
	.4byte	sWarioPoseRequestFuncTable \n\
.L_223c0: \n\
	.4byte	0x0000ffe0 \n\
.L_223c4: \n\
	mov	r0, #32 \n\
	strh	r0, [r4, #14] \n\
	strh	r0, [r4, #22] \n\
	b	.L_22510 \n\
.L_223cc: \n\
	ldr	r0, .L_223e0 \n\
	ldrb	r1, [r0, #1] \n\
	add	r5, r0, #0 \n\
	cmp	r1, #22 \n\
	blt	.L_2247c \n\
	cmp	r1, #23 \n\
	ble	.L_223e4 \n\
	cmp	r1, #25 \n\
	bgt	.L_2247c \n\
	b	.L_223e8 \n\
.L_223e0: \n\
	.4byte	gWarioData \n\
.L_223e4: \n\
	mov	r1, ip \n\
	strb	r1, [r5, #8] \n\
.L_223e8: \n\
	mov	r0, r8 \n\
	ldrb	r1, [r0, #0] \n\
	mov	r0, #4 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_22434 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r4, r0, r2 \n\
	ldrb	r0, [r4, #30] \n\
	cmp	r0, #43	@ 0x2b \n\
	bne	.L_22404 \n\
	cmp	r3, #0 \n\
	beq	.L_22498 \n\
.L_22404: \n\
	ldrh	r0, [r5, #54]	@ 0x36 \n\
	ldr	r1, [sp, #0] \n\
	sub	r0, r1, r0 \n\
	strh	r0, [r5, #18] \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r0, r0, r2 \n\
	mov	r1, #31 \n\
	strb	r1, [r0, #28] \n\
	ldr	r1, .L_2242c \n\
	ldrb	r0, [r5, #0] \n\
	lsl	r0, r0, #2 \n\
	add	r0, r0, r1 \n\
	ldr	r1, [r0, #0] \n\
	mov	r0, #26 \n\
	bl	_call_via_r1 \n\
	ldr	r0, .L_22430 \n\
	b	.L_2246a \n\
	.align	2, 0 \n\
.L_2242c: \n\
	.4byte	sWarioPoseRequestFuncTable \n\
.L_22430: \n\
	.4byte	0x0000ffb8 \n\
.L_22434: \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r4, r0, r2 \n\
	ldrb	r0, [r4, #30] \n\
	cmp	r0, #43	@ 0x2b \n\
	bne	.L_22444 \n\
	cmp	r3, #0 \n\
	bne	.L_224dc \n\
.L_22444: \n\
	ldrh	r0, [r5, #50]	@ 0x32 \n\
	mov	r1, sl \n\
	sub	r0, r1, r0 \n\
	add	r0, #1 \n\
	strh	r0, [r5, #18] \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r0, r0, r2 \n\
	mov	r1, #33	@ 0x21 \n\
	strb	r1, [r0, #28] \n\
	ldr	r1, .L_22478 \n\
	ldrb	r0, [r5, #0] \n\
	lsl	r0, r0, #2 \n\
	add	r0, r0, r1 \n\
	ldr	r1, [r0, #0] \n\
	mov	r0, #26 \n\
	bl	_call_via_r1 \n\
	mov	r0, #72	@ 0x48 \n\
.L_2246a: \n\
	strh	r0, [r5, #22] \n\
	mov	r0, #120	@ 0x78 \n\
	strh	r0, [r5, #24] \n\
	mov	r0, #56	@ 0x38 \n\
	bl	m4aSongNumStart \n\
	b	.L_22510 \n\
.L_22478: \n\
	.4byte	sWarioPoseRequestFuncTable \n\
.L_2247c: \n\
	mov	r0, r8 \n\
	ldrb	r1, [r0, #0] \n\
	mov	r0, #4 \n\
	and	r0, r1 \n\
	cmp	r0, #0 \n\
	beq	.L_224cc \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r4, r0, r2 \n\
	ldrb	r0, [r4, #30] \n\
	cmp	r0, #43	@ 0x2b \n\
	bne	.L_224a2 \n\
	cmp	r3, #0 \n\
	bne	.L_224a2 \n\
.L_22498: \n\
	bl	SpriteCollisionTakeDamageRight \n\
	mov	r0, #35	@ 0x23 \n\
	strb	r0, [r4, #28] \n\
	b	.L_22510 \n\
.L_224a2: \n\
	ldrh	r0, [r5, #54]	@ 0x36 \n\
	ldr	r1, [sp, #0] \n\
	sub	r0, r1, r0 \n\
	strh	r0, [r5, #18] \n\
	bl	func_801EF50 \n\
	ldr	r0, .L_224c4 \n\
	strh	r0, [r5, #22] \n\
	ldr	r1, .L_224c8 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r1, r0, r1 \n\
	ldrb	r0, [r1, #30] \n\
	cmp	r0, #41	@ 0x29 \n\
	bne	.L_2250c \n\
	mov	r0, #35	@ 0x23 \n\
	b	.L_2250a \n\
.L_224c4: \n\
	.4byte	0x0000ffe0 \n\
.L_224c8: \n\
	.4byte	gSpriteData \n\
.L_224cc: \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r4, r0, r2 \n\
	ldrb	r0, [r4, #30] \n\
	cmp	r0, #43	@ 0x2b \n\
	bne	.L_224e6 \n\
	cmp	r3, #0 \n\
	beq	.L_224e6 \n\
.L_224dc: \n\
	bl	SpriteCollisionTakeDamageLeft \n\
	mov	r0, #37	@ 0x25 \n\
	strb	r0, [r4, #28] \n\
	b	.L_22510 \n\
.L_224e6: \n\
	add	r4, r5, #0 \n\
	ldrh	r0, [r4, #50]	@ 0x32 \n\
	mov	r2, sl \n\
	sub	r0, r2, r0 \n\
	add	r0, #1 \n\
	strh	r0, [r4, #18] \n\
	bl	func_801EF94 \n\
	mov	r0, #32 \n\
	strh	r0, [r4, #22] \n\
	ldr	r1, .L_22520 \n\
	mov	r0, #44	@ 0x2c \n\
	mul	r0, r6 \n\
	add	r1, r0, r1 \n\
	ldrb	r0, [r1, #30] \n\
	cmp	r0, #41	@ 0x29 \n\
	bne	.L_2250c \n\
	mov	r0, #37	@ 0x25 \n\
.L_2250a: \n\
	strb	r0, [r1, #28] \n\
.L_2250c: \n\
	mov	r0, #80	@ 0x50 \n\
	strh	r0, [r5, #24] \n\
.L_22510: \n\
	add	sp, #4 \n\
	pop	{r3, r4, r5} \n\
	mov	r8, r3 \n\
	mov	r9, r4 \n\
	mov	sl, r5 \n\
	pop	{r4, r5, r6, r7} \n\
	pop	{r0} \n\
	bx	r0 \n\
.L_22520: \n\
	.4byte	gSpriteData \n\
        "
    );
}
#endif

void func_8022524(s32 slot, u16 spriteTop, u16 spriteBottom, u16 warioTop, u16 warioX)
{
    if ((gWarioData.reaction == REACTION_BOUNCY && gWarioData.pose == WPOSE_BOUNCY_JUMPING) &&
        !(gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) && (spriteTop <= warioTop)) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            WarioRequestPose(WPOSE_BOUNCY_HITTING_CEILING);
            AdvanceGoldenDivaMaskGraphics();
            SpriteSpawnSecondary(warioTop, warioX, SSPRITE_40);
            SpriteSpawnAsChild(PSPRITE_0B, 0, 0, gSpriteData[slot].yPosition, gSpriteData[slot].xPosition);
            VoiceSetPlay(VS_WARIO_TREASURE);
            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
        } else {
            AdvanceGoldenDivaMaskGraphics();
            SpriteSpawnAsChild(PSPRITE_0B, 0, 0, gSpriteData[slot].yPosition, gSpriteData[slot].xPosition);
            VoiceSetPlay(VS_WARIO_TREASURE);
            gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(1);
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                SpriteSpawnSecondary(warioTop, warioX + BLOCK_SIZE - PIXEL_SIZE, SSPRITE_40);
            } else {
                SpriteSpawnSecondary(warioTop, warioX - (BLOCK_SIZE - PIXEL_SIZE), SSPRITE_40);
            }
        }
        return;
    }

    if (gWarioData.reaction != REACTION_NORMAL) {
        return;
    }
    if (gWarioData.damageTimer != 0) {
        return;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
            gWarioData.xVelocity = -0x20;
        } else {
            func_801EF94();
            gWarioData.xVelocity = 0x20;
        }
        gWarioData.yVelocity = 0x40;
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        gSpriteAiCollisionFlags = 0;
        func_8023BFC(spriteBottom + 0x64, gSpriteData[slot].xPosition);
        if (gSpriteAiCollisionFlags == 0) {
            gWarioData.yPosition = spriteBottom + 1 - gWarioData.hitboxOffsetTop;
        }
        if (gWarioData.unk_1A != 0) {
            gWarioData.yVelocity = 0;
        } else {
            WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gWarioData.horizontalDirection = 0x10;
                gWarioData.xVelocity = -0x10;
            } else {
                gWarioData.horizontalDirection = 0x20;
                gWarioData.xVelocity = 0x10;
            }
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        func_801EF50();
        gWarioData.xVelocity = -0x20;
        gWarioData.yVelocity = 0x40;
    } else {
        func_801EF94();
        gWarioData.xVelocity = 0x20;
        gWarioData.yVelocity = 0x40;
    }
    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
}

void func_8022724(s32 slot, u16 direction)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gWarioData.damageTimer != 0) {
            return;
        }
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
            gWarioData.xVelocity = -0x20;
        } else {
            func_801EF94();
            gWarioData.xVelocity = 0x20;
        }
        gWarioData.yVelocity = 0x50;
        return;
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW && gSpriteData[slot].warioCollision == 0x43) {
        if (gWarioData.damageTimer != 0) {
            return;
        }
        WarioRequestPose(WPOSE_NORMAL_UNKNOWN_60);
        gWarioData.xVelocity = 0;
        gWarioData.yVelocity = 0;
        gWarioData.yPosition = gSpriteData[slot].yPosition - gWarioData.hitboxOffsetTop;
        gWarioData.xPosition = gSpriteData[slot].xPosition;
        gSpriteAiHealth = 1;
        gSpriteData[slot].pOamData = sUnk_83B9E50;
        gSpriteData[slot].currentAnimationFrame = 0;
        gSpriteData[slot].animationTimer = 0;
        gSpriteData[slot].warioCollision = 0;
        VoiceSetPlay(VS_WARIO_HURT);
        return;
    }

    if ((gWarioData.damageTimer != 0) && (gSpriteData[slot].warioCollision != 0x44)) {
        return;
    }

    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
        case WPOSE_NORMAL_DASH_ATTACK:
            gWarioData.unk_08 = 1;
        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                if (!(direction & DPAD_RIGHT)) {
                    break;
                }
                if (gSpriteData[slot].warioCollision == 0x44) {
                    gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                    gSpriteAiAttackPhase = 1;
                }
                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                gWarioData.xVelocity = -0x20;
                gWarioData.yVelocity = 0x40;
                gSpriteData[slot].warioCollision = 0;
            } else if (direction & DPAD_LEFT) {
                if (gSpriteData[slot].warioCollision == 0x44) {
                    gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                    gSpriteAiAttackPhase = 1;
                }
                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                gWarioData.xVelocity = 0x20;
                gWarioData.yVelocity = 0x40;
                gSpriteData[slot].warioCollision = 0;
            }
            break;

        default:
            if (gWarioData.damageTimer) {
                break;
            }
            if ((gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) && (gSpriteData[slot].warioCollision == 0x42) &&
                (gWarioData.unk_1A != 0)) {
                WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
                gWarioData.yVelocity = 0;
            } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                func_801EF50();
                gWarioData.xVelocity = -0x28;
                gWarioData.yVelocity = 0x48;
            } else {
                func_801EF94();
                gWarioData.xVelocity = 0x28;
                gWarioData.yVelocity = 0x48;
            }
    }
}

void func_8022948(s32 slot, u16 top)
{
    if ((gPreviousYPosition > gWarioData.yPosition) || (gWarioData.yPosition > top + HALF_BLOCK_SIZE)) {
        gSpriteCollisionFlags &= 0xFE;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteData[slot].warioCollision == 0x3F) {
            switch (gWarioData.pose) {
                case 0x1C:
                    m4aSongNumStart(SOUND_2B);
                case 0x1B:
                    if (gSpriteAiMaskGraphicsTimer == 0) {
                        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    }
                    SpriteCollisionLandOnEnemy();
                    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
                    return;
            }
        }
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
            gWarioData.xVelocity = -0x20;
        } else {
            func_801EF94();
            gWarioData.xVelocity = 0x20;
        }
        gWarioData.yVelocity = 0x50;
    } else {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SHOULDER_BASH:
            case WPOSE_NORMAL_DASH_ATTACK:
                gWarioData.unk_08 = 1;
            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) && (gSpriteAiMaskGraphicsTimer == 0)) {
                        gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                    }
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = -0x30;
                } else {
                    if ((gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT) && (gSpriteAiMaskGraphicsTimer == 0)) {
                        gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                    }
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = 0x30;
                }
                gWarioData.yVelocity = 0x60;
                m4aSongNumStart(SOUND_38);
                break;

            default:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    func_801EF50();
                    gWarioData.xVelocity = -0x20;
                } else {
                    func_801EF94();
                    gWarioData.xVelocity = 0x20;
                }
                gWarioData.yVelocity = 0x50;
                break;
        }
    }
    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
}

void func_8022AE8(s32 slot, u16 left, u16 right)
{
    u8 childSlot;

    childSlot = gSpriteData[slot].work3;
    switch (gWarioData.pose) {
        case WPOSE_NORMAL_SHOULDER_BASH:
        case WPOSE_NORMAL_DASH_ATTACK:
            gWarioData.unk_08 = 1;
        case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                gWarioData.xVelocity = -0x48;
                gWarioData.yVelocity = 0x78;
                SpriteSpawnSecondary(
                    gSpriteData[slot].yPosition, gSpriteData[slot].xPosition - HALF_BLOCK_SIZE, SSPRITE_06
                );
            } else {
                gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                gWarioData.xVelocity = 0x48;
                gWarioData.yVelocity = 0x78;
                SpriteSpawnSecondary(
                    gSpriteData[slot].yPosition, gSpriteData[slot].xPosition + HALF_BLOCK_SIZE, SSPRITE_06
                );
            }
            if (gSpriteAiMaskGraphicsTimer == 0) {
                gSpriteData[childSlot].pose = SPOSE_6C;
            }
            m4aSongNumStart(SOUND_38);
            break;

        default:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                func_801EF50();
                gWarioData.xVelocity = -0x20;
                gWarioData.yVelocity = 0x50;
                if (gSpriteAiMaskGraphicsTimer == 0) {
                    gSpriteData[childSlot].pose = SPOSE_TACKLED_RIGHT_INIT;
                }
            } else {
                gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
                func_801EF94();
                gWarioData.xVelocity = 0x20;
                gWarioData.yVelocity = 0x50;
                if (gSpriteAiMaskGraphicsTimer == 0) {
                    gSpriteData[childSlot].pose = SPOSE_TACKLED_LEFT_INIT;
                }
            }
            break;
    }
    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
    gSpriteData[childSlot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
}

void func_8022C64(s32 slot)
{
    if (gTimerState == 0xB) {
        return;
    }

    if (gWarioData.reaction == REACTION_NORMAL) {
        if (gWarioData.damageTimer) {
            func_801E884(slot);
            return;
        }

        if (gSpriteAiDynamicGraphicsTimer) {
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                SpriteCollisionTakeDamageRight();
            } else {
                SpriteCollisionTakeDamageLeft();
            }
        } else {
            SpriteCollisionTransformWarioPuffy();
        }

        gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
        gSpriteAiHealth = 0x14;
        return;
    }

    func_801E92C(slot);
}

void func_8022CE8(
    s32 slot,
    u16 warioY,
    u16 warioX,
    u16 warioLeft,
    u16 warioRight,
    u16 spriteLeft,
    u16 spriteRight,
    u16 direction
)
{
    if ((warioX < spriteLeft) || (warioX > spriteRight)) {
        gSpriteCollisionFlags &= 0xFD;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (!(gSpriteCollisionFlags & SPRITE_COLLISION_LEFT)) {
            func_801EF94();
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
            gWarioData.xVelocity = 0x20;
        } else {
            func_801EF50();
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
            gWarioData.xVelocity = -0x20;
        }
        gWarioData.yVelocity = 0x40;
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
            func_801EEE0();
        } else {
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
            func_801EE9C();
        }
    } else {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SHOULDER_BASH:
            case WPOSE_NORMAL_DASH_ATTACK:
                gWarioData.unk_08 = 1;
            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    if (direction & DPAD_RIGHT) {
                        gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                        WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                        gWarioData.xVelocity = -0x20;
                        gWarioData.yVelocity = 0x40;
                        SpriteSpawnSecondary(warioY - BLOCK_SIZE, warioRight + HALF_BLOCK_SIZE, SSPRITE_40);
                        m4aSongNumStart(SOUND_38);
                    } else {
                        gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
                    }
                } else {
                    if (direction & DPAD_LEFT) {
                        gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                        WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                        gWarioData.xVelocity = 0x20;
                        gWarioData.yVelocity = 0x40;
                        SpriteSpawnSecondary(warioY - BLOCK_SIZE, warioLeft - HALF_BLOCK_SIZE, SSPRITE_40);
                        m4aSongNumStart(SOUND_38);
                    } else {
                        gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
                    }
                }
                break;

            default:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    func_801EF50();
                    gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
                    gWarioData.xVelocity = -0x20;
                } else {
                    func_801EF94();
                    gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
                    gWarioData.xVelocity = 0x20;
                }
                gWarioData.yVelocity = 0x40;
                break;
        }
    }
    gSpriteData[slot].disableWarioCollisionTimer = CONVERT_SECONDS(0.25);
}

void func_8022EF8(s32 slot, u16 left, u16 right)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
        } else {
            func_801EF94();
        }
        gWarioData.yVelocity = 0x40;
        return;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (gWarioData.unk_1A != 0) {
            gWarioData.yVelocity = 0;
        }
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
        } else {
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
        }
        return;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
        func_801EF50();
        gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
    } else {
        gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
        func_801EF94();
        gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
    }
    gWarioData.yVelocity = 0x40;
}

void func_8022FC8(s32 slot, u16 left, u16 right)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
        } else {
            func_801EF94();
        }
        gWarioData.yVelocity = 0x40;
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (gWarioData.unk_1A != 0) {
            gWarioData.yVelocity = 0;
        }
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
        } else {
            gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
        }
    } else {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SHOULDER_BASH:
            case WPOSE_NORMAL_DASH_ATTACK:
                gWarioData.unk_08 = 1;
            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                    gSpriteData[slot].pose = SPOSE_TACKLED_RIGHT_INIT;
                } else {
                    gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
                    gSpriteData[slot].pose = SPOSE_TACKLED_LEFT_INIT;
                }
                WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                m4aSongNumStart(SOUND_38);
                break;

            default:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                    func_801EF50();
                    gSpriteData[slot].pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
                    func_801EF94();
                    gSpriteData[slot].pose = SPOSE_PUSHED_LEFT_INIT;
                }
                gWarioData.yVelocity = 0x40;
                break;
        }
    }
}

void func_8023110(s32 slot, u16 left, u16 right)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            func_801EF50();
        } else {
            func_801EF94();
        }
        gWarioData.yVelocity = 0x40;
    } else {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SHOULDER_BASH:
            case WPOSE_NORMAL_DASH_ATTACK:
                gWarioData.unk_08 = 1;
            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = -0x30;
                } else {
                    gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
                    WarioRequestPose(WPOSE_NORMAL_SHOULDER_BASH_BONK);
                    gWarioData.xVelocity = 0x30;
                }
                gWarioData.yVelocity = 0x50;
                break;

            default:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    func_801EF50();
                    gWarioData.xVelocity = -0x20;
                } else {
                    func_801EF94();
                    gWarioData.xVelocity = 0x20;
                }
                gWarioData.yVelocity = 0x50;
                break;
        }
    }
}

void func_80231F8(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                pose = SPOSE_33;
                if (gWarioData.damageTimer == 0) {
                    SpriteCollisionTransformWarioBouncy();
                }
            } else {
                pose = SPOSE_35;
                if (gWarioData.damageTimer == 0) {
                    SpriteCollisionTransformWarioBouncy();
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = func_801F14C(slot, TRUE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            pose = func_801F14C(slot, FALSE);
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80232C4(s32 slot, u16 direction)
{
    u16 status;
    u8 pose;

    status = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (!pose) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                pose = SPOSE_33;
                if (gWarioData.damageTimer == 0) {
                    SpriteCollisionTransformWarioBouncy();
                }
            } else {
                pose = SPOSE_35;
                if (gWarioData.damageTimer == 0) {
                    SpriteCollisionTransformWarioBouncy();
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (!status) {
                pose = SPOSE_33;
                SpriteCollisionTransformWarioBouncy();
            } else {
                pose = func_801F14C(slot, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (status) {
                pose = SPOSE_35;
                if (gWarioData.damageTimer == 0) {
                    SpriteCollisionTransformWarioBouncy();
                }
            } else {
                pose = func_801F14C(slot, FALSE);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80233B8(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                    SpriteCollisionMakeWarioDropCoins(slot);
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            pose = func_801F14C(slot, TRUE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            pose = func_801F14C(slot, FALSE);
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_802349C(s32 slot, u16 direction)
{
    u16 status;
    u8 pose;

    status = gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT;
    pose = func_801EFD4();
    if (!pose) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
                    break;
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                }
            } else {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                }
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            if (!status) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_RIGHT_INIT;
                } else {
                    pose = SPOSE_27;
                    SpriteCollisionTakeDamageRight();
                }
            } else {
                pose = func_801F14C(slot, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            if (status) {
                if (gWarioData.damageTimer) {
                    pose = SPOSE_PUSHED_LEFT_INIT;
                } else {
                    pose = SPOSE_29;
                    SpriteCollisionTakeDamageLeft();
                }
            } else {
                pose = func_801F14C(slot, FALSE);
            }
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80235A0(s32 slot, u16 direction)
{
    u8 pose;

    pose = func_801EFD4();
    if (pose != 0) {
        gSpriteData[slot].pose = pose;
        return;
    }

    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SUPER_GROUND_POUND:
                m4aSongNumStart(SOUND_2B);
            case WPOSE_NORMAL_GROUND_POUND:
                pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                SpriteCollisionLandOnEnemy();
                break;

            case WPOSE_NORMAL_SHOULDER_BASH:
            case WPOSE_NORMAL_DASH_ATTACK:
            case WPOSE_NORMAL_SHOULDER_BASH_JUMP:
            case WPOSE_NORMAL_DASH_ATTACK_JUMP:
                pose = func_801F00C(slot, direction, TRUE);
                break;

            default:
                if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                    pose = SPOSE_33;
                    func_801EF50();
                } else {
                    pose = SPOSE_35;
                    func_801EF94();
                }
                gWarioData.yVelocity = 0x40;
                break;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
        if (!(gSpriteData[slot].status & SPRITE_STATUS_FACING_RIGHT)) {
            if ((gWarioData.damageTimer != 0) || (gSpriteData[slot].warioCollision == 0x32)) {
                pose = SPOSE_PUSHED_RIGHT_INIT;
            } else {
                pose = SPOSE_27;
                SpriteCollisionTransformWarioPuffy();
            }
        } else if ((gWarioData.damageTimer != 0) || (gSpriteData[slot].warioCollision == 0x32)) {
            pose = SPOSE_PUSHED_LEFT_INIT;
        } else {
            pose = SPOSE_29;
            SpriteCollisionTransformWarioPuffy();
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        pose = func_801F14C(slot, TRUE);
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
        pose = func_801F14C(slot, FALSE);
    } else {
        pose = gSpriteData[slot].pose;
    }
    gSpriteData[slot].pose = pose;
}

void func_80236C4(s32 slot, u16 direction, u16 left, u16 right)
{
    u8 pose;

    pose = 0;
    switch (gWarioData.pose) {
        case WPOSE_NORMAL_STARTING_ROLL:
        case WPOSE_NORMAL_JUMPING_OUT_OF_ROLL:
        case WPOSE_NORMAL_ROLLING:
        case WPOSE_NORMAL_ROLLING_JUMP:
            if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                pose = SPOSE_TACKLED_RIGHT_INIT;
                gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
            } else {
                pose = SPOSE_TACKLED_LEFT_INIT;
                gWarioData.xPosition = right - gWarioData.hitboxOffsetLeft + 1;
            }
            WarioRequestPose(WPOSE_NORMAL_ROLLING_BONK);
    }

    if (pose == 0) {
        if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
            switch (gWarioData.pose) {
                case WPOSE_NORMAL_SUPER_GROUND_POUND:
                    m4aSongNumStart(SOUND_2B);
                case WPOSE_NORMAL_GROUND_POUND:
                    pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                    SpriteCollisionLandOnEnemy();
                    break;

                default:
                    pose = func_801F00C(slot, direction, TRUE);
            }
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_BELOW) {
            pose = func_801F00C(slot, direction, FALSE);
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
            gWarioData.xPosition = left - gWarioData.hitboxOffsetRight;
            func_801EF50();
            gWarioData.yVelocity = 0x40;
            pose = SPOSE_PUSHED_RIGHT_INIT;
        } else if (gSpriteCollisionFlags & SPRITE_COLLISION_RIGHT) {
            gWarioData.xPosition = (right - gWarioData.hitboxOffsetLeft) + 1;
            func_801EF94();
            gWarioData.yVelocity = 0x40;
            pose = SPOSE_PUSHED_LEFT_INIT;
        } else {
            pose = gSpriteData[slot].pose;
        }
    }
    gSpriteData[slot].pose = pose;
}

void func_80237E4(s32 slot)
{
    if (gSpriteCollisionFlags & SPRITE_COLLISION_ABOVE) {
        switch (gWarioData.pose) {
            case WPOSE_NORMAL_SUPER_GROUND_POUND:
                m4aSongNumStart(SOUND_2B);
            case WPOSE_NORMAL_GROUND_POUND:
                gSpriteData[slot].pose = SPOSE_CRUSHED_OR_COLLECTED_INIT;
                SpriteCollisionLandOnEnemy();
                break;

            default:
                if (gWarioData.damageTimer == 0) {
                    if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
                        WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
                        gWarioData.xVelocity = -0x14;
                    } else {
                        WarioRequestPose(WPOSE_NORMAL_LANDING_ON_ENEMY);
                        gWarioData.xVelocity = 0x14;
                    }
                    gWarioData.yVelocity = 0x64;
                }
                break;
        }
    } else if (gSpriteCollisionFlags & SPRITE_COLLISION_LEFT) {
        if (gWarioData.damageTimer == 0) {
            SpriteCollisionTakeDamageRight();
            gSpriteAiMasksRemaining = 0x3C;
            gSpriteAiHealth = 0;
        }
    }
}
