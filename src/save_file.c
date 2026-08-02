#include "global_data.h"

extern u8 gHasTemporarySave;
extern s8 gCurrentStageID;
extern u8 gCurrentStageNumber;
extern u8 gCurrentPassage;
extern u8 gSelectedSaveFile;
extern u8 gSaveFlag;
extern u8 gUnk_3000014;
extern u8 gTitleScreenStyle;
extern u8 gUnk_300001D;

extern u32 sUnk_86391C4[][6];
extern const u8 sBackupSramTestSignature[];
extern const u8 sSaveFooterSignature[];
extern const u8 sMainSaveHeaderSignature1[];
extern const u8 sMainSaveHeaderSignature2[];
extern const u8 sUsTitleSaveVersionString[];
extern const u8 sSaveSlotValidationSignatures[];
extern const u8 sStageSelectionSaveSignature[];
extern u8 * const sPrimarySaveHeaderBuffers[];
extern u8 * const sSecondarySaveHeaderBuffers[];
extern u8 * const sMainSaveDataBuffers[];

extern u8 gLanguage;
extern u8 gUnk_300001C;
extern u8 gUnk_3003BF8[];
extern u32 gUnk_3000040;
extern const u8 sTemporarySaveHeaderSignature1[];
extern const u8 sTemporarySaveHeaderSignature2[];

void func_8000E94(void);
void func_8000EAC(void);
void func_8000CE0(void);
void func_8000FBC(void);
void func_800101C(void);
void func_8001038(void);
u32 ClassifyAndRepairSaveSlotCopy(u8 selectedFile);
u32 ValidateStageSelectionSaveSlot(u8 selectedFile);
u32 ValidateMainSaveSlot(u8 selectedFile, u32 statusValue);
u32 ValidateSelectedSaveHeader(void);
extern const u8 sPassageNameValidationStrings[];
extern const u8 sStageNameValidationStrings[];

void RestoreGameStateFromTemporarySave(void);
void SerializeGlobalSaveDataToWorkingBuffer(void);
void RestoreGlobalSaveDataFromWorkingBuffer(void);
void RestoreTempSaveStageSelection(void);
u32 ValidateAndClearSaveSlotCopy(u8 copy, u8 selectedFile);


void func_8000E54(void);
void func_8000EEC(void);
void func_8000FE8(void);
void func_8000F3C(void);
void func_8000F64(void);

void func_8000F90(u32 dmaControl);
void SramWriteUnchecked(u8 *src, u8 *dest, u32 size);
u32 SramWriteChecked(u8 *src, u8 *dest, u32 size);

extern u8 gStageEntryPauseMenuDisabled;
extern u8 gStageRoomTableIndex;
extern u32 gUnk_3000040;
extern const u8 sTemporarySaveHeaderSignature1[];
extern const u8 sTemporarySaveHeaderSignature2[];
extern u8 * const sStageSelectionSaveBuffers[];
extern u8 gDifficulty;
extern u16 gMedalCount;
extern u32 gTotalScore;
extern u8 gUnk_300001C;
extern u8 gCurrentCollection[];
extern u8 gHighScoreTable[];
extern u16 gMinigameHighScores[];
extern u8 gUnk_3003BF8[];

void SerializeGameStateToTemporarySave(void);
void func_8000EC4(void);

typedef struct { u32 words[2]; } SaveBlock8;
typedef struct { u32 words[3]; } SaveBlock12;
typedef struct { u32 words[11]; } SaveBlock44;

extern u8 gUnk_3000025;
extern u8 gRoomTransitionTileDataCount;
extern u8 gTimerState;
extern u16 gClearedRoomTileCount;
extern u16 gUnk_300003A;
extern u16 gGoldenBossTransitionBg0Y;
extern SaveBlock8 gWarioDashAfterimage;
extern SaveBlock8 gCurrentCarriedSprite;
extern SaveBlock8 gWarioMotionAfterimage;
extern SaveBlock8 gCurrentWarioEffect;
extern u32 gHeartMeter;
extern u32 gHeartGauge;
extern SaveBlock12 gWarioDustEffect1;
extern SaveBlock12 gWarioDustEffect2;
extern SaveBlock44 gSpriteData[];
extern u8 gSwitchPressed;
extern u8 gCollectedNEJewelPiece;
extern u8 gCollectedSEJewelPiece;
extern u8 gCollectedSWJewelPiece;
extern u8 gUnk_3000C04;
extern u8 gUnk_3000C05;
extern u8 gEnemyScoreDropCounter;
extern u8 gCollectedNWJewelPiece;
extern u8 gCollectedCD;
extern u8 gCollectedKeyzer;
extern u8 gUnk_3000C0E;
extern u32 gStageScore;
extern u32 gStageFrameCounter;
extern u8 gUnk_3000524[];
extern u8 gUnk_3000544[];
extern u8 gPersistentSpriteData[][64];
extern u8 gSwitchStates[];
extern u8 gStageTimerDigits[];
extern s8 gScoreDigits[];
extern u16 gBg0XPosition;
extern u16 gBg0YPosition;
extern u16 gBg1XPosition;
extern u16 gBg1YPosition;
extern u16 gBg2XPosition;
extern u16 gBg2YPosition;
extern u16 gBg3XPosition;
extern u16 gBg3YPosition;
void *memcpy(void *destination, const void *source, u32 size);

void BuildTitleScreenSaveHeader(void);
void ValidateAndRepairSaveHeaderCopies(void);
u32 ValidateSaveHeaderBlock(u8 saveType);
void InitializeTemporarySaveBuffer(void);
void SerializeGameStateToTemporarySave(void);
void RefreshTemporarySaveStageId(void);
void RestoreGameStateFromTemporarySave(void);
void BuildMainSaveWorkingBuffer(void);
void SerializeGlobalSaveDataToWorkingBuffer(void);
void RestoreGlobalSaveDataFromWorkingBuffer(void);
void CopySaveFileBlock16(u8 *destination, const u8 *source);
void CopySaveFileBlock8(u8 *destination, const u8 *source);
void RunBackupSramSelfTest(void);
void DmaLoadSelectedSaveFileBlocks(void);
void InitializeSaveFileStatuses(void);
u32 ClassifyAndRepairSaveSlotCopy(u8 selectedFile);
u32 ValidateAndClearSaveSlotCopy(u8 copy, u8 selectedFile);
u32 ValidateMainSaveSlot(u8 selectedFile, u32 statusValue);
void FlushSaveFileAndMaybeRestoreTempSave(void);
void FlushSaveFileAndRefreshSaveData(void);
void BuildSelectedSaveValidationHeader(void);
u32 ValidateSelectedSaveHeader(void);
void BuildTemporaryStageSelectionSave(void);
u32 ValidateStageSelectionSaveSlot(u8 selectedFile);
void RestoreTempSaveStageSelection(void);

void BuildTitleScreenSaveHeader(void)
{
    u8 *data;
    u8 *source;
    u32 *checksumPtr;
    u32 checksum;
    u32 value;
    s32 index;

    data = (u8 *)0x02038008;
    *data = 48;
    data++;
    *data = 49;
    data++;
    *data = gTitleScreenStyle;
    data++;
    *data = 0;
    data++;

    index = 0;
    source = sUsTitleSaveVersionString;
    while (index <= 19)
    {
        *data = *(u8 *)(index + (u32)source);
        index++;
        data++;
    }

    checksumPtr = (u32 *)0x02038000;
    value = 0;
    *checksumPtr++ = value;
    value--;
    *checksumPtr = value;
    checksumPtr--;

    checksum = 0;
    index = 3;
    while (index >= 0)
    {
        checksum += *checksumPtr++;
        checksum += *checksumPtr++;
        checksum += *checksumPtr++;
        checksum += *checksumPtr++;
        index--;
    }

    ((u32 *)0x02038000)[0] = checksum;
    checksum = ~checksum;
    ((u32 *)0x02038000)[1] = checksum;
    func_8000E54();
    gUnk_300001D = 1;
}

