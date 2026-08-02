#include "shop.h"

#include "global_data.h"
#include "color_effects.h"
#include "init_helpers.h"
#include "interrupt_callbacks.h"
#include "main.h"
#include "minigame.h"
#include "stage_select.h"
#include "gba/m4a.h"

extern s16 gUnk_3000000;
extern s8 gUnk_3000C37;
extern u8 gCurrentPassage;
extern u8 gDifficulty;
extern u8 gLanguage;
extern u16 gMedalCount;
extern u16 gSoundRoomMessageTimer;
extern u16 gStageEntryWindowLeft;
extern u16 gStageEntryWindowRight;
extern u16 gStageEntryWindowTop;
extern u16 gStageEntryWindowBottom;
extern u8 gCurrentShopItem;
extern u8 gItemShopMessageId;
extern u16 gItemShopShopkeeperAnimationState[2];
extern const struct AnimationFrame *gItemShopShopkeeperAnimation;
extern struct ItemShopCursorState gItemShopCursor;
extern const struct AnimationFrame *gItemShopCursorAnimation;
extern struct ItemShopAnimationState gItemShopItemIconAnimationState;
extern u8 gItemShopItemAvailability[10];
extern u16 gItemShopTargetMedalCount;
extern u16 gItemShopTimer;

extern const u8 sUnk_872FEE4[];
extern const u8 sUnk_872FEF8[];
extern const u8 sUnk_872FF0C[];
extern const u8 sUnk_872FF18[];
extern const u8 sUnk_872FF24[];
extern const u8 sUnk_872FF38[];
extern const u8 sUnk_872FF4C[];
extern const u8 sUnk_872FF58[];
extern const u8 sUnk_872FF64[];
extern const u8 sUnk_872FF9C[];
extern const u8 sUnk_8730014[];
extern const u8 sUnk_87300B4[];
extern const u8 sUnk_8730114[];
extern const u8 sUnk_8730150[];
extern const struct AnimationFrame sItemShopShopkeeperIdleAnimation[];
extern const struct AnimationFrame sItemShopCursorIdleAnimation[];
extern const struct AnimationFrame sItemShopCursorPurchaseAnimation[];
extern const struct AnimationFrame sItemShopShopkeeperVoiceAnimation[];
extern const u8 sUnk_8730858[];
extern const u8 sUnk_8731058[];
extern const u8 sUnk_8731858[];
extern const u8 sUnk_8732858[];
extern const u8 sUnk_8732A58[];
extern const u8 sUnk_8733278[];
extern const u8 sUnk_8735258[];
extern const u8 sUnk_8735458[];
extern const u8 sUnk_8738A18[];
extern const u8 sFileSelectBackgroundTiles[];
extern const u8 sUnk_873D438[];

void VoiceSetPlay(u16 voice);
u32 __umodsi3(u32, u32);
void UploadColorFadePalettes(void);
void FillColorFadePalettes(void);

