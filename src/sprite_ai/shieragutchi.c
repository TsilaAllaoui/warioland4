#include "sprite_ai/shieragutchi.h"
#include "global_data.h"
#include "score.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_util.h"
#include "types.h"
#include "wario.h"

#include "oam.h"
extern const s16 sShieragutchiRiseYVelocity[];
extern const s16 sShieragutchiFallYVelocity[];

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sShieragutchiIdleOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-12, -16, SPRITE_SIZE_32x8, 0, 526, 8, 0),
};

const u16 sShieragutchiIdleOam_Frame2[] = {
    2,
    OAM_ENTRY(-20, -9, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-12, -17, SPRITE_SIZE_32x8, 0, 558, 8, 0),
};

const u16 sShieragutchiRiseOam_Frame1[] = {
    2,
    OAM_ENTRY(-12, -13, SPRITE_SIZE_32x16, 0, 519, 8, 0),
    OAM_ENTRY(-20, -21, SPRITE_SIZE_32x8, 0, 529, 8, 0),
};

const u16 sShieragutchiRiseOam_Frame2[] = {
    2,
    OAM_ENTRY(-20, -17, SPRITE_SIZE_32x16, 0, 522, 8, 0),
    OAM_ENTRY(-20, -25, SPRITE_SIZE_32x8, 0, 561, 8, 0),
};