void ValidateAndRepairSaveHeaderCopies(void)
{
    u16 zero;
    register u32 firstValid asm("r6");
    register u32 secondValid asm("r9");
    register u32 thirdValid asm("r8");
    register vu32 *dma asm("r4");
    register u32 *save0 asm("r5");
    register u32 control asm("r1");
    register u32 clear asm("r2");
    u16 *zeroPtr;

    RunBackupSramSelfTest();
    if (gUnk_3000014 == 0)
    {
        func_8001038();
    }

    firstValid = ValidateSaveHeaderBlock(0);
    secondValid = ValidateSaveHeaderBlock(1);
    thirdValid = ValidateSaveHeaderBlock(2);

    if (firstValid != 0)
    {
        zeroPtr = &zero;
        clear = 0;
        *zeroPtr = clear;
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)zeroPtr;
        save0 = (u32 *)0x02038000;
        dma[1] = (u32)save0;
        control = 0x81000020;
        dma[2] = control;
        (void)dma[2];

        if (thirdValid != 0)
        {
            zeroPtr = &zero;
            *zeroPtr = clear;
            dma[0] = (u32)zeroPtr;
            dma[1] = 0x02038900;
            dma[2] = control;
            (void)dma[2];

            if (secondValid != 0)
            {
                zeroPtr = &zero;
                *zeroPtr = clear;
                dma[0] = (u32)zeroPtr;
                dma[1] = 0x02038040;
                dma[2] = control;
                (void)dma[2];
            }
            else
            {
                dma[0] = 0x02038040;
                dma[1] = (u32)save0;
                dma[2] = 0x80000020;
                (void)dma[2];
                firstValid = 0;
                func_8000E54();
            }
        }
        else
        {
            u32 copyControl;

            dma[0] = 0x02038900;
            dma[1] = (u32)save0;
            copyControl = 0x80000020;
            dma[2] = copyControl;
            (void)dma[2];
            firstValid = 0;
            func_8000E54();

            if (secondValid != 0)
            {
                dma[0] = (u32)save0;
                dma[1] = 0x02038040;
                dma[2] = copyControl;
                (void)dma[2];
                func_8000E94();
            }
        }
    }
    else
    {
        u32 *source;
        register u32 copyControl asm("r5");

        dma = (vu32 *)0x040000D4;
        source = (u32 *)0x02038000;
        dma[0] = (u32)source;
        dma[1] = 0x02038040;
        copyControl = 0x80000020;
        dma[2] = copyControl;
        (void)dma[2];
        func_8000E94();

        if (thirdValid != 0)
        {
            dma[0] = (u32)source;
            dma[1] = 0x02038900;
            dma[2] = copyControl;
            (void)dma[2];
            func_8000EAC();
        }
    }

    if (firstValid == 0)
    {
        register u8 *source asm("r0");
        register u8 *destination asm("r1");
        u32 value;

        source = (u8 *)0x0203800A;
        destination = &gTitleScreenStyle;
        value = *source;
        value = (0 - value) >> 31;
        *destination = value;
    }
    else
    {
        func_8000CE0();
        gTitleScreenStyle = 0;
        BuildTitleScreenSaveHeader();
    }

    gLanguage = 0;
    gUnk_300001D = 1;
}

u32 ValidateSaveHeaderBlock(u8 saveType)
{
    register u32 result asm("r4");
    register u32 *save asm("r6");
    register u32 *ptr asm("r1");
    register u32 sum asm("r2");
    register u32 storedChecksum asm("r5");
    u8 *data;
    register s32 i asm("r3");

    result = 0;
    save = (u32 *)0x02038900;
    if (saveType != 2)
    {
        save = (u32 *)0x02038000;
        if (saveType == 1)
        {
            save = (u32 *)((u8 *)save + 64);
        }
    }

    sum = 0;
    ptr = save;
    storedChecksum = ptr[0];
    data = (u8 *)ptr + 12;
    i = 3;
    do
    {
        sum += *ptr++;
        sum += *ptr++;
        sum += *ptr++;
        sum += *ptr++;
        i--;
    }
    while (i >= 0);

    if (storedChecksum != sum)
    {
        result |= 1;
    }

    {
        register u8 *scan asm("r2");

        register const u8 *table asm("r7");

        scan = data;
        i = 0;
        table = sUsTitleSaveVersionString;
        storedChecksum = 2;
        do
        {
            if (*scan != *(u8 *)(i + (u32)table))
            {
                result |= storedChecksum;
            }
            i++;
            scan++;
        }
        while (i <= 19);
    }

    ptr = save;
    {
        u32 first;

        first = *ptr++;
        if (first != ~*ptr)
        {
            result |= 4;
        }
    }

    return result;
}

void InitializeTemporarySaveBuffer(void)
{
    register u32 *data asm("r4");
    register u32 *checksum asm("r5");
    register u32 sum asm("r1");
    register int i asm("r2");

    gStageEntryPauseMenuDisabled = 0;
    gHasTemporarySave = gStageRoomTableIndex | 0x80;
    gSaveFlag = 2;

    data = (u32 *)0x02039000;
    CopySaveFileBlock16((u8 *)data, sTemporarySaveHeaderSignature1);
    CopySaveFileBlock16((u8 *)0x02039A80, sTemporarySaveHeaderSignature2);

    checksum = data + 4;
    *checksum++ = 0;
    *checksum = -1;
    checksum--;

    SerializeGameStateToTemporarySave();

    sum = 0;
    i = 0x1C0;
    do
    {
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        i--;
    }
    while (i != 0);

    gUnk_3000040 = sum;
    *checksum++ = sum;
    *checksum = ~sum;
    func_8000EC4();
}

