#include "sprite_ai/spoiled_rotten.h"

#include "color_effects.h"
#include "global_data.h"
#include "hud.h"
#include "main.h"
#include "score.h"
#include "sprite.h"
#include "sound.h"
#include "wario.h"
#include "voice_set.h"
#include "sprite_util.h"

void func_803AB4C(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 value asm("r0");
    register u32 oldValue asm("r1");
    register u32 zeroHalf asm("r3");
    register u32 zeroByte asm("r2");
    register u8 *field asm("r1");
    register u8 *otherField asm("r0");

    gUnk_3000A62 = 90;
    sprite = &gCurrentSprite;

    oldValue = sprite->drawPriority;
    value = 0x80;
    zeroHalf = 0;
    value |= oldValue;
    sprite->drawPriority = value;

    oldValue = sprite->status;
    value = 0x28;
    zeroByte = 0;
    value |= oldValue;
    sprite->status = value;

    field = (u8 *)sprite;
    field += 32;
    value = 64;
    *field = value;

    otherField = (u8 *)sprite;
    otherField += 33;
    *otherField = zeroByte;

    field += 2;
    value = 48;
    *field = value;
    field++;
    value = 184;
    *field = value;

    otherField = (u8 *)sprite;
    otherField += 36;
    *otherField = zeroByte;

    field += 2;
    value = 72;
    *field = value;
    field++;
    asm("" : "+r"(field));
    value = 68;
    *field = value;

    value = 41;
    sprite->warioCollision = value;
    value = 10;
    sprite->health = value;
    value = 1;
    sprite->pose = value;
    sprite->pOamData = sSpoiledRottenOam_83C302C;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;

    SpriteUtilTurnTowardWario();
    func_80747D8();

    field = (u8 *)sprite;
    field += 39;
    value = 60;
    *field = value;

    func_8070964(131, 8, 1);
}

void func_803ABD8(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    u8 *timer;

    sprite = &gCurrentSprite;
    sprite->currentAnimationFrame = 0;
    timer = &sprite->work0;

    if (*timer != 0) {
        (*timer)--;
        if (*timer != 0) {
            return;
        }
        *gUnk_30000F4 = 7;
    }

    if (*gUnk_30000F4 != 0) {
        return;
    }

    if (gCurrentShopItem == 0) {
        gUnk_3000A62--;
        if (gUnk_3000A62 != 0) {
            return;
        }
        SpriteUtilStartBossTimer();
    }

    sprite->pose = 2;
}

void func_803AC38(void)
{
    struct PrimarySpriteData *sprite;

    sprite = &gCurrentSprite;
    sprite->currentAnimationFrame = 0;

    if (gWarioPauseTimer != 0 || gTimerState != 1) {
        return;
    }

    sprite->drawPriority &= 0x7F;
    sprite->pose = 15;

    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 272, sprite->xPosition + 144);
    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 256, sprite->xPosition + 128);
    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 288, sprite->xPosition + 112);
    SpriteSpawnAsChild(PSPRITE_A9, 0, 0, sprite->yPosition - 256, sprite->xPosition + 128);

    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 272, sprite->xPosition - 144);
    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 256, sprite->xPosition - 128);
    SpriteSpawnAsChild(PSPRITE_0B, 0, 0, sprite->yPosition - 288, sprite->xPosition - 112);
    SpriteSpawnAsChild(PSPRITE_A9, 0, 0, sprite->yPosition - 256, sprite->xPosition - 128);

    m4aSongNumStart(SOUND_9D);
}

void func_803AD2C(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u8 collision;

    sprite = &gCurrentSprite;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    collision = sprite->warioCollision;
    current = sprite;

    if (collision == 42) {
        switch (*((u8 *)sprite + 29)) {
            case 0:
            case 1:
            case 2:
            case 3:
                current->pOamData = sSpoiledRottenOam_83C2FAC;
                asm("" ::: "memory");
                break;
            case 4:
            case 5:
                current->pOamData = sSpoiledRottenOam_83C2ED4;
                asm("" ::: "memory");
                break;
            case 6:
            case 7:
                current->pOamData = sSpoiledRottenOam_83C2DFC;
                asm("" ::: "memory");
                break;
            case 8:
            case 9:
                current->pOamData = sSpoiledRottenOam_83C2D24;
                asm("" ::: "memory");
                break;
            default:
                sprite->pOamData = sSpoiledRottenOam_83C2C4C;
                break;
        }
    } else {
        switch (*((u8 *)sprite + 29)) {
            case 0:
            case 1:
            case 2:
            case 3:
                current->pOamData = sSpoiledRottenOam_83C2F74;
                asm("" ::: "memory");
                break;
            case 4:
            case 5:
                current->pOamData = sSpoiledRottenOam_83C2E9C;
                asm("" ::: "memory");
                break;
            case 6:
            case 7:
                current->pOamData = sSpoiledRottenOam_83C2DC4;
                asm("" ::: "memory");
                break;
            case 8:
            case 9:
                current->pOamData = sSpoiledRottenOam_83C2CEC;
                asm("" ::: "memory");
                break;
            default:
                sprite->pOamData = sSpoiledRottenOam_83C2C14;
                break;
        }
    }
}

