#include "sprite_ai/flying_carpet.h"

#include "global_data.h"
#include "input.h"
#include "sprite_util.h"
#include "wario.h"

#include "oam.h"
volatile long UpdateMagicCarpetCollisionTimer(void)
{
  register struct PrimarySpriteData *currentLoad asm("r1");
  register struct PrimarySpriteData *current asm("ip");
  u8 roomSlot;
  int i;
  u16 status;
  currentLoad = &gCurrentSprite;
  roomSlot = currentLoad->roomSlot;
  i = 0;
  current = currentLoad;
  for (; i < 24; i++)
  {
    if (gSpriteData[i].globalID == PSPRITE_MAGIC_CARPET)
    {
      ;
      if (gSpriteData[i].status & SPRITE_STATUS_EXISTS)
      {
        if (roomSlot != gSpriteData[i].roomSlot)
        {
          if (gSpriteData[i].work1 != 0)
          {
            current->disableWarioCollisionTimer = 1;
            break;
          }
        }
      }
    }
  }

}

/* Sprite data reconstructed from the original contiguous ROM region. */

const u16 sMagicCarpetFlyingOam_Frame1[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 512, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 516, 8, 0),
};

const u16 sMagicCarpetFlyingOam_Frame2[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 518, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 522, 8, 0),
};

const u16 sMagicCarpetFlyingOam_Frame3[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 524, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 528, 8, 0),
};

const u16 sMagicCarpetFlyingOam_Frame4[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 576, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 580, 8, 0),
};

const u16 sMagicCarpetFlyingOam_Frame5[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 582, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 586, 8, 0),
};

