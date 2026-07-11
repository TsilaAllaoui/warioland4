#include "wario/snowman.h"

#include "bg_clip.h"
#include "global_data.h"
#include "input.h"
#include "screen_shake.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"
#include "wario_palette.h"

#include "gba/m4a.h"

extern u32 func_800FDBC(void);
extern void func_800FE58(void);
extern void func_800FF64(void);
extern void func_8010230(void);
extern s32 func_8014268(u8, u16, void*);
extern u8 func_80143D8(void);
extern u8 func_8014758(void);
extern u8 func_8014930(void);
extern u8 func_8014C4C(void);
extern void func_8016614(u8);
extern u32 func_806D4C0(u16, u16);

extern const struct AnimationFrameU16 sUnk_82E04C4[];

u8 UpdateSnowmanWario(void)
{
    return sSnowmanWarioPoseTable[gWarioData.pose]();
}

u8 SnowmanWarioTransforming(void)
{
    if (gWarioData.unk_1E >= sSnowmanWarioTransformingAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioTransformingAnimation[gWarioData.unk_1F].time == 0)
            return WPOSE_SNOWMAN_LANDING_AFTER_MIDAIR_SNOW_CONTACT;
    }
    return 0xFF;
}

u8 SnowmanWarioFallingWithSnow(void)
{
    return 0xFF;
}

u8 SnowmanWarioWalking(void)
{
    register struct WarioData* wario asm("r4");
    register u32 held asm("r3");
    register u32 direction asm("r2");
    register u32 common asm("r0");

    wario = &gWarioData;
    if ((wario->unk_1C & 1) != 0) {
        if ((func_806D4C0(wario->yPosition + 20, wario->xPosition) & 0x01000000) == 0) {
            wario->horizontalDirection = (wario->unk_1C ^ 0x30) & 0x30;
            return WPOSE_SNOWMAN_ROLLING_SMALL;
        }
    }

    if ((gButtonsPressed & 1) != 0)
        return WPOSE_SNOWMAN_JUMPING;

    {
        register const u16* heldPointer asm("r0");
        register struct WarioData* movementWario asm("r1");

        heldPointer = &gButtonsHeld;
        movementWario = &gWarioData;
        held = *heldPointer;
        direction = movementWario->horizontalDirection;
        common = held;
        common &= direction;
        /* Preserve the original agbcc instruction scheduling before r4 is assigned. */
        asm("" : "+r"(common));
        wario = movementWario;
    }

    if (common != 0) {
        if ((direction & 0x10) != 0)
            wario->xVelocity = 32;
        else
            wario->xVelocity = -32;
    } else {
        register u32 temp asm("r0");

        temp = 0x30;
        /* Keep the constant in r0 so agbcc emits eor r0, r2. */
        asm("" : "+r"(temp));
        temp ^= direction;
        temp &= held;
        temp <<= 16;
        if (temp != 0)
            return WPOSE_SNOWMAN_TURNING;
        return WPOSE_SNOWMAN_UNKNOWN_8;
    }

    {
        register struct WarioData* animationWario asm("r2");
        register const struct WarioAnimationFrame* animation asm("r3");

        animationWario = wario;
        animation = sSnowmanWarioWalkingAnimation;
        if (animationWario->unk_1E >= animation[animationWario->unk_1F].time) {
            animationWario->unk_1E = 0;
            if (++animationWario->unk_1F == 1)
                m4aSongNumStart(SE_WARIO_STEP);
            else if (animation[wario->unk_1F].time == 0)
                wario->unk_1F = 0;
        }
    }

    return 0xFF;
}

u8 SnowmanWarioBonk(void)
{
    if (gWarioData.unk_1E >= sSnowmanWarioBonkAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioBonkAnimation[gWarioData.unk_1F].time == 0) {
            gWarioData.reaction = 0;
            gWarioData.damageTimer = 0x60;
            return WPOSE_SNOWMAN_WALKING;
        }
    }
    return 0xFF;
}

