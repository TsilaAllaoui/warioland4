#include "sprite_ai/ghost.h"

#include "global_data.h"
#include "gba.h"
#include "sound.h"
#include "score.h"
#include "sprite_ai/keyzer.h"
#include "sprite.h"
#include "sprite_collision.h"
#include "sprite_util.h"
#include "wario.h"

void func_803F214(void)
{
    register u32 targetId asm("ip");
    register s32 i asm("r3");
    register u8 *base asm("r1");
    register u8 *entry asm("r2");
    register s32 offset asm("r4");
    register u8 *idBase asm("r6");
    u8 *persistentData;
    u8 *room;

    targetId = 17;
    i = 0;
    base = gUnk_3000964;
    if (*base != 0xFF) {
        persistentData = &gPersistentSpriteData[0][0];
        entry = base;
        offset = 0;
        idBase = entry + 2;
        room = &gCurrentRoom;
        do {
            if (*(u8 *)((u32)offset + (u32)idBase) == targetId) {
                register u32 destination asm("r0");
                destination = i + ((*room) << 6);
                destination += (u32)persistentData;
                base = (u8 *)17;
                *(u8 *)destination = (u8)(u32)base;
            }
            entry += 3;
            offset += 3;
            i++;
        } while (i <= 63 && *entry != 0xFF);
    }
}

void func_803F264(void)
{
    register u32 targetId asm("ip");
    register s32 i asm("r3");
    register u8 *base asm("r1");
    register u8 *entry asm("r2");
    register s32 offset asm("r4");
    register u8 *idBase asm("r6");
    u8 *persistentData;
    u8 *room;

    targetId = 17;
    i = 0;
    base = gUnk_3000964;
    if (*base != 0xFF) {
        persistentData = &gPersistentSpriteData[0][0];
        entry = base;
        offset = 0;
        idBase = entry + 2;
        room = &gCurrentRoom;
        do {
            if (*(u8 *)((u32)offset + (u32)idBase) == targetId) {
                register u32 destination asm("r0");
                destination = i + ((*room) << 6);
                destination += (u32)persistentData;
                base = (u8 *)1;
                *(u8 *)destination = (u8)(u32)base;
            }
            entry += 3;
            offset += 3;
            i++;
        } while (i <= 63 && *entry != 0xFF);
    }
}

void func_803F2B4(void)
{
    register u8 *persistentData asm("r1");
    register struct PrimarySpriteData *sprite asm("r5");
    register s32 distanceLimit asm("r4");
    register s32 distance asm("r1");
    u16 spriteY;
    u16 adjustedSpriteY;
    u16 adjustedWarioY;

    persistentData = &gPersistentSpriteData[0][0];
    sprite = &gCurrentSprite;
    {
        register u32 address asm("r0");
        register u32 persistentStatus asm("r0");

        address = gCurrentRoom << 6;
        address += sprite->roomSlot;
        address += (u32)persistentData;
        persistentStatus = *(u8 *)address;
        distanceLimit = 276;
        if (persistentStatus == 17) {
            distanceLimit += 100;
        }
    }

    spriteY = sprite->yPosition;
    adjustedSpriteY = spriteY + 0x1000;
    adjustedWarioY = gWarioData.yPosition + 0x1000;

    if (adjustedSpriteY < adjustedWarioY) {
        distance = adjustedWarioY - adjustedSpriteY;
        if (distance > distanceLimit) {
            sprite->yPosition = spriteY + 5;
        } else {
            register s32 lowerLimit asm("r0");
            lowerLimit = distanceLimit;
            lowerLimit -= 10;
            if (distance < lowerLimit) {
                sprite->yPosition = spriteY - 1;
            }
        }
    } else {
        sprite->yPosition = spriteY - 8;
    }
}

u32 func_803F320(void)
{
    register u8 *persistentData asm("r2");
    register struct PrimarySpriteData *loadCurrent asm("r1");
    struct PrimarySpriteData *current;
    register u8 *room asm("r0");
    register u32 persistentAddress asm("r0");

    persistentData = &gPersistentSpriteData[0][0];
    loadCurrent = &gCurrentSprite;
    room = &gCurrentRoom;
    persistentAddress = *room;
    persistentAddress <<= 6;
    persistentAddress += loadCurrent->roomSlot;
    persistentAddress += (u32)persistentData;
    {
        register u32 persistentState asm("r0");

        persistentState = *(u8 *)persistentAddress;
        current = loadCurrent;
        if (persistentState == 17) {
            return 0;
        }
    }

    {
        register u32 collectedKeyzer asm("r1");

        collectedKeyzer = gCollectedKeyzer;
        if (collectedKeyzer == 1) {
        register u8 *work1 asm("r0");
        register u32 warioX asm("r1");
        register u32 positionOffset asm("r2");
        register u32 spriteX asm("r0");

        work1 = &current->work1;
        *work1 = collectedKeyzer;
        warioX = gWarioData.xPosition;
        positionOffset = 128;
        positionOffset <<= 5;
        warioX += positionOffset;
        spriteX = current->xPosition;
        spriteX += positionOffset;
        if ((s32)warioX > (s32)spriteX) {
            if ((current->status & 0x40) != 0) {
                goto setPose;
            }
            goto callTransition;
        }
        {
            u32 lowerStatus;
            u32 lowerMask;

            lowerStatus = *(volatile u16 *)&current->status;
            lowerMask = 0x40;
            lowerMask &= lowerStatus;
            if (lowerMask != 0) {
                goto callTransition;
            }
        }
        goto setPose;
        }
    }

    {
        register u32 selectedIndex asm("r6");
        register u32 selectedId asm("r4");
        register s32 index asm("r3");
        struct PrimarySpriteData *sprites;
        register struct PrimarySpriteData *sprite asm("r2");

        selectedIndex = 0;
        selectedId = 0;
        index = 0;
        sprites = gSpriteData;
        sprite = sprites;
scanLoop:
        if ((sprite->status & 1) != 0) {
            register u32 globalId asm("r1");
            register u32 range asm("r0");

            globalId = sprite->globalID;
            range = (u8)(globalId + 0x7F);
            if (range <= 4 && globalId >= selectedId) {
                selectedIndex = index;
                asm("" ::: "memory");
                selectedId = sprite->globalID;
            }
        }
        sprite++;
        index++;
        if (index <= 23) {
            goto scanLoop;
        }
        if (selectedId == 0) {
            return 0;
        }

        {
            register struct PrimarySpriteData *currentAgain asm("r3");
            register u8 *work1 asm("r1");
            register u32 one asm("r0");
            register u32 structSize asm("r0");
            register struct PrimarySpriteData *selected asm("r0");
            register u32 selectedX asm("r1");
            register u32 positionOffset asm("r2");
            register u32 currentX asm("r0");

            currentAgain = current;
            work1 = &currentAgain->work1;
            one = 1;
            *work1 = one;
            structSize = sizeof(struct PrimarySpriteData);
            structSize *= selectedIndex;
            selected = (struct PrimarySpriteData *)((u32)structSize + (u32)sprites);
            selectedX = selected->xPosition;
            positionOffset = 128;
            positionOffset <<= 5;
            selectedX += positionOffset;
            currentX = currentAgain->xPosition;
            currentX += positionOffset;
            if ((s32)selectedX > (s32)currentX) {
                if ((currentAgain->status & 0x40) != 0) {
                    currentAgain->pose = 110;
                    goto done;
                }
                goto callTransition;
            }
            {
                register u32 lowerStatus asm("r1");
                register u32 lowerMask asm("r0");

                lowerStatus = *(volatile u16 *)&currentAgain->status;
                lowerMask = 0x40;
                lowerMask &= lowerStatus;
                if (lowerMask != 0) {
                    goto callTransition;
                }
            }
            goto setPose;
        }
    }

callTransition:
    func_803F944();
    goto done;

setPose:
    current->pose = 110;

done:
    return 1;
}

