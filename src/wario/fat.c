#include "bg_clip.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "input.h"
#include "main.h"
#include "screen_shake.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"
#include "wario/fat.h"
#include "wario_palette.h"

void func_800FD90(const void *, u32, u32);
int func_800FDBC(void);
void func_800FE58(void);
void func_800FF64(void);
void func_8010230(void);
int func_80143D8(void);
int func_8014758(void);
int func_8014930(void);
int func_8014C4C(void);
void func_8016614(u8);
int func_8014268(u8, u16, void *);

u8 UpdateFatWario(void)
{
    return sFatWarioPoseTable[gWarioData.pose]();
}

u8 FatWarioTransforming(void)
{
    if (gWarioData.unk_1E >= sFatWarioTransformingFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioTransformingFrames[gWarioData.unk_1F].time == 0) {
            return 9;
        }
    }
    return 0xFF;
}

u8 FatWarioTransformingMidair(void)
{
    if (gWarioData.unk_1E >= sFatWarioTransformingFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioTransformingFrames[gWarioData.unk_1F].time == 0) {
            gWarioData.unk_1F--;
        }
    }
    return 0xFF;
}

u8 FatWarioTurning(void)
{
    if (gWarioData.unk_1E >= sFatWarioTurningFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioTurningFrames[gWarioData.unk_1F].time == 0) {
            return 9;
        }
    }
    return 0xFF;
}

u8 FatWarioWalking(void)
{
    register struct WarioData *wario asm("r3");
    register const struct FatWarioGraphicsFrame *frames asm("r4");

    if (gButtonsPressed & A_BUTTON) {
        return 4;
    }

    {
        register struct WarioData *address asm("r0");
        register u16 timer asm("r2");
        register u32 limit asm("r1");
        register u16 nextTimer asm("r0");

        address = &gWarioData;
        timer = address->unk_0C;
        limit = 0x167;
        wario = address;
        if (timer > limit) {
            return 8;
        }
        nextTimer = timer + 1;
        wario->unk_0C = nextTimer;
    }

    {
        register const u16 *buttons asm("r0");
        register unsigned int held asm("r2");
        register unsigned int direction asm("r1");
        register unsigned int active asm("r0");

        buttons = &gButtonsHeld;
        held = *buttons;
        direction = wario->horizontalDirection;
        asm("" : "=r"(active) : "0"(held));
        active &= direction;
        if (active != 0) {
            register unsigned int right asm("r0");
            right = DPAD_RIGHT;
            right &= direction;
            if (right != 0) {
                wario->xVelocity = 0x20;
            } else {
                wario->xVelocity = -0x20;
            }
        } else {
            register u32 test asm("r0");
            test = DPAD_LEFT | DPAD_RIGHT;
            test ^= direction;
            test &= held;
            test <<= 16;
            asm("" : "+r"(test));
            if (test != 0) {
                return 2;
            }
            return 9;
        }
    }

    {
        register struct WarioData *animWario asm("r2");
        register unsigned int frame asm("r0");

        animWario = wario;
        frames = sFatWarioWalkingFrames;
        if (animWario->unk_1E >= frames[animWario->unk_1F].time) {
            animWario->unk_1E = 0;
            frame = animWario->unk_1F;
            frame++;
            animWario->unk_1F = frame;
            frame <<= 24;
            frame >>= 24;
            if (frame == 1) {
                m4aSongNumStart(SE_FAT_WARIO_STEP);
            } else if (frames[wario->unk_1F].time == 0) {
                wario->unk_1F = 0;
            }
        }
    }
    return 0xFF;
}

u8 FatWarioJumping(void)
{
    if (gWarioData.unk_1E >= sFatWarioJumpingFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioJumpingFrames[gWarioData.unk_1F].time == 0) {
            gWarioData.unk_08 = 1;
            gWarioData.unk_0C += 20;
            return 0xFE;
        }
    }
    return 0xFF;
}

u8 FatWarioFalling(void)
{
    register const u16 *buttons asm("r0");
    register struct WarioData *wario asm("r4");
    register u16 active asm("r3");
    u16 held;
    u16 direction;

    buttons = &gButtonsHeld;
    wario = &gWarioData;
    held = *buttons;
    direction = wario->horizontalDirection;
    asm("" : "=r"(active) : "0"(held));
    active &= direction;
    if (active != 0) {
        register u16 right asm("r0");
        right = DPAD_RIGHT;
        right &= direction;
        if (right != 0) {
            wario->xVelocity = 0x20;
        } else {
            wario->xVelocity = -0x20;
        }
    } else {
        register u32 test asm("r0");
        direction ^= DPAD_LEFT | DPAD_RIGHT;
        test = direction;
        test &= held;
        test <<= 16;
        asm("" : "+r"(test));
        if (test != 0) {
            wario->horizontalDirection = direction;
        }
        wario->xVelocity = active;
    }
    return 0xFF;
}