void func_803AE30(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u8 collision;

    func_8023B88();
    sprite = &gCurrentSprite;

    if (sprite->status & 0x40) {
        if (gUnk_3000A50 & 0xF0) {
            func_8023BFC(sprite->yPosition, sprite->xPosition + sprite->hitboxExtentRight);
            if (!(gUnk_3000A51 & 0xF0)) {
                sprite->pose = 17;
                return;
            }

            func_8023BFC(sprite->yPosition - 32,
                         sprite->xPosition + sprite->hitboxExtentRight + 160);
            if (gUnk_3000A51 & 0xF) {
                sprite->pose = 17;
                return;
            }
        }

        collision = gCurrentSprite.warioCollision;
        current = &gCurrentSprite;
        if (collision == 42) {
            current->xPosition += 2;
        } else {
            current->xPosition++;
        }
    } else {
        if (gUnk_3000A50 & 0xF0) {
            func_8023BFC(sprite->yPosition, sprite->xPosition - sprite->hitboxExtentLeft);
            if (!(gUnk_3000A51 & 0xF0)) {
                sprite->pose = 17;
                return;
            }

            func_8023BFC(sprite->yPosition - 32,
                         sprite->xPosition - sprite->hitboxExtentLeft - 160);
            if (gUnk_3000A51 & 0xF) {
                sprite->pose = 17;
                return;
            }
        }

        collision = gCurrentSprite.warioCollision;
        current = &gCurrentSprite;
        if (collision == 42) {
            current->xPosition -= 2;
        } else {
            current->xPosition--;
        }
    }

    if ((*(u32 *)((u8 *)current + 20) & 0xFFFFFF) == 0x10005) {
        m4aSongNumStart(SOUND_9C);
    }
}

void func_803AF50(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u8 work2;

    sprite = &gCurrentSprite;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 18;
    sprite->work0 = 13;
    work2 = *((u8 *)sprite + 29);
    current = sprite;

    switch (work2) {
        case 0:
        case 1:
        case 2:
        case 3:
            current->pOamData = sSpoiledRottenOam_83C2FE4;
            asm("" ::: "memory");
            break;
        case 4:
        case 5:
            current->pOamData = sSpoiledRottenOam_83C2F0C;
            asm("" ::: "memory");
            break;
        case 6:
        case 7:
            current->pOamData = sSpoiledRottenOam_83C2E34;
            asm("" ::: "memory");
            break;
        case 8:
        case 9:
            current->pOamData = sSpoiledRottenOam_83C2D5C;
            asm("" ::: "memory");
            break;
        default:
            sprite->pOamData = sSpoiledRottenOam_83C2C84;
            break;
    }
}

void func_803AFE4(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u8 *timer;
    u8 value;
    u8 work2;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = --(*timer);
    current = sprite;

    if (value != 0) {
        return;
    }

    if (sprite->pose == 18) {
        sprite->pose = 20;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        *timer = 7;
        sprite->status ^= 0x40;
        work2 = *((u8 *)sprite + 29);

        switch (work2) {
            case 0:
            case 1:
            case 2:
            case 3:
                current->pOamData = sSpoiledRottenOam_83C3004;
                asm("" ::: "memory");
                break;
            case 4:
            case 5:
                current->pOamData = sSpoiledRottenOam_83C2F2C;
                asm("" ::: "memory");
                break;
            case 6:
            case 7:
                current->pOamData = sSpoiledRottenOam_83C2E54;
                asm("" ::: "memory");
                break;
            case 8:
            case 9:
                current->pOamData = sSpoiledRottenOam_83C2D7C;
                asm("" ::: "memory");
                break;
            default:
                sprite->pOamData = sSpoiledRottenOam_83C2CA4;
                asm("" ::: "memory");
                break;
        }
    } else {
        sprite->pose = 23;
    }
}

