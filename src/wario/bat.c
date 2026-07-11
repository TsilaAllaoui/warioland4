#include "types.h"

/*
 * Keep the matched ABI declarations from wario/matched_helpers.h.  The
 * narrower convenience prototypes in wario.h alter agbcc call-site output.
 */
#define func_800FD90 BatHeader_func_800FD90
#define func_8014930 BatHeader_func_8014930
#define func_8014C4C BatHeader_func_8014C4C
#define func_8016614 BatHeader_func_8016614
#include "wario.h"
#undef func_800FD90
#undef func_8014930
#undef func_8014C4C
#undef func_8016614

#include "bg_clip.h"
#include "gba/m4a.h"
#include "global_data.h"
#include "input.h"
#include "oam.h"
#include "sound.h"
#include "voice_set.h"
#include "wario/bat.h"
#include "wario/matched_helpers.h"
#include "wario_palette.h"

u8 UpdateBatWario(void) { return sBatWarioPoseTable[gWarioData.pose](); }

u8 BatWarioTransforming(void)
{
    register struct WarioData *wario asm("r2");
    register const struct BatAnimationFrame *animation asm("r3");
    if (gCurrentWarioEffect.unk_3 <= 3) return 0xFF;
    wario = &gWarioData; animation = sBatTransformAnimation;
    if (wario->unk_1E >= animation[wario->unk_1F].time) {
        wario->unk_1E = 0; wario->unk_1F++;
        if (animation[wario->unk_1F].time == 0) return 3;
    }
    return 0xFF;
}

u8 BatWarioFlying(void)
{
    register u16 *pressedPtr asm("r0");
    register u16 *heldPtr asm("r1");
    register struct WarioData *wario asm("r4");
    register int one asm("r2");
    register int pressed asm("r1");
    register int initialHeld asm("r0");
    register int held asm("r1");
    register int direction asm("r2");
    register int intersection asm("r3");
    register int temp asm("r0");
    register struct WarioData *animationWario asm("r2");
    register const struct BatAnimationFrame *animation asm("r3");
    int counter;

    pressedPtr = &gButtonsPressed;
    pressed = *pressedPtr;
    one = 1;
    temp = one;
    temp &= pressed;
    if (temp != 0) {
        gWarioData.unk_08 = 1;
        return 0xFE;
    }

    heldPtr = &gButtonsHeld;
    initialHeld = *heldPtr;
    one &= initialHeld;
    wario = &gWarioData;
    if (one == 0) {
        if (wario->yVelocity > 0)
            wario->yVelocity = one;
        wario->unk_09 = one;
    }

    if ((u16)(wario->yVelocity - 1) <= 31) {
        counter = wario->unk_09;
        temp = counter;
        if (temp != 0) {
            wario->yVelocity = 32;
            wario->unk_09 = counter - 1;
        } else {
            wario->yVelocity = temp;
        }
    }

    held = *heldPtr;
    direction = wario->horizontalDirection;
    intersection = held & direction;
    if (intersection != 0) {
        if (direction & 0x10)
            wario->xVelocity = 32;
        else
            wario->xVelocity = -32;
    } else {
        direction ^= 0x30;
        temp = direction;
        /* Keep the copied direction in r0 across the mask operation. */
        asm("" : "+r"(temp));
        temp &= held;
        asm("" : "+r"(temp));
        temp <<= 16;
        if (temp != 0)
            wario->horizontalDirection = direction;
        wario->xVelocity = intersection;
    }

    animationWario = wario;
    animation = sBatFlyAnimation;
    if (animationWario->unk_1E >= animation[animationWario->unk_1F].time) {
        animationWario->unk_1E = 0;
        temp = animationWario->unk_1F + 1;
        animationWario->unk_1F = temp;
        temp <<= 24;
        temp = (u32)temp >> 24;
        if (temp == 1) {
            m4aSongNumStart(SE_BAT_WARIO_FLAP);
        } else if (animation[wario->unk_1F].time == 0) {
            wario->unk_1F = 0;
        }
    }
    return 0xFF;
}

u8 BatWarioLanding(void)
{
    register u16 pressed asm("r0");
    register int one asm("r3");
    register struct WarioData *wario asm("r2");
    register const struct BatAnimationFrame *animation asm("r4");
    pressed = gButtonsPressed; one = 1; one &= pressed;
    if (one != 0) { register struct WarioData *current asm("r1"); register int value asm("r0"); current=&gWarioData; value=1; current->unk_08=value; return 0xFE; }
    wario=&gWarioData; animation=sBatLandAnimation;
    if (wario->unk_1E >= animation[wario->unk_1F].time) { wario->unk_1E=one; wario->unk_1F++; if (animation[wario->unk_1F].time==0) return 3; }
    return 0xFF;
}