u8 FatWarioLanding(void)
{
    register struct WarioAfterimage *effect asm("r2");
    register const struct WarioEffectFrame *frames asm("r3");

    if (gWarioData.unk_1E > 29) {
        return 9;
    }

    effect = &gUnk_3001930;
    frames = sWarioAfterimageFrames;
    if (effect->unk1 >= frames[effect->unk2].time) {
        effect->unk1 = 0;
        effect->unk2++;
        if (frames[effect->unk2].time == 0) {
            effect->unk2 = 0;
        }
    }
    return 0xFF;
}

u8 FatWarioKillingEnemy(void)
{
    if (gWarioData.unk_1E >= sFatWarioKillingEnemyFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioKillingEnemyFrames[gWarioData.unk_1F].time == 0) {
            return 9;
        }
    }
    return 0xFF;
}

u8 FatWarioDetransforming(void)
{
    if (gWarioData.unk_1E >= sFatWarioDetransformingFrames[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sFatWarioDetransformingFrames[gWarioData.unk_1F].time == 0) {
            gWarioData.reaction = 0;
            gWarioData.damageTimer = 0x60;
            return 2;
        }
    }
    return 0xFF;
}

u8 FatWarioStartingWalkAfterLanding(void)
{
    register struct WarioData *wario asm("r2");
    register unsigned int held asm("r1");
    register unsigned int direction asm("r2");

    wario = &gWarioData;
    if (wario->unk_0A > 7) {
        return 8;
    }
    if (gButtonsPressed & A_BUTTON) {
        return 4;
    }
    held = gButtonsHeld;
    direction = wario->horizontalDirection;
    {
        register u16 test asm("r0");
        test = held;
        test &= direction;
        if (test != 0) {
            return 3;
        }
    }
    {
        register u32 test asm("r0");
        test = DPAD_LEFT | DPAD_RIGHT;
        test ^= direction;
        test &= held;
        if (test != 0) {
            return 2;
        }
    }
    {
        register u32 test asm("r0");
        test = DPAD_UP;
        test &= held;
        if (test != 0) {
            return 10;
        }
    }
    return 0xFF;
}

u8 FatWarioIdleInput(void)
{
    register const u16 *buttons asm("r0");
    register struct WarioData *wario asm("r1");
    register unsigned int held asm("r2");
    register unsigned int direction asm("r1");

    if (gButtonsPressed & A_BUTTON) {
        return 4;
    }
    buttons = &gButtonsHeld;
    wario = &gWarioData;
    held = *buttons;
    direction = wario->horizontalDirection;
    {
        register u16 test asm("r0");
        test = held;
        test &= direction;
        if (test != 0) {
            return 3;
        }
    }
    {
        register u32 test asm("r0");
        test = DPAD_LEFT | DPAD_RIGHT;
        test ^= direction;
        test &= held;
        if (test != 0) {
            return 2;
        }
    }
    {
        register u32 test asm("r0");
        test = DPAD_UP;
        test &= held;
        if (test == 0) {
            return 9;
        }
    }
    return 0xFF;
}

void SetFatWarioPose(u8 pose)
{
    register int newPose asm("r4");
    register struct WarioData *poseTarget asm("r3");

    newPose = pose;
    func_8010230();
    if (newPose == 0) {
        if (gWarioDataCopy.unk_1A == 2) {
            newPose = 1;
        }
        m4aSongNumStart(SE_FAT_WARIO_TRANSFORM_START);
        m4aSongNumStart(SE_FAT_WARIO_TRANSFORM_LOOP);
        VoiceSetPlay(4);
    } else {
        gWarioData.unk_0A = gWarioDataCopy.unk_0A;
        gWarioData.unk_0C = gWarioDataCopy.unk_0C;
    }

    if (newPose == 0xFD) {
        goto pose_fd;
    }
    if (newPose > 0xFD) {
        goto pose_above_fd;
    }
    if (newPose == 2) {
        goto pose_two;
    }
    poseTarget = &gWarioData;
    goto set_pose;

pose_above_fd:
    poseTarget = &gWarioData;
    if (newPose != 0xFE) {
        goto set_pose;
    }
    {
        register struct WarioData *copyAddress asm("r0");
        register struct WarioData *copy asm("r2");
        register u8 copyPose asm("r1");

        copyAddress = &gWarioDataCopy;
        copyPose = copyAddress->pose;
        copy = copyAddress;
        if (copyPose == 0) {
            poseTarget->pose = 1;
            poseTarget->unk_1E = copy->unk_1E;
            poseTarget->unk_1F = copy->unk_1F;
        } else {
            poseTarget->pose = 5;
        }
        if (copy->unk_08 != 0) {
            poseTarget->yVelocity = 0x6C;
        }
        poseTarget->xVelocity = copy->xVelocity;
    }
    goto end;

pose_fd:
    {
        register struct WarioData *copy asm("r2");
        copy = &gWarioDataCopy;
        if (copy->pose == 1) {
            register struct WarioData *wario asm("r1");
            wario = &gWarioData;
            wario->pose = 0;
            wario->unk_1E = copy->unk_1E;
            wario->unk_1F = copy->unk_1F;
            goto end;
        }
        {
            register struct WarioData *wario asm("r1");
            wario = &gWarioData;
            wario->pose = 6;
            wario->unk_0A++;
        }
        gUnk_3001930.unk0 = 4;
        ScreenShakeRequestY(0x40, 0);
        m4aSongNumStart(SE_FAT_WARIO_LAND);
    }
    goto end;

pose_two:
    {
        register struct WarioData *wario asm("r1");
        wario = &gWarioData;
        wario->unk_03 = 1;
        poseTarget = wario;
    }
set_pose:
    poseTarget->pose = newPose;
end:
    return;
}

