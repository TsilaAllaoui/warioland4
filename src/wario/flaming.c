#include "bg_clip.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "input.h"
#include "main.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"
#include "wario/flaming.h"
#include "wario_palette.h"

u8 UpdateFlamingWario(void)
{
    return sFlamingWarioPoseTable[gWarioData.pose]();
}

u8 FlamingWarioBlue(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if ((active) || wario->unk_07 != 0) {
        wario->unk_08 = 1;
        return 0xFE;
    }

    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }

    frames = sFlamingWarioBlueFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioBlueMidair(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if (active) {
        wario->unk_07 = 1;
    }
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }
    frames = sFlamingWarioBlueFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioGreen(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if ((active) || wario->unk_07 != 0) {
        wario->unk_08 = 1;
        return 0xFE;
    }
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }
    frames = sFlamingWarioGreenFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioGreenMidair(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if (active) {
        wario->unk_07 = 1;
    }
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }
    frames = sFlamingWarioGreenFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioRed(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if ((active) || wario->unk_07 != 0) {
        wario->unk_08 = 1;
        return 0xFE;
    }
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }
    frames = sFlamingWarioRedFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioRedMidair(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 pressed asm("r1");
    register u32 active asm("r0");
    u8 zero;

    {
        register const u16 *buttons asm("r0");
        buttons = &gButtonsPressed;
        pressed = *buttons;
    }
    active = A_BUTTON;
    active &= pressed;
    asm("" : "+r"(active));
    wario = &gWarioData;
    if (active) {
        wario->unk_07 = 1;
    }
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x60;
    } else {
        wario->xVelocity = -0x60;
    }
    frames = sFlamingWarioRedFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioEngulfed(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    register u16 held asm("r3");
    register u16 active asm("r4");
    register u16 direction asm("r1");
    u16 timer;
    u8 zero;

    wario = &gWarioData;
    if (wario->horizontalDirection & DPAD_RIGHT) {
        wario->xVelocity = 0x10;
    } else {
        wario->xVelocity = -0x10;
    }

    held = gButtonsHeld;
    direction = wario->horizontalDirection;
    active = held;
    active &= direction;
    if (active != 0) {
        if (direction & DPAD_RIGHT) {
            wario->xVelocity = 0x20;
        } else {
            wario->xVelocity = -0x20;
        }
    } else {
        register u32 test asm("r0");

        direction ^= DPAD_LEFT | DPAD_RIGHT;
        test = direction & held;
        test <<= 16;
        if (test != 0) {
            wario->horizontalDirection = direction;
            wario->xVelocity = active;
        }
    }

    timer = wario->unk_0C;
    if (timer > 0xB3) {
        return 9;
    }
    timer++;
    wario->unk_0C = timer;
    zero = 0;
    frames = sFlamingWarioEngulfedFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioEngulfedMidair(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    u16 timer;
    u8 zero;

    wario = &gWarioData;
    timer = wario->unk_0C;
    if (timer <= 0xB3) {
        timer++;
        wario->unk_0C = timer;
    }
    frames = sFlamingWarioEngulfedFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->unk_1F = zero;
        }
    }
    return 0xFF;
}

u8 FlamingWarioRecovering(void)
{
    register struct WarioData *wario asm("r2");
    register const struct FlamingWarioGraphicsFrame *frames asm("r3");
    u8 zero;

    wario = &gWarioData;
    frames = sFlamingWarioRecoveringFrames;
    if (wario->unk_1E >= frames[wario->unk_1F].time) {
        zero = 0;
        wario->unk_1E = zero;
        wario->unk_1F++;
        if (frames[wario->unk_1F].time == 0) {
            wario->reaction = zero;
            wario->damageTimer = 0x60;
            return 2;
        }
    }
    return 0xFF;
}

