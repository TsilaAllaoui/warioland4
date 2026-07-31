#include "global_data.h"
#include "map_screen.h"
#include "init_helpers.h"
#include "score.h"
#include "stage_select.h"
#include "gba/m4a.h"

extern const u8 sUnk_8642958[];
extern const u8 sUnk_8646358[];
extern const u8 sUnk_8642B58[];
extern const u8 sUnk_8646558[];
extern const u8 sUnk_864A558[];
extern const u8 sUnk_864AD58[];
extern const u8 sUnk_864B558[];
extern const u8 sUnk_864BF58[];
extern u16 gUnk_3003C74[];
extern u8 gUnk_3003C60;
extern u16 gUnk_3003C7C[];
extern u16 gUnk_3003C80[];
extern u16 gUnk_3003C84[];
extern u16 gUnk_3003C90;

extern u8 gUnk_3003C6E;
extern u16 gUnk_3003C6C;
extern u16 gUnk_3003C70;
extern u16 gUnk_3003C78[];
extern const struct AnimationFrame *gUnk_3003C64;
extern u8 gUnk_3003C96;
extern const u16 sUnk_864BD58[];
extern u8 gCurrentPassage;
extern u8 gCurrentStageNumber;
extern u8 gUnk_3003C94;
extern u8 gStageEntryMainSpriteFalling;
extern u16 gStageEntryMainSpriteState[];
extern const struct AnimationFrame *gUnk_3003C40;
extern u16 gUnk_3003C88[];
extern u16 gStageEntryWindowLeft;
extern u16 gStageEntryWindowRight;
extern const s32 sUnk_86392A4[];
extern const struct AnimationFrame sUnk_8640404[];
extern const struct AnimationFrame sUnk_8640900[];
extern const s32 sUnk_8639510[];
extern const s32 sUnk_863951C[];
extern const s32 sUnk_863926C[];
extern const s32 sUnk_8639288[];
extern const struct AnimationFrame * const sUnk_86392C0[];
extern const s32 sUnk_8639528[];
extern const struct AnimationFrame *gUnk_3003C68;
extern u32 gStageEntryShakeMode;
extern s16 gSoundRoomMessageTimer;
extern const struct AnimationFrame sUnk_86404A4[];
extern const struct AnimationFrame sUnk_8640394[];
extern u8 gUnk_3003C45;
extern u8 gStageEntrySequenceStep;
extern u16 gStageEntrySequenceTimer;
extern u16 gUnk_3003C46;
extern u16 gUnk_3003C48;
extern u16 gUnk_3003C92;
extern u8 gStageEntryShakeTimer;
extern const s32 sUnk_86395FC[];
extern const s32 sUnk_86395C4[];
extern const s32 sUnk_86395E0[];
extern const s32 sUnk_86394C8[];
extern const s32 sUnk_8639500[];
extern const s32 sUnk_86392D0[];
extern const s32 sUnk_8639420[];
extern const s32 sUnk_8639490[];
extern u8 gUnk_3003C95;
extern u8 gStageEntryExitRequested;
extern u16 gButtonsPressed;
extern u8 gUnk_3003C6F;
extern const struct AnimationFrame sUnk_863FD1C[];
extern u8 gUnk_3003C97;
extern const struct AnimationFrame sUnk_8640454[];
extern const struct AnimationFrame sUnk_86409E0[];
extern const struct AnimationFrame sUnk_8640960[];
extern const struct AnimationFrame sUnk_8640858[];
extern const struct AnimationFrame sUnk_863FFAC[];
extern const struct AnimationFrame sUnk_8640C68[];
extern const struct AnimationFrame sUnk_8641070[];
extern const s32 sUnk_86395B4[];
extern const s32 sUnk_86395A4[];
extern const struct AnimationFrame sUnk_8640B28[];
extern const s32 sUnk_8639534[];
extern const s32 sUnk_8639550[];
extern const struct AnimationFrame * const sUnk_8639618[];
extern const u16 sUnk_8640A58[];
extern const struct AnimationFrame sUnk_863FF84[];
void VoiceSetPlay(s32 voice);

void m4aSongNumStart(u16 songNum);
void func_80741F0(void);
extern u16 gUnk_3003C62;
extern const u16 sUnk_864BD78[];
extern const u16 sUnk_864BD98[];
extern const u16 sUnk_864BDB8[];
extern const u16 sUnk_864BDD8[];

extern u8 gLanguage;
extern const u16 * const sUnk_8639588[];
extern const u16 * const sUnk_863956C[];
s32 UpdateStageEntryHorizontalShake(void);
void Shop_DrawText(const u16 *text, u32 dst, u32 unused);

int UpdateMapScreen(void)
{
    gSoundRoomMessageTimer = 0;

    switch (gUnk_3003C94)
    {
    case 0:
        if (gUnk_3003C45 != 0)
        {
            ApplyMapScreenScrollVelocity();
            UpdateMapScreenPassageTransition();
        }
        else if (UpdateMapScreenPassageInput() != 0)
        {
            gUnk_3003C94 = 3;
        }

        gUnk_3003C40 = sUnk_86392C0[gStageEntryMainSpriteFalling];
        AdvanceMapScreenWarioAnimation();
        UpdateMapScreenTreasurePalettes();

        if (gStageEntryMainSpriteFalling == 1)
        {
            gUnk_3003C64 = sUnk_86404A4;
            gUnk_3003C78[0] = 0;
            gUnk_3003C78[1] = 0;
        }
        else
        {
            gUnk_3003C64 = sUnk_8640394;
        }

        AdvanceMapScreenDoorAnimation();
        break;

    case 1:
        UpdateMapScreenIntroSequence();
        break;

    case 2:
        UpdateMapScreenBossUnlockSequence();
        break;

    case 4:
        UpdateMapScreenFinalPassageSequence();
        UpdateMapScreenTreasurePalettes();
        break;

    case 3:
        AdvanceMapScreenWarioAnimation();
        if (UpdateMapScreenStageStartTransition() != 0)
        {
            return 1;
        }
        break;
    }

    UpdateMapScreenPaletteCycle();
    return 0;
}

