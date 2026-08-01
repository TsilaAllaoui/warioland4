#include "file_select.h"
#include "global_data.h"
#include "background_registers.h"
#include "interrupt_callbacks.h"
#include "init_helpers.h"
#include "color_effects.h"
#include "gba/syscall.h"
#include "save_file.h"

#define DMA3 ((vu32 *)0x040000D4)

extern u32 DecompressRoomBackground(u32 arg0, const u8 *src, u8 *dst);
extern void func_80703DC(void);
extern void func_8071238(void);
extern void func_8000D98(u32 arg0);
extern void func_8000F64(void);
extern void func_8000F90(void);
extern void func_8000FBC(void);

extern u8 gLanguage;
extern u8 gTitleScreenStyle;
extern u8 gSelectedSaveFile;
extern u8 gSaveFlag;
extern u8 gHasTemporarySave;
extern u8 gDifficulty;
extern u8 gSpriteAiDropTimer;
extern u8 gPauseFlag;
extern u8 gTimerState;
extern u8 gSwitchPressed;
extern u8 gDisableSoftReset;
extern s8 gStageEntryPauseMenuDisabled;
extern u16 gUnk_300188E;
extern u8 gUnk_3003BF8[];
extern u8 gFileSelectState[];
extern struct SaveDataClearData gUnk_3004A70;

extern const u8 sFileSelectStyleAnimationTypes[];
extern const u8 sFileSelectSlotAnimationTypes[];
extern const u8 sFileSelectOperationAnimationTypes[];
extern const u8 sFileSelectRecoveryMessageAnimationTypes[];
extern const u8 sFileSelectLabelTileData[];
extern const u8 sFileSelectDifficultyTileBases[];
extern const u8 sFileSelectEmptySlotLabelLanguage0[];
extern const u8 sFileSelectEmptySlotLabelLanguage1[];
extern const u8 sFileSelectStyle0DifficultyAnimationTypes[];
extern const u8 sFileSelectStyle1DifficultyAnimationTypes[];
extern const u8 sFileSelectOperationChoiceAnimationTypes[];
extern const u8 sFileSelectPromptPositions[];
extern const u8 sFileSelectBackgroundTiles[];
extern const u8 sFileSelectSpriteTiles[];
extern const u8 sFileSelectStyle1SpriteTiles[];
extern const u8 sFileSelectStyle2SpriteTiles[];
extern const u8 sFileSelectStyle3SpriteTiles[];
extern const u8 sFileSelectObjectPalette[];
extern const u8 sFileSelectBackgroundPalette[];
extern const u8 sFileSelectBaseTilemapCompressed[];
extern const u8 sFileSelectDefaultTilemapCompressed[];
extern const u8 sFileSelectAlternateTilemapCompressed[];
extern const u8 sFileSelectInterfaceTiles[];
extern const u8 *const sFileSelectCursorPositionPaths[];
extern const u8 *const sFileSelectCursorPathOffsets[];
extern const u8 *const sFileSelectSpriteAnimations[];
extern const u8 *const sFileSelectStageNameTableLanguage1[];
extern const u8 *const sFileSelectStageNameTableLanguage0[];
extern const u8 *const sFileSelectPassageNameTableLanguage1[];
extern const u8 *const sFileSelectPassageNameTableLanguage0[];

void FileSelectVBlankCallback(void);
void FileSelectSoundMainCallback(void);
void InitializeFileSelectAnimations(u32 inputMode);
void DrawFileSelectSlotText(void);
void DrawFileSelectSaveStatistics(void);
void LoadSelectedFileState(void);
void DrawFileSelectSaveNameTiles(u8 idx);
void DrawFileSelectDifficultyTiles(u8 idx);
void DrawFileSelectScoreTiles(u8 idx, u8 hidden);
void DrawFileSelectTreasureCountTiles(u8 idx, u8 hidden);
void DrawFileSelectCollectionTiles(u8 idx, u32 hidden);
void RefreshFileSelectSaveSummary(u8 idx);
void SetFileSelectInteractionMode(u8 mode);
void ExecuteFileSelectAction(void);
void HandleFileSelectInput(void);
void HandleFileConfirmationInput(void);
void HandleFileSlotNavigationInput(u8 mode);
void HandleFileDifficultyInput(void);
void HandleFileOperationInput(void);
void UpdateFileSelectWindow(void);
void RefreshFileSelectSlotAnimationTypes(void);
void UpdateFileSelectPromptAnimation(void);
void UpdateFileSelectMainAnimationPosition(void);
void UpdateFileSelectSlotMarkerAnimation(void);
void UpdateFileSelectOperationLabelAnimation(void);
void UpdateFileSelectSlotAnimationTypes(void);
void ResetFileSelectSelectedSlotAnimation(u8 clearFirst);
void UpdateAndDrawFileSelectSprites(void);
u32 InitializeFileSelect(void);
u32 GetFileSelectActionResult(void);
void UpdateFileSelectInteraction(void);
u32 UpdateFileSelectFadeIn(void);
u32 UpdateFileSelectFadeOut(void);

void SetFileSelectActionAndSound(u8 action, u8 sound);
void ResetFileSelectMainAnimation(void);
void StartFileSelectClosingAnimation(void);



void SetFileSelectVBlankCallback(void)
{
    InterruptCallbackSetVBlank(FileSelectVBlankCallback);
}

void FileSelectVBlankCallback(void)
{
    vu32 *dma;

    m4aSoundVSync();
    dma = DMA3;
    dma[0] = (u32)gOamBuffer;
    dma[1] = 0x07000000;
    dma[2] = 0x84000100;
    dma[2];
    *(vu16 *)0x04000018 = gBg2XPosition;
    *(vu16 *)0x0400001A = gBg2YPosition;
    *(vu16 *)0x04000014 = gBg1XPosition;
    *(vu16 *)0x04000016 = gBg1YPosition;
    *(vu16 *)0x04000010 = gBg0XPosition;
    *(vu16 *)0x04000012 = gBg0YPosition;
}

void FileSelectSoundMainCallback(void)
{
    m4aSoundVSync();
    m4aSoundMain();
}

u32 InitializeFileSelect(void)
{
    register u32 mode asm("r6");
    register u8 *workPointer asm("r5");
    u32 narrowedMode;
    u32 count;

    *(vu16 *)0x04000208 = 0;
    *(vu16 *)0x04000004 &= 0xFFEF;
    *(vu16 *)0x04000200 &= 0xFFFD;
    *(vu16 *)0x04000208 = 1;
    InterruptCallbackSetVBlank(FileSelectSoundMainCallback);

    *(vu16 *)0x04000050 = 0x00FF;
    *(vu16 *)0x04000054 = 0x0010;
    *(vu16 *)0x04000000 = 0;
    InitializeVideoMemory();
    gOamSlotsUsed = 0;
    ResetFreeOam();

    while ((u16)(*(vu16 *)0x04000006 - 21) <= 139) {
    }

    {
        register const u32 *graphicsSource asm("r4");
        register const u32 *paletteSource asm("r2");
        register const u32 *objectPaletteSource asm("r3");
        register u32 dmaAddress asm("r1");
        register u32 scanline asm("r0");

        dmaAddress = 0x040000D4;
        ((vu32 *)dmaAddress)[0] = (u32)sFileSelectBackgroundTiles;
        ((vu32 *)dmaAddress)[1] = 0x06000000;
        ((vu32 *)dmaAddress)[2] = 0x80002000;
        (void)((vu32 *)dmaAddress)[2];

        dmaAddress -= 0xCE;
        scanline = (u16)(*(vu16 *)dmaAddress - 21);
        paletteSource = (const u32 *)sFileSelectBackgroundPalette;
        objectPaletteSource = (const u32 *)sFileSelectObjectPalette;
        graphicsSource = (const u32 *)sFileSelectInterfaceTiles;
        if (scanline <= 139) {
            do {
                scanline = (u16)(*(vu16 *)dmaAddress - 21);
            } while (scanline <= 139);
        }

        scanline = 0x040000D4;
        ((vu32 *)scanline)[0] = (u32)paletteSource;
        ((vu32 *)scanline)[1] = 0x05000000;
        ((vu32 *)scanline)[2] = 0x80000100;
        (void)((vu32 *)scanline)[2];
        ((vu32 *)scanline)[0] = (u32)objectPaletteSource;
        ((vu32 *)scanline)[1] = 0x05000200;
        ((vu32 *)scanline)[2] = 0x80000100;
        (void)((vu32 *)scanline)[2];

        LZ77UnCompVram(graphicsSource, (void *)0x06004000);
    }

    LZ77UnCompVram((const u32 *)sFileSelectSpriteTiles, (void *)0x06010000);

    {
        register u8 *destination asm("r1");
        register s32 remaining asm("r2");
        register u8 zero asm("r0");

        destination = (u8 *)0x06003FE0;
        zero = 0;
        remaining = 31;
        do {
            *destination++ = zero;
            remaining--;
        } while (remaining >= 0);
    }

    *(vu16 *)0x05000000 = 0;
    InitializeSaveFileStatuses();

    {
        register vu32 *dma asm("r4");
        const u8 *backgroundSource;
        register s32 decompressedSize asm("r2");
        register u32 dmaCount asm("r0");

        backgroundSource = sFileSelectBaseTilemapCompressed;
        workPointer = (u8 *)0x0201F040;
        decompressedSize = (s32)DecompressRoomBackground(0, backgroundSource, workPointer);
        asm("" : "+r"(decompressedSize));
        dma = DMA3;
        dma[0] = (u32)workPointer;
        dma[1] = 0x0600D000;
        dmaCount = (u32)(decompressedSize / 2);
        asm("" : "+r"(dmaCount));
        mode = 0x80000000;
        dma[2] = dmaCount | mode;
        (void)dma[2];

        {
            u32 style;

            style = gTitleScreenStyle;
            backgroundSource = sFileSelectDefaultTilemapCompressed;
            if (style != 0) {
                backgroundSource = sFileSelectAlternateTilemapCompressed;
            }
        }
        decompressedSize = (s32)DecompressRoomBackground(0, backgroundSource, workPointer);
        asm("" : "+r"(decompressedSize));
        dma[0] = (u32)workPointer;
        dma[1] = 0x0600E000;
        dmaCount = (u32)(decompressedSize / 2);
        asm("" : "+r"(dmaCount));
        dma[2] = dmaCount | mode;
        (void)dma[2];
    }

    {
        register vu16 *destination asm("r0");
        register u16 tile asm("r1");
        register s32 remaining asm("r2");

        destination = (vu16 *)0x0600C000;
        remaining = 0x01FE;
        asm("" : "+r"(destination), "+r"(remaining));
        tile = remaining;
        remaining = 1024;
        asm("" : "+r"(destination), "+r"(tile), "+r"(remaining));
        do {
            *destination++ = tile;
            remaining--;
        } while (remaining != 0);
    }

    mode = gUnk_3003BF8[5];
    if (mode == 0) {
        mode = gUnk_3003BF8[13];
    }
    if (mode == 1) {
        LZ77UnCompVram((const u32 *)sFileSelectStyle1SpriteTiles, (void *)0x06015800);
    } else if (mode == 2) {
        LZ77UnCompVram((const u32 *)sFileSelectStyle2SpriteTiles, (void *)0x06015800);
    } else if (mode == 3) {
        LZ77UnCompVram((const u32 *)sFileSelectStyle3SpriteTiles, (void *)0x06015800);
    }

    {
        register u32 byteZero asm("r3");
        register u32 halfwordZero asm("r2");
        register vu16 *blendAlphaRegister asm("r1");
        register vu16 *blendAlphaEvbPointer asm("r0");
        register u32 blendValue asm("r0");
        vu32 *dma;
        vu16 *scrollRegister;

        gSpriteAiDropTimer = 0;
        *(vu16 *)0x0400000C = 0x3C07;
        *(vu16 *)0x0400000A = 0x3A06;
        *(vu16 *)0x04000008 = 0x7801;
        gBldy = 16;

        blendAlphaEvbPointer = &gBlendAlphaEvb;
        byteZero = 0;
        *blendAlphaEvbPointer = byteZero;

        blendAlphaRegister = (vu16 *)0x04000052;
        halfwordZero = 0;
        blendValue = 16;
        *blendAlphaRegister = blendValue;

        gStageEntryPauseMenuDisabled = byteZero;
        gPauseFlag = byteZero;
        gTimerState = byteZero;
        gSwitchPressed = byteZero;
        gUnk_300188E = halfwordZero;
        gBg2XPosition = halfwordZero;
        gBg2YPosition = halfwordZero;
        gBg1XPosition = halfwordZero;
        gBg1YPosition = halfwordZero;
        gBg0YPosition = halfwordZero;
        gBg0XPosition = halfwordZero;
        gOamSlotsUsed = byteZero;

        dma = (vu32 *)((u8 *)blendAlphaRegister + 0x82);
        dma[0] = (u32)gOamBuffer;
        dma[1] = 0x07000000;
        dma[2] = 0x84000100;
        (void)dma[2];

        scrollRegister = (vu16 *)0x04000018;
        *scrollRegister = halfwordZero;
        scrollRegister++;
        *scrollRegister = halfwordZero;
        scrollRegister -= 3;
        *scrollRegister = halfwordZero;
        scrollRegister++;
        *scrollRegister = halfwordZero;
        scrollRegister -= 3;
        *scrollRegister = halfwordZero;
        scrollRegister++;
        *scrollRegister = halfwordZero;

        gDisableSoftReset = byteZero;

        {
            register u8 *stateBase asm("r0");

            stateBase = gFileSelectState;
            stateBase[0] = byteZero;
            stateBase[1] = byteZero;
            stateBase[2] = byteZero;
            stateBase[3] = byteZero;
            stateBase[4] = byteZero;
            stateBase[5] = byteZero;
            workPointer = stateBase;
        }

        {
            register u8 *selectedFilePointer asm("r3");
            register u32 animationZero asm("r1");
            register u8 *animationState asm("r0");
            register s32 remaining asm("r2");

            selectedFilePointer = &gSelectedSaveFile;
            narrowedMode = mode << 24;
            animationZero = 0;
            animationState = (u8 *)&gUnk_3004A70;
            remaining = 5;
            do {
                animationState[10] = animationZero;
                *(u16 *)(animationState + 0) = animationZero;
                *(u16 *)(animationState + 2) = animationZero;
                animationState[8] = animationZero;
                animationState[9] = animationZero;
                animationState += 12;
                remaining--;
            } while (remaining >= 0);

            {
                register u32 windowZero asm("r4");
                register u32 callZero asm("r5");
                vu16 *windowRegister;
                register vu8 *windowBoundary asm("r0");
                register u32 boundaryValue asm("r1");

                windowZero = 0;
                *workPointer = *selectedFilePointer != 0;
                SetFileSelectInteractionMode(3);

                windowRegister = (vu16 *)0x04000040;
                callZero = 0;
                *windowRegister = windowZero;
                windowRegister += 2;
                *windowRegister = windowZero;
                windowRegister -= 1;
                *windowRegister = windowZero;
                windowRegister += 2;
                *windowRegister = windowZero;

                *(vu8 *)0x0400004A = 63;
                windowBoundary = (vu8 *)0x04000049;
                boundaryValue = 31;
                asm("" : "+r"(windowBoundary), "+r"(boundaryValue));
                *windowBoundary = boundaryValue;
                windowBoundary--;
                *windowBoundary = boundaryValue;

                UpdateFileSelectWindow();
                RefreshFileSelectSaveSummary(0);
                RefreshFileSelectSaveSummary(1);
                DrawFileSelectSlotText();
                DrawFileSelectSaveStatistics();
                InitializeFileSelectAnimations(narrowedMode >> 24);
                gOamSlotsUsed = callZero;
                UpdateAndDrawFileSelectSprites();
            }
        }
    }

    {
        register const struct MusicPlayer *musicTable asm("r2");
        register const u8 *songTable asm("r0");
        register u32 songOffset asm("r1");
        u32 songIndex;
        struct MusicPlayerInfo *musicPlayer;

        musicTable = gMPlayTable;
        songTable = (const u8 *)gSongTable;
        songOffset = 0x13E4;
        songIndex = *(const u16 *)(songTable + songOffset);
        musicPlayer = musicTable[songIndex].info;
        m4aMPlayVolumeControl(musicPlayer, 0xFFFF, 180);
    }

    gColorFading.type = 2;
    func_8071238();
    *(vu16 *)0x04000000 = 0x5700;
    *(vu16 *)0x04000050 = 0x00EF;
    *(vu16 *)0x04000054 = 8;
    SetFileSelectVBlankCallback();

    return mode;
}