u8 BatWarioTurning(void)
{
    register u16 *heldPtr asm("r2");
    register struct WarioData *wario asm("r4");
    register int direction asm("r1");
    register int mask asm("r0");
    register int changedDirection asm("r3");
    register const struct BatAnimationFrame *animation asm("r2");

    if (gButtonsPressed & 1) {
        gWarioData.unk_08 = 1;
        return 0xFE;
    }

    heldPtr = &gButtonsHeld;
    wario = &gWarioData;
    direction = wario->horizontalDirection;
    /* Keep the original direction live before constructing the mask. */
    asm("" : "+r"(direction));
    mask = 0x30;
    changedDirection = direction;
    changedDirection ^= mask;
    mask = *heldPtr;
    changedDirection &= mask;
    if (changedDirection != 0)
        return 2;

    animation = sBatTurnAnimation;
    if (wario->unk_1E >= animation[wario->unk_1F].time) {
        wario->unk_1E = changedDirection;
        wario->unk_1F++;
        if (animation[wario->unk_1F].time == 0)
            wario->unk_1F = 0;
    }
    return 0xFF;
}

u8 BatWarioRecovering(void)
{
    register struct WarioData *wario asm("r2"); register const struct BatAnimationFrame *animation asm("r3"); wario=&gWarioData;animation=sBatRecoverAnimation;
    if(wario->unk_1E>=animation[wario->unk_1F].time){wario->unk_1E=0;wario->unk_1F++;if(animation[wario->unk_1F].time==0){wario->reaction=0;wario->damageTimer=96;return 2;}} return 0xFF;
}

void SetBatWarioPose(int pose)
{
    register int value asm("r4"); register struct WarioData *wario asm("r1"); pose<<=24; value=(u32)pose>>24; func_8010230();
    if(value==4)goto resetEffects;if(value>4)goto greater;if(value==0)goto transforming;if(value==2)goto onGround;wario=&gWarioData;goto setPose;
greater: if(value==253)goto touchingLight;wario=&gWarioData;if(value!=254)goto setPose;wario->pose=1;if(gWarioDataCopy.unk_08==1){wario->unk_09=12;wario->yVelocity=128;}goto end;
touchingLight:gWarioData.pose=3;goto end;
transforming:m4aSongNumStart(SE_BAT_WARIO_TRANSFORM);VoiceSetPlay(4);
resetEffects:gUnk_3001930=sUnk_82DD0EC;gCurrentWarioEffect=sStartingWarioEffect;gWarioData.pose=value;gCurrentWarioEffect.type=4;goto end;
onGround:wario=&gWarioData;wario->unk_03=1;
setPose:wario->pose=value;
end:return;
}

void UpdateBatWarioMovement(void)
{
    register u8 *hitbox asm("r3");
    register const u8 *data asm("r2");
    register struct WarioData *wario asm("r4");
    register u16 movement asm("r3");
    register s32 temp asm("r0");
    register s32 shifted asm("r1");
    register int velocity asm("r2");
    s16 signedVelocity;
    s32 horizontalMovement;
    const u8 *ptr;
    u32 index;

    hitbox = gWarioCollisionBytes;
    data = sBatPoseData;
    wario = &gWarioData;
    index = wario->pose * 8;
    ptr = data + 1;
    index += (u32)ptr;
    hitbox[8] = *(u8 *)index;
    index = wario->pose * 8;
    ptr = data + 2;
    index += (u32)ptr;
    hitbox[9] = *(u8 *)index;
    index = wario->pose * 8;
    data += 3;
    index += (u32)data;
    hitbox[10] = *(u8 *)index;
    func_800FE58();

    movement = 0;
    if (wario->pose == 1) {
        velocity = *(u16 *)&wario->yVelocity;
        shifted = velocity << 16;
        temp = shifted >> 19;
        temp <<= 16;
        movement = (u32)temp >> 16;
        if (shifted >= 0) {
            temp = velocity;
            temp -= 8;
        } else {
            temp = velocity - 4;
        }
        wario->yVelocity = temp;
    }

    gWarioData.yPosition -= movement;
    signedVelocity = gWarioData.yVelocity;
    if (signedVelocity < -128)
        gWarioData.yVelocity = -128;
    if (gWarioData.unk_1A == 0)
        horizontalMovement = func_800FDBC();
    else
        horizontalMovement = (u16)gWarioData.xVelocity;
    horizontalMovement <<= 16;
    horizontalMovement >>= 19;
    horizontalMovement <<= 16;
    movement = (u32)horizontalMovement >> 16;
    /* Keep the normalized movement live before reloading gWarioData. */
    asm("" : "+r"(movement));
    gWarioData.xPosition += movement;
}