void InitMapScreen(void)
{
    register const void *bgTiles0;
    register const void *objTiles;
    register const void *bgMap0;
    register const void *bgMap1;
    register const void *bgMap2 asm("sl");
    register const void *bgMap3 asm("ip");
    register const struct MusicPlayer *musicPlayers asm("r9");
    register const struct Song *songs asm("r8");
    register volatile u32 *dma asm("r1");
    register u32 mask asm("r2");
    u32 control;
    u16 zero16;
    u8 zero8;
    u16 *mainState;
    u8 *mapMode;
    s32 bgVertical;

    gCurrentStageNumber = 6;
    InitializeVideoMemory();

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)sUnk_8642958;
    dma[1] = 0x05000000;
    dma[2] = 0x80000100;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)sUnk_8646358;
    dma[1] = 0x05000200;
    dma[2] = 0x80000100;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    bgTiles0 = sUnk_8642B58;
    objTiles = sUnk_8646558;
    bgMap0 = sUnk_864A558;
    bgMap1 = sUnk_864AD58;
    bgMap2 = sUnk_864B558;
    bgMap3 = sUnk_864BF58;
    musicPlayers = gMPlayTable;
    songs = gSongTable;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)bgTiles0;
    dma[1] = 0x06000000;
    dma[2] = 0x80001C00;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)objTiles;
    dma[1] = 0x06010000;
    dma[2] = 0x80002000;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)bgMap0;
    dma[1] = 0x0600C000;
    dma[2] = 0x80000400;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)bgMap1;
    dma[1] = 0x0600D000;
    dma[2] = 0x80000400;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)bgMap2;
    dma[1] = 0x0600E000;
    dma[2] = 0x80000400;
    control = dma[2];
    control = dma[2];
    mask = 0x80000000;
    if ((s32)control < 0)
    {
        do
        {
            control = dma[2] & mask;
        } while (control != 0);
    }

    dma = (volatile u32 *)0x040000D4;
    dma[0] = (u32)bgMap3;
    dma[1] = 0x0600F000;
    dma[2] = 0x80000400;
    control = dma[2];

    {
        register volatile u16 *bgControl asm("r1");
        bgControl = (volatile u16 *)((u8 *)dma - 0xCC);
        *bgControl++ = 0x1801;
        *bgControl++ = 0x1A02;
        *bgControl++ = 0x1C03;
        *bgControl = 0x1E00;
    }

    m4aMPlayVolumeControl(musicPlayers[*(const u16 *)((const u8 *)songs + 0x13FC)].info,
        0xFFFF, 0x100);
    InitMinigameScoreDisplay();

    gSoundRoomMessageTimer = 0;
    mainState = gStageEntryMainSpriteState;
    zero16 = 0;
    zero8 = 0;
    mainState[0] = zero16;
    mainState[1] = zero16;
    mainState[4] = sUnk_863926C[gCurrentPassage] << 5;
    mainState[5] = sUnk_8639288[gCurrentPassage] << 5;
    gStageEntryMainSpriteFalling = zero8;
    gUnk_3003C40 = sUnk_86392C0[0];
    gUnk_3003C74[0] = zero16;
    gUnk_3003C74[1] = zero16;
    gUnk_3003C96 = zero8;
    gUnk_3003C78[0] = zero16;
    gUnk_3003C78[1] = zero16;
    gUnk_3003C64 = sUnk_86404A4;
    gUnk_3003C60 = 5;
    gUnk_3003C7C[0] = zero16;
    gUnk_3003C7C[1] = zero16;
    gUnk_3003C60 = (gTotalScore / 10) % 10;
    gUnk_3003C45 = zero8;
    gCurrentPassageTemp = gCurrentPassage;
    gUnk_3003C90 = 120;
    gUnk_3003C92 = 1920;
    gUnk_3003C94 = zero8;
    gStageEntrySequenceStep = zero8;
    gStageEntrySequenceTimer = zero16;
    gStageEntryShakeTimer = zero8;
    gStageEntryShakeMode = 0;
    gUnk_3003C97 = zero8;
    gUnk_3003C80[0] = zero16;
    gUnk_3003C80[1] = zero16;
    gUnk_3003C84[0] = zero16;
    gUnk_3003C84[1] = zero16;
    gUnk_3003C6F = zero8;

    {
        register const u8 *collection asm("r2");
        collection = (const u8 *)gCurrentCollection;
        asm("" : : "r"(collection));
        if ((collection[16] & 0x20) == 0)
        {
            register u8 *modeZero asm("r0");
            modeZero = &gUnk_3003C95;
            *modeZero = zero8;
            mapMode = modeZero;
        }
        else
        {
            register u8 *modeStore asm("r1");
            u32 modeValue;

            if (((collection[40] & 0x20) != 0)
                && ((collection[64] & 0x20) != 0)
                && ((collection[88] & 0x20) != 0)
                && ((collection[112] & 0x20) != 0))
            {
                modeStore = &gUnk_3003C95;
                modeValue = 2;
            }
            else
            {
                modeStore = &gUnk_3003C95;
                modeValue = 1;
            }
            *modeStore = modeValue;
            mapMode = modeStore;
        }
        asm("" : : "r"(collection));
    }

    gUnk_3003C88[2] = 0;
    gUnk_3003C88[3] = 0;
    gUnk_3003C88[0] = sUnk_8639510[*mapMode] << 4;
    gUnk_3003C88[1] = sUnk_863951C[*mapMode] << 4;
    gUnk_3003C68 = (const struct AnimationFrame *)sUnk_8639528[*mapMode];

    {
        register vu16 *scroll asm("r1");
        register u16 zero;
        register vu16 *bg23 asm("r0");

        scroll = (vu16 *)0x04000012;
        bgVertical = (s16)gUnk_3003C6C >> 4;
        zero = 0;
        *scroll = bgVertical;
        scroll--;
        *scroll = zero;
        scroll += 3;
        *scroll = bgVertical;
        scroll--;
        *scroll = zero;
        scroll += 3;
        *scroll = bgVertical;

        bg23 = (vu16 *)0x04000018;
        *bg23 = zero;
        bg23 += 3;
        *bg23 = zero;
        bg23--;
        *bg23 = zero;

        scroll -= 13;
        *scroll = 0x3F00;
        scroll += 40;
        *scroll = 0x1641;
    }

    if (*mapMode == 0)
    {
        gStageEntryWindowLeft = 80;
        gStageEntryWindowRight = 160;
    }
    else
    {
        gStageEntryWindowLeft = 0;
        gStageEntryWindowRight = 240;
    }

    *(vu16 *)0x04000040 = (gStageEntryWindowLeft << 8) | gStageEntryWindowRight;
    *(vu16 *)0x04000044 = 160;
    *(vu16 *)0x04000048 = 63;
    *(vu16 *)0x0400004A = 8;
    {
        register vu16 *blendReg asm("r1");
        register u16 blendValue asm("r0");
        blendReg = (vu16 *)0x04000052;
        asm("" : "=r"(blendValue) : "0"(0x0A0A), "r"(blendReg));
        *blendReg = blendValue;
    }
}
void StartMapScreenFromStageSelect(void)
{
    u16 *dst;
    const s32 *table;
    u8 *passage;
    s32 value;

    m4aSongNumStart(0x27F);
    dst = &gUnk_3003C6C;
    table = sUnk_86392A4;
    passage = &gCurrentPassage;
    value = table[*passage];
    *dst = value << 4;
    InitMapScreen();
}