void InitializeFileSelectAnimations(u32 inputMode)
{
    register u8 *data asm("r5");
    register const u8 *styleTable asm("r6");
    u8 *field58;
    register u32 mode asm("r4");
    register u8 value asm("r1");
    register u8 zero asm("r0");
    register u8 *languagePointer asm("r3");
    register u32 language asm("r2");
    register u32 tableIndex asm("r0");
    register const u8 *messageTable asm("r1");
    u16 coordinate;

    /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
    asm("" : "=r"(mode) : "0"(inputMode));
    mode = (u8)mode;
    data = (u8 *)&gUnk_3004A70;
    styleTable = sFileSelectStyleAnimationTypes;
    value = styleTable[gTitleScreenStyle * 3];
    zero = 0;
    data[10] = value;
    data[8] = zero;
    data[9] = zero;
    data[22] = zero;
    field58 = data + 58;
    *field58 = zero;
    data[70] = zero;
    data[34] = zero;
    data[46] = zero;
    UpdateFileSelectPromptAnimation();
    UpdateFileSelectMainAnimationPosition();
    UpdateFileSelectSlotMarkerAnimation();
    UpdateFileSelectOperationLabelAnimation();
    UpdateFileSelectSlotAnimationTypes();
    if (mode != 0) {
        mode = 0;
        if (gUnk_3003BF8[5] == 0) {
            mode = 1;
        }
        data[10] = styleTable[2];
        languagePointer = &gLanguage;
        language = *languagePointer;
        coordinate = 128;
        if (language != 0) {
            coordinate = 104;
        }
        *(u16 *)&data[0] = coordinate;
        *(u16 *)&data[2] = 144;
        messageTable = sFileSelectRecoveryMessageAnimationTypes;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(messageTable));
        tableIndex = *languagePointer;
        tableIndex <<= 1;
        tableIndex = mode + tableIndex;
        tableIndex += (u32)messageTable;
        data[22] = *(const u8 *)tableIndex;
        coordinate = 104;
        if (language != 0) {
            coordinate = 80;
        }
        *(u16 *)&data[12] = coordinate;
        *(u16 *)&data[14] = 112;
        *field58 = 0;
    }
}


void DrawFileSelectSlotText(void)
{
    DrawFileSelectSaveNameTiles(0);
    DrawFileSelectSaveNameTiles(1);
    DrawFileSelectDifficultyTiles(0);
    DrawFileSelectDifficultyTiles(1);
}

void DrawFileSelectDifficultyTiles(u8 saveIndex)
{
    register const u16 *table asm("r5");
    register u8 *saveData asm("r4");
    register u32 saveOffset asm("r2");
    register u32 language asm("r3");
    register u32 tableIndex asm("r1");
    register u32 baseTile asm("r5");
    register u32 tilemapOffset asm("r2");
    register s32 i asm("r4");
    register u32 attributes asm("r6");
    register u32 attributeLiteral asm("r0");
    register u32 bottomTile asm("r3");
    register vu16 *bottomRow asm("r1");
    register vu16 *topRow asm("r2");
    register u32 address asm("r0");

    table = (const u16 *)sFileSelectDifficultyTileBases;
    saveData = gUnk_3003BF8;
    saveOffset = saveIndex << 3;
    saveData = (u8 *)(saveOffset + (u32)saveData);
    language = gLanguage;
    tableIndex = language << 1;
    tableIndex += language;
    tableIndex += saveData[4];
    tableIndex <<= 1;
    tableIndex += (u32)table;
    baseTile = *(const u16 *)tableIndex;
    tilemapOffset = saveOffset + saveIndex;
    tilemapOffset <<= 6;
    i = 0;
    attributeLiteral = 0xFFFFE000;
    /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
    asm("" : "+r"(attributeLiteral));
    attributes = attributeLiteral;
    bottomTile = baseTile;
    bottomTile += 32;
    address = 151;
    address <<= 1;
    tilemapOffset += address;
    address = 0x0600D040;
    bottomRow = (vu16 *)(tilemapOffset + address);
    address -= 64;
    topRow = (vu16 *)(tilemapOffset + address);
    do {
        address = baseTile + i;
        address |= attributes;
        *topRow = address;
        address = bottomTile;
        address |= attributes;
        *bottomRow = address;
        bottomTile++;
        bottomRow++;
        topRow++;
        i++;
    } while (i <= 4);
}


void DrawFileSelectSaveStatistics(void)
{
    s32 i;
    u8 hidden;
    u8 *save;

    i = 0;
    save = gUnk_3003BF8;
    do {
        hidden = 0;
        if (save[0] == 0) {
            hidden = 1;
        }
        DrawFileSelectScoreTiles(i, hidden);
        DrawFileSelectTreasureCountTiles(i, hidden);
        DrawFileSelectCollectionTiles(i, hidden);
        save += 8;
        i++;
    } while (i <= 1);
}

void DrawFileSelectScoreTiles(u8 idx, u8 hidden)
{
    u16 digits[6];
    u32 saveOffset;
    u32 value;
    u16 attributes;
    s32 i;
    vu16 *topRow;
    vu16 *bottomRow;

    {
        register u32 zero asm("r2");
        u16 *digitPointer;

        zero = 0;
        digitPointer = &digits[5];
        do {
            *digitPointer = zero;
            digitPointer--;
        } while ((s32)digitPointer >= (s32)digits);
    }

    attributes = 0xE300;
    if (hidden != 0) {
        saveOffset = idx << 3;
        {
            register u32 hiddenTile asm("r1");
            register u32 hiddenDigit asm("r0");
            u16 *digitPointer;

            register u32 hiddenAddress asm("r0");

            hiddenDigit = 14;
            hiddenTile = attributes;
            hiddenTile |= hiddenDigit;
            hiddenAddress = (u32)digits;
            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
            asm("" : "+r"(hiddenAddress));
            hiddenAddress += 10;
            digitPointer = (u16 *)hiddenAddress;
            do {
                *digitPointer = hiddenTile;
                digitPointer--;
            } while ((s32)digitPointer >= (s32)digits);
        }
    } else {
        value = *(u32 *)(sPrimarySaveHeaderBuffers[idx] + 32);
        digits[0] = (value / 10000) % 10;
        if (digits[0] != 0) {
            digits[0] |= attributes;
        }
        digits[1] = (value / 1000) % 10;
        if (digits[0] != 0 || digits[1] != 0) {
            digits[1] |= attributes;
        }
        digits[2] = (value / 100) % 10;
        if (digits[1] != 0 || digits[2] != 0) {
            digits[2] |= attributes;
        }
        digits[3] = (value / 10) % 10;
        if (digits[2] != 0 || digits[3] != 0) {
            digits[3] |= attributes;
        }
        digits[4] = value % 10;
        if (digits[3] != 0 || digits[4] != 0) {
            digits[4] |= attributes;
        }
        digits[5] = attributes;
        saveOffset = idx << 3;
    }

    {
        register u32 selectedOffset asm("r2");
        register u32 tilemapOffset asm("r0");
        register u16 *source asm("r2");
        register u32 rowOffset asm("r1");
        register u32 bottomBase asm("r3");
        register vu16 *bottom asm("r1");
        register u32 topBase asm("r4");
        register vu16 *top asm("r3");
        register s32 remaining asm("r4");

        selectedOffset = saveOffset;
        tilemapOffset = selectedOffset + idx;
        tilemapOffset <<= 6;
        source = digits;
        rowOffset = 206;
        rowOffset <<= 1;
        tilemapOffset += rowOffset;
        bottomBase = 0x0600D040;
        bottom = (vu16 *)(tilemapOffset + bottomBase);
        topBase = 0x0600D000;
        top = (vu16 *)(tilemapOffset + topBase);
        remaining = 5;
        do {
            register u32 digit asm("r0");

            digit = *source;
            *top = digit;
            digit = *source;
            if (digit != 0) {
                digit += 32;
            }
            *bottom = digit;
            bottom++;
            top++;
            source++;
            remaining--;
        } while (remaining >= 0);
    }

}

