
#include "bg_clip.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "main.h"
#include "score.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"
#include "wario_palette.h"

void PrepareWarioUpdate(void)
{
    register struct WarioData *wario asm("r4");
    u16 direction;
    u8 zero;

    memcpy(&gWarioDataCopy, &gWarioData, sizeof(struct WarioData));
    wario = &gWarioData;
    if (wario->unk_03 != 0) {
        direction = wario->horizontalDirection;
        direction ^= 0x30;
        zero = 0;
        wario->horizontalDirection = direction;
        wario->unk_03 = zero;
    }

    wario->unk_05 = 0;
    wario->unk_08 = 0;
    wario->unk_07 = 0;
    wario->unk_09 = 0;
    wario->unk_0A = 0;
    wario->unk_0C = 0;
    wario->xVelocity = 0;
    wario->yVelocity = 0;
    wario->unk_1E = 0;
    wario->unk_1F = 0;
    wario->unk_3A = 0;
    wario->unk_3B = 0;

    if (wario->reaction != REACTION_NORMAL && gUnk_3001938.unk0 == 1) {
        m4aSongNumStart(SOUND_2B);
    }
}

void CopyWarioPalette(const void *source, int destinationIndex, int size)
{
    register const u16 *src asm("r4");
    register int start asm("r3");
    int end;
    register u16 *dst asm("r1");
    register int byteOffset asm("r0");

    src = source;
    start = destinationIndex;
    end = start + size;
    if (start < end) {
        dst = gWarioPalette;
        byteOffset = start << 1;
        dst = (u16 *)(byteOffset + (u32)dst);
        start = end - start;
        do {
            *dst++ = *src++;
            start--;
        } while (start != 0);
    }
}

s32 GetAdjustedWarioXVelocity(void)
{
    register struct WarioData *wario asm("r2");
    u16 velocity;
    u16 originalVelocity;

    wario = &gWarioData;
    velocity = wario->xVelocity;
    originalVelocity = velocity;
    if ((gCurrentCarriedSprite.unk1 & 0xF) > 1) {
        register s32 value asm("r0");
        register s32 limit asm("r1");

        value = (s16)velocity;
        if (value > 40) {
            velocity = 40;
        }
        value = (s16)originalVelocity;
        limit = -40;
        if (value < limit) {
            velocity = (u16)-40;
        }
    }

    {
        register u16 direction asm("r0");
        register u16 flags asm("r2");

        direction = wario->horizontalDirection;
        flags = (u16)wario->unk_1C;
        if ((direction & flags) != 0) {
            if ((flags & 1) != 0) {
                register s32 signedVelocity asm("r1");
                register s32 product asm("r0");

                signedVelocity = (s16)velocity;
                product = signedVelocity << 1;
                product += signedVelocity;
                product <<= 14;
                velocity = (u32)product >> 16;
            } else {
                register s32 product asm("r0");

                product = (s16)velocity << 2;
                product /= 5;
                product <<= 16;
                velocity = (u32)product >> 16;
            }
        } else {
            register s32 sum asm("r0");
            register s16 *adjustment asm("r1");
            register s32 signedVelocity asm("r1");

            adjustment = &gWarioHorizontalCollisionOffset;
            sum = (s16)velocity;
            sum += *(u16 *)adjustment;
            sum <<= 16;
            velocity = (u32)sum >> 16;
            signedVelocity = sum >> 16;
            if (signedVelocity > 128) {
                velocity = 128;
            } else if (signedVelocity < -128) {
                /* The original reloads the unsigned halfword constant instead of reusing r0. */
                asm("" : : : "r0");
                velocity = (u16)-128;
            }
        }
    }

    return (s16)velocity;
}

void UpdateWarioHorizontalCollisionOffset(void)
{
    register struct WarioData *wario asm("r4");
    u16 (*offsets)[3];
    register struct WarioCollisionData *collision asm("r5");
    register int mask asm("r6");
    s32 result;

    wario = &gWarioData;
    offsets = sWarioHorizontalCollisionProbeOffsets;
    collision = &gWarioCollisionData;

    {
        register s32 probeX asm("r1");
        register u16 probeY asm("r0");

        probeX = offsets[collision->unk_08][0];
        probeY = wario->xPosition;
        probeX += probeY;
        probeY = wario->yPosition + 1;
        result = GetBackgroundCollisionAtPosition(probeY, (u16)probeX) >> 16;
    }
    mask = 0xFF;
    result &= mask;
    if (result == 6) {
        gWarioHorizontalCollisionOffset = 32;
    } else if (result == 5) {
        gWarioHorizontalCollisionOffset = -32;
    } else {
        {
            register u16 *entry asm("r0");
            register s32 tableIndex asm("r1");
            register u16 *secondOffsets asm("r1");
            register s32 probeX asm("r1");
            register u16 probeY asm("r0");

            tableIndex = collision->unk_08;
            entry = (u16 *)(tableIndex * 6);
            secondOffsets = (u16 *)((u8 *)offsets + 2);
            entry = (u16 *)((u8 *)entry + (u32)secondOffsets);
            probeX = *entry;
            probeY = wario->xPosition;
            probeX += probeY;
            probeY = wario->yPosition + 1;
            result = GetBackgroundCollisionAtPosition(probeY, (u16)probeX) >> 16;
        }
        result &= mask;
        if (result == 6) {
            gWarioHorizontalCollisionOffset = 32;
        } else if (result == 5) {
            gWarioHorizontalCollisionOffset = -32;
        } else {
            gWarioHorizontalCollisionOffset = 0;
        }
    }
}

