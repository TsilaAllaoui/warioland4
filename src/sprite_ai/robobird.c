#include "sprite_ai/robobird.h"

#include "global_data.h"
#include "sound.h"
#include "score.h"
#include "wario.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"

extern const struct AnimationFrame sRobobirdIdleOam[];
extern const struct AnimationFrame sRobobirdAttackStartOam[];
extern const struct AnimationFrame sRobobirdAttackOam[];
extern const struct AnimationFrame sRobobirdDefeatedOam[];
extern const struct AnimationFrame sRobobirdStunnedOam[];

void InitRobobird(void)
{
    register struct PrimarySpriteData* sprite asm("r12");
    register struct PrimarySpriteData* finalSprite asm("r1");
    register u8* p asm("r0");
    register u8* q asm("r1");
    register u8 zero asm("r4");
    register u8 thirtyTwo asm("r2");
    register u8 sixteen asm("r3");

    sprite = &gCurrentSprite;
    p = &sprite->drawDistanceDown;
    zero = 0;
    thirtyTwo = 32;
    *p = thirtyTwo;
    p = &sprite->drawDistanceUp;
    sixteen = 16;
    *p = sixteen;
    q = &sprite->drawDistanceLeftRight;
    *q = 24;
    p = &sprite->hitboxExtentUp;
    *p = thirtyTwo;
    q += 2;
    *q = 12;
    p = &sprite->hitboxExtentLeft;
    *p = thirtyTwo;
    q += 2;
    asm("" : "+r"(q));
    *q = 28;
    {
        register const struct AnimationFrame* oam asm("r0");
        oam = sRobobirdIdleOam;
        finalSprite = sprite;
        finalSprite->pOamData = oam;
    }
    /* agbcc otherwise copies zero into r0 before the byte store. */
    asm("strb %0, [%1, #22]" : : "r"(zero), "r"(finalSprite));
    /* Keep the same zero register for the adjacent halfword store. */
    asm("strh %0, [%1, #20]" : : "r"(zero), "r"(finalSprite));
    finalSprite->pose = sixteen;
    finalSprite->warioCollision = 1;
    SpriteUtilTurnTowardWario();
}

void RobobirdIdle(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register struct WarioData* wario asm("r0");
    register u16 warioY asm("r0");
    u32 nearby;

    wario = &gWarioData;
    sprite = &gCurrentSprite;
    warioY = wario->yPosition;
    if (warioY >= sprite->yPosition)
        SpriteUtilTurnTowardWario();

    nearby = SpriteUtilCheckWarioNearbyLeftRight(120, 320);
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        if (nearby == 8)
            sprite->pose = SPOSE_6E;
    } else if (nearby == 4) {
        sprite->pose = SPOSE_6E;
    }
}

void StartRobobirdAttack(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->pOamData = sRobobirdAttackStartOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = SPOSE_6F;
    sprite->work0 = 18;
    sprite->warioCollision = 4;
}

void RobobirdAttackDelay(void)
{
    register struct PrimarySpriteData* sprite asm("r3");
    register u8* timerPointer asm("r1");
    register u8 oldTimer asm("r0");
    register u8 nextTimer asm("r2");
    register u32 shiftedTimer asm("r0");
    register u8 timer asm("r1");

    sprite = &gCurrentSprite;
    timerPointer = &sprite->work0;
    oldTimer = *timerPointer;
    nextTimer = oldTimer - 1;
    *timerPointer = nextTimer;
    shiftedTimer = nextTimer << 24;
    timer = shiftedTimer >> 24;
    if (timer != 0) {
        register u32 compareTimer asm("r0");
        compareTimer = timer;
        asm("" : "+r"(compareTimer));
        if (compareTimer == 9) {
            register u8* extent asm("r1");
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
        /* Keep the already normalized byte in r1 for the halfword store. */
        asm("strh %0, [%1, #20]" : : "r"(timer), "r"(sprite));
        sprite->pose = SPOSE_71;
        m4aSongNumStart(SE_ROBOBIRD_ATTACK);
    }
}

void RobobirdMoveForward(void)
{
    register struct PrimarySpriteData* sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
        sprite->xPosition += 8;
    else
        sprite->xPosition -= 8;
}

void StartRobobirdStunned(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    sprite->pOamData = sRobobirdStunnedOam;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->pose = SPOSE_28;
}

void RobobirdKnockback(void)
{
    register struct PrimarySpriteData* sprite asm("r2");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
        sprite->xPosition += 16;
    else
        sprite->xPosition -= 16;
}

void SetRobobirdDefeated(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u8 zero1 asm("r1");
    register u8 zero2 asm("r0");

    sprite = &gCurrentSprite;
    sprite->pOamData = sRobobirdDefeatedOam;
    zero1 = 0;
    /* Keep the first zero in r1 for the byte store. */
    asm("strb %0, [%1, #22]" : : "r"(zero1), "r"(sprite));
    zero2 = 0;
    /* Preserve r1 across agbcc's second zero materialization. */
    asm("strh %0, [%1, #20]" : : "r"(zero1), "r"(sprite));
    {
        register u8* work3 asm("r1");
        work3 = &sprite->work3;
        *work3 = zero2;
    }
    /* Store the existing r0 zero without an unnecessary copy to r1. */
    asm("strb %0, [%1, #29]" : : "r"(zero2), "r"(sprite));
    sprite->drawPriority = zero2;
    {
        register u16 status asm("r1");
        register u16 masked asm("r0");
        status = sprite->status;
        masked = status & ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
        masked |= SPRITE_STATUS_MAYBE_DEAD;
        sprite->status = masked;
    }
}

void InitRobobirdTackledRight(void)
{
    register struct PrimarySpriteData* sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pose = SPOSE_TACKLED_RIGHT;
    sprite->work2 = 8;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    SetRobobirdDefeated();
}

void InitRobobirdTackledLeft(void)
{
    register struct PrimarySpriteData* sprite asm("r1");

    sprite = &gCurrentSprite;
    sprite->pose = SPOSE_TACKLED_LEFT;
    sprite->work2 = 8;
    SpriteSpawnSecondary(sprite->yPosition - 32, sprite->xPosition, 6);
    SetRobobirdDefeated();
}

void InitRobobirdPushedRight(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    gCurrentSprite.work2 = 7;
    SetRobobirdDefeated();
}

void InitRobobirdPushedLeft(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    gCurrentSprite.work2 = 7;
    SetRobobirdDefeated();
}

void SpriteRobobird(void)
{
    switch (gCurrentSprite.pose) {
        case SPOSE_INIT:
            InitRobobird();
        case SPOSE_IDLE:
            RobobirdIdle();
            break;
        case SPOSE_6A:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
        case SPOSE_PUSHED_RIGHT_INIT:
        case SPOSE_33:
            InitRobobirdPushedRight();
        case SPOSE_TACKLED_RIGHT:
fall_right:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_4F:
            InitRobobirdTackledRight();
            goto fall_right;
        case SPOSE_69:
            SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
        case SPOSE_PUSHED_LEFT_INIT:
        case SPOSE_35:
            InitRobobirdPushedLeft();
        case SPOSE_TACKLED_LEFT:
fall_left:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_50:
            InitRobobirdTackledLeft();
            goto fall_left;
        case SPOSE_6E:
            StartRobobirdAttack();
        case SPOSE_6F:
            RobobirdAttackDelay();
            break;
        case SPOSE_71:
            RobobirdMoveForward();
            break;
        case SPOSE_27:
        case SPOSE_29:
            StartRobobirdStunned();
        case SPOSE_28:
            RobobirdKnockback();
            break;
        default:
            SpriteUtilDie();
    }
}