#ifndef NONMATCHING
ASM_INCLUDE("asm/disasm_save_file_SerializeGameStateToTemporarySave.s");
#else
void SerializeGameStateToTemporarySave(void)
{
    register u8 *destination asm("r4");
    register u8 *padding asm("r2");
    register u32 zero asm("r1");
    register u32 mask asm("r3");
    s32 i;
    s32 j;
    u16 *clearedTileCount;
    u16 *musicState;
    u16 *unkA;
    u16 *bossBgY;
    register u8 *warioData asm("r8");

    destination = (u8 *)0x02039018;
    *destination++ = gStageRoomTableIndex;
    *destination++ = gCurrentPassage;
    *destination++ = gCurrentStageNumber;
    *destination++ = gUnk_3000025;
    *destination++ = gRoomTransitionTileDataCount;
    *destination++ = gTimerState;

    padding = destination;
    clearedTileCount = &gClearedRoomTileCount;
    musicState = (u16 *)&gGameMusicState;
    unkA = &gUnk_300003A;
    bossBgY = &gGoldenBossTransitionBg0Y;
    warioData = (u8 *)&gWarioData;
    zero = 0;
    mask = 3;
    do
    {
        *destination++ = zero;
        padding++;
    }
    while (((u32)padding & mask) != 0);

    *(u16 *)destination = *clearedTileCount;
    destination += 2;
    *(u16 *)destination = musicState[1];
    destination += 2;

    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        zero = 0;
        mask = 3;
        do
        {
            *destination++ = zero;
            padding++;
        }
        while (((u32)padding & mask) != 0);
    }

    *(u16 *)destination = *unkA;
    destination += 2;
    *(u16 *)destination = *bossBgY;
    destination += 2;

    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        zero = 0;
        mask = 3;
        do
        {
            *destination++ = zero;
            padding++;
        }
        while (((u32)padding & mask) != 0);
    }

    memcpy(destination, warioData, 60);
    destination += 60;

    *(SaveBlock8 *)destination = gWarioDashAfterimage;
    destination += 8;
    *(SaveBlock8 *)destination = gCurrentCarriedSprite;
    destination += 8;
    *(SaveBlock8 *)destination = gWarioMotionAfterimage;
    destination += 8;
    *(SaveBlock8 *)destination = gCurrentWarioEffect;
    destination += 8;
    *(u32 *)destination = gHeartMeter;
    destination += 4;
    *(u32 *)destination = gHeartGauge;
    destination += 4;
    *(SaveBlock12 *)destination = gWarioDustEffect1;
    destination += 12;
    *(SaveBlock12 *)destination = gWarioDustEffect2;
    destination += 12;

    i = 0;
    do
    {
        *(SaveBlock44 *)destination = gSpriteData[i];
        destination += 44;
        i++;
    }
    while (i <= 23);

    {
        register u8 *switchPressed asm("r9");
        register u8 *northEastJewel asm("r8");
        register u8 *southEastJewel asm("r12");
        register u8 *southWestJewel asm("r10");
        register SaveBlock12 *secondarySprite asm("r3");
        register s32 secondaryIndex asm("r2");

        switchPressed = &gSwitchPressed;
        northEastJewel = &gCollectedNEJewelPiece;
        southEastJewel = &gCollectedSEJewelPiece;
        southWestJewel = &gCollectedSWJewelPiece;
        secondarySprite = (SaveBlock12 *)gSecondarySpriteData;
        secondaryIndex = 7;
        do
        {
            *(SaveBlock12 *)destination = *secondarySprite;
            destination += 12;
            secondarySprite++;
            secondaryIndex--;
        }
        while (secondaryIndex >= 0);

        { register u8 *source asm("r1"); source = switchPressed; *destination++ = *source; }
    { register u8 *source asm("r2"); source = &gUnk_3000C04; *destination++ = *source; }
    *destination++ = gUnk_3000C05;
    *destination++ = gEnemyScoreDropCounter;
    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        register u32 padValue asm("r3");
        register u32 padMask asm("r1");

        padValue = 0;
        padMask = 3;
        do
        {
            *destination++ = padValue;
            padding++;
        }
        while (((u32)padding & padMask) != 0);
    }

        { register u8 *source asm("r6"); source = northEastJewel; *destination++ = *source; }
        *destination++ = *southEastJewel;
        { register u8 *source asm("r1"); source = southWestJewel; *destination++ = *source; }
    *destination++ = gCollectedNWJewelPiece;
    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        register u32 padValue asm("r3");
        register u32 padMask asm("r1");

        padValue = 0;
        padMask = 3;
        do
        {
            *destination++ = padValue;
            padding++;
        }
        while (((u32)padding & padMask) != 0);
    }

    *destination++ = gCollectedCD;
    *destination++ = gCollectedKeyzer;
        { register u8 *source asm("r6"); source = switchPressed; *destination++ = *source; }
        *destination++ = gUnk_3000C0E;
    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        register u32 padValue asm("r3");
        register u32 padMask asm("r1");

        padValue = 0;
        padMask = 3;
        do
        {
            *destination++ = padValue;
            padding++;
        }
        while (((u32)padding & padMask) != 0);
    }

    }

    *(u32 *)destination = gTotalScore;
    destination += 4;
    *(u32 *)destination = gStageScore;
    destination += 4;
    *(u32 *)destination = gStageFrameCounter;
    destination += 4;

    {
        register s32 index asm("r2");
        register u8 *source asm("r1");

        index = 0;
        source = gUnk_3000524;
        do
        {
            *destination++ = *(u8 *)(index + (u32)source);
            index++;
        }
        while (index <= 31);

        if ((index & 3) != 0)
        {
            register u32 padValue asm("r3");
            register u32 padMask asm("r1");

            padValue = 0;
            padMask = 3;
            do
            {
                *destination++ = padValue;
                index++;
            }
            while ((index & padMask) != 0);
        }
    }

    {
        register s32 index asm("r2");
        register u8 *source asm("r1");

        index = 0;
        source = gUnk_3000544;
        do
        {
            *destination++ = *(u8 *)(index + (u32)source);
            index++;
        }
        while (index <= 31);

        if ((index & 3) != 0)
        {
            register u32 padValue asm("r3");
            register u32 padMask asm("r1");

            padValue = 0;
            padMask = 3;
            do
            {
                *destination++ = padValue;
                index++;
            }
            while ((index & padMask) != 0);
        }
    }

    {
        register u32 cursor asm("r1");
        register u8 *base asm("r5");
        register s32 next asm("r3");
        register s32 remaining asm("r2");

        cursor = 0;
        base = (u8 *)gPersistentSpriteData;
        do
        {
            register u32 offset asm("r0");

            offset = cursor << 6;
            next = cursor + 1;
            cursor = offset + (u32)base;
            remaining = 63;
            do
            {
                *destination++ = *(u8 *)cursor;
                cursor++;
                remaining--;
            }
            while (remaining >= 0);
            cursor = next;
        }
        while ((s32)cursor <= 15);
    }

    {
        register s32 index asm("r2");
        register u8 *source asm("r1");

        index = 0;
        source = gSwitchStates;
        do
        {
            *destination++ = *(u8 *)(index + (u32)source);
            index++;
        }
        while (index <= 4);

        if ((index & 3) != 0)
        {
            register u32 padValue asm("r3");
            register u32 padMask asm("r1");

            padValue = 0;
            padMask = 3;
            do
            {
                *destination++ = padValue;
                index++;
            }
            while ((index & padMask) != 0);
        }
    }

    {
        register s32 index asm("r2");
        register u8 *source asm("r1");

        index = 0;
        source = gStageTimerDigits;
        do
        {
            *destination++ = *(u8 *)(index + (u32)source);
            index++;
        }
        while (index <= 2);

        if ((index & 3) != 0)
        {
            register u32 padValue asm("r3");
            register u32 padMask asm("r1");

            padValue = 0;
            padMask = 3;
            do
            {
                *destination++ = padValue;
                index++;
            }
            while ((index & padMask) != 0);
        }
    }

    {
        register s32 index asm("r2");
        register s8 *source asm("r1");

        index = 0;
        source = gScoreDigits;
        do
        {
            *destination++ = *(u8 *)(index + (u32)source);
            index++;
        }
        while (index <= 4);

        if ((index & 3) != 0)
        {
            register u32 padValue asm("r3");
            register u32 padMask asm("r1");

            padValue = 0;
            padMask = 3;
            do
            {
                *destination++ = padValue;
                index++;
            }
            while ((index & padMask) != 0);
        }
    }

    {
        register u32 cursor asm("r1");
        register u8 *base asm("r5");
        register s32 next asm("r3");
        register s32 remaining asm("r2");

        cursor = 0;
        base = gCurrentCollection;
        do
        {
            next = cursor + 1;
            cursor = (((cursor << 1) + cursor) << 3) + (u32)base;
            remaining = 3;
            do
            {
                *(u32 *)destination = *(u32 *)cursor;
                destination += 4;
                cursor += 4;
                remaining--;
            }
            while (remaining >= 0);
            cursor = next;
        }
        while ((s32)cursor <= 4);
    }

    *(u32 *)destination = *(u32 *)&gUnk_30000D8;
    destination += 4;
    *(SaveBlock8 *)destination = *(SaveBlock8 *)&gCameraPositionState;
    destination += 8;
    *(u16 *)destination = gBg0XPosition; destination += 2;
    *(u16 *)destination = gBg0YPosition; destination += 2;
    *(u16 *)destination = gBg1XPosition; destination += 2;
    *(u16 *)destination = gBg1YPosition; destination += 2;
    *(u16 *)destination = gBg2XPosition; destination += 2;
    *(u16 *)destination = gBg2YPosition; destination += 2;
    *(u16 *)destination = gBg3XPosition; destination += 2;
    *(u16 *)destination = gBg3YPosition; destination += 2;

    CopySaveFileBlock8(destination, sSaveFooterSignature);
}
#endif

void RefreshTemporarySaveStageId(void)
{
    if (gHasTemporarySave != 0)
    {
        RestoreGameStateFromTemporarySave();
        gCurrentStageID = sUnk_86391C4[gCurrentPassage][gCurrentStageNumber];
    }
}