void func_803F414(void)
{
    u16 currentY;
    u16 currentX;
    u16 currentTop;
    u16 currentBottom;
    u16 currentLeft;
    u16 currentRight;
    s32 i;

    currentY = gCurrentSprite.yPosition + 0x1000;
    currentX = gCurrentSprite.xPosition + 0x1000;
    currentTop = currentY - gCurrentSprite.hitboxExtentUp;
    currentBottom = currentY + gCurrentSprite.hitboxExtentDown;
    currentLeft = currentX - gCurrentSprite.hitboxExtentLeft;
    currentRight = currentX + gCurrentSprite.hitboxExtentRight;

    for (i = 0; i <= 23; i++) {
        struct PrimarySpriteData *sprite;
        u16 spriteY;
        u16 spriteX;
        u16 spriteTop;
        u16 spriteBottom;
        u16 spriteLeft;
        u16 spriteRight;

        {
            struct PrimarySpriteData *sprites;
            u32 offset;

            sprites = gSpriteData;
            offset = sizeof(struct PrimarySpriteData);
            offset *= i;
            sprite = (struct PrimarySpriteData *)(offset + (u32)sprites);
        }
        if (!(sprite->status & 1)) {
            continue;
        }
        if ((u8)(sprite->globalID + 0x7F) > 4) {
            continue;
        }

        spriteY = sprite->yPosition + 0x1000;
        spriteX = sprite->xPosition + 0x1000;
        spriteTop = spriteY - sprite->hitboxExtentUp;
        spriteBottom = spriteY + sprite->hitboxExtentDown;
        spriteLeft = spriteX - sprite->hitboxExtentLeft;
        spriteRight = spriteX + sprite->hitboxExtentRight;

        if (!SpriteCollisionCheckObjectsTouching(
                currentTop, currentBottom, currentLeft, currentRight,
                spriteTop, spriteBottom, spriteLeft, spriteRight)) {
            continue;
        }

        sprite->status = 0;
        m4aSongNumStart(SOUND_5E);
        if (gCurrentSprite.pOamData != sUnk_83C53C4) {
            gCurrentSprite.pOamData = sUnk_83C53C4;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
        }
    }
}

void func_803F528(void)
{
    u16 currentY;
    u16 currentX;
    u16 currentTop;
    u16 currentBottom;
    u16 currentLeft;
    u16 currentRight;
    s32 i;

    if (gCurrentSprite.work0 != 0) {
        gCurrentSprite.work0--;
        return;
    }

    currentY = gCurrentSprite.yPosition + 0x1000;
    currentX = gCurrentSprite.xPosition + 0x1000;
    currentTop = currentY - gCurrentSprite.hitboxExtentUp;
    currentBottom = currentY + gCurrentSprite.hitboxExtentDown;
    currentLeft = currentX - gCurrentSprite.hitboxExtentLeft;
    currentRight = currentX + gCurrentSprite.hitboxExtentRight;

    for (i = 0; i <= 7; i++) {
        struct GhostSecondarySpriteData *sprite;
        u16 spriteY;
        u16 spriteX;
        u16 spriteTop;
        u16 spriteBottom;
        u16 spriteLeft;
        u16 spriteRight;

        sprite = &gSecondarySpriteData[i];
        if (!(sprite->status & 1)) {
            continue;
        }
        if (sprite->id != 75) {
            continue;
        }

        spriteY = sprite->yPosition + 0x1000;
        spriteX = sprite->xPosition + 0x1000;
        spriteTop = spriteY - 40;
        spriteBottom = spriteY + 40;
        spriteLeft = spriteX - 16;
        spriteRight = spriteX + 16;

        if (!SpriteCollisionCheckObjectsTouching(
                currentTop, currentBottom, currentLeft, currentRight,
                spriteTop, spriteBottom, spriteLeft, spriteRight)) {
            continue;
        }

        sprite->status = 0;
        m4aSongNumStart(SOUND_5F);
        SpriteSpawnAsChild(
            PSPRITE_A8,
            gCurrentSprite.roomSlot,
            gCurrentSprite.gfxSlot,
            gCurrentSprite.yPosition,
            gCurrentSprite.xPosition
        );
        gCollectedKeyzer = 0;
        func_803F214();
        gSwitchStates[3] |= 2;
        if (gCurrentSprite.pOamData != sUnk_83C53C4) {
            gCurrentSprite.pOamData = sUnk_83C53C4;
            gCurrentSprite.currentAnimationFrame = 0;
            gCurrentSprite.animationTimer = 0;
        }
        return;
    }
}