void DrawFileSelectTreasureCountTiles(u8 idx, u8 hidden)
{
    u16 digits[2];
    u32 count;
    u32 saveOffset;
    u32 attributes;
    register s32 row asm("r5");
    register s32 column asm("r4");
    u32 mask;

    count = 0;
    digits[0] = count;
    digits[1] = count;
    attributes = 0xE340;
    if (hidden != 0) {
        digits[0] = attributes | 11;
        digits[1] = attributes | 11;
        saveOffset = idx << 3;
    } else {
        register u32 entryAddress asm("r0");
        register u32 tableOffset asm("r1");
        register const u8 *entry asm("r2");
        register u32 loopMask asm("r3");

        entryAddress = (u32)sPrimarySaveHeaderBuffers;
        tableOffset = idx << 2;
        tableOffset += entryAddress;
        entryAddress = *(u32 *)tableOffset;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(entryAddress));
        entry = (const u8 *)entryAddress;
        entry += 36;
        row = 0;
        column = idx << 3;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(column));
        saveOffset = column;
        loopMask = 16;
        do {
            column = 0;
            do {
                register u32 entryValue asm("r1");
                register u32 maskedValue asm("r0");

                entryValue = entry[0];
                maskedValue = loopMask;
                /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
                asm("" : "+r"(maskedValue));
                maskedValue &= entryValue;
                if (maskedValue != 0 && column <= 3 && row != 0) {
                    count++;
                }
                entry += 4;
                column++;
            } while (column <= 5);
            row++;
        } while (row <= 4);
        {
            register u16 *digitPointer asm("r4");
            register u32 digit asm("r2");

            digitPointer = digits;
            digit = (count / 10) % 10;
            digitPointer[0] = digit;
            if ((digit << 16) != 0) {
                register u16 *storePointer asm("r1");
                register u32 tile asm("r0");

                storePointer = digits;
                tile = attributes;
                tile |= digit;
                storePointer[0] = tile;
            }
        }
        {
            register u16 *digitPointer asm("r4");
            register u32 digit asm("r0");
            register u16 *storePointer asm("r2");
            register u32 tile asm("r1");

            digitPointer = digits;
            digit = count % 10;
            digitPointer[1] = digit;
            storePointer = digits;
            tile = attributes;
            tile |= digit;
            storePointer[1] = tile;
        }
    }
    {
        register u32 savedOffset asm("r1");
        register u32 combinedOffset asm("r0");
        register u32 tilemapOffset asm("r5");
        register u16 *source asm("r3");
        register u32 rowOffset asm("r4");
        register u32 bottomBase asm("r1");
        register vu16 *bottomRow asm("r2");
        register u32 topBase asm("r4");
        register vu16 *topRow asm("r1");
        register s32 remaining asm("r4");

        savedOffset = saveOffset;
        combinedOffset = savedOffset + idx;
        tilemapOffset = combinedOffset << 6;
        source = digits;
        rowOffset = 215;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(rowOffset));
        rowOffset <<= 1;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(rowOffset));
        combinedOffset = tilemapOffset + rowOffset;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(combinedOffset));
        bottomBase = 0x0600D040;
        bottomRow = (vu16 *)(combinedOffset + bottomBase);
        topBase = 0x0600D000;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(topBase));
        topRow = (vu16 *)(combinedOffset + topBase);
        remaining = 1;
        do {
            register u32 tile asm("r0");

            tile = *source;
            *topRow = tile;
            tile = *source;
            if (tile != 0) {
                tile += 32;
            }
            *bottomRow = tile;
            bottomRow++;
            topRow++;
            source++;
            remaining--;
        } while (remaining >= 0);
    }
}

void DrawFileSelectCollectionTiles(u8 idx, u32 hidden)
{
    u16 primary[6];
    u16 secondary[6];
    const u8 *saveData;
    const u8 *entry;
    volatile u32 saveOffset;
    register u32 commonFlag asm("r6");
    register u32 saveIndex asm("sl");
    register u16 *secondaryBase asm("r8");
    register const u8 *const *saveTable asm("r6");
    register u32 hiddenFlag asm("r1");

    saveIndex = idx;
    hiddenFlag = (u8)hidden;
    asm("" : "+r"(hiddenFlag));
    secondaryBase = secondary;
    saveTable = sPrimarySaveHeaderBuffers;
    {
        register u32 zero asm("r5");
        register u32 fillTile asm("r4");
        register u16 *secondaryPointer asm("r3");
        register u16 *primaryPointer asm("r0");
        register s32 remaining asm("r2");

        zero = 0;
        fillTile = 0xB240;
        secondaryPointer = secondaryBase;
        primaryPointer = primary;
        remaining = 5;
        do {
            *primaryPointer = fillTile;
            *secondaryPointer = zero;
            secondaryPointer++;
            primaryPointer++;
            remaining--;
        } while (remaining >= 0);
    }

    saveData = saveTable[saveIndex];
    entry = saveData + 172;
    {
        register u32 commonValue asm("r0");

        commonValue = *entry;
        commonFlag = commonValue >> 4;
        commonValue = 1;
        commonFlag &= commonValue;
    }
    {
        register u32 offsetValue asm("r0");
        offsetValue = saveIndex;
        asm("" : : "r"(offsetValue));
        offsetValue <<= 3;
        saveOffset = offsetValue;
    }
    if (hiddenFlag == 0) {
        register u32 bitMask asm("r9");
        register s32 secondaryAddress asm("r2");
        register s32 primaryAddress asm("r3");
        register s32 tileOffset asm("ip");
        register s32 secondaryStart asm("r5");
        s32 specialTile;

        entry -= 120;
        {
            register u32 bitMaskValue asm("r2");
            bitMaskValue = 32;
            asm("" : "+r"(bitMaskValue));
            bitMask = bitMaskValue;
        }
        secondaryStart = (s32)secondaryBase;
        secondaryAddress = (s32)secondaryBase;
        {
            register s32 zeroValue asm("r0");
            zeroValue = 0;
            asm("" : "+r"(zeroValue));
            tileOffset = zeroValue;
        }
        primaryAddress = (s32)primary;
        specialTile = (s16)0xC1EA;
        do {
            register u32 entryFlags asm("r1");

            entryFlags = *entry;
            if ((bitMask & entryFlags) != 0 || commonFlag != 0) {
                *(u16 *)primaryAddress = (s16)0xB1EA + tileOffset;
                if (secondaryAddress > secondaryStart + 4) {
                    *(u16 *)primaryAddress = specialTile;
                }
            }
            entryFlags = *entry;
            if ((bitMask & entryFlags) != 0) {
                register s32 secondaryTile asm("r0");

                secondaryTile = (s16)0xB220;
                *(u16 *)secondaryAddress = secondaryTile;
            }
            entry += 24;
            secondaryAddress += 2;
            tileOffset += 2;
            primaryAddress += 2;
            specialTile += 2;
        } while (secondaryAddress <= secondaryStart + 10);
    }

    {
        register u16 *secondaryPointer asm("r5");
        register u16 *primaryPointer asm("r1");
        register vu16 *thirdRow asm("r4");
        register vu16 *secondRow asm("r3");
        register vu16 *firstRow asm("r2");
        register u32 tilemapOffset asm("r0");
        register u32 rowBase asm("r6");

        tilemapOffset = saveOffset;
        tilemapOffset += saveIndex;
        tilemapOffset <<= 6;
        secondaryPointer = secondaryBase;
        primaryPointer = primary;
        tilemapOffset += 204;
        thirdRow = (vu16 *)(tilemapOffset + 0x0600D080);
        rowBase = 0x0600D040;
        secondRow = (vu16 *)(tilemapOffset + rowBase);
        rowBase -= 64;
        firstRow = (vu16 *)(tilemapOffset + rowBase);
        do {
            register u32 tile asm("r0");

            tile = *secondaryPointer;
            *firstRow = tile;
            tile = *primaryPointer;
            *secondRow = tile;
            tile = *primaryPointer;
            tile += 32;
            *thirdRow = tile;
            thirdRow++;
            secondRow++;
            firstRow++;

            if (*secondaryPointer != 0) {
                tile = *secondaryPointer;
                tile += 1;
            } else {
                tile = 0;
            }
            *firstRow = tile;
            tile = *primaryPointer;
            tile += 1;
            *secondRow = tile;
            tile = *primaryPointer;
            tile += 33;
            *thirdRow = tile;
            thirdRow++;
            secondRow++;
            firstRow++;
            secondaryPointer++;
            asm("" : "+r"(primaryPointer));
            primaryPointer++;
            {
                register u16 *endPointer asm("r0");

                endPointer = primary;
                endPointer += 5;
                if ((s32)primaryPointer > (s32)endPointer) {
                    break;
                }
            }
        } while (1);
    }
}

void RefreshFileSelectSaveSummary(u8 saveIndex)
{
    register u8 index asm("r5");
    register u8 *saveData asm("r2");
    register u32 tableOffset asm("r4");
    register u32 saveOffset asm("r0");
    register u8 *save asm("r3");
    register const u8 *const *tableEntry asm("r1");
    u8 saveType;

    index = saveIndex;
    saveData = gUnk_3003BF8;
    saveOffset = index << 3;
    save = (u8 *)(saveOffset + (u32)saveData);
    tableEntry = sPrimarySaveHeaderBuffers;
    tableOffset = index << 2;
    tableEntry = (const u8 *const *)(tableOffset + (u32)tableEntry);
    save[2] = (*tableEntry)[25];
    save[3] = (*tableEntry)[26];
    save[4] = (*tableEntry)[24];
    saveType = save[0];
    if (saveType == 3) {
        register const u8 *const *alternateEntry asm("r0");

        alternateEntry = (const u8 *const *)((const u8 *)sStageSelectionSaveBuffers + tableOffset);
        save[2] = (*alternateEntry)[1];
        save[3] = (*alternateEntry)[2];
    } else if (saveType == 2) {
        register const u8 *const *alternateEntry asm("r0");

        alternateEntry = (const u8 *const *)((const u8 *)sMainSaveDataBuffers + tableOffset);
        save[2] = (*alternateEntry)[25];
        save[3] = (*alternateEntry)[26];
    }
    {
        register u8 *finalSave asm("r0");
        u8 finalType;

        finalSave = (u8 *)((index << 3) + (u32)saveData);
        finalType = finalSave[0];
        if (finalType == 0) {
            finalSave[4] = finalType;
        }
    }
}


