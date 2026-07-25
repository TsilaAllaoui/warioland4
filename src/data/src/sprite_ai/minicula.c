#include "sprite_ai/minicula.h"

#include "sprite.h"

extern const struct AnimationFrame sMiniculaOam_83C4CD8[];
void func_8026450(void);

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
