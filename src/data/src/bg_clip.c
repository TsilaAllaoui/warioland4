#include "bg_clip.h"

#include "color_effects.h"
#include "game_screen_helpers.h"
#include "global_data.h"
#include "main.h"

void func_80701F4(void);

struct BgClipStack {
    u32 bg0Attribute;
    u32 attributes[2];
    s32 yPosition;
    s32 xPosition;
};

s32 GetBackgroundCollisionAtPosition(u16 y, u16 x)
{
    register struct Unk_30000A0 *collision;
    register struct Unk_30000A0 *collisionInit asm("r1");
    register struct BackgroundInfo *background asm("r9");
    register struct BackgroundInfo *backgroundInit asm("r2");
    register struct RoomHeader *roomHeader asm("sl");
    register struct RoomHeader *roomHeaderInit asm("r3");
    register u32 tileY asm("r8");
    register u32 tileX asm("ip");
    register u32 attribute asm("r5");
    register u32 shiftedY asm("r3");
    register u32 shiftedX asm("r4");
    register s32 xTruncated asm("r1");
    register s32 collisionType asm("r2");
    register s32 overrideType asm("r4");
    register s32 one asm("r6");
    register s32 limit asm("r0");
    register u32 parameter asm("r0");
    struct BgClipStack stack;
    register const u16 *attributeTable asm("r5");
    register struct BackgroundInfo *layer asm("r3");
    register u32 *destination asm("r6");
    register s32 layerIndex asm("r4");
    u32 value;
    s32 waterCollision;

    shiftedY = y << 16;
    stack.yPosition = shiftedY >> 16;
    shiftedX = x << 16;
    xTruncated = (u32)shiftedX >> 16;
    stack.xPosition = xTruncated;
    collisionInit = &gUnk_30000A0;
    collisionInit->unk_00 = 0;
    collisionInit->unk_02 = 0;
    backgroundInit = &gBackgroundInfo;
    limit = backgroundInit->bg1Height;
    limit <<= 6;
    collision = collisionInit;
    background = backgroundInit;

    if (stack.yPosition >= limit ||
        stack.xPosition >= (backgroundInit->bg1Width << 6))
        return 0;

    tileY = shiftedY >> 22;
    tileX = shiftedX >> 22;
    roomHeaderInit = &gCurrentRoomHeader;
    asm("" : "=r"(roomHeader) : "0"(roomHeaderInit));
    attributeTable = gUnk_30031F4.attributes;
    destination = stack.attributes;
    layer = (struct BackgroundInfo *)&background->pBg1Data;
    layerIndex = 1;
    do
    {
        register u32 temporary asm("r0");
        register u32 product asm("r1");
        register u32 tileIndex asm("r2");
        const u16 *tileMap;

        temporary = layer->bg0Width;
        product = tileY;
        product *= temporary;
        temporary = product;
        product = tileX;
        tileIndex = temporary + product;
        tileMap = layer->pBg0Data;
        temporary = tileIndex << 1;
        temporary += (u32)tileMap;
        tileIndex = *(u16 *)temporary;
        temporary = tileIndex << 1;
        temporary += (u32)attributeTable;
        temporary = *(u16 *)temporary;
        *destination++ = temporary;
        layer = (struct BackgroundInfo *)((u8 *)layer + 8);
        layerIndex--;
    }
    while (layerIndex >= 0);

    collisionType = 0;
    attribute = stack.attributes[0];
    if (attribute == 106)
        collisionType = 5;
    else if (attribute == 107)
        collisionType = 6;
    else if (attribute == 104)
        collisionType = 11;
    else if (attribute == 4)
        collisionType = 7;
    else if (attribute == 5)
        collisionType = 8;
    else if (attribute == 6)
        collisionType = 9;
    else if (attribute == 7)
        collisionType = 10;
    else if (attribute == 121)
        collisionType = 2;
    else if (attribute == 123)
        collisionType = 4;
    else if (attribute == 2)
        collisionType = 1;
    else if (attribute == 122)
        collisionType = 3;
    else if ((u32)(attribute - 89) <= 4)
        collisionType = 11;

    if (collisionType == 0)
    {
        register struct RoomHeader *headerTemporary asm("r3");

        headerTemporary = roomHeader;
        if (headerTemporary->bg2Param != 16)
            goto primary_collision_done;
        value = stack.attributes[1];
        if (value == 2)
            collisionType = 1;
        else if (value == 121)
            collisionType = 2;
        else if (value == 123)
            collisionType = 4;
        else if (value == 104)
            collisionType = 11;
        else if (value == 122)
            collisionType = 3;
        else if ((u32)(value - 56) <= 7)
        {
            overrideType = value - 55;
            if (overrideType <= 3)
            {
                register u32 switchState asm("r0");
                register u8 *switchPointer asm("r0");

                switchPointer = (u8 *)overrideType;
                switchPointer += (u32)gSwitchStates;
                switchState = *switchPointer;
                if (switchState == SWITCH_STATE_OFF || switchState == SWITCH_STATE_SWITCHING_OFF)
                    collisionType = 1;
            }
            else if ((u8)(gSwitchStates[value - 59] - 1) <= 1)
            {
                collisionType = 1;
            }
        }
        else
        {
            register u32 rangeValue asm("r0");

            rangeValue = value;
            rangeValue -= 152;
            if (rangeValue <= 3)
            {
                register u32 switchState asm("r1");
                register u32 maskedState asm("r0");

                overrideType = rangeValue;
                switchState = gSwitchStates[1];
                one = 1;
                maskedState = one;
                maskedState &= switchState;
                if (maskedState == 0)
                {
                    if (overrideType <= 1)
                        collisionType = value - 150;
                }
                else if (overrideType > 1)
                {
                    overrideType &= one;
                    collisionType = overrideType + 2;
                }
            }
        }
    }

primary_collision_done:
    collision->unk_00 = collisionType;
    waterCollision = 0;
    overrideType = 0;
    {
        register struct RoomHeader *headerTemporary asm("r1");

        headerTemporary = roomHeader;
        parameter = headerTemporary->bgPriorityAlpha;
        if (parameter <= 7)
            goto check_primary_water_attribute;
        parameter = headerTemporary->bg0Param;
        if (parameter <= 16)
            goto process_bg0_collision;
    }

check_primary_water_attribute:
    {
        register u32 rangeValue asm("r0");

        rangeValue = attribute;
        rangeValue -= 76;
        if (rangeValue > 12)
            goto secondary_collision_done;
        waterCollision = 1;
        goto secondary_collision_done;
    }

process_bg0_collision:
    if (parameter == 0)
        goto secondary_collision_done;
    {
        register struct BackgroundInfo *backgroundTemporary asm("r1");
        register s32 bound asm("r0");
        register s32 coordinate asm("r3");
        register u32 width asm("r1");

        backgroundTemporary = background;
        bound = backgroundTemporary->bg0Height;
        bound <<= 6;
        coordinate = stack.yPosition;
        if (coordinate >= bound)
            goto bg0_out_of_bounds;
        width = backgroundTemporary->bg0Width;
        bound = width;
        bound <<= 6;
        coordinate = stack.xPosition;
        if (coordinate < bound)
            goto bg0_in_bounds;

bg0_out_of_bounds:
        return collision->unk_00 << 16;

bg0_in_bounds:
        {
            register u32 tileIndex asm("r0");
            register struct BackgroundInfo *backgroundReload asm("r3");
            register const u16 *tileMap asm("r1");
            register struct BackgroundTileTables *tables asm("r3");
            register const u16 *attributesReload asm("r1");
            register u32 bgAttribute asm("r1");

            tileIndex = tileY;
            tileIndex *= width;
            tileIndex += tileX;
            backgroundReload = background;
            tileMap = backgroundReload->pBg0Data;
            tileIndex <<= 1;
            tileIndex += (u32)tileMap;
            tileIndex = *(u16 *)tileIndex;
            tables = &gUnk_30031F4;
            attributesReload = tables->attributes;
            tileIndex <<= 1;
            tileIndex += (u32)attributesReload;
            bgAttribute = *(u16 *)tileIndex;
            stack.bg0Attribute = bgAttribute;
            parameter = bgAttribute;
            parameter -= 76;
            if (parameter > 12)
                goto secondary_collision_done;
            waterCollision = 1;
            if (bgAttribute == 81)
                overrideType = 12;
            else if (bgAttribute == 82)
                overrideType = 13;
            else if (bgAttribute == 83)
                overrideType = 14;
            else if (bgAttribute == 84)
                overrideType = 15;
            else if (bgAttribute == 85)
                overrideType = 16;
            else if (bgAttribute == 86)
                overrideType = 17;
            else if (bgAttribute == 87)
                overrideType = 18;
            else if (bgAttribute == 88)
                overrideType = 19;
        }

        {
            register u32 switchState asm("r1");
            register u32 maskedState asm("r0");

            switchState = gSwitchStates[4];
            maskedState = 1;
            maskedState &= switchState;
            if (maskedState == 0)
            {
                parameter = stack.bg0Attribute;
                if (parameter == 76)
                    overrideType = 12;
                else if (parameter == 77)
                    overrideType = 17;
                else if (parameter == 78)
                    overrideType = 18;
                else if (parameter == 79)
                    overrideType = 19;
            }
        }
    }

secondary_collision_done:

    if (waterCollision == 1)
    {
        if (overrideType != 0 || collision->unk_00 != 1)
            collision->unk_00 = overrideType;
    }
    collision->unk_02 = waterCollision;
    return (collision->unk_00 << 16) | collision->unk_02;
}