u8 SnowmanWarioJumping(void)
{
    if (gWarioData.unk_1E >= sSnowmanWarioJumpingAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioJumpingAnimation[gWarioData.unk_1F].time == 0) {
            gWarioData.unk_08 = 1;
            return 0xFE;
        }
    }
    return 0xFF;
}

u8 SnowmanWarioFalling(void)
{
    register const u16* heldPointer asm("r0");
    register struct WarioData* wario asm("r4");
    register u16 held asm("r2");
    register u16 direction asm("r1");
    register u16 common asm("r3");

    heldPointer = &gButtonsHeld;
    wario = &gWarioData;
    held = *heldPointer;
    direction = wario->horizontalDirection;
    common = held;
    common &= direction;
    if (common != 0) {
        if ((direction & 0x10) != 0)
            wario->xVelocity = 32;
        else
            wario->xVelocity = -32;
    } else {
        direction ^= 0x30;
        if ((u16)(direction & held) != 0)
            wario->horizontalDirection = direction;
        wario->xVelocity = common;
    }
    return 0xFF;
}

u8 SnowmanWarioLanding(void)
{
    if (gWarioData.unk_1E > 29)
        return WPOSE_SNOWMAN_UNKNOWN_8;

    if (gUnk_3001930.unk1 >= sUnk_82E04C4[gUnk_3001930.unk2].time) {
        gUnk_3001930.unk1 = 0;
        gUnk_3001930.unk2++;
        if (sUnk_82E04C4[gUnk_3001930.unk2].time == 0)
            gUnk_3001930.unk2 = 0;
    }
    return 0xFF;
}

u8 SnowmanWarioLandingAfterMidairSnowContact(void)
{
    if (gWarioData.unk_1E >= sSnowmanWarioLandingAfterMidairSnowContactAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioLandingAfterMidairSnowContactAnimation[gWarioData.unk_1F].time == 0)
            return WPOSE_SNOWMAN_UNKNOWN_8;
    }
    return 0xFF;
}

u8 SnowmanWarioUnknown8(void)
{
    if ((gWarioData.unk_1C & 1) != 0) {
        gWarioData.horizontalDirection = (gWarioData.unk_1C ^ 0x30) & 0x30;
        return WPOSE_SNOWMAN_ROLLING_SMALL;
    }
    if ((gButtonsPressed & 1) != 0)
        return WPOSE_SNOWMAN_JUMPING;
    if ((gButtonsHeld & gWarioData.horizontalDirection) != 0)
        return WPOSE_SNOWMAN_WALKING;
    if (((gWarioData.horizontalDirection ^ 0x30) & gButtonsHeld) != 0)
        return WPOSE_SNOWMAN_TURNING;
    return 0xFF;
}

u8 SnowmanWarioTurning(void)
{
    if (gWarioData.unk_1E >= sSnowmanWarioTurningAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioTurningAnimation[gWarioData.unk_1F].time == 0)
            return WPOSE_SNOWMAN_UNKNOWN_8;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingSmall(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 64;
    else
        gWarioData.xVelocity = -64;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingSmallAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingSmallAnimation[gWarioData.unk_1F].time == 0)
            return WPOSE_SNOWMAN_ROLLING_MEDIUM;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingSmallMidair(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 64;
    else
        gWarioData.xVelocity = -64;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingSmallAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingSmallAnimation[gWarioData.unk_1F].time == 0)
            return WPOSE_SNOWMAN_ROLLING_MEDIUM_MIDAIR;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingMedium(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 96;
    else
        gWarioData.xVelocity = -96;

    if (gWarioData.unk_0A > 47)
        return WPOSE_SNOWMAN_ROLLING_LARGE;
    gWarioData.unk_0A++;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingMediumAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingMediumAnimation[gWarioData.unk_1F].time == 0)
            gWarioData.unk_1F = 0;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingMediumMidair(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 96;
    else
        gWarioData.xVelocity = -96;

    if (gWarioData.unk_0A > 47)
        return WPOSE_SNOWMAN_ROLLING_LARGE_MIDAIR;
    gWarioData.unk_0A++;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingMediumAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingMediumAnimation[gWarioData.unk_1F].time == 0)
            gWarioData.unk_1F = 0;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingLarge(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 128;
    else
        gWarioData.xVelocity = -128;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingLargeAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingLargeAnimation[gWarioData.unk_1F].time == 0)
            gWarioData.unk_1F = 0;
    }
    return 0xFF;
}