void func_803B0A0(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u8 work2;

    sprite = &gCurrentSprite;
    sprite->warioCollision = 41;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 24;
    sprite->work0 = 20;
    work2 = *((u8 *)sprite + 29);
    current = sprite;

    switch (work2) {
        case 0:
        case 1:
        case 2:
        case 3:
            current->warioCollision = 43;
            current->pOamData = sSpoiledRottenOam_83C306C;
            asm("" ::: "memory");
            break;
        case 4:
        case 5:
            current->pOamData = sSpoiledRottenOam_83C305C;
            asm("" ::: "memory");
            break;
        case 6:
        case 7:
            current->pOamData = sSpoiledRottenOam_83C304C;
            asm("" ::: "memory");
            break;
        case 8:
        case 9:
            current->pOamData = sSpoiledRottenOam_83C303C;
            asm("" ::: "memory");
            break;
        default:
            sprite->pOamData = sSpoiledRottenOam_83C302C;
            break;
    }
}

void func_803B13C(void)
{
    struct PrimarySpriteData *sprite;
    u8 *timer;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    if (--(*timer) == 0) {
        sprite->pose = 15;
        sprite->status &= 0xFDFF;
    }
}

void func_803B164(void)
{
    register struct PrimarySpriteData *current asm("r4");
    register const struct AnimationFrame *oam asm("r5");
    register struct PrimarySpriteData *sprite asm("r2");
    register u32 value asm("r0");
    register u32 other asm("r1");
    struct PrimarySpriteData *end;
    u8 zero;

    asm("" ::: "r6");
    current = &gCurrentSprite;
    oam = sSpoiledRottenOam_83C30F4;
    sprite = gSpriteData;
    end = (struct PrimarySpriteData *)((u8 *)sprite + 1012);

    do {
        value = sprite->globalID;
        if (value == PSPRITE_A9) {
            other = sprite->status;
            value = 1;
            value &= other;
            if (value != 0) {
                value = 107;
                sprite->pose = value;
                value = sprite->drawPriority;
                other = 0x80;
                value |= other;
                sprite->drawPriority = value;
            }
        }
        sprite++;
    } while ((s32)sprite <= (s32)end);

    zero = 0;
    current->drawPriority = 0x80;
    current->disableWarioCollisionTimer = 1;
    *((u8 *)current + 29) = zero;
    current->currentAnimationFrame = zero;
    current->animationTimer = zero;
    current->pOamData = oam;
    current->pose = 50;
    current->work0 = 31;
    current->status = (current->status & 0xFEFF) | 0x200;

    func_801E430(10, current->roomSlot, 0, current->yPosition, current->xPosition);
    current->yPosition -= 128;
    m4aSongNumStart(SOUND_9B);
}

void func_803B1F8(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *current asm("r2");
    u8 *timer;
    register u8 *finalTimer asm("r1");
    u8 value;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    value = sprite->work0;
    current = sprite;

    if (value != 0) {
        if (value == 24) {
            func_801E430(11, current->roomSlot, 0,
                         current->yPosition - 64, current->xPosition - 96);
        } else if (value == 17) {
            func_801E430(12, current->roomSlot, 0,
                         current->yPosition - 96, current->xPosition + 64);
        } else if (value == 10) {
            func_801E430(11, current->roomSlot, 0,
                         current->yPosition - 112, current->xPosition + 96);
        } else if (value == 3) {
            func_801E430(12, current->roomSlot, 0,
                         current->yPosition - 144, current->xPosition - 64);
        }

        sprite = &gCurrentSprite;
        timer = &sprite->work0;
        value = --(*timer);
        current = sprite;
        if (value != 0) {
            return;
        }
    }

    current->status |= 4;
    current->pose = 109;
    finalTimer = &current->work0;
    *finalTimer = 70;
    SpriteUtilFadeBackgroundToBlack();
}

void func_803B2A0(void)
{
    struct PrimarySpriteData *sprite;
    u8 *timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;

    if (*timer != 0) {
        (*timer)--;
        return;
    }

    {
        register u8 *flagPtr asm("r0");
        u8 flagValue;

        flagPtr = &gUnk_30000FC;
        flagValue = *flagPtr;
        if (flagValue != 0) {
            return;
        }

        sprite->status = flagValue;
    }

    gSubGameMode = 6;
    gUnk_3000021 = 0;
    gStageExitType = 5;
}