void DrawFileSelectSaveNameTiles(u8 saveIndex)
{
    register u32 index asm("r0");
    register vu16 *destination asm("r6");
    register u8 *save asm("r2");
    register const u8 *text asm("r5");
    register u8 *saveBase asm("r1");
    u32 offset;

    index = saveIndex;
    destination = (vu16 *)0x0600C044;
    if (index != 0) {
        destination = (vu16 *)0x0600C284;
    }
    saveBase = gUnk_3003BF8;
    offset = index << 3;
    save = (u8 *)(offset + (u32)saveBase);
    if (save[0] == 0 || save[0] == 0x80) {
        register u32 language asm("r0");

        language = gLanguage;
        text = sFileSelectEmptySlotLabelLanguage1;
        if (language == 0) {
            text = sFileSelectEmptySlotLabelLanguage0;
        }
    } else if (save[3] <= 5) {
        register u32 language asm("r0");
        register const u8 *const *table asm("r3");
        register u32 tableIndex asm("r1");
        register u32 saveValue asm("r2");
        register u32 valueOffset asm("r0");

        language = gLanguage;
        if (language == 0) {
            table = sFileSelectPassageNameTableLanguage0;
        } else {
            table = sFileSelectPassageNameTableLanguage1;
        }
        tableIndex = save[3];
        tableIndex <<= 2;
        saveValue = save[2];
        valueOffset = saveValue << 1;
        valueOffset += saveValue;
        valueOffset <<= 3;
        tableIndex += valueOffset;
        tableIndex += (u32)table;
        text = *(const u8 **)tableIndex;
    } else {
        register u32 language asm("r0");
        register const u8 *const *table asm("r1");
        register u32 tableIndex asm("r0");

        language = gLanguage;
        if (language == 0) {
            table = sFileSelectStageNameTableLanguage0;
        } else {
            table = sFileSelectStageNameTableLanguage1;
        }
        tableIndex = save[2];
        tableIndex <<= 2;
        tableIndex += (u32)table;
        text = *(const u8 **)tableIndex;
    }
    {
        register u32 highMask asm("ip");
        register u32 lowMask asm("r8");
        register u32 attributeLiteral asm("r0");
        u32 attributes;
        register vu16 *bottomRow asm("r4");
        register vu16 *topRow asm("r3");
        register s32 remaining asm("r6");

        highMask = 0xE0;
        lowMask = 0x1F;
        attributeLiteral = 0xFFFFE000;
        asm("" : : "r"(attributeLiteral));
        attributes = attributeLiteral;
        bottomRow = destination + 32;
        topRow = destination;
        remaining = 25;
        do {
            register u32 character asm("r0");
            register u32 mask asm("r1");
            register u32 tile asm("r2");

            character = text[0];
            mask = highMask;
            character &= mask;
            tile = character << 1;
            mask = text[0];
            character = lowMask;
            character &= mask;
            tile |= character;
            character = tile;
            character |= attributes;
            *topRow = character;
            character = tile;
            character += 32;
            character |= attributes;
            *bottomRow = character;
            text++;
            bottomRow++;
            topRow++;
            remaining--;
        } while (remaining >= 0);
    }
}

void DrawFileSelectLabelTiles(void)
{
    register vu16 *topRow asm("r2");
    register vu16 *bottomRow asm("r3");
    register const u8 *source asm("r4");
    register u32 index asm("r1");

    {
        register vu16 *base asm("r0");

        base = (vu16 *)0x0600C4AC;
        asm("" : "+r"(base));
        index = 0;
        source = sFileSelectLabelTileData;
        bottomRow = base;
        bottomRow += 32;
        topRow = base;
    }
    do {
        register s32 tile asm("r0");

        tile = *(const u8 *)(index + (u32)source);
        if (tile > 96) {
            tile -= 29;
        } else if (tile > 64) {
            tile -= 55;
        } else if (tile > 47) {
            tile -= 48;
        }
        *topRow = tile;
        tile += 32;
        *bottomRow = tile;
        index++;
        bottomRow++;
        topRow++;
    } while (index <= 4);
}


void FinalizeFileSelect(void)
{
    InterruptCallbackSetVBlank(FileSelectSoundMainCallback);
    *(vu8 *)0x04000049 = 0x3F;
    *(vu16 *)0x04000050 = 0xFF;
    *(vu16 *)0x04000054 = 0x10;
    if ((s8)gStageEntrySoftResetDisabled != 2) {
        LoadSelectedFileState();
    }
    BuildSelectedSaveValidationHeader();
    gOamSlotsUsed = 0;
    ResetFreeOam();
    *(vu16 *)0x04000040 = 0;
    *(vu16 *)0x04000044 = 0;
    *(vu16 *)0x04000042 = 0;
    *(vu16 *)0x04000046 = 0;
    SetFileSelectVBlankCallback();
}

void LoadSelectedFileState(void)
{
    register u8 *output asm("r2");
    register u8 *saveData asm("r6");
    register u8 *selectedFile asm("r5");
    register u8 loadedFlag asm("r1");
    register u32 saveFlag asm("r4");
    register u32 offset asm("r0");

    output = &gSaveFlag;
    saveData = gUnk_3003BF8;
    selectedFile = &gSelectedSaveFile;
    offset = *selectedFile;
    offset <<= 3;
    offset += (u32)saveData;
    loadedFlag = *(u8 *)offset;
    *output = loadedFlag;
    output = &gHasTemporarySave;
    offset = *selectedFile;
    offset <<= 3;
    offset += (u32)saveData;
    *output = *(u8 *)(offset + 1);
    saveFlag = loadedFlag;
    if (saveFlag == 0) {
        register u8 *destination asm("r0");
        register u8 *stageDestination asm("r1");
        register u32 stage asm("r0");
        register u8 *difficulty asm("r1");

        FlushSaveFileAndRefreshSaveData();
        destination = &gCurrentPassage;
        *destination = saveFlag;
        stageDestination = &gCurrentStageNumber;
        stage = 6;
        *stageDestination = stage;
        difficulty = &gDifficulty;
        offset = *selectedFile;
        offset <<= 3;
        offset += (u32)saveData;
        *difficulty = *(u8 *)(offset + 4);
        BuildMainSaveWorkingBuffer();
    } else {
        FlushSaveFileAndMaybeRestoreTempSave();
    }
    {
        register u8 *difficulty asm("r2");
        register u8 *finalSaveData asm("r1");
        register u32 finalOffset asm("r0");

        difficulty = &gDifficulty;
        finalSaveData = gUnk_3003BF8;
        finalOffset = gSelectedSaveFile;
        finalOffset <<= 3;
        finalOffset += (u32)finalSaveData;
        *difficulty = *(u8 *)(finalOffset + 4);
    }
}


u32 UpdateFileSelectSaveRecovery(void)
{
    u32 finished;
    u16 fillValue;

    finished = 0;
    switch (gSpriteAiDropTimer) {
        case 0:
            if (gUnk_300188E > 10) {
                m4aSongNumStart(0x11E);
                gSpriteAiDropTimer++;
                gUnk_300188E = 0;
            }
            break;
        case 1:
            if (gUnk_300188E > 40) {
                gUnk_3004A70.unk_0A = sFileSelectStyleAnimationTypes[0];
                gUnk_3004A70.unk_08 = 0;
                gUnk_3004A70.unk_09 = 0;
                gSpriteAiDropTimer++;
                gUnk_300188E = 0;
            }
            break;
        case 2:
            if (gUnk_300188E > 10) {
                gSpriteAiDropTimer++;
                gUnk_300188E = 0;
            }
            break;
        case 3:
            if ((gButtonsPressed & 1) != 0) {
                m4aSongNumStart(0x125);
                gUnk_3004A70.unk_0A = sFileSelectStyleAnimationTypes[1];
                gUnk_3004A70.unk_08 = 0;
                gUnk_3004A70.unk_09 = 0;
                gSpriteAiDropTimer++;
                gUnk_300188E = 0;
            }
            break;
        case 4:
            if (gUnk_300188E > 8) {
                register u8 *selectedFilePointer asm("r4");
                register u32 selectedFile asm("r1");
                register u8 *saveData asm("r2");
                register u32 selectedIndex asm("r3");
                u8 saveType;

                selectedFilePointer = &gSelectedSaveFile;
                selectedFile = 0;
                saveData = gUnk_3003BF8;
                if (saveData[5] == 0) {
                    selectedFile = 1;
                }
                *selectedFilePointer = selectedFile;
                selectedIndex = *selectedFilePointer;
                saveType = saveData[selectedIndex * 8 + 5];
                switch (saveType) {
                    case 1:
                    {
                        register vu32 *dma asm("r1");
                        register const u8 *const *destinationTable asm("r2");
                        register u32 destinationAddress asm("r0");

                        register u16 *fillPointer asm("r1");
                        register u32 sourceAddress asm("r0");
                        register u32 dmaControl asm("r0");

                        fillPointer = &fillValue;
                        sourceAddress = 0;
                        *fillPointer = sourceAddress;
                        dma = (vu32 *)0x040000D4;
                        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
                        asm("" : "=r"(sourceAddress));
                        sourceAddress = (u32)&fillValue;
                        dma[0] = sourceAddress;
                        destinationTable = sMainSaveDataBuffers;
                        destinationAddress = *selectedFilePointer;
                        destinationAddress <<= 2;
                        destinationAddress += (u32)destinationTable;
                        dma[1] = *(u32 *)destinationAddress;
                        dma[2] = 0x81001C00;
                        dmaControl = dma[2];
                        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
                        asm("" : : "r"(dmaControl));
                        func_8000FBC();
                        break;
                    }
                    case 2:
                    {
                        register vu32 *dma asm("r2");
                        register const u8 *const *table asm("r1");
                        register u32 tableAddress asm("r0");

                        dma = (vu32 *)0x040000D4;
                        table = sSecondarySaveHeaderBuffers;
                        tableAddress = selectedIndex << 2;
                        tableAddress += (u32)table;
                        dma[0] = *(u32 *)tableAddress;
                        table = sPrimarySaveHeaderBuffers;
                        tableAddress = *selectedFilePointer;
                        tableAddress <<= 2;
                        tableAddress += (u32)table;
                        dma[1] = *(u32 *)tableAddress;
                        {
                            register u32 dmaControl asm("r0");

                            dma[2] = 0x80000100;
                            dmaControl = dma[2];
                            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
                            asm("" : : "r"(dmaControl));
                        }
                        func_8000F64();
                        break;
                    }
                    case 3:
                    {
                        register vu32 *dma asm("r1");
                        register const u8 *const *destinationTable asm("r2");
                        register u32 destinationAddress asm("r0");

                        fillValue = 0;
                        dma = (vu32 *)0x040000D4;
                        dma[0] = (u32)&fillValue;
                        destinationTable = sPrimarySaveHeaderBuffers;
                        destinationAddress = *selectedFilePointer;
                        destinationAddress <<= 2;
                        destinationAddress += (u32)destinationTable;
                        dma[1] = *(u32 *)destinationAddress;
                        {
                            register u32 dmaControl asm("r0");

                            dma[2] = 0x81000200;
                            dmaControl = dma[2];
                            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
                            asm("" : : "r"(dmaControl));
                        }
                        func_8000F64();
                        func_8000F90();
                        break;
                    }
                }
                gSpriteAiDropTimer++;
                gUnk_300188E = 0;
            }
            break;
        case 5:
            if (gUnk_300188E > 35) {
                finished = 1;
                gSpriteAiDropTimer = 0;
                gUnk_300188E = 0;
            }
            break;
    }
    return finished;
}