u8 SnowmanWarioRollingLargeMidair(void)
{
    if ((gWarioData.horizontalDirection & 0x10) != 0)
        gWarioData.xVelocity = 128;
    else
        gWarioData.xVelocity = -128;

    if (gWarioData.unk_1E >= sSnowmanWarioRollingLargeAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sSnowmanWarioRollingLargeAnimation[gWarioData.unk_1F].time == 0)
            gWarioData.unk_1F = 0;
    }
    return 0xFF;
}

void SetSnowmanWarioPose(u8 result)
{
    func_8010230();
    if (result == 0) {
        if (gWarioDataCopy.unk_1A == 2)
            result = 1;
        m4aSongNumStart(SE_WARIO_TRANSFORM_LOOP);
        VoiceSetPlay(4);
    } else if (result == 0xFD) {
        register const u8* properties asm("r1");
        register u32 offset asm("r0");

        properties = (const u8*)sSnowmanWarioPoseProperties;
        offset = gWarioDataCopy.pose * 8;
        properties += 7;
        offset += (u32)properties;
        if (*(const u8*)offset != 2)
            return;
    }

    switch (result) {
        case 0xFE:
            if (gWarioDataCopy.pose == WPOSE_SNOWMAN_TRANSFORMING) {
                gWarioData.pose = WPOSE_SNOWMAN_FALLING_WITH_SNOW;
            } else if (gWarioDataCopy.pose > WPOSE_SNOWMAN_TURNING) {
                gWarioData.pose++;
                gWarioData.xVelocity = gWarioDataCopy.xVelocity;
            } else {
                gWarioData.pose = WPOSE_SNOWMAN_FALLING;
                if (gWarioDataCopy.unk_08 != 0)
                    gWarioData.yVelocity = 96;
            }
            break;
        case 0xFD:
            if (gWarioDataCopy.pose == WPOSE_SNOWMAN_FALLING_WITH_SNOW) {
                gWarioData.pose = WPOSE_SNOWMAN_LANDING_AFTER_MIDAIR_SNOW_CONTACT;
            } else if (gWarioDataCopy.pose == WPOSE_SNOWMAN_FALLING) {
                gWarioData.pose = WPOSE_SNOWMAN_LANDING;
                gUnk_3001930.unk0 = 4;
                ScreenShakeRequestY(64, 0);
                m4aSongNumStart(SE_SNOWMAN_WARIO_LAND);
            } else if (gWarioDataCopy.pose > WPOSE_SNOWMAN_TURNING) {
                gWarioData.pose--;
                gWarioData.xVelocity = gWarioDataCopy.xVelocity;
            }
            break;
        case WPOSE_SNOWMAN_BONK:
            gWarioData.pose = result;
            m4aSongNumStart(SE_SNOWMAN_WARIO_BONK);
            VoiceSetPlay(0);
            break;
        case WPOSE_SNOWMAN_ROLLING_SMALL:
            gWarioData.pose = result;
            if (gWarioDataCopy.pose <= WPOSE_SNOWMAN_TURNING)
                m4aSongNumStart(SE_SNOWMAN_WARIO_ROLL);
            break;
        case WPOSE_SNOWMAN_TURNING:
            gWarioData.unk_03 = 1;
        default:
            gWarioData.pose = result;
            break;
    }

    if ((u8)(gWarioData.pose - WPOSE_SNOWMAN_ROLLING_MEDIUM) <= 1)
        gWarioData.unk_0A = gWarioDataCopy.unk_0A;
}

