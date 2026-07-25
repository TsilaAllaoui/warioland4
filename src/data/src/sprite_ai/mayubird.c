#include "global_data.h"
#include "sprite.h"
#include "score.h"
#include "sprite_ai/mayubird.h"
#include "sprite_util.h"

void InitMayubird(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u8 *field asm("r0");
    register int zeroFrame asm("r3");
    register u8 horizontalDistance asm("r2");
    register u8 zero asm("r1");

    sprite = &gCurrentSprite;
    field = &sprite->drawDistanceDown;
    asm("" : "+r"(field));
    zeroFrame = 0;
    horizontalDistance = 16;
    *field = horizontalDistance;
    {
        register u8 *nextField asm("r1");

        nextField = &sprite->drawDistanceUp;
        *nextField = 8;
        field = &sprite->drawDistanceLeftRight;
        *field = horizontalDistance;
        nextField += 2;
        *nextField = 48;
        nextField++;
        *nextField = 144;
        nextField++;
        *nextField = 36;
        nextField++;
        asm("" : "+r"(nextField));
        *nextField = 32;
    }
    {
        register const struct AnimationFrame *oam asm("r0");
        register struct PrimarySpriteData *store asm("r1");

        oam = sMayubirdIdleOam;
        store = sprite;
        store->pOamData = oam;
        /* agbcc otherwise copies r3 before the byte store and rematerializes zero for the halfword store. */
        asm("strb %1, [%0, #22]" : : "r"(store), "r"(zeroFrame));
    }
    zero = 0;
    field = (u8 *)sprite;
    sprite->animationTimer = zeroFrame;
    sprite->pose = horizontalDistance;
    {
        register int collision asm("r0");
        register struct PrimarySpriteData *store asm("r2");

        collision = 46;
        store = sprite;
        store->warioCollision = collision;
    }
    field = &sprite->work2;
    *field = zero;
    field++;
    *field = zero;
}

void MayubirdFloat(void)
{
    register struct PrimarySpriteData *base asm("r2");
    register struct PrimarySpriteData *sprite asm("r5");

    base = &gCurrentSprite;
    {
        register u8 *counterPointer asm("ip");
        register u32 counter asm("r4");
        register const s16 *table asm("r6");
        register const s16 *entry asm("r0");
        register u16 movement asm("r3");
        register int signedMovement asm("r1");
        register int zero asm("r5");

        counterPointer = &base->work2;
        counter = *counterPointer;
        entry = (const s16 *)(counter >> 3);
        asm("" : "+r"(entry));
        table = sMayubirdFloatXVelocity;
        entry = (const s16 *)(((u32)entry << 1) + (u32)table);
        movement = *(const u16 *)entry;
        zero = 0;
        signedMovement = entry[zero];
        {
            register int sentinel asm("r0");

            sentinel = 0x7FFF;
            asm("" : "+r"(sentinel));
            sprite = base;
            if (signedMovement == sentinel) {
            register int next asm("r0");
            register u8 *store asm("r6");

            movement = *(const u16 *)table;
            next = 0;
            store = counterPointer;
            *store = next;
        } else {
            register int next asm("r0");
            register u8 *store asm("r1");

            next = counter + 1;
            store = counterPointer;
            *store = next;
            }
        }
        sprite->xPosition += movement;
    }
    {
        register u8 *counterPointer asm("ip");
        register u8 *pointerTemp asm("r6");
        register u32 counter asm("r2");
        register const s16 *table asm("r4");
        register const s16 *entry asm("r0");
        register u16 movement asm("r3");
        register int signedMovement asm("r1");
        register int zero asm("r6");

        pointerTemp = (u8 *)42;
        asm("" : "+r"(pointerTemp));
        pointerTemp = (u8 *)((u32)pointerTemp + (u32)sprite);
        counterPointer = pointerTemp;
        counter = *pointerTemp;
        entry = (const s16 *)(counter >> 1);
        asm("" : "+r"(entry));
        table = sMayubirdFloatYVelocity;
        entry = (const s16 *)(((u32)entry << 1) + (u32)table);
        movement = *(const u16 *)entry;
        zero = 0;
        signedMovement = entry[zero];
        if (signedMovement == 0x7FFF) {
            register int next asm("r0");
            register u8 *store asm("r1");

            movement = *(const u16 *)table;
            next = 0;
            store = counterPointer;
            *store = next;
        } else {
            register int next asm("r0");
            register u8 *store asm("r6");

            next = counter + 1;
            store = counterPointer;
            *store = next;
        }
        sprite->yPosition += movement;
    }
}

