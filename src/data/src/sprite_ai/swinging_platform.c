#include "sprite_ai/swinging_platform.h"

#include "fixed_point.h"
#include "global_data.h"
#include "sprite.h"
#include "sprite_util.h"
#include "wario.h"

void func_804A3FC(void)
{
    register s32 scale asm("r6");
    register s32 cosine asm("r8");
    s32 sine;

    {
        register struct PrimarySpriteData *sprite asm("r4");
        register u8 *drawDistance asm("r1");
        register u8 *hitbox asm("r0");

        sprite = &gCurrentSprite;
        sprite->status |= 0x488;
        sprite->warioCollision = 0;
        sprite->drawDistanceDown = 0;
        drawDistance = &sprite->drawDistanceUp;
        *drawDistance = 64;
        drawDistance++;
        asm("" : "+r"(drawDistance));
        *drawDistance = 64;
        hitbox = &sprite->hitboxExtentUp;
        *hitbox = 4;
        hitbox++;
        asm("" : "+r"(hitbox));
        *hitbox = 4;
        hitbox++;
        asm("" : "+r"(hitbox));
        *hitbox = 4;
        hitbox++;
        asm("" : "+r"(hitbox));
        *hitbox = 4;
        sprite->currentAnimationFrame = 1;
        sprite->animationTimer = 0;
        sprite->pose = SPOSE_IDLE;
        sprite->work0 = 0;
        sprite->work2 = 0;

        if (sprite->globalID == PSPRITE_SWINGING_PLATFORM) {
            sprite->pOamData = sSwingingPlatformOam_83CFB58;
            SpriteSpawnAsChild(PSPRITE_AC, sprite->roomSlot, sprite->gfxSlot,
                sprite->yPosition + 256, sprite->xPosition + 128);
        } else {
            sprite->pOamData = sSwingingPlatformOam_83CFB48;
            SpriteSpawnAsChild(PSPRITE_AD, sprite->roomSlot, sprite->gfxSlot,
                sprite->yPosition + 192, sprite->xPosition + 128);
        }
    }

    cosine = COS(0);
    scale = Q_8_8(1);
    gCurrentSprite.affinePA = FixedMul(cosine, FixedInverse(scale));
    sine = SIN(0);
    gCurrentSprite.affinePB = FixedMul(sine, FixedInverse(scale));
    gCurrentSprite.affinePC = FixedMul(-sine, FixedInverse(scale));
    gCurrentSprite.affinePD = FixedMul(cosine, FixedInverse(scale));
}

