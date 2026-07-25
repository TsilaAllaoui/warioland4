#include "sprite_ai/falling_snow.h"

#include "global_data.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

extern const struct AnimationFrame sFallingSnowIdleOam[];
extern const struct AnimationFrame sFallingSnowFallingOam[];
extern const struct AnimationFrame sFallingSnowMeltingOam[];
extern const struct AnimationFrame sFallingSnowChildOam[];
extern const struct AnimationFrame sFallingSnowDropOam[];
extern const struct AnimationFrame sFallingSnowResetOam[];
extern const struct AnimationFrame sFallingSnowFragmentRightOam[];
extern const struct AnimationFrame sFallingSnowFragmentLeftOam[];
extern u8 gUnk_3000964[][3];
extern void SpawnPrimarySpriteWithStatus(u8, u8, u8, u32, u32, u32);

void InitFallingSnow(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->status |= 0x400;
    s->drawDistanceDown = 24;
    s->drawDistanceUp = 24;
    s->drawDistanceLeftRight = 24;
    s->hitboxExtentUp = 32;
    s->hitboxExtentDown = 148;
    s->hitboxExtentLeft = 40;
    s->hitboxExtentRight = 36;
    s->pOamData = sFallingSnowIdleOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 30;
    s->pose = 16;
    s->warioCollision = 18;
    s->drawPriority = 1;
}

void FallingSnowWaitBeforeDropping(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0) {
        s->pOamData = sFallingSnowDropOam;
        s->currentAnimationFrame = 0;
        s->animationTimer = 0;
        s->work0 = 68;
        s->pose = 18;
        SpriteSpawnAsChild(0x9d, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition);
    }
}

void FallingSnowStartFalling(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0) {
        s->pOamData = sFallingSnowFallingOam;
        s->currentAnimationFrame = 0;
        s->animationTimer = 0;
        s->pose = 28;
        s->work3 = 0;
        s->yPosition += 12;
    }
}

void FallingSnowFall(void)
{
    int new_var;
    struct PrimarySpriteData* sprite;
    u32 newY;
    u8 index;
    const u16 new_var2;
    s16 movement;

    sprite = &gCurrentSprite;
    newY = func_8023A60(sprite->yPosition, (*sprite).xPosition);
    if ((double)(gUnk_30000A0.unk_02 == 1))
        sprite->status |= 0x800;
    if (gSpriteCollisionResult != 0)
    {
        sprite->yPosition = newY;
        sprite->pose = 23;
        return;
    }
    index = sprite->work3;
    movement = sSpriteGravityVelocityTable[index];
    if (movement == 0x7FFF)
    {
        new_var = index - 1;
        new_var2 = ((const u16*)sSpriteGravityVelocityTable)[new_var];
        sprite->yPosition += new_var2;
    }
    else
    {
        sprite->work3 = index + 1;
        sprite->yPosition += movement;
    }
}

void FallingSnowStartMelting(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->pOamData = sFallingSnowMeltingOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 17;
    s->pose = 24;
}

void FallingSnowWaitToRespawn(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    if (--s->work0 == 0)
        s->pose = 110;
}

void FallingSnowRespawn(void)
{
    register u8 (*map)[3] asm("r3");
    register struct PrimarySpriteData* sprite asm("r2");
    u8 roomSlot;
    u16 y;

    map = gUnk_3000964;
    sprite = &gCurrentSprite;
    roomSlot = sprite->roomSlot;
    y = map[roomSlot][0];
    sprite->yPosition = (y << 6) + 64;
    sprite->pose = 111;
    sprite->pOamData = sFallingSnowIdleOam;
    sprite->work0 = 100;
    sprite->status |= 4;
}

void FallingSnowWaitBeforeDroppingAgain(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->disableWarioCollisionTimer = 1;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    if (--s->work0 == 0) {
        s->work0 = 30;
        s->pose = 16;
        s->status &= ~4;
    }
}

void FallingSnowSpawnFragment(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    if (s->xPosition > gWarioData.xPosition)
        SpawnPrimarySpriteWithStatus(0x9e, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition, 64);
    else
        SpawnPrimarySpriteWithStatus(0x9e, s->roomSlot, s->gfxSlot, s->yPosition, s->xPosition, 0);
}

void FallingSnowResetAfterImpact(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    s->pOamData = sFallingSnowResetOam;
    s->currentAnimationFrame = 0;
    s->animationTimer = 0;
    s->work0 = 12;
    s->pose = 24;
}