u32 ItemShopSubroutine(void)
{
    u32 result;
    u32 transitionComplete;

    result = 0;
    SetItemShopVBlankCallback();
    gOamSlotsUsed = 0;

    switch (gUnk_3000000) {
        case 0:
            InitializeItemShop();
            gUnk_3000000++;
            break;
        case 1:
            UploadColorFadePalettes();
            transitionComplete = UpdatePaletteFadeStep(0, 1);
            if (transitionComplete != 0) {
                gUnk_3000000++;
            }
            break;
        case 2:
            transitionComplete = ExpandMinigameWindow();
            if (transitionComplete != 0) {
                gUnk_3000000++;
            }
            break;
        case 3:
            if (gSoundRoomMessageTimer <= 26) {
                gSoundRoomMessageTimer++;
            }
            transitionComplete = HandleItemShopInput();
            if (transitionComplete == 1) {
                gUnk_3000000 = 7;
                break;
            }
            if (transitionComplete == 2) {
                gUnk_3000000++;
            }
            break;
        case 4:
            if (gSoundRoomMessageTimer <= 26) {
                gSoundRoomMessageTimer++;
            }
            gItemShopTimer++;
            if (gItemShopTimer > 20) {
                gUnk_3000000++;
                gItemShopTimer = 0;
            }
            break;
        case 5:
            if (gSoundRoomMessageTimer <= 26) {
                gSoundRoomMessageTimer++;
            }
            transitionComplete = UpdateItemShopMedalDeduction();
            if (transitionComplete != 0) {
                gUnk_3000000++;
            }
            break;
        case 6:
            if (gSoundRoomMessageTimer <= 26) {
                gSoundRoomMessageTimer++;
            }
            gItemShopTimer++;
            if (gItemShopTimer > 40) {
                gUnk_3000000++;
                gItemShopTimer = 0;
            }
            break;
        case 7:
            transitionComplete = ContractMinigameWindow();
            if (transitionComplete != 0) {
                gUnk_3000000++;
            }
            break;
        case 8:
            UploadColorFadePalettes();
            transitionComplete = UpdatePaletteFadeStep(1, 1);
            if (transitionComplete != 0) {
                EnableAllLayersInWindows();
                result = 1;
                gUnk_3000000 = 0;
                m4aMPlayAllStop();
            }
            break;
    }

    DrawItemShopSprites();
    ResetFreeOam();
    return result;
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_shop_InitializeItemShop.s");
#else
void InitializeItemShop(void)
{
  vu16 *interruptMasterEnable;
  u32 new_var3;
  vu16 *displayStatus;
  int i;
  int new_var2;
  int new_var;
  const u16 (*prices)[9];
  *((vu16 *) 0x04000200) ^= 1;
  InitializeVideoMemory();
  interruptMasterEnable = (vu16 *) 0x04000208;
  *interruptMasterEnable = 0;
  new_var3 = (u32) (sUnk_8731858 + 0x800);
  displayStatus = (vu16 *) 0x04000004;
  *displayStatus &= 0xFFEF;
  *((vu16 *) 0x04000200) &= 0xFFFD;
  *interruptMasterEnable = 1;
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8735258;
    dma[1] = 0x05000200;
    dma[2] = 0x80000100;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8732858;
    dma[1] = 0x05000000;
    dma[2] = 0x80000100;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  *((vu16 *) 0x05000000) = 0;
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8732A58;
    dma[1] = 0x06000000;
    dma[2] = 0x80001400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8735458;
    dma[1] = 0x06010000;
    dma[2] = 0x80002000;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  new_var2 = 0x1800;
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) ((sUnk_8735458 + 0x29C0) + (gDifficulty << 10));
    dma[1] = 0x06011140;
    dma[2] = 0x80000100;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) (sUnk_8738A18 + (gDifficulty << 10));
    dma[1] = 0x06012540;
    dma[2] = 0x80000100;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8730858;
    dma[1] = 0x0600C000;
    dma[2] = 0x80000400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8731058;
    dma[1] = 0x0600D000;
    dma[2] = 0x80000400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    dma = (vu32 *) 0x040000D4;
    dma[0] = (u32) sUnk_8731858;
    dma[1] = 0x0600E000;
    dma[2] = 0x80000400;
    dma[2];
    while ((dma[2] & 0x80000000) != 0)
    {
    }

  }
  {
    vu32 *dma;
    vu16 *backgroundControl;
    dma = (vu32 *) 0x040000D4;
    dma[0] = new_var3;
    dma[1] = 0x0600F000;
    dma[2] = 0x80000400;
    dma[2];
    backgroundControl = (vu16 *) (((u32) dma) - 0xCC);
    *backgroundControl = new_var2;
    backgroundControl++;
    *backgroundControl = 0x1A01;
    backgroundControl++;
    *backgroundControl = 0x1C02;
    backgroundControl++;
    *backgroundControl = 0x1E03;
  }
  gItemShopTargetMedalCount = gMedalCount;
  DrawMinigameNumber(gMedalCount, (const u16 *)sUnk_8733278, 128);
  gItemShopTimer = 0;
  gItemShopShopkeeperAnimationState[0] = 0;
  gItemShopShopkeeperAnimationState[1] = 0;
  gItemShopShopkeeperAnimation = sItemShopShopkeeperIdleAnimation;
  gItemShopCursor.animationTimer = 0;
  gItemShopCursor.animationFrame = 0;
  gItemShopCursor.item = 0;
  if (gCurrentPassage == 0)
  {
    gItemShopCursor.x = *((const u16 *) sUnk_872FF0C);
    gItemShopCursor.y = *((const u16 *) sUnk_872FF18);
  }
  else
  {
    gItemShopCursor.x = *((const u16 *) sUnk_872FEE4);
    gItemShopCursor.y = *((const u16 *) sUnk_872FEF8);
  }
  gItemShopCursorAnimation = sItemShopCursorIdleAnimation;
  gItemShopItemIconAnimationState.animationTimer = 0;
  gItemShopItemIconAnimationState.animationFrame = 0;
  prices = (const u16 (*)[9]) sUnk_872FF64;
  for (i = 0; i <= 9; i++)
  {
    if (i == 0)
    {
      gItemShopItemAvailability[0] = 1;
    }
    else
    {
      new_var = i - 1;
      if (gMedalCount >= prices[gDifficulty][new_var])
      {
        gItemShopItemAvailability[i] = 0;
      }
      else
      {
        gItemShopItemAvailability[i] = 2;
      }
    }
  }

  gSoundRoomMessageTimer = 0;
  gItemShopMessageId = 10;
  gColorFading.unk_4 = 3;
  gColorFading.type = 2;
  FillColorFadePalettes();
  *((vu16 *) 0x04000054) = 0;
  gUnk_3000C37 = 0;
  m4aSongNumStart(0x2AA);
  *((vu16 *) 0x04000000) = 0x1F00;
  gStageEntryWindowLeft = 120;
  gStageEntryWindowRight = 120;
  gStageEntryWindowTop = 0;
  gStageEntryWindowBottom = 160;
  *((vu16 *) 0x04000000) |= 0x2000;
  *((vu16 *) 0x04000048) = 0x3F;
  *((vu16 *) 0x0400004A) = 0;
  *((vu16 *) 0x04000050) = 0x1844;
  *((vu16 *) 0x04000052) = 0x040C;
  *((vu16 *) 0x04000012) = 0;
  *((vu16 *) 0x04000010) = 0;
  *((vu16 *) 0x04000016) = 0;
  *((vu16 *) 0x04000014) = 0;
  *((vu16 *) 0x0400001A) = 0;
  *((vu16 *) 0x04000018) = 0;
  *((vu16 *) 0x0400001E) = 0;
  *((vu16 *) 0x0400001C) = 0;
  *((vu16 *) 0x04000200) |= 1;
}
#endif