void UpdateSnowmanWarioMovement(void)
{
    register struct WarioData* wario asm("r4");
    register u32 movement asm("r2");
    register u32 xMovement asm("r0");

    {
        register struct WarioCollisionData* collision asm("r3");
        register const u8* properties asm("r2");
        register const u8* property asm("r1");
        register u32 offset asm("r0");

        collision = &gWarioCollisionData;
        properties = (const u8*)sSnowmanWarioPoseProperties;
        wario = &gWarioData;

        offset = wario->pose * 8;
        property = properties + 1;
        offset += (u32)property;
        collision->unk_08 = *(const u8*)offset;
        offset = wario->pose * 8;
        property = properties + 2;
        offset += (u32)property;
        collision->unk_09 = *(const u8*)offset;
        offset = wario->pose * 8;
        properties += 3;
        offset += (u32)properties;
        collision->unk_0A = *(const u8*)offset;
    }

    func_800FE58();
    movement = 0;
    if (wario->unk_1A == 2) {
        register u16 velocity asm("r1");
        register u32 temp asm("r0");

        velocity = wario->yVelocity;
        temp = (u32)(u16)velocity << 16;
        temp = (s32)temp >> 19;
        temp <<= 16;
        movement = temp >> 16;
        velocity -= 8;
        wario->yVelocity = velocity;
    }

    if (wario->yVelocity < -128)
        wario->yVelocity = -128;

    wario->yPosition -= movement;
    if (wario->unk_1A == 0)
        xMovement = func_800FDBC();
    else
        xMovement = (u16)wario->xVelocity;

    xMovement <<= 16;
    xMovement = (s32)xMovement >> 19;
    xMovement <<= 16;
    movement = xMovement >> 16;
    /* Keep the completed movement in r2 before loading the position pointer. */
    asm("" : "+r"(movement));

    {
        register struct WarioData* positionWario asm("r1");

        positionWario = &gWarioData;
        positionWario->xPosition += movement;
    }
}

void ProcessSnowmanWarioCollision(void)
{
    u8 result;

    {
        register struct WarioCollisionData* collision asm("r4");
        register const u8* properties asm("r2");
        register struct WarioData* wario asm("r3");
        register const u8* property asm("r1");
        register u32 offset asm("r0");

        collision = &gWarioCollisionData;
        properties = (const u8*)sSnowmanWarioPoseProperties;
        wario = &gWarioData;

        offset = wario->pose * 8;
        property = properties + 4;
        offset += (u32)property;
        collision->unk_0B = *(const u8*)offset;
        offset = wario->pose * 8;
        property = properties + 5;
        offset += (u32)property;
        collision->unk_0C = *(const u8*)offset;
        offset = wario->pose * 8;
        property = properties + 6;
        offset += (u32)property;
        collision->unk_0D = *(const u8*)offset;
        offset = wario->pose * 8;
        properties += 7;
        offset += (u32)properties;
        collision->unk_11 = *(const u8*)offset;

        if (wario->yVelocity <= 47)
            collision->unk_0C = 0;

        result = 0xFF;
        if ((collision->flags & 0x40) != 0)
            result = func_8014C4C();
        else if ((collision->flags & 0x80) != 0)
            result = func_8014930();
        else if (collision->unk_00 != 0) {
            if (collision->unk_11 == 2)
                result = func_8014930();
            else
                result = func_80143D8();
        } else if (collision->unk_11 == 0) {
            result = func_8014758();
        }
    }

    {
        register struct WarioData* wario asm("r4");
        register struct WarioCollisionData* collision asm("r6");
        s32 collisionResult;

        wario = &gWarioData;
        collisionResult = func_806DAC0(wario->yPosition - 48, wario->xPosition);
        if ((collisionResult & 0xFF) == 1) {
            wario->reaction = REACTION_WATER;
            wario->damageTimer = 0x60;
            func_8016614(0);
            return;
        }

        {
            register struct WarioCollisionData* collisionPointer asm("r0");
            register u8 movementType asm("r1");

            collisionPointer = &gWarioCollisionData;
            movementType = collisionPointer->unk_11;
            collision = collisionPointer;
            if (movementType == 0xFF)
                return;
        }

        if (wario->pose > WPOSE_SNOWMAN_TURNING && result == 0xFC) {
            result = 3;
        } else {
            register struct WarioData* collisionWario asm("r1");

            collisionWario = &gWarioData;
            if (collisionWario->pose == WPOSE_SNOWMAN_FALLING && result == 0xFD) {
                u32 temp;
                u8 property;

                property = collision->unk_08;
                if (func_8014268(property, collisionWario->yPosition + 1, &temp) <= collision->unk_10)
                    result = 0xFF;
            }
        }
    }

    if (result != 0xFF)
        SetSnowmanWarioPose(result);
}