u32 FileSelectSubroutine(void)
{
    u32 finished;

    finished = 0;
    gUnk_300188E++;
    switch (gSubGameMode) {
        case 0:
        {
            register s16 *modePointer asm("r4");
            register u32 nextMode asm("r1");

            register u32 initResult asm("r0");

            initResult = InitializeFileSelect();
            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
            asm("" : "=r"(modePointer));
            nextMode = 1;
            if (initResult != 0) {
                nextMode = 8;
            }
            *modePointer = nextMode;
            break;
        }
        case 1:
        case 8:
            func_80703DC();
            if (UpdateFileSelectFadeIn() != 0) {
                gSubGameMode++;
            }
            break;
        case 2:
        {
            register u32 softResetOrAction asm("r4");
            register u32 rawAction asm("r0");
            s32 action;

            softResetOrAction = (u32)&gStageEntrySoftResetDisabled;
            rawAction = GetFileSelectActionResult();
            *(u8 *)softResetOrAction = rawAction;
            action = (s8)rawAction;
            softResetOrAction = action;
            if (action != 0) {
                gUnk_3003BF8[0] &= 0x7F;
                gUnk_3003BF8[8] &= 0x7F;
                gUnk_300188E = 0;
                if (action == 2) {
                    {
                        register const struct MusicPlayer *musicPlayers asm("r2");
                        register u32 songAddress asm("r0");
                        register u32 songOffsetOrIndex asm("r1");

                        musicPlayers = gMPlayTable;
                        songAddress = (u32)gSongTable;
                        songOffsetOrIndex = 0x13E4;
                        songAddress += songOffsetOrIndex;
                        songOffsetOrIndex = *(u16 *)songAddress;
                        songAddress = songOffsetOrIndex << 1;
                        songAddress += songOffsetOrIndex;
                        songAddress <<= 2;
                        songAddress += (u32)musicPlayers;
                        m4aMPlayFadeOut(*(struct MusicPlayerInfo **)songAddress, 2);
                    }
                    {
                        register u8 *cutsceneState asm("r3");
                        register const u8 *styleTable asm("r2");
                        register u32 styleIndex asm("r0");
                        register u32 style asm("r1");

                        cutsceneState = (u8 *)&gUnk_3004A70;
                        styleTable = sFileSelectStyleAnimationTypes;
                        style = gTitleScreenStyle;
                        styleIndex = style << 1;
                        styleIndex += style;
                        styleTable += 2;
                        styleIndex += (u32)styleTable;
                        cutsceneState[10] = *(u8 *)styleIndex;
                        cutsceneState[8] = 0;
                        cutsceneState[9] = 0;
                    }
                    gSubGameMode = 5;
                } else {
                    register u32 selectedEntry asm("r0");

                    selectedEntry = gSelectedSaveFile;
                    selectedEntry <<= 3;
                    selectedEntry += (u32)gUnk_3003BF8;
                    if ((*(u8 *)(selectedEntry + 1) & 0x80) != 0) {
                        ResetFileSelectSelectedSlotAnimation(1);
                    m4aSongNumStart(0x11F);
                        gSubGameMode = 3;
                    } else {
                        gSubGameMode = 4;
                    }
                }
            } else {
                UpdateFileSelectInteraction();
            }
            break;
        }
        case 3:
        {
            register u8 *cutsceneState asm("r2");
            register u8 *selectedFile asm("r0");
            register u32 selectedIndex asm("r1");
            register u32 entryAddress asm("r0");

            cutsceneState = (u8 *)&gUnk_3004A70;
            selectedFile = &gSelectedSaveFile;
            selectedIndex = *selectedFile;
            selectedIndex += 2;
            entryAddress = selectedIndex << 1;
            entryAddress += selectedIndex;
            entryAddress <<= 2;
            entryAddress += (u32)cutsceneState;
            if (*(u8 *)(entryAddress + 10) == 0) {
                gUnk_300188E = 0;
                gSubGameMode++;
            }
            break;
        }
        case 4:
            if (gUnk_300188E > 20) {
                if (gUnk_3003BF8[gSelectedSaveFile * 8] != 0) {
                    m4aSongNumStop(0x27C);
                }
                gSubGameMode = 6;
            }
            break;
        case 5:
            if (gUnk_300188E > 40) {
                gSubGameMode = 6;
            }
            break;
        case 6:
            func_80703DC();
            if (UpdateFileSelectFadeOut() != 0) {
                gSubGameMode++;
            }
            break;
        case 7:
            FinalizeFileSelect();
            finished = 1;
            break;
        case 9:
            if (UpdateFileSelectSaveRecovery() != 0) {
                gSubGameMode++;
            }
            break;
        case 10:
            func_80703DC();
            if (UpdateFileSelectFadeOut() != 0) {
                gSubGameMode = 0;
            }
            break;
    }
    if (finished == 0) {
        gOamSlotsUsed = 0;
        UpdateAndDrawFileSelectSprites();
        ResetFreeOam();
    }
    return finished;
}


void SetFileSelectInteractionMode(u8 inputMode)
{
    register s32 mode asm("r4");
    register u32 value asm("r3");
    register u8 *state asm("r0");

    mode = inputMode;
    if (mode == 1) {
        goto mode_one;
    }
    if (mode <= 1) {
        goto other_mode;
    }
    if (mode == 2) {
        goto other_mode;
    }
    if (mode == 3) {
        goto mode_three;
    }
    goto other_mode;

mode_one:
    {
        register u8 *saveData asm("r1");
        register u32 offset asm("r0");

        saveData = gUnk_3003BF8;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(saveData));
        offset = gSelectedSaveFile << 3;
        offset += (u32)saveData;
        value = *(u8 *)(offset + 4);
    }
    if (value == 2) {
        state = gFileSelectState;
        state[2] = value;
        goto set_mode;
    }
    if (value == 1) {
        state = gFileSelectState;
        state[2] = mode;
        goto set_mode;
    }

other_mode:
    {
        register u8 *otherState asm("r1");
        register u32 zero asm("r0");

        otherState = gFileSelectState;
        zero = 0;
        otherState[2] = zero;
        state = otherState;
    }
    goto set_mode;

mode_three:
    {
        register u8 *modeThreeState asm("r2");
        register u32 zero asm("r0");

        modeThreeState = gFileSelectState;
        zero = 0;
        modeThreeState[2] = zero;
        value = gUnk_3003BF8[gSelectedSaveFile << 3];
        state = modeThreeState;
        if (value == 0) {
            state[1] = value;
            return;
        }
    }

set_mode:
    state[1] = mode;
}


u32 GetFileSelectActionResult(void)
{
    u32 result;
    char *state;

    result = 0;
    state = (char *)gFileSelectState;
    switch (state[0]) {
        case 0:
        case 1:
            result = state[4];
            break;
        case 2:
            if (state[4] == 2) {
                result = 2;
            }
            break;
    }
    return result;
}


void UpdateFileSelectInteraction(void)
{
    char *state;

    state = (char *)gFileSelectState;
    if (state[3] != 0) {
        ExecuteFileSelectAction();
    } else {
        switch (state[0]) {
            case 0:
            case 1:
                HandleFileSelectInput();
                break;
            case 2:
                HandleFileConfirmationInput();
                break;
        }
    }
    UpdateFileSelectPromptAnimation();
    UpdateFileSelectMainAnimationPosition();
    UpdateFileSelectSlotMarkerAnimation();
    UpdateFileSelectOperationLabelAnimation();
}