void SetItemShopVBlankCallback(void)
{
    InterruptCallbackSetVBlank(ItemShopVBlank);
}

void ItemShopVBlank(void)
{
    vu32 *dma;
    vu16 *window;
    const u8 *const *table;
    u32 index;

    m4aSoundVSync();
    dma = (vu32 *)0x040000D4;
    dma[0] = (u32)gOamBuffer;
    dma[1] = 0x07000000;
    dma[2] = 0x84000100;
    dma[2];

    window = (vu16 *)0x04000040;
    window[0] = (gStageEntryWindowLeft << 8) | gStageEntryWindowRight;
    window += 2;
    window[0] = (gStageEntryWindowTop << 8) | gStageEntryWindowBottom;

    switch (gLanguage) {
        case 0:
            table = (const u8 *const *)sUnk_8730150;
            index = gItemShopMessageId;
            Shop_DrawText(table[index], 0x7800, 26);
            break;
        case 1:
            table = (const u8 *const *)sUnk_8730114;
            index = gItemShopMessageId;
            Shop_DrawText(table[index], 0x7800, 26);
            break;
    }
}

static inline int GetPreviousShopIndex(u32 value)
{
    return value - 1;
}

u32 HandleItemShopInput(void)
{
  int new_var2;
  u32 direction;
  u16 buttons;
  u32 state;
  u32 pressed;
  direction = 0;
  buttons = gButtonsPressed;
  if ((buttons & 0x20) != 0)
  {
    direction = 1;
  }
  else
  {
    do
    {
      new_var2 = 0 ^ 0;
    }
    while (0);
    if ((buttons & 0x10) != 0)
    {
      direction = 2;
    }
    else
      if ((unsigned long long) ((buttons & 0x40) != 0))
    {
      direction = 3;
    }
    else
      if ((buttons & 0x80) != 0)
    {
      direction = 4;
    }
    else
      if (pressed = 1, pressed &= buttons, pressed != 0)
    {
      if (gItemShopCursor.item == new_var2)
      {
        m4aSongNumStart(0x129);
        return 1;
      }
      if (gItemShopCursor.item == 1)
      {
        goto item_one;
      }
      state = gItemShopItemAvailability[gItemShopCursor.item];
      if (state == 1)
      {
        goto purchase;
      }
      if (state == 2)
      {
        goto unavailable;
      }
      goto movement;
      item_one:
      VoiceSetPlay(18);

      gSoundRoomMessageTimer = direction;
      gItemShopMessageId = 14;
      gItemShopShopkeeperAnimation = sItemShopShopkeeperVoiceAnimation;
      gItemShopShopkeeperAnimationState[1] = direction;
      gItemShopShopkeeperAnimationState[0] = direction;
      goto done;
      purchase:
      m4aSongNumStart(0x125);

      gItemShopCursorAnimation = sItemShopCursorPurchaseAnimation;
      gItemShopCursor.animationFrame = direction;
      gItemShopCursor.animationTimer = direction;
      gCurrentShopItem = GetPreviousShopIndex(gItemShopCursor.item);
      {
        u16 *medalCount;
        const u16 *priceTable;
        u32 item;
        u32 difficulty;
        medalCount = &gItemShopTargetMedalCount;
        priceTable = (const u16 *) sUnk_872FF64;
        item = gItemShopCursor.item - 1;
        difficulty = gDifficulty;
        *medalCount -= priceTable[(difficulty * 9) + item];
      }
      gSwitchStates[1] = 2;
      gSoundRoomMessageTimer = direction;
      gItemShopMessageId = 12;
      return 2;
      unavailable:
      gSoundRoomMessageTimer = direction;

      gItemShopMessageId = 11;
      m4aSongNumStart(0x225);
      goto done;
    }
    else
      if (pressed = 2, pressed &= buttons, pressed != 0)
    {
      m4aSongNumStart(0x129);
      return 1;
    }
  }
  movement:
  if ((float) (gCurrentPassage == 0))
  {
    if (direction != 0)
    {
      {
        const u8 *movementData;
        u32 offset;
        movementData = sUnk_87300B4;
        offset = GetPreviousShopIndex(direction) << 2;
        offset += gItemShopCursor.item << 4;
        if ((*((const u32 *) (movementData + offset))) != 10)
        {
          MoveItemShopCursor(direction);
        }
      }
    }
  }
  else
    if (direction != 0)
  {
    {
      const u8 *movementData;
      u32 offset;
      movementData = sUnk_8730014;
      new_var2 = GetPreviousShopIndex(direction);
      offset = new_var2 << 2;
      offset += gItemShopCursor.item << 4;
      if ((*((const u32 *) (movementData + offset))) != 10)
      {
        MoveItemShopCursor(direction);
      }
    }
  }

  done:
  return 0;

}

