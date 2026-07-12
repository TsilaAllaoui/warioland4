#include "global_data.h"
#include "main.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/ball_lightning.h"
#include "sprite_collision.h"
#include "sprite_util.h"
#include "wario.h"
#include "gba/m4a.h"

void InitBallLightningSpawner(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* ptr asm("r0");
    register u8 one asm("r1");
    register const struct AnimationFrame* oam asm("r0");
    register struct PrimarySpriteData* postSprite asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = 0x40C;
    /* Preserve the target's early zero values in r2 and r3. */
    asm("mov %0, #0" : "=r"(zero));
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    postSprite = sprite;
    postSprite->status = status;
    ptr = (u8*)sprite + 32;
    one = 1;
    *ptr = one;
    ptr++;
    *ptr = one;
    ptr++;
    *ptr = one;
    ptr++;
    *ptr = one;
    ptr++;
    *ptr = one;
    ptr++;
    *ptr = one;
    /* agbcc otherwise folds this increment into an indexed byte store. */
    asm("add %0, #1" : "+r"(ptr));
    *ptr = one;
    oam = sBallLightningSpawnerOam;
    postSprite = sprite;
    postSprite->pOamData = oam;
    postSprite->currentAnimationFrame = zero;
    postSprite->animationTimer = zero16;
    postSprite->pose = 16;
    postSprite->warioCollision = 6;
    postSprite->work0 = 200;
}

void BallLightningSpawnerIdle(void)
{
    struct PrimarySpriteData* sprite;
    u8* timerPtr;
    u8 timer;

    sprite = &gCurrentSprite;
    timerPtr = &sprite->work0;
    timer = --*timerPtr;
    if (timer == 0)
    {
        func_801E3A8(PSPRITE_BALL_LIGHTNING_BOLT, sprite->roomSlot, sprite->gfxSlot,
            sprite->yPosition, sprite->xPosition, timer);
        *timerPtr = 200;
        if (sprite->status & 2)
            m4aSongNumStart(SE_BALL_LIGHTNING_SPAWN);
    }
}

void InitBallLightningBolt(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u8 zero asm("r3");
    register u16 zero16 asm("r4");
    register u8* ptr asm("r0");
    register u8 value16 asm("r2");
    register u8 value20 asm("r1");
    register u8* leftPtr asm("r5");
    register const struct AnimationFrame* oam asm("r0");
    register struct PrimarySpriteData* postSprite asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = 0x420;
    /* Preserve the target's early zero values in r3 and r4. */
    asm("mov %0, #0" : "=r"(zero));
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    status &= 0xFFFB;
    postSprite = sprite;
    postSprite->status = status;
    ptr = (u8*)sprite + 32;
    value16 = 16;
    *ptr = value16;
    ptr++;
    *ptr = value16;
    ptr++;
    *ptr = value16;
    /* Preserve the separate pointer increment used by the target. */
    asm("add %0, #2" : "+r"(ptr));
    value20 = 20;
    *ptr = value20;
    leftPtr = (u8*)sprite + 37;
    *leftPtr = 24;
    ptr = (u8*)sprite + 38;
    *ptr = value20;
    oam = sBallLightningBoltIdleOam;
    postSprite = sprite;
    postSprite->pOamData = oam;
    postSprite->currentAnimationFrame = zero;
    postSprite->animationTimer = zero16;
    postSprite->warioCollision = 9;
    {
        register u8* timerPtr asm("r1");
        timerPtr = (u8*)sprite + 39;
        *timerPtr = 30;
    }
    ptr = (u8*)sprite;
    ptr[28] = value16;
    SpriteUtilTurnTowardWario();
}

void BallLightningBoltWaitToFall(void)
{
    struct PrimarySpriteData* sprite;
    u8 timer;

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = --sprite->work0;
    if (timer == 0)
    {
        sprite->work3 = 0;
        sprite->drawPriority = 1;
        sprite->pose = 18;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
            sprite->pOamData = sBallLightningBoltFallingRightOam;
        else
            sprite->pOamData = sBallLightningBoltFallingLeftOam;
    }
}

void SetBallLightningBoltRollTimer(void)
{
    gCurrentSprite.work0 = 4;
    gCurrentSprite.work2 = 6;
    gCurrentSprite.work3 = 0;
}

void StartBallLightningBoltRollRight(void)
{
    gCurrentSprite.pose = 52;
    gCurrentSprite.status |= SPRITE_STATUS_FACING_RIGHT;
    SetBallLightningBoltRollTimer();
}

void StartBallLightningBoltRollLeft(void)
{
    gCurrentSprite.pose = 54;
    gCurrentSprite.status &= ~SPRITE_STATUS_FACING_RIGHT;
    SetBallLightningBoltRollTimer();
}

