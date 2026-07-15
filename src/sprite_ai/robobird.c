#include "global_data.h"
#include "gba/m4a.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_ai/robobird.h"
#include "sprite_util.h"
#include "wario.h"

#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sRobobirdIdleOam_Frame1[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-10, -5, SPRITE_SIZE_8x8, 0, 543, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
};

const u16 sRobobirdIdleOam_Frame2[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 549, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 523, 8, 0),
};

const u16 sRobobirdIdleOam_Frame3[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_16x16, 0, 514, 8, 0),
    OAM_ENTRY(-8, -6, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
};

const u16 sRobobirdIdleOam_Frame4[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -6, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-11, -17, SPRITE_SIZE_8x16, 0, 516, 8, 0),
};

const u16 sRobobirdIdleOam_Frame5[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 519, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sRobobirdIdleOam_Frame6[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(-8, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 549, 8, 0),
};

const u16 sRobobirdIdleOam_Frame7[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(1, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-10, -5, SPRITE_SIZE_8x8, 0, 543, 8, 0),
};

const u16 sRobobirdIdleOam_Frame8[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 549, 8, 0),
};

const u16 sRobobirdIdleOam_Frame9[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-8, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sRobobirdIdleOam_Frame10[] = {
    5,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -4, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 519, 8, 0),
    OAM_ENTRY(2, -9, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-11, -17, SPRITE_SIZE_8x16, 0, 516, 8, 0),
};

const u16 sRobobirdIdleOam_Frame11[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(3, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_16x16, 0, 514, 8, 0),
};

const u16 sRobobirdIdleOam_Frame12[] = {
    5,
    OAM_ENTRY(-11, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(2, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(-8, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 525, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-20, -8, SPRITE_SIZE_16x8, 0, 549, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame1[] = {
    5,
    OAM_ENTRY(-10, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-1, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-6, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(6, -8, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-25, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame2[] = {
    5,
    OAM_ENTRY(-11, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-2, -4, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 543, 8, 0),
    OAM_ENTRY(-7, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(5, -8, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-26, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame3[] = {
    5,
    OAM_ENTRY(0, -7, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 542, 8, 0),
    OAM_ENTRY(-7, -5, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(6, -8, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-11, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-26, -8, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame4[] = {
    6,
    OAM_ENTRY(-13, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(0, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 541, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(10, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(6, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 574, 8, 0),
    OAM_ENTRY(-28, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame5[] = {
    7,
    OAM_ENTRY(1, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(-5, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 532, 8, 0),
    OAM_ENTRY(11, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(7, 0, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 574, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-27, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(14, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u16 sRobobirdAttackStartupOam_Frame6[] = {
    6,
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(15, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u16 sRobobirdAttackOam_Frame3[] = {
    6,
    OAM_ENTRY(-13, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u8 sRobobirdRawData_83DD9E6[] = {
    0x06, 0x00, 0xF4, 0x00, 0xF3, 0x51, 0x16, 0x82, 0xFB, 0x40, 0xE4, 0x11, 0x05, 0x82, 0xF9, 0x40,
    0x00, 0x10, 0x25, 0x82, 0xF6, 0x00, 0x02, 0x50, 0x13, 0x82, 0xF6, 0x80, 0xFA, 0x11, 0x15, 0x82,
    0xF6, 0x00, 0x12, 0x10, 0x3F, 0x82,
};

const u16 sRobobirdFallingOam_Frame1[] = {
    7,
    OAM_ENTRY(-6, -11, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-11, -11, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(-10, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(4, -4, SPRITE_SIZE_16x8, ST_OAM_HFLIP | ST_OAM_VFLIP, 549, 8, 0),
    OAM_ENTRY(-6, -4, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(5, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-23, -15, SPRITE_SIZE_16x8, 0, 549, 8, 0),
};

const u16 sRobobirdFallingOam_Frame2[] = {
    7,
    OAM_ENTRY(-6, -12, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 540, 8, 0),
    OAM_ENTRY(-13, -11, SPRITE_SIZE_8x8, 0, 540, 8, 0),
    OAM_ENTRY(-10, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
    OAM_ENTRY(5, -9, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(-8, -3, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 521, 8, 0),
    OAM_ENTRY(3, -16, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 536, 8, 0),
    OAM_ENTRY(-23, -6, SPRITE_SIZE_16x8, 0, 549, 8, 0),
};

const u16 sRobobirdAttackOam_Frame1[] = {
    7,
    OAM_ENTRY(-24, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(15, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u16 sRobobirdAttackOam_Frame2[] = {
    7,
    OAM_ENTRY(-27, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(-13, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -6, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(15, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u16 sRobobirdAttackOam_Frame4[] = {
    7,
    OAM_ENTRY(-24, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const u16 sRobobirdAttackOam_Frame5[] = {
    7,
    OAM_ENTRY(-27, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-13, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 534, 8, 0),
    OAM_ENTRY(-28, -5, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(0, -7, SPRITE_SIZE_16x8, ST_OAM_HFLIP, 549, 8, 0),
    OAM_ENTRY(2, -10, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(-6, -10, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 533, 8, 0),
    OAM_ENTRY(19, -10, SPRITE_SIZE_8x8, ST_OAM_HFLIP, 575, 8, 0),
};

const struct AnimationFrame sRobobirdIdleOam[] = {
    {sRobobirdIdleOam_Frame1, 3},
    {sRobobirdIdleOam_Frame2, 3},
    {sRobobirdIdleOam_Frame3, 3},
    {sRobobirdIdleOam_Frame4, 3},
    {sRobobirdIdleOam_Frame5, 3},
    {sRobobirdIdleOam_Frame6, 3},
    {sRobobirdIdleOam_Frame7, 3},
    {sRobobirdIdleOam_Frame8, 3},
    {sRobobirdIdleOam_Frame9, 3},
    {sRobobirdIdleOam_Frame10, 3},
    {sRobobirdIdleOam_Frame11, 3},
    {sRobobirdIdleOam_Frame12, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sRobobirdAttackStartupOam[] = {
    {sRobobirdAttackStartupOam_Frame1, 3},
    {sRobobirdAttackStartupOam_Frame2, 3},
    {sRobobirdAttackStartupOam_Frame3, 3},
    {sRobobirdAttackStartupOam_Frame4, 3},
    {sRobobirdAttackStartupOam_Frame5, 3},
    {sRobobirdAttackStartupOam_Frame6, 3},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sRobobirdAttackOam[] = {
    {sRobobirdAttackOam_Frame1, 2},
    {sRobobirdAttackStartupOam_Frame6, 2},
    {sRobobirdAttackOam_Frame2, 2},
    {sRobobirdAttackOam_Frame3, 2},
    {sRobobirdAttackOam_Frame4, 2},
    {sRobobirdAttackOam_Frame3, 2},
    {sRobobirdAttackOam_Frame2, 2},
    {sRobobirdAttackStartupOam_Frame6, 2},
    {sRobobirdAttackOam_Frame1, 2},
    {sRobobirdAttackOam_Frame3, 2},
    {sRobobirdAttackOam_Frame5, 2},
    {sRobobirdAttackOam_Frame3, 2},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sRobobirdFallingOam[] = {
    {sRobobirdFallingOam_Frame1, 8},
    {sRobobirdFallingOam_Frame2, 8},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sRobobirdFastAttackOam[] = {
    {sRobobirdAttackStartupOam_Frame6, 6},
    {sRobobirdAttackOam_Frame3, 6},
    ANIMATION_TERMINATOR
};

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