void func_804A508(void)
{
  register u32 yDelta asm("r8");
  u32 xDelta;
  register u32 frame asm("r5");
  register struct PrimarySpriteData *current asm("r9");
  register struct PrimarySpriteData *sprite asm("r2");
  register struct PrimarySpriteData *sprites asm("ip");
  register struct WarioData *wario asm("r6");
  register int offset60 asm("sl");
  register int frameOffset asm("r3");
  register int offset48 asm("r4");
  struct
  {
    u32 mode;
    u32 roomSlot;
    const s16 *mode1HighY;
    const s16 *mode1LowY;
    const s16 *mode0HighY;
    const s16 *mode0LowY;
    u8 *childWork1;
  } locals;
  register u32 angle asm("r4");
  register const u8 *lowAngleTable asm("r0");
  s32 cosine;
  register s32 sine asm("r4");
  register u32 flagValue asm("r1");
  yDelta = 0;
  xDelta = 0;
  sprite = &gCurrentSprite;
  {
    register u32 frameValue asm("r0");
    register u32 nextFrame asm("r1");
    {
      register u8 *frameLoad asm("r1");
      frameLoad = &gUnk_3000A4B;
      asm("" : "+r"(frameLoad));
      frameValue = *frameLoad;
    }
    nextFrame = frameValue + 1;
    {
      register u8 *frameStore asm("r3");
      frameStore = &gUnk_3000A4B;
      asm("" : "+r"(frameStore));
      *frameStore = nextFrame;
    }
    frameValue <<= 24;
    frame = frameValue >> 24;
  }
  {
    register u8 *modePtr asm("r4");
    modePtr = ((u8 *) sprite) + 41;
    asm("" : "+r"(modePtr));
    locals.mode = *modePtr;
  }
  {
    register u32 roomSlot asm("r1");
    roomSlot = sprite->roomSlot;
    locals.roomSlot = roomSlot;
  }
  current = sprite;
  sprite = gSpriteData;
  sprites = sprite;
  {
    register s32 offset asm("r0");
    register const s16 *table asm("r1");
    table = sUnk_83D00E8;
    asm("" : "+r"(table));
    offset = frame;
    offset -= 60;
    offset <<= 1;
    offset60 = offset;
    frameOffset = offset60;
    asm("" : "+r"(frameOffset));
    locals.mode1HighY = (const s16 *) (frameOffset + ((s32) table));
    frameOffset = frame << 1;
    table = (const s16 *) (frameOffset + ((s32) table));
    locals.mode1LowY = table;
  }
  locals.childWork1 = ((u8 *) sprites) + 40;
  wario = &gWarioData;
  {
    register s32 offset asm("r0");
    register const s16 *table asm("r1");
    table = sUnk_83CFF98;
    asm("" : "+r"(table));
    offset = frame;
    offset -= 48;
    offset48 = offset << 1;
    locals.mode0HighY = (const s16 *) (offset48 + ((s32) table));
    table = (const s16 *) (frameOffset + ((s32) table));
    locals.mode0LowY = table;
  }
  loop:
  {
    register u32 childRoomSlot asm("r0");
    register u32 roomSlot asm("r1");
    childRoomSlot = sprite->roomSlot;
    roomSlot = locals.roomSlot;
    if (childRoomSlot == roomSlot)
    {
    }
    else
    {
      goto next;
    }
  }

  if (sprite->globalID != PSPRITE_AC)
  {
    goto next;
  }
  if (!(sprite->status & SPRITE_STATUS_EXISTS))
  {
    goto next;
  }
  if (locals.mode != 0)
  {
    {
      register s32 xVelocity asm("r0");
      if (frame > 59)
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r3");
        yPointer = locals.mode1HighY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yPointer[zero] * 4);
        {
          register s32 xZero asm("r4");
          xZero = 0;
          xVelocity = ((const s16 *) (((const u8 *) sUnk_83D0070) + offset60))[xZero];
        }
      }
      else
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r4");
        yPointer = locals.mode1LowY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yDelta + (yPointer[zero] * 4));
        {
          register const s16 *xTable asm("r1");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r3");

          xTable = sUnk_83CFFF8;
          asm("" : : "r"(xTable));
          /* agbcc cannot otherwise keep the address result in r0 and the zero index in r3. */
          asm("add r0, r3, r1\n\tmov r3, #0\n\tldrsh r0, [r0, r3]"
              : "=r"(xVelocity) : "r"(frameOffset), "r"(xTable) : "r3");
        }
      }
      xDelta = (u16) (xDelta + (xVelocity * 4));
    }
    {
      register u8 *workPointer asm("r4");
      register u32 work asm("r1");
      workPointer = locals.childWork1;
      asm("" : "+r"(workPointer));
      work = *workPointer;
      if (work != 0)
      {
        wario->yPosition += yDelta;
        {
          register u32 xPosition asm("r0");
          xPosition = wario->xPosition;
          xPosition = xDelta + xPosition;
          wario->xPosition = xPosition;
        }
        goto applyChildMovement;
      }
      else
        if (frame == 59)
      {
        register u8 value asm("r0");
        register u8 *framePtr asm("r3");
        register u8 *flagPtr asm("r4");
        value = 48;
        framePtr = &gUnk_3000A4B;
        asm("" : "+r"(value), "+r"(framePtr), "+r"(work));
        *framePtr = value;
        flagPtr = &gUnk_3000A4D;
        asm("" : "+r"(flagPtr), "+r"(work));
        *flagPtr = work;
        goto applyChildMovement;
      }
      else
      {
        if (frame != 119)
        {
          goto applyChildMovement;
        }
        flagValue = work;
        goto storeFlag;
      }
    }
  }
  else
  {
    {
      register s32 xVelocity asm("r0");
      if (frame > 47)
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r3");
        yPointer = locals.mode0HighY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yPointer[zero] * 4);
        {
          register const s16 *xTable asm("r1");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r3");

          xTable = sUnk_83CFF38;
          asm("" : : "r"(xTable));
          xPointer = (const s16 *)(offset48 + (s32)xTable);
          asm("" : : "r"(xTable), "r"(xPointer));
          /* agbcc otherwise assigns the signed-load zero index to r4. */
          asm("mov r3, #0\n\tldrsh r0, [r0, r3]"
              : "=r"(xVelocity) : "r"(xPointer) : "r3");
        }
      }
      else
      {
        register const s16 *yPointer asm("r4");
        register s32 zero asm("r1");
        yPointer = locals.mode0LowY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yDelta + (yPointer[zero] * 4));
        {
          register const s16 *xTable asm("r4");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r1");

          xTable = sUnk_83CFED8;
          asm("" : : "r"(xTable));
          /* agbcc cannot otherwise keep the address result in r0 and the zero index in r1. */
          asm("add r0, r3, r4\n\tmov r1, #0\n\tldrsh r0, [r0, r1]"
              : "=r"(xVelocity) : "r"(frameOffset), "r"(xTable) : "r1");
        }
      }
      xDelta = (u16) (xDelta + (xVelocity * 4));
    }
    {
      register u8 *workPointer asm("r3");
      register u32 work asm("r0");
      workPointer = locals.childWork1;
      asm("" : "+r"(workPointer));
      work = *workPointer;
      if (work == 0)
      {
        goto applyChildMovement;
      }
      wario->yPosition += yDelta;
      {
        register u32 xPosition asm("r0");
        xPosition = wario->xPosition;
        xPosition = xDelta + xPosition;
        wario->xPosition = xPosition;
      }
      if (frame != 47)
      {
        goto checkFrame95;
      }
      {
        register u8 value asm("r0");
        register u8 one asm("r1");
        register u8 *framePtr asm("r4");
        value = 60;
        framePtr = &gUnk_3000A4B;
        asm("" : "+r"(value), "+r"(framePtr));
        *framePtr = value;
        one = 1;
        flagValue = one;
        goto storeFlag;
      }
    }
  }
  storeFlag:
  gUnk_3000A4D = flagValue;

  goto applyChildMovement;
  checkFrame95:
  if (frame == 95)
  {
    register u8 one asm("r4");
    register u8 *flagPtr asm("r3");
    one = 1;
    flagPtr = &gUnk_3000A4D;
    asm("" : "+r"(one), "+r"(flagPtr));
    *flagPtr = one;
  }

  applyChildMovement:
  sprite->yPosition += yDelta;

  {
    register u32 xPosition asm("r0");
    xPosition = sprite->xPosition;
    xPosition = xDelta + xPosition;
    sprite->xPosition = xPosition;
  }
  goto afterLoop;
  next:
  locals.childWork1 += sizeof(struct PrimarySpriteData);

  sprite++;
  if (((s32) sprite) <= ((s32) (&sprites[24 - 1])))
  {
    goto loop;
  }
  afterLoop:
  flagValue = locals.mode;
  if (flagValue != 0)
  {
    if (frame > 59)
    {
      register const s16 *table asm("r0");
      register int motionIndex asm("r2");
      register int byteOffset asm("r1");
      register int zero asm("r3");
      register s32 delta asm("r0");
      register u32 position asm("r4");
      register struct PrimarySpriteData *storeSprite asm("r3");
      table = sUnk_83CFDE8;
      motionIndex = frame - 60;
      byteOffset = motionIndex << 1;
      table = (const s16 *) (byteOffset + ((s32) table));
      zero = 0;
      delta = table[zero] * 4;
      position = (u32) current;
      position = *((u16 *) (position + 8));
      delta += position;
      storeSprite = current;
      storeSprite->yPosition = delta;
      {
        register const s16 *xPointer asm("r1");
        register int xZero asm("r4");
        register u32 xPosition asm("r1");
        table = sUnk_83CFD70;
        xPointer = (const s16 *) (byteOffset + ((s32) table));
        xZero = 0;
        delta = 4;
        delta = xPointer[xZero] * delta;
        xPosition = storeSprite->xPosition;
        delta += xPosition;
        storeSprite->xPosition = delta;
      }
      angle = sUnk_83CFE9C[motionIndex];
      if (frame == 119)
      {
        register struct PrimarySpriteData *workSprite asm("r1");
        workSprite = current;
        workSprite->work0 = 0;
      }
      goto angleReady;
    }
    else
    {
      register const s16 *table asm("r0");
      register int byteOffset asm("r1");
      register int zero asm("r2");
      register short delta asm("r0");
      register u32 position asm("r3");
      register struct PrimarySpriteData *storeSprite asm("r4");
      table = sUnk_83CFDE8;
      byteOffset = frame << 1;
      table = (const s16 *) (byteOffset + ((s32) table));
      zero = 0;
      delta = table[zero] * 4;
      position = (u32) current;
      position = *((u16 *) (position + 8));
      delta += position;
      storeSprite = current;
      storeSprite->yPosition = delta;
      {
        register const s16 *xPointer asm("r1");
        register u32 xPosition asm("r3");
        table = sUnk_83CFCF8;
        xPointer = (const s16 *) (byteOffset + ((s32) table));
        asm("" : : "r"(table), "r"(xPointer));
        zero = 0;
        /* agbcc otherwise selects r3 instead of the target r2 as the signed-load index. */
        asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
            : "=r"(delta) : "r"(xPointer), "r"(zero));
        xPosition = storeSprite->xPosition;
        delta += xPosition;
        storeSprite->xPosition = delta;
      }
      lowAngleTable = sUnk_83CFE60;
      goto loadLowAngle;
    }
  }
  else
    if (frame > 47)
  {
    register const s16 *table asm("r0");
    register int motionIndex asm("r2");
    register int byteOffset asm("r1");
    register int zero asm("r4");
    register s32 delta asm("r0");
    register u32 position asm("r3");
    register struct PrimarySpriteData *storeSprite asm("r4");
    table = sUnk_83CFC38;
    motionIndex = frame - 48;
    byteOffset = motionIndex << 1;
    table = (const s16 *) (byteOffset + ((s32) table));
    zero = 0;
    /* Keep the signed-load index in the target r4 after the preceding localized lookup. */
    asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
        : "=r"(delta) : "r"(table), "r"(zero));
    position = (u32) current;
    position = *((u16 *) (position + 8));
    delta += position;
    storeSprite = current;
    storeSprite->yPosition = delta;
    {
      register const s16 *xPointer asm("r1");
      register int xZero asm("r3");
      register u32 xPosition asm("r4");
      register struct PrimarySpriteData *xStore asm("r1");
      table = sUnk_83CFBD8;
      xPointer = (const s16 *) (byteOffset + ((s32) table));
      xZero = 0;
      delta = 4;
      delta = xPointer[xZero] * delta;
      xPosition = storeSprite->xPosition;
      delta += xPosition;
      xStore = current;
      xStore->xPosition = delta;
    }
    angle = sUnk_83CFCC8[motionIndex];
    if (frame == 95)
    {
      register struct PrimarySpriteData *workSprite asm("r1");
      workSprite = current;
      workSprite->work0 = 0;
    }
    goto angleReady;
  }
  else
  {
    register const s16 *table asm("r0");
    register int byteOffset asm("r1");
    register int zero asm("r2");
    register s16 delta asm("r0");
    register u32 position asm("r3");
    register struct PrimarySpriteData *storeSprite asm("r4");
    table = sUnk_83CFC38;
    byteOffset = frame << 1;
    table = (const s16 *) (byteOffset + ((s32) table));
    zero = 0;
    /* agbcc otherwise selects r4 instead of the target r2 as the signed-load index. */
    asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
        : "=r"(delta) : "r"(table), "r"(zero));
    position = (u32) current;
    position = *((u16 *) (position + 8));
    delta += position;
    storeSprite = current;
    storeSprite->yPosition = delta;
    {
      register u32 xPosition asm("r3");
      table = sUnk_83CFB78;
      /* agbcc cannot otherwise reuse r1 for the address and r0 for the signed result. */
      asm("add r1, r1, r0\n\tmov r2, #0\n\tldrsh r0, [r1, r2]\n\tlsl r0, r0, #2"
          : "+r"(table), "+r"(byteOffset) : : "r2");
      delta = (s32) table;
      xPosition = storeSprite->xPosition;
      delta += xPosition;
      storeSprite->xPosition = delta;
    }
    lowAngleTable = sUnk_83CFC98;
  }

  loadLowAngle:
  /* agbcc otherwise reuses r5 as the address destination instead of preserving the frame register. */
  asm("add r0, r5, r0\n\tldrb r4, [r0]"
      : "+r"(lowAngleTable), "=r"(angle) : "r"(frame));

  angleReady:
  {
    register s32 index asm("r0");
    register const s16 *table asm("r1");
    register s32 zero asm("r3");
    register s32 value asm("r2");
    index = angle + ((256 / 2) / 2);
    index <<= 1;
    table = sSinCosTable;
    index += (s32) table;
    /* Keep the zero index in r3 and the signed result in r2. */
    asm("mov r3, #0\n\tldrsh r2, [r0, r3]"
        : "=r"(value) : "r"(index) : "r3");
    cosine = value;
  }
  gCurrentSprite.affinePA = FixedMul(cosine, FixedInverse((s16) (1 * (1 << 8))));
  {
    register s32 index asm("r0");
    register const s16 *table asm("r4");
    register s32 zero asm("r1");
    index = angle << 1;
    table = sSinCosTable;
    index += (s32) table;
    /* Keep the zero index in r1 while loading the signed sine into r4. */
    asm("mov r1, #0\n\tldrsh r4, [r0, r1]"
        : "=r"(sine) : "r"(index) : "r1");
  }
  gCurrentSprite.affinePB = FixedMul(sine, FixedInverse((s16) (1 * (1 << 8))));
  gCurrentSprite.affinePC = FixedMul(-sine, FixedInverse((s16) (1 * (1 << 8))));
  gCurrentSprite.affinePD = FixedMul(cosine, FixedInverse((s16) (1 * (1 << 8))));
}

