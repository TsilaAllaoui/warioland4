#include "types.h"

#define func_800FD90 FrozenHeader_func_800FD90
#define func_8014930 FrozenHeader_func_8014930
#define func_8014C4C FrozenHeader_func_8014C4C
#define func_8016614 FrozenHeader_func_8016614
#include "wario.h"
#undef func_800FD90
#undef func_8014930
#undef func_8014C4C
#undef func_8016614

#include "bg_clip.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "oam.h"
#include "voice_set.h"
#include "wario/frozen.h"
#include "wario/matched_helpers.h"
#include "wario_palette.h"

u8 UpdateFrozenWario(void)
{
    return sFrozenWarioPoseTable[gWarioData.pose]();
}

u8 FrozenWarioTransforming(void)
{
    register struct WarioData* wario asm("r2");
    register const struct FrozenAnimationFrame* animation asm("r3");

    wario = &gWarioData;
    animation = sFrozenTransformAnimation;
    if (wario->unk_1E >= animation[wario->unk_1F].time) {
        wario->unk_1E = 0;
        wario->unk_1F++;
        if (animation[wario->unk_1F].time == 0) {
            return 1;
        }
    }
    return 0xFF;
}

u8 FrozenWarioSlideLeft(void)
{
    if (gWarioData.horizontalDirection & 0x10) {
        gWarioData.xVelocity = -96;
    } else {
        gWarioData.xVelocity = 96;
    }
    return 0xFF;
}

u8 FrozenWarioSlideRight(void)
{
    if (gWarioData.horizontalDirection & 0x10) {
        gWarioData.xVelocity = -96;
    } else {
        gWarioData.xVelocity = 96;
    }
    return 0xFF;
}

u8 FrozenWarioBonk(void)
{
    register struct WarioData* wario asm("r2");
    register const struct FrozenAnimationFrame* animation asm("r3");

    wario = &gWarioData;
    animation = sFrozenBonkAnimation;
    if (wario->unk_1E >= animation[wario->unk_1F].time) {
        wario->unk_1E = 0;
        wario->unk_1F++;
        if (animation[wario->unk_1F].time == 0) {
            wario->reaction = 0;
            wario->damageTimer = 96;
            return 2;
        }
    }
    return 0xFF;
}

void SetFrozenWarioPose(int pose)
{
    register int value asm("r4");
    pose <<= 24;
    value = (u32)pose >> 24;
    func_8010230();
    if (value == 3) {
        goto playVoice;
    }
    if (value > 3) {
        goto greater;
    }
    if (value == 0) {
        goto playFreeze;
    }
    goto setPose;
greater:
    if (value == 253) {
        goto poseOne;
    }
    if (value != 254) {
        goto setPose;
    }
    gWarioData.pose = 2;
    goto end;
poseOne:
    gWarioData.pose = 1;
    goto end;
playFreeze:
    m4aSongNumStart(0x16F);
    goto setPose;
playVoice:
    m4aSongNumStart(0x15F);
    VoiceSetPlay(0);
setPose:
    gWarioData.pose = value;
end:
    return;
}

void UpdateFrozenWarioMovement(void)
{
    register u8* hitbox asm("r3");
    register const u8* data asm("r2");
    register struct WarioData* wario asm("r4");
    register u16 movement asm("r2");
    register u16 velocity asm("r1");
    register s32 temp asm("r0");
    const u8* ptr;
    u16 horizontalMovement;
    u32 index;

    hitbox = gWarioCollisionBytes;
    data = sFrozenPoseData;
    wario = &gWarioData;
    index = wario->pose * 8;
    ptr = data + 1;
    index += (u32)ptr;
    hitbox[8] = *(u8*)index;
    index = wario->pose * 8;
    ptr = data + 2;
    index += (u32)ptr;
    hitbox[9] = *(u8*)index;
    index = wario->pose * 8;
    data += 3;
    index += (u32)data;
    hitbox[10] = *(u8*)index;
    func_800FE58();
    movement = 0;
    if (wario->unk_1A == 2) {
        velocity = wario->yVelocity;
        temp = velocity << 16;
        temp >>= 19;
        temp <<= 16;
        movement = (u32)temp >> 16;
        velocity -= 8;
        wario->yVelocity = velocity;
    }
    if ((s16)wario->yVelocity < -128) {
        wario->yVelocity = -128;
    }
    wario->yPosition -= movement;
    if (wario->unk_1A == 0) {
        temp = func_800FDBC();
    } else {
        temp = (u16)wario->xVelocity;
    }
    temp <<= 16;
    temp >>= 19;
    temp <<= 16;
    movement = (u32)temp >> 16;
    /* Keep the normalized movement live in r2 before loading gWarioData. */
    asm("" : "+r"(movement));
    gWarioData.xPosition += movement;
}