void MayubirdStartWait(void)
{
    register struct PrimarySpriteData *sprite asm("r0");
    int zero;

    sprite = &gCurrentSprite;
    sprite->pOamData = sMayubirdWaitOam;
    zero = 0;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero;
    sprite->pose = 40;
    sprite->work0 = 90;
}

void MayubirdWait(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register int timer asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    {
        u8 *timerPointer;

        timerPointer = &sprite->work0;
        timer = *timerPointer;
        timer--;
        *timerPointer = timer;
    }
    {
        register int narrowedTimer asm("r1");

        /* agbcc cannot keep the narrowed timer in r1 without this localized conversion. */
        asm volatile("lsl %1, %1, #24\n\tlsr %0, %1, #24" : "=r"(narrowedTimer), "+r"(timer));
        if (narrowedTimer == 0) {
            register const struct AnimationFrame *oam asm("r0");

            oam = sMayubirdIdleOam;
            sprite->pOamData = oam;
            sprite->currentAnimationFrame = narrowedTimer;
            sprite->animationTimer = narrowedTimer;
            sprite->pose = 16;
        }
    }
}

void MayubirdPrepareLongFall(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register u8 zero asm("r4");

    sprite = &gCurrentSprite;
    sprite->pOamData = sMayubirdFallOam;
    sprite->currentAnimationFrame = 0;
    zero = 0;
    sprite->animationTimer = 0;
    /* agbcc otherwise changes the zero and pointer registers for these byte stores. */
    asm volatile("strb %1, [%0, #29]" : : "r"(sprite), "r"(zero));
    sprite->work2 = 8;
    {
        register u8 *work3Pointer asm("r0");

        work3Pointer = &sprite->work3;
        asm volatile("strb %1, [%0]" : : "r"(work3Pointer), "r"(zero));
    }
    sprite->drawPriority = zero;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
}

void MayubirdStartLongFallRight(void)
{
    gCurrentSprite.pose = 32;
    MayubirdPrepareLongFall();
}

void MayubirdStartLongFallLeft(void)
{
    gCurrentSprite.pose = 34;
    MayubirdPrepareLongFall();
}

void MayubirdPrepareShortFall(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register int zero asm("r4");

    sprite = &gCurrentSprite;
    sprite->pOamData = sMayubirdFallOam;
    sprite->currentAnimationFrame = 0;
    zero = 0;
    sprite->animationTimer = 0;
    /* agbcc otherwise copies the r4 zero into r1 and changes the following pointer registers. */
    asm volatile("strb %1, [%0, #29]" : : "r"(sprite), "r"(zero));
    sprite->work2 = 2;
    /* Keep the two remaining zero stores in r4 for the original register layout. */
    {
        register u8 *work3Pointer asm("r0");

        work3Pointer = &sprite->work3;
        asm volatile("strb %1, [%0]" : : "r"(work3Pointer), "r"(zero));
    }
    asm volatile("strb %1, [%0, #26]" : : "r"(sprite), "r"(zero));
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    {
        register u16 status asm("r0");
        register int deadFlag asm("r2");
        register int mask asm("r1");

        status = sprite->status;
        deadFlag = 128;
        deadFlag <<= 2;
        asm("" : "+r"(status), "+r"(deadFlag));
        /* agbcc otherwise ORs r2 directly instead of preserving the r1 copy. */
        asm volatile("add %0, %1, #0" : "=r"(mask) : "r"(deadFlag));
        status |= mask;
        /* Preserve the source's redundant OR with the zero register. */
        asm volatile("orr %0, %1" : "+r"(status) : "r"(zero));
        mask = 0xFEFF;
        asm("" : "+r"(mask));
        status &= mask;
        sprite->status = status;
    }
}