void func_803F66C(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 zero asm("r5");
    register u32 despawned asm("r6");
    register u32 status asm("r0");
    register u32 oldStatus asm("r1");
    register u32 flags asm("r2");

    despawned = SpriteUtilDespawnIfSpriteExists(63);
    if (despawned != 0) {
        return;
    }

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    flags = 0xA408;
    asm("" : "+r"(flags));
    status = flags;
    asm("" : "+r"(status));
    zero = 0;
    status |= oldStatus;
    sprite->status = status;

    sprite->warioCollision = 6;
    {
        register u8 *field0 asm("r0");
        register u32 value48 asm("r1");
        register u8 *field1 asm("r2");

        field0 = (u8 *)sprite + 32;
        value48 = 48;
        *field0 = value48;
        field1 = (u8 *)sprite + 33;
        field0 = (u8 *)24;
        *field1 = (u32)field0;
        field0 = (u8 *)sprite + 34;
        *field0 = value48;
    }
    {
        register u8 *field asm("r1");
        register u32 value asm("r0");

        field = (u8 *)sprite + 35;
        value = 128;
        *field = value;
        field++;
        value = 32;
        *field = value;
        field++;
        value = 64;
        *field = value;
        field++;
        asm("" : "+r"(field));
        value = 60;
        *field = value;
    }
    sprite->work0 = zero;
    sprite->work1 = zero;
    sprite->work2 = zero;

    SpriteUtilTurnTowardWario();
    SpriteSpawnAsChild(0xA7, sprite->roomSlot, sprite->gfxSlot,
                       sprite->yPosition, sprite->xPosition);
    if (sprite->pose == 1) {
        SpriteSpawnAsChild(0xA8, sprite->roomSlot, sprite->gfxSlot,
                           sprite->yPosition, sprite->xPosition);
    }

    sprite->pOamData = sUnk_83C5364;
    sprite->currentAnimationFrame = zero;
    sprite->animationTimer = despawned;
    sprite->pose = 16;
}

void func_803F718(void)
{
    register u32 targetId asm("r9");
    register struct PrimarySpriteData *loadCurrent asm("r0");
    register struct PrimarySpriteData *current asm("r6");
    u32 roomSlot;
    register u8 *room asm("sl");
    register struct PrimarySpriteData *sprites asm("r5");
    register u32 activeFlag asm("r8");
    register struct PrimarySpriteData *sprite asm("r2");
    register struct PrimarySpriteData *mirror asm("r4");
    register s32 offset asm("r3");
    register struct PrimarySpriteData *lastSprite asm("ip");
    register const struct AnimationFrame *selectedOam asm("r0");

    targetId = 0xA7;
    loadCurrent = &gCurrentSprite;
    roomSlot = loadCurrent->roomSlot;
    current = loadCurrent;
    room = &gCurrentRoom;
    sprites = gSpriteData;
    activeFlag = 1;
    sprite = sprites;
    mirror = sprites;
    offset = 0;
    {
        register u32 lastOffset asm("r1");

        lastOffset = 253;
        lastOffset <<= 2;
        lastSprite = (struct PrimarySpriteData *)((u32)sprites + lastOffset);
    }

loop:
    if (sprite->globalID != targetId) {
        goto next;
    }
    if (sprite->roomSlot != roomSlot) {
        goto next;
    }
    {
        register u32 status asm("r1");
        register u32 maskedStatus asm("r0");

        status = sprite->status;
        maskedStatus = activeFlag;
        maskedStatus &= status;
        if (maskedStatus != 0) {
            goto matched;
        }
    }

next:
    sprite++;
    mirror++;
    offset += sizeof(struct PrimarySpriteData);
    if ((s32)sprite <= (s32)lastSprite) {
        goto loop;
    }

finishSearch:
    {
        register u32 persistentIndex asm("r0");
        register u8 *roomPtr asm("r1");
        register u8 *persistentData asm("r1");

        roomPtr = room;
        persistentIndex = *roomPtr;
        persistentIndex <<= 6;
        persistentIndex += current->roomSlot;
        persistentData = &gPersistentSpriteData[0][0];
        persistentIndex += (u32)persistentData;
        if (*(u8 *)persistentIndex != 17) {
            goto useDefaultOam;
        }
        selectedOam = sUnk_83C53C4;
        goto applyOam;
    }

matched:
    {
        register u32 oamAddress asm("r0");
        register const struct AnimationFrame *oam asm("r1");
        register u32 zero asm("r0");

        oamAddress = (u32)sprites;
        oamAddress += 4;
        oamAddress = (u32)offset + oamAddress;
        oam = sUnk_83C5528;
        *(const struct AnimationFrame **)oamAddress = oam;
        zero = 0;
        *(u8 *)((u8 *)mirror + 22) = zero;
        *(u16 *)((u8 *)mirror + 20) = zero;
        goto finishSearch;
    }

useDefaultOam:
    selectedOam = sUnk_83C5364;

applyOam:
    current->pOamData = selectedOam;
    current->currentAnimationFrame = 0;
    current->animationTimer = 0;
    current->pose = 16;
    m4aSongNumStart(SOUND_5D);
}