void MoveItemShopCursor(u32 inputDirection)
{
    register u32 direction asm("r4") = inputDirection;
    register u32 zero asm("r5");
    register u8 *passage asm("r6");

    {
        u16 *messageTimer = &gSoundRoomMessageTimer;
        zero = 0;
        *messageTimer = zero;
    }
    m4aSongNumStart(0x124);
    gItemShopItemIconAnimationState.animationTimer = 0;
    gItemShopItemIconAnimationState.animationFrame = 0;

    {
        register u8 *availability asm("r1") = gItemShopItemAvailability;
        register u8 *cursor asm("r3") = (u8 *)&gItemShopCursor;
        register u32 value asm("r0") = cursor[8];
        availability = (u8 *)((u32)value + (u32)availability);
        value = *availability;
        if (value == 1)
            *availability = zero;

        value = (u32)&gCurrentPassage;
        {
            register u32 passageValue asm("r1") = *(u8 *)value;
            register const u32 *movementTable asm("r2");
            passage = (u8 *)value;
            if (passageValue == 0)
                movementTable = (const u32 *)sUnk_87300B4;
            else
                movementTable = (const u32 *)sUnk_8730014;

            value = direction - 1;
            value <<= 2;
            passageValue = cursor[8];
            passageValue <<= 4;
            value += passageValue;
            value += (u32)movementTable;
            value = *(const u32 *)value;
            cursor[8] = value;
        }
    }

    {
        register u8 *cursor asm("r1") = (u8 *)&gItemShopCursor;
        register u32 value asm("r0") = 0;
        register u8 *message asm("r5");
        register u8 *availability asm("r2");
        register u8 *cursorLong asm("r4");

        *(u16 *)(cursor + 0) = value;
        *(u16 *)(cursor + 2) = value;
        message = &gItemShopMessageId;
        value = cursor[8];
        *message = value;
        availability = gItemShopItemAvailability;
        value = cursor[8];
        availability = (u8 *)((u32)value + (u32)availability);
        value = *availability;
        cursorLong = cursor;
        if (value == 0) {
            value = 1;
            *availability = value;
            value = cursorLong[8];
            if (value == 0) {
                register u16 *medalCount asm("r3") = &gMedalCount;
                register const u8 *priceTable asm("r2") = sUnk_872FF64;
                register u8 *difficulty asm("r0") = &gDifficulty;
                register u32 difficultyValue asm("r1") = *difficulty;
                register u32 priceAddress asm("r0") = difficultyValue << 3;
                priceAddress += difficultyValue;
                priceAddress <<= 1;
                priceTable += 2;
                priceAddress += (u32)priceTable;
                difficultyValue = *medalCount;
                priceAddress = *(const u16 *)priceAddress;
                if (difficultyValue < priceAddress) {
                    value = 13;
                    *message = value;
                }
            }
        }

        if (*passage == 0) {
            register const u16 *positions asm("r1") = (const u16 *)sUnk_872FF0C;
            value = cursorLong[8];
            value <<= 1;
            value += (u32)positions;
            value = *(const u16 *)value;
            *(u16 *)(cursorLong + 4) = value;
            positions = (const u16 *)sUnk_872FF18;
            value = cursorLong[8];
            value <<= 1;
            value += (u32)positions;
            value = *(const u16 *)value;
            *(u16 *)(cursorLong + 6) = value;
        } else {
            register const u16 *positions asm("r1") = (const u16 *)sUnk_872FEE4;
            value = cursorLong[8];
            value <<= 1;
            value += (u32)positions;
            value = *(const u16 *)value;
            *(u16 *)(cursorLong + 4) = value;
            positions = (const u16 *)sUnk_872FEF8;
            value = cursorLong[8];
            value <<= 1;
            value += (u32)positions;
            value = *(const u16 *)value;
            *(u16 *)(cursorLong + 6) = value;
        }
    }
}