void func_803B2EC(void)
{
    struct PrimarySpriteData *sprite;
    u8 work2;

    switch (gCurrentShopItem) {
        case 2:
            work2 = 7;
            break;
        case 3:
            work2 = 4;
            break;
        case 4:
            work2 = 2;
            break;
        default:
            work2 = 8;
            break;
    }

    sprite = &gCurrentSprite;
    sprite->work2 = work2;
    sprite->pOamData = sSpoiledRottenOam_83C301C;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work1 = 0;
    sprite->pose = 117;

    if (sprite->health != 0) {
        sprite->health--;
        func_80747D8();
        m4aSongNumStart(SOUND_7A);
    }

    if (sprite->health > 2) {
        VoiceSetPlay(VS_16);
    } else {
        m4aSongNumStart(SOUND_A0);
    }
}

void func_803B36C(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *work1Ptr asm("r4");
    u8 previousWork1;
    u8 newWork1;

    sprite = &gCurrentSprite;
    work1Ptr = &sprite->work1;

    {
        register u32 oldRaw asm("r0");
        register u32 newRaw asm("r1");

        oldRaw = *work1Ptr;
        newRaw = oldRaw + 1;
        *work1Ptr = newRaw;
        oldRaw <<= 24;
        previousWork1 = oldRaw >> 24;
        newRaw <<= 24;
        newWork1 = newRaw >> 24;
    }

    if (newWork1 == 32) {
        register u8 *work2Ptr asm("r0");
        register u8 health asm("r3");
        u8 currentHealth;

        work2Ptr = &sprite->work2;
        health = sprite->health;
        currentHealth = health;

        if (currentHealth == *work2Ptr) {
            sprite->pose = 118;
        } else {
            *work1Ptr = 0;
            if (currentHealth != 0) {
                register u8 nextHealth asm("r0");

                nextHealth = health - 1;
                sprite->health = nextHealth;
                func_80747D8();
                m4aSongNumStart(SOUND_7A);
            }
        }
    }

    if ((previousWork1 & 7) == 0) {
        if (8 & previousWork1) {
            gCurrentSprite.palette = 0;
        } else {
            gCurrentSprite.palette = 4;
        }
    }
}

void func_803B3E0(void)
{
    register struct PrimarySpriteData *base asm("r0");
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 health asm("r1");

    base = &gCurrentSprite;
    health = base->health;
    sprite = base;

    switch (health) {
        case 0:
        case 1:
        case 2:
        case 3:
            sprite->pOamData = sSpoiledRottenOam_83C2F44;
            break;
        case 4:
        case 5:
            sprite->pOamData = sSpoiledRottenOam_83C2E6C;
            break;
        case 6:
        case 7:
            sprite->pOamData = sSpoiledRottenOam_83C2D94;
            break;
        default:
            sprite->pOamData = sSpoiledRottenOam_83C2CBC;
            break;
    }

    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 2;
    sprite->work0 = 36;
    sprite->pose = 119;
}

void func_803B454(void)
{
    struct PrimarySpriteData *sprite;
    u8 *timer;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;

    if (--(*timer) != 0) {
        return;
    }

    sprite->pose = 2;

    if (gTimerState == 11) {
        gWarioPauseTimer = 1000;
        SpriteUtilFadeBackgroundToBlack();
        func_803B164();
    } else {
        SpriteUtilStartBossTimer();
    }
}

void func_803B49C(void)
{
    struct PrimarySpriteData *sprite;

    sprite = &gCurrentSprite;
    sprite->pOamData = sSpoiledRottenOam_83C301C;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work1 = 0;
    sprite->warioCollision = 42;
    sprite->pose = 32;

    if (gWarioData.horizontalDirection == 32) {
        SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition + 96, 6);
    } else {
        SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition - 96, 6);
    }

    {
        register struct PrimarySpriteData *healthSprite asm("r1");
        register u32 health asm("r0");

        healthSprite = &gCurrentSprite;
        health = healthSprite->health;
        if (health != 0) {
            health--;
            healthSprite->health = health;
            health <<= 24;
            if (health == 0) {
                gTimerState = 11;
                SpriteUtilSetWarioBossVictoryPose();
            }
            func_80747D8();
        }
    }

    if (gCurrentSprite.health > 2) {
        VoiceSetPlay(VS_16);
    } else {
        m4aSongNumStart(SOUND_A0);
        VoiceSetPlay(VS_WARIO_TREASURE);
    }
}

