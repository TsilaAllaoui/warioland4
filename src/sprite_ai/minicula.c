#include "sprite_ai/minicula.h"

#include "sprite.h"

#include "oam.h"
void func_8026450(void);

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMiniculaOam_83C4CD8_Frame11[] = {
    2,
    OAM_ENTRY(0, -13, SPRITE_SIZE_8x16, 0, 514, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame12[] = {
    2,
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, 0, 515, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame9[] = {
    2,
    OAM_ENTRY(0, -14, SPRITE_SIZE_8x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame10[] = {
    2,
    OAM_ENTRY(-1, -12, SPRITE_SIZE_8x16, 0, 517, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame5[] = {
    3,
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x16, 0, 514, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x16, 0, 520, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame6[] = {
    3,
    OAM_ENTRY(1, -14, SPRITE_SIZE_8x16, 0, 515, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-9, -14, SPRITE_SIZE_8x16, 0, 521, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame7[] = {
    3,
    OAM_ENTRY(1, -14, SPRITE_SIZE_8x16, 0, 516, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-9, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame8[] = {
    3,
    OAM_ENTRY(0, -12, SPRITE_SIZE_8x16, 0, 517, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, 0, 518, 8, 0),
    OAM_ENTRY(-6, -12, SPRITE_SIZE_8x16, 0, 523, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame1[] = {
    3,
    OAM_ENTRY(3, -12, SPRITE_SIZE_8x16, 0, 527, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-11, -12, SPRITE_SIZE_8x16, 0, 526, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame2[] = {
    3,
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x16, 0, 528, 8, 0),
    OAM_ENTRY(4, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 528, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame3[] = {
    3,
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 529, 8, 0),
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x16, 0, 529, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame4[] = {
    3,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, 0, 524, 8, 0),
    OAM_ENTRY(4, -11, SPRITE_SIZE_8x16, 0, 531, 8, 0),
    OAM_ENTRY(-10, -11, SPRITE_SIZE_8x16, 0, 530, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame13[] = {
    3,
    OAM_ENTRY(-11, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 527, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(3, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 526, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame14[] = {
    3,
    OAM_ENTRY(-8, -11, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(3, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 528, 8, 0),
    OAM_ENTRY(-12, -13, SPRITE_SIZE_8x16, 0, 528, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame15[] = {
    3,
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(-11, -13, SPRITE_SIZE_8x16, 0, 529, 8, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 529, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame16[] = {
    3,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 524, 8, 0),
    OAM_ENTRY(-12, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 531, 8, 0),
    OAM_ENTRY(2, -11, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 530, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame17[] = {
    3,
    OAM_ENTRY(-10, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(2, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 520, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame18[] = {
    3,
    OAM_ENTRY(-9, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 515, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(1, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 521, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame19[] = {
    3,
    OAM_ENTRY(-9, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(1, -14, SPRITE_SIZE_8x16, 0, 516, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame20[] = {
    3,
    OAM_ENTRY(-8, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 518, 8, 0),
    OAM_ENTRY(-2, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 523, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame23[] = {
    2,
    OAM_ENTRY(-8, -13, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 514, 8, 0),
    OAM_ENTRY(-8, -13, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame24[] = {
    2,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 515, 8, 0),
    OAM_ENTRY(-8, -12, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame21[] = {
    2,
    OAM_ENTRY(-8, -14, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 516, 8, 0),
    OAM_ENTRY(-8, -14, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sMiniculaOam_83C4CD8_Frame22[] = {
    2,
    OAM_ENTRY(-7, -12, SPRITE_SIZE_8x16, ST_OAM_HFLIP, 517, 8, 0),
    OAM_ENTRY(-8, -15, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 512, 8, 0),
};

const struct AnimationFrame sMiniculaOam_83C4CD8[] = {
    {sMiniculaOam_83C4CD8_Frame1, 2},
    {sMiniculaOam_83C4CD8_Frame2, 2},
    {sMiniculaOam_83C4CD8_Frame3, 2},
    {sMiniculaOam_83C4CD8_Frame4, 2},
    {sMiniculaOam_83C4CD8_Frame5, 2},
    {sMiniculaOam_83C4CD8_Frame6, 2},
    {sMiniculaOam_83C4CD8_Frame7, 2},
    {sMiniculaOam_83C4CD8_Frame8, 2},
    {sMiniculaOam_83C4CD8_Frame5, 2},
    {sMiniculaOam_83C4CD8_Frame6, 2},
    {sMiniculaOam_83C4CD8_Frame9, 2},
    {sMiniculaOam_83C4CD8_Frame10, 2},
    {sMiniculaOam_83C4CD8_Frame11, 2},
    {sMiniculaOam_83C4CD8_Frame12, 2},
    {sMiniculaOam_83C4CD8_Frame9, 2},
    {sMiniculaOam_83C4CD8_Frame10, 2},
    {sMiniculaOam_83C4CD8_Frame11, 2},
    {sMiniculaOam_83C4CD8_Frame12, 2},
    {sMiniculaOam_83C4CD8_Frame9, 2},
    {sMiniculaOam_83C4CD8_Frame10, 2},
    {sMiniculaOam_83C4CD8_Frame11, 2},
    {sMiniculaOam_83C4CD8_Frame12, 2},
    {sMiniculaOam_83C4CD8_Frame7, 2},
    {sMiniculaOam_83C4CD8_Frame8, 2},
    {sMiniculaOam_83C4CD8_Frame5, 2},
    {sMiniculaOam_83C4CD8_Frame6, 2},
    {sMiniculaOam_83C4CD8_Frame7, 2},
    {sMiniculaOam_83C4CD8_Frame8, 2},
    {sMiniculaOam_83C4CD8_Frame1, 2},
    {sMiniculaOam_83C4CD8_Frame2, 2},
    {sMiniculaOam_83C4CD8_Frame3, 2},
    {sMiniculaOam_83C4CD8_Frame4, 2},
    {sMiniculaOam_83C4CD8_Frame13, 2},
    {sMiniculaOam_83C4CD8_Frame14, 2},
    {sMiniculaOam_83C4CD8_Frame15, 2},
    {sMiniculaOam_83C4CD8_Frame16, 2},
    {sMiniculaOam_83C4CD8_Frame17, 2},
    {sMiniculaOam_83C4CD8_Frame18, 2},
    {sMiniculaOam_83C4CD8_Frame19, 2},
    {sMiniculaOam_83C4CD8_Frame20, 2},
    {sMiniculaOam_83C4CD8_Frame17, 2},
    {sMiniculaOam_83C4CD8_Frame18, 2},
    {sMiniculaOam_83C4CD8_Frame21, 2},
    {sMiniculaOam_83C4CD8_Frame22, 2},
    {sMiniculaOam_83C4CD8_Frame23, 2},
    {sMiniculaOam_83C4CD8_Frame24, 2},
    {sMiniculaOam_83C4CD8_Frame21, 2},
    {sMiniculaOam_83C4CD8_Frame22, 2},
    {sMiniculaOam_83C4CD8_Frame23, 2},
    {sMiniculaOam_83C4CD8_Frame24, 2},
    {sMiniculaOam_83C4CD8_Frame21, 2},
    {sMiniculaOam_83C4CD8_Frame22, 2},
    {sMiniculaOam_83C4CD8_Frame23, 2},
    {sMiniculaOam_83C4CD8_Frame24, 2},
    {sMiniculaOam_83C4CD8_Frame19, 2},
    {sMiniculaOam_83C4CD8_Frame20, 2},
    {sMiniculaOam_83C4CD8_Frame17, 2},
    {sMiniculaOam_83C4CD8_Frame18, 2},
    {sMiniculaOam_83C4CD8_Frame19, 2},
    {sMiniculaOam_83C4CD8_Frame20, 2},
    {sMiniculaOam_83C4CD8_Frame13, 2},
    {sMiniculaOam_83C4CD8_Frame14, 2},
    {sMiniculaOam_83C4CD8_Frame15, 2},
    {sMiniculaOam_83C4CD8_Frame16, 2},
    ANIMATION_TERMINATOR
};

void InitMinicula(void)
{
    register int zero asm("r3");
    register int zeroHalfword asm("r4");
    register u16 status asm("r1");
    register int statusMask asm("r2");
    register int newStatus asm("r0");
    struct PrimarySpriteData *sprite;

    sprite = &gCurrentSprite;
    status = sprite->status;
    statusMask = 0x80;
    statusMask <<= 3;
    asm("add r0, r2, #0\n\tmov r3, #0\n\tmov r4, #0" : "=r" (newStatus), "=r" (zero), "=r" (zeroHalfword) : "r" (statusMask));
    newStatus |= status;
    sprite->status = newStatus;
    sprite->warioCollision = 19;
    sprite->drawDistanceDown = 16;
    sprite->drawDistanceUp = zero;
    sprite->drawDistanceLeftRight = 8;
    sprite->hitboxExtentUp = 44;
    sprite->hitboxExtentDown = 136;
    sprite->hitboxExtentLeft = 16;
    sprite->hitboxExtentRight = 12;
    sprite->pOamData = sMiniculaOam_83C4CD8;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = zeroHalfword;
    sprite->pose = 16;
    sprite->work3 = zero;
    sprite->drawPriority = zero;
}

void SpriteMinicula(void)
{
    if (gCurrentSprite.pose == 0) {
        InitMinicula();
    }
    func_8026450();
}