void func_803F7CC(void)
{
    struct PrimarySpriteData *sprite;
    u16 spriteX;
    u16 warioX;
    u16 facing;
    sprite = &gCurrentSprite;
    spriteX = sprite->xPosition + 0x1000;
    warioX = gWarioData.xPosition + 0x1000;
    facing = sprite->status & 0x40;

    {
        register const u8 *persistent asm("r1");
        register u32 persistentIndex asm("r0");

        persistent = &gPersistentSpriteData[0][0];
        persistentIndex = gCurrentRoom;
        persistentIndex <<= 6;
        /* agbcc otherwise uses r2 for the room-slot load and addition. */
        asm("ldrb r6, [%1, #24]\nadd %0, r6"
            : "+r"(persistentIndex)
            : "r"(sprite)
            : "r6");
        persistentIndex += (u32)persistent;
        if (*(const u8 *)persistentIndex == 17) {
        func_8023BFC(sprite->yPosition, sprite->xPosition);
        if (!(gUnk_3000A51 & 0xF)) {
            func_8023BFC(sprite->yPosition - 64, sprite->xPosition - 128);
            if (!(gUnk_3000A51 & 0xF)) {
                func_8023BFC(sprite->yPosition - 64, sprite->xPosition + 128);
                {
                    register u8 *indexPtr asm("r5");
                    register u32 currentIndex asm("r2");
                    register const s16 *table asm("r1");
                    register u32 address asm("r0");
                    register u32 raw asm("r3");
                    register u32 zero asm("r6");
                    register s32 signedValue asm("r1");
                    register u32 direction asm("r0");
                    register u32 newX asm("r0");

                    indexPtr = &sprite->work2;
                    currentIndex = *indexPtr;
                    table = sUnk_83C55EA;
                    address = currentIndex << 1;
                    address += (u32)table;
                    raw = *(u16 *)address;
                    zero = 0;
                    /* agbcc otherwise combines the signed and unsigned table loads. */
                    asm("ldrsh %0, [%1, %2]" : "=r"(signedValue) : "r"(address), "r"(zero));
                    if (signedValue == 0x7FFF) {
                        func_803F944();
                    } else {
                        {
                            register u32 nextIndex asm("r0");
                            nextIndex = currentIndex + 1;
                            *indexPtr = nextIndex;
                        }
                        direction = facing;
                        if (direction != 0) {
                            newX = sprite->xPosition;
                            newX += raw;
                        } else {
                            newX = sprite->xPosition;
                            newX -= raw;
                        }
                        sprite->xPosition = newX;
                    }
                }
                return;
            }
        }
        }
    }

    {
        register u32 direction asm("r1");
        direction = facing;
        asm("" : : "r"(direction));
        if (direction != 0) {
            if ((s32)spriteX > (s32)(warioX + 64)) {
            func_803F944();
        } else {
            register struct PrimarySpriteData *current asm("r4");
            register u8 *indexPtr asm("r2");
            register u8 *indexAlias asm("ip");
            register u32 currentIndex asm("r2");
            register const s16 *table asm("r5");
            register u32 address asm("r0");
            register u32 raw asm("r3");
            register u32 zero asm("r6");
            register s32 signedValue asm("r1");
            register u32 newX asm("r0");

            current = &gCurrentSprite;
            indexPtr = (u8 *)41;
            asm("" : : "r"(indexPtr));
            indexPtr = (u8 *)((u32)indexPtr + (u32)current);
            indexAlias = indexPtr;
            asm("" : : "r"(indexAlias));
            currentIndex = *indexPtr;
            table = sUnk_83C5598;
            address = currentIndex << 1;
            address += (u32)table;
            raw = *(u16 *)address;
            zero = 0;
            /* agbcc otherwise combines the signed and unsigned table loads. */
            asm("ldrsh %0, [%1, %2]" : "=r"(signedValue) : "r"(address), "r"(zero));
            if (signedValue == 0x7FFF) {
                register u32 previousAddress asm("r1");
                previousAddress = currentIndex - 1;
                previousAddress <<= 1;
                previousAddress += (u32)table;
                newX = current->xPosition;
                previousAddress = *(u16 *)previousAddress;
                newX += previousAddress;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePtr asm("r1");
                nextIndex = currentIndex + 1;
                storePtr = indexAlias;
                *storePtr = nextIndex;
                newX = current->xPosition;
                newX += raw;
            }
            current->xPosition = newX;
        }
    } else {
        if ((s32)spriteX < (s32)(warioX - 64)) {
            func_803F944();
        } else {
            register struct PrimarySpriteData *current asm("r4");
            register u8 *indexPtr asm("r2");
            register u8 *indexAlias asm("ip");
            register u32 currentIndex asm("r2");
            register const s16 *table asm("r5");
            register u32 address asm("r0");
            register u32 raw asm("r3");
            register u32 zero asm("r6");
            register s32 signedValue asm("r1");
            register u32 newX asm("r0");

            current = &gCurrentSprite;
            indexPtr = (u8 *)41;
            asm("" : : "r"(indexPtr));
            indexPtr = (u8 *)((u32)indexPtr + (u32)current);
            indexAlias = indexPtr;
            asm("" : : "r"(indexAlias));
            currentIndex = *indexPtr;
            table = sUnk_83C5598;
            address = currentIndex << 1;
            address += (u32)table;
            raw = *(u16 *)address;
            zero = 0;
            /* agbcc otherwise combines the signed and unsigned table loads. */
            asm("ldrsh %0, [%1, %2]" : "=r"(signedValue) : "r"(address), "r"(zero));
            if (signedValue == 0x7FFF) {
                address = currentIndex - 1;
                address <<= 1;
                address += (u32)table;
                raw = *(u16 *)address;
            } else {
                register u32 nextIndex asm("r0");
                register u8 *storePtr asm("r1");
                nextIndex = currentIndex + 1;
                storePtr = indexAlias;
                *storePtr = nextIndex;
            }
            newX = current->xPosition;
            newX -= raw;
            current->xPosition = newX;
        }
        }
    }
}

void func_803F944(void)
{
    gCurrentSprite.pose = 18;
    gCurrentSprite.work2 = 0;
}