void func_804A84C(void)
{
  register u32 yDelta asm("r8");
  u32 xDelta;
  register u32 frame asm("r5");
  register struct PrimarySpriteData *current asm("r9");
  register struct PrimarySpriteData *sprite asm("r2");
  register struct PrimarySpriteData *sprites asm("ip");
  register struct WarioData *wario asm("r6");
  register int offset60 asm("sl");
  register int frameOffset asm("r3");
  register int offset48 asm("r4");
  struct
  {
    u32 mode;
    u32 roomSlot;
    const s16 *mode1HighY;
    const s16 *mode1LowY;
    const s16 *mode0HighY;
    const s16 *mode0LowY;
    u8 *childWork1;
  } locals;
  register u32 angle asm("r4");
  register const u8 *lowAngleTable asm("r0");
  s32 cosine;
  register s32 sine asm("r4");
  register u32 flagValue asm("r1");
  yDelta = 0;
  xDelta = 0;
  sprite = &gCurrentSprite;
  {
    register u32 frameValue asm("r0");
    register u32 nextFrame asm("r1");
    {
      register u8 *frameLoad asm("r1");
      frameLoad = &gUnk_3000A4B;
      asm("" : "+r"(frameLoad));
      frameValue = *frameLoad;
    }
    nextFrame = frameValue + 1;
    {
      register u8 *frameStore asm("r3");
      frameStore = &gUnk_3000A4B;
      asm("" : "+r"(frameStore));
      *frameStore = nextFrame;
    }
    frameValue <<= 24;
    frame = frameValue >> 24;
  }
  {
    register u8 *modePtr asm("r4");
    modePtr = ((u8 *) sprite) + 41;
    asm("" : "+r"(modePtr));
    locals.mode = *modePtr;
  }
  {
    register u32 roomSlot asm("r1");
    roomSlot = sprite->roomSlot;
    locals.roomSlot = roomSlot;
  }
  current = sprite;
  sprite = gSpriteData;
  sprites = sprite;
  {
    register s32 offset asm("r0");
    register const s16 *table asm("r1");
    table = sUnk_83D0370;
    asm("" : "+r"(table));
    offset = frame;
    offset -= 60;
    offset <<= 1;
    offset60 = offset;
    frameOffset = offset60;
    asm("" : "+r"(frameOffset));
    locals.mode1HighY = (const s16 *) (frameOffset + ((s32) table));
    frameOffset = frame << 1;
    table = (const s16 *) (frameOffset + ((s32) table));
    locals.mode1LowY = table;
  }
  locals.childWork1 = ((u8 *) sprites) + 40;
  wario = &gWarioData;
  {
    register s32 offset asm("r0");
    register const s16 *table asm("r1");
    table = sUnk_83D0220;
    asm("" : "+r"(table));
    offset = frame;
    offset -= 48;
    offset48 = offset << 1;
    locals.mode0HighY = (const s16 *) (offset48 + ((s32) table));
    table = (const s16 *) (frameOffset + ((s32) table));
    locals.mode0LowY = table;
  }
  loop:
  {
    register u32 childRoomSlot asm("r0");
    register u32 roomSlot asm("r1");
    childRoomSlot = sprite->roomSlot;
    roomSlot = locals.roomSlot;
    if (childRoomSlot == roomSlot)
    {
    }
    else
    {
      goto next;
    }
  }

  if (sprite->globalID != PSPRITE_AD)
  {
    goto next;
  }
  if (!(sprite->status & SPRITE_STATUS_EXISTS))
  {
    goto next;
  }
  if (locals.mode != 0)
  {
    {
      register s32 xVelocity asm("r0");
      if (frame > 59)
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r3");
        yPointer = locals.mode1HighY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yPointer[zero] * 4);
        {
          register s32 xZero asm("r4");
          xZero = 0;
          xVelocity = ((const s16 *) (((const u8 *) sUnk_83D02F8) + offset60))[xZero];
        }
      }
      else
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r4");
        yPointer = locals.mode1LowY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yDelta + (yPointer[zero] * 4));
        {
          register const s16 *xTable asm("r1");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r3");

          xTable = sUnk_83D0280;
          asm("" : : "r"(xTable));
          /* agbcc cannot otherwise keep the address result in r0 and the zero index in r3. */
          asm("add r0, r3, r1\n\tmov r3, #0\n\tldrsh r0, [r0, r3]"
              : "=r"(xVelocity) : "r"(frameOffset), "r"(xTable) : "r3");
        }
      }
      xDelta = (u16) (xDelta + (xVelocity * 4));
    }
    {
      register u8 *workPointer asm("r4");
      register u32 work asm("r1");
      workPointer = locals.childWork1;
      asm("" : "+r"(workPointer));
      work = *workPointer;
      if (work != 0)
      {
        wario->yPosition += yDelta;
        {
          register u32 xPosition asm("r0");
          xPosition = wario->xPosition;
          xPosition = xDelta + xPosition;
          wario->xPosition = xPosition;
        }
        goto applyChildMovement;
      }
      else
        if (frame == 59)
      {
        register u8 value asm("r0");
        register u8 *framePtr asm("r3");
        register u8 *flagPtr asm("r4");
        value = 48;
        framePtr = &gUnk_3000A4B;
        asm("" : "+r"(value), "+r"(framePtr), "+r"(work));
        *framePtr = value;
        flagPtr = &gUnk_3000A4D;
        asm("" : "+r"(flagPtr), "+r"(work));
        *flagPtr = work;
        goto applyChildMovement;
      }
      else
      {
        if (frame != 119)
        {
          goto applyChildMovement;
        }
        flagValue = work;
        goto storeFlag;
      }
    }
  }
  else
  {
    {
      register s32 xVelocity asm("r0");
      if (frame > 47)
      {
        register const s16 *yPointer asm("r1");
        register s32 zero asm("r3");
        yPointer = locals.mode0HighY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yPointer[zero] * 4);
        {
          register const s16 *xTable asm("r1");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r3");

          xTable = sUnk_83D01C0;
          asm("" : : "r"(xTable));
          xPointer = (const s16 *)(offset48 + (s32)xTable);
          asm("" : : "r"(xTable), "r"(xPointer));
          /* agbcc otherwise assigns the signed-load zero index to r4. */
          asm("mov r3, #0\n\tldrsh r0, [r0, r3]"
              : "=r"(xVelocity) : "r"(xPointer) : "r3");
        }
      }
      else
      {
        register const s16 *yPointer asm("r4");
        register s32 zero asm("r1");
        yPointer = locals.mode0LowY;
        zero = 0;
        asm("" : : "r"(yPointer));
        yDelta = (u16) (yDelta + (yPointer[zero] * 4));
        {
          register const s16 *xTable asm("r4");
          register const s16 *xPointer asm("r0");
          register s32 xZero asm("r1");

          xTable = sUnk_83D0160;
          asm("" : : "r"(xTable));
          /* agbcc cannot otherwise keep the address result in r0 and the zero index in r1. */
          asm("add r0, r3, r4\n\tmov r1, #0\n\tldrsh r0, [r0, r1]"
              : "=r"(xVelocity) : "r"(frameOffset), "r"(xTable) : "r1");
        }
      }
      xDelta = (u16) (xDelta + (xVelocity * 4));
    }
    {
      register u8 *workPointer asm("r3");
      register u32 work asm("r0");
      workPointer = locals.childWork1;
      asm("" : "+r"(workPointer));
      work = *workPointer;
      if (work == 0)
      {
        goto applyChildMovement;
      }
      wario->yPosition += yDelta;
      {
        register u32 xPosition asm("r0");
        xPosition = wario->xPosition;
        xPosition = xDelta + xPosition;
        wario->xPosition = xPosition;
      }
      if (frame != 47)
      {
        goto checkFrame95;
      }
      {
        register u8 value asm("r0");
        register u8 one asm("r1");
        register u8 *framePtr asm("r4");
        value = 60;
        framePtr = &gUnk_3000A4B;
        asm("" : "+r"(value), "+r"(framePtr));
        *framePtr = value;
        one = 1;
        flagValue = one;
        goto storeFlag;
      }
    }
  }
  storeFlag:
  gUnk_3000A4D = flagValue;

  goto applyChildMovement;
  checkFrame95:
  if (frame == 95)
  {
    register u8 one asm("r4");
    register u8 *flagPtr asm("r3");
    one = 1;
    flagPtr = &gUnk_3000A4D;
    asm("" : "+r"(one), "+r"(flagPtr));
    *flagPtr = one;
  }

  applyChildMovement:
  sprite->yPosition += yDelta;

  {
    register u32 xPosition asm("r0");
    xPosition = sprite->xPosition;
    xPosition = xDelta + xPosition;
    sprite->xPosition = xPosition;
  }
  goto afterLoop;
  next:
  locals.childWork1 += sizeof(struct PrimarySpriteData);

  sprite++;
  if (((s32) sprite) <= ((s32) (&sprites[24 - 1])))
  {
    goto loop;
  }
  afterLoop:
  flagValue = locals.mode;
  if (flagValue != 0)
  {
    if (frame > 59)
    {
      register const s16 *table asm("r0");
      register int motionIndex asm("r2");
      register int byteOffset asm("r1");
      register int zero asm("r3");
      register s32 delta asm("r0");
      register u32 position asm("r4");
      register struct PrimarySpriteData *storeSprite asm("r3");
      table = sUnk_83CFDE8;
      motionIndex = frame - 60;
      byteOffset = motionIndex << 1;
      table = (const s16 *) (byteOffset + ((s32) table));
      zero = 0;
      delta = table[zero] * 4;
      position = (u32) current;
      position = *((u16 *) (position + 8));
      delta += position;
      storeSprite = current;
      storeSprite->yPosition = delta;
      {
        register const s16 *xPointer asm("r1");
        register int xZero asm("r4");
        register u32 xPosition asm("r1");
        table = sUnk_83CFD70;
        xPointer = (const s16 *) (byteOffset + ((s32) table));
        xZero = 0;
        delta = 4;
        delta = xPointer[xZero] * delta;
        xPosition = storeSprite->xPosition;
        delta += xPosition;
        storeSprite->xPosition = delta;
      }
      angle = sUnk_83CFE9C[motionIndex];
      if (frame == 119)
      {
        register struct PrimarySpriteData *workSprite asm("r1");
        workSprite = current;
        workSprite->work0 = 0;
      }
      goto angleReady;
    }
    else
    {
      register const s16 *table asm("r0");
      register int byteOffset asm("r1");
      register int zero asm("r2");
      register short delta asm("r0");
      register u32 position asm("r3");
      register struct PrimarySpriteData *storeSprite asm("r4");
      table = sUnk_83CFDE8;
      byteOffset = frame << 1;
      table = (const s16 *) (byteOffset + ((s32) table));
      zero = 0;
      delta = table[zero] * 4;
      position = (u32) current;
      position = *((u16 *) (position + 8));
      delta += position;
      storeSprite = current;
      storeSprite->yPosition = delta;
      {
        register const s16 *xPointer asm("r1");
        register u32 xPosition asm("r3");
        table = sUnk_83CFCF8;
        xPointer = (const s16 *) (byteOffset + ((s32) table));
        asm("" : : "r"(table), "r"(xPointer));
        zero = 0;
        /* agbcc otherwise selects r3 instead of the target r2 as the signed-load index. */
        asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
            : "=r"(delta) : "r"(xPointer), "r"(zero));
        xPosition = storeSprite->xPosition;
        delta += xPosition;
        storeSprite->xPosition = delta;
      }
      lowAngleTable = sUnk_83CFE60;
      goto loadLowAngle;
    }
  }
  else
    if (frame > 47)
  {
    register const s16 *table asm("r0");
    register int motionIndex asm("r2");
    register int byteOffset asm("r1");
    register int zero asm("r4");
    register s32 delta asm("r0");
    register u32 position asm("r3");
    register struct PrimarySpriteData *storeSprite asm("r4");
    table = sUnk_83CFC38;
    motionIndex = frame - 48;
    byteOffset = motionIndex << 1;
    table = (const s16 *) (byteOffset + ((s32) table));
    zero = 0;
    /* Keep the signed-load index in the target r4 after the preceding localized lookup. */
    asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
        : "=r"(delta) : "r"(table), "r"(zero));
    position = (u32) current;
    position = *((u16 *) (position + 8));
    delta += position;
    storeSprite = current;
    storeSprite->yPosition = delta;
    {
      register const s16 *xPointer asm("r1");
      register int xZero asm("r3");
      register u32 xPosition asm("r4");
      register struct PrimarySpriteData *xStore asm("r1");
      table = sUnk_83CFBD8;
      xPointer = (const s16 *) (byteOffset + ((s32) table));
      xZero = 0;
      delta = 4;
      delta = xPointer[xZero] * delta;
      xPosition = storeSprite->xPosition;
      delta += xPosition;
      xStore = current;
      xStore->xPosition = delta;
    }
    angle = sUnk_83CFCC8[motionIndex];
    if (frame == 95)
    {
      register struct PrimarySpriteData *workSprite asm("r1");
      workSprite = current;
      workSprite->work0 = 0;
    }
    goto angleReady;
  }
  else
  {
    register const s16 *table asm("r0");
    register int byteOffset asm("r1");
    register int zero asm("r2");
    register s16 delta asm("r0");
    register u32 position asm("r3");
    register struct PrimarySpriteData *storeSprite asm("r4");
    table = sUnk_83CFC38;
    byteOffset = frame << 1;
    table = (const s16 *) (byteOffset + ((s32) table));
    zero = 0;
    /* agbcc otherwise selects r4 instead of the target r2 as the signed-load index. */
    asm("ldrsh %0, [%1, %2]\n\tlsl %0, %0, #2"
        : "=r"(delta) : "r"(table), "r"(zero));
    position = (u32) current;
    position = *((u16 *) (position + 8));
    delta += position;
    storeSprite = current;
    storeSprite->yPosition = delta;
    {
      register u32 xPosition asm("r3");
      table = sUnk_83CFB78;
      /* agbcc cannot otherwise reuse r1 for the address and r0 for the signed result. */
      asm("add r1, r1, r0\n\tmov r2, #0\n\tldrsh r0, [r1, r2]\n\tlsl r0, r0, #2"
          : "+r"(table), "+r"(byteOffset) : : "r2");
      delta = (s32) table;
      xPosition = storeSprite->xPosition;
      delta += xPosition;
      storeSprite->xPosition = delta;
    }
    lowAngleTable = sUnk_83CFC98;
  }

  loadLowAngle:
  /* agbcc otherwise reuses r5 as the address destination instead of preserving the frame register. */
  asm("add r0, r5, r0\n\tldrb r4, [r0]"
      : "+r"(lowAngleTable), "=r"(angle) : "r"(frame));

  angleReady:
  {
    register s32 index asm("r0");
    register const s16 *table asm("r1");
    register s32 zero asm("r3");
    register s32 value asm("r2");
    index = angle + ((256 / 2) / 2);
    index <<= 1;
    table = sSinCosTable;
    index += (s32) table;
    /* Keep the zero index in r3 and the signed result in r2. */
    asm("mov r3, #0\n\tldrsh r2, [r0, r3]"
        : "=r"(value) : "r"(index) : "r3");
    cosine = value;
  }
  gCurrentSprite.affinePA = FixedMul(cosine, FixedInverse((s16) (1 * (1 << 8))));
  {
    register s32 index asm("r0");
    register const s16 *table asm("r4");
    register s32 zero asm("r1");
    index = angle << 1;
    table = sSinCosTable;
    index += (s32) table;
    /* Keep the zero index in r1 while loading the signed sine into r4. */
    asm("mov r1, #0\n\tldrsh r4, [r0, r1]"
        : "=r"(sine) : "r"(index) : "r1");
  }
  gCurrentSprite.affinePB = FixedMul(sine, FixedInverse((s16) (1 * (1 << 8))));
  gCurrentSprite.affinePC = FixedMul(-sine, FixedInverse((s16) (1 * (1 << 8))));
  gCurrentSprite.affinePD = FixedMul(cosine, FixedInverse((s16) (1 * (1 << 8))));
}