void ProcessFrozenWarioCollision(void)
{
    register u8* hitbox asm("r4");
    register const u8* data asm("r2");
    register struct WarioData* wario asm("r3");
    register int result asm("r6");
    register int callResult asm("r0");
    register struct WarioData* warioAgain asm("r5");
    register int floorResult asm("r4");
    register int mask asm("r0");
    register u8* hitboxAgain asm("r1");
    const u8* ptr;
    u32 index;
    u16 flags;

    hitbox = gWarioCollisionBytes;
    data = sFrozenPoseData;
    wario = &gWarioData;
    index = wario->pose * 8;
    ptr = data + 4;
    index += (u32)ptr;
    hitbox[11] = *(u8*)index;
    index = wario->pose * 8;
    ptr = data + 5;
    index += (u32)ptr;
    hitbox[12] = *(u8*)index;
    index = wario->pose * 8;
    ptr = data + 6;
    index += (u32)ptr;
    hitbox[13] = *(u8*)index;
    index = wario->pose * 8;
    data += 7;
    index += (u32)data;
    hitbox[17] = *(u8*)index;
    if (wario->yVelocity <= 47) {
        hitbox[12] = 0;
    }
    result = 0xFF;
    flags = *(u16*)(hitbox + 2);
    if (flags & 0x40) {
        callResult = func_8014C4C();
        goto normalize;
    }
    mask = 0x80;
    mask &= flags;
    if (mask != 0) {
        callResult = func_8014930();
        asm("");
        goto normalize;
    }
    if (*(u16*)hitbox != 0) {
        if (hitbox[17] == 2) {
            callResult = func_8014930();
        } else {
            callResult = func_80143D8();
        }
        goto normalize;
    }
    if (hitbox[17] == 0) {
        callResult = func_8014758();
    normalize:
        result = (u8)callResult;
    }
    warioAgain = &gWarioData;
    floorResult = GetBackgroundCollisionAtPosition((u16)(warioAgain->yPosition - 48), warioAgain->xPosition);
    mask = 0xFF;
    floorResult &= mask;
    if (floorResult == 1) {
        if (warioAgain->pose != 3) {
            SetFrozenWarioPose(3);
        }
        gWarioDustEffect1.unk0 = floorResult;
    } else {
        hitboxAgain = gWarioCollisionBytes;
        if (hitboxAgain[17] != 0xFF) {
            if (hitboxAgain[18] != 0) {
                result = 3;
            }
            if (result != 0xFF) {
                SetFrozenWarioPose(result);
            }
        }
    }
}

void LoadFrozenWarioGraphics(int index)
{
    register u32 value asm("r4");
    register const struct FrozenGraphicsFrame** table asm("r1");
    register struct WarioData* wario asm("r2");
    const struct FrozenGraphicsFrame* frame;
    const u8* gfx;
    value = index;
    asm("" : "+r"(value));
    value <<= 24;
    value >>= 24;
    func_800FF64();
    table = sFrozenGraphicsTable;
    value <<= 2;
    wario = (struct WarioData*)0x03001898;
    value += wario->pose << 3;
    value += (u32)table;
    frame = *(const struct FrozenGraphicsFrame**)value;
    frame += wario->unk_1F;
    gfx = frame->data;
    wario->objData1Size = gfx[0] << 5;
    gfx++;
    wario->objData2Size = gfx[0] << 5;
    gfx++;
    wario->pObjData1 = (u8*)gfx;
    wario->pObjData2 = (u8*)gfx + wario->objData1Size;
    wario->pOamData = frame->oam;
    gWarioPaletteSize = 64;
    func_800FD90(sWarioDefaultObjPalette, 0, 16);
    func_800FD90(sFrozenPalette, 16, 16);
}

void ApplyFrozenWarioMusicEffects(void)
{
    struct MusicPlayerInfo* mplay0;
    struct MusicPlayerInfo* mplay1;
    if (gWarioMusicState != 8) {
        mplay0 = gMPlayTable[0].info;
        m4aMPlayTempoControl(mplay0, 350);
        mplay1 = gMPlayTable[1].info;
        m4aMPlayTempoControl(mplay1, 350);
        m4aMPlayPitchControl(mplay0, 0xFFFF, 1000);
        m4aMPlayPitchControl(mplay1, 0xFFFF, 1000);
        m4aMPlayModDepthSet(mplay0, 0xFFFF, 40);
        m4aMPlayModDepthSet(mplay1, 0xFFFF, 40);
        m4aMPlayLFOSpeedSet(mplay0, 0xFFFF, 50);
        m4aMPlayLFOSpeedSet(mplay1, 0xFFFF, 50);
        gWarioMusicState = 8;
    }
}

void UpdateFrozenWarioHitbox(void)
{
    register const u8* data asm("r3");
    register struct WarioData* wario asm("r4");
    register const u8* hitboxes asm("r2");
    register u32 offset asm("r1");
    register u32 address asm("r0");
    u32 poseOffset;
    u8 value;
    data = sFrozenPoseData;
    wario = &gWarioData;
    offset = data[wario->pose * 8];
    hitboxes = (const u8*)sWarioHitboxes;
    offset <<= 3;
    address = offset + (u32)hitboxes;
    wario->hitboxOffsetLeft = *(u16*)address;
    address = (u32)(hitboxes + 2);
    asm("" : "+r"(address));
    address = offset + address;
    wario->hitboxOffsetTop = *(u16*)address;
    address = (u32)(hitboxes + 4);
    asm("" : "+r"(address));
    address = offset + address;
    wario->hitboxOffsetRight = *(u16*)address;
    hitboxes += 6;
    offset += (u32)hitboxes;
    wario->hitboxOffsetBottom = *(u16*)offset;
    poseOffset = wario->pose * 8;
    data += 7;
    poseOffset += (u32)data;
    value = *(u8*)poseOffset;
    if (value == 2) {
        wario->unk_1A = value;
    } else if (wario->unk_1A != 1) {
        wario->unk_1A = value;
    }
}