const u16 sShieragutchiRiseOam_Frame3[] = {
    2,
    OAM_ENTRY(-12, -8, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(-20, -16, SPRITE_SIZE_32x8, 0, 533, 8, 0),
};

const u16 sShieragutchiGrabbedOam_Frame1[] = {
    2,
    OAM_ENTRY(-20, -9, SPRITE_SIZE_32x16, 0, 515, 8, 0),
    OAM_ENTRY(-8, -17, SPRITE_SIZE_16x8, 0, 539, 8, 0),
};

const u16 sShieragutchiDefeatOam_Frame1[] = {
    3,
    OAM_ENTRY(-16, -9, SPRITE_SIZE_16x16, 0, 537, 8, 0),
    OAM_ENTRY(0, -9, SPRITE_SIZE_16x16, ST_OAM_HFLIP, 537, 8, 0),
    OAM_ENTRY(-12, -17, SPRITE_SIZE_32x8, 0, 558, 8, 0),
};

const struct AnimationFrame sShieragutchiIdleOam[] = {
    {sShieragutchiIdleOam_Frame1, 10},
    {sShieragutchiIdleOam_Frame2, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sShieragutchiRiseOam[] = {
    {sShieragutchiIdleOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiRiseOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiIdleOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiRiseOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiIdleOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiRiseOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame1, 6},
    {sShieragutchiIdleOam_Frame2, 6},
    {sShieragutchiRiseOam_Frame3, 6},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sShieragutchiGrabbedOam[] = {
    {sShieragutchiRiseOam_Frame3, 10},
    {sShieragutchiGrabbedOam_Frame1, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sShieragutchiDefeatOam[] = {
    {sShieragutchiIdleOam_Frame1, 4},
    {sShieragutchiDefeatOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void InitShieragutchi(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.warioCollision = 78;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 16;
    gCurrentSprite.drawDistanceLeftRight = 8;
    gCurrentSprite.hitboxExtentUp = 48;
    gCurrentSprite.hitboxExtentDown = 16;
    gCurrentSprite.hitboxExtentLeft = 40;
    gCurrentSprite.hitboxExtentRight = 36;
}

void StartShieragutchiIdle(void)
{
    gCurrentSprite.pOamData = sShieragutchiIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.work0 = 45;
}

void ShieragutchiIdle(void)
{
    if (SpriteUtilCheckWarioNearbyAboveBelow(360, 300) == 1)
    {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0)
            gCurrentSprite.pose = 110;
    }
    else
    {
        gCurrentSprite.work0 = 45;
    }
}

void StartShieragutchiRise(void)
{
    gCurrentSprite.pOamData = sShieragutchiRiseOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 111;
    gCurrentSprite.work3 = 0;
    m4aSongNumStart(SE_SHIERAGUTCHI_RISE);
}

void ShieragutchiRise(void)
{
    u8* work3;
    u8 index;
    const s16* movements;
    s16 movement;

    func_8023BFC((u16)(gCurrentSprite.yPosition - 160), gCurrentSprite.xPosition);
    if (gUnk_30000A0.unk_02 != 1 || (gUnk_3000A51 & 15) != 0)
    {
        gCurrentSprite.pose = 112;
        return;
    }

    work3 = &gCurrentSprite.work3;
    index = *work3;
    movements = sShieragutchiRiseYVelocity;
    movement = movements[index];
    if (movement == 0x7FFF)
    {
        gCurrentSprite.pose = 112;
        return;
    }

    *work3 = index + 1;
    gCurrentSprite.yPosition += movement;
}

void StartShieragutchiFall(void)
{
    gCurrentSprite.pOamData = sShieragutchiIdleOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 113;
    gCurrentSprite.work3 = 0;
}

void ShieragutchiFall(void)
{
    int new_var;
    struct PrimarySpriteData* sprite;
    u8 index;
    const u16 previousMovement;
    s16 movement;

    sprite = &gCurrentSprite;
    func_8023BFC(sprite->yPosition, sprite->xPosition);
    if ((gUnk_3000A51 & 15) != 0)
    {
        sprite->pose = 15;
        return;
    }

    index = sprite->work3;
    movement = sShieragutchiFallYVelocity[index];
    if (movement == 0x7FFF)
    {
        new_var = index - 1;
        previousMovement = ((const u16*)sShieragutchiFallYVelocity)[new_var];
        sprite->yPosition += previousMovement;
    }
    else
    {
        sprite->work3 = index + 1;
        sprite->yPosition += movement;
    }
}

void DefeatShieragutchi(void)
{
    gCurrentSprite.pOamData = sShieragutchiDefeatOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.health = 0;
    gCurrentSprite.work2 = 8;
    gCurrentSprite.work3 = 0;
    gCurrentSprite.drawPriority = 0;
    func_807687C(gCurrentSprite.globalID, gCurrentSprite.yPosition, gCurrentSprite.xPosition, 1);
    SpriteSpawnSecondary(gCurrentSprite.yPosition - 32, gCurrentSprite.xPosition, 6);
    gPersistentSpriteData[gCurrentRoom][gCurrentSprite.roomSlot] = 2;
    gCurrentSprite.status = (gCurrentSprite.status & 0xFEFF) | SPRITE_STATUS_MAYBE_DEAD;
}

void StartShieragutchiFallRight(void)
{
    gCurrentSprite.pose = 32;
    DefeatShieragutchi();
}

void StartShieragutchiFallLeft(void)
{
    gCurrentSprite.pose = 34;
    DefeatShieragutchi();
}

void StartShieragutchiGrabbed(void)
{
    gCurrentSprite.pOamData = sShieragutchiGrabbedOam;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.pose = 117;
    gCurrentSprite.drawPriority = 1;
}

void ShieragutchiGrabbed(void)
{
    if (gWarioData.pose == 15)
    {
        func_8023BFC(gCurrentSprite.yPosition, gCurrentSprite.xPosition);
        if ((gUnk_3000A51 & 15) == 0)
        {
            gCurrentSprite.yPosition++;
            gWarioData.yPosition = gCurrentSprite.yPosition - 32;
            gWarioData.xPosition = gCurrentSprite.xPosition;
        }
    }
    else
    {
        gCurrentSprite.pose = 112;
        gCurrentSprite.drawPriority = 2;
    }
}

void SpriteShieragutchi(void)
{
    switch (gCurrentSprite.pose)
    {
        case 0:
            InitShieragutchi();
        case 15:
            StartShieragutchiIdle();
        case 16:
            ShieragutchiIdle();
            break;
        case 110:
            StartShieragutchiRise();
        case 111:
            ShieragutchiRise();
            break;
        case 35:
        case 37:
        case 112:
            StartShieragutchiFall();
        case 113:
            ShieragutchiFall();
            break;
        case 31:
            StartShieragutchiFallRight();
        case 32:
            SpriteUtilFallOffscreenRight();
            break;
        case 33:
            StartShieragutchiFallLeft();
        case 34:
            SpriteUtilFallOffscreenLeft();
            break;
        case 116:
            StartShieragutchiGrabbed();
        case 117:
            ShieragutchiGrabbed();
            break;
        default:
            SpriteUtilDie();
            break;
    }
}