void ExecuteFileSelectAction(void)
{
    u16 fillValue;
    u32 preserveAction;
    register u8 *state asm("r2");
    register u32 switchIndex asm("r0");
    register u32 actionValue asm("r0");
    u8 expectedAnimation;

    {
        register struct SaveDataClearData *data asm("r3");
        register const u8 *animationTable asm("r2");
        register u8 *stylePointer asm("r0");
        register u32 style asm("r1");
        register u32 animationIndex asm("r0");
        register u32 currentAnimation asm("r1");

        data = &gUnk_3004A70;
        animationTable = sFileSelectStyleAnimationTypes;
        stylePointer = &gTitleScreenStyle;
        style = *stylePointer;
        animationIndex = style << 1;
        animationIndex += style;
        animationTable++;
        animationIndex += (u32)animationTable;
        currentAnimation = data->unk_0A;
        expectedAnimation = *(const u8 *)animationIndex;
        if (currentAnimation == expectedAnimation) {
            goto return_from_dispatcher;
        }
        if (currentAnimation == 32) {
            goto return_from_dispatcher;
        }
    }

    preserveAction = 0;
    {
        register u8 *stateBase asm("r1");

        stateBase = gFileSelectState;
        switchIndex = stateBase[3];
        switchIndex--;
        state = stateBase;
    }
    switch (switchIndex) {
        case 0:
        case 1:
            goto action_one_or_two;
        case 2:
            goto action_three;
        case 3:
            goto action_four;
        case 4:
            goto action_five;
        case 5:
            goto action_six;
        case 6:
            goto action_seven;
        case 7:
            goto action_eight;
        case 8:
            goto action_nine;
        case 9:
            goto action_ten;
        case 10:
            goto action_eleven;
        case 11:
            goto action_twelve;
        case 12:
            goto set_display_state_one;
        case 13:
            goto action_fourteen;
        case 14:
            goto reset_file_select_state;
        case 15:
            goto action_sixteen;
        case 16:
            goto action_seventeen;
        case 17:
            goto action_eighteen;
        default:
            goto finish_action;
    }

action_one_or_two:
    if (state[3] == 1) {
        actionValue = 0;
        goto set_display_state;
    }
    goto set_display_state_one;

action_three:
    SetFileSelectInteractionMode(1);
    goto finish_action;

action_four:
    actionValue = 0;
    state[2] = actionValue;
    state[1] = actionValue;
    actionValue = 2;
    state[0] = actionValue;
    UpdateFileSelectWindow();
    goto finish_action;

action_six:
    {
        register u8 *saveData asm("r1");
        register u8 *selectedFile asm("r0");
        register u32 offset asm("r0");
        register u32 flag asm("r1");

        saveData = gUnk_3003BF8;
        selectedFile = &gSelectedSaveFile;
        offset = *selectedFile;
        offset <<= 3;
        offset += (u32)saveData;
        flag = 0x80;
        *(u8 *)offset = flag;
        BuildSelectedSaveValidationHeader();
        goto set_action_seventeen;
    }

action_seven:
    {
        register u32 selectedDifficulty asm("r1");
        register u32 difficulty asm("r3");
        register u8 *saveData asm("r2");
        register u8 *selectedFile asm("r1");
        register u32 offset asm("r0");

        selectedDifficulty = state[2];
        difficulty = 2;
        if (selectedDifficulty != 2) {
            difficulty = 0;
            if (selectedDifficulty == 1) {
                difficulty = 1;
            }
        }
        saveData = gUnk_3003BF8;
        selectedFile = &gSelectedSaveFile;
        offset = *selectedFile;
        offset <<= 3;
        offset += (u32)saveData;
        *(u8 *)(offset + 4) = difficulty;
        actionValue = *selectedFile;
        DrawFileSelectDifficultyTiles(actionValue);
        goto finish_action;
    }

action_eight:
    {
        register u8 *saveData asm("r1");
        register u8 *selectedFile asm("r2");
        register u32 offset asm("r0");
        register u32 zero asm("r1");

        actionValue = 0;
        SetFileSelectInteractionMode(actionValue);
        saveData = gUnk_3003BF8;
        selectedFile = &gSelectedSaveFile;
        offset = *selectedFile;
        offset <<= 3;
        offset += (u32)saveData;
        zero = 0;
        *(u8 *)(offset + 4) = zero;
        actionValue = *selectedFile;
        DrawFileSelectDifficultyTiles(actionValue);
        goto finish_action;
    }

action_eleven:
    actionValue = 1;
    state[2] = actionValue;
    goto finish_action;

action_twelve:
    actionValue = 0;
    state[2] = actionValue;
    goto finish_action;

action_nine:
    {
        register vu32 *dma asm("r1");
        register u32 zero asm("r6");
        register u8 *selectedFile asm("r4");
        register u8 *saveData asm("r5");
        register u32 index asm("r0");
        register const u8 *const *table asm("r2");
        register u32 tableAddress asm("r0");

        register u16 *fillPointer asm("r0");

        fillPointer = &fillValue;
        zero = 0;
        *fillPointer = zero;
        dma = DMA3;
        dma[0] = (u32)fillPointer;
        table = sPrimarySaveHeaderBuffers;
        selectedFile = &gSelectedSaveFile;
        index = *selectedFile;
        index <<= 2;
        tableAddress = index + (u32)table;
        dma[1] = *(u32 *)tableAddress;
        dma[2] = 0x81000200;
        (void)dma[2];
        fillValue = zero;
        dma[0] = (u32)&fillValue;
        table = sMainSaveDataBuffers;
        index = *selectedFile;
        index <<= 2;
        tableAddress = index + (u32)table;
        dma[1] = *(u32 *)tableAddress;
        dma[2] = 0x81001C00;
        (void)dma[2];
        actionValue = *selectedFile;
        func_8000D98(actionValue);
        saveData = gUnk_3003BF8;
        index = *selectedFile;
        index <<= 3;
        if ((saveData[index + 1] & 0x80) != 0) {
            actionValue = 0;
            ResetFileSelectSelectedSlotAnimation(actionValue);
        }
        index = *selectedFile;
        index <<= 3;
        index += (u32)saveData;
        *(u8 *)index = zero;
        index = *selectedFile;
        index <<= 3;
        saveData[index + 1] = zero;
        actionValue = *selectedFile;
        RefreshFileSelectSaveSummary(actionValue);
        DrawFileSelectSlotText();
        actionValue = *selectedFile;
        DrawFileSelectScoreTiles(actionValue, 1);
        actionValue = *selectedFile;
        DrawFileSelectTreasureCountTiles(actionValue, 1);
        actionValue = *selectedFile;
        DrawFileSelectCollectionTiles(actionValue, 1);
        goto reset_file_select_state;
    }

reset_file_select_state:
    {
        register u8 *resetState asm("r0");
        register u32 zero asm("r2");
        register u32 mode asm("r1");

        resetState = gFileSelectState;
        zero = 0;
        resetState[5] = zero;
        mode = 2;
        resetState[0] = mode;
        resetState[2] = zero;
        resetState[1] = zero;
        UpdateFileSelectWindow();
        goto finish_action;
    }

set_display_state_one:
    actionValue = 1;
set_display_state:
    state[0] = actionValue;
    UpdateFileSelectWindow();
action_ten:
    actionValue = 3;
    SetFileSelectInteractionMode(actionValue);
    goto finish_action;

action_fourteen:
    actionValue = 1;
    state[5] = actionValue;
    goto finish_action;

action_sixteen:
    {
        register const void *mplayTable asm("r2");
        register const u8 *songTable asm("r0");
        register u32 songTableOffset asm("r1");
        register u32 songIndex asm("r1");
        register u32 tableOffset asm("r0");
        register void *mplayInfo asm("r0");
        register u32 trackMask asm("r1");
        register u32 volume asm("r2");

        mplayTable = gMPlayTable;
        songTable = (const u8 *)gSongTable;
        songTableOffset = 0x13E4;
        songTable = (const u8 *)((u32)songTable + songTableOffset);
        songIndex = *(const u16 *)songTable;
        tableOffset = songIndex << 1;
        tableOffset += songIndex;
        tableOffset <<= 2;
        tableOffset += (u32)mplayTable;
        mplayInfo = *(void **)tableOffset;
        trackMask = 0xFFFF;
        asm("" : : "r"(trackMask));
        volume = 40;
        m4aMPlayVolumeControl(mplayInfo, trackMask, volume);
    }
set_action_seventeen:
    {
        register u8 *actionState asm("r1");

        actionState = gFileSelectState;
        actionValue = 17;
        actionState[3] = actionValue;
        goto return_from_dispatcher;
    }

action_five:
    actionValue = 2;
    SetFileSelectInteractionMode(actionValue);
    goto finish_action;

action_seventeen:
    actionValue = 1;
    state[4] = actionValue;
    goto return_from_dispatcher;

action_eighteen:
    actionValue = 2;
    state[4] = actionValue;
    preserveAction = 1;

finish_action:
    if (preserveAction != 0) {
        goto return_from_dispatcher;
    }
    {
        register u8 *finalState asm("r0");
        register u32 finalMode asm("r3");

        finalState = gFileSelectState;
        finalState[3] = preserveAction;
        finalMode = finalState[5];
        if (finalMode != 0) {
            register struct SaveDataClearData *data asm("r1");
            register u32 currentAnimation asm("r0");

            data = &gUnk_3004A70;
            currentAnimation = data->unk_0A;
            if (currentAnimation != 31) {
                currentAnimation = 31;
                data->unk_0A = currentAnimation;
                data->unk_08 = preserveAction;
                data->unk_09 = preserveAction;
            }
            goto return_from_dispatcher;
        } else {
            register struct SaveDataClearData *data asm("r4");
            register const u8 *animationTable asm("r2");
            register u8 *stylePointer asm("r0");
            register u32 style asm("r1");
            register u32 animationIndex asm("r0");
            register u32 expected asm("r1");
            register u32 current asm("r0");

            data = &gUnk_3004A70;
            animationTable = sFileSelectStyleAnimationTypes;
            stylePointer = &gTitleScreenStyle;
            style = *stylePointer;
            animationIndex = style << 1;
            animationIndex += style;
            animationIndex += (u32)animationTable;
            expected = *(const u8 *)animationIndex;
            current = data->unk_0A;
            if (current != expected) {
                data->unk_0A = expected;
                data->unk_08 = finalMode;
                data->unk_09 = finalMode;
            }
        }
    }

return_from_dispatcher:
    return;
}


void SetFileSelectActionAndSound(u8 action, u8 sound)
{
    u16 songId;

    gFileSelectState[3] = action;
    switch (sound) {
    case 1:
        ResetFileSelectMainAnimation();
    case 5:
        songId = 0x125;
        break;
    case 2:
        songId = 0x129;
        break;
    case 3:
        songId = 0x27D;
        m4aSongNumStart(songId);
        goto after_special_sound;
    case 4:
        {
            register const void *mplayTable asm("r2");
            register const u8 *songTable asm("r0");
            register u32 songTableOffset asm("r1");
            register u32 songIndex asm("r1");
            register u32 tableOffset asm("r0");
            register void *mplayInfo asm("r0");
            register u32 trackMask asm("r1");
            register u32 volume asm("r2");

            mplayTable = gMPlayTable;
            songTable = (const u8 *)gSongTable;
            songTableOffset = 0x13E4;
            songTable = (const u8 *)((u32)songTable + songTableOffset);
            songIndex = *(const u16 *)songTable;
            tableOffset = songIndex << 1;
            tableOffset += songIndex;
            tableOffset <<= 2;
            tableOffset += (u32)mplayTable;
            mplayInfo = *(void **)tableOffset;
            trackMask = 0xFFFF;
            /* Materialize the track mask before the volume constant to preserve call setup order. */
            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
            asm("" : : "r"(trackMask));
            volume = 0x8C;
            m4aMPlayVolumeControl(mplayInfo, trackMask, volume);
        }
after_special_sound:
        ResetFileSelectMainAnimation();
        songId = 0x126;
        break;
    case 6:
        StartFileSelectClosingAnimation();
        songId = 0x128;
        break;
    case 0:
    default:
        songId = 0x124;
        break;
    }
    m4aSongNumStart(songId);
}


void ResetFileSelectMainAnimation(void)
{
  struct SaveDataClearData *data;
  int new_var2;
  const u8 *table;
  u8 *stylePtr;
  u32 style;
  u8 value;
  data = &gUnk_3004A70;
  table = sFileSelectStyleAnimationTypes;
  stylePtr = &gTitleScreenStyle;
  style = *stylePtr;
  new_var2 = style * 3;
  table++;
  value = table[new_var2];
  data->unk_0A = value;
  data->unk_08 = 0;
  data->unk_09 = 0;
}


void StartFileSelectClosingAnimation(void)
{
    gUnk_3004A70.unk_0A = 0x20;
    gUnk_3004A70.unk_08 = 0;
    gUnk_3004A70.unk_09 = 0;
}

void HandleFileSelectInput(void)
{
    register char *state asm("r0");

    state = (char *)gFileSelectState;
    switch (state[1]) {
        case 0:
        case 3:
            HandleFileSlotNavigationInput(state[1]);
            break;
        case 1:
            HandleFileDifficultyInput();
            break;
        case 2:
            HandleFileOperationInput();
            break;
    }
}


void HandleFileSlotNavigationInput(u8 mode)
{
  u32 handled;
  handled = 0;
  if ((gButtonsPressed & 0x40) != 0)
  {
    if (gFileSelectState[0] == 1)
    {
      SetFileSelectActionAndSound(1, 0);
      return;
    }
    if (gFileSelectState[0] == 2)
    {
      SetFileSelectActionAndSound(2, 0);
      return;
    }
  }
  else
    if ((gButtonsPressed & 0x80) != 0)
  {
    if (gFileSelectState[0] == 0)
    {
      SetFileSelectActionAndSound(2, 0);
      return;
    }
    if (gFileSelectState[0] == 1)
    {
      SetFileSelectActionAndSound(4, 0);
      handled = 1;
    }
  }
  if (handled == 0)
  {
    if ((gButtonsPressed & 2) != 0)
    {
      if (gFileSelectState[5] != 0)
      {
        SetFileSelectActionAndSound(15, 2);
      }
      else
      {
        SetFileSelectActionAndSound(18, 2);
      }
    }
    else
      if (mode == 3)
    {
      if ((gButtonsPressed & 1) != 0)
      {
        if (gFileSelectState[5] != 0)
        {
          SetFileSelectActionAndSound(5, 5);
        }
        else
        {
          SetFileSelectActionAndSound(16, 4);
        }
      }
    }
    else
      if (mode == 0)
    {
      if ((gButtonsPressed & 1) != 0)
      {
        if (gFileSelectState[5] != 0)
        {
          m4aSongNumStart(0x129);
        }
        else
        {
          SetFileSelectActionAndSound(3, 5);
        }
      }
    }
  }
}


void HandleFileDifficultyInput(void)
{
    s32 max;
    u16 buttons;
    register u16 maskedButtons asm("r0");

    max = 1;
    if (gTitleScreenStyle != 0) {
        max = 2;
    }
    buttons = gButtonsPressed;
    if ((buttons & 2) != 0) {
        SetFileSelectActionAndSound(8, 2);
    } else if ((buttons & 1) != 0) {
        SetFileSelectActionAndSound(6, 3);
    } else if ((buttons & 0x40) != 0) {
        if (gFileSelectState[2] != 0) {
            gFileSelectState[2]--;
            goto selection_changed;
        }
    } else {
        maskedButtons = 0x80;
        maskedButtons &= buttons;
        if (maskedButtons != 0) {
        if (gFileSelectState[2] < max) {
            gFileSelectState[2]++;
            max = 0;
        }
        }
    }
    if (max != 0) {
        return;
    }
selection_changed:
    SetFileSelectActionAndSound(7, 0);
}


void HandleFileOperationInput(void)
{
  if ((gButtonsPressed & 2) != 0)
  {
    SetFileSelectActionAndSound(10, 2);
  }
  else
    if ((gButtonsPressed & 0x10) != 0)
  {
    if (gFileSelectState[2] != 1)
    {
      SetFileSelectActionAndSound(11, 0);
    }
  }
  else
    if ((gButtonsPressed & 0x20) != 0)
  {
    if (gFileSelectState[2] != 0)
    {
      SetFileSelectActionAndSound(12, 0);
    }
  }
  else
    if (gFileSelectState[2] == 0)
  {
    if ((gButtonsPressed & 1) != 0)
    {
      SetFileSelectActionAndSound(10, 2);
    }
  }
  else
    if (gFileSelectState[2] == 1)
  {
    if ((gButtonsPressed & 1) != 0)
    {
      SetFileSelectActionAndSound(9, 6);
    }
  }
}


