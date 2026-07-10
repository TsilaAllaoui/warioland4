#include "global_data.h"
#include "screen_shake.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/piston.h"
#include "sprite_util.h"
#include "wario.h"
#include "gba/m4a.h"

extern const struct AnimationFrame sPistonChildOam[];
extern const struct AnimationFrame sPistonIdleOam[];
extern const struct AnimationFrame sPistonPrepareOam[];
extern const struct AnimationFrame sPistonPostImpactOam[];
extern const struct AnimationFrame sPistonExtendOam[];
extern const struct AnimationFrame sPistonImpactOam[];
extern const s16 sPistonYMovement[];
extern u8 gUnk_3000964[];

void InitPiston(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->status |= 0x400;
    sprite->drawDistanceDown = 32;
    sprite->drawDistanceUp = 32;
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = 128;
    sprite->hitboxExtentDown = 124;
    sprite->hitboxExtentLeft = 80;
    sprite->hitboxExtentRight = 80;
    sprite->warioCollision = 30;
    sprite->work1 = 0;
    SpriteSpawnAsChild(PSPRITE_B9, sprite->roomSlot, sprite->gfxSlot, sprite->yPosition, sprite->xPosition);
}

void PistonSetIdle(void)
{
    struct PrimarySpriteData* sprite;
    sprite = &gCurrentSprite;
    sprite->pOamData = sPistonIdleOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = 16;
    if (sprite->globalID == PSPRITE_PISTON)
        sprite->work0 = 75;
    else
        sprite->work0 = 30;
}

void PistonWaitBeforeExtending(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;
    if (gWarioData.reaction == 10)
        return;
    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pose = 27;
        sprite->work0 = 30;
        sprite->pOamData = sPistonPrepareOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
    }
}

void PistonStartExtending(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;
    sprite = &gCurrentSprite;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->pOamData = sPistonExtendOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pose = 28;
        sprite->work1 = 0;
        sprite->work3 = 0;
        sprite->warioCollision = 31;
        m4aSongNumStart(SE_PISTON_EXTEND);
    }
}

void PistonExtend(void)
{
    struct PrimarySpriteData* sprite;
    u32 y;
    s16 movement;
    u8 index;
    sprite = &gCurrentSprite;
    y = func_8023A60((u16)(sprite->yPosition + 128), sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1)
        sprite->status |= SPRITE_STATUS_UNDERWATER;
    if (gUnk_3000A50 != 0)
    {
        sprite->yPosition = y - 128;
        sprite->pose = 23;
        m4aSongNumStart(SE_PISTON_IMPACT);
        if (sprite->work1 != 0)
            gWarioData.yPosition = sprite->yPosition + 116;
        return;
    }
    index = sprite->work3;
    movement = sPistonYMovement[index];
    if (movement == 0x7FFF)
        movement = sPistonYMovement[index - 1];
    else
        sprite->work3 = index + 1;
    sprite->yPosition += movement;
    if (gCurrentSprite.work1 != 0)
        gWarioData.yPosition += movement;
}

void PistonImpact(void)
{
    gCurrentSprite.pOamData = sPistonImpactOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 24;
    gCurrentSprite.work0 = 40;
    gCurrentSprite.warioCollision = 30;
    ScreenShakeRequestY(48, 129);
}

void PistonWaitAfterImpact(void)
{
    u8 timer;
    timer = --gCurrentSprite.work0;
    if (timer == 0)
    {
        gCurrentSprite.pose = 18;
        gCurrentSprite.pOamData = sPistonPostImpactOam;
        gCurrentSprite.currentAnimationFrame = 0;
        gCurrentSprite.animationTimer = 0;
    }
}

void PistonRetract(void)
{
    u8 value;
    value = gUnk_3000964[gCurrentSprite.roomSlot * 3];
    if (gCurrentSprite.yPosition <= (value << 6) + 64)
        gCurrentSprite.pose = 15;
    else
        gCurrentSprite.yPosition -= 8;
}