void UpdateCarriedSpriteOffsets(void)
{
    register struct CarriedSprite *carried asm("r1");
    register const u16 *offsets asm("r2");
    s32 index;
    s32 xOffset;

    if ((gWarioData.horizontalDirection & 0x10) != 0) {
        carried = &gCurrentCarriedSprite;
        offsets = sCarriedSpriteXOffsets;
        index = carried->state - 1;
        xOffset = offsets[index];
    } else {
        carried = &gCurrentCarriedSprite;
        offsets = sCarriedSpriteXOffsets;
        index = carried->state - 1;
        xOffset = -offsets[index];
    }
    carried->xOffset = xOffset;

    {
        register struct CarriedSprite *current asm("r2");
        register const u16 *yOffsets asm("r0");
        register s32 yIndex asm("r1");

        current = carried;
        yOffsets = sCarriedSpriteYOffsets;
        yIndex = current->state - 1;
        current->yOffset = yOffsets[yIndex];
    }
}

void UpdateWarioPositionHistory(void)
{
    register struct WarioAfterimage *afterimage asm("r1");
    register u8 timer asm("r0");
    register u16 *indexPtr asm("r5");
    register u16 index asm("r2");
    register u16 *history asm("r3");
    register u16 *slot asm("r4");
    register u32 offset asm("r0");
    register u16 position asm("r1");

    afterimage = &gUnk_3001938;
    timer = afterimage->unk1;
    index = timer;
    if (index != 0) {
        timer--;
        afterimage->unk1 = timer;
        indexPtr = &gUnk_30031B8;
        index = *indexPtr;
        offset = 0x1F;
        offset &= index;
        history = gUnk_3003138.previousXPositions;
        offset <<= 1;
        slot = (u16 *)(offset + (u32)history);
        position = gPreviousXPosition;
        *slot = position;
        history += 32;
        offset += (u32)history;
        position = gPreviousYPosition;
        *(u16 *)offset = position;
        index++;
        *indexPtr = index;
        if ((s16)index > 31) {
            gUnk_30031BA = 1;
        }
    } else {
        afterimage->unk0 = 0;
        gUnk_30031B8 = 0;
        gUnk_30031BA = 0;
    }
}

void WarioProcessControls(void)
{
    register struct WarioData *wario asm("r5");
    register struct WarioData *current asm("r4");
    register struct WarioCollisionData *collision asm("r1");
    register s32 zero asm("r0");
    register s32 mode asm("r0");
    register u8 *previousReaction asm("r1");
    u8 poseRequest;

    collision = &gWarioCollisionData;
    zero = 0;
    collision->unk_0E = zero;
    collision->unk_0F = zero;
    collision->unk_10 = zero;

    mode = gSubGameMode;
    wario = &gWarioData;
    if (mode > 1) {
        wario->unk_1E++;
        gUnk_3001930.unk1++;
    }

    previousReaction = &gPreviousReaction;
    current = wario;
    *previousReaction = current->reaction;
    gPreviousXPosition = current->xPosition;
    gPreviousYPosition = current->yPosition;

    poseRequest = sWarioPoseHandlerTable[current->reaction]();
    if (poseRequest != 0xFF) {
        sWarioPoseRequestFuncTable[current->reaction](poseRequest);
    }

    sUnk_82DED90[wario->reaction]();
    sUnk_82DECD0[wario->reaction]();

    if (gCurrentCarriedSprite.state != 0) {
        UpdateCarriedSpriteOffsets();
    }
}