void RestoreGameStateFromTemporarySave(void)
{
    register u8 *source asm("r4");
    register u8 *padding asm("r2");
    s32 i;

    source = (u8 *)0x02039018;
    gStageRoomTableIndex = *source++;
    gCurrentPassage = *source++;
    gCurrentStageNumber = *source++;
    gUnk_3000025 = *source++;
    gRoomTransitionTileDataCount = *source++;
    gTimerState = *source++;

    {
        register u16 *cleared asm("r3");
        register u16 *music asm("r5");
        register u16 *unkA asm("r6");
        register u16 *bossY asm("r7");
        register u8 *wario asm("r12");
        register u32 mask asm("r1");

        padding = source;
        cleared = &gClearedRoomTileCount;
        music = (u16 *)&gGameMusicState;
        unkA = &gUnk_300003A;
        bossY = &gGoldenBossTransitionBg0Y;
        wario = (u8 *)&gWarioData;
        mask = 3;
        do
        {
            source++;
            padding++;
        }
        while (((u32)padding & mask) != 0);

        *cleared = *(u16 *)source;
        source += 2;
        music[1] = *(u16 *)source;
        source += 2;

        padding = source;
        if (((u32)source & 3) != 0)
        {
            mask = 3;
            do
            {
                source++;
                padding++;
            }
            while (((u32)padding & mask) != 0);
        }

        *unkA = *(u16 *)source;
        source += 2;
        gGoldenBossTransitionBg0Y = *(u16 *)source;
        source += 2;

        padding = source;
        if (((u32)source & 3) != 0)
        {
            mask = 3;
            do
            {
                source++;
                padding++;
            }
            while (((u32)padding & mask) != 0);
        }

        memcpy(wario, source, 60);
        source += 60;
    }

    gWarioDashAfterimage = *(SaveBlock8 *)source; source += 8;
    gCurrentCarriedSprite = *(SaveBlock8 *)source; source += 8;
    gWarioMotionAfterimage = *(SaveBlock8 *)source; source += 8;
    gCurrentWarioEffect = *(SaveBlock8 *)source; source += 8;
    gHeartMeter = *(u32 *)source; source += 4;
    gHeartGauge = *(u32 *)source; source += 4;
    gWarioDustEffect1 = *(SaveBlock12 *)source; source += 12;
    gWarioDustEffect2 = *(SaveBlock12 *)source; source += 12;

    i = 0;
    do
    {
        gSpriteData[i] = *(SaveBlock44 *)source;
        source += 44;
        i++;
    }
    while (i <= 23);

    {
        register u8 *switchPressed asm("r9");
        register u8 *northEastJewel asm("r12");
        register u8 *southEastJewel asm("r8");
        register u8 *southWestJewel asm("r10");
        register SaveBlock12 *secondarySprite asm("r3");
        register s32 secondaryIndex asm("r2");

        switchPressed = &gSwitchPressed;
        northEastJewel = &gCollectedNEJewelPiece;
        southEastJewel = &gCollectedSEJewelPiece;
        southWestJewel = &gCollectedSWJewelPiece;
        secondarySprite = (SaveBlock12 *)gSecondarySpriteData;
        secondaryIndex = 7;
        do
        {
            *secondarySprite = *(SaveBlock12 *)source;
            source += 12;
            secondarySprite++;
            secondaryIndex--;
        }
        while (secondaryIndex >= 0);

        {
            register u8 value asm("r0");
            register u8 *destination1 asm("r1");
            register u8 *destination2 asm("r2");
            register u8 *destination3 asm("r3");
            register u8 *destination5 asm("r5");
            register u8 *destination6 asm("r6");
            u8 *destination7;

            value = *source; destination1 = switchPressed; *destination1 = value; source++;
            value = *source; destination2 = &gUnk_3000C04; *destination2 = value; source++;
            value = *source; destination3 = &gUnk_3000C05; *destination3 = value; source++;
            value = *source; destination5 = &gEnemyScoreDropCounter; *destination5 = value; source++;
            padding = source;
            if (((u32)source & 3) != 0)
            {
                register u32 mask asm("r1");
                mask = 3;
                do { source++; padding++; } while (((u32)padding & mask) != 0);
            }

            value = *source; destination6 = northEastJewel; *destination6 = value; source++;
            value = *source; destination7 = southEastJewel; *destination7 = value;
            __asm__("" : : "r"(destination1), "r"(destination2), "r"(destination3), "r"(destination5), "r"(destination6));
            source++;
            value = *source; destination1 = southWestJewel; *destination1 = value; source++;
            value = *source; destination2 = &gCollectedNWJewelPiece; *destination2 = value; source++;
            padding = source;
            if (((u32)source & 3) != 0)
            {
                register u32 mask asm("r1");
                mask = 3;
                do { source++; padding++; } while (((u32)padding & mask) != 0);
            }

            value = *source; destination3 = &gCollectedCD; *destination3 = value; source++;
            value = *source; destination5 = &gCollectedKeyzer; *destination5 = value; source++;
            value = *source; destination6 = switchPressed; *destination6 = value; source++;
            value = *source; destination7 = &gUnk_3000C0E; *destination7 = value;
            __asm__("" : : "r"(destination1), "r"(destination2), "r"(destination3), "r"(destination5), "r"(destination6));
            source++;
        }
        padding = source;
        if (((u32)source & 3) != 0)
        {
            register u32 mask asm("r1");
            mask = 3;
            do { source++; padding++; } while (((u32)padding & mask) != 0);
        }
    }

    gTotalScore = *(u32 *)source; source += 4;
    gStageScore = *(u32 *)source; source += 4;
    gStageFrameCounter = *(u32 *)source; source += 4;

    {
        register s32 index asm("r2");
        register u8 *destination asm("r3");
        index = 0; destination = gUnk_3000524;
        do { *(u8 *)(index + (u32)destination) = *source++; index++; } while (index <= 31);
        if ((index & 3) != 0)
        {
            register u32 mask asm("r1"); mask = 3;
            do { source++; index++; } while ((index & mask) != 0);
        }
    }
    {
        register s32 index asm("r2");
        register u8 *destination asm("r3");
        index = 0; destination = gUnk_3000544;
        do { *(u8 *)(index + (u32)destination) = *source++; index++; } while (index <= 31);
        if ((index & 3) != 0)
        {
            register u32 mask asm("r1"); mask = 3;
            do { source++; index++; } while ((index & mask) != 0);
        }
    }
    {
        register u32 cursor asm("r1");
        register u8 *base asm("r5");
        register s32 next asm("r3");
        register s32 remaining asm("r2");
        cursor = 0; base = (u8 *)gPersistentSpriteData;
        do
        {
            register u32 offset asm("r0");
            offset = cursor << 6;
            next = cursor + 1;
            cursor = offset + (u32)base;
            remaining = 63;
            do { *(u8 *)cursor = *source++; cursor++; remaining--; } while (remaining >= 0);
            cursor = next;
        }
        while ((s32)cursor <= 15);
    }
    {
        register s32 index asm("r2"); register u8 *destination asm("r3");
        index = 0; destination = gSwitchStates;
        do { *(u8 *)(index + (u32)destination) = *source++; index++; } while (index <= 4);
        if ((index & 3) != 0) { register u32 mask asm("r1"); mask = 3; do { source++; index++; } while ((index & mask) != 0); }
    }
    {
        register s32 index asm("r2"); register u8 *destination asm("r3");
        index = 0; destination = gStageTimerDigits;
        do { *(u8 *)(index + (u32)destination) = *source++; index++; } while (index <= 2);
        if ((index & 3) != 0) { register u32 mask asm("r1"); mask = 3; do { source++; index++; } while ((index & mask) != 0); }
    }
    {
        register s32 index asm("r2"); register s8 *destination asm("r3");
        index = 0; destination = gScoreDigits;
        do { *(u8 *)(index + (u32)destination) = *source++; index++; } while (index <= 4);
        if ((index & 3) != 0) { register u32 mask asm("r1"); mask = 3; do { source++; index++; } while ((index & mask) != 0); }
    }
    {
        register s32 index asm("r1"); register u8 *base asm("r5"); register s32 next asm("r3"); register s32 remaining asm("r2");
        index = 0; base = gCurrentCollection;
        do
        {
            register u8 *destination asm("r1");
            next = index + 1;
            destination = (u8 *)(((((index << 1) + index) << 3)) + (u32)base);
            remaining = 3;
            do { *(u32 *)destination = *(u32 *)source; source += 4; destination += 4; remaining--; } while (remaining >= 0);
            index = next;
        }
        while (index <= 4);
    }

    *(u32 *)&gUnk_30000D8 = *(u32 *)source; source += 4;
    *(SaveBlock8 *)&gCameraPositionState = *(SaveBlock8 *)source; source += 8;
    gBg0XPosition = *(u16 *)source; source += 2;
    gBg0YPosition = *(u16 *)source; source += 2;
    gBg1XPosition = *(u16 *)source; source += 2;
    gBg1YPosition = *(u16 *)source; source += 2;
    gBg2XPosition = *(u16 *)source; source += 2;
    gBg2YPosition = *(u16 *)source; source += 2;
    gBg3XPosition = *(u16 *)source; source += 2;
    gBg3YPosition = *(u16 *)source;
}