void StartMapScreenAfterStageExit(void)
{
    u16 *dst;
    const s32 *table;
    u8 *passage;
    s32 value;

    dst = &gUnk_3003C6C;
    table = sUnk_86392A4;
    passage = &gCurrentPassage;
    value = table[*passage];
    *dst = value << 4;
    gCurrentStageNumber = 6;
    func_80741F0();
    InitMapScreen();
}

void StartMapScreenIntroSequence(void)
{
    gCurrentPassage = 0;
    m4aSongNumStart(0x27F);
    gUnk_3003C6C = 0;
    InitMapScreen();
    gUnk_3003C94 = 1;
    gUnk_3003C64 = sUnk_8640404;
    gStageEntryMainSpriteState[4] = 0xF00;
    gStageEntryMainSpriteState[5] = 0x1900;
    gUnk_3003C40 = sUnk_8640900;
}

void StartMapScreenFinalPassageIntro(void)
{
    u16 *scroll;
    u16 *position;
    const s32 *table;
    s32 value;

    m4aSongNumStart(0x27F);
    scroll = &gUnk_3003C6C;
    *scroll = 0x1E0;
    InitMapScreen();
    gUnk_3003C94 = 4;
    gStageEntryMainSpriteFalling = 1;
    gCurrentPassage = 5;

    position = gStageEntryMainSpriteState;
    table = sUnk_863926C;
    value = table[5];
    position[4] = value << 5;
    table = sUnk_8639288;
    value = table[5] + 42;
    position[5] = value << 5;

    gUnk_3003C40 = sUnk_86392C0[1];
    gUnk_3003C88[0] = sUnk_8639510[1] << 4;
    gUnk_3003C88[1] = sUnk_863951C[1] << 4;
    gUnk_3003C68 = sUnk_8639528[1];
    gStageEntryShakeMode = 2;
    m4aSongNumStart(0x1AB);
}

void StartMapScreenBossUnlockSequence(void)
{
    u16 *dst;
    const s32 *table;
    u8 *passage;
    s32 value;

    dst = &gUnk_3003C6C;
    table = sUnk_86392A4;
    passage = &gCurrentPassage;
    value = table[*passage];
    *dst = value << 4;
    m4aSongNumStart(0x27F);
    InitMapScreen();
    gUnk_3003C94 = 2;
    gUnk_3003C88[0] = sUnk_8639510[0] << 4;
    gUnk_3003C88[1] = sUnk_863951C[0] << 4;
    gStageEntryWindowLeft = 80;
    gStageEntryWindowRight = 160;
}