void func_803B538(void)
{
    struct PrimarySpriteData *sprite;
    u8 previousWork1;

    sprite = &gCurrentSprite;
    previousWork1 = sprite->work1++;

    if (sprite->xPosition > gWarioData.xPosition) {
        func_8023BFC(sprite->yPosition - 32,
                     sprite->xPosition + sprite->hitboxExtentRight);
        if (!(gUnk_3000A51 & 0xF)) {
            sprite->xPosition += 8;
        }
    } else {
        func_8023BFC(sprite->yPosition - 32,
                     sprite->xPosition - sprite->hitboxExtentLeft);
        if (!(gUnk_3000A51 & 0xF)) {
            sprite->xPosition -= 8;
        }
    }

    if (gCurrentSprite.work1 == 32) {
        if (gCurrentSprite.health != 0) {
            gCurrentSprite.pose = 120;
        } else {
            func_803B164();
        }
    }

    if ((previousWork1 & 7) == 0) {
        if (previousWork1 & 8) {
            gCurrentSprite.palette = 0;
        } else {
            gCurrentSprite.palette = 4;
        }
    }
}

void func_803B608(void)
{
    register struct PrimarySpriteData *base asm("r0");
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 health asm("r1");

    base = &gCurrentSprite;
    health = base->health;
    sprite = base;

    switch (health) {
        case 0:
        case 1:
        case 2:
        case 3:
            sprite->warioCollision = 43;
            sprite->pOamData = sSpoiledRottenOam_83C2F44;
            break;
        case 4:
        case 5:
            sprite->pOamData = sSpoiledRottenOam_83C2E6C;
            break;
        case 6:
        case 7:
            sprite->pOamData = sSpoiledRottenOam_83C2D94;
            break;
        default:
            sprite->pOamData = sSpoiledRottenOam_83C2CBC;
            break;
    }

    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 2;
    sprite->work0 = 36;
    sprite->pose = 121;
}

void func_803B680(void)
{
    struct PrimarySpriteData *sprite;
    u8 *timer;

    sprite = &gCurrentSprite;
    timer = &sprite->work0;

    if (--(*timer) != 0) {
        return;
    }

    if (sprite->xPosition > gWarioData.xPosition) {
        if (!(sprite->status & 0x40)) {
            sprite->pose = 15;
        } else {
            sprite->pose = 17;
        }
    } else {
        if (sprite->status & 0x40) {
            sprite->pose = 15;
        } else {
            sprite->pose = 17;
        }
    }
}

void func_803B6C8(void)
{
    struct PrimarySpriteData *sprite;
    struct PrimarySpriteData *current;
    u32 health;

    sprite = &gCurrentSprite;
    sprite->pose = 24;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work0 = 30;
    health = sprite->health - 4;
    current = sprite;

    switch (health) {
        case 6:
            current->pOamData = sSpoiledRottenOam_83C307C;
            asm("" ::: "memory");
            break;
        case 4:
        case 5:
            current->pOamData = sSpoiledRottenOam_83C3094;
            asm("" ::: "memory");
            break;
        case 2:
        case 3:
            current->pOamData = sSpoiledRottenOam_83C30AC;
            asm("" ::: "memory");
            break;
        case 0:
        case 1:
            current->pOamData = sSpoiledRottenOam_83C30C4;
            asm("" ::: "memory");
            break;
        default:
            sprite->pOamData = sSpoiledRottenOam_83C30DC;
            break;
    }

    m4aSongNumStart(SOUND_9E);
}

void SpriteSpoiledRotten(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            func_803AB4C();
            break;
        case 1:
            func_803ABD8();
            break;
        case 2:
            func_803AC38();
            break;
        case 15:
            func_803AD2C();
            /* Fall through. */
        case 16:
            func_803AE30();
            break;
        case 17:
            func_803AF50();
            /* Fall through. */
        case 18:
        case 20:
            func_803AFE4();
            break;
        case 23:
            func_803B0A0();
            /* Fall through. */
        case 24:
            func_803B13C();
            break;
        case 116:
            func_803B2EC();
            break;
        case 117:
            func_803B36C();
            break;
        case 118:
            func_803B3E0();
            /* Fall through. */
        case 119:
            func_803B454();
            break;
        case 31:
        case 33:
        case 79:
        case 80:
            func_803B49C();
            /* Fall through. */
        case 32:
            func_803B538();
            break;
        case 120:
            func_803B608();
            /* Fall through. */
        case 121:
            func_803B680();
            break;
        case 35:
        case 37:
        case 51:
        case 53:
            func_803B6C8();
            break;
        case 50:
            func_803B1F8();
            break;
        case 109:
            func_803B2A0();
            break;
        default:
            func_803B164();
            break;
    }
}
