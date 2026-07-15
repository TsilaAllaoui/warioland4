#include "sprite_ai/money_sunflower.h"

#include "global_data.h"
#include "sprite.h"


#include "oam.h"

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMoneySunflowerFullOam_Frame1[] = {
    4,
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 512, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 512, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 512, 8, 0),
};

const u16 sMoneySunflowerLargeOam_Frame1[] = {
    4,
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 516, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 516, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 516, 8, 0),
};

const u16 sMoneySunflowerMediumOam_Frame1[] = {
    4,
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 520, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 520, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 520, 8, 0),
};

const u16 sMoneySunflowerSmallOam_Frame1[] = {
    4,
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 524, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 524, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 524, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 524, 8, 0),
};

const u16 sMoneySunflowerDepletedOam_Frame1[] = {
    4,
    OAM_ENTRY(-32, 0, SPRITE_SIZE_32x32, ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(0, 0, SPRITE_SIZE_32x32, ST_OAM_HFLIP | ST_OAM_VFLIP, 528, 8, 0),
    OAM_ENTRY(-32, -32, SPRITE_SIZE_32x32, 0, 528, 8, 0),
    OAM_ENTRY(0, -32, SPRITE_SIZE_32x32, ST_OAM_HFLIP, 528, 8, 0),
};

const u8 sMoneySunflowerRawData_83D0E92[] = {
    0x00, 0x00,
};

const struct AnimationFrame sMoneySunflowerFullOam[] = {
    {sMoneySunflowerFullOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneySunflowerLargeOam[] = {
    {sMoneySunflowerLargeOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneySunflowerMediumOam[] = {
    {sMoneySunflowerMediumOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneySunflowerSmallOam[] = {
    {sMoneySunflowerSmallOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMoneySunflowerDepletedOam[] = {
    {sMoneySunflowerDepletedOam_Frame1, 200},
    ANIMATION_TERMINATOR
};

void InitMoneySunflower(void)
{
    gCurrentSprite.status |= SPRITE_STATUS_BACKGROUND;
    gCurrentSprite.currentAnimationFrame = 0;
    gCurrentSprite.animationTimer = 0;
    gCurrentSprite.warioCollision = 0;
    gCurrentSprite.drawDistanceDown = 32;
    gCurrentSprite.drawDistanceUp = 32;
    gCurrentSprite.drawDistanceLeftRight = 32;
    gCurrentSprite.work0 = 0;
    gCurrentSprite.pose = 16;
    gCurrentSprite.xPosition += 64;
    gCurrentSprite.yPosition -= 64;
}

void SetMoneySunflowerFull(void)
{
    gCurrentSprite.pOamData = sMoneySunflowerFullOam;
    gCurrentSprite.hitboxExtentUp = 112;
    gCurrentSprite.hitboxExtentDown = 108;
    gCurrentSprite.hitboxExtentLeft = 112;
    gCurrentSprite.hitboxExtentRight = 108;
}

void SetMoneySunflowerLarge(void)
{
    gCurrentSprite.pOamData = sMoneySunflowerLargeOam;
    gCurrentSprite.hitboxExtentUp = 84;
    gCurrentSprite.hitboxExtentDown = 80;
    gCurrentSprite.hitboxExtentLeft = 84;
    gCurrentSprite.hitboxExtentRight = 80;
}

void SetMoneySunflowerMedium(void)
{
    gCurrentSprite.pOamData = sMoneySunflowerMediumOam;
    gCurrentSprite.hitboxExtentUp = 56;
    gCurrentSprite.hitboxExtentDown = 52;
    gCurrentSprite.hitboxExtentLeft = 56;
    gCurrentSprite.hitboxExtentRight = 52;
}

void SetMoneySunflowerSmall(void)
{
    gCurrentSprite.pOamData = sMoneySunflowerSmallOam;
    gCurrentSprite.hitboxExtentUp = 32;
    gCurrentSprite.hitboxExtentDown = 28;
    gCurrentSprite.hitboxExtentLeft = 32;
    gCurrentSprite.hitboxExtentRight = 28;
}

void SetMoneySunflowerDepleted(void)
{
    gCurrentSprite.pOamData = sMoneySunflowerDepletedOam;
    gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    gCurrentSprite.hitboxExtentUp = 4;
    gCurrentSprite.hitboxExtentDown = 0;
    gCurrentSprite.hitboxExtentLeft = 4;
    gCurrentSprite.hitboxExtentRight = 0;
}

void AdvanceMoneySunflowerStage(void)
{
    register u8 *persistentData asm("r6");
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *currentRoom asm("r5");
    register u32 address asm("r0");
    register int persistentState asm("r1");

    persistentData = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    currentRoom = &gCurrentRoom;
    address = *currentRoom << 6;
    address += sprite->roomSlot;
    address += (u32)persistentData;
    address = *(u8 *)address;
    persistentState = 0xF0;
    persistentState &= address;

    switch (persistentState) {
        case 0:
            func_80767DC(sprite->yPosition, sprite->xPosition, 50);
            address = *currentRoom << 6;
            address += sprite->roomSlot;
            address += (u32)persistentData;
            persistentState = *(u8 *)address;
            persistentState += 16;
            *(u8 *)address = persistentState;
            SetMoneySunflowerLarge();
            break;
        case 16:
            func_80767DC(sprite->yPosition, sprite->xPosition, 50);
            address = *currentRoom << 6;
            address += sprite->roomSlot;
            address += (u32)persistentData;
            persistentState = *(u8 *)address;
            persistentState += 16;
            *(u8 *)address = persistentState;
            SetMoneySunflowerMedium();
            break;
        case 32:
            func_80767DC(sprite->yPosition, sprite->xPosition, 50);
            address = *currentRoom << 6;
            address += sprite->roomSlot;
            address += (u32)persistentData;
            persistentState = *(u8 *)address;
            persistentState += 16;
            *(u8 *)address = persistentState;
            SetMoneySunflowerSmall();
            break;
        case 48:
            func_80767DC(sprite->yPosition, sprite->xPosition, 50);
            address = *currentRoom << 6;
            address += sprite->roomSlot;
            address += (u32)persistentData;
            persistentState = *(u8 *)address;
            persistentState += 16;
            *(u8 *)address = persistentState;
            SetMoneySunflowerDepleted();
            break;
        default:
            gCurrentSprite.status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
            break;
    }

    gCurrentSprite.work0 = 60;
    gCurrentSprite.pose = 16;
}

void SpriteMoneySunflower(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;

    switch (gCurrentSprite.pose) {
        case 0:
            SetMoneySunflowerFull();
            InitMoneySunflower();
            break;
        case 1:
            SetMoneySunflowerLarge();
            InitMoneySunflower();
            break;
        case 2:
            SetMoneySunflowerMedium();
            InitMoneySunflower();
            break;
        case 3:
            SetMoneySunflowerSmall();
            InitMoneySunflower();
            break;
        case 4:
            SetMoneySunflowerDepleted();
            InitMoneySunflower();
            break;
        case 51:
        case 53:
            gCurrentSprite.work0 = 60;
            gCurrentSprite.pose = 16;
            break;
        case 105:
        case 106:
            AdvanceMoneySunflowerStage();
            break;
        default:
            if (gCurrentSprite.work0 != 0) {
                gCurrentSprite.work0--;
                if (gCurrentSprite.work0 == 0) {
                    gCurrentSprite.status &= ~SPRITE_STATUS_MAYBE_DEAD;
                }
            }
            break;
    }
}