int UpdateMapScreenPassageInput(void)
{
    register u32 directionOrPrevious asm("r5");
    register u32 fallingOrDestination asm("r6");
    register u32 mapModeOrDurationTable asm("r8");
    register u32 transitionPointer asm("r9");
    register u32 passageTableOrXSpeed asm("sl");
    register s32 passageOrTransition asm("r4");
    register u32 directionOffset asm("r3");
    register u8 *fallingSource asm("r1");
    register u16 buttons asm("r2");
    u8 *currentPassagePointer;
    u32 previousFalling;
    u32 pressed;

    fallingSource = &gStageEntryMainSpriteFalling;
    previousFalling = *fallingSource;
    directionOrPrevious = 4;
    buttons = gButtonsPressed;
    pressed = buttons & 1;
    fallingOrDestination = (u32)fallingSource;

    if (pressed != 0)
    {
        m4aSongNumStart(0x125);
        gStageEntryExitRequested = 0;
        return 1;
    }

    if (buttons & 0x20)
    {
        directionOrPrevious = 0;
        *(u8 *)fallingOrDestination = 2;
    }
    else if (buttons & 0x40)
    {
        directionOrPrevious = 2;
        *(u8 *)fallingOrDestination = 1;
    }
    else if ((u16)(buttons & 0x10) != 0)
    {
        directionOrPrevious = 1;
        *(u8 *)fallingOrDestination = 3;
    }
    else if (buttons & 0x80)
    {
        directionOrPrevious = 3;
        *(u8 *)fallingOrDestination = 0;
    }

    if (*(u8 *)fallingOrDestination != previousFalling)
    {
        m4aSongNumStart(8);
    }

    passageTableOrXSpeed = (u32)sUnk_86392D0;
    directionOffset = directionOrPrevious << 2;
    currentPassagePointer = &gCurrentPassage;
    passageOrTransition = *currentPassagePointer;

    {
        register u32 byteOffset asm("r1");
        register u32 mode asm("r2");
        register s32 tableValue asm("r0");

        byteOffset = directionOffset + (passageOrTransition << 4);
        {
            register u8 *mapModePointer asm("r2");
            mapModePointer = &gUnk_3003C95;
            mapModeOrDurationTable = (u32)mapModePointer;
            mode = *mapModePointer;
        }
        tableValue = (mode << 3) - mode;
        tableValue <<= 4;
        byteOffset += tableValue;
        byteOffset += passageTableOrXSpeed;
        tableValue = *(const s32 *)byteOffset;

        if ((tableValue != 7) && (directionOrPrevious != 4))
        {
            directionOrPrevious = (u32)&gCurrentPassageTemp;
            *(u8 *)directionOrPrevious = passageOrTransition;
            {
                register u8 *transitionInit asm("r0");
                transitionInit = &gUnk_3003C6E;
                asm("" : : "r"(transitionInit));
                transitionPointer = (u32)transitionInit;
            }
            {
                register const s32 *transitionTable asm("r1");
                register u32 transitionAddress asm("r0");
                transitionTable = sUnk_8639420;
                asm("" : : "r"(transitionTable));
                transitionAddress = directionOffset + ((*currentPassagePointer) << 4);
                transitionAddress += (u32)transitionTable;
                passageOrTransition = *(const s32 *)transitionAddress;
            }
            {
                register u8 *transitionStore asm("r1");
                transitionStore = (u8 *)transitionPointer;
                *transitionStore = passageOrTransition;
            }
            {
                register u8 *transitionRead asm("r2");
                register const s32 *fallingTable asm("r1");
                fallingTable = sUnk_8639490;
                asm("" : : "r"(fallingTable));
                transitionRead = (u8 *)transitionPointer;
                *(u8 *)fallingOrDestination = fallingTable[*transitionRead];
            }

            byteOffset = directionOffset + ((*currentPassagePointer) << 4);
            mode = *(u8 *)mapModeOrDurationTable;
            tableValue = (mode << 3) - mode;
            tableValue <<= 4;
            byteOffset += tableValue;
            byteOffset += passageTableOrXSpeed;
            tableValue = *(const s32 *)byteOffset;
            *currentPassagePointer = tableValue;

            fallingOrDestination = (u32)&gUnk_3003C70;
            {
                s32 numerator;

                numerator = (sUnk_86392A4[*currentPassagePointer]
                    - sUnk_86392A4[*(u8 *)directionOrPrevious]) << 4;
                mapModeOrDurationTable = (u32)sUnk_86394C8;
                {
                    register u8 *transitionRead asm("r2");
                    transitionRead = (u8 *)transitionPointer;
                    asm("" : : "r"(transitionRead));
                    *(u16 *)fallingOrDestination = numerator
                        / ((const s32 *)mapModeOrDurationTable)[*transitionRead];
                }
            }

            {
                register u8 *transitionRead asm("r2");
                register s32 denominator asm("r1");
                s32 numerator;

                numerator = (sUnk_863926C[*currentPassagePointer]
                    - sUnk_863926C[*(u8 *)directionOrPrevious]) << 5;
                transitionRead = (u8 *)transitionPointer;
                denominator = ((const s32 *)mapModeOrDurationTable)[*transitionRead];
                passageTableOrXSpeed = numerator / denominator;
            }
            {
                register u32 xValue asm("r1");
                register u16 *xDestination asm("r0");
                xValue = passageTableOrXSpeed;
                xDestination = &gUnk_3003C46;
                *xDestination = xValue;
            }

            fallingOrDestination = (u32)&gUnk_3003C48;
            {
                register u8 *transitionRead asm("r2");
                register s32 denominator asm("r1");
                s32 numerator;

                numerator = (sUnk_8639288[*currentPassagePointer]
                    - sUnk_8639288[*(u8 *)directionOrPrevious]) << 5;
                transitionRead = (u8 *)transitionPointer;
                denominator = ((const s32 *)mapModeOrDurationTable)[*transitionRead];
                *(u16 *)fallingOrDestination = numerator / denominator;
            }

            passageOrTransition = (u8)passageOrTransition;
            if ((u32)passageOrTransition <= 3)
            {
                register u32 transitionOffset asm("r1");
                register u16 *xDestination asm("r0");

                register const s32 *curveBase asm("r0");
                register u8 *transitionRead asm("r2");
                curveBase = sUnk_8639500;
                transitionRead = (u8 *)transitionPointer;
                transitionOffset = (*transitionRead) << 2;
                passageOrTransition = *(const s32 *)(transitionOffset + (u32)curveBase);
                passageOrTransition -= ((gUnk_3003C6F << 1) * passageOrTransition)
                    / *(const s32 *)(mapModeOrDurationTable + transitionOffset);
                passageOrTransition += passageTableOrXSpeed;
                xDestination = &gUnk_3003C46;
                *xDestination = passageOrTransition;
            }

            gUnk_3003C45 = 1;
            func_80741F0();
        }
        else
        {
            gSoundRoomMessageTimer = 1000;
        }
    }

    return 0;
}
void UpdateMapScreenBackgroundsAndText(void)
{
    register s32 scroll asm("r1");
    register vu16 *reg asm("r0");
    register vu16 *hOffset asm("r2");
    const u16 *text;
    u32 language;

    scroll = UpdateStageEntryHorizontalShake();
    hOffset = (vu16 *)0x04000012;
    scroll = ((s16)gUnk_3003C6C >> 4) + scroll;
    *hOffset = scroll;

    reg = (vu16 *)0x04000010;
    *reg = 0;
    reg += 3;
    *reg = scroll;
    reg -= 1;
    *reg = 0;
    reg += 3;
    *reg = scroll;
    reg -= 1;
    *reg = 0;

    language = gLanguage;
    switch (language)
    {
    case 0:
        text = sUnk_8639588[gCurrentPassage];
        Shop_DrawText(text, 0x7800, 26);
        break;

    case 1:
        text = sUnk_863956C[gCurrentPassage];
        Shop_DrawText(text, 0x7800, 26);
        break;
    }

    *(vu16 *)0x04000040 = (gStageEntryWindowLeft << 8) | gStageEntryWindowRight;
    *(vu16 *)0x04000044 = 160;
}


void ApplyMapScreenScrollVelocity(void)
{
    if (gUnk_3003C6E <= 3)
    {
        gUnk_3003C6C += gUnk_3003C70;
    }
}