void BuildMainSaveWorkingBuffer(void)
{
    u32 *data;
    u32 *checksum;
    u32 sum;
    s32 i;

    data = (u32 *)0x02038100;
    CopySaveFileBlock16((u8 *)data, sMainSaveHeaderSignature1);
    CopySaveFileBlock16((u8 *)0x02038260, sMainSaveHeaderSignature2);

    checksum = data + 4;
    __asm__ volatile("" : "+r"(checksum));
    *checksum++ = 0;
    *checksum = -1;
    checksum--;

    SerializeGlobalSaveDataToWorkingBuffer();

    sum = 0;
    i = 14;
    do
    {
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        sum += *data++;
        i--;
    }
    while (i >= 0);

    *checksum++ = sum;
    sum = ~sum;
    *checksum = sum;
    *(u8 *)0x020382E0 = 0;
    func_8000EEC();
}

void SerializeGlobalSaveDataToWorkingBuffer(void)
{
    register u8 *destination asm("r1");
    register u8 *padding asm("r2");
    register u16 *medal asm("r5");
    register u32 *totalScore asm("r6");
    u8 *unknown;
    register const u8 *footer asm("ip");
    register u32 zero asm("r4");
    register u32 work asm("r3");

    destination = (u8 *)0x02038118;
    *destination++ = gDifficulty;
    *destination++ = gCurrentPassage;
    *destination++ = gCurrentStageNumber;

    padding = destination;
    medal = &gMedalCount;
    totalScore = &gTotalScore;
    unknown = &gUnk_300001C;
    __asm__ volatile("" : "+r"(unknown));
    footer = sSaveFooterSignature;
    zero = 0;
    work = 3;
    do
    {
        *destination++ = zero;
        padding++;
    }
    while (((u32)padding & work) != 0);

    *(u16 *)destination = *medal;
    destination += 2;
    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        zero = 0;
        work = 3;
        do
        {
            *destination++ = zero;
            padding++;
        }
        while (((u32)padding & work) != 0);
    }

    *(u32 *)destination = *totalScore;
    destination += 4;

    {
        register int outer asm("r3");
        register u8 *base asm("r6");
        register u32 offset asm("r5");
        register u32 *source asm("r4");
        register int inner asm("r2");

        outer = 0;
        base = gCurrentCollection;
        offset = 0;
        do
        {
            source = (u32 *)(offset + (u32)base);
            inner = 5;
            do
            {
                *(u32 *)destination = *source++;
                destination += 4;
                inner--;
            }
            while (inner >= 0);
            __asm__ volatile("" : "+r"(offset));
            offset += 24;
            outer++;
        }
        while (outer <= 6);
    }

    {
        register int cursor asm("r3");
        register u8 *base asm("r5");
        register int next asm("r4");
        register int inner asm("r2");
        register u32 shifted asm("r0");

        cursor = 0;
        base = gHighScoreTable;
        do
        {
            next = cursor + 1;
            shifted = cursor << 4;
            cursor = shifted + (u32)base;
            inner = 3;
            do
            {
                *(u32 *)destination = *(u32 *)cursor;
                destination += 4;
                cursor += 4;
                inner--;
            }
            while (inner >= 0);
            cursor = next;
        }
        while (cursor <= 6);
    }

    {
        register u16 *source asm("r3");
        register int inner asm("r2");

        source = gMinigameHighScores;
        inner = 2;
        do
        {
            *(u16 *)destination = *source;
            destination += 2;
            source++;
            inner--;
        }
        while (inner >= 0);
    }

    padding = (u8 *)3;
    zero = 0;
    work = 3;
    do
    {
        *destination++ = zero;
        padding++;
    }
    while (((u32)padding & work) != 0);

    *destination++ = *unknown;
    padding = destination;
    if (((u32)destination & 3) != 0)
    {
        zero = 0;
        work = 3;
        do
        {
            *destination++ = zero;
            padding++;
        }
        while (((u32)padding & work) != 0);
    }

    CopySaveFileBlock8(destination, footer);
}

void RestoreGlobalSaveDataFromWorkingBuffer(void)
{
    register u8 *source asm("r3");
    register u8 *padding asm("r1");
    register u16 *medal asm("r4");
    register u32 *totalScore asm("r5");
    u8 *unknown;
    register u32 mask asm("r2");

    source = (u8 *)0x02038118;
    gDifficulty = *source++;
    gCurrentPassage = *source++;
    gCurrentStageNumber = *source++;

    padding = source;
    medal = &gMedalCount;
    totalScore = &gTotalScore;
    unknown = &gUnk_300001C;
    mask = 3;
    do
    {
        source++;
        padding++;
    }
    while (((u32)padding & mask) != 0);

    *medal = *(u16 *)source;
    source += 2;
    padding = source;
    if (((u32)source & 3) != 0)
    {
        mask = 3;
        do
        {
            source++;
            padding++;
        }
        while (((u32)padding & mask) != 0);
    }

    *totalScore = *(u32 *)source;
    source += 4;

    {
        register int outer asm("r2");
        register u8 *base asm("r6");
        register u32 offset asm("r5");
        register u32 *destination asm("r4");
        register int inner asm("r1");

        outer = 0;
        base = gCurrentCollection;
        offset = 0;
        do
        {
            destination = (u32 *)(offset + (u32)base);
            inner = 5;
            do
            {
                *destination++ = *(u32 *)source;
                source += 4;
                inner--;
            }
            while (inner >= 0);
            __asm__ volatile("" : "+r"(offset));
            offset += 24;
            outer++;
        }
        while (outer <= 6);
    }

    {
        register int cursor asm("r2");
        register u8 *base asm("r5");
        register int next asm("r4");
        register int inner asm("r1");
        register u32 shifted asm("r0");

        cursor = 0;
        base = gHighScoreTable;
        do
        {
            next = cursor + 1;
            shifted = cursor << 4;
            cursor = shifted + (u32)base;
            inner = 3;
            do
            {
                *(u32 *)cursor = *(u32 *)source;
                source += 4;
                cursor += 4;
                inner--;
            }
            while (inner >= 0);
            cursor = next;
        }
        while (cursor <= 6);
    }

    {
        register u16 *destination asm("r2");
        register int inner asm("r1");

        destination = gMinigameHighScores;
        inner = 2;
        do
        {
            *destination = *(u16 *)source;
            source += 2;
            destination++;
            inner--;
        }
        while (inner >= 0);
    }

    padding = (u8 *)3;
    mask = 3;
    do
    {
        source++;
        padding++;
    }
    while (((u32)padding & mask) != 0);

    *unknown = *source;
    source++;
    __asm__ volatile("" : "+r"(source));
    padding = source;
    if (((u32)padding & 3) != 0)
    {
        mask = 3;
        do
        {
            padding++;
        }
        while (((u32)padding & mask) != 0);
    }
}

void CopySaveFileBlock16(u8 *destination, const u8 *source)
{
    s32 index;

    index = 0;
    do
    {
        *destination = source[index];
        index++;
        destination++;
    }
    while (index <= 15);
}

void CopySaveFileBlock8(u8 *destination, const u8 *source)
{
    s32 index;

    index = 0;
    do
    {
        *destination = source[index];
        index++;
        destination++;
    }
    while (index <= 7);
}