void UpdateSnowmanWarioGraphics(u8 variant)
{
    const struct WarioAnimationFrame* frames;
    const struct WarioAnimationFrame* frame;
    const u8* data;

    func_800FF64();
    frames = sSnowmanWarioAnimationTable[gWarioData.pose][variant];
    frame = &frames[gWarioData.unk_1F];
    data = frame->objData;
    gWarioData.objData1Size = *data << 5;
    data++;
    gWarioData.objData2Size = *data << 5;
    data++;
    gWarioData.pObjData1 = (u8*)data;
    gWarioData.pObjData2 = (u8*)(data + gWarioData.objData1Size);
    gWarioData.pOamData = frame->oamData;
    gWarioPaletteSize = 0x60;
    func_800FD90(sWarioDefaultObjPalette, 0, 16);
    func_800FD90(sSnowmanWarioPalette, 16, 32);
}

void ApplySnowmanWarioMusicEffect(void)
{
    struct MusicPlayerInfo* player0;
    struct MusicPlayerInfo* player1;

    if (gWarioMusicState == 10)
        return;

    player0 = gMPlayTable[0].info;
    m4aMPlayTempoControl(player0, 180);
    player1 = gMPlayTable[1].info;
    m4aMPlayTempoControl(player1, 180);
    m4aMPlayPitchControl(player0, 0xFFFF, -500);
    m4aMPlayPitchControl(player1, 0xFFFF, -500);
    m4aMPlayModDepthSet(player0, 0xFFFF, 20);
    m4aMPlayModDepthSet(player1, 0xFFFF, 20);
    m4aMPlayLFOSpeedSet(player0, 0xFFFF, 20);
    m4aMPlayLFOSpeedSet(player1, 0xFFFF, 20);
    gWarioMusicState = 10;
}

void UpdateSnowmanWarioHitbox(void)
{
    register const u8* properties asm("r3");
    register struct WarioData* wario asm("r4");
    register const u8* hitboxes asm("r2");
    register u32 hitboxOffset asm("r1");
    register const u8* address asm("r0");
    u8 movementType;

    properties = (const u8*)sSnowmanWarioPoseProperties;
    wario = &gWarioData;
    hitboxOffset = properties[wario->pose * 8];
    hitboxes = (const u8*)sWarioHitboxes;
    hitboxOffset <<= 3;

    address = (const u8*)hitboxOffset + (u32)hitboxes;
    wario->hitboxOffsetLeft = *(const u16*)address;
    address = hitboxes + 2;
    address = (const u8*)hitboxOffset + (u32)address;
    wario->hitboxOffsetTop = *(const u16*)address;
    address = hitboxes + 4;
    address = (const u8*)hitboxOffset + (u32)address;
    wario->hitboxOffsetRight = *(const u16*)address;
    hitboxes += 6;
    hitboxOffset += (u32)hitboxes;
    wario->hitboxOffsetBottom = *(const u16*)hitboxOffset;

    address = (const u8*)(wario->pose * 8);
    properties += 7;
    address = (const u8*)((u32)address + (u32)properties);
    movementType = *address;
    if (movementType == 2)
        wario->unk_1A = movementType;
    else if (wario->unk_1A != 1)
        wario->unk_1A = movementType;
}