void func_803F958(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u32 xPosition asm("r6");
    register u32 spriteX asm("sl");
    register u32 warioX asm("r9");
    register u32 status;
    register u32 facing asm("r5");
    register u8 *indexPtr asm("ip");
    register u32 index asm("r2");
    register u32 delta asm("r4");
    register u32 deltaCopy asm("r8");
    volatile u32 saved[3];

    sprite = &gCurrentSprite;
    xPosition = sprite->xPosition;
    {
        register u32 adjusted asm("r0");
        adjusted = (u16)(xPosition + 0x1000);
        spriteX = adjusted;
        saved[0] = adjusted;
    }
    {
        register u32 adjusted asm("r1");
        adjusted = (u16)(gWarioData.xPosition + 0x1000);
        warioX = adjusted;
        saved[1] = adjusted;
    }
    status = sprite->status;
    {
        register u32 mask asm("r0");
        mask = 0x40;
        mask &= status;
        facing = (u16)mask;
    }
    saved[2] = facing;
    {
        register u8 *address asm("r0");
        address = (u8 *)41;
        asm("" : : "r"(address));
        address = (u8 *)((u32)address + (u32)sprite);
        indexPtr = address;
        index = *address;
    }
    delta = sUnk_83C5644[index];
    deltaCopy = delta;

    {
        register u32 persistentIndex asm("r0");
        register u32 roomSlot asm("r1");
        register const u8 *persistent asm("r1");

        persistentIndex = gCurrentRoom;
        persistentIndex <<= 6;
        roomSlot = sprite->roomSlot;
        persistentIndex += roomSlot;
        persistent = &gPersistentSpriteData[0][0];
        persistentIndex += (u32)persistent;
        if (*(const u8 *)persistentIndex == 17) {
        if (facing != 0) {
            if (delta == 0x7FFF) {
                {
                    register u32 zero asm("r0");
                    register u8 *storePtr asm("r1");
                    zero = 0;
                    storePtr = indexPtr;
                    *storePtr = zero;
                }
                func_803F718();
            } else {
                {
                    register u32 nextIndex asm("r0");
                    nextIndex = index + 1;
                    index = (u8)nextIndex;
                }
                *indexPtr = index;
                {
                    register u32 newX asm("r0");
                    newX = xPosition + delta;
                    sprite->xPosition = newX;
                }
                if (index == 32) {
                    sprite->pOamData = sUnk_83C53FC;
                    sprite->currentAnimationFrame = 0;
                    sprite->animationTimer = 0;
                } else if (index == 42) {
                    {
                        register u32 newStatus asm("r0");
                        newStatus = 0xFFBF;
                        newStatus &= status;
                        sprite->status = newStatus;
                    }
                }
            }
        } else {
            if (delta == 0x7FFF) {
                {
                    register u8 *storePtr asm("r1");
                    storePtr = indexPtr;
                    asm("" : : "r"(storePtr));
                    *storePtr = facing;
                }
                func_803F718();
            } else {
                {
                    register u32 nextIndex asm("r0");
                    nextIndex = index + 1;
                    index = (u8)nextIndex;
                }
                *indexPtr = index;
                {
                    register u32 newX asm("r0");
                    newX = xPosition - delta;
                    sprite->xPosition = newX;
                }
                if (index == 32) {
                    register u32 zero asm("r0");
                    sprite->pOamData = sUnk_83C53FC;
                    zero = 0;
                    asm("" : : "r"(zero));
                    sprite->currentAnimationFrame = zero;
                    sprite->animationTimer = facing;
                } else if (index == 42) {
                    {
                        register u32 newStatus asm("r0");
                        newStatus = 0x40;
                        newStatus |= status;
                        sprite->status = newStatus;
                    }
                }
            }
        }
    } else {
        if (facing != 0) {
            if (delta == 0x7FFF) {
                {
                    register u32 zero asm("r0");
                    register u8 *storePtr asm("r1");
                    zero = 0;
                    storePtr = indexPtr;
                    *storePtr = zero;
                }
                if (sprite->work1 != 0) {
                    sprite->pose = 110;
                } else {
                    func_803F718();
                }
            } else {
                {
                    register u32 nextIndex asm("r0");
                    nextIndex = index + 1;
                    index = (u8)nextIndex;
                }
                *indexPtr = index;
                {
                    register u32 newX asm("r0");
                    newX = xPosition + delta;
                    sprite->xPosition = newX;
                }
                if (index == 32) {
                    sprite->pOamData = sUnk_83C53B4;
                    sprite->currentAnimationFrame = 0;
                    sprite->animationTimer = 0;
                } else if (index == 42 && spriteX > warioX) {
                    {
                        register u32 newStatus asm("r0");
                        newStatus = 0xFFBF;
                        newStatus &= status;
                        sprite->status = newStatus;
                    }
                }
            }
        } else {
            if (delta == 0x7FFF) {
                {
                    register u8 *storePtr asm("r1");
                    storePtr = indexPtr;
                    asm("" : : "r"(storePtr));
                    *storePtr = facing;
                }
                if (sprite->work1 != 0) {
                    sprite->pose = 110;
                } else {
                    func_803F718();
                }
            } else {
                {
                    register u32 nextIndex asm("r0");
                    nextIndex = index + 1;
                    index = (u8)nextIndex;
                }
                *indexPtr = index;
                {
                    register u32 deltaValue asm("r1");
                    register u32 newX asm("r0");
                    deltaValue = deltaCopy;
                    newX = xPosition - deltaValue;
                    sprite->xPosition = newX;
                }
                if (index == 32) {
                    register u32 zero asm("r0");
                    sprite->pOamData = sUnk_83C53B4;
                    zero = 0;
                    asm("" : : "r"(zero));
                    sprite->currentAnimationFrame = zero;
                    sprite->animationTimer = *(volatile u16 *)((u8 *)saved + 8);
                } else if (index == 42 && saved[0] < saved[1]) {
                    {
                        register u32 newStatus asm("r0");
                        newStatus = 0x40;
                        newStatus |= status;
                        sprite->status = newStatus;
                    }
                }
            }
        }
    }
    }
}

void func_803FB14(void)
{
    gCurrentSprite.pose = 20;
    gCurrentSprite.work2 = 0;
}

void func_803FB28(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u32 xPosition asm("r5");
    register u32 spriteX asm("r9");
    register u32 warioX asm("r8");
    register u32 status asm("r6");
    register u32 facing asm("r4");
    register u8 *indexPtr asm("ip");
    register u32 index asm("r2");
    register u32 delta asm("r1");
    register u32 deltaCopy;
    register struct PrimarySpriteData *spriteAlias asm("sl");
    volatile u32 saved[2];

    sprite = &gCurrentSprite;
    xPosition = sprite->xPosition;
    {
        register u32 adjusted asm("r0");
        adjusted = (u16)(xPosition + 0x1000);
        spriteX = adjusted;
        asm("" : : : "r0");
        saved[0] = spriteX;
    }
    {
        register u32 adjusted asm("r1");
        adjusted = (u16)(gWarioData.xPosition + 0x1000);
        warioX = adjusted;
        asm("" : : : "r1");
        saved[1] = warioX;
    }
    status = sprite->status;
    {
        register u32 mask asm("r0");
        mask = 0x40;
        mask &= status;
        facing = (u16)mask;
    }
    {
        register u8 *address asm("r1");
        address = (u8 *)41;
        asm("" : : "r"(address));
        address = (u8 *)((u32)address + (u32)sprite);
        indexPtr = address;
        index = *address;
    }
    delta = sUnk_83C56AE[index];
    deltaCopy = delta;
    spriteAlias = sprite;

    if (facing != 0) {
        if (delta == 0x7FFF) {
            register u32 zero asm("r0");
            register u8 *storePtr asm("r2");
            zero = 0;
            storePtr = indexPtr;
            *storePtr = zero;
            func_803F718();
        } else {
            {
                register u32 nextIndex asm("r0");
                nextIndex = index + 1;
                index = (u8)nextIndex;
            }
            {
                register u8 *storePtr asm("r0");
                storePtr = indexPtr;
                *storePtr = index;
            }
            {
                register u32 newX asm("r0");
                newX = xPosition + delta;
                sprite->xPosition = newX;
            }
            if (index == 4) {
                if (gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] == 17) {
                    sprite->pOamData = sUnk_83C53FC;
                } else {
                    sprite->pOamData = sUnk_83C53B4;
                }
                {
                    register u32 zero asm("r0");
                    register struct PrimarySpriteData *storeSprite asm("r1");
                    zero = 0;
                    storeSprite = spriteAlias;
                    *(u8 *)((u8 *)storeSprite + 22) = zero;
                    *(u16 *)((u8 *)storeSprite + 20) = zero;
                }
            } else if (index == 14 && spriteX > warioX) {
                register u32 newStatus asm("r0");
                newStatus = 0xFFBF;
                newStatus &= status;
                sprite->status = newStatus;
            }
        }
    } else {
        if (delta == 0x7FFF) {
            register u8 *storePtr asm("r2");
            storePtr = indexPtr;
            *storePtr = facing;
            func_803F718();
        } else {
            {
                register u32 nextIndex asm("r0");
                nextIndex = index + 1;
                index = (u8)nextIndex;
            }
            {
                register u8 *storePtr asm("r0");
                storePtr = indexPtr;
                *storePtr = index;
            }
            {
                register u32 newX asm("r0");
                newX = xPosition - deltaCopy;
                sprite->xPosition = newX;
            }
            if (index == 4) {
                if (gPersistentSpriteData[gCurrentRoom][sprite->roomSlot] == 17) {
                    sprite->pOamData = sUnk_83C53FC;
                } else {
                    sprite->pOamData = sUnk_83C53B4;
                }
                {
                    register u32 zero asm("r0");
                    register struct PrimarySpriteData *storeSprite asm("r1");
                    zero = 0;
                    storeSprite = spriteAlias;
                    *(u8 *)((u8 *)storeSprite + 22) = zero;
                    *(u16 *)((u8 *)storeSprite + 20) = zero;
                }
            } else if (index == 14) {
                register u32 savedSpriteX asm("r2");
                register u32 savedWarioX asm("r0");
                savedSpriteX = saved[0];
                savedWarioX = saved[1];
                if (savedSpriteX < savedWarioX) {
                    register u32 newStatus asm("r0");
                    newStatus = 0x40;
                    newStatus |= status;
                    sprite->status = newStatus;
                }
            }
        }
    }
}