void BallLightningBoltFall(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u32 newY asm("r2");

    sprite = &gCurrentSprite;
    newY = func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1)
    {
        register u16 oldStatus asm("r1");
        register u16 status asm("r0");
        register u16 underwater asm("r3");

        oldStatus = sprite->status;
        underwater = SPRITE_STATUS_UNDERWATER;
        status = underwater;
        status |= oldStatus;
        sprite->status = status;
    }

    if (gUnk_3000A50 != 0)
    {
        sprite->yPosition = newY;
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
            StartBallLightningBoltRollRight();
        else
            StartBallLightningBoltRollLeft();

        if (gCurrentSprite.status & 2)
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
    }
    else
    {
        register u8* workPtr asm("r6");
        register u8* savedWorkPtr asm("ip");
        register u32 index asm("r2");
        register const s16* table asm("r5");
        register u32 movement asm("r3");
        s32 signedMovement;
        register u32 value asm("r0");

        /* Preserve the target's immediate-first construction of the work pointer. */
        asm("mov %0, #42\nadd %0, %1" : "=r"(workPtr) : "r"(sprite));
        savedWorkPtr = workPtr;
        index = *workPtr;
        table = sUnk_8352ADC;
        value = index << 1;
        value += (u32)table;
        movement = *(const u16*)value;
        signedMovement = *(const s16*)value;
        if (signedMovement == 0x7FFF)
        {
            register s32 previousIndex asm("r1");
            register u32 previousMovement asm("r1");

            previousIndex = index - 1;
            previousIndex <<= 1;
            previousIndex += (u32)table;
            value = sprite->yPosition;
            previousMovement = *(const u16*)previousIndex;
            value += previousMovement;
            /* Prevent agbcc from factoring this branch-specific addition into the shared tail. */
            asm("" : "+r"(value));
        }
        else
        {
            value = index + 1;
            *savedWorkPtr = value;
            value = sprite->yPosition;
            value += movement;
        }
        sprite->yPosition = value;
    }
}

void StartBallLightningBoltDisappearing(void)
{
    gCurrentSprite.pOamData = sBallLightningBoltDisappearingOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 50;
    gCurrentSprite.work0 = 19;
    gCurrentSprite.warioCollision = 8;
    gCurrentSprite.status |= 0x400;
}

void BallLightningBoltDisappearing(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPtr asm("r2");
    register u32 oldValue asm("r0");
    register u32 value asm("r1");

    sprite = &gCurrentSprite;
    timerPtr = &sprite->work0;
    oldValue = *timerPtr;
    value = oldValue - 1;
    *timerPtr = value;
    oldValue = value << 24;
    oldValue >>= 24;
    if (oldValue != 0)
    {
        oldValue = value << 24;
        oldValue >>= 24;
        if (oldValue <= 7)
            sprite->disableWarioCollisionTimer = 1;
        return;
    }
    sprite->status = oldValue;
}

void InitBallLightningTrail(void)
{
    register struct PrimarySpriteData* sprite asm("ip");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register u8 zero asm("r2");
    register u16 zero16 asm("r3");
    register u8* drawPtr asm("r1");
    register u8 value10 asm("r0");
    register u8* hitboxPtr asm("r0");
    register u8 value4 asm("r1");
    register const struct AnimationFrame* oam asm("r0");
    register struct PrimarySpriteData* postSprite asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    status = 0x400;
    /* Preserve the target's early zero values in r2 and r3. */
    asm("mov %0, #0" : "=r"(zero));
    asm("mov %0, #0" : "=r"(zero16));
    status |= oldStatus;
    status &= 0xFFFB;
    postSprite = sprite;
    postSprite->status = status;
    drawPtr = (u8*)sprite + 32;
    value10 = 10;
    *drawPtr = value10;
    asm("add %0, #1" : "+r"(drawPtr));
    *drawPtr = value10;
    asm("add %0, #1" : "+r"(drawPtr));
    *drawPtr = value10;
    hitboxPtr = (u8*)sprite + 35;
    value4 = 4;
    *hitboxPtr = value4;
    asm("add %0, #1" : "+r"(hitboxPtr));
    *hitboxPtr = value4;
    asm("add %0, #1" : "+r"(hitboxPtr));
    *hitboxPtr = value4;
    asm("add %0, #1" : "+r"(hitboxPtr));
    *hitboxPtr = value4;
    oam = sBallLightningTrailOam;
    postSprite = sprite;
    postSprite->pOamData = oam;
    postSprite->currentAnimationFrame = zero;
    postSprite->animationTimer = zero16;
    postSprite->warioCollision = 9;
    postSprite = sprite;
    postSprite->work0 = 13;
    {
        register u8* work3Ptr asm("r0");
        work3Ptr = (u8*)sprite + 42;
        *work3Ptr = zero;
    }
    {
        register u8 pose asm("r0");
        register struct PrimarySpriteData* finalSprite asm("r2");
        /* Keep the pose immediate before copying the sprite pointer to r2. */
        asm("mov %0, #16" : "=r"(pose));
        finalSprite = sprite;
        finalSprite->pose = pose;
        pose = 1;
        finalSprite->drawPriority = pose;
    }
}

