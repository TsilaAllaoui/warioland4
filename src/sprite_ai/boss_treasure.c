#include "background_registers.h"
#include "global_data.h"
#include "main.h"
#include "score.h"
#include "sprite.h"
#include "sprite_ai/boss_treasure.h"
#include "sprite_ai/treasure.h"
#include "sprite_util.h"
#include "voice_set.h"

void BossTreasureInit(void)
{
    register struct PrimarySpriteData* sprite asm("r1");
    register u8 treasureType asm("r0");

    gCurrentSprite.drawPriority |= 0x80;
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.status &= ~SPRITE_STATUS_HIDDEN;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = SPOSE_IDLE;
    gCurrentSprite.work0 = 20;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 32;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 4;
    gCurrentSprite.hitboxExtentLeft = 4;
    gCurrentSprite.hitboxExtentRight = 4;
    gCurrentSprite.warioCollision = 0;

    treasureType = gUnk_3000C2A;
    sprite = &gCurrentSprite;
    switch (treasureType) {
        case 1:
            sprite->pOamData = sBossTreasureOam_83DF9E8;
            break;
        case 2:
            sprite->pOamData = sBossTreasureOam_83BA7BC;
            break;
        case 3:
            sprite->pOamData = sBossTreasureOam_83DAB40;
            break;
        case 4:
            sprite->pOamData = sBossTreasureOam_83CF72C;
            break;
        default:
            sprite->pOamData = sAerodentOam_83DABA0;
            break;
    }
}