void UpdateMapScreenPassageTransition(void)
{
    register s32 duration asm("r5");
    register s32 speed asm("r6");
    register s32 curve asm("r4");
    u8 *transitionIndex;
    const s32 *durationTable;
    u16 *xVelocity;
    u32 transition;

    transitionIndex = &gUnk_3003C6E;
    transition = *transitionIndex;
    asm("" : "+r"(transition) : : "memory");
    durationTable = sUnk_86394C8;
    xVelocity = &gUnk_3003C46;

    if (transition <= 3)
    {
        register s32 passage asm("r0");
        register u32 position asm("r2");
        register u32 temp asm("r1");
        register u32 positions asm("r3");

        positions = (u32)sUnk_863926C;
        position = (gCurrentPassage << 2) + positions;
        temp = (gCurrentPassageTemp << 2) + positions;
        passage = *(s32 *)position;
        temp = *(s32 *)temp;
        passage -= temp;
        passage <<= 5;
        duration = durationTable[*transitionIndex];
        speed = passage / duration;
        curve = sUnk_8639500[*transitionIndex];
        curve -= ((gUnk_3003C6F << 1) * curve) / duration;
        curve += speed;
        asm("" : "+r"(curve));
        *xVelocity = curve;
    }

    gStageEntryMainSpriteState[4] += *xVelocity;
    gStageEntryMainSpriteState[5] += gUnk_3003C48;
    gUnk_3003C6F++;

    if (gUnk_3003C6F == durationTable[*transitionIndex])
    {
        gStageEntryMainSpriteState[4] = sUnk_863926C[gCurrentPassage] << 5;
        gStageEntryMainSpriteState[5] = sUnk_8639288[gCurrentPassage] << 5;
        gCurrentPassageTemp = gCurrentPassage;
        gUnk_3003C6C = sUnk_86392A4[gCurrentPassage] << 4;
        gUnk_3003C6F = 0;
        gUnk_3003C45 = 0;
    }
}

void UpdateMapScreenIntroSequence(void)
{
    switch (gStageEntrySequenceStep)
    {
    case 0:
        if (gUnk_3003C78[0] == 0)
        {
            m4aSongNumStart(0x1B2);
        }
        gUnk_3003C78[0]++;
        if (gUnk_3003C64[gUnk_3003C78[1]].time < gUnk_3003C78[0])
        {
            gUnk_3003C78[0] = 1;
            gUnk_3003C78[1]++;
            if (gUnk_3003C64[gUnk_3003C78[1]].time == 0)
            {
                gStageEntrySequenceStep++;
                gUnk_3003C64 = sUnk_8640454;
                gUnk_3003C78[0] = 0;
                gUnk_3003C78[1] = 0;
                gStageEntryMainSpriteState[5] = 0x400;
                gUnk_3003C48 = ((sUnk_8639288[0] - 32) << 5) / 40;
                gUnk_3003C70 = 28;
                m4aSongNumStart(0x1B3);
            }
        }
        break;

    case 1:
        gStageEntryMainSpriteState[5] += gUnk_3003C48;
        gUnk_3003C6C += gUnk_3003C70;
        AdvanceMapScreenWarioAnimation();
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer == 40)
        {
            gStageEntryMainSpriteState[4] = sUnk_863926C[0] << 5;
            gStageEntryMainSpriteState[5] = sUnk_8639288[0] << 5;
            gUnk_3003C6C = 0x480;
            gStageEntrySequenceTimer = 0;
            gStageEntryShakeMode = 4;
            gStageEntryMainSpriteState[1] = 0;
            gStageEntryMainSpriteState[0] = 0;
            gUnk_3003C40 = sUnk_86409E0;
            VoiceSetPlay(4);
            m4aSongNumStart(0x1B4);
            gStageEntrySequenceStep++;
        }
        break;

    case 2:
        gStageEntryMainSpriteState[0]++;
        if (gUnk_3003C40[gStageEntryMainSpriteState[1]].time < gStageEntryMainSpriteState[0])
        {
            gStageEntryMainSpriteState[0] = 1;
            gStageEntryMainSpriteState[1]++;
            if (gUnk_3003C40[gStageEntryMainSpriteState[1]].time == 0)
            {
                gStageEntryShakeMode = 0;
                gStageEntryShakeTimer = 0;
                gUnk_3003C40 = sUnk_8640960;
                gStageEntrySequenceStep++;
                gStageEntryMainSpriteState[0] = 0;
                gStageEntryMainSpriteState[1] = 0;
            }
        }
        break;

    case 3:
        gUnk_3003C78[0]++;
        if (gUnk_3003C64[gUnk_3003C78[1]].time < gUnk_3003C78[0])
        {
            gUnk_3003C78[0] = 1;
            gUnk_3003C78[1]++;
            if ((gUnk_3003C78[1] == 1) && (gUnk_3003C64 != sUnk_86404A4))
            {
                m4aSongNumStart(0x1B2);
            }
            if (gUnk_3003C64[gUnk_3003C78[1]].time == 0)
            {
                gUnk_3003C64 = sUnk_86404A4;
                gUnk_3003C78[0] = 0;
                gUnk_3003C78[1] = 0;
            }
        }

        gStageEntryMainSpriteState[0]++;
        if (gUnk_3003C40[gStageEntryMainSpriteState[1]].time < gStageEntryMainSpriteState[0])
        {
            gStageEntryMainSpriteState[0] = 1;
            gStageEntryMainSpriteState[1]++;
            if ((gStageEntryMainSpriteState[1] == 1) || (gStageEntryMainSpriteState[1] == 3))
            {
                m4aSongNumStart(8);
            }
            if (gUnk_3003C40[gStageEntryMainSpriteState[1]].time == 0)
            {
                gUnk_3003C40 = sUnk_8640858;
                gUnk_3003C94 = 0;
                gStageEntrySequenceStep = 0;
                gUnk_3003C78[0] = 0;
                gUnk_3003C78[1] = 0;
                gStageEntryMainSpriteState[0] = 0;
                gStageEntryMainSpriteState[1] = 0;
            }
        }
        break;
    }
}
void UpdateMapScreenBossUnlockSequence(void)
{
    register u32 phase asm("r3");

    switch (gStageEntrySequenceStep)
    {
    case 0:
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer > 60)
        {
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep++;
            gStageEntryShakeMode = 3;
            m4aSongNumStart(0x1AA);
        }
        break;

    case 1:
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer > 50)
        {
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep++;
            gStageEntryShakeMode = 2;
            gStageEntryMainSpriteFalling = 1;
            m4aSongNumStart(8);
            gUnk_3003C40 = sUnk_86392C0[gStageEntryMainSpriteFalling];
        }
        break;

    case 2:
        gUnk_3003C92 += 5;
        if (gUnk_3003C92 > 0xDC0)
        {
            gStageEntryShakeMode = 4;
            gUnk_3003C88[0] -= 16;
            gStageEntrySequenceStep++;
        }
        break;

    case 3:
        gUnk_3003C88[1] -= 3;
        phase = gStageEntrySequenceTimer & 3;
        if (phase == 0)
        {
            gUnk_3003C88[0] += 32;
        }
        else if (phase == 2)
        {
            gUnk_3003C88[0] -= 32;
        }
        gStageEntrySequenceTimer++;

        if (gUnk_3003C88[1] < (sUnk_863951C[1] << 4))
        {
            gStageEntryShakeTimer = 0;
            gStageEntryShakeMode = 1;
            gUnk_3003C88[1] = sUnk_863951C[1] << 4;
            gUnk_3003C88[0] = sUnk_8639510[1] << 4;
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep++;
        }
        break;

    case 4:
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer > 40)
        {
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep++;
        }
        break;

    case 5:
        gStageEntryWindowLeft--;
        gStageEntryWindowRight++;
        if ((s16)gStageEntryWindowRight > 240)
        {
            gStageEntryWindowLeft = 0;
            gStageEntryWindowRight = 240;
            gUnk_3003C94 = 0;
            gStageEntrySequenceStep = 0;
        }
        break;
    }
}