void SetFlamingWarioPose(u8 pose)
{
    register int newPose asm("r4");
    register int originalPose asm("r5");
    register struct WarioData *wario asm("r6");

    newPose = pose;
    originalPose = newPose;
    wario = &gWarioData;
    if (wario->pose == 9) {
        register u32 test asm("r0");

        test = newPose + 3;
        test <<= 24;
        test >>= 24;
        if (test <= 1) {
            goto end;
        }
    }

    func_8010230();
    if (newPose == 0) {
        register struct WarioData *copy asm("r1");
        register u8 copyDirection asm("r0");

        copy = &gWarioDataCopy;
        copyDirection = copy->unk_1A;
        newPose = 1;
        if (copyDirection == 2) {
            newPose = 2;
        }
        copy->unk_07 = originalPose;
        copy->xVelocity = originalPose;
        m4aSongNumStart(SE_FLAMING_WARIO_TRANSFORM_LOOP);
        VoiceSetPlay(4);
    } else {
        register struct WarioData *copy asm("r1");

        copy = &gWarioDataCopy;
        if (copy->pose > 6) {
            wario->unk_0C = copy->unk_0C;
        }
    }

    switch (newPose) {
    case 0xFE:
        {
            register const u8 *config asm("r0");
            register struct WarioData *target asm("r3");
            register u8 currentPose asm("r2");
            register u32 tableOffset asm("r1");
            register struct WarioData *copy asm("r1");

            config = &sFlamingWarioPoseProperties[0][0];
            target = (struct WarioData *)0x03001898;
            currentPose = target->pose;
            tableOffset = currentPose;
            tableOffset <<= 3;
            config += 7;
            tableOffset += (u32)config;
            if (*(const u8 *)tableOffset != 2) {
                register u8 nextPose asm("r0");

                nextPose = currentPose + 1;
                target->pose = nextPose;
            }
            copy = &gWarioDataCopy;
            target->unk_1F = copy->unk_1F;
            target->xVelocity = copy->xVelocity;
            if (copy->unk_08 == 1) {
                target->yVelocity = 0xA8;
            }
        }
        break;

    case 0xFD:
        {
            register const u8 *config asm("r0");
            register struct WarioData *target asm("r2");
            register u8 currentPose asm("r3");
            register u32 tableOffset asm("r1");
            register struct WarioData *copy asm("r1");

            config = &sFlamingWarioPoseProperties[0][0];
            target = (struct WarioData *)0x03001898;
            currentPose = target->pose;
            tableOffset = currentPose;
            tableOffset <<= 3;
            config += 7;
            tableOffset += (u32)config;
            if (*(const u8 *)tableOffset == 2) {
                register u8 previousPose asm("r0");

                previousPose = currentPose - 1;
                target->pose = previousPose;
            }
            copy = &gWarioDataCopy;
            target->unk_1F = copy->unk_1F;
            target->xVelocity = copy->xVelocity;
            target->unk_07 = copy->unk_07;
        }
        break;

    case 1:
    case 3:
    case 5:
        {
            register struct WarioData *target asm("r0");
            register struct WarioData *copy asm("r1");

            target = &gWarioData;
            target->pose = newPose;
            copy = &gWarioDataCopy;
            target->xVelocity = copy->xVelocity;
        }
        break;

    case 2:
    case 4:
    case 6:
        {
            register struct WarioData *target asm("r1");
            register struct WarioData *copy asm("r2");

            target = &gWarioData;
            target->pose = newPose;
            copy = &gWarioDataCopy;
            target->xVelocity = copy->xVelocity;
            target->yVelocity = copy->yVelocity;
        }
        break;

    case 7:
    case 8:
        {
            register struct WarioData *target asm("r1");
            register struct WarioData *copy asm("r0");

            target = &gWarioData;
            target->pose = newPose;
            copy = &gWarioDataCopy;
            target->xVelocity = copy->xVelocity;
            m4aSongNumStart(SE_FLAMING_WARIO_ENGULFED);
        }
        break;

    case 9:
        m4aSongNumStart(SE_FLAMING_WARIO_RECOVER);
        /* fall through */
    default:
        {
            register struct WarioData *target asm("r0");

            target = &gWarioData;
            target->pose = newPose;
        }
        break;
    }

end:
    return;
}

void UpdateFlamingWarioMotion(void)
{
    register struct WarioCollisionData *collision asm("r3");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r4");
    u16 yOffset;

    collision = &gWarioCollisionData;
    config = &sFlamingWarioPoseProperties[0][0];
    wario = (struct WarioData *)0x03001898;

    {
        register u32 poseOffset asm("r0");
        register const u8 *field asm("r1");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        field = config + 1;
        poseOffset += (u32)field;
        collision->unk_08 = *(const u8 *)poseOffset;
    }
    {
        register u32 poseOffset asm("r0");
        register const u8 *field asm("r1");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        field = config + 2;
        poseOffset += (u32)field;
        collision->unk_09 = *(const u8 *)poseOffset;
    }
    {
        register u32 poseOffset asm("r0");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        config += 3;
        poseOffset += (u32)config;
        collision->unk_0A = *(const u8 *)poseOffset;
    }

    func_800FE58();
    yOffset = 0;
    if (wario->unk_1A == 2) {
        register u16 velocity asm("r1");
        register u32 shifted asm("r0");

        velocity = wario->yVelocity;
        shifted = velocity;
        shifted <<= 16;
        shifted = (s32)shifted >> 19;
        shifted <<= 16;
        yOffset = shifted >> 16;
        velocity -= 8;
        wario->yVelocity = velocity;
    }

    {
        register struct WarioData *clampWario asm("r4");
        clampWario = wario;
        if (clampWario->yVelocity < -128) {
            clampWario->yVelocity = -128;
        }
    }

    wario->yPosition -= yOffset;
    {
        register u32 xVelocity asm("r0");
        if (wario->unk_1A == 0) {
            xVelocity = func_800FDBC();
        } else {
            xVelocity = *(u16 *)&wario->xVelocity;
        }
        xVelocity <<= 16;
        xVelocity = (s32)xVelocity >> 19;
        xVelocity <<= 16;
        xVelocity >>= 16;
        {
            register u32 delta asm("r2");
            register struct WarioData *positionWario asm("r1");
            u16 xPosition;

            delta = xVelocity;
            asm("" : "+r"(delta));
            positionWario = &gWarioData;
            xPosition = positionWario->xPosition;
            xPosition += delta;
            positionWario->xPosition = xPosition;
        }
    }
}