void HandleFileConfirmationInput(void)
{
    register u16 buttons asm("r2");

    buttons = gButtonsPressed;
    if ((buttons & 0x40) != 0) {
        SetFileSelectActionAndSound(13, 0);
    } else if ((buttons & 1) != 0 && gFileSelectState[5] == 0) {
        SetFileSelectActionAndSound(14, 1);
    } else if ((gButtonsPressed & 2) != 0) {
        if (gFileSelectState[5] != 0) {
            SetFileSelectActionAndSound(15, 2);
        } else {
            SetFileSelectActionAndSound(18, 2);
        }
    }
}


void UpdateFileSelectWindow(void)
{
    char *state;
    u8 mode;

    state = (char *)gFileSelectState;
    mode = state[0];
    switch (mode) {
        case 0:
            *(vu16 *)0x04000042 = 0xF0;
            *(vu16 *)0x04000046 = 0x48;
            gSelectedSaveFile = mode;
            break;
        case 1:
            *(vu16 *)0x04000042 = 0xF0;
            *(vu16 *)0x04000046 = 0x4890;
            gSelectedSaveFile = mode;
            break;
        case 2:
            *(vu16 *)0x04000042 = 0xF0;
            *(vu16 *)0x04000046 = 0x8FA0;
            break;
    }
    RefreshFileSelectSlotAnimationTypes();
}


u32 UpdateFileSelectFadeIn(void)
{
    return func_80710D8(0, 0);
}

u32 UpdateFileSelectFadeOut(void)
{
    return func_80710D8(1, 0);
}

void UpdateFileSelectMainAnimationPosition(void)
{
    register u8 *statePointer asm("r0");
    register u8 *state asm("r5");
    register u32 stateMode asm("r1");

    statePointer = gFileSelectState;
    stateMode = statePointer[0];
    state = statePointer;
    /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
    asm("" : "+r"(state));
    if (stateMode == 2) {
        register u8 *data asm("r0");
        register u32 coordinate asm("r1");

        data = (u8 *)&gUnk_3004A70;
        coordinate = 160;
        *(u16 *)(data + 0) = coordinate;
        coordinate = 12;
        *(u16 *)(data + 2) = coordinate;
        return;
    }
    {
        register u8 *saveData asm("r1");
        register u32 saveOffset asm("r0");
        register u32 saveValue asm("r0");
        register u32 maskedValue asm("r1");
        register u32 hasSave asm("r3");
        register const u8 *const *offsetTables asm("r1");
        register u32 tableOffset asm("r0");
        register s32 stateIndex asm("r1");
        register const u8 *offsetTable asm("r0");
        register u32 offsetAddress asm("r0");
        register u32 pathOffset asm("r2");
        register const u8 *const *pathTables asm("r1");
        register u32 pathTableOffset asm("r0");
        register const u8 *const *pathEntry asm("r4");
        register const u8 *path asm("r3");
        register u32 markerAddress asm("r0");
        register s32 marker asm("r0");

        saveData = gUnk_3003BF8;
        saveOffset = state[0];
        saveOffset <<= 3;
        saveOffset += (u32)saveData;
        saveValue = *(u8 *)saveOffset;
        maskedValue = 0x7F;
        maskedValue &= saveValue;
        saveValue = -maskedValue;
        saveValue |= maskedValue;
        hasSave = saveValue >> 31;

        offsetTables = sFileSelectCursorPathOffsets;
        tableOffset = hasSave << 2;
        tableOffset += (u32)offsetTables;
        stateIndex = state[1];
        offsetTable = *(const u8 *const *)tableOffset;
        offsetAddress = (u32)offsetTable + stateIndex;
        pathOffset = *(const u8 *)offsetAddress;
        switch (stateIndex) {
            case 1:
            case 2:
            {
                register u32 animationOffset asm("r0");

                animationOffset = state[2];
                animationOffset <<= 2;
                pathOffset += animationOffset;
                break;
            }
        }


        pathTables = sFileSelectCursorPositionPaths;
        pathTableOffset = hasSave << 2;
        pathEntry = (const u8 *const *)(pathTableOffset + (u32)pathTables);
        path = *pathEntry;
        markerAddress = (u32)path + pathOffset;
        marker = *(const s8 *)markerAddress;
        pathOffset++;
        if (marker == 1) {
            register u8 *data asm("r1");
            register u32 valueAddress asm("r0");
            register s32 value asm("r0");
            register u32 coordinate asm("r3");
            register const u8 *secondPath asm("r0");
            register u32 secondAddress asm("r0");
            register s32 secondValue asm("r0");
            register u32 secondCoordinate asm("r2");

            data = (u8 *)&gUnk_3004A70;
            valueAddress = (u32)path + pathOffset;
            value = *(const s8 *)valueAddress;
            coordinate = *(u16 *)(data + 12);
            value += coordinate;
            *(u16 *)(data + 0) = value;
            secondPath = *pathEntry;
            secondAddress = pathOffset + (u32)secondPath;
            secondValue = *(const s8 *)(secondAddress + 2);
            secondCoordinate = *(u16 *)(data + 14);
            secondValue += secondCoordinate;
            *(u16 *)(data + 2) = secondValue;
        } else {
            register u8 *data asm("r1");
            register u32 stateValue asm("r0");
            register u32 valueAddress asm("r0");
            register s32 value asm("r0");
            register const u8 *secondPath asm("r0");
            register u32 secondAddress asm("r0");
            register s32 secondValue asm("r0");

            data = (u8 *)&gUnk_3004A70;
            stateValue = *(volatile u8 *)state;
            /* Keep the path offset live so agbcc preserves the original add operand order. */
            /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
            asm("" : : "r"(pathOffset));
            valueAddress = pathOffset + stateValue;
            valueAddress = (u32)path + valueAddress;
            value = *(const s8 *)valueAddress;
            *(u16 *)(data + 0) = value;
            secondPath = *pathEntry;
            secondAddress = pathOffset + (u32)secondPath;
            secondValue = *(const s8 *)(secondAddress + 2);
            *(u16 *)(data + 2) = secondValue;
        }
    }
}


void UpdateFileSelectPromptAnimation(void)
{
    register u32 value asm("r2");
    register u8 *statePointer asm("r0");
    register u8 *state asm("r5");
    register s32 mode asm("r1");
    register u32 style asm("r4");

    value = 0;
    statePointer = gFileSelectState;
    mode = statePointer[1];
    state = statePointer;
    /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
    asm("" : "+r"(state));
    if (mode == 1) {
        goto mode_one;
    }
    if (mode <= 1) {
        goto update_display;
    }
    if (mode == 2) {
        goto mode_two;
    }
    goto update_display;

mode_one:
    {
            register u8 *stylePointer asm("r0");

            stylePointer = &gTitleScreenStyle;
            if (*stylePointer != 0) {
                register const u8 *table asm("r3");
                register u8 *saveData asm("r0");
                register u32 saveOffset asm("r1");
                register u8 *languagePointer asm("r0");
                register u32 language asm("r2");
                register u32 tableIndex asm("r0");
                register u32 difficulty asm("r1");

                table = sFileSelectStyle1DifficultyAnimationTypes;
                saveData = gUnk_3003BF8;
                saveOffset = state[0];
                saveOffset <<= 3;
                saveOffset += (u32)saveData;
                languagePointer = &gLanguage;
                language = *languagePointer;
                tableIndex = language << 1;
                tableIndex += language;
                difficulty = *(u8 *)(saveOffset + 4);
                tableIndex += difficulty;
                tableIndex += (u32)table;
                value = *(const u8 *)tableIndex;
            } else {
                register const u8 *table asm("r2");
                register u8 *saveData asm("r0");
                register u32 saveOffset asm("r1");
                register u8 *languagePointer asm("r0");
                register u32 tableIndex asm("r0");
                register u32 difficulty asm("r1");

                table = sFileSelectStyle0DifficultyAnimationTypes;
                saveData = gUnk_3003BF8;
                saveOffset = state[0];
                saveOffset <<= 3;
                saveOffset += (u32)saveData;
                languagePointer = &gLanguage;
                tableIndex = *languagePointer;
                tableIndex <<= 1;
                difficulty = *(u8 *)(saveOffset + 4);
                tableIndex += difficulty;
                tableIndex += (u32)table;
                value = *(const u8 *)tableIndex;
            }
            style = 1;
    }
    goto update_display;

mode_two:
    {
            register const u8 *table asm("r1");
            register u8 *languagePointer asm("r0");
            register u32 tableIndex asm("r0");
            register u32 stateValue asm("r2");

            table = sFileSelectOperationChoiceAnimationTypes;
            languagePointer = &gLanguage;
            tableIndex = *languagePointer;
            tableIndex <<= 1;
            stateValue = state[2];
            tableIndex += stateValue;
            tableIndex += (u32)table;
            value = *(const u8 *)tableIndex;
            style = 0;
    }

update_display:
    {
        register u8 *data asm("r3");
        register u32 oldValue asm("r0");

        data = (u8 *)&gUnk_3004A70;
        oldValue = data[22];
        if (value != oldValue) {
            register u32 zero asm("r0");
            register const u8 *positionTable asm("r2");
            register u32 positionIndex asm("r1");
            register u32 xIndex asm("r0");
            register u32 positionValue asm("r0");

            zero = 0;
            data[22] = value;
            data[20] = zero;
            data[21] = zero;
            positionTable = sFileSelectPromptPositions;
            xIndex = state[0];
            positionIndex = style << 1;
            positionIndex += style;
            xIndex += positionIndex;
            xIndex += (u32)positionTable;
            positionValue = *(const u8 *)xIndex;
            *(u16 *)(data + 12) = positionValue;
            positionTable += 2;
            positionIndex += (u32)positionTable;
            positionValue = *(const u8 *)positionIndex;
            *(u16 *)(data + 14) = positionValue;
        }
    }
}


void UpdateFileSelectSlotMarkerAnimation(void)
{
  u8 value;
  u8 hasSave;
  int zero;
  u32 x;
  u8 *data;
  value = 0;
  if (gFileSelectState[0] != 2)
  {
    hasSave = gFileSelectState[5];
    value = 29;
    if (hasSave != 0)
    {
      value = 28;
    }
  }
  x = (((3 * gSelectedSaveFile) * 3) * 8) + 10;
  data = (u8 *) (&gUnk_3004A70);
  if (value != data[0x3A])
  {
    zero = 0;
    data[0x3A] = value;
    data[0x38] = zero;
    data[0x39] = zero;
  }
  if (x != (*((s16 *) (&data[0x30]))))
  {
    *((u16 *) (&data[0x30])) = x;
    *((u16 *) (&data[0x32])) = 0x78;
  }
}


void UpdateFileSelectOperationLabelAnimation(void)
{
  u8 value;
  int new_var6;
  u8 *new_var5;
  const u8 *new_var3;
  const u8 *new_var2;
  u8 new_var;
  u8 *new_var4;
  u8 *data;
  value = sFileSelectOperationAnimationTypes[gLanguage * 2];
  new_var2 = sFileSelectOperationAnimationTypes;
  if (gFileSelectState[0] == 2)
  {
    new_var3 = new_var2 + 1;
    value = new_var3[gLanguage * 2];
  }
  data = (u8 *) (&gUnk_3004A70);
  new_var = data[0x46];
  if (value != new_var)
  {
    new_var6 = 0;
    data[0x46] = value;
    data[0x44] = new_var6;
    data[0x45] = new_var6;
    *((u16 *) (&data[0x3C])) = 0x9C;
    new_var5 = &data[0x3E];
    new_var4 = new_var5;
    *((u16 *) new_var4) = 0x32;
  }
}