void UpdateMapScreenFinalPassageSequence(void)
{
    register u32 phase asm("r3");
    register s32 velocity asm("r2");

    switch (gStageEntrySequenceStep)
    {
    case 0:
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer > 80)
        {
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep++;
            gUnk_3003C88[0] -= 16;
            gStageEntryShakeMode = 4;
        }
        break;

    case 1:
        gUnk_3003C88[1] -= 2;
        phase = gStageEntrySequenceTimer & 3;
        if (phase == 0)
        {
            gUnk_3003C88[0] += 32;
        }
        else if (phase == 2)
        {
            gUnk_3003C88[0] -= 32;
        }
        gStageEntrySequenceTimer++;

        if (gUnk_3003C88[1] < (sUnk_863951C[2] << 4))
        {
            register u32 *shakeMode asm("r3");
            register u32 zero2 asm("r2");
            register u32 zero1 asm("r1");

            shakeMode = &gStageEntryShakeMode;
            zero2 = 0;
            zero1 = 0;
            gUnk_3003C88[1] = sUnk_863951C[2] << 4;
            gUnk_3003C88[0] = sUnk_8639510[2] << 4;
            gStageEntrySequenceTimer = zero2;
            gStageEntrySequenceStep++;
            gStageEntryShakeTimer = zero1;
            *shakeMode = 1;
            gUnk_3003C68 = sUnk_863FD1C;
            gUnk_3003C88[2] = zero2;
            gUnk_3003C88[3] = zero2;
            m4aSongNumStart(0x1C9);
            gUnk_3003C97 = 1;
        }
        break;

    case 2:
        gUnk_3003C88[2]++;
        if (gUnk_3003C68[gUnk_3003C88[3]].time < gUnk_3003C88[2])
        {
            gUnk_3003C88[2] = 1;
            gUnk_3003C88[3]++;
            if (gUnk_3003C88[3] == 3)
            {
                gStageEntryShakeMode = 1;
            }
            if (gUnk_3003C68[gUnk_3003C88[3]].time == 0)
            {
                gUnk_3003C88[3] = 0;
                gUnk_3003C68 = sUnk_8639528[2];
                gStageEntrySequenceStep++;
                {
                    register u16 *velocityPtr asm("r1");
                    register s32 storedVelocity asm("r0");

                    velocityPtr = &gUnk_3003C48;
                    velocity = 33;
                    velocity = -velocity;
                    asm("" : "+r"(velocity));
                    storedVelocity = velocity;
                    *velocityPtr = storedVelocity;
                }
                gUnk_3003C70 = 16;
            }
        }
        break;

    case 3:
        {
            register u32 yPosition asm("r1");

            gStageEntryMainSpriteState[5] += gUnk_3003C48;
            asm("" : "=r"(yPosition));
            gUnk_3003C6C += gUnk_3003C70;
            asm("" : : "r"(yPosition));
        }
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer == 40)
        {
            gStageEntryMainSpriteState[4] = sUnk_863926C[gCurrentPassage] << 5;
            gStageEntryMainSpriteState[5] = sUnk_8639288[gCurrentPassage] << 5;
            gUnk_3003C6C = 0x480;
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep = 0;
            gUnk_3003C94 = 0;
        }
        break;
    }
}
int UpdateMapScreenStageStartTransition(void)
{
    register u16 *velocity asm("r5");

    switch (gStageEntrySequenceStep)
    {
    case 0:
        gStageEntryMainSpriteFalling = sUnk_86395FC[gCurrentPassage];
        gUnk_3003C40 = sUnk_86392C0[gStageEntryMainSpriteFalling];

        velocity = &gUnk_3003C46;
        *velocity = ((sUnk_86395C4[gCurrentPassage] - sUnk_863926C[gCurrentPassage]) << 5) / 12;

        velocity = &gUnk_3003C48;
        *velocity = ((sUnk_86395E0[gCurrentPassage] - sUnk_8639288[gCurrentPassage]) << 5) / 12;

        gStageEntrySequenceStep++;

    case 1:
        gStageEntryMainSpriteState[4] += gUnk_3003C46;
        gStageEntryMainSpriteState[5] += gUnk_3003C48;
        gStageEntrySequenceTimer++;
        if (gStageEntrySequenceTimer == 12)
        {
            gStageEntrySequenceTimer = 0;
            gStageEntrySequenceStep = 0;
            return 1;
        }
        break;
    }

    return 0;
}