void MayubirdStartShortFallRight(void)
{
    gCurrentSprite.pose = 32;
    MayubirdPrepareShortFall();
}

void MayubirdStartShortFallLeft(void)
{
    gCurrentSprite.pose = 34;
    MayubirdPrepareShortFall();
}

void MayubirdPrepareFlight(void)
{
    register struct PrimarySpriteData *sprite asm("r0");
    register int zeroFrame asm("r1");
    register int zeroCounter asm("r2");

    sprite = &gCurrentSprite;
    sprite->pOamData = sMayubirdFlightOam;
    zeroFrame = 0;
    /* agbcc otherwise copies zero into r2 before this byte store. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zeroFrame));
    zeroCounter = 0;
    sprite->animationTimer = zeroFrame;
    sprite->work0 = 30;
    sprite->work2 = zeroCounter;
}

void MayubirdStartFlightRight(void)
{
    gCurrentSprite.pose = 36;
    MayubirdPrepareFlight();
}

void MayubirdStartFlightLeft(void)
{
    gCurrentSprite.pose = 38;
    MayubirdPrepareFlight();
}

void MayubirdFlyRight(void)
{
    register struct PrimarySpriteData *base asm("r1");
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *counterPointer asm("ip");
    register const s16 *movementTable asm("r6");
    register u32 counter asm("r3");
    register const s16 *entry asm("r0");
    register u32 movement asm("r5");
    register int signedMovement asm("r2");
    register int zero asm("r4");

    base = &gCurrentSprite;
    base->disableWarioCollisionTimer = 1;
    counterPointer = &base->work2;
    counter = *counterPointer;
    movementTable = sMayubirdFlyRightXVelocity;
    entry = (const s16 *)(counter << 1);
    asm("" : "+r"(entry));
    entry = (const s16 *)((u32)entry + (u32)movementTable);
    movement = *(const u16 *)entry;
    zero = 0;
    signedMovement = entry[zero];
    {
        register int sentinel asm("r0");

        sentinel = 0x7FFF;
        asm("" : "+r"(sentinel), "+r"(signedMovement));
        sprite = base;
        if (signedMovement == sentinel) {
            register u32 previous asm("r1");
            register int xPosition asm("r0");

            previous = counter - 1;
            previous <<= 1;
            previous += (u32)movementTable;
            xPosition = sprite->xPosition;
            previous = *(const u16 *)previous;
            xPosition += previous;
            asm("" : "+r"(xPosition));
            sprite->xPosition = xPosition;
        } else {
            register int next asm("r0");
            register u8 *store asm("r1");
            register int xPosition asm("r0");

            next = counter + 1;
            store = counterPointer;
            *store = next;
            xPosition = sprite->xPosition;
            asm("" : "+r"(xPosition), "+r"(movement));
            xPosition += movement;
            asm("" : "+r"(xPosition));
            sprite->xPosition = xPosition;
        }
    }
    {
        register int rawTimer asm("r0");
        u8 *timerPointer;

        timerPointer = &sprite->work0;
        rawTimer = *timerPointer;
        if (rawTimer != 0) {
            rawTimer--;
            *timerPointer = rawTimer;
            {
                register int timer asm("r1");

                /* agbcc otherwise keeps the narrowed timer in r0 and changes the zero stores. */
                asm volatile("lsl %1, %1, #24\n\tlsr %0, %1, #24" : "=r"(timer), "+r"(rawTimer));
                if (timer != 0) {
                    sprite->yPosition -= 2;
                } else {
                    register const struct AnimationFrame *oam asm("r0");

                    oam = sMayubirdFlightEndOam;
                    sprite->pOamData = oam;
                    sprite->currentAnimationFrame = timer;
                    sprite->animationTimer = timer;
                }
            }
        } else {
            sprite->yPosition -= 12;
        }
    }
}

