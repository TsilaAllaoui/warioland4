#include "global_data.h"
#include "gba/m4a.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/robobird.h"
#include "sprite_util.h"
#include "wario.h"

void InitRobobird(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u8 *firstField asm("r0");
    register int zero asm("r4");
    register int horizontal asm("r2");
    register int vertical asm("r3");

    sprite = &gCurrentSprite;
    firstField = &sprite->drawDistanceDown;
    asm("" : "+r"(firstField));
    zero = 0;
    asm("" : : "r"(zero));
    horizontal = 32;
    *firstField = horizontal;
    {
        register u8 *secondField asm("r0");

        secondField = &sprite->drawDistanceUp;
        asm("" : "+r"(secondField));
        vertical = 16;
        *secondField = vertical;
    }
    sprite->drawDistanceLeftRight = 24;
    sprite->hitboxExtentUp = horizontal;
    sprite->hitboxExtentDown = 12;
    sprite->hitboxExtentLeft = horizontal;
    sprite->hitboxExtentRight = 28;
    {
        register const struct AnimationFrame *oam asm("r0");
        register struct PrimarySpriteData *store asm("r1");

        oam = sRobobirdIdleOam;
        store = sprite;
        store->pOamData = oam;
        store->currentAnimationFrame = 0;
        store->animationTimer = 0;
        store->pose = vertical;
        store->warioCollision = 1;
    }
    SpriteUtilTurnTowardWario();
}

void RobobirdWait(void)
{
    register struct WarioData *wario asm("r0");
    register struct PrimarySpriteData *sprite asm("r4");
    u32 direction;

    wario = &gWarioData;
    sprite = &gCurrentSprite;
    if (wario->yPosition >= sprite->yPosition) {
        SpriteUtilTurnTowardWario();
    }

    direction = SpriteUtilCheckWarioNearbyLeftRight(120, 320);
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        if (direction == 8) {
            sprite->pose = 110;
        }
    } else if (direction == 4) {
        sprite->pose = 110;
    }
}

void RobobirdStartAttack(void)
{
    gCurrentSprite.pOamData = sRobobirdAttackStartupOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work0 = 18;
    gCurrentSprite.warioCollision = 4;
}

void RobobirdAttackStartup(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *timerPointer asm("r1");
    register int current asm("r0");
    register int next asm("r2");
    u8 timer;

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    current = *timerPointer;
    next = current - 1;
    *timerPointer = next;
    current = next << 24;
    asm("" : "+r"(current));
    timer = (u32)current >> 24;
    if (timer != 0) {
        current = timer;
        asm("" : "+r"(current));
        if (current == 9) {
            register u8 *extent asm("r1");

            if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
                extent = &sprite->hitboxExtentRight;
                *extent = 68;
            } else {
                extent = &sprite->hitboxExtentLeft;
                *extent = 72;
            }
        }
    } else {
        sprite->pOamData = sRobobirdAttackOam;
        sprite->currentAnimationFrame = timer;
        sprite->animationTimer = timer;
        sprite->pose = 113;
        m4aSongNumStart(SE_ROBOBIRD_ATTACK);
    }
}

void RobobirdAttack(void)
{
    register struct PrimarySpriteData *sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        sprite->xPosition += 8;
    } else {
        sprite->xPosition -= 8;
    }
}

void RobobirdStartFastAttack(void)
{
    gCurrentSprite.pOamData = sRobobirdFastAttackOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 40;
}

void RobobirdFastAttack(void)
{
    register struct PrimarySpriteData *sprite asm("r2");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        sprite->xPosition += 16;
    } else {
        sprite->xPosition -= 16;
    }
}

void RobobirdPrepareToFall(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register int zero asm("r1");
    register int zeroByte asm("r0");

    sprite = &gCurrentSprite;
    sprite->pOamData = sRobobirdFallingOam;
    zero = 0;
    /* agbcc otherwise copies r1 to r0 before the byte store, shifting the required zero-register sequence. */
    asm("strb %1, [%0, #22]" : : "r"(sprite), "r"(zero));
    zeroByte = 0;
    sprite->animationTimer = zero;
    sprite->work3 = zeroByte;
    sprite->health = zeroByte;
    sprite->drawPriority = zeroByte;
    sprite->status = (sprite->status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES) | SPRITE_STATUS_MAYBE_DEAD;
}

void RobobirdFallRightSpawnSecondary(void)
{
    register struct PrimarySpriteData *sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pose = 32;
    sprite->work2 = 8;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    RobobirdPrepareToFall();
}

void RobobirdFallLeftSpawnSecondary(void)
{
    register struct PrimarySpriteData *sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pose = 34;
    sprite->work2 = 8;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    RobobirdPrepareToFall();
}

void RobobirdFallRight(void)
{
    register struct PrimarySpriteData *sprite asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 32;
    sprite->work2 = 7;
    RobobirdPrepareToFall();
}

void RobobirdFallLeft(void)
{
    register struct PrimarySpriteData *sprite asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 34;
    sprite->work2 = 7;
    RobobirdPrepareToFall();
}

void SpriteRobobird(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitRobobird();
        case 16:
            RobobirdWait();
            break;
        case 106:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
        case 35:
        case 51:
            RobobirdFallRight();
        case 32:
        fallRight:
            SpriteUtilFallOffscreenRight();
            break;
        case 31:
        case 79:
            RobobirdFallRightSpawnSecondary();
            goto fallRight;
        case 105:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
        case 37:
        case 53:
            RobobirdFallLeft();
        case 34:
        fallLeft:
            SpriteUtilFallOffscreenLeft();
            break;
        case 33:
        case 80:
            RobobirdFallLeftSpawnSecondary();
            goto fallLeft;
        case 110:
            RobobirdStartAttack();
        case 111:
            RobobirdAttackStartup();
            break;
        case 113:
            RobobirdAttack();
            break;
        case 39:
        case 41:
            RobobirdStartFastAttack();
        case 40:
            RobobirdFastAttack();
            break;
        default:
            SpriteUtilDie();
            break;
    }
}