void SpriteBossTreasure(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u16 originalY asm("r5");
    register u32 relativeY asm("r6");
    u8 one;
    register s32 completed asm("r3");
    register u32 coordinate asm("r1");
    register struct PrimarySpriteData* current asm("r2");
    register u8 pose asm("r0");
    register u32 backgroundPosition asm("r0");

    completed = 0;
    sprite = &gCurrentSprite;
    originalY = sprite->yPosition;
    coordinate = originalY >> 2;
    backgroundPosition = gBg1YPosition;
    backgroundPosition >>= 2;
    coordinate -= backgroundPosition;
    relativeY = (u32)(coordinate << 16) >> 16;
    coordinate = sprite->xPosition >> 2;
    backgroundPosition = gBg1XPosition;
    backgroundPosition >>= 2;
    coordinate -= backgroundPosition;
    coordinate = (u32)(coordinate << 16) >> 16;
    one = 1;
    sprite->disableWarioCollisionTimer = one;
    pose = sprite->pose;
    current = sprite;

    switch (pose) {
        case SPOSE_INIT:
            BossTreasureInit();
            break;

        case SPOSE_IDLE: {
            register u16 adjustedY asm("r0");

            if (relativeY > 32) {
                adjustedY = originalY - 2;
                sprite->yPosition = adjustedY;
            } else if (relativeY <= 29) {
                adjustedY = originalY + 2;
                sprite->yPosition = adjustedY;
            } else {
                completed = 1;
            }

            if (coordinate > 122) {
                current->xPosition -= 2;
            } else if (coordinate <= 119) {
                current->xPosition += 2;
            } else {
                completed++;
            }

            if (completed == 2) {
                current->pose = SPOSE_12;
            }
            break;
        }

        case SPOSE_12: {
            register u8* indexPtr asm("r12");
            register const s16* tableLoad asm("r1");
            register const s16* velocities asm("r8");
            register u16 movement asm("r3");
            register u16 newY asm("r0");
            register u8 nextIndex asm("r0");
            register u8* storePtr asm("r1");
            const s16* velocity;
            u8 index;
            register u8* timer asm("r5");

            indexPtr = &sprite->work3;
            index = *indexPtr;
            tableLoad = sTreasureFloatYVelocity;
            /* Keep the table load in r1 before agbcc moves it to r8. */
            asm("" : "+r"(tableLoad));
            velocities = tableLoad;
            velocity = &velocities[index];
            movement = *(const u16*)velocity;
            if (*velocity == 0x7FFF) {
                movement = *(const u16*)velocities;
                index = 0;
            }
            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            newY = originalY + movement;
            sprite->yPosition = newY;

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_14;
            if (gCollectedNEJewelPiece == 2) {
                func_806F650(0);
                gCollectedNEJewelPiece = one;
                *timer = 80;
            } else {
                *timer = one;
            }
            break;
        }

        case SPOSE_14: {
            register u8* indexBase asm("r6");
            register u8* indexPtr asm("r12");
            register const s16* velocities asm("r8");
            register u16 movement asm("r3");
            register u16 newY asm("r0");
            register u8 nextIndex asm("r0");
            register u8* storePtr asm("r1");
            const s16* velocity;
            u8 index;
            register u8* timer asm("r5");

            indexBase = (u8*)42;
            /* Prevent agbcc from folding the required constant-first pointer addition. */
            asm("" : "+r"(indexBase));
            indexBase = (u8*)((u32)indexBase + (u32)sprite);
            indexPtr = indexBase;
            index = *indexBase;
            velocities = sTreasureFloatYVelocity;
            velocity = &velocities[index];
            movement = *(const u16*)velocity;
            if (*velocity == 0x7FFF) {
                movement = *(const u16*)velocities;
                index = 0;
            }
            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            newY = originalY + movement;
            sprite->yPosition = newY;

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_16;
            if (gCollectedSEJewelPiece == 2) {
                func_806F650(1);
                gCollectedSEJewelPiece = one;
                *timer = 80;
            } else {
                *timer = one;
            }
            break;
        }

        case SPOSE_16: {
            register u8* indexBase asm("r6");
            register u8* indexPtr asm("r12");
            register const s16* velocities asm("r8");
            register u16 movement asm("r3");
            register u16 newY asm("r0");
            register u8 nextIndex asm("r0");
            register u8* storePtr asm("r1");
            const s16* velocity;
            u8 index;
            register u8* timer asm("r5");

            indexBase = (u8*)42;
            /* Prevent agbcc from folding the required constant-first pointer addition. */
            asm("" : "+r"(indexBase));
            indexBase = (u8*)((u32)indexBase + (u32)sprite);
            indexPtr = indexBase;
            index = *indexBase;
            velocities = sTreasureFloatYVelocity;
            velocity = &velocities[index];
            movement = *(const u16*)velocity;
            if (*velocity == 0x7FFF) {
                movement = *(const u16*)velocities;
                index = 0;
            }
            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            newY = originalY + movement;
            sprite->yPosition = newY;

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_17;
            if (gCollectedSWJewelPiece == 2) {
                func_806F650(2);
                gCollectedSWJewelPiece = one;
                *timer = 110;
            } else {
                *timer = 31;
            }
            break;
        }

        case SPOSE_17: {
            register u8* indexBase asm("r6");
            register u8* indexPtr asm("r12");
            register const s16* velocities asm("r6");
            register u16 movement asm("r3");
            register u16 newY asm("r0");
            register u8 nextIndex asm("r0");
            register u8* storePtr asm("r1");
            register const s16* velocity asm("r0");
            u8 index;
            register u8* timer asm("r5");
            register s32 zero asm("r7");
            register s32 signedMovement asm("r1");

            indexBase = (u8*)42;
            /* Prevent agbcc from folding the required constant-first pointer addition. */
            asm("" : "+r"(indexBase));
            indexBase = (u8*)((u32)indexBase + (u32)sprite);
            indexPtr = indexBase;
            index = *indexBase;
            velocities = sTreasureFloatYVelocity;
            velocity = (const s16*)((index << 1) + (u32)velocities);
            movement = *(const u16*)velocity;
            zero = 0;
            /* agbcc otherwise reuses the unsigned halfword load; the target requires one signed load. */
            asm("ldrsh %0, [%1, %2]" : "=r"(signedMovement) : "r"(velocity), "r"(zero));
            if (signedMovement == 0x7FFF) {
                movement = *(const u16*)velocities;
                index = 0;
            }
            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            newY = originalY + movement;
            sprite->yPosition = newY;

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            SpriteUtilFadeBackgroundToBlack();
            sprite->pose = SPOSE_18;
            *timer = 60;
            break;
        }

        case SPOSE_18: {
            register u8* indexBase asm("r6");
            register u8* indexPtr asm("r12");
            register const s16* velocities asm("r6");
            register u16 movement asm("r3");
            register u16 newY asm("r0");
            register u8 nextIndex asm("r0");
            register u8* storePtr asm("r1");
            register const s16* velocity asm("r0");
            u8 index;
            register u8* timer asm("r1");
            register s32 zero asm("r7");
            register s32 signedMovement asm("r1");
            register u8 clear asm("r0");

            indexBase = (u8*)42;
            /* Prevent agbcc from folding the required constant-first pointer addition. */
            asm("" : "+r"(indexBase));
            indexBase = (u8*)((u32)indexBase + (u32)sprite);
            indexPtr = indexBase;
            index = *indexBase;
            velocities = sTreasureFloatYVelocity;
            velocity = (const s16*)((index << 1) + (u32)velocities);
            movement = *(const u16*)velocity;
            zero = 0;
            /* agbcc otherwise reuses the unsigned halfword load; the target requires one signed load. */
            asm("ldrsh %0, [%1, %2]" : "=r"(signedMovement) : "r"(velocity), "r"(zero));
            if (signedMovement == 0x7FFF) {
                movement = *(const u16*)velocities;
                index = 0;
            }
            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            newY = originalY + movement;
            sprite->yPosition = newY;

            if (gUnk_30000FC != 0) {
                break;
            }
            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_CRUSHED_OR_COLLECTED;
            clear = 0;
            *timer = clear;
            VoiceSetPlay(VS_20);
            break;
        }

        case SPOSE_CRUSHED_OR_COLLECTED:
            if (sprite->status & SPRITE_STATUS_ONSCREEN) {
                register u8* timer asm("r5");
                register u16 adjustedY asm("r0");

                adjustedY = originalY - 8;
                sprite->yPosition = adjustedY;
                timer = &sprite->work0;
                if ((*timer & 7) == 0) {
                    SpriteSpawnSecondary(sprite->yPosition + 32, sprite->xPosition, SSPRITE_47);
                }
                (*timer)++;
            } else {
                register s32 roomSlot asm("r3");

                sprite->pose = SPOSE_71;
                roomSlot = SpriteUtilFindBossTreasureChest(0);
                if (roomSlot == 0xFF) {
                    register u8* timer asm("r0");

                    timer = &sprite->work0;
                    *timer = one;
                } else {
                    register u8* timer asm("r1");

                    timer = &sprite->work0;
                    *timer = 60;
                    gSpriteData[roomSlot].pose = SPOSE_14;
                    VoiceSetPlay(VS_20);
                }
            }
            break;

        case SPOSE_71: {
            register u8* timer asm("r5");
            register s32 roomSlot asm("r3");

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_73;
            roomSlot = SpriteUtilFindBossTreasureChest(1);
            if (roomSlot == 0xFF) {
                *timer = one;
            } else {
                *timer = 60;
                gSpriteData[roomSlot].pose = SPOSE_14;
                VoiceSetPlay(VS_20);
            }
            break;
        }

        case SPOSE_73: {
            register u8* timer asm("r5");
            register s32 roomSlot asm("r3");

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->pose = SPOSE_6D;
            roomSlot = SpriteUtilFindBossTreasureChest(2);
            if (roomSlot == 0xFF) {
                *timer = one;
            } else {
                *timer = 60;
                gSpriteData[roomSlot].pose = SPOSE_14;
                VoiceSetPlay(VS_20);
            }
            break;
        }

        case SPOSE_6D: {
            register u8* timer asm("r1");

            timer = &sprite->work0;
            if (--*timer != 0) {
                break;
            }
            sprite->status = SPRITE_STATUS_NONE;
            gSubGameMode = 6;
            gUnk_3000021 = 0;
            gStageExitType = 5;
            break;
        }
    }
}