void InitPistonChild(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8 zero asm("r2");
    register u16 zero16 asm("r4");
    register u8 pose asm("r3");
    register u8 extent asm("r1");
    register u8* ptr asm("r0");
    register u8* ptr32 asm("r1");

    sprite = &gCurrentSprite;
    {
        register u16 oldStatus asm("r1");
        register u32 statusBits asm("r2");
        register u16 status asm("r0");

        oldStatus = sprite->status;
        statusBits = 0x8400;
        status = statusBits;
        zero = 0;
        /* agbcc otherwise reuses another zero register at the final halfword store. */
        asm("mov %0, #0" : "=r"(zero16));
        status |= oldStatus;
        status &= 0xFFFB;
        sprite->status = status;
    }

    ptr32 = (u8*)sprite + 32;
    *ptr32 = 48;
    ptr = (u8*)sprite + 33;
    *ptr++ = zero;
    pose = 16;
    *ptr++ = pose;
    extent = 4;
    *ptr++ = extent;
    *ptr++ = extent;
    *ptr++ = extent;
    /* agbcc otherwise folds this store and increment into indexed addressing. */
    asm volatile("strb %1, [%0, #0]"
        :
        : "r"(ptr), "r"(extent));

    ptr = (u8*)sprite;
    /* agbcc otherwise inserts a move before this byte store. */
    asm volatile("strb %1, [%0, #30]" : : "r"(ptr), "r"(zero));
    ptr = (u8*)sPistonChildOam;
    ptr32 = (u8*)sprite;
    ((struct PrimarySpriteData*)ptr32)->pOamData = (const struct AnimationFrame*)ptr;
    ((struct PrimarySpriteData*)ptr32)->currentAnimationFrame = zero;
    ((struct PrimarySpriteData*)ptr32)->animationTimer = zero16;
    ((struct PrimarySpriteData*)ptr32)->pose = pose;
}

void SpritePiston(void)
{
    if (gWarioData.reaction == 10)
        gCurrentSprite.disableWarioCollisionTimer = 1;
    switch (gCurrentSprite.pose)
    {
        case 0: InitPiston();
        case 15: PistonSetIdle();
        case 16: PistonWaitBeforeExtending(); break;
        case 27: PistonStartExtending(); break;
        case 28: PistonExtend(); break;
        case 23: PistonImpact();
        case 24: PistonWaitAfterImpact(); break;
        case 18: PistonRetract(); break;
        default: SpriteUtilDie(); break;
    }
    if (gWarioData.reaction != 10 && (gWarioData.reaction != 0 || gWarioData.damageTimer != 0))
        func_8026838();
}

void SpritePistonChild(void)
{
    u16 zero;
    register struct PrimarySpriteData* current asm("r4");
    register struct PrimarySpriteData* currentLoad asm("r0");
    register u8 roomSlot asm("r5");
    register u8* sprite asm("r2");
    register u8* positionSprite asm("r3");
    register u8* end asm("r6");

    zero = 0;
    asm volatile("" : "+r"(zero));
    currentLoad = &gCurrentSprite;
    roomSlot = currentLoad->roomSlot;
    current = currentLoad;
    sprite = (u8*)gSpriteData;
    positionSprite = sprite;
    end = sprite + 23 * sizeof(struct PrimarySpriteData);

    do
    {
        if (((struct PrimarySpriteData*)sprite)->roomSlot == roomSlot &&
            (u8)(((struct PrimarySpriteData*)sprite)->globalID - PSPRITE_PISTON) <= 1)
        {
            register u16 status asm("r1");
            register u32 active asm("r0");

            status = ((struct PrimarySpriteData*)sprite)->status;
            active = 1;
            active &= status;
            if (active != 0)
                goto found;
        }

        sprite += sizeof(struct PrimarySpriteData);
        positionSprite += sizeof(struct PrimarySpriteData);
    } while ((s32)sprite <= (s32)end);

    if (zero != 0)
        goto afterCopy;

    current->status = zero;
    return;

found:
    current->yPosition = ((struct PrimarySpriteData*)positionSprite)->yPosition;

afterCopy:
    if (current->pose == 0)
        InitPistonChild();

    current->disableWarioCollisionTimer = 1;
}