void UpdateFatWarioMotion(void)
{
    register struct WarioCollisionData *collision asm("r3");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r4");
    u16 yOffset;

    collision = &gWarioCollisionData;
    config = &sFatWarioPoseProperties[0][0];
    wario = &gWarioData;

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

void ProcessFatWarioCollision(void)
{
    register struct WarioCollisionData *collision asm("r4");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r3");
    u8 movementResult;
    u16 flags;
    int collisionResult;
    u32 local;

    collision = &gWarioCollisionData;
    config = &sFatWarioPoseProperties[0][0];
    wario = &gWarioData;

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
        register struct WarioData *currentWario asm("r5");
        currentWario = &gWarioData;
        collisionResult = func_806DAC0(currentWario->yPosition - 0x30, currentWario->xPosition);
        collisionResult &= 0xFF;
        if (collisionResult == 1) {
            currentWario->reaction = collisionResult;
            func_8016614(12);
            gWarioDustEffect1.unk0 = collisionResult;
        } else {
            register struct WarioCollisionData *collision2 asm("r4");
            collision2 = &gWarioCollisionData;
            if (collision2->unk_11 != 0xFF) {
                if (currentWario->pose == 5 && movementResult == 0xFD) {
                    register int result asm("r0");
                    result = func_8014268(collision2->unk_08, currentWario->yPosition + 1, &local);
                    if (result != 0 && result <= collision2->unk_10) {
                        movementResult = 0xFF;
                    }
                }
                if (movementResult != 0xFF) {
                    SetFatWarioPose(movementResult);
                }
            }
        }
    }
}

void LoadFatWarioGraphics(int variant)
{
    register u32 graphicsVariant asm("r4");
    const struct FatWarioGraphicsFrame *frame;
    const u8 *gfx;

    graphicsVariant = variant;
    asm("" : "+r"(graphicsVariant));
    graphicsVariant <<= 24;
    graphicsVariant >>= 24;
    func_800FF64();

    frame = sFatWarioGraphicsTable[gWarioData.pose][graphicsVariant];
    frame += gWarioData.unk_1F;
    gfx = frame->gfx;
    gWarioData.objData1Size = gfx[0] << 5;
    gfx++;
    gWarioData.objData2Size = gfx[0] << 5;
    gfx++;
    gWarioData.pObjData1 = (u8 *)gfx;
    gWarioData.pObjData2 = (u8 *)gfx + gWarioData.objData1Size;
    gWarioData.pOamData = frame->oam;
    gWarioPaletteSize = 0x20;
    func_800FD90(sUnk_82DDDA0, 0, 0x10);
}

void UpdateFatWarioMusic(void)
{
    register struct MusicPlayerInfo *player0 asm("r6");
    register struct MusicPlayerInfo *player1 asm("r8");
    register const struct MusicPlayer *table asm("r4");
    register int tracks asm("r4");
    register int pitch asm("r5");

    if (gWarioMusicState != 7) {
        table = gMPlayTable;
        player0 = table[0].info;
        m4aMPlayTempoControl(player0, 150);
        player1 = table[1].info;
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=150; m4aMPlayTempoControl(a0,a1); }
        tracks = 0xFFFF;
        pitch = -500;
        { register struct MusicPlayerInfo *arg0 asm("r0"); arg0=player0; m4aMPlayPitchControl(arg0, tracks, pitch); }
        { register struct MusicPlayerInfo *arg0 asm("r0"); arg0=player1; m4aMPlayPitchControl(arg0, tracks, pitch); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player0; a1=tracks; m4aMPlayModDepthSet(a0,a1,10); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=tracks; m4aMPlayModDepthSet(a0,a1,10); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player0; a1=tracks; m4aMPlayLFOSpeedSet(a0,a1,50); }
        { register struct MusicPlayerInfo *a0 asm("r0"); register int a1 asm("r1"); a0=player1; a1=tracks; m4aMPlayLFOSpeedSet(a0,a1,50); }
        gWarioMusicState = 7;
    }
}

void UpdateFatWarioHitbox(void)
{
    register const u8 *config asm("r3");
    register struct WarioData *wario asm("r4");
    register const u8 *hitboxes asm("r2");
    register u32 hitboxOffset asm("r1");
    u8 direction;

    config = &sFatWarioPoseProperties[0][0];
    wario = &gWarioData;

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