s32 GetBg2CollisionTypeAtTile(s32 y, s32 x)
{
    register u32 yCoord asm("r5");
    register u32 xCoord asm("r2");
    register u32 xSaved asm("r6");
    struct Unk_30000A0 *collision;
    register struct Unk_30000A0 *collisionTemp asm("r1");
    register struct BackgroundInfo *background asm("r4");
    register s32 result asm("r3");
    register s32 zero asm("r0");
    register u32 indexTemporary asm("r0");
    register const u16 *tileMap asm("r1");
    u16 tile;

    y <<= 16;
    y = (u32)y >> 16;
    asm("" : "+r"(y));
    yCoord = y;
    x <<= 16;
    xCoord = (u32)x >> 16;
    xSaved = xCoord;
    collisionTemp = &gUnk_30000A0;
    zero = 0;
    collisionTemp->unk_04 = zero;
    result = 0;
    background = &gBackgroundInfo;
    collision = collisionTemp;

    if (yCoord >= background->bg1Height || xCoord >= background->bg1Width)
        return 0;

    indexTemporary = background->bg2Width;
    indexTemporary *= yCoord;
    xCoord = indexTemporary + xSaved;
    tileMap = background->pBg2Data;
    indexTemporary = xCoord << 1;
    indexTemporary += (u32)tileMap;
    tile = *(u16 *)indexTemporary;
    tile = gUnk_30031F4.attributes[tile];

    if ((u32)(tile - 96) <= 7)
    {
        result = 1;
        if (tile != 96)
        {
            result = 2;
            if (tile != 97)
            {
                result = 3;
                if (tile != 98)
                {
                    result = 4;
                    if (tile != 99)
                    {
                        result = 5;
                        if (tile != 100)
                        {
                            result = 6;
                            if (tile != 101)
                            {
                                result = 8;
                                if (tile == 102)
                                    result = 7;
                            }
                        }
                    }
                }
            }
        }
    }
    else if ((u32)(tile - 132) <= 10)
    {
        result = tile - 123;
    }

    collision->unk_04 = result;
    return result;
}