void ProcessBatWarioCollision(void)
{
    register u8 *hitbox asm("r4");
    register const u8 *data asm("r2");
    register struct WarioData *wario asm("r3");
    register struct WarioData *floorWario asm("r4");
    register u8 *finalHitbox asm("r0");
    register int result asm("r5");
    register int callResult asm("r0");
    register int collisionType asm("r1");
    register int flags asm("r2");
    register int floorResult asm("r1");
    register int mask asm("r0");
    const u8 *ptr;
    u32 index;

    hitbox = gWarioCollisionBytes;
    data = sBatPoseData;
    wario = &gWarioData;
    index = wario->pose * 8;
    ptr = data + 4;
    index += (u32)ptr;
    hitbox[11] = *(u8 *)index;
    index = wario->pose * 8;
    ptr = data + 5;
    index += (u32)ptr;
    hitbox[12] = *(u8 *)index;
    index = wario->pose * 8;
    ptr = data + 6;
    index += (u32)ptr;
    hitbox[13] = *(u8 *)index;
    index = wario->pose * 8;
    data += 7;
    index += (u32)data;
    collisionType = *(u8 *)index;
    hitbox[17] = collisionType;

    result = 0xFF;
    flags = *(u16 *)(hitbox + 2);
    if (flags & 0x40) {
        callResult = func_8014C4C();
        goto normalize;
    }
    mask = 0x80;
    mask &= flags;
    if (mask != 0) {
        callResult = func_8014930();
        /* Prevent agbcc from merging this collision call with the next arm. */
        asm("");
        goto normalize;
    }
    if (*(u16 *)hitbox != 0) {
        if (collisionType == 2)
            callResult = func_8014930();
        else
            callResult = func_80143D8();
        goto normalize;
    }
    if (collisionType == 0) {
        callResult = func_8014758();
normalize:
        callResult <<= 24;
        result = (u32)callResult >> 24;
    }

    floorWario = &gWarioData;
    floorResult = func_806DAC0((u16)(floorWario->yPosition - 48), floorWario->xPosition);
    mask = 0xFF;
    floorResult &= mask;
    if (floorResult == 1) {
        floorWario->reaction = floorResult;
        floorWario->damageTimer = 96;
        func_8016614(0);
    } else {
        finalHitbox = gWarioCollisionBytes;
        if (finalHitbox[17] != 0xFF && result != 0xFF)
            SetBatWarioPose(result);
    }
}

void LoadBatWarioGraphics(int index)
{
    register int value asm("r4");register struct WarioData *wario asm("r3");register int pose asm("r1");register const struct BatGraphicsFrame **table asm("r2");register u32 offset asm("r0");const struct BatGraphicsFrame *frame;const u8 *gfx;
    index<<=24;value=(u32)index>>24;func_800FF64();wario=&gWarioData;pose=wario->pose;if(pose!=0||gCurrentWarioEffect.unk_3>3){table=sBatGraphicsTable;offset=value<<2;pose<<=3;offset+=pose;offset+=(u32)table;frame=*(const struct BatGraphicsFrame**)offset;frame+=wario->unk_1F;gfx=frame->data;wario->objData1Size=gfx[0]<<5;gfx++;wario->objData2Size=gfx[0]<<5;gfx++;wario->pObjData1=(u8*)gfx;wario->pObjData2=(u8*)gfx+wario->objData1Size;wario->pOamData=frame->oam;}gWarioPaletteSize=96;func_800FD90(sBatPalette,0,48);
}

void ApplyBatWarioMusicEffects(void)
{
    struct MusicPlayerInfo *mplay0,*mplay1;if(gWarioMusicState!=13){mplay0=gMPlayTable[0].info;m4aMPlayTempoControl(mplay0,300);mplay1=gMPlayTable[1].info;m4aMPlayTempoControl(mplay1,300);m4aMPlayPitchControl(mplay0,0xFFFF,256);m4aMPlayPitchControl(mplay1,0xFFFF,256);m4aMPlayModDepthSet(mplay0,0xFFFF,20);m4aMPlayModDepthSet(mplay1,0xFFFF,20);m4aMPlayLFOSpeedSet(mplay0,0xFFFF,30);m4aMPlayLFOSpeedSet(mplay1,0xFFFF,30);gWarioMusicState=13;}
}

void UpdateBatWarioHitbox(void)
{
    register const u8 *data asm("r3");register struct WarioData *wario asm("r4");register const u8 *hitboxes asm("r2");register u32 offset asm("r1");register u32 address asm("r0");u32 poseOffset;u8 value;data=sBatPoseData;wario=&gWarioData;offset=data[wario->pose*8];hitboxes=(const u8*)sWarioHitboxes;offset<<=3;address=offset+(u32)hitboxes;wario->hitboxOffsetLeft=*(u16*)address;address=(u32)(hitboxes+2);address=offset+address;wario->hitboxOffsetTop=*(u16*)address;address=(u32)(hitboxes+4);address=offset+address;wario->hitboxOffsetRight=*(u16*)address;hitboxes+=6;offset+=(u32)hitboxes;wario->hitboxOffsetBottom=*(u16*)offset;poseOffset=wario->pose*8;data+=7;poseOffset+=(u32)data;value=*(u8*)poseOffset;if(value==2)wario->unk_1A=value;else if(wario->unk_1A!=1)wario->unk_1A=value;
}