void ProcessFlamingWarioCollision(void)
{
    register struct WarioCollisionData *collision asm("r4");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r3");
    u8 movementResult;
    u16 flags;
    int collisionResult;

    collision = &gWarioCollisionData;
    config = &sFlamingWarioPoseProperties[0][0];
    wario = (struct WarioData *)0x03001898;

    {
        register u32 poseOffset asm("r0");
        register const u8 *field asm("r1");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        field = config + 4;
        poseOffset += (u32)field;
        collision->unk_0B = *(const u8 *)poseOffset;
    }
    {
        register u32 poseOffset asm("r0");
        register const u8 *field asm("r1");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        field = config + 5;
        poseOffset += (u32)field;
        collision->unk_0C = *(const u8 *)poseOffset;
    }
    {
        register u32 poseOffset asm("r0");
        register const u8 *field asm("r1");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        field = config + 6;
        poseOffset += (u32)field;
        collision->unk_0D = *(const u8 *)poseOffset;
    }
    {
        register u32 poseOffset asm("r0");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        config += 7;
        poseOffset += (u32)config;
        collision->unk_11 = *(const u8 *)poseOffset;
    }

    if (wario->yVelocity <= 0x2F) {
        collision->unk_0C = 0;
    }

    movementResult = 0xFF;
    flags = collision->flags;
    if (flags & 0x40) {
        movementResult = func_8014C4C();
    } else {
        register u16 mask asm("r0");
        mask = 0x80;
        mask &= flags;
        if (mask != 0) {
            movementResult = func_8014930();
        } else if (collision->unk_00 != 0) {
            if (collision->unk_11 == 2) {
                movementResult = func_8014930();
            } else {
                movementResult = func_80143D8();
            }
        } else if (collision->unk_11 == 0) {
            movementResult = func_8014758();
        }
    }

    {
        register struct WarioData *currentWario asm("r4");
        u8 pose;

        currentWario = &gWarioData;
        collisionResult = func_806DAC0(currentWario->yPosition - 0x30, currentWario->xPosition);
        collisionResult &= 0xFF;
        if (collisionResult == 1) {
            currentWario->reaction = collisionResult;
            currentWario->damageTimer = 0x60;
            func_8016614(0);
        } else {
            register int currentPose asm("r0");

            currentPose = currentWario->pose;
            if (currentPose > 6) {
                goto noDirectionChange;
            }
            /* agbcc canonicalizes this as cmp #0 / ble; preserve the target's cmp #1 / blt. */
            asm volatile(
                "cmp %0, #1\n"
                "blt 1f"
                :
                : "r"(currentPose)
                : "cc");
            if (gWarioCollisionData.unk_12 != 0) {
                register int nextPose asm("r0");

                currentWario->horizontalDirection ^= DPAD_LEFT | DPAD_RIGHT;
                nextPose = *(volatile u8 *)&currentWario->pose;
                nextPose += 2;
                movementResult = nextPose;
            }
            asm volatile("1:");
noDirectionChange:
            if (movementResult != 0xFF) {
                SetFlamingWarioPose(movementResult);
            }
        }
    }
}