void func_803FC70(void)
{
    register u32 targetId asm("sl");
    register struct PrimarySpriteData *loadCurrent asm("r0");
    register u32 roomSlot asm("ip");
    register s32 index asm("r4");
    struct PrimarySpriteData *current;
    register struct PrimarySpriteData *sprites asm("r6");
    register u32 oamBase asm("r9");
    register u32 zero asm("r5");
    register const struct AnimationFrame *childOam asm("r8");

    targetId = 0xA7;
    loadCurrent = &gCurrentSprite;
    roomSlot = loadCurrent->roomSlot;
    index = 0;
    current = loadCurrent;
    sprites = gSpriteData;
    oamBase = (u32)sprites + 4;
    zero = 0;
    childOam = sUnk_83C5568;

loop:
    {
        register u32 structSize asm("r0");
        register s32 offset asm("r3");
        register struct PrimarySpriteData *child asm("r2");

        structSize = sizeof(struct PrimarySpriteData);
        offset = index;
        offset *= structSize;
        child = (struct PrimarySpriteData *)((u32)offset + (u32)sprites);
        if (child->globalID != targetId) {
            goto next;
        }
        if (child->roomSlot != roomSlot) {
            goto next;
        }
        if (!(child->status & 1)) {
            goto next;
        }

        {
            register u32 address asm("r0");
            register u32 base asm("r1");
            register const struct AnimationFrame *oam asm("r1");

            base = oamBase;
            address = (u32)offset + base;
            oam = childOam;
            *(const struct AnimationFrame **)address = oam;
        }
        asm("" : "+r"(zero));
        child->currentAnimationFrame = zero;
        child->animationTimer = zero;
        goto found;
    }

next:
    index++;
    if (index <= 23) {
        goto loop;
    }

found:
    {
        register u8 zeroTail asm("r1");
        register u32 pose asm("r0");
        register u8 *work3 asm("r0");
        register const struct AnimationFrame *oam asm("r0");

        zeroTail = 0;
        pose = 111;
        asm("" : "+r"(current));
        current->pose = pose;
        work3 = (u8 *)current + 42;
        *work3 = zeroTail;
        oam = sUnk_83C538C;
        current->pOamData = oam;
        /* agbcc otherwise copies the zero from r1 to r0 before these stores. */
        asm("strb %1, [%0, #22]\n"
            "strh %1, [%0, #20]"
            :
            : "r"(current), "r"(zeroTail)
            : "memory");
    }
}

void func_803FCF8(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u32 baseX asm("r6");
    register u32 positionOffset asm("r1");
    register u32 spriteLimit asm("ip");
    register u32 spriteLimitHigh asm("sl");
    register u32 warioLimit asm("r3");
    register u32 warioLimitHigh asm("r9");
    u32 facing;
    register u8 *verticalIndexPtr asm("r8");
    register u32 verticalIndex asm("r2");
    register u32 verticalAddress asm("r0");
    register u16 verticalRaw asm("r1");
    register s32 verticalSigned asm("r0");
    register s32 sentinel asm("r5");

    sprite = &gCurrentSprite;
    baseX = sprite->xPosition;
    {
        register u32 offsetValue asm("r0");

        offsetValue = 128;
        offsetValue <<= 5;
        asm("" : "+r"(offsetValue));
        positionOffset = offsetValue;
    }
    spriteLimit = (u16)(baseX + positionOffset);
    spriteLimitHigh = spriteLimit;
    warioLimit = (u16)(positionOffset + gWarioData.xPosition);
    warioLimitHigh = warioLimit;
    facing = (u16)(sprite->status & 0x40);

    verticalIndex = 42;
    asm("" : : "r"(verticalIndex));
    verticalIndex += (u32)sprite;
    verticalIndexPtr = (u8 *)verticalIndex;
    verticalIndex = *(u8 *)verticalIndex;
    {
        register const s16 *table asm("r1");
        register u32 zero asm("r5");

        table = sUnk_83C56E0;
        verticalAddress = verticalIndex << 1;
        verticalAddress += (u32)table;
        verticalRaw = *(u16 *)verticalAddress;
        zero = 0;
        verticalSigned = *(s16 *)verticalAddress;
    }
    sentinel = 0x7FFF;

    if (verticalSigned == sentinel) {
        register u8 *work1 asm("r1");
        register u32 zero asm("r0");

        work1 = &sprite->work1;
        zero = 0;
        *work1 = zero;
        if (facing != 0) {
            if (spriteLimit > warioLimit) {
                goto turnAway;
            }
        } else if (spriteLimitHigh < warioLimitHigh) {
            goto turnAway;
        }

        func_803F718();
        {
            register u8 *work2 asm("r1");
            register u32 value asm("r0");

            work2 = &sprite->work2;
            value = 8;
            *work2 = value;
        }
        return;

turnAway:
        func_803FB14();
        return;
    }

    {
        register u32 nextIndex asm("r0");
        register u8 *indexPtr asm("r2");

        nextIndex = verticalIndex + 1;
        indexPtr = verticalIndexPtr;
        *indexPtr = nextIndex;
    }
    sprite->yPosition += verticalRaw;
    {
        register u8 *horizontalIndexPtr asm("ip");
        register u32 horizontalIndex asm("r2");
        register const s16 *table asm("r3");
        register u32 address asm("r0");
        register u32 horizontalRaw asm("r1");
        register s32 horizontalSigned asm("r0");
        register u32 newX asm("r0");

        address = 41;
        asm("" : : "r"(address));
        address += (u32)sprite;
        horizontalIndexPtr = (u8 *)address;
        horizontalIndex = *(u8 *)address;
        table = sUnk_83C5598;
        address = horizontalIndex << 1;
        address += (u32)table;
        horizontalRaw = *(u16 *)address;

        if (facing != 0) {
            horizontalSigned = (s16)horizontalRaw;
            if (horizontalSigned == sentinel) {
                register u32 previousAddress asm("r0");
                register u32 previousRaw asm("r0");

                previousAddress = horizontalIndex - 1;
                previousAddress <<= 1;
                previousAddress += (u32)table;
                previousRaw = *(u16 *)previousAddress;
                newX = baseX + previousRaw;
                goto applyX;
            }
            {
                register u32 nextIndex asm("r0");
                register u8 *indexPtr asm("r2");

                nextIndex = horizontalIndex + 1;
                indexPtr = horizontalIndexPtr;
                *indexPtr = nextIndex;
            }
            newX = baseX + horizontalRaw;
            goto applyX;
        }

        horizontalSigned = (s16)horizontalRaw;
        if (horizontalSigned == sentinel) {
            register u32 previousAddress asm("r0");

            previousAddress = horizontalIndex - 1;
            previousAddress <<= 1;
            previousAddress += (u32)table;
            horizontalRaw = *(u16 *)previousAddress;
        } else {
            register u32 nextIndex asm("r0");
            register u8 *indexPtr asm("r5");

            nextIndex = horizontalIndex + 1;
            indexPtr = horizontalIndexPtr;
            *indexPtr = nextIndex;
        }
        newX = baseX - horizontalRaw;

applyX:
        sprite->xPosition = newX;
    }
}

