#include "bg_clip.h"
#include "global_data.h"
#include "input.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"
#include "wario/mask.h"
#include "wario_palette.h"

u8 UpdateMaskWario(void)
{
    return sWarioMaskPoseTable[gWarioData.pose]();
}

u8 MaskWarioTransforming(void)
{
    register int newTimer asm("r0");
    u16 timer;

    {
        register u16 oldTimer asm("r1");
        oldTimer = gWarioData.unk_0C;
        if (oldTimer > 0x120) {
            return 1;
        }

        newTimer = oldTimer + 1;
    }
    gWarioData.unk_0C = newTimer;
    if ((u16)newTimer == 10) {
        m4aSongNumStart(SE_MASK_WARIO_TRANSFORM_START);
    }

    timer = gWarioData.unk_0C;
    if (timer > 10) {
        gWarioData.yPosition -= 8;
        if (gButtonsPressed & (DPAD_LEFT | DPAD_RIGHT)) {
            gWarioData.unk_0C = timer + 6;
        }
    }

    if (gWarioData.unk_0A <= 139) {
        gWarioData.unk_0A++;
    }
    if (gWarioData.unk_0A == 130) {
        m4aSongNumStart(SE_MASK_WARIO_TRANSFORM_END);
    }

    if (gWarioData.unk_1E >= sMaskWarioTransformAnimation[gWarioData.unk_1F].time) {
        gWarioData.unk_1E = 0;
        gWarioData.unk_1F++;
        if (sMaskWarioTransformAnimation[gWarioData.unk_1F].time == 0) {
            gWarioData.unk_1F = 0;
        }
    }

    return 0xFF;
}

u8 MaskWarioAirborne(void)
{
    gWarioData.yVelocity -= 8;
    return 0xFF;
}

void SetMaskWarioPose(u8 pose)
{
    if ((u8)(pose + 3) > 1) {
        func_8010230();
        gWarioData.pose = pose;
        if (pose == 0) {
            VoiceSetPlay(VS_WARIO_SCREAMS);
        }
    }
}

void UpdateMaskWarioMotion(void)
{
    register struct WarioCollisionData *collision asm("r3");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r4");
    u16 yOffset;

    collision = &gWarioCollisionData;
    config = &sMaskWarioPoseProperties[0][0];
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

    yOffset = 0;
    if (wario->pose == 1) {
        register u16 velocity asm("r1");
        velocity = wario->yVelocity;
        yOffset = (s16)velocity >> 3;
        wario->yVelocity = velocity - 8;
    }

    if (wario->yVelocity < -128) {
        wario->yVelocity = -128;
    }

    wario->yPosition -= yOffset;
}

void ProcessMaskWarioCollision(void)
{
    register struct WarioCollisionData *collision asm("r4");
    register const u8 *config asm("r2");
    register struct WarioData *wario asm("r3");
    u8 movementResult;
    u16 flags;
    int collisionResult;

    collision = &gWarioCollisionData;
    config = &sMaskWarioPoseProperties[0][0];
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
        }
    }

    collisionResult = GetBackgroundCollisionAtPosition(gWarioData.yPosition - 0x30, gWarioData.xPosition);
    collisionResult &= 0xFF;
    if (collisionResult == 1) {
        gWarioData.reaction = collisionResult;
        gWarioData.damageTimer = 0x60;
        func_8016614(0);
    } else if (movementResult == 0xFD) {
        gWarioData.reaction = 0;
        gWarioData.damageTimer = 0x60;
        func_8012BAC(0x2F);
    }
}

void LoadMaskWarioGraphics(u8 variant)
{
    const struct MaskWarioGraphicsFrame *frame;
    const u8 *gfx;

    func_800FF64();

    frame = sMaskWarioGraphicsTable[gWarioData.pose][variant];
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
    func_800FD90(sMaskWarioPalette, 0, 0x10);
}

void UpdateMaskWarioAnimation(void)
{
}

void UpdateMaskWarioHitbox(void)
{
    register const u8 *config asm("r3");
    register struct WarioData *wario asm("r4");
    register const u8 *hitboxes asm("r2");
    register u32 hitboxOffset asm("r1");
    u8 direction;

    config = &sMaskWarioPoseProperties[0][0];
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