s32 TryTriggerRoomTransitionAtTile(s32 y, s32 x)
{
    register s32 temporary asm("r2");
    register u32 yCoord asm("r4");
    register u32 xCoord asm("r3");
    register s32 result asm("r6");
    const u8 *entry;
    s16 *modeState;

    temporary = y;
    asm("" : "+r"(temporary));
    temporary <<= 16;
    yCoord = (u32)temporary >> 16;
    x <<= 16;
    asm("" : "+r"(x));
    xCoord = (u32)x >> 16;
    result = 0;
    {
        register s16 *modePointer asm("r1");
        register u32 offset asm("r5");

        modePointer = &gSubGameMode;
        offset = 0;
        asm("" : "+r"(offset));
        /* agbcc otherwise materializes an unnecessary scaled pointer for this signed halfword load. */
        asm("ldrsh %0, [%1, %2]" : "=r"(temporary) : "r"(modePointer), "r"(offset));
        modeState = modePointer;
    }

    if (temporary != 2)
        return y;

    entry = (const u8 *)sRoomStartDataTables[gUnk_3000023];
    while (entry[0] != 0)
    {
        if (entry[0] == 2 && entry[1] == gCurrentRoom &&
            entry[2] <= xCoord && xCoord <= entry[3] &&
            entry[4] <= yCoord && yCoord <= entry[5])
        {
            gUnk_3000025 = entry[6];
            *modeState = 3;
            SetRoomTransitionTileValues(0);
            ApplyRoomTransitionTileOffset(0);
            StartRoomTransitionFade(2);
            if (gUnk_3000025 == 0)
                gStageExitType = 6;
            result = 1;
            break;
        }
        entry += 12;
    }

    return result;
}