void RunBackupSramSelfTest(void)
{
    u8 buffer[16];
    register u8 *sram asm("r4");
    register u32 failed asm("r5");
    register u32 temp asm("r1");
    u32 result;
    s32 index;

    failed = 0;
    gUnk_3000014 = failed;
    result = SramWriteChecked(sBackupSramTestSignature, (u8 *)0x0E000980, 16);
    temp = -result;
    temp |= result;
    failed = temp >> 31;
    sram = (u8 *)0x0E000980;
    SramWriteUnchecked(sram, buffer, 16);
    index = 0;
    while (index <= 15)
    {
        buffer[index]++;
        index++;
    }
    if (SramWriteChecked(buffer, (u8 *)0x0E000980, 16) != 0)
    {
        failed |= 2;
    }
    gUnk_3000014 = (((-failed) | failed) >> 31);
}

void DmaLoadSelectedSaveFileBlocks(void)
{
    vu32 *dma;

    dma = (vu32 *)0x040000D4;
    dma[0] = (u32)sPrimarySaveHeaderBuffers[gSelectedSaveFile];
    dma[1] = (u32)sSecondarySaveHeaderBuffers[gSelectedSaveFile];
    dma[2] = 0x80000100;
    func_8000F90(dma[2]);
}

void InitializeSaveFileStatuses(void)
{
    register u32 r4Value asm("r4");
    register u8 *record asm("r6");
    register u8 *records asm("r8");
    u32 encodedIndex;
    register u32 status asm("r5");
    register u32 zero0 asm("r0");
    register u32 zero1 asm("r1");

    zero0 = 0;
    zero1 = 0;
    r4Value = (u32)gUnk_3003BF8;
    ((u32 *)r4Value)[0] = zero0;
    ((u32 *)r4Value)[1] = zero1;
    ((u32 *)r4Value)[2] = zero0;
    ((u32 *)r4Value)[3] = zero1;
    {
        register u8 *selectedPtr asm("r0");
        selectedPtr = &gSelectedSaveFile;
        __asm__ volatile("" : "+r"(selectedPtr));
        __asm__ volatile("" : "+r"(zero1));
        zero1 = 0;
        *selectedPtr = zero1;
    }
    gSaveFlag = zero1;

    if (gUnk_3000014 == 0)
    {
        func_800101C();
    }

    record = (u8 *)r4Value;
    records = record;
    encodedIndex = 0;
    do
    {
        r4Value = encodedIndex >> 24;
        __asm__ volatile("" : "+r"(encodedIndex));
        status = ClassifyAndRepairSaveSlotCopy(r4Value);
        status = (status << 24) >> 24;
        if (status == 2)
        {
            if (ValidateStageSelectionSaveSlot(r4Value) != 0)
            {
                record[0] = 3;
            }
            else
            {
                record[0] = 1;
            }
        }

        __asm__ volatile("" : "+r"(encodedIndex));
        if (ValidateMainSaveSlot(encodedIndex >> 24, status) == 0)
        {
            record[0] = 2;
        }

        record += 8;
        encodedIndex += 0x01000000;
    }
    while ((s32)(u32)record <= (s32)((u32)records + 8));

    {
        register u8 *selectedPtr asm("r4");
        register u8 *saveFlagPtr asm("r3");
        register u8 *recordsPtr asm("r2");
        register u32 selectedValue asm("r1");

        selectedPtr = &gSelectedSaveFile;
        *selectedPtr = 0;
        selectedValue = ValidateSelectedSaveHeader();
        *selectedPtr = selectedValue;
        saveFlagPtr = &gSaveFlag;
        recordsPtr = gUnk_3003BF8;
        {
            u32 saveStatus;
            u32 selectedIndex;

            selectedIndex = *selectedPtr;
            selectedIndex <<= 3;
            selectedIndex += (u32)recordsPtr;
            saveStatus = *(u8 *)selectedIndex;
            *saveFlagPtr = saveStatus;
            saveStatus <<= 24;
            if (saveStatus != 0)
            {
                register u8 *tempSavePtr asm("r0");
                tempSavePtr = &gHasTemporarySave;
                selectedValue = *selectedPtr;
                selectedValue <<= 3;
                selectedValue += (u32)recordsPtr;
                *tempSavePtr = *(u8 *)(selectedValue + 1);
            }
            else
            {
                selectedIndex = selectedValue << 24;
                selectedValue = 0;
                if (selectedIndex == 0)
                {
                    selectedValue = 1;
                }
                selectedIndex = selectedValue << 3;
                recordsPtr = (u8 *)(selectedIndex + (u32)recordsPtr);
                saveStatus = recordsPtr[0];
                *saveFlagPtr = saveStatus;
                saveStatus <<= 24;
                if (saveStatus != 0)
                {
                    *selectedPtr = selectedValue;
                    selectedValue = (u32)&gHasTemporarySave;
                    saveStatus = recordsPtr[1];
                    *(u8 *)selectedValue = saveStatus;
                }
            }
        }
    }

    gUnk_300001C = 0;
}

u32 ClassifyAndRepairSaveSlotCopy(u8 selectedFile)
{
    register u32 selected asm("r4");
    register u32 firstResult asm("r5");
    register u32 secondResult asm("r3");
    register u32 offset asm("r1");
    u32 statusValue;

    selected = selectedFile;
    gSelectedSaveFile = selected;

    {
        register u32 arg0 asm("r0");
        register u32 arg1 asm("r1");

        arg0 = 0;
        arg1 = selected;
        firstResult = ValidateAndClearSaveSlotCopy(arg0, arg1);
        arg0 = 1;
        arg1 = selected;
        secondResult = ValidateAndClearSaveSlotCopy(arg0, arg1);
    }

    if (firstResult == 0)
    {
        register vu32 *dma asm("r2");
        register u32 *table asm("r0");

        dma = (vu32 *)0x040000D4;
        table = (u32 *)sPrimarySaveHeaderBuffers;
        offset = selected << 2;
        dma[0] = *(u32 *)(offset + (u32)table);
        table = (u32 *)sSecondarySaveHeaderBuffers;
        offset = offset + (u32)table;
        dma[1] = *(u32 *)offset;
        dma[2] = 0x80000100;
        func_8000F90(dma[2]);

        {
            register u8 *record asm("r0");

            record = gUnk_3003BF8;
            offset = selected << 3;
            record = (u8 *)(offset + (u32)record);
            record[5] = firstResult;
        }
    }
    else if (firstResult == 1)
    {
        register u8 *record asm("r2");
        register u8 *base asm("r0");

        base = gUnk_3003BF8;
        offset = selected << 3;
        record = (u8 *)(offset + (u32)base);
        record[5] = 2;
        if (secondResult != 0)
        {
            record[5] = 3;
        }
    }
    else
    {
        register u8 *record asm("r2");
        register u8 *base asm("r0");

        base = gUnk_3003BF8;
        offset = selected << 3;
        record = (u8 *)(offset + (u32)base);
        record[5] = 4;
        if (secondResult == 0)
        {
            record[5] = 2;
        }
        else if (secondResult == 1)
        {
            record[5] = 3;
        }
    }

    {
        register u8 *base asm("r0");

        base = gUnk_3003BF8;
        selected = offset + (u32)base;
    }

    statusValue = ((u8 *)selected)[5];
    if (statusValue == 4)
    {
        __asm__ volatile("" : "+r"(statusValue));
        func_8000F90(statusValue);
        func_8000F64();
        statusValue = 0;
        ((u8 *)selected)[5] = statusValue;
    }
    else if (firstResult != 0)
    {
        statusValue = 1;
        __asm__ volatile("" : "+r"(statusValue));
    }
    else
    {
        statusValue = 2;
        __asm__ volatile("" : "+r"(statusValue));
    }

    return statusValue;
}