void AdvanceMapScreenWarioAnimation(void)
{
    register u16 *state asm("r3");
    register const struct AnimationFrame *animation asm("r2");
    register u32 timer asm("r0");
    register u32 frame asm("r1");

    state = gStageEntryMainSpriteState;
    timer = state[0];
    timer += 1;
    state[0] = timer;
    frame = state[1];
    animation = gUnk_3003C40;
    frame <<= 3;
    frame += (u32)animation;
    frame = *(u8 *)(frame + 4);
    timer = (u16)timer;

    if (frame < timer)
    {
        timer = 1;
        state[0] = timer;
        timer = state[1];
        timer += 1;
        state[1] = timer;
        timer = (u16)timer;
        if (timer == 1 || timer == 3 || timer == 5)
        {
            timer = gUnk_3003C45;
            if (timer != 0)
            {
                timer = 1;
                m4aSongNumStart(timer);
            }
        }

        {
            register u16 *state2 asm("r2");
            register const struct AnimationFrame *animation2 asm("r1");

            state2 = gStageEntryMainSpriteState;
            timer = state2[1];
            animation2 = gUnk_3003C40;
            timer <<= 3;
            timer += (u32)animation2;
            timer = *(u8 *)(timer + 4);
            if (timer == 0)
            {
                state2[1] = timer;
            }
        }
    }
}

void AdvanceMapScreenDoorAnimation(void)
{
    register u16 *state asm("r3");
    register const struct AnimationFrame *animation asm("r2");
    register u32 timer asm("r0");
    register u32 duration asm("r1");
    u32 frame;

    state = gUnk_3003C78;
    timer = state[0];
    timer += 1;
    state[0] = timer;
    frame = state[1];
    animation = gUnk_3003C64;
    duration = animation[frame].time;

    if (duration < (u16)timer)
    {
        state[0] = 1;
        timer = state[1];
        timer += 1;
        state[1] = timer;
        timer = state[1];
        animation = (const struct AnimationFrame *)(u32)animation[timer].time;
        if ((u32)animation == 0)
        {
            state[1] = (u32)animation;
        }
    }
}

void UpdateMapScreenPaletteCycle(void)
{
    register volatile u8 *ptr asm("r1");
    register u32 index asm("r0");
    register vu32 *dma asm("r2");
    u32 temp;

    ptr = &gUnk_3003C96;
    index = *ptr;
    if (index > 5)
    {
        index = 0;
        *ptr = index;
    }

    index = *ptr;
    if (index > 3)
    {
        temp = index;
        index = 6;
        index -= temp;
    }
    else
    {
        index = *ptr;
    }

    dma = (vu32 *)0x040000D4;
    index <<= 3;
    dma[0] = (u32)((u8 *)sUnk_864BD58 + index);
    dma[1] = 0x05000012;
    dma[2] = 0x80000004;
    dma[2];
}


void UpdateMapScreenTreasurePalettes(void)
{
    register u16 *timerPtr asm("r4");
    register s32 phase asm("r3");
    register u8 *collection asm("r4");
    register vu32 *dma asm("r2");
    register u32 mask asm("r5");
    register u32 test asm("r0");
    register u32 byte asm("r1");

    timerPtr = &gUnk_3003C62;
    test = *timerPtr;
    test += 1;
    *timerPtr = test;
    test = *timerPtr;
    byte = 10;
    phase = test / byte;
    phase = (u16)phase;
    if (phase > 11)
    {
        test = 0;
        *timerPtr = test;
        phase = 0;
    }

    if (phase > 6)
    {
        test = 12;
        phase = test - phase;
    }

    collection = gCurrentCollection;
    test = (u32)(collection + 0x70);
    byte = *(u8 *)test;
    mask = 0x20;
    test = mask;
    test &= byte;
    if (test != 0)
    {
        dma = (vu32 *)0x040000D4;
        test = phase << 1;
        byte = (u32)sUnk_864BD78;
        test += byte;
        dma[0] = test;
        test = 0x050000DC;
        dma[1] = test;
        test = 0x80000001;
        dma[2] = test;
        test = dma[2];
    }

    test = (u32)(collection + 0x40);
    byte = *(u8 *)test;
    test = mask;
    test &= byte;
    if (test != 0)
    {
        dma = (vu32 *)0x040000D4;
        test = phase << 1;
        byte = (u32)sUnk_864BD98;
        test += byte;
        dma[0] = test;
        test = 0x050000FC;
        dma[1] = test;
        test = 0x80000001;
        dma[2] = test;
        test = dma[2];
    }

    test = (u32)(collection + 0x28);
    byte = *(u8 *)test;
    test = mask;
    test &= byte;
    if (test != 0)
    {
        dma = (vu32 *)0x040000D4;
        test = phase << 1;
        byte = (u32)sUnk_864BDB8;
        test += byte;
        dma[0] = test;
        test = 0x0500011C;
        dma[1] = test;
        test = 0x80000001;
        dma[2] = test;
        test = dma[2];
    }

    test = (u32)(collection + 0x58);
    byte = *(u8 *)test;
    test = mask;
    test &= byte;
    if (test != 0)
    {
        dma = (vu32 *)0x040000D4;
        test = phase << 1;
        byte = (u32)sUnk_864BDD8;
        test += byte;
        dma[0] = test;
        test = 0x0500013C;
        dma[1] = test;
        test = 0x80000001;
        dma[2] = test;
        test = dma[2];
    }
}


#ifdef NONMATCHING
#define MAP_SCREEN_ADVANCE_ANIMATION(state, animation, onAdvance) \
    do \
    { \
        (state)[0]++; \
        if ((animation)[(state)[1]].time < (state)[0]) \
        { \
            (state)[0] = 1; \
            (state)[1]++; \
            onAdvance; \
            if ((animation)[(state)[1]].time == 0) \
            { \
                (state)[1] = 0; \
            } \
        } \
    } while (0)