void MayubirdFlyLeft(void)
{
    register struct PrimarySpriteData *base asm("r1");
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *counterPointer asm("ip");
    register const s16 *movementTable asm("r6");
    register u32 counter asm("r3");
    register const s16 *entry asm("r0");
    register u32 movement asm("r5");
    register int signedMovement asm("r2");
    register int zero asm("r4");

    base = &gCurrentSprite;
    base->disableWarioCollisionTimer = 1;
    counterPointer = &base->work2;
    counter = *counterPointer;
    movementTable = sMayubirdFlyLeftXVelocity;
    entry = (const s16 *)(counter << 1);
    asm("" : "+r"(entry));
    entry = (const s16 *)((u32)entry + (u32)movementTable);
    movement = *(const u16 *)entry;
    zero = 0;
    signedMovement = entry[zero];
    {
        register int sentinel asm("r0");

        sentinel = 0x7FFF;
        asm("" : "+r"(sentinel), "+r"(signedMovement));
        sprite = base;
        if (signedMovement == sentinel) {
            register u32 previous asm("r1");
            register int xPosition asm("r0");

            previous = counter - 1;
            previous <<= 1;
            previous += (u32)movementTable;
            xPosition = sprite->xPosition;
            previous = *(const u16 *)previous;
            xPosition += previous;
            asm("" : "+r"(xPosition));
            sprite->xPosition = xPosition;
        } else {
            register int next asm("r0");
            register u8 *store asm("r1");
            register int xPosition asm("r0");

            next = counter + 1;
            store = counterPointer;
            *store = next;
            xPosition = sprite->xPosition;
            asm("" : "+r"(xPosition), "+r"(movement));
            xPosition += movement;
            asm("" : "+r"(xPosition));
            sprite->xPosition = xPosition;
        }
    }
    {
        register int rawTimer asm("r0");
        u8 *timerPointer;

        timerPointer = &sprite->work0;
        rawTimer = *timerPointer;
        if (rawTimer != 0) {
            rawTimer--;
            *timerPointer = rawTimer;
            {
                register int timer asm("r1");

                /* agbcc otherwise keeps the narrowed timer in r0 and changes the zero stores. */
                asm volatile("lsl %1, %1, #24\n\tlsr %0, %1, #24" : "=r"(timer), "+r"(rawTimer));
                if (timer != 0) {
                    sprite->yPosition -= 2;
                } else {
                    register const struct AnimationFrame *oam asm("r0");

                    oam = sMayubirdFlightEndOam;
                    sprite->pOamData = oam;
                    sprite->currentAnimationFrame = timer;
                    sprite->animationTimer = timer;
                }
            }
        } else {
            sprite->yPosition -= 12;
        }
    }
}

void MayubirdStartDeathDelay(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register int zero asm("r1");

    sprite = &gCurrentSprite;
    zero = 0;
    sprite->pose = 50;
    sprite->pOamData = sMayubirdFallOam;
    /* agbcc otherwise copies zero into r0 before this byte store. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
    sprite->animationTimer = zero;
    sprite->work0 = 10;
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
}

void MayubirdDie(void)
{
    SpriteUtilDie();
}

void SpriteMayubird(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitMayubird();
        case 16:
            MayubirdFloat();
            break;
        case 31:
        case 79:
        case 106:
            MayubirdStartLongFallRight();
            goto fallRight;
        case 33:
        case 80:
        case 105:
            MayubirdStartLongFallLeft();
            goto fallLeft;
        case 51:
            MayubirdStartShortFallRight();
        case 32:
        case 52:
        fallRight:
            SpriteUtilFallOffscreenRight();
            break;
        case 53:
            MayubirdStartShortFallLeft();
        case 34:
        case 54:
        fallLeft:
            SpriteUtilFallOffscreenLeft();
            break;
        case 35:
            MayubirdStartFlightRight();
        case 36:
            MayubirdFlyRight();
            break;
        case 37:
            MayubirdStartFlightLeft();
        case 38:
            MayubirdFlyLeft();
            break;
        case 39:
        case 41:
            MayubirdStartWait();
        case 40:
            MayubirdWait();
            break;
        case 49:
            MayubirdStartDeathDelay();
        case 50:
            SpriteUtilDieAfterDelay();
            break;
        default:
            MayubirdDie();
            break;
    }
}