void CheckRoomTransitionAtPosition(u16 y, u16 x)
{
    const u8 *entry;
    u16 tileY;
    u16 tileX;

    if (gSubGameMode != 2)
        return;

    tileY = y >> 6;
    tileX = x >> 6;
    entry = (const u8 *)sRoomStartDataTables[gUnk_3000023];
    while (entry[0] != 0)
    {
        s32 fadeMusic;

        fadeMusic = 0;
        if (entry[0] != 1 && entry[0] != 3 && entry[0] != 4)
        {
            if (entry[0] != 5)
            {
                entry += 12;
                continue;
            }
            fadeMusic = 1;
        }

        if (entry[1] == gCurrentRoom &&
            entry[2] <= tileX && tileX <= entry[3] &&
            entry[4] <= tileY && tileY <= entry[5])
        {
            gUnk_3000025 = entry[6];
            gSubGameMode = 3;
            SetRoomTransitionTileValues(0);
            ApplyRoomTransitionTileOffset(0);
            StartRoomTransitionFade(entry[0]);
            if (fadeMusic != 0)
            {
                FadeOutMusicForPause();
                gUnk_3000C37 = 1;
            }
            return;
        }

        entry += 12;
    }
}

void ApplyRoomTransitionTileOffset(u8 value)
{
    register struct BackgroundInfo *background asm("r9");
    register struct BackgroundInfo *widthBackground asm("r1");
    register u16 *loadedMap asm("r1");
    register s32 firstIndex asm("r3");
    register s32 secondIndex asm("r4");
    register s32 temporary asm("r0");
    u16 *data;
    u16 *map;
    u16 tile;
    s32 count;

    if (gUnk_300342C == 0)
        return;

    count = gUnk_300342C;
    if (count != 0)
    {
        background = &gBackgroundInfo;
        asm("" : : "r"(background));
        loadedMap = background->pBg1Data;
        asm("" : : "r"(loadedMap));
        map = loadedMap;
        data = (u16 *)0x02039F80 + count;
        do
        {
            s32 i;

            data--;
            tile = *data;
            data--;
            count -= 2;
            firstIndex = *data;
            widthBackground = background;
            temporary = widthBackground->bg1Width;
            temporary = firstIndex + temporary;
            temporary <<= 16;
            secondIndex = (u32)temporary >> 16;
            tile += value;
            i = 1;
            do
            {
                map[firstIndex] = tile;
                map[secondIndex] = tile + 4;
                temporary = tile + 2;
                temporary <<= 16;
                tile = temporary >> 16;
                temporary = firstIndex + 1;
                asm("" : "+r"(temporary));
                temporary <<= 16;
                firstIndex = (u32)temporary >> 16;
                temporary = secondIndex + 1;
                asm("" : "+r"(temporary));
                temporary <<= 16;
                secondIndex = (u32)temporary >> 16;
                i--;
            }
            while (i >= 0);
        }
        while (count != 0);
    }

    if (value == 0)
        gUnk_300342C = 0;
}

void SetRoomTransitionTileValues(s32 value)
{
    u16 tileValue;
    register const u16 *data asm("r5");
    register struct BackgroundInfo *background asm("r6");
    register s32 count asm("r4");
    register u32 mask asm("ip");
    register u32 descriptor asm("r2");
    register u32 packed asm("r3");
    register u32 index asm("r0");
    register u32 width asm("r1");
    register u16 *map asm("r1");

    value <<= 16;
    tileValue = (u32)value >> 16;
    data = (const u16 *)0x02039F00;
    background = &gBackgroundInfo;
    count = 63;
    mask = 0xFF;
    do
    {
        /* agbcc otherwise allocates the packed descriptor in r0. */
        asm("ldrh %0, [%1]" : "=r"(descriptor) : "r"(data));
        packed = descriptor << 16;
        asm("" : "+r"(packed));
        if (packed != 0)
        {
            width = background->bg1Width;
            index = mask;
            index &= descriptor;
            index *= width;
            width = packed >> 24;
            index += width;
            map = background->pBg1Data;
            asm("" : : "r"(map));
            map[index] = tileValue;
        }
        data++;
        count--;
    }
    while (count >= 0);
}

void StartRoomTransitionFade(u8 type)
{
    if (type == 1 || type == 5)
    {
        gWindow.content = 0;
        gColorFading.type = 5;
    }
    else if (type == 4)
    {
        gColorFading.unk_2 = 0;
        gColorFading.type = 2;
        func_80701F4();
        gSubGameMode = 6;
        gSpriteAiDropTimer = 0;
        gStageExitType = 0x80;
    }
    else
    {
        gColorFading.unk_2 = 0;
        gColorFading.type = 2;
        func_80701F4();
    }
}