void WarioProcessCollision(void)
{
    register struct WarioCollisionData *initialCollision asm("r1");
    register struct WarioCollisionData *collision asm("r3");
    register struct WarioData *initialWario asm("r2");
    register struct WarioData *wario asm("r6");
    register u32 currentX asm("r4");
    register u8 zero asm("r5");
    register u16 *previousXPointer asm("r0");
    register u32 previousX asm("r0");
    register u32 currentY asm("r1");
    register u16 *previousYPointer asm("r0");
    register u32 previousY asm("r0");

    initialCollision = &gWarioCollisionData;
    zero = 0;
    initialCollision->unk_00 = 0;
    initialCollision->flags = 0;
    /* Preserve the dedicated byte-clear register used by the original schedule. */
    asm("" : "+r"(zero));
    initialCollision->unk_12 = zero;
    initialCollision->unk_13 = zero;
    initialCollision->unk_14 = zero;
    gUnk_30031BB = zero;

    initialWario = &gWarioData;
    previousXPointer = &gPreviousXPosition;
    currentX = initialWario->xPosition;
    previousX = *previousXPointer;
    collision = initialCollision;
    wario = initialWario;
    if (currentX > previousX) {
        collision->unk_00 = 0x10;
        collision->unk_04 = 1;
        collision->unk_05 = zero;
        collision->unk_06 = 0xFFFF;
    } else {
        if (currentX >= previousX) {
            if ((wario->horizontalDirection & 0x10) != 0) {
                collision->unk_04 = 1;
                collision->unk_05 = zero;
                collision->unk_06 = 0xFFFF;
                goto horizontalDone;
            }
        } else {
            collision->unk_00 = 0x20;
        }
        collision->unk_04 = zero;
        collision->unk_05 = 1;
        collision->unk_06 = 0x40;
    }

horizontalDone:
    previousYPointer = &gPreviousYPosition;
    currentY = wario->yPosition;
    previousY = *previousYPointer;
    if (currentY > previousY) {
        collision->flags = 0x80;
    } else if (currentY < previousY) {
        collision->flags = 0x40;
    }

    sUnk_82DED00[wario->reaction]();
    sUnk_82DED90[wario->reaction]();
}

void ProcessWarioInteraction(void)
{
    register struct WarioData *wario asm("r5");
    register struct WarioData *current asm("r4");
    register struct CarriedSprite *carried asm("r2");
    u8 value;
    u8 direction;

    carried = &gCurrentCarriedSprite;
    value = carried->state;
    wario = &gWarioData;
    if (value == 0) {
        value = wario->pose - WPOSE_NORMAL_WEAK_THROW;
        if (value <= 1) {
            carried->unk1 &= 0x80;
        } else {
            carried->unk1 = 0;
        }
    }

    current = wario;
    if ((current->horizontalDirection & 0x10) != 0) {
        direction = 0;
    } else {
        direction = 1;
    }
    sUnk_82DED30[current->reaction](direction);

    if (current->reaction == REACTION_WATER) {
        if (gUnk_30031BD == 0) {
            current->unk_1C = 0;
        }
    } else if (wario->unk_1A == 2) {
        wario->unk_1C = 0;
    }
}

void FinalizeWarioUpdate(void)
{
    register int previousReaction asm("r0");

    if (gSwitchPressed == 0 || gWarioData.reaction == REACTION_NORMAL) {
        sUnk_82DED60[gWarioData.reaction]();
    }

    previousReaction = gPreviousReaction;
    if (previousReaction < 0) {
        goto playBonk;
    }
    if (previousReaction <= 1) {
        goto end;
    }
    if (previousReaction > 6) {
        goto playBonk;
    }
    /* agbcc canonicalizes this as cmp #3 / bgt; the target uses cmp #4 / bge. */
    asm("cmp %0, #4\nbge 1f" : : "r"(previousReaction));

playBonk:
    if (gWarioData.damageTimer == 0x5F) {
        m4aSongNumStart(SE_WARIO_BONK);
        VoiceSetPlay(0);
    }

end:
    asm("1:");
    return;
}

void ResetWarioState(void)
{
    u8 pose;

    PrepareWarioUpdate();
    gUnk_3001930 = sUnk_82DD0EC;
    gCurrentWarioEffect = sStartingWarioEffect;
    gCurrentCarriedSprite.state = 0;

    pose = gWarioDataCopy.pose;
    switch (pose) {
        case WPOSE_NORMAL_DASH_ATTACK:
        case WPOSE_NORMAL_DASH_ATTACK_JUMP:
        case WPOSE_NORMAL_GROUND_POUND:
        case WPOSE_NORMAL_SUPER_GROUND_POUND:
        case WPOSE_NORMAL_CHARGING_THROW_2:
        case WPOSE_NORMAL_TURNING_WHILE_CHARING_THROW:
            MPlayStop(gMPlayTable[3].info);
            break;
    }
}