void func_804AB90(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u16 status asm("r0");
    register int statusBits asm("r2");
    register int zero asm("r3");
    register int zero16 asm("r4");
    u16 oldStatus;

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    statusBits = 0x8400;
    status = statusBits;
    zero = 0;
    zero16 = 0;
    status |= oldStatus;
    status &= 0xFFFB;
    sprite->status = status;
    sprite->warioCollision = 29;
    sprite->drawDistanceDown = 8;
    sprite->drawDistanceUp = 8;
    sprite->drawDistanceLeftRight = 16;
    sprite->hitboxExtentUp = 16;
    sprite->hitboxExtentDown = 48;
    sprite->hitboxExtentLeft = 60;
    sprite->hitboxExtentRight = 56;
    {
        register const struct AnimationFrame *oam asm("r0");
        register struct PrimarySpriteData *storeSprite asm("r1");

        oam = sSwingingPlatformOam_83CFB68;
        storeSprite = sprite;
        storeSprite->pOamData = oam;
        storeSprite->currentAnimationFrame = zero;
        storeSprite->animationTimer = zero16;
        storeSprite->pose = SPOSE_IDLE;
    }
    sprite->work1 = zero;
}

void SpriteSwingingPlatform(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == SPOSE_INIT) {
        func_804A3FC();
    } else {
        func_804A508();
    }
}

void SpriteSwingingPlatform2(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == SPOSE_INIT) {
        func_804A3FC();
    } else {
        func_804A84C();
    }
}

void SpriteUnknownAC(void)
{
    if (!SpriteUtilDespawnChildWithParent(PSPRITE_SWINGING_PLATFORM)) {
        if (gCurrentSprite.pose == SPOSE_INIT) {
            func_804AB90();
        }
        func_8026838();
    }
}

void SpriteUnknownAD(void)
{
    if (!SpriteUtilDespawnChildWithParent(PSPRITE_SWINGING_PLATFORM_2)) {
        if (gCurrentSprite.pose == SPOSE_INIT) {
            func_804AB90();
        }
        func_8026838();
    }
}
