#include "global_data.h"
#include "main.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/butatabi.h"
#include "sprite_util.h"
#include "gba/m4a.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sButatabiMovingOam_Frame1[] = {
    5,
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(1, -4, SPRITE_SIZE_8x8, 0, 531, 8, 0),
    OAM_ENTRY(-1, -6, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurningOam_Frame1[] = {
    5,
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 516, 8, 0),
    OAM_ENTRY(-1, -5, SPRITE_SIZE_8x8, 0, 531, 8, 0),
    OAM_ENTRY(-1, -6, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame7[] = {
    5,
    OAM_ENTRY(-3, -9, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -6, SPRITE_SIZE_16x16, 0, 525, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurningOam_Frame2[] = {
    5,
    OAM_ENTRY(-3, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 517, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurningOam_Frame3[] = {
    5,
    OAM_ENTRY(-3, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-1, -6, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurningOam_Frame4[] = {
    5,
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-29, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-3, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-4, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiTurningOam_Frame5[] = {
    5,
    OAM_ENTRY(0, -8, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-29, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-3, -13, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame6[] = {
    6,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-1, -10, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame5[] = {
    6,
    OAM_ENTRY(-4, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-3, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame4[] = {
    5,
    OAM_ENTRY(-1, -8, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(-16, -8, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-28, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-3, -13, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-3, 5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiTurningOam_Frame6[] = {
    6,
    OAM_ENTRY(-3, -8, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-13, -8, SPRITE_SIZE_16x16, 0, 512, 8, 0),
    OAM_ENTRY(-24, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-4, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-4, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiTurningOam_Frame7[] = {
    6,
    OAM_ENTRY(2, -8, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-3, -8, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(-10, -8, SPRITE_SIZE_8x16, 0, 512, 8, 0),
    OAM_ENTRY(-21, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-6, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-6, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiTurningOam_Frame8[] = {
    6,
    OAM_ENTRY(0, -8, SPRITE_SIZE_8x16, 0, 520, 8, 0),
    OAM_ENTRY(-4, -8, SPRITE_SIZE_8x16, 0, 519, 8, 0),
    OAM_ENTRY(-5, -12, SPRITE_SIZE_8x8, 0, 529, 8, 0),
    OAM_ENTRY(0, -12, SPRITE_SIZE_8x8, 0, 530, 8, 0),
    OAM_ENTRY(-5, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(0, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame1[] = {
    8,
    OAM_ENTRY(-2, -12, SPRITE_SIZE_8x8, 0, 529, 8, 0),
    OAM_ENTRY(3, -12, SPRITE_SIZE_8x8, 0, 530, 8, 0),
    OAM_ENTRY(-2, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(3, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-2, -8, SPRITE_SIZE_8x16, 0, 523, 8, 0),
    OAM_ENTRY(4, -8, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(-9, -8, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-19, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame2[] = {
    9,
    OAM_ENTRY(-3, -12, SPRITE_SIZE_8x8, 0, 529, 8, 0),
    OAM_ENTRY(4, -12, SPRITE_SIZE_8x8, 0, 530, 8, 0),
    OAM_ENTRY(-3, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 529, 8, 0),
    OAM_ENTRY(4, 4, SPRITE_SIZE_8x8, ST_OAM_VFLIP, 530, 8, 0),
    OAM_ENTRY(-7, -8, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(-3, -8, SPRITE_SIZE_8x16, 0, 523, 8, 0),
    OAM_ENTRY(5, -8, SPRITE_SIZE_8x16, 0, 524, 8, 0),
    OAM_ENTRY(-12, -8, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-23, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiTurnAroundOam_Frame3[] = {
    5,
    OAM_ENTRY(-15, -8, SPRITE_SIZE_16x16, 0, 527, 8, 0),
    OAM_ENTRY(-27, -5, SPRITE_SIZE_16x8, 0, 561, 8, 0),
    OAM_ENTRY(-2, -8, SPRITE_SIZE_16x16, 0, 523, 8, 0),
    OAM_ENTRY(-4, -13, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiFallingOam_Frame1[] = {
    4,
    OAM_ENTRY(-26, -10, SPRITE_SIZE_32x16, 0, 532, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(-3, -13, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(-4, 5, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const u16 sButatabiMovingOam_Frame2[] = {
    5,
    OAM_ENTRY(2, -7, SPRITE_SIZE_8x8, 0, 531, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 517, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiMovingOam_Frame3[] = {
    5,
    OAM_ENTRY(1, 2, SPRITE_SIZE_8x8, 0, 531, 8, 0),
    OAM_ENTRY(-9, -11, SPRITE_SIZE_8x8, 0, 548, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x16, 0, 521, 8, 0),
    OAM_ENTRY(-14, -8, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-29, -6, SPRITE_SIZE_16x8, 0, 561, 8, 0),
};

const u16 sButatabiFallingOam_Frame2[] = {
    4,
    OAM_ENTRY(-26, -10, SPRITE_SIZE_32x16, 0, 532, 8, 0),
    OAM_ENTRY(0, -8, SPRITE_SIZE_16x16, 0, 519, 8, 0),
    OAM_ENTRY(0, -12, SPRITE_SIZE_16x8, 0, 529, 8, 0),
    OAM_ENTRY(0, 4, SPRITE_SIZE_16x8, ST_OAM_VFLIP, 529, 8, 0),
};

const struct AnimationFrame sButatabiMovingOam[] = {
    {sButatabiMovingOam_Frame1, 10},
    {sButatabiMovingOam_Frame2, 30},
    {sButatabiMovingOam_Frame1, 10},
    {sButatabiMovingOam_Frame3, 30},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sButatabiTurningOam[] = {
    {sButatabiTurningOam_Frame1, 1},
    {sButatabiTurningOam_Frame2, 1},
    {sButatabiTurningOam_Frame3, 1},
    {sButatabiTurningOam_Frame4, 1},
    {sButatabiTurningOam_Frame5, 1},
    {sButatabiTurningOam_Frame6, 1},
    {sButatabiTurningOam_Frame7, 1},
    {sButatabiTurningOam_Frame8, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sButatabiTurnAroundOam[] = {
    {sButatabiTurnAroundOam_Frame1, 1},
    {sButatabiTurnAroundOam_Frame2, 1},
    {sButatabiTurnAroundOam_Frame3, 1},
    {sButatabiTurnAroundOam_Frame4, 1},
    {sButatabiTurnAroundOam_Frame5, 1},
    {sButatabiTurnAroundOam_Frame6, 1},
    {sButatabiTurnAroundOam_Frame7, 1},
    {sButatabiTurningOam_Frame1, 1},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sButatabiFallingOam[] = {
    {sButatabiTurningOam_Frame1, 1},
    {sButatabiTurnAroundOam_Frame7, 1},
    {sButatabiTurningOam_Frame2, 2},
    {sButatabiFallingOam_Frame1, 5},
    {sButatabiFallingOam_Frame2, 5},
    {sButatabiFallingOam_Frame1, 5},
    {sButatabiFallingOam_Frame2, 5},
    {sButatabiFallingOam_Frame1, 5},
    {sButatabiFallingOam_Frame2, 5},
    {sButatabiFallingOam_Frame1, 5},
    {sButatabiFallingOam_Frame2, 5},
    {sButatabiFallingOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void SetButatabiHitbox(void)
{
    struct PrimarySpriteData* sprite;

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        sprite->hitboxExtentLeft = 40;
        sprite->hitboxExtentRight = 80;
    } else {
        sprite->hitboxExtentLeft = 84;
        sprite->hitboxExtentRight = 36;
    }
}

void InitButatabi(void)
{
    struct PrimarySpriteData* sprite;
    u8 zero;
    u16 zero16;
    u8 extent16;
    u8 extent32;
    u16 status;

    sprite = &gCurrentSprite;
    status = sprite->status & ~SPRITE_STATUS_HIDDEN;
    /* agbcc otherwise initializes the high-register zero before r6. */
    asm("mov %0, #0" : "=r"(zero));
    zero16 = 0;
    sprite->status = status;
    sprite->warioCollision = 3;
    sprite->drawDistanceDown = 24;
    {
        u8* distance;

        distance = &sprite->drawDistanceUp;
        extent16 = 16;
        *distance = extent16;
        distance++;
        extent32 = 32;
        *distance = extent32;
    }
    SetButatabiHitbox();
    sprite->hitboxExtentUp = extent16;
    sprite->hitboxExtentDown = extent32;
    sprite->pOamData = sButatabiMovingOam;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero16;
    sprite->pose = extent16;
    sprite->work2 = zero;
    sprite->work3 = zero;
    sprite->drawPriority = zero;
}

void ButatabiTackled(void)
{
    struct PrimarySpriteData* sprite;
    u8 zero;

    sprite = &gCurrentSprite;
    sprite->pOamData = sButatabiFallingOam;
    zero = 0;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero;
    sprite->health = zero;
    sprite->work3 = zero;
    sprite->drawPriority = zero;
    sprite->work2 = 8;
    sprite->status &= ~SPRITE_STATUS_CAN_HIT_OTHER_SPRITES;
    sprite->status |= SPRITE_STATUS_MAYBE_DEAD;
    SpriteSpawnSecondary(sprite->yPosition - HALF_BLOCK_SIZE, sprite->xPosition, SSPRITE_06);
}

void ButatabiTackledRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    ButatabiTackled();
}

void ButatabiTackledLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    ButatabiTackled();
}

void ButatabiAirborne(void)
{
    struct PrimarySpriteData* sprite;
    u8 zero;

    sprite = &gCurrentSprite;
    sprite->pOamData = sButatabiFallingOam;
    zero = 0;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zero;
    sprite->health = zero;
    sprite->work3 = zero;
    sprite->drawPriority = zero;
    sprite->work2 = 7;
    SpriteSpawnSecondary(sprite->yPosition - HALF_BLOCK_SIZE, sprite->xPosition, SSPRITE_06);
}

void ButatabiAirborneRightInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_RIGHT;
    ButatabiAirborne();
}

void ButatabiAirborneLeftInit(void)
{
    gCurrentSprite.pose = SPOSE_TACKLED_LEFT;
    ButatabiAirborne();
}

void ButatabiMove(void)
{
    register struct PrimarySpriteData* sprite asm("r5");
    register u8* indexPointer asm("r6");
    register u32 index asm("r4");
    register u16 velocity asm("r3");
    int zero;

    sprite = &gCurrentSprite;
    indexPointer = &sprite->work3;
    index = *indexPointer;
    if (index == 1) {
        m4aSongNumStart(SE_BUTATABI_JUMP);
    }

    {
        register const s16* table asm("r2");
        const s16* entry;
        register int signedVelocity asm("r1");

        register u16 newYPosition asm("r0");

        table = sButatabiYVelocity;
        entry = (const s16*)(index * 2 + (u32)table);
        velocity = *(const u16*)entry;
        zero = 0;
        signedVelocity = *(const s16*)((const u8*)entry + zero);
        if (signedVelocity == 0x7FFF) {
            register u32 previousIndex asm("r1");
            register const s16* previousEntry asm("r1");
            register u16 previousVelocity asm("r1");

            previousIndex = index - 1;
            /* Prevent agbcc from folding the previous-index subtraction into the table lookup. */
            asm("" : "+r"(previousIndex));
            previousEntry = (const s16*)(previousIndex * 2 + (u32)table);
            newYPosition = sprite->yPosition;
            previousVelocity = *(const u16*)previousEntry;
            newYPosition += previousVelocity;
        } else {
            register u32 nextIndex asm("r0");

            nextIndex = index + 1;
            *indexPointer = nextIndex;
            newYPosition = sprite->yPosition;
            newYPosition += velocity;
        }
        sprite->yPosition = newYPosition;
    }

    {
        register struct PrimarySpriteData* current asm("r2");

        current = &gCurrentSprite;
        index = current->work2;
        if (index == 80) {
            register u16 animationZero asm("r0");

            current->pOamData = sButatabiTurningOam;
            animationZero = 0;
            /* agbcc otherwise inserts a redundant move before the byte store. */
            asm("strb %0, [%1, #22]" : : "r"(animationZero), "r"(current) : "memory");
            current->animationTimer = animationZero;
        } else if (index == 88) {
            register u16 animationZero asm("r0");

            current->pOamData = sButatabiTurnAroundOam;
            animationZero = 0;
            /* agbcc otherwise inserts a redundant move before the byte store. */
            asm("strb %0, [%1, #22]" : : "r"(animationZero), "r"(current) : "memory");
            current->animationTimer = animationZero;
            current->status ^= SPRITE_STATUS_FACING_RIGHT;
            SetButatabiHitbox();
        }
    }

    {
        register const s16* table asm("r5");
        register struct PrimarySpriteData* current asm("r0");
        register u8* pointer asm("r2");
        register u8 byteValue asm("r1");
        const s16* entry;

        table = sButatabiXVelocity;
        entry = (const s16*)((index / 2) * 2 + (u32)table);
        velocity = *(const u16*)entry;
        if (*entry == 0x7FFF) {
            current = &gCurrentSprite;
            pointer = (u8*)current + 41;
            byteValue = 1;
            *pointer = byteValue;
            /* agbcc otherwise folds the required pointer increment into the store. */
            asm("add %0, #1" : "+r"(pointer));
            *pointer = byteValue;
            index = 0;
            velocity = *(const u16*)&table[0];
            current->pOamData = sButatabiMovingOam;
            /* agbcc otherwise inserts a redundant move before this byte store. */
            asm("strb %1, [%0, #22]" : : "r"(current), "r"(index) : "memory");
            current->animationTimer = index;
        } else {
            byteValue = index + 1;
            current = &gCurrentSprite;
            pointer = (u8*)current + 41;
            *pointer = byteValue;
        }

        pointer = (u8*)current;
        if (((struct PrimarySpriteData*)pointer)->status & SPRITE_STATUS_FACING_RIGHT) {
            ((struct PrimarySpriteData*)pointer)->xPosition += velocity;
        } else {
            ((struct PrimarySpriteData*)pointer)->xPosition -= velocity;
        }
    }
}

void SpriteButatabi(void)
{
    register struct PrimarySpriteData* sprite asm("r0");
    register u8 pose asm("r1");
    register struct PrimarySpriteData* current asm("r2");

    sprite = &gCurrentSprite;
    pose = sprite->pose;
    current = sprite;
    switch (pose) {
        case SPOSE_INIT:
            InitButatabi();
            break;
        case SPOSE_CRUSHED_OR_COLLECTED_INIT:
            SpriteUtilDie();
            break;
        case SPOSE_TACKLED_RIGHT_INIT:
        case SPOSE_33:
        case SPOSE_4F:
            ButatabiTackledRightInit();
            break;
        case SPOSE_TACKLED_RIGHT:
            SpriteUtilFallOffscreenRight();
            break;
        case SPOSE_TACKLED_LEFT_INIT:
        case SPOSE_35:
        case SPOSE_50:
            ButatabiTackledLeftInit();
            break;
        case SPOSE_TACKLED_LEFT:
            SpriteUtilFallOffscreenLeft();
            break;
        case SPOSE_69:
            ButatabiAirborneLeftInit();
            break;
        case SPOSE_6A:
            ButatabiAirborneRightInit();
            break;
        default:
            current->pose = SPOSE_IDLE;
            ButatabiMove();
            break;
    }
}