void BallLightningTrailMove(void)
{
    register struct PrimarySpriteData* initialSprite asm("r3");
    register struct PrimarySpriteData* sprite asm("r4");
    register u8* timerPtr asm("r1");
    register u32 value asm("r0");

    initialSprite = &gCurrentSprite;
    timerPtr = &initialSprite->work0;
    value = *timerPtr;
    value--;
    *timerPtr = value;
    value <<= 24;
    value >>= 24;
    sprite = initialSprite;
    if (value != 0)
    {
        register u8* workPtr asm("r0");
        register u8* savedWorkPtr asm("ip");
        register u32 index asm("r2");
        register const s16* table asm("r6");
        register u32 movement asm("r5");
        s32 signedMovement;

        /* Preserve the target's immediate-first construction of the work pointer. */
        asm("mov %0, #42\nadd %0, %1" : "=r"(workPtr) : "r"(initialSprite));
        savedWorkPtr = workPtr;
        index = *workPtr;
        table = sBallLightningTrailYVelocity;
        value = index << 1;
        value += (u32)table;
        movement = *(const u16*)value;
        signedMovement = *(const s16*)value;
        if (signedMovement == 0x7FFF)
        {
            register s32 previousIndex asm("r1");
            register u32 previousMovement asm("r1");

            previousIndex = index - 1;
            previousIndex <<= 1;
            previousIndex += (u32)table;
            value = initialSprite->yPosition;
            previousMovement = *(const u16*)previousIndex;
            value += previousMovement;
            /* Prevent agbcc from factoring this branch-specific addition into the shared tail. */
            asm("" : "+r"(value));
        }
        else
        {
            value = index + 1;
            *savedWorkPtr = value;
            value = initialSprite->yPosition;
            value += movement;
        }
        initialSprite->yPosition = value;

        if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
        {
            value = sprite->xPosition;
            value += 6;
            sprite->xPosition = value;
        }
        else
        {
            value = sprite->xPosition;
            value -= 6;
            sprite->xPosition = value;
        }
    }
    else
    {
        initialSprite->status = value;
    }
}

void SpriteBallLightning(void)
{
    switch (gCurrentSprite.pose)
    {
        case 0:
            InitBallLightningSpawner();
            break;
        case 16:
            BallLightningSpawnerIdle();
            break;
        default:
            break;
    }
    gCurrentSprite.disableWarioCollisionTimer = 1;
}

void SpriteBallLightningBolt(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->hitboxExtentUp = 64;
    if (sprite->status & SPRITE_STATUS_UNDERWATER)
        sprite->pose = 107;

    if ((gMainTimer & 31) == 0 && sprite->pose > 18)
    {
        if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
            func_801E3A8(PSPRITE_BALL_LIGHTNING_TRAIL, sprite->roomSlot, sprite->gfxSlot,
                sprite->yPosition, sprite->xPosition - 16, 0);
        else
            func_801E3A8(PSPRITE_BALL_LIGHTNING_TRAIL, sprite->roomSlot, sprite->gfxSlot,
                sprite->yPosition, sprite->xPosition + 16, 64);
    }

    switch (gCurrentSprite.pose)
    {
        case 0:
            InitBallLightningBolt();
            break;
        case 16:
            BallLightningBoltWaitToFall();
            break;
        case 18:
            BallLightningBoltFall();
            break;
        case 43:
        case 44:
            gCurrentSprite.work2 = 5;
            func_8025D34();
            break;
        case 45:
        case 46:
            gCurrentSprite.work2 = 5;
            func_8025C80();
            break;
        case 51:
            StartBallLightningBoltRollRight();
        case 52:
            func_8024988();
            break;
        case 53:
            StartBallLightningBoltRollLeft();
        case 54:
        case 58:
            func_802476C();
            break;
        case 55:
            func_8024688();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
        case 56:
            func_80246B8();
            break;
        case 57:
            func_802473C();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
            goto pose54;
        case 59:
            func_80247F0();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
        case 60:
            func_8024820();
            break;
        case 61:
            func_80248A4();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
        case 62:
            func_80248D4();
            break;
        case 63:
            func_8024958();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
            goto pose52;
        case 64:
pose52:
            func_8024988();
            break;
        case 65:
            func_8024A0C();
            m4aSongNumStart(SE_BALL_LIGHTNING_BOUNCE);
        case 66:
            func_8024A3C();
            break;
        case 67:
        case 71:
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                gCurrentSprite.pose = 49;
            else
                func_8024AC0();
        case 68:
            func_8024AD4();
            break;
        case 69:
        case 73:
            if (gCurrentSprite.status & SPRITE_STATUS_FACING_RIGHT)
                func_8024BEC();
            else
                gCurrentSprite.pose = 49;
        case 70:
            func_8024C00();
            break;
        case 107:
            SpriteUtilDie();
            break;
        case 50:
            BallLightningBoltDisappearing();
            break;
        default:
            StartBallLightningBoltDisappearing();
            break;
    }

    gCurrentSprite.hitboxExtentUp = 24;
    return;

pose54:
    func_802476C();
    gCurrentSprite.hitboxExtentUp = 24;
}

void SpriteBallLightningTrail(void)
{
    if (gCurrentSprite.pose == 0)
        InitBallLightningTrail();
    else
        BallLightningTrailMove();
    gCurrentSprite.disableWarioCollisionTimer = 1;
}