u32 ValidateAndClearSaveSlotCopy(u8 copy, u8 selectedFile)
{
    u32 zero;
    register s32 result asm("r6");
    register u32 *save asm("r5");
    register u32 *checksumStorage asm("r1");
    register u32 *scan asm("r3");
    register u32 sum asm("r2");
    register s32 i asm("r4");
    register u32 headerMismatch asm("ip");
    u32 footerMismatch;

    result = 0;
    headerMismatch = result;
    footerMismatch = 0;

    if (copy == 0)
    {
        save = sPrimarySaveHeaderBuffers[selectedFile];
    }
    else
    {
        save = sSecondarySaveHeaderBuffers[selectedFile];
    }

    checksumStorage = &gUnk_3000040;
    *checksumStorage = save[4];
    scan = save;
    sum = 0;
    i = 14;
    __asm__ volatile("" : "+r"(sum));
    do
    {
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        i--;
    }
    while (i >= 0);

    {
        register u32 checksum asm("r1");
        checksum = *checksumStorage;
        if (checksum != sum || checksum != ~save[5])
        {
            result |= 1;
        }
    }

    {
        register u8 *data asm("r1");
        register const u8 *expected asm("r8");
        register u32 one asm("r2");
        data = (u8 *)save;
        i = 0;
        expected = sMainSaveHeaderSignature1;
        one = 1;
        do
        {
            if (*(u8 *)(i + (u32)expected) != *data)
            {
                headerMismatch |= one;
            }
            i++;
            data++;
        }
        while (i <= 15);
    }

    {
        register u8 *data asm("r1");
        register const u8 *expected asm("r8");
        register u32 one asm("r2");
        data = (u8 *)save + 0x160;
        i = 0;
        expected = sMainSaveHeaderSignature2;
        one = 1;
        do
        {
            if (*(u8 *)(i + (u32)expected) != *data)
            {
                footerMismatch |= one;
            }
            i++;
            data++;
        }
        while (i <= 15);
    }

    result |= headerMismatch + footerMismatch;
    if (result > 1)
    {
        register vu32 *dma asm("r0");
        register u32 *zeroPtr asm("r3");
        register u32 control asm("r1");

        zero = 0;
        dma = (vu32 *)0x040000D4;
        zeroPtr = &zero;
        dma[0] = (u32)zeroPtr;
        dma[1] = (u32)save;
        control = 0x85000078;
        dma[2] = control;
        (void)dma[2];
    }

    return result;
}

u32 ValidateMainSaveSlot(u8 selectedFile, u32 statusValue)
{
    u32 zero;
    u32 selected;
    register u32 status asm("r9");
    register s32 result asm("r6");
    register u32 headerMismatch asm("r8");
    register u32 footerMismatch asm("ip");
    register u32 offset asm("sl");
    register u32 *save asm("r5");
    register u32 *checksumStorage asm("r1");
    register u32 *scan asm("r3");
    register u32 sum asm("r2");
    register s32 i asm("r4");

    selected = selectedFile;
    __asm__ volatile("" : "+r"(selected));
    status = (statusValue << 24) >> 24;
    result = 0;
    headerMismatch = result;
    footerMismatch = result;
    gSelectedSaveFile = selected;
    save = sMainSaveDataBuffers[selected];

    checksumStorage = &gUnk_3000040;
    *checksumStorage = save[4];
    scan = save;
    sum = 0;
    i = 448;
    __asm__ volatile("" : "+r"(sum));
    do
    {
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        sum += *scan++;
        i--;
    }
    while (i != 0);

    {
        register u32 checksum asm("r1");
        checksum = *checksumStorage;
        if (checksum != sum || checksum != ~save[5])
        {
            result |= 1;
        }
    }

    {
        register u8 *data asm("r1");
        register const u8 *expected asm("r3");
        register u32 one asm("r2");
        data = (u8 *)save;
        i = 0;
        selected <<= 3;
        offset = selected;
        expected = sTemporarySaveHeaderSignature1;
        one = 1;
        do
        {
            if (*(u8 *)(i + (u32)expected) != *data)
            {
                headerMismatch |= one;
            }
            i++;
            data++;
        }
        while (i <= 15);
    }

    {
        register u8 *data asm("r1");
        register const u8 *expected asm("r3");
        register u32 one asm("r2");

        data = (u8 *)save + 0xA80;
        i = 0;
        expected = sTemporarySaveHeaderSignature2;
        one = 1;
        do
        {
            if (*(u8 *)(i + (u32)expected) != *data)
            {
                footerMismatch |= one;
            }
            i++;
            data++;
        }
        while (i <= 15);
    }

    result |= headerMismatch + footerMismatch;

    {
        register u32 statusCheck asm("r1");
        statusCheck = status;
        __asm__ volatile("" : "+r"(statusCheck));
        if (statusCheck != 2 || result > 1)
        {
        register vu32 *dma asm("r0");
        register u32 *zeroPtr asm("r7");
        register u32 control asm("r1");

        zero = 0;
        dma = (vu32 *)0x040000D4;
        __asm__ volatile("" : "=r"(zeroPtr) : "0"(&zero));
        dma[0] = (u32)zeroPtr;
        dma[1] = (u32)save;
        control = 0x85000E00;
        dma[2] = control;
        (void)dma[2];
        func_8000FBC();
        {
            register u8 *record asm("r0");
            record = gUnk_3003BF8;
            record += offset;
            record[1] = 0;
        }
        result = 3;
        }
        else if (result == 1)
        {
            register u8 *record asm("r0");
            record = gUnk_3003BF8;
            record += offset;
            record[5] = result;
        }
        else
        {
            register u8 *record asm("r0");
            register u32 savedValue asm("r2");
            register u32 value asm("r1");
            record = gUnk_3003BF8;
            record += offset;
            savedValue = ((u8 *)save)[24];
            value = 0x80;
            value |= savedValue;
            record[1] = value;
            result = 0;
        }
    }

    return result;
}

void FlushSaveFileAndMaybeRestoreTempSave(void)
{
    vu32 *dma;

    if (gSelectedSaveFile == 1)
    {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sPrimarySaveHeaderBuffers[1];
        dma[1] = (u32)sPrimarySaveHeaderBuffers[0];
        dma[2] = 0x80000200;
        (void)dma[2];
        dma[0] = (u32)sMainSaveDataBuffers[1];
        dma[1] = (u32)sMainSaveDataBuffers[0];
        dma[2] = 0x80001C00;
        (void)dma[2];
    }

    if (gSaveFlag != 0)
    {
        RestoreGlobalSaveDataFromWorkingBuffer();
    }

    if (gSaveFlag == 3)
    {
        RestoreTempSaveStageSelection();
    }
}

void FlushSaveFileAndRefreshSaveData(void)
{
    vu32 *dma;

    if (gSelectedSaveFile == 1)
    {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)sPrimarySaveHeaderBuffers[1];
        dma[1] = (u32)sPrimarySaveHeaderBuffers[0];
        dma[2] = 0x80000200;
        (void)dma[2];
        dma[0] = (u32)sMainSaveDataBuffers[1];
        dma[1] = (u32)sMainSaveDataBuffers[0];
        dma[2] = 0x80001C00;
        (void)dma[2];
    }
    RestoreGlobalSaveDataFromWorkingBuffer();
}

void BuildSelectedSaveValidationHeader(void)
{
    s32 i;

    {
        register u8 *data asm("r2");
        register u8 *selectedPtr asm("r1");
        register u8 *selectedGlobal asm("r4");
        register u8 *table asm("r5");
        u32 selected;

        data = (u8 *)0x02038080;
        *data = 1;
        data++;
        (*data)++;
        data++;
        *data = 0;
        data++;
        *data = 0;
        data++;
        *data = 0xFF;
        data++;
        *data = 0xFF;
        data++;

        selectedPtr = &gSelectedSaveFile;
        *data = *selectedPtr;
        data++;

        i = 0;
        table = sSaveSlotValidationSignatures;
        selectedGlobal = selectedPtr;
        do
        {
            register u32 offset asm("r1");

            selected = *selectedGlobal;
            offset = selected << 3;
            offset += selected;
            offset = i + offset;
            offset += (u32)table;
            *data = *(u8 *)offset;
            i++;
            data++;
        }
        while (i <= 8);

        i = 0;
        {
            register u8 *source asm("r1");

            source = sStageSelectionSaveSignature;
            do
            {
                *data = *(u8 *)(i + (u32)source);
                i++;
                data++;
            }
            while (i <= 15);
        }
    }

    {
        u16 *sumPtr;
        u16 sum;

        sum = 0;
        sumPtr = (u16 *)0x02038080;
        i = 3;
        do
        {
            sum += *sumPtr++;
            sum += *sumPtr++;
            sum += *sumPtr++;
            sum += *sumPtr++;
            i--;
        }
        while (i >= 0);

        sumPtr = (u16 *)0x02038082;
        *sumPtr = sum;
        sumPtr[1] = ~sum;
    }

    func_8000FE8();
}