void func_803FDEC(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u32 status asm("r0");
    register u32 oldStatus asm("r1");
    register u32 flags asm("r2");
    register u32 zeroByte asm("r3");
    register u32 zeroHalf asm("r4");
    register u8 *fieldPtr asm("r1");
    register u8 *otherPtr asm("r0");
    register const struct AnimationFrame *oam asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    flags = 0xA400;
    asm("" : "+r"(flags));
    status = flags;
    asm("" : "+r"(status));
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    oldStatus = 0xFFFB;
    status &= oldStatus;
    fieldPtr = (u8 *)sprite;
    *(u16 *)fieldPtr = status;

    *(fieldPtr + 30) = 6;
    fieldPtr += 32;
    *fieldPtr = 24;
    otherPtr = (u8 *)sprite + 33;
    flags = 16;
    *otherPtr = flags;
    fieldPtr += 2;
    *fieldPtr = 40;
    fieldPtr++;
    *fieldPtr = 96;
    fieldPtr++;
    *fieldPtr = 64;
    fieldPtr++;
    *fieldPtr = 160;
    fieldPtr++;
    asm("" : "+r"(fieldPtr));
    *fieldPtr = 160;

    oam = sUnk_83C5528;
    fieldPtr = (u8 *)sprite;
    *(const struct AnimationFrame **)(fieldPtr + 4) = oam;
    *(fieldPtr + 22) = zeroByte;
    *(u16 *)(fieldPtr + 20) = zeroHalf;
    *(fieldPtr + 28) = flags;
}

void func_803FE54(void)
{
    register struct PrimarySpriteData *sprite asm("ip");
    register u32 status asm("r0");
    register u32 oldStatus asm("r1");
    register u32 flags asm("r2");
    register u32 zeroByte asm("r3");
    register u32 zeroHalf asm("r4");
    register u8 *fieldPtr asm("r1");
    register u8 *otherPtr asm("r0");
    register const struct AnimationFrame *oam asm("r0");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    flags = 0x8440;
    asm("" : "+r"(flags));
    status = flags;
    asm("" : "+r"(status));
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    oldStatus = 0xFFFB;
    status &= oldStatus;
    fieldPtr = (u8 *)sprite;
    *(u16 *)fieldPtr = status;

    *(fieldPtr + 30) = 6;
    otherPtr = (u8 *)sprite + 32;
    flags = 16;
    *otherPtr = flags;
    otherPtr++;
    asm("" : "+r"(otherPtr));
    *otherPtr = flags;
    fieldPtr += 34;
    *fieldPtr = 8;
    fieldPtr++;
    *fieldPtr = 48;
    fieldPtr++;
    *fieldPtr = 40;
    otherPtr = (u8 *)sprite + 37;
    *otherPtr = flags;
    fieldPtr += 2;
    asm("" : "+r"(fieldPtr));
    *fieldPtr = 12;

    oam = sKeyzerIdleOam;
    fieldPtr = (u8 *)sprite;
    *(const struct AnimationFrame **)(fieldPtr + 4) = oam;
    *(fieldPtr + 22) = zeroByte;
    *(u16 *)(fieldPtr + 20) = zeroHalf;
    *(fieldPtr + 28) = flags;
    fieldPtr += 39;
    status = 60;
    *fieldPtr = status;
    flags = (u32)sprite;
    *(u8 *)(flags + 31) = status;
}