void LoadFlamingWarioGraphics(int variant)
{
    register u32 graphicsVariant asm("r4");
    register const u8 *palette asm("r5");
    const struct FlamingWarioGraphicsFrame *frame;
    const u8 *gfx;

    graphicsVariant = variant;
    asm("" : "+r"(graphicsVariant));
    graphicsVariant <<= 24;
    graphicsVariant >>= 24;
    func_800FF64();
    frame = sFlamingWarioGraphicsTable[gWarioData.pose][graphicsVariant];
    frame += gWarioData.unk_1F;
    gfx = frame->gfx;
    gWarioData.objData1Size = gfx[0] << 5;
    gfx++;
    gWarioData.objData2Size = gfx[0] << 5;
    gfx++;
    gWarioData.pObjData1 = (u8 *)gfx;
    gWarioData.pObjData2 = (u8 *)gfx + gWarioData.objData1Size;
    gWarioData.pOamData = frame->oam;
    gWarioPaletteSize = 0x40;

    switch (gWarioData.pose) {
    case 0:
    case 1:
    case 2:
        palette = sFlamingWarioBluePalette;
        break;
    case 3:
    case 4:
        palette = sFlamingWarioGreenPalette;
        break;
    case 5:
    case 6:
        palette = sFlamingWarioRedPalette;
        break;
    case 7:
    case 8:
        if (((struct WarioData *)0x03001898)->unk_0C <= 99) {
            palette = sFlamingWarioRedPalette;
        } else if (((struct WarioData *)0x03001898)->unk_0C <= 119) {
            palette = sFlamingWarioEngulfedPalette1;
        } else if (((struct WarioData *)0x03001898)->unk_0C <= 139) {
            palette = sFlamingWarioEngulfedPalette2;
        } else {
            palette = sFlamingWarioEngulfedPalette3;
            if (((struct WarioData *)0x03001898)->unk_0C <= 159) {
                palette -= 0x40;
            }
        }
        break;
    case 9:
        {
            register u8 frameIndex asm("r0");

            frameIndex = gWarioData.unk_1F;
            palette = sFlamingWarioRecoveringPalette;
            if (frameIndex <= 1) {
                palette -= 0x40;
            }
        }
        break;
    default:
        break;
    }
    func_800FD90(palette, 0, 0x20);
}

void UpdateFlamingWarioMusic(void)
{
    register struct MusicPlayerInfo *player0 asm("r8");
    register struct MusicPlayerInfo *player1 asm("r6");
    register const struct MusicPlayer *table asm("r4");
    register int tracks asm("r4");
    register int value asm("r5");

    if (gWarioMusicState != 6) {
        table = gMPlayTable;
        player0 = table[0].info;
        value = 350;
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player0; a1=value; m4aMPlayTempoControl(a0,a1); }
        player1 = table[1].info;
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=value; m4aMPlayTempoControl(a0,a1); }
        tracks = 0xFFFF;
        value -= 94;
        { register struct MusicPlayerInfo *a0 asm("r0"); a0=player0; m4aMPlayPitchControl(a0, tracks, value); }
        { register struct MusicPlayerInfo *a0 asm("r0"); a0=player1; m4aMPlayPitchControl(a0, tracks, value); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player0; a1=tracks; m4aMPlayModDepthSet(a0,a1,20); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=tracks; m4aMPlayModDepthSet(a0,a1,20); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player0; a1=tracks; m4aMPlayLFOSpeedSet(a0,a1,20); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=tracks; m4aMPlayLFOSpeedSet(a0,a1,20); }
        gWarioMusicState = 6;
    }
}

void UpdateFlamingWarioHitbox(void)
{
    register const u8 *config asm("r3");
    register struct WarioData *wario asm("r4");
    register const u8 *hitboxes asm("r2");
    register u32 hitboxOffset asm("r1");
    u8 direction;

    config = &sFlamingWarioPoseProperties[0][0];
    wario = (struct WarioData *)0x03001898;

    {
        register u32 poseOffset asm("r0");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        poseOffset += (u32)config;
        hitboxOffset = *(const u8 *)poseOffset;
    }
    hitboxes = (const u8 *)&sWarioHitboxes[0][0];
    hitboxOffset <<= 3;
    {
        register const u8 *address asm("r0");
        address = (const u8 *)(hitboxOffset + (u32)hitboxes);
        wario->hitboxOffsetLeft = *(const s16 *)address;
        address = hitboxes + 2;
        address = (const u8 *)(hitboxOffset + (u32)address);
        wario->hitboxOffsetTop = *(const s16 *)address;
        address = hitboxes + 4;
        address = (const u8 *)(hitboxOffset + (u32)address);
        wario->hitboxOffsetRight = *(const s16 *)address;
    }
    hitboxes += 6;
    hitboxOffset += (u32)hitboxes;
    wario->hitboxOffsetBottom = *(const s16 *)hitboxOffset;

    {
        register u32 poseOffset asm("r0");
        poseOffset = wario->pose;
        poseOffset <<= 3;
        config += 7;
        poseOffset += (u32)config;
        direction = *(const u8 *)poseOffset;
    }
    if (direction == 2) {
        wario->unk_1A = direction;
    } else if (wario->unk_1A != 1) {
        wario->unk_1A = direction;
    }
}