void UpdateFileSelectSlotAnimationTypes(void)
{
    register u8 *data asm("r3");
    register u8 *firstType asm("ip");
    register u8 *saveData asm("r2");
    register u8 *persistentSaveData asm("r5");
    register u32 zero asm("r0");
    register u8 *secondType asm("r1");

    data = (u8 *)&gUnk_3004A70;
    firstType = data + 0x22;
    zero = 0;
    *firstType = zero;
    secondType = data + 0x2E;
    *secondType = zero;
    saveData = gUnk_3003BF8;
    {
        register u32 firstValue asm("r1");
        register u32 firstMask asm("r0");

        firstValue = saveData[1];
        firstMask = 0x80;
        firstMask &= firstValue;
        persistentSaveData = saveData;
        /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
        asm("" : "+r"(persistentSaveData));
        if (firstMask != 0) {
        register const u8 *table asm("r4");
        register u32 language asm("r1");
        register u32 index asm("r2");
        register u32 currentSlot asm("r0");
        register u32 address asm("r0");
        register u8 value asm("r0");
        register u8 *destination asm("r1");

        table = sFileSelectSlotAnimationTypes;
        language = gLanguage;
        index = language << 1;
        currentSlot = gFileSelectState[0];
        index += language;
        if (currentSlot == 0) {
            index++;
        }
        address = index + (u32)table;
        value = *(u8 *)address;
        destination = firstType;
        *destination = value;
        }
    }
    if ((persistentSaveData[9] & 0x80) != 0) {
        register const u8 *table asm("r4");
        register u32 language asm("r1");
        register u32 index asm("r2");
        register u32 currentSlot asm("r0");
        register u32 address asm("r0");
        register u8 value asm("r0");
        register u8 *destination asm("r1");

        table = sFileSelectSlotAnimationTypes;
        language = gLanguage;
        index = language << 1;
        currentSlot = gFileSelectState[0];
        index += language;
        if (currentSlot == 1) {
            index++;
        }
        address = index + (u32)table;
        value = *(u8 *)address;
        destination = data + 0x2E;
        *destination = value;
    }
    {
        register u8 *field asm("r0");
        register u32 finalZero asm("r1");
        register u32 y asm("r2");

        field = data + 0x20;
        finalZero = 0;
        *field = finalZero;
        field++;
        *field = finalZero;
        *(u16 *)(data + 0x18) = 0x18;
        y = 0xD8;
        *(u16 *)(data + 0x1A) = y;
        field = data + 0x2C;
        *field = finalZero;
        field++;
        *field = finalZero;
        *(u16 *)(data + 0x24) = 0x60;
        *(u16 *)(data + 0x26) = y;
    }
}


void ResetFileSelectSelectedSlotAnimation(u8 clearFirst)
{
  u8 *new_var;
  u32 slot;
  struct SaveClearAnimationState *anim;
  u8 value;
  const u8 *table;
  u8 language;
  u32 tableIndex;
  if (gSelectedSaveFile == 0)
  {
    slot = 2;
  }
  else
  {
    slot = 3;
  }
  new_var = (u8 *) (&gUnk_3004A70);
  anim = (struct SaveClearAnimationState *) (new_var + (slot * 12));
  value = 0;
  anim->timer = value;
  anim->frame = 0;
  value = 0;
  if (clearFirst == 1)
  {
    table = sFileSelectSlotAnimationTypes;
    language = gLanguage;
    tableIndex = language * 3;
    table += 2;
    value = table[tableIndex];
  }
  anim->type = value;
}


void RefreshFileSelectSlotAnimationTypes(void)
{
    int zeroFirst;
    u8 *base;
    u8 *data;
    u8 *slot;
    int zeroSecond;
    u8 value;

    base = (u8 *)&gUnk_3004A70;
    slot = base + 0x22;
    value = *slot;
    data = base;
    /* Preserve the original agbcc allocation/lifetime; emits no instructions. */
    asm("" : "+r"(data));
    if (value != 0) {
        value = sFileSelectSlotAnimationTypes[(gLanguage * 3) + ((gFileSelectState[0] == 0) ? 1 : 0)];
        zeroFirst = 0;
        *slot = value;
        data[0x20] = zeroFirst;
        data[0x21] = 0;
    }
    slot = data + 0x2E;
    value = *slot;
    if (value != 0) {
        value = sFileSelectSlotAnimationTypes[(gLanguage * 3) + ((gFileSelectState[0] == 1) ? 1 : 0)];
        zeroSecond = 0;
        *slot = value;
        data[0x2C] = zeroSecond;
        data[0x2D] = zeroSecond;
    }
}


void UpdateAndDrawFileSelectSprites(void)
{
    register u16 *destination asm("ip");
    register u32 slots asm("r9");
    register u32 oldSlots asm("r7");
    register u32 i asm("r4");
    register u32 next asm("r6");
    register u32 yOffset asm("sl");
    register s32 xOffset asm("r8");
    register const u8 *animation asm("r5");
    register const u16 *source asm("r3");
    register u32 indexOffset asm("r2");
    register u32 twice asm("r0");
    register u32 offset asm("r1");
    register u32 combinedIndex asm("r0");
    register struct SaveClearAnimationState *firstState asm("r3");
    const u8 *const *animationTable;
    u32 type;
    register u32 switchType asm("r0");
    register u32 xPosition asm("r1");
    register u8 *oam asm("r4");

    destination = (u16 *)gOamBuffer;
    {
        register u8 *slotsPointer asm("r2");
        register u32 initialSlots asm("r1");

        slotsPointer = &gOamSlotsUsed;
        initialSlots = *slotsPointer;
        destination = (u16 *)((u8 *)destination + (initialSlots << 3));
        slots = initialSlots;
    }
    oldSlots = slots;
    i = 0;

loop:
    twice = i << 1;
    offset = twice + i;
    offset <<= 2;
    {
        register u8 *stateBase asm("r2");

        stateBase = (u8 *)&gUnk_3004A70;
        asm("" : "+r"(stateBase));
        firstState = (struct SaveClearAnimationState *)(offset + (u32)stateBase);
        type = firstState->type;
    }
    indexOffset = twice;
    next = i + 1;
    asm("" : "+r"(oldSlots), "+r"(next));
    if (type == 0) {
        goto end_iteration;
    }
    switchType = type;
    asm("" : "+r"(switchType));
    switch (switchType) {
        case 1:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 33:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        {
            register struct SaveClearAnimationState *state asm("r3");
            register u8 *stateBase asm("r5");

            animationTable = sFileSelectSpriteAnimations;
            combinedIndex = indexOffset;
            combinedIndex += i;
            combinedIndex <<= 2;
            stateBase = (u8 *)&gUnk_3004A70;
            asm("" : "+r"(stateBase));
            state = (struct SaveClearAnimationState *)(combinedIndex + (u32)stateBase);
            animation = animationTable[state->type];
            if (state->timer >= animation[(state->frame << 3) + 4]) {
                state->timer = 0;
                state->frame++;
                if (animation[(state->frame << 3) + 4] == 0) {
                    state->frame = 0;
                }
            }
            break;
        }
        case 2:
        case 34:
        {
            register struct SaveClearAnimationState *state asm("r3");
            register u8 *stateBase asm("r5");

            animationTable = sFileSelectSpriteAnimations;
            combinedIndex = indexOffset;
            combinedIndex += i;
            combinedIndex <<= 2;
            stateBase = (u8 *)&gUnk_3004A70;
            asm("" : "+r"(stateBase));
            state = (struct SaveClearAnimationState *)(combinedIndex + (u32)stateBase);
            animation = animationTable[state->type];
            if (state->timer >= animation[(state->frame << 3) + 4]) {
                state->timer = 0;
                state->frame++;
                if (animation[(state->frame << 3) + 4] == 0) {
                    state->type++;
                    animation += 8;
                    state->timer = 0;
                    state->frame = 0;
                }
            }
            break;
        }
        case 22:
        case 23:
        case 32:
        {
            register struct SaveClearAnimationState *state asm("r3");
            register u8 *stateBase asm("r5");

            animationTable = sFileSelectSpriteAnimations;
            combinedIndex = indexOffset;
            combinedIndex += i;
            combinedIndex <<= 2;
            stateBase = (u8 *)&gUnk_3004A70;
            asm("" : "+r"(stateBase));
            state = (struct SaveClearAnimationState *)(combinedIndex + (u32)stateBase);
            animation = animationTable[state->type];
            if (state->timer >= animation[(state->frame << 3) + 4]) {
                state->timer = 0;
                state->frame++;
                if (animation[(state->frame << 3) + 4] == 0) {
                    state->type = 0;
                    state->timer = 0;
                    state->frame = 0;
                    next = i;
                    next++;
                    goto end_iteration;
                }
            }
            break;
        }
        case 5:
        default:
            break;
    }

    {
        register struct SaveClearAnimationState *state asm("r2");
        register u32 drawOffset asm("r2");
        register u8 *stateBase asm("r0");
        register u32 x asm("r0");
        register u32 backgroundX asm("r1");

        drawOffset = indexOffset;
        drawOffset += i;
        drawOffset <<= 2;
        stateBase = (u8 *)&gUnk_3004A70;
        asm("" : "+r"(stateBase));
        state = (struct SaveClearAnimationState *)(drawOffset + (u32)stateBase);
        state->timer++;
        yOffset = (u16)(state->y - gBg1YPosition);
        backgroundX = (u32)&gBg1XPosition;
        x = state->x;
        backgroundX = *(u16 *)backgroundX;
        x -= backgroundX;
        xPosition = (u16)x;
        animation += state->frame << 3;
        source = *(const u16 *const *)animation;
        slots += *source;
        source++;
    }
    next = i;
                    next++;
    if ((s32)oldSlots >= (s32)slots) {
        goto end_iteration;
    }
    {
        register u8 *oamBase asm("r0");
        register u32 oamOffset asm("r1");
        u32 count;

        oamBase = (u8 *)gOamBuffer;
        xOffset = (s16)xPosition;
        oamOffset = oldSlots << 3;
        oam = (u8 *)(oamOffset + (u32)oamBase);
        count = slots - oldSlots;
        do {
            register u32 attribute asm("r0");
            register u32 attribute1 asm("r1");

            attribute = *source;
            source++;
            {
                register u16 *writePointer asm("r2");

                writePointer = destination;
                asm("" : "+r"(writePointer));
                *writePointer = attribute;
            }
            destination++;
            oam[0] = attribute + yOffset;
            attribute1 = *source;
            source++;
            {
                register u16 *writePointer asm("r2");

                writePointer = destination;
                asm("" : "+r"(writePointer));
                *writePointer = attribute1;
            }
            destination++;
            attribute1 += xOffset;
            {
                register u32 mask9 asm("r2");

                mask9 = 0x1FF;
                attribute1 &= mask9;
            }
            {
                register u32 oldAttribute asm("r2");
                register u32 keepMask asm("r0");

                oldAttribute = *(u16 *)&oam[2];
                keepMask = 0xFFFFFE00;
                keepMask &= oldAttribute;
                keepMask |= attribute1;
                *(u16 *)&oam[2] = keepMask;
            }
            attribute = *source;
            *destination = attribute;
            source++;
            {
                register s32 clearMask asm("r0");
                register u32 byte asm("r1");

                byte = oam[5];
                clearMask = 13;
                clearMask = -clearMask;
                clearMask &= byte;
                byte = 4;
                clearMask |= byte;
                oam[5] = clearMask;
            }
            {
                register u32 destinationStep asm("r2");

                destinationStep = 4;
                asm("" : "+r"(destinationStep));
                destination = (u16 *)((u8 *)destination + destinationStep);
            }
            oam += 8;
            count--;
        } while (count != 0);
        oldSlots = slots;
    }

end_iteration:
    i = next;
    if ((s32)i <= 5) {
        goto loop;
    }
    {
        register u32 finalSlots asm("r0");
        register u8 *slotsPointer asm("r5");

        finalSlots = slots;
        slotsPointer = &gOamSlotsUsed;
        *slotsPointer = finalSlots;
    }
}