u32 ValidateSelectedSaveHeader(void)
{
    register u8 *data asm("r2");
    register s32 i asm("r3");
    u16 value;

    data = (u8 *)0x02038080;
    if (*data != 0)
    {
        u16 *sumPtr;

        __asm__ volatile("" : "+r"(data));

        value = 0;
        sumPtr = (u16 *)0x02038080;
        i = 3;
        do
        {
            value += *sumPtr++;
            value += *sumPtr++;
            value += *sumPtr++;
            value += *sumPtr++;
            i--;
        }
        while (i >= 0);

        {
            register u16 *storedPtr asm("r1");

            storedPtr = (u16 *)0x02038082;
            if (*storedPtr == value)
            {
                u8 selected;
                register u8 *expected asm("r1");
                u32 offset;

                data = (u8 *)0x02038086;
                selected = *data;
                data++;
                value = 0;
                expected = sSaveSlotValidationSignatures;
                offset = selected << 3;
                offset += selected;
                expected = (u8 *)(offset + (u32)expected);
                i = 8;
                do
                {
                    if (*data != *expected)
                    {
                        value++;
                    }
                    expected++;
                    i--;
                    data++;
                }
                while (i >= 0);

                i = 0;
                {
                    register u8 *expectedBase asm("r6");

                    expectedBase = sStageSelectionSaveSignature;
                    do
                    {
                        expected = (u8 *)(i + (u32)expectedBase);
                        if (*data != *expected)
                        {
                            value++;
                        }
                        i++;
                        data++;
                    }
                    while (i <= 15);
                }

                if (value == 0)
                {
                    return selected;
                }
            }
        }
    }

    return 0;
}

void BuildTemporaryStageSelectionSave(void)
{
    u8 *data;
    u8 *out;
    u8 *expected;
    u32 *checksumPtr;
    u32 sum;
    u32 value;
    s32 i;

    if (gCurrentPassage <= 6)
    {
        if (gCurrentStageNumber <= 5)
        {
            if (sUnk_86391C4[gCurrentPassage][gCurrentStageNumber] == 50)
            {
                return;
            }
        }
        else
        {
            gCurrentStageNumber = 6;
        }

        data = (u8 *)0x020382E0;
        *data++ = 1;
        *data++ = gCurrentPassage;
        *data++ = gCurrentStageNumber;
        (*data)++;

        out = (u8 *)0x020382F0;
        i = 0;
        while (i <= 7)
        {
            *out = sPassageNameValidationStrings[i + (gCurrentPassage * 8)];
            i++;
            out++;
        }

        i = 0;
        while (i <= 7)
        {
            *out = sStageNameValidationStrings[i + (gCurrentStageNumber * 8)];
            i++;
            out++;
        }

        checksumPtr = (u32 *)0x020382E4;
        value = 0;
        *checksumPtr++ = value;
        value--;
        *checksumPtr++ = value;
        *checksumPtr = 0x3164724E;

        sum = 0;
        data = (u8 *)0x020382E0;
        checksumPtr = (u32 *)data;
        i = 1;
        while (i >= 0)
        {
            sum += *checksumPtr++;
            sum += *checksumPtr++;
            sum += *checksumPtr++;
            sum += *checksumPtr++;
            i--;
        }

        checksumPtr = (u32 *)0x020382E4;
        *checksumPtr++ = sum;
        *checksumPtr = ~sum;
        func_8000F3C();
    }
}

u32 ValidateStageSelectionSaveSlot(u8 selectedFile)
{
    u8 *save;
    register u8 *data asm("r2");
    register u32 passage asm("r6");
    register u32 stage asm("r5");

    data = sStageSelectionSaveBuffers[selectedFile];
    save = data;
    if (data[0] != 0)
    {
        data++;
        passage = data[0];
        stage = data[1];
        if (passage <= 6)
        {
            if (stage <= 5)
            {
                if (sUnk_86391C4[passage][stage] == 50)
                {
                    return 0;
                }
            }
            else if (stage > 6)
            {
                return 0;
            }

            {
                register u32 sum asm("r3");
                register u32 *ptr asm("r1");
                register u32 checksum asm("r2");
                register int count asm("r4");

                sum = 0;
                ptr = (u32 *)save;
                checksum = *(u32 *)(save + 4);
                count = 1;
                do
                {
                    sum += *ptr++;
                    sum += *ptr++;
                    sum += *ptr++;
                    sum += *ptr++;
                    count--;
                }
                while (count >= 0);

                if (checksum != sum)
                {
                    return 0;
                }
            }

            {
                register u32 mismatch asm("r3");
                register u8 *scan asm("r2");
                register u8 *expected asm("r1");
                register int count asm("r4");
                register u32 expectedValue asm("r6");

                mismatch = 0;
                scan = save + 16;
                expected = (u8 *)(passage << 3);
                stage <<= 3;
                expected += (u32)sPassageNameValidationStrings;
                count = 7;
                do
                {
                    expectedValue = *expected;
                    if (*scan != expectedValue)
                    {
                        mismatch++;
                    }
                    expected++;
                    count--;
                    scan++;
                }
                while (count >= 0);

                __asm__ volatile("" : "+r"(stage), "+r"(scan), "+r"(mismatch) :: "memory");
                {
                    register u8 *secondBase asm("r0");

                    secondBase = sStageNameValidationStrings;
                    expected = (u8 *)(stage + (u32)secondBase);
                }
                count = 7;
                do
                {
                    stage = *expected;
                    if (*scan != stage)
                    {
                        mismatch++;
                    }
                    expected++;
                    count--;
                    scan++;
                }
                while (count >= 0);

                if (mismatch == 0)
                {
                    return 1;
                }
            }
        }
    }
    return 0;
}

void RestoreTempSaveStageSelection(void)
{
    u8 *data;
    u8 passage;
    u8 stage;

    if (*(u8 *)0x020382E0 != 0)
    {
        data = (u8 *)0x020382E1;
        passage = data[0];
        stage = data[1];
        gCurrentPassage = passage;
        gCurrentStageNumber = stage;
    }
}

const u8 sBackupSramTestSignature[16] = "Wari4_AGB_BackUp";
const u8 sSaveFooterSignature[8] = "SAVE_END";
const u8 sMainSaveHeaderSignature1[16] = "AutoSAVEWar4key1";
const u8 sMainSaveHeaderSignature2[16] = "key2AutoSAVEWar4";
const u8 sTemporarySaveHeaderSignature1[16] = "DisContinueKey1b";
const u8 sTemporarySaveHeaderSignature2[16] = "DisContinue2bKey";
const u8 sUsTitleSaveVersionString[20] = "AGBWarioLand-USver00";
const u8 sJpTitleSaveVersionString[20] = "WARIOLANDNIPPONVer00";

u8 * const sPrimarySaveHeaderBuffers[2] = {
    (u8 *)0x02038100,
    (u8 *)0x02038500,
};

u8 * const sSecondarySaveHeaderBuffers[2] = {
    (u8 *)0x02038300,
    (u8 *)0x02038700,
};

u8 * const sMainSaveDataBuffers[2] = {
    (u8 *)0x02039000,
    (u8 *)0x0203C800,
};

u8 * const sStageSelectionSaveBuffers[2] = {
    (u8 *)0x020382E0,
    (u8 *)0x020386E0,
};

const u8 sSaveSlotValidationSignatures[18] = "WAR4SAVEA" "BSAVEWAR4";
const u8 sStageSelectionSaveSignature[16] __attribute__((aligned(4))) = "WARABGSELECTSAVE";
const u8 sPassageNameValidationStrings[48] =
    " FIRST  " "  GREEN " "   RED  " " YELLOW " "    BLUE" " GOLDEN ";
const u8 sStageNameValidationStrings[56] =
    "StAGe000" "01sTAgEn" "WarioSt2" "AgbWar03" "STe4boSS" "MinIGaMe" "sElecTWn";