const u16 sMagicCarpetFlyingOam_Frame6[] = {
    2,
    OAM_ENTRY(-21, -5, SPRITE_SIZE_32x16, 0, 588, 8, 0),
    OAM_ENTRY(11, -5, SPRITE_SIZE_16x16, 0, 592, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame1[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 546, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 514, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x16, 0, 530, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame2[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 552, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 520, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x16, 0, 532, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame3[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 558, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 526, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x16, 0, 534, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame4[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 610, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 578, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x16, 0, 594, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame5[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 616, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 584, 8, 0),
    OAM_ENTRY(-21, -6, SPRITE_SIZE_16x16, 0, 596, 8, 0),
};

const u16 sMagicCarpetRiddenOam_Frame6[] = {
    3,
    OAM_ENTRY(-5, 0, SPRITE_SIZE_32x8, 0, 622, 8, 0),
    OAM_ENTRY(-5, -5, SPRITE_SIZE_32x8, 0, 590, 8, 0),
    OAM_ENTRY(-21, -8, SPRITE_SIZE_16x16, 0, 598, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame2[] = {
    2,
    OAM_ENTRY(-8, -9, SPRITE_SIZE_32x16, 0, 538, 8, 0),
    OAM_ENTRY(-24, -9, SPRITE_SIZE_16x16, 0, 536, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame3[] = {
    3,
    OAM_ENTRY(-15, -9, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_32x16, 0, 538, 8, 0),
    OAM_ENTRY(-22, -1, SPRITE_SIZE_16x8, 0, 632, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame4[] = {
    3,
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_32x16, 0, 538, 8, 0),
    OAM_ENTRY(-24, -1, SPRITE_SIZE_16x8, 0, 632, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame5[] = {
    3,
    OAM_ENTRY(-1, -9, SPRITE_SIZE_16x16, 0, 542, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_32x16, 0, 538, 8, 0),
    OAM_ENTRY(-24, -1, SPRITE_SIZE_16x8, 0, 632, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame6[] = {
    3,
    OAM_ENTRY(5, -9, SPRITE_SIZE_16x16, 0, 604, 8, 0),
    OAM_ENTRY(-24, -1, SPRITE_SIZE_16x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x16, 0, 538, 8, 0),
};

const u16 sMagicCarpetIdleOam_Frame1[] = {
    4,
    OAM_ENTRY(-24, -1, SPRITE_SIZE_16x8, 0, 632, 8, 0),
    OAM_ENTRY(-8, -9, SPRITE_SIZE_16x16, 0, 538, 8, 0),
    OAM_ENTRY(16, -1, SPRITE_SIZE_16x8, 0, 634, 8, 0),
    OAM_ENTRY(8, -9, SPRITE_SIZE_8x16, 0, 539, 8, 0),
};

const struct AnimationFrame sMagicCarpetRiddenOam[] = {
    {sMagicCarpetRiddenOam_Frame1, 7},
    {sMagicCarpetRiddenOam_Frame2, 7},
    {sMagicCarpetRiddenOam_Frame3, 7},
    {sMagicCarpetRiddenOam_Frame4, 7},
    {sMagicCarpetRiddenOam_Frame5, 7},
    {sMagicCarpetRiddenOam_Frame6, 7},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMagicCarpetFlyingOam[] = {
    {sMagicCarpetFlyingOam_Frame1, 10},
    {sMagicCarpetFlyingOam_Frame2, 10},
    {sMagicCarpetFlyingOam_Frame3, 10},
    {sMagicCarpetFlyingOam_Frame4, 10},
    {sMagicCarpetFlyingOam_Frame5, 10},
    {sMagicCarpetFlyingOam_Frame6, 10},
    ANIMATION_TERMINATOR
};

const struct AnimationFrame sMagicCarpetIdleOam[] = {
    {sMagicCarpetIdleOam_Frame1, 8},
    {sMagicCarpetIdleOam_Frame2, 8},
    {sMagicCarpetIdleOam_Frame1, 8},
    {sMagicCarpetIdleOam_Frame2, 8},
    {sMagicCarpetIdleOam_Frame1, 4},
    {sMagicCarpetIdleOam_Frame2, 8},
    {sMagicCarpetIdleOam_Frame3, 8},
    {sMagicCarpetIdleOam_Frame4, 8},
    {sMagicCarpetIdleOam_Frame5, 8},
    {sMagicCarpetIdleOam_Frame6, 10},
    {sMagicCarpetIdleOam_Frame1, 30},
    ANIMATION_TERMINATOR
};

void InitMagicCarpet(void)
{
  register struct PrimarySpriteData *sprite asm("ip");
  const struct AnimationFrame *new_var;
  struct PrimarySpriteData **new_var2;
  new_var2 = &sprite;
  sprite = &gCurrentSprite;
  (*new_var2)->status |= SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
  sprite->warioCollision = 29;
  (*new_var2)->drawDistanceDown = 16;
  (*new_var2)->drawDistanceUp = 16;
  sprite->drawDistanceLeftRight = 32;
  (*new_var2)->hitboxExtentUp = 4;
  (*new_var2)->hitboxExtentDown = 64;
  (*new_var2)->hitboxExtentLeft = 68;
  (*new_var2)->hitboxExtentRight = 64;
  new_var = sMagicCarpetIdleOam;
  (*new_var2)->pOamData = new_var;
  (*new_var2)->currentAnimationFrame = 0;
  (*new_var2)->animationTimer = 0;
  sprite->pose = 24;
  (*new_var2)->yPosition -= 12;
  sprite->work2 = 0;
  (*new_var2)->work1 = 0;
}

void SetMagicCarpetMovementState(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u16 status asm("r3");
    u8* work2;
    register u16 newStatus asm("r0");

    sprite = &gCurrentSprite;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    status = sprite->status;
    if (status & SPRITE_STATUS_WARIO_STANDING_ON) {
        sprite->pOamData = sMagicCarpetRiddenOam;
        sprite->pose = 22;
        sprite->work0 = 4;
        if (gWarioData.horizontalDirection & 0x20) {
            sprite->work2 = 1;
            sprite->status = status & ~SPRITE_STATUS_FACING_RIGHT;
        } else {
            sprite->work2 = 2;
            newStatus = SPRITE_STATUS_FACING_RIGHT;
            newStatus |= status;
            sprite->status = newStatus;
        }
    } else {
        sprite->pOamData = sMagicCarpetFlyingOam;
        sprite->work0 = 30;
        sprite->pose = 20;
        work2 = &sprite->work2;
        if (*work2 == 0) {
            if (gWarioData.horizontalDirection & 0x20)
                *work2 = 1;
            else
                *work2 = 2;
        }
    }
}

void MagicCarpetWaitForWario(void)
{
    register struct PrimarySpriteData* sprite asm("r2");
    register u16 status asm("r3");
    register u16 newStatus asm("r0");
    register u8* work2 asm("r1");

    sprite = &gCurrentSprite;
    status = sprite->status;
    if (status & SPRITE_STATUS_WARIO_STANDING_ON) {
        sprite->pOamData = sMagicCarpetFlyingOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pose = 16;
        if (gWarioData.horizontalDirection & 0x20) {
            newStatus = status & ~SPRITE_STATUS_FACING_RIGHT;
            sprite->status = newStatus;
            work2 = &sprite->work2;
            *work2 = 1;
        } else {
            newStatus = SPRITE_STATUS_FACING_RIGHT;
            newStatus |= status;
            sprite->status = newStatus;
            work2 = &sprite->work2;
            *work2 = 2;
        }
    } else {
        func_8023BFC(sprite->yPosition + 12, sprite->xPosition);
        if (gUnk_3000A51 == 0)
            SetMagicCarpetMovementState();
    }
}

void MagicCarpetHandleStandingWario(void)
{
  struct PrimarySpriteData **new_var;
  register struct PrimarySpriteData *sprite asm("r3");
  register u16 status asm("r4");
  u16 standing;
  register u16 buttons asm("r1");
  register u8 *work2 asm("r1");
  register u16 newStatus asm("r0");
  u8 zero;
  func_8023B88();
  if (gUnk_3000A50 == 0)
  {
    SetMagicCarpetMovementState();
  }
  else
  {
    sprite = &gCurrentSprite;
    status = sprite->status;
    standing = status & SPRITE_STATUS_WARIO_STANDING_ON;
    if (standing != 0)
    {
      buttons = gButtonsPressed;
      if (buttons & 0x20)
      {
        work2 = &sprite->work2;
        *work2 = 1;
        newStatus = status & (~SPRITE_STATUS_FACING_RIGHT);
        sprite->status = newStatus;
      }
      else
        if (buttons & 0x10)
      {
        work2 = &sprite->work2;
        *work2 = 2;
        newStatus = SPRITE_STATUS_FACING_RIGHT;
        newStatus |= status;
        sprite->status = newStatus;
      }
    }
    else
    {
      zero = 0;
      sprite->disableWarioCollisionTimer = 6;
      new_var = &sprite;
      (*new_var)->pOamData = sMagicCarpetFlyingOam;
      (*new_var)->currentAnimationFrame = standing;
      sprite->animationTimer = standing;
      sprite->work0 = 36;
      (*new_var)->work3 = zero;
      sprite->pose = 18;
    }
  }
}

void MagicCarpetRiseAndMove(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    struct PrimarySpriteData** new_var;
    register u16 newStatus asm("r0");
    register u16 status asm("r2");
    u8 timer;
    u8 index;
    s16 velocity;

    sprite = &gCurrentSprite;
    status = sprite->status;
    if (status & SPRITE_STATUS_WARIO_STANDING_ON) {
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pOamData = sMagicCarpetRiddenOam;
        sprite->pose = 22;
        sprite->work0 = 4;
        if (gWarioData.horizontalDirection & 0x20) {
            sprite->work2 = 1;
            newStatus = status & ~SPRITE_STATUS_FACING_RIGHT;
            sprite->status = newStatus;
        } else {
            sprite->work2 = 2;
            newStatus = status | SPRITE_STATUS_FACING_RIGHT;
            sprite->status = newStatus;
        }
    } else {
        timer = --sprite->work0;
        if (timer != 0) {
            func_8023BFC((u16)(sprite->yPosition - 16), sprite->xPosition);
            if ((gUnk_3000A51 & 0xF) != 0) {
                SetMagicCarpetMovementState();
            } else {
                func_8023BFC((u16)(sprite->yPosition - 16), (u16)(sprite->xPosition - 64));
                if ((gUnk_3000A51 & 0xF) != 0) {
                    SetMagicCarpetMovementState();
                } else {
                    func_8023BFC((u16)(sprite->yPosition - 16), (u16)(sprite->xPosition + 64));
                    if ((gUnk_3000A51 & 0xF) != 0) {
                        SetMagicCarpetMovementState();
                    } else {
                        index = sprite->work3;
                        velocity = sMagicCarpetVerticalVelocity[index];
                        if (velocity == 0x7FFF) {
                            register const s16* previousVelocity asm("r1");
                            register u16 yPosition asm("r0");

                            asm volatile(
                                "sub %0, %1, #1\n\t"
                                "lsl %0, %0, #1\n\t"
                                "add %0, %0, %2"
                                : "=r"(previousVelocity)
                                : "r"(index), "r"(sMagicCarpetVerticalVelocity));
                            yPosition = sprite->yPosition;
                            asm volatile("" : "+r"(yPosition), "+r"(previousVelocity));
                            {
                                register s16 previousValue asm("r1");
                                previousValue = *previousVelocity;
                                /* agbcc reverses the commutative add operands here; preserve the
                                 * target destination/source order with this single instruction. */
                                asm volatile("add %0, %0, %1"
                                             : "+r"(yPosition)
                                             : "r"(previousValue));
                            }
                            sprite->yPosition = yPosition;
                        } else {
                            sprite->work3 = index + 1;
                            sprite->yPosition += velocity;
                        }

                        new_var = &sprite;
                        sprite = &gCurrentSprite;
                        if (sprite->work2 == 1) {
                            func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition - 80));
                            if ((gUnk_3000A51 & 0xF) == 0) {
                                sprite->xPosition--;
                                if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON) {
                                    gWarioData.xPosition -= 3;
                                }
                            }
                        } else if (sprite->work2 == 2) {
                            func_8023BFC((u16)(sprite->yPosition - 32), (u16)((*new_var)->xPosition + 76));
                            if ((gUnk_3000A51 & 0xF) == 0) {
                                sprite->xPosition++;
                                if (sprite->status & SPRITE_STATUS_WARIO_STANDING_ON) {
                                    gWarioData.xPosition += 3;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            SetMagicCarpetMovementState();
        }
    }
}

void MagicCarpetMoveUnridden(void)
{
  register struct PrimarySpriteData *sprite asm("r4");
  register unsigned int groundY asm("r3");
  u16 status;
  register u16 statusCopy asm("r3");
  register u16 standing asm("r0");
  u16 y;
  u8 *work2;
  struct PrimarySpriteData **new_var;
  u8 *work0;
  sprite = &gCurrentSprite;
  groundY = func_8023A60(sprite->yPosition, sprite->xPosition);
  if (gUnk_30000A0.unk_02 == 1)
  {
    sprite->status |= SPRITE_STATUS_UNDERWATER;
  }
  if (gUnk_3000A50 != 0)
  {
    register u8 zeroByte asm("r1");
    register u16 zeroHalf asm("r2");
    register u16 yPosition asm("r0");
    zeroByte = 0;
    zeroHalf = 0;
    asm volatile("" : "+r"(zeroByte), "+r"(zeroHalf));
    sprite->pOamData = sMagicCarpetIdleOam;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->pose = 24;
    yPosition = groundY;
    yPosition -= 12;
    sprite->yPosition = yPosition;
    return;
  }
  status = sprite->status;
  standing = status & SPRITE_STATUS_WARIO_STANDING_ON;
  statusCopy = status;
  if (standing != 0)
  {
    sprite->currentAnimationFrame = 0;
    (*(new_var = &sprite))->animationTimer = 0;
    sprite->pOamData = sMagicCarpetRiddenOam;
    sprite->pose = 22;
    sprite->work0 = 4;
    if (gWarioData.horizontalDirection & 0x20)
    {
      sprite->work2 = 1;
      sprite->status = statusCopy & (~SPRITE_STATUS_FACING_RIGHT);
    }
    else
    {
      register u16 newStatus asm("r0");
      sprite->work2 = 2;
      newStatus = status | SPRITE_STATUS_FACING_RIGHT;
      sprite->status = newStatus;
    }
    return;
  }
  y = sprite->yPosition;
  sprite->yPosition = y + 4;
  work2 = &sprite->work2;
  if ((*work2) == 1)
  {
    func_8023BFC((u16) (y - 28), (u16) (sprite->xPosition - 80));
    if ((gUnk_3000A51 & 0xF) == 0)
    {
      sprite->xPosition -= 3;
    }
    else
    {
      sprite->work0 = 30;
      *work2 = 2;
    }
  }
  else
  {
    func_8023BFC((u16) (y - 28), (u16) (sprite->xPosition + 76));
    if ((gUnk_3000A51 & 0xF) == 0)
    {
      sprite->xPosition += 3;
    }
    else
    {
      sprite->work0 = 30;
      *work2 = 1;
    }
  }
  sprite = &gCurrentSprite;
  work0 = &sprite->work0;
  (*work0)--;
  if ((*work0) == 0)
  {
    *work0 = 30;
    sprite->work2 ^= 3;
  }
}

void MagicCarpetMoveWithWario(void)
{
    register struct PrimarySpriteData* sprite asm("r4");
    register u16 groundY asm("r3");
    u16 status;
    register u16 statusCopy asm("r3");
    register u16 standing asm("r0");
    u16 buttons;
    register u16 buttonMask asm("r0");
    register u32 direction asm("r2");
    u8* work2;
    register struct PrimarySpriteData* loadedSprite asm("r0");

    sprite = &gCurrentSprite;
    groundY = func_8023A60(sprite->yPosition, sprite->xPosition);
    if (gUnk_30000A0.unk_02 == 1) {
        sprite->status |= SPRITE_STATUS_UNDERWATER;
    }
    if (gUnk_3000A50 != 0) {
        sprite->yPosition = groundY;
        sprite->pOamData = sMagicCarpetFlyingOam;
        sprite->currentAnimationFrame = 0;
        sprite->animationTimer = 0;
        sprite->pose = 16;
        return;
    }

    sprite->yPosition += 2;
    status = sprite->status;
    standing = status & SPRITE_STATUS_WARIO_STANDING_ON;
    statusCopy = status;
    if (standing != 0) {
        gWarioData.yPosition += 2;
        sprite->work0 = 4;
        buttons = gButtonsHeld;
        buttonMask = buttons & 0x20;
        if (buttonMask != 0) {
            work2 = &sprite->work2;
            *work2 = 1;
            sprite->status = statusCopy & ~SPRITE_STATUS_FACING_RIGHT;
        } else {
            buttonMask = buttons & 0x10;
            if (buttonMask != 0) {
                register u16 newStatus asm("r0");
                work2 = &sprite->work2;
                *work2 = 2;
                newStatus = status | SPRITE_STATUS_FACING_RIGHT;
                sprite->status = newStatus;
            }
        }

        loadedSprite = &gCurrentSprite;
        direction = (u32)loadedSprite;
        direction += 41;
        direction = *(u8*)direction;
        sprite = loadedSprite;
        if (direction == 1) {
            func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition - 80));
            if ((gUnk_3000A51 & 0xF) == 0) {
                sprite->xPosition -= 4;
                gWarioData.xPosition -= 4;
            }
            {
                register struct WarioData* wario asm("r2");
                register u16 warioX asm("r1");
                register s32 limit asm("r0");

                wario = &gWarioData;
                warioX = wario->xPosition;
                limit = sprite->xPosition;
                limit -= 33;
                if (warioX < limit) {
                    wario->xPosition = limit;
                }
            }
        } else if (direction == 2) {
            func_8023BFC((u16)(sprite->yPosition - 32), (u16)(sprite->xPosition + 76));
            if ((gUnk_3000A51 & 0xF) == 0) {
                sprite->xPosition += 4;
                gWarioData.xPosition += 4;
            }
            {
                register struct WarioData* wario asm("r2");
                register u16 warioX asm("r1");
                register s32 limit asm("r0");

                wario = &gWarioData;
                warioX = wario->xPosition;
                limit = sprite->xPosition;
                limit += 33;
                if (warioX > limit) {
                    wario->xPosition = limit;
                }
            }
        }
    } else {
        register u8* work0 asm("r1");
        register u32 value asm("r0");

        work0 = &sprite->work0;
        value = *work0;
        value--;
        *work0 = value;
    }

    {
        register u8* work0 asm("r3");
        register u32 timer asm("r2");
        register u32 zero asm("r1");
        register u8* work3 asm("r0");

        /* agbcc speculatively computes this field address in both movement branches;
         * keeping the two-instruction address formation here matches the shared tail. */
        asm volatile(
            "add %0, %1, #0\n\t"
            "add %0, #39"
            : "=r"(work0)
            : "r"(sprite));
        timer = *work0;
        if (timer == 0) {
            sprite->pOamData = sMagicCarpetFlyingOam;
            sprite->currentAnimationFrame = timer;
            zero = 0;
            asm volatile("" : "+r"(timer), "+r"(zero));
            sprite->animationTimer = timer;
            *work0 = 36;
            work3 = &sprite->work3;
            *work3 = zero;
            sprite->pose = 18;
        }
    }
}

void SpriteMagicCarpet(void)
{
    register struct PrimarySpriteData* sprite asm("r2");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_UNDERWATER) {
        sprite->pose = 107;
    }

    switch (sprite->pose) {
        case 0:
            InitMagicCarpet();
            break;
        case 24:
            MagicCarpetWaitForWario();
            break;
        case 16:
            MagicCarpetHandleStandingWario();
            break;
        case 18:
            MagicCarpetRiseAndMove();
            break;
        case 20:
            MagicCarpetMoveUnridden();
            break;
        case 22:
            MagicCarpetMoveWithWario();
            break;
        default:
            SpriteUtilDie();
            gWarioData.unk_1A = 0;
            break;
    }

    func_8026838();
    UpdateMagicCarpetCollisionTimer();
    sprite = &gCurrentSprite;
    if (sprite->work1 != 0) {
        sprite->status &= ~SPRITE_STATUS_BACKGROUND;
    } else {
        sprite->status |= SPRITE_STATUS_BACKGROUND;
    }
}