void InitFallingSnowChild(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register struct PrimarySpriteData* storeSprite asm("r4");
    register u8 one asm("r1");
    register u8* ptr asm("r0");
    register u8* ptr32 asm("r1");

    sprite = &gCurrentSprite;
    {
        register u16 oldStatus asm("r1");
        register u32 statusBits asm("r2");
        register u16 status asm("r0");
        oldStatus = sprite->status;
        statusBits = 0x400;
        status = statusBits;
        asm("mov %0, #0" : "=r"(zero));
        asm("mov %0, #0" : "=r"(zero16));
        status |= oldStatus;
        status &= 0xFFFB;
        storeSprite = sprite;
        storeSprite->status = status;
    }
    ptr32 = (u8*)sprite + 32;
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr = (u8*)sprite + 35;
    one = 1;
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    storeSprite->pOamData = sFallingSnowChildOam;
    storeSprite->currentAnimationFrame = zero;
    storeSprite->animationTimer = zero16;
    {
        register u8* work0 asm("r2");
        register u8 timer asm("r0");
        work0 = (u8*)sprite + 39;
        timer = 68;
        *work0 = timer;
    }
    storeSprite->pose = 16;
    storeSprite->warioCollision = 18;
    storeSprite->drawPriority = one;
}

void FallingSnowChildExpire(void)
{
    struct PrimarySpriteData* s = &gCurrentSprite;
    if (--s->work0 == 0)
        s->status = 0;
}

void InitFallingSnowFragment(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u16 status asm("r4");
    register u8 one asm("r1");
    register u8* ptr asm("r0");
    register u8* ptr32 asm("r1");

    sprite = &gCurrentSprite;
    {
        register u16 oldStatus asm("r1");
        register u32 statusBits asm("r2");
        register u16 base asm("r0");
        register u32 mask asm("r0");

        oldStatus = sprite->status;
        statusBits = 0x400;
        base = statusBits;
        asm("mov %0, #0" : "=r"(zero));
        asm("mov %0, #0" : "=r"(zero16));
        status = base;
        status |= oldStatus;
        mask = 0xFFFB;
        status &= mask;
        sprite->status = status;
    }

    ptr32 = (u8*)sprite + 32;
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;
    ptr32++;
    asm volatile("" : "+r"(ptr32));
    *ptr32 = 24;

    ptr = (u8*)sprite + 35;
    one = 1;
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;
    ptr++;
    asm volatile("" : "+r"(ptr));
    *ptr = one;

    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    {
        register u8 collision asm("r0");
        register struct PrimarySpriteData* store asm("r3");
        collision = 18;
        asm volatile("" : "+r"(collision));
        store = sprite;
        store->warioCollision = collision;
        store->drawPriority = one;
        collision = 28;
        store->pose = collision;
        ptr = (u8*)sprite + 42;
        *ptr = zero;

        if (status & 0x40)
        {
            store->pOamData = sFallingSnowFragmentLeftOam;
            store->status = status & 0xFFBF;
        }
        else
        {
            register const struct AnimationFrame* oam asm("r0");
            register struct PrimarySpriteData* dst asm("r1");
            oam = sFallingSnowFragmentRightOam;
            asm volatile("" : "+r"(oam));
            dst = sprite;
            dst->pOamData = oam;
        }
    }
}

void SpriteFallingSnow(void)
{
    if (gCurrentSprite.status & 0x800)
        gCurrentSprite.pose = 107;
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnow(); break;
    case 16: FallingSnowWaitBeforeDropping(); break;
    case 18: FallingSnowStartFalling(); break;
    case 28: FallingSnowFall(); break;
    case 23: FallingSnowStartMelting();
    case 24: FallingSnowWaitToRespawn(); break;
    case 110: FallingSnowRespawn();
    case 111: FallingSnowWaitBeforeDroppingAgain(); break;
    case 49: FallingSnowSpawnFragment();
    default: FallingSnowResetAfterImpact(); break;
    }
}

void SpriteFallingSnowChild(void)
{
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnowChild(); break;
    case 16: FallingSnowChildExpire(); break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteFallingSnowFragment(void)
{
    switch (gCurrentSprite.pose) {
    case 0: InitFallingSnowFragment(); break;
    case 28: FallingSnowFall(); break;
    default: gCurrentSprite.status = 0; break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}