#define MAP_SCREEN_DRAW_FRAME(frameValue, yOffsetValue, xOffsetValue, priorityMode) \
    do \
    { \
        frame = (frameValue); \
        count = *frame++; \
        nextUsed = used + count; \
        if (nextUsed > MAX_OAM_SLOTS) \
        { \
            goto overflow; \
        } \
        yOffset = (yOffsetValue); \
        xOffset = (xOffsetValue); \
        while (drawn < nextUsed) \
        { \
            attr0 = *frame++; \
            copyDst->all.attr0 = attr0; \
            attr1 = *frame++; \
            copyDst->all.attr1 = attr1; \
            attr2 = *frame++; \
            copyDst->all.attr2 = attr2; \
            screenDst = &gOamBuffer[drawn]; \
            screenDst->split.y = attr0 + yOffset; \
            screenDst->all.attr1 = (screenDst->all.attr1 & 0xFE00) \
                | ((attr1 + xOffset) & 0x1FF); \
            if ((priorityMode) == 0) \
            { \
                attrByte = ((u8 *)&screenDst->all.attr2)[1]; \
                attrByte = (attrByte & (u8)-13) | 8; \
                ((u8 *)&screenDst->all.attr2)[1] = attrByte; \
            } \
            else \
            { \
                ((u8 *)&screenDst->all.attr2)[1] |= 12; \
                if (((priorityMode) == 2) && (gUnk_3003C94 == 1)) \
                { \
                    attrByte = ((u8 *)&screenDst->all.attr2)[1]; \
                    attrByte = (attrByte & (u8)-13) | 8; \
                    ((u8 *)&screenDst->all.attr2)[1] = attrByte; \
                } \
            } \
            copyDst++; \
            drawn++; \
        } \
        used = nextUsed; \
    } while (0)

void DrawMapScreenSprites(void)
{
    const struct AnimationFrame *animation;
    const u16 *frame;
    OamData *copyDst;
    OamData *screenDst;
    u32 drawn;
    u32 used;
    u32 count;
    u32 nextUsed;
    u32 i;
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u16 *state;
    u8 attrByte;
    s32 yOffset;
    s32 xOffset;
    s32 scroll;

    drawn = 0;
    used = gOamSlotsUsed;
    copyDst = &gOamBuffer[used];
    scroll = (s16)gUnk_3003C6C >> 4;

    MAP_SCREEN_ADVANCE_ANIMATION(gUnk_3003C74, sUnk_863FFAC,
        gUnk_3003C96++);
    frame = sUnk_863FFAC[gUnk_3003C74[1]].oam;
    MAP_SCREEN_DRAW_FRAME(frame, 90 - scroll, 120, 0);

    if ((s16)gUnk_3003C6C != 0)
    {
        frame = gUnk_3003C40[gStageEntryMainSpriteState[1]].oam;
        MAP_SCREEN_DRAW_FRAME(frame,
            (s16)gStageEntryMainSpriteState[5] >> 5,
            (s16)gStageEntryMainSpriteState[4] >> 5, 0);
    }

    if (gUnk_3003C95 == 2)
    {
        MAP_SCREEN_ADVANCE_ANIMATION(gUnk_3003C84, sUnk_8640C68,
            ((void)0));
        frame = sUnk_8640C68[gUnk_3003C84[1]].oam;
        MAP_SCREEN_DRAW_FRAME(frame, 160 - scroll, 120, 0);
    }

    if (gUnk_3003C97 != 0)
    {
        MAP_SCREEN_ADVANCE_ANIMATION(gUnk_3003C80, sUnk_8641070,
            if (sUnk_8641070[gUnk_3003C80[1]].time == 0) \
            { \
                gUnk_3003C97 = 0; \
            });
        if (gUnk_3003C97 != 0)
        {
            i = 0;
            while (i < 4)
            {
                frame = sUnk_8641070[gUnk_3003C80[1]].oam;
                MAP_SCREEN_DRAW_FRAME(frame,
                    sUnk_86395B4[i] - scroll,
                    sUnk_86395A4[i], 0);
                i++;
            }
        }
    }

    if ((gUnk_3003C94 != 4) || (gStageEntrySequenceStep != 2))
    {
        animation = gUnk_3003C68;
        MAP_SCREEN_ADVANCE_ANIMATION(&gUnk_3003C88[2], animation,
            ((void)0));
    }

    if (gUnk_3003C95 != 0)
    {
        animation = gUnk_3003C68;
        frame = animation[gUnk_3003C88[3]].oam;
        MAP_SCREEN_DRAW_FRAME(frame,
            ((s16)gUnk_3003C88[1] >> 4) - scroll,
            (s16)gUnk_3003C88[0] >> 4, 1);
    }

    if ((s16)gUnk_3003C6C == 0)
    {
        frame = gUnk_3003C40[gStageEntryMainSpriteState[1]].oam;
        MAP_SCREEN_DRAW_FRAME(frame,
            (s16)gStageEntryMainSpriteState[5] >> 5,
            (s16)gStageEntryMainSpriteState[4] >> 5, 1);
    }

    state = gUnk_3003C7C;
    if (gUnk_3003C60 <= 2)
    {
        animation = sUnk_8640B28;
        MAP_SCREEN_ADVANCE_ANIMATION(state, animation, ((void)0));
        frame = animation[state[1]].oam;
        i = gUnk_3003C60;
        MAP_SCREEN_DRAW_FRAME(frame,
            sUnk_8639550[i] - scroll,
            sUnk_8639534[i], 1);
    }
    else
    {
        animation = sUnk_8639618[gUnk_3003C60 - 3];
        MAP_SCREEN_ADVANCE_ANIMATION(state, animation, ((void)0));
        frame = animation[state[1]].oam;
        i = gUnk_3003C60 - 3;
        MAP_SCREEN_DRAW_FRAME(frame,
            sUnk_8639550[i] - scroll,
            sUnk_8639534[i], 1);
    }

    if (gUnk_3003C94 <= 3)
    {
        frame = gUnk_3003C64[gUnk_3003C78[1]].oam;
        MAP_SCREEN_DRAW_FRAME(frame, 48 - scroll, 120, 2);
    }

    if ((gUnk_3003C95 == 0) || (gUnk_3003C94 == 2))
    {
        MAP_SCREEN_DRAW_FRAME(sUnk_8640A58,
            ((s32)gUnk_3003C92 - (s16)gUnk_3003C6C) >> 4,
            (s16)gUnk_3003C90, 1);
    }

    frame = sUnk_863FF84[gUnk_3003C74[1]].oam;
    MAP_SCREEN_DRAW_FRAME(frame, 90 - scroll, 120, 1);

    gOamSlotsUsed = used;
overflow:
    return;
}

#undef MAP_SCREEN_DRAW_FRAME
#undef MAP_SCREEN_ADVANCE_ANIMATION
#else
ASM_INCLUDE("asm/disasm_map_screen_DrawMapScreenSprites.s");
#endif
