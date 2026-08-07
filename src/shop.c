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

void DrawItemShopSprites(void)
{
    register long slot asm("r8");
    long used;
    register u16 *rawDestination asm("r6");
    register const u16 *frameData asm("r4");

    slot = 0;
    {
        register u8 *slots asm("r1") = &gOamSlotsUsed;
        used = *slots;
    }
    {
        register u32 oamOffset asm("r0") = used << 3;
        frameData = (const u16 *)gOamBuffer;
        rawDestination = (u16 *)(oamOffset + (u32)frameData);
    }

    {
        u16 *state = gItemShopShopkeeperAnimationState;
        const struct AnimationFrame **animationPointer;
        register const struct AnimationFrame *loadedAnimation asm("r5");
        register const struct AnimationFrame *animation asm("r12");

        {
            register u16 timer asm("r1") = state[0];
            register u16 animationFrame asm("r0");
            timer++;
            state[0] = timer;
            animationFrame = state[1];
            animationPointer = &gItemShopShopkeeperAnimation;
            loadedAnimation = *animationPointer;
            asm("" : "+r"(loadedAnimation));
            animation = loadedAnimation;
            if (animation[animationFrame].time < timer)
        {
            register u16 zeroTimer asm("r0") = slot;
            state[0] = zeroTimer;
            state[1]++;
            if (animation[state[1]].time == 0)
            {
                register u16 zeroFrame asm("r1") = slot;
                state[1] = zeroFrame;
                if (animation == sItemShopShopkeeperVoiceAnimation)
                    *animationPointer = sItemShopShopkeeperIdleAnimation;
            }
        }
        }

        {
            u16 finalFrame = state[1];
            const struct AnimationFrame *finalAnimation = *animationPointer;
            frameData = finalAnimation[finalFrame].oam;
        }
    }

    used += *frameData++;
    if (used > 128)
        goto finish;

    {
        register struct ItemShopCursorState *cursor asm("r5") = &gItemShopCursor;

        if (slot < used)
        {
            register OamData *oamBase asm("r1") = gOamBuffer;
            register u32 lowMask asm("r10");
            register u32 highMask asm("r12");
            register s32 byteMask asm("r9");
            {
                register u32 lowLoad asm("r2") = 0x1FF;
                register u32 highLoad asm("r3") = 0xFFFFFE00;
                register s32 byteLoad asm("r0") = -13;
                lowMask = lowLoad;
                highMask = highLoad;
                byteMask = byteLoad;
            }
            {
            OamData *destination;
            destination = (OamData *)((slot << 3) + (u32)oamBase);
            slot = used - slot;
            do
            {
                register u32 attr asm("r2");
                register u32 temp0 asm("r0");
                register u32 temp1 asm("r1");

                attr = *frameData++;
                *rawDestination++ = attr;
                temp0 = attr;
                temp0 += 120;
                ((u8 *)destination)[0] = (u8)temp0;

                attr = *frameData++;
                *rawDestination++ = attr;
                temp1 = attr;
                temp1 += 20;
                temp0 = lowMask;
                temp1 &= temp0;
                attr = destination->all.attr1;
                temp0 = highMask;
                temp0 &= attr;
                temp0 |= temp1;
                destination->all.attr1 = temp0;

                temp0 = *frameData;
                *rawDestination = temp0;
                frameData++;
                temp1 = ((u8 *)destination)[5];
                temp0 = byteMask;
                temp0 &= temp1;
                ((u8 *)destination)[5] = temp0;
                rawDestination += 2;
                destination++;
                {
                    register s32 step asm("r1") = -1;
                    register s32 test asm("r2");
                    slot += step;
                    test = slot;
                    if (test == 0)
                        break;
                }
            }
            while (1);
            slot = used;
            }
        }

        {
            const struct AnimationFrame **animationPointer;
            register const struct AnimationFrame *animation asm("r2");
            u16 animationFrame;

            {
                register u16 timer asm("r0") = cursor->animationTimer;
                register u16 frame asm("r1");
                register const struct AnimationFrame **ap asm("r3");
                timer++;
                cursor->animationTimer = timer;
                frame = cursor->animationFrame;
                animationFrame = frame;
                ap = &gItemShopCursorAnimation;
                animationPointer = ap;
                animation = *ap;
                if (animation[frame].time < timer)
            {
                cursor->animationTimer = 0;
                cursor->animationFrame++;
                if (animation[cursor->animationFrame].time == 0)
                {
                    cursor->animationFrame = 0;
                    if (animation == sItemShopCursorPurchaseAnimation)
                        cursor->animationFrame = 1;
                }
            }
            }

            {
                u16 finalFrame = cursor->animationFrame;
                register const struct AnimationFrame **finalPointer asm("r2") = &gItemShopCursorAnimation;
                const struct AnimationFrame *finalAnimation = *finalPointer;
                frameData = finalAnimation[finalFrame].oam;
            }
        }

        used += *frameData++;
        if (used > 128)
            goto finish;

        if (slot < used)
        {
            register OamData *oamBase asm("r1") = gOamBuffer;
            register u32 lowMask asm("r10");
            register u32 highMask asm("r12");
            register s32 byteMask asm("r9");
            {
                register u32 lowLoad asm("r2") = 0x1FF;
                register u32 highLoad asm("r3") = 0xFFFFFE00;
                register s32 byteLoad asm("r0") = -13;
                lowMask = lowLoad;
                highMask = highLoad;
                byteMask = byteLoad;
            }
            {
            register OamData *destination asm("r3");
            {
                register long oldSlot asm("r0") = slot;
                register u32 byteOffset asm("r0") = oldSlot << 3;
                destination = (OamData *)(byteOffset + (u32)oamBase);
                oldSlot = slot;
                slot = used - oldSlot;
            }
            do
            {
                register u32 attr asm("r2");
                register u32 temp0 asm("r0");
                register u32 temp1 asm("r1");

                attr = *frameData++;
                *rawDestination++ = attr;
                temp0 = (u8)cursor->y;
                temp0 += attr;
                ((u8 *)destination)[0] = (u8)temp0;

                attr = *frameData++;
                *rawDestination++ = attr;
                temp0 = 4;
                temp1 = *(s16 *)((u8 *)cursor + temp0);
                temp1 = attr + temp1;
                attr = lowMask;
                temp1 &= attr;
                attr = destination->all.attr1;
                temp0 = highMask;
                temp0 &= attr;
                temp0 |= temp1;
                destination->all.attr1 = temp0;

                temp0 = *frameData;
                *rawDestination = temp0;
                frameData++;
                temp1 = ((u8 *)destination)[5];
                temp0 = byteMask;
                temp0 &= temp1;
                ((u8 *)destination)[5] = temp0;
                rawDestination += 2;
                destination++;
                {
                    register s32 step asm("r0") = -1;
                    register s32 test asm("r1");
                    slot += step;
                    test = slot;
                    if (test == 0)
                        break;
                }
            }
            while (1);
            slot = used;
            }
        }
    }

    {
        const struct AnimationFrame * const *animationTable;
        register s32 nextIndex asm("r12");

        animationTable = (const struct AnimationFrame * const *)sUnk_872FF9C;
        {
            register u32 zero asm("r2") = 0;
            nextIndex = zero;
        }
        do
        {
            u32 state;
            u32 offset;
            u32 savedNextIndex;
            {
                register u32 i asm("r12") = nextIndex;
                register const struct AnimationFrame *animation asm("r3");

                {
                    register u32 itemState asm("r2");
                    register u32 indexBytes asm("r1");
                    register u32 tableIndex asm("r0");
                    itemState = gItemShopItemAvailability[i];
                    state = itemState;
                    indexBytes = i << 1;
                    asm("" : "+r"(indexBytes));
                    tableIndex = indexBytes + i;
                    asm("" : "+r"(tableIndex) : "l"(i));
                    tableIndex += itemState;
                    animation = animationTable[tableIndex];
                    offset = indexBytes;
                }
                if (state == 1)
                {
                    struct ItemShopAnimationState *iconState = &gItemShopItemIconAnimationState;
                    {
                        register u16 timer asm("r1") = iconState->animationTimer;
                        register u16 frame asm("r0");
                        timer++;
                        iconState->animationTimer = timer;
                        frame = iconState->animationFrame;
                        if (animation[frame].time < timer)
                    {
                        iconState->animationTimer = 0;
                        iconState->animationFrame++;
                        if (animation[iconState->animationFrame].time == 0)
                            iconState->animationFrame = 0;
                    }
                    }
                    frameData = animation[iconState->animationFrame].oam;
                }
                else
                {
                    frameData = animation[0].oam;
                }

                used += *frameData++;
                if (used > 128)
                    goto finish;
                savedNextIndex = i + 1;
            }

            if (slot < used)
            {
                register const u16 *yPosition0 asm("r10") = (const u16 *)(sUnk_872FF58 + offset);
                register const u16 *xPosition0 asm("r9") = (const u16 *)(sUnk_872FF4C + offset);
                register const u16 *yPosition1 asm("r12") = (const u16 *)(sUnk_872FF38 + offset);
                const u16 *xPosition1 = (const u16 *)(sUnk_872FF24 + offset);

                do
                {
                    register u32 yOffset asm("r0");
                    register u32 xOffset asm("r1");
                    register u32 attr asm("r2");
                    OamData *destination;

                    if (gCurrentPassage == 0)
                    {
                        {
                            register const u16 *yp asm("r2") = yPosition0;
                            yOffset = *yp;
                        }
                        {
                            register const u16 *xp asm("r3") = xPosition0;
                            xOffset = *xp;
                        }
                    }
                    else
                    {
                        register const u16 *yp asm("r5") = yPosition1;
                        register const u16 *xp asm("r2") = xPosition1;
                        yOffset = *yp;
                        xOffset = *xp;
                    }

                    attr = *frameData++;
                    *rawDestination++ = attr;
                    destination = (OamData *)((u8 *)gOamBuffer + (slot << 3));
                    yOffset = attr + yOffset;
                    ((u8 *)destination)[0] = (u8)yOffset;

                    attr = *frameData++;
                    *rawDestination++ = attr;
                    xOffset = attr + xOffset;
                    {
                        register u32 mask asm("r0") = 0x1FF;
                        xOffset &= mask;
                        attr = destination->all.attr1;
                        mask = 0xFFFFFE00;
                        mask &= attr;
                        mask |= xOffset;
                        destination->all.attr1 = mask;
                    }
                    {
                        register u32 value asm("r0") = *frameData;
                        register u32 byteValue asm("r1");
                        *rawDestination = value;
                        frameData++;
                        byteValue = ((u8 *)destination)[5];
                        value = -13;
                        value &= byteValue;
                        ((u8 *)destination)[5] = value;
                    }
                    rawDestination += 2;
                    {
                        register long one asm("r0") = 1;
                        slot += one;
                    }
                }
                while (slot < used);
            }

            {
                register u32 next asm("r1") = savedNextIndex;
                asm("" : "+r"(next));
                nextIndex = next;
            }
        }
        while (nextIndex <= 9);
    }

    {
        register u8 *slots asm("r2") = &gOamSlotsUsed;
        *slots = used;
    }
finish:
    return;
}