u32 UpdateItemShopMedalDeduction(void)
{
    gItemShopTimer++;
    if ((gItemShopTimer % 10) == 0) {
        m4aSongNumStart(0x222);
        gMedalCount--;
    }
    DrawMinigameNumber(gMedalCount, (const u16 *)sUnk_8733278, 128);
    if (gMedalCount == gItemShopTargetMedalCount) {
        gItemShopTimer = 0;
        return 1;
    }
    return 0;
}

void Shop_DrawText(const u8 *text, u32 destination, u32 length)
{
    register const u8 *textPtr asm("ip");
    register u32 destinationBase asm("r6");
    u32 count;
    register vu16 *timerPtr asm("r5");
    register u32 timer asm("r1");
    register u16 *timerBase asm("r0");

    textPtr = text;
    destinationBase = destination;
    asm("" : : "r"(textPtr), "r"(destinationBase));
    count = (u8)length;
    timerBase = &gSoundRoomMessageTimer;
    timer = *timerBase;
    timerPtr = timerBase;

    if (timer == 0) {
        register s32 index asm("r3") = 0;
        register s32 limit asm("r4") = count << 1;

        if (index < limit) {
            register vu32 *dma asm("r2") = (vu32 *)0x040000D4;
            register const u8 *blank asm("r7") = sUnk_873D438;

            do {
                register u32 value asm("r0");
                register u32 busy asm("r1");
                register s32 next asm("r5");

                dma[0] = (u32)blank;
                value = index << 5;
                busy = 0x06000000;
                value += busy;
                value = destinationBase + value;
                dma[1] = value;
                value = 0x80000010;
                dma[2] = value;
                value = dma[2];
                value = dma[2];
                busy = 0x80000000;
                next = index + 1;
                if ((s32)value < 0) {
                    do {
                        value = dma[2];
                        value &= busy;
                    } while (value != 0);
                }
                index = next;
            } while (index < limit);
        }
        return;
    }

    {
        register u32 thousand asm("r0") = 1000;
        if (timer == thousand) {
            register s32 index asm("r3") = 0;

            if (index < (s32)count) {
                register vu32 *dma asm("r2") = (vu32 *)0x040000D4;
                register u32 tempR4 asm("r4") = 0x06000000;
                register u32 vramBase asm("sl") = tempR4;
                register u32 tempR5 asm("r5") = 0x80000010;
                register u32 control asm("r9") = tempR5;
                register u32 tempR0 asm("r0") = 0x80000000;
                register u32 busy asm("r8") = tempR0;

                asm("" : : "r"(tempR4), "r"(tempR5));
                do {
                    register u32 character asm("r4");
                    register u32 r1Value asm("r1");
                    register u32 r0Value asm("r0");
                    register s32 next asm("r5");
                    register u32 status asm("r0");

                    r1Value = (character = textPtr[index]) << 5;
                    r0Value = character >> 5;
                    r0Value <<= 10;
                    tempR5 = (u32)sFileSelectBackgroundTiles;
                    r0Value += tempR5;
                    r1Value += r0Value;
                    dma[0] = r1Value;

                    r1Value = index << 6;
                    tempR5 = vramBase;
                    r0Value = r1Value + tempR5;
                    r0Value = destinationBase + r0Value;
                    dma[1] = r0Value;
                    r0Value = control;
                    dma[2] = r0Value;
                    status = dma[2];
                    status = dma[2];
                    tempR5 = busy;
                    status &= tempR5;
                    next = index + 1;
                    index = r1Value;
                    if (status != 0) {
                        register u32 busyLoop asm("r1") = 0x80000000;
                        do {
                            status = dma[2];
                            status &= busyLoop;
                        } while (status != 0);
                    }

                    r1Value = character << 5;
                    r0Value = character >> 5;
                    r0Value <<= 10;
                    character = (u32)sFileSelectBackgroundTiles;
                    r0Value += character;
                    r1Value += r0Value;
                    r0Value = 0x400;
                    r1Value += r0Value;
                    dma[0] = r1Value;

                    r1Value = vramBase;
                    r0Value = index + r1Value;
                    r0Value = destinationBase + r0Value;
                    r0Value += 32;
                    dma[1] = r0Value;
                    character = control;
                    dma[2] = character;
                    status = dma[2];
                    {
                        register vu32 *dmaCopy asm("r3") = dma;
                        status = dmaCopy[2];
                        r1Value = busy;
                        status &= r1Value;
                        if (status != 0) {
                            register u32 busyLoop asm("r1") = 0x80000000;
                            do {
                                status = dmaCopy[2];
                                status &= busyLoop;
                            } while (status != 0);
                        }
                    }
                    index = next;
                } while (index < (s32)count);
            }
            return;
        }
    }

    {
        register u32 address asm("r0");
        register u32 characterCheck asm("r0");
        register s32 limit asm("r2");

        address = *timerPtr;
        address += (u32)textPtr;
        address--;
        characterCheck = *(const u8 *)address;
        limit = count + 1;
        if (characterCheck == 0xFF) {
            register vu16 *timerLoop asm("r1") = timerPtr;
            do {
                address = *timerLoop;
                address++;
                *timerLoop = address;
                address = *timerLoop;
                address += (u32)textPtr;
                address--;
                characterCheck = *(const u8 *)address;
            } while (characterCheck == 0xFF);
        }

        address = *timerPtr;
        if ((s32)address < limit) {
            register u32 character asm("r4");
            register vu32 *dma asm("r2");
            register u32 sourceOffset asm("r1");
            register u32 sourceHigh asm("r0");
            register u32 sourceBase asm("r3");
            register u32 status asm("r0");
            register u32 busy asm("r1");

            address += (u32)textPtr;
            address--;
            character = *(const u8 *)address;
            dma = (vu32 *)0x040000D4;
            sourceOffset = character << 5;
            sourceHigh = character >> 5;
            sourceHigh <<= 10;
            sourceBase = (u32)sFileSelectBackgroundTiles;
            sourceHigh += sourceBase;
            sourceOffset += sourceHigh;
            dma[0] = sourceOffset;

            sourceHigh = *timerPtr;
            sourceHigh <<= 6;
            sourceOffset = 0x05FFFFC0;
            sourceHigh += sourceOffset;
            sourceHigh = destinationBase + sourceHigh;
            dma[1] = sourceHigh;
            status = 0x80000010;
            dma[2] = status;
            status = dma[2];
            status = dma[2];
            busy = 0x80000000;
            if ((s32)status < 0) {
                do {
                    status = dma[2];
                    status &= busy;
                } while (status != 0);
            }

            dma = (vu32 *)0x040000D4;
            sourceOffset = character << 5;
            sourceHigh = character >> 5;
            sourceHigh <<= 10;
            sourceHigh += sourceBase;
            sourceOffset += sourceHigh;
            character = 0x400;
            asm("" : "+r"(character));
            sourceOffset += character;
            dma[0] = sourceOffset;

            sourceHigh = *timerPtr;
            sourceHigh <<= 6;
            sourceHigh += destinationBase;
            timerPtr = (u16 *)0x05FFFFE0;
            sourceHigh += (u32)timerPtr;
            dma[1] = sourceHigh;
            status = 0x80000010;
            dma[2] = status;
            status = dma[2];
            status = dma[2];
            busy = 0x80000000;
            if ((s32)status < 0) {
                do {
                    status = dma[2];
                    status &= busy;
                } while (status != 0);
            }
        }
    }
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_shop_DrawItemShopSprites.s");
#else
void DrawItemShopSprites(void)
{
  const struct AnimationFrame *animation;
  int new_var;
  const u16 *frameData;
  u16 *rawDestination;
  OamData *destination;
  long slot;
  long used;
  u32 i;
  u32 state;
  u32 attr0;
  unsigned long attr1;
  u32 attr2;
  volatile int xOffset;
  s32 yOffset;
  const struct AnimationFrame * const *animationTable;
  slot = 0;
  new_var = 0xFE00;
  used = gOamSlotsUsed;
  rawDestination = (u16 *) (((u8 *) gOamBuffer) + (used << 3));
  gItemShopShopkeeperAnimationState[0]++;
  animation = gItemShopShopkeeperAnimation;
  if (animation[gItemShopShopkeeperAnimationState[1]].time < gItemShopShopkeeperAnimationState[0])
  {
    gItemShopShopkeeperAnimationState[0] = 0;
    gItemShopShopkeeperAnimationState[1]++;
    if (animation[gItemShopShopkeeperAnimationState[1]].time == 0)
    {
      gItemShopShopkeeperAnimationState[1] = slot;
      if (animation == (sItemShopShopkeeperVoiceAnimation))
      {
        gItemShopShopkeeperAnimation = sItemShopShopkeeperIdleAnimation;
      }
    }
  }
  animation = gItemShopShopkeeperAnimation;
  frameData = animation[gItemShopShopkeeperAnimationState[1]].oam;
  used += *(frameData++);
  if (used > 128)
  {
    goto finish;
  }
  if (slot < used)
  {
    destination = (OamData *) (((u8 *) gOamBuffer) + (slot << 3));
    slot = used - slot;
    do
    {
      attr0 = *(frameData++);
      *(rawDestination++) = attr0;
      ((u8 *) destination)[0] = (u8) (attr0 + 120);
      attr1 = *(frameData++);
      *(rawDestination++) = attr1;
      destination->all.attr1 = ((attr1 + 20) & 0x1FF) | (destination->all.attr1 & new_var);
      attr2 = *(frameData++);
      *rawDestination = attr2;
      ((u8 *) destination)[5] &= -13;
      rawDestination += 2;
      destination++;
      slot--;
    }
    while (slot != 0);
    slot = used;
  }
  gItemShopCursor.animationTimer++;
  animation = gItemShopCursorAnimation;
  if (animation[gItemShopCursor.animationFrame].time < gItemShopCursor.animationTimer)
  {
    gItemShopCursor.animationTimer = 0;
    gItemShopCursor.animationFrame++;
    if (animation[gItemShopCursor.animationFrame].time == 0)
    {
      gItemShopCursor.animationFrame = 0;
      if (animation == (sItemShopCursorPurchaseAnimation))
      {
        gItemShopCursor.animationFrame = 1;
      }
    }
  }
  animation = gItemShopCursorAnimation;
  frameData = animation[gItemShopCursor.animationFrame].oam;
  used += *(frameData++);
  if (used > 128)
  {
    goto finish;
  }
  if (slot < used)
  {
    destination = (OamData *) (((u8 *) gOamBuffer) + (slot << 3));
    slot = used - slot;
    do
    {
      attr0 = *(frameData++);
      *(rawDestination++) = attr0;
      ((u8 *) destination)[0] = (u8) (attr0 + ((u8) gItemShopCursor.y));
      attr1 = *(frameData++);
      *(rawDestination++) = attr1;
      destination->all.attr1 = ((attr1 + gItemShopCursor.x) & 0x1FF) | (destination->all.attr1 & new_var);
      attr2 = *(frameData++);
      *rawDestination = attr2;
      ((u8 *) destination)[5] &= -13;
      rawDestination += 2;
      destination++;
      slot--;
    }
    while (slot != 0);
    slot = used;
  }
  animationTable = (const struct AnimationFrame * const *) sUnk_872FF9C;
  i = 0;
  do
  {
    state = gItemShopItemAvailability[i];
    animation = animationTable[(i * 3) + state];
    if (state == 1)
    {
      gItemShopItemIconAnimationState.animationTimer++;
      if (animation[gItemShopItemIconAnimationState.animationFrame].time < gItemShopItemIconAnimationState.animationTimer)
      {
        gItemShopItemIconAnimationState.animationTimer = 0;
        gItemShopItemIconAnimationState.animationFrame++;
        if (animation[gItemShopItemIconAnimationState.animationFrame].time == 0)
        {
          gItemShopItemIconAnimationState.animationFrame = 0;
        }
      }
      frameData = animation[gItemShopItemIconAnimationState.animationFrame].oam;
    }
    else
    {
      frameData = animation[0].oam;
    }
    used += *(frameData++);
    if (used > 128)
    {
      goto finish;
    }
    if (slot < used)
    {
      const u16 *yPosition;
      const u16 *xPosition;
      if (gCurrentPassage == 0)
      {
        yPosition = (const u16 *) sUnk_872FF58;
        xPosition = (const u16 *) sUnk_872FF4C;
      }
      else
      {
        yPosition = (const u16 *) sUnk_872FF38;
        xPosition = (const u16 *) sUnk_872FF24;
      }
      yOffset = yPosition[i];
      xOffset = xPosition[i];
      destination = (OamData *) (((u8 *) gOamBuffer) + (slot << 3));
      do
      {
        attr0 = *(frameData++);
        *(rawDestination++) = attr0;
        ((u8 *) destination)[0] = (u8) (attr0 + yOffset);
        attr1 = *(frameData++);
        *(rawDestination++) = attr1;
        destination->all.attr1 = ((attr1 + xOffset) & 0x1FF) | (destination->all.attr1 & new_var);
        attr2 = *(frameData++);
        *rawDestination = attr2;
        ((u8 *) destination)[5] &= -13;
        rawDestination += 2;
        destination++;
        slot++;
      }
      while (slot < used);
    }
    i++;
  }
  while (i <= 9);
  gOamSlotsUsed = used;
  finish:
  return;

}
#endif