void func_803FEC8(void)
{
    register struct PrimarySpriteData *loadCurrent asm("r0");
    register u32 roomSlot asm("r4");
    register struct PrimarySpriteData *current asm("ip");
    register u32 activeFlag asm("r6");
    register struct PrimarySpriteData *sprite asm("r2");
    register struct PrimarySpriteData *workSprite asm("r3");
    register struct PrimarySpriteData *lastSprite asm("r5");
    u32 targetId;

    targetId = 63;
    loadCurrent = &gCurrentSprite;
    roomSlot = loadCurrent->roomSlot;
    current = loadCurrent;
    activeFlag = 1;
    sprite = gSpriteData;
    workSprite = sprite;
    asm("" : "+r"(workSprite));
    {
        register u32 lastOffset asm("r0");

        lastOffset = 253;
        lastOffset <<= 2;
        lastSprite = (struct PrimarySpriteData *)((u32)sprite + lastOffset);
    }

loop:
    if (sprite->globalID != targetId) {
        goto next;
    }
    if (sprite->roomSlot != roomSlot) {
        goto next;
    }
    {
        register u32 status asm("r1");
        register u32 maskedStatus asm("r0");

        status = sprite->status;
        maskedStatus = activeFlag;
        maskedStatus &= status;
        if (maskedStatus != 0) {
            goto matched;
        }
    }

next:
    sprite++;
    workSprite++;
    asm("" : "+r"(workSprite));
    if ((s32)sprite <= (s32)lastSprite) {
        goto loop;
    }

finishSearch:
    {
        register u32 zero asm("r0");
        register struct PrimarySpriteData *statusSprite asm("r1");

        zero = 0;
        statusSprite = current;
        statusSprite->status = zero;
    }
    func_803F264();
    gCollectedKeyzer = 1;
    gSwitchStates[3] |= 2;
    m4aSongNumStart(SOUND_60);

    if (!(gWarioData.horizontalDirection & 0x20)) {
        goto spawnLeft;
    }
    {
        register u32 xPosition asm("r0");

        xPosition = gWarioData.xPosition;
        xPosition += 64;
        goto spawn;
    }

matched:
    {
        register u8 *timer asm("r1");
        register u32 value asm("r0");

        timer = (u8 *)workSprite;
        timer += 39;
        asm("" : "+r"(timer));
        value = 100;
        *timer = value;
        goto finishSearch;
    }

spawnLeft:
    {
        register u32 xPosition asm("r0");

        xPosition = gWarioData.xPosition;
        xPosition -= 64;
    }

spawn:
    {
        register u32 xPosition asm("r0");
        register u32 spawnX asm("r1");
        register u32 spawnY asm("r0");

        spawnX = (u16)xPosition;
        spawnY = gWarioData.yPosition;
        spawnY -= 96;
        SpriteSpawnSecondary(spawnY, spawnX, 75);
    }
}

void SpriteGhost(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;

    switch (gCurrentSprite.pose) {
        case 0:
        case 1:
            func_803F66C();
            break;

        case 16:
            func_803F2B4();
            if (func_803F320()) {
                return;
            }
            func_803F7CC();
            break;

        case 18:
            func_803F2B4();
            func_803F958();
            break;

        case 20:
            func_803F2B4();
            func_803FB28();
            break;

        case 110:
            func_803FC70();
            /* Fall through. */
        case 111:
            func_803FCF8();
            if (gCollectedKeyzer == 1) {
                func_803F528();
            } else {
                func_803F414();
            }
            break;
    }

    REG_BLDALPHA = 0x90B;
}

void SpriteUnknownA7(void)
{
    register struct PrimarySpriteData *loadCurrent asm("r0");
    register u32 roomSlot asm("r5");
    register s32 i asm("r3");
    register struct PrimarySpriteData *current asm("r4");
    register struct PrimarySpriteData *sprites asm("r6");
    u32 targetId;

    targetId = 63;
    loadCurrent = &gCurrentSprite;
    roomSlot = loadCurrent->roomSlot;
    i = 0;
    current = loadCurrent;
    asm("" : "+r"(current));
    sprites = gSpriteData;

loop:
    {
        register u32 offset asm("r0");
        register struct PrimarySpriteData *sprite asm("r2");

        offset = sizeof(struct PrimarySpriteData);
        offset *= i;
        sprite = (struct PrimarySpriteData *)(offset + (u32)sprites);
        if (sprite->globalID != targetId) {
            goto next;
        }
        if (sprite->roomSlot != roomSlot) {
            goto next;
        }
        if (!(sprite->status & 1)) {
            goto next;
        }

        current->yPosition = sprite->yPosition;
        if (sprite->status & 0x40) {
            if (sprite->pose == 111) {
                current->xPosition = sprite->xPosition + 52;
                goto found;
            }
            current->xPosition = sprite->xPosition + 24;
            goto found;
        }
        current->xPosition = sprite->xPosition;
        goto found;
    }

next:
    i++;
    if (i <= 23) {
        goto loop;
    }

found:
    current->disableWarioCollisionTimer = 1;
    if (current->pose == 0) {
        func_803FDEC();
    }
}

void SpriteUnknownA8(void)
{
    register u32 targetId asm("ip");
    register struct PrimarySpriteData *loadCurrent asm("r0");
    register u32 roomSlot asm("r5");
    register s32 i asm("r3");
    register struct PrimarySpriteData *current asm("r4");
    register struct PrimarySpriteData *sprites asm("r6");
    register struct PrimarySpriteData *sprite asm("r2");
    struct PrimarySpriteData *positionSprite;

    targetId = 63;
    loadCurrent = &gCurrentSprite;
    roomSlot = loadCurrent->roomSlot;
    i = 0;
    current = loadCurrent;
    sprites = gSpriteData;
    positionSprite = current;

loop:
    {
        register u32 offset asm("r0");

        offset = sizeof(struct PrimarySpriteData);
        offset *= i;
        sprite = (struct PrimarySpriteData *)(offset + (u32)sprites);
        if (sprite->globalID != targetId) {
            goto next;
        }
        if (sprite->roomSlot != roomSlot) {
            goto next;
        }
        if (!(sprite->status & 1)) {
            goto next;
        }

        positionSprite->yPosition = sprite->yPosition;
        if (sprite->status & 0x40) {
            goto useNegativeOffset;
        }
        current->xPosition = sprite->xPosition - 72;
        goto found;
    }

next:
    i++;
    if (i <= 23) {
        goto loop;
    }

found:
    {
        register u32 pose asm("r0");

        pose = gCurrentSprite.pose;
        if (pose == 0) {
            goto initialize;
        }
        if (pose == 49) {
            goto transition;
        }
        goto updateTimer;
    }

useNegativeOffset:
    {
        register s32 negativeOffset asm("r1");
        register s32 adjustedPosition asm("r0");

        negativeOffset = 0xFFD0;
        adjustedPosition = negativeOffset;
        asm("" : "+r"(negativeOffset), "+r"(adjustedPosition));
        /* agbcc otherwise loads the halfword before copying the literal to r0. */
        asm("ldrh %0, [%0, #10]" : "+r"(sprite));
        adjustedPosition += (u32)sprite;
        current->xPosition = adjustedPosition;
        goto found;
    }

initialize:
    func_803FE54();
    goto updateTimer;

transition:
    func_803FEC8();

updateTimer:
    if (gCurrentSprite.status & 1) {
        gCurrentSprite.work0--;
        if (gCurrentSprite.work0 == 0) {
            gCurrentSprite.work0 = 60;
            m4aSongNumStart(SOUND_61);
        }
    }
}
