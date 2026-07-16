#include "demo.h"

#include "demo_input.h"
#include "game_screen_helpers.h"
#include "global_data.h"
#include "interrupt_callbacks.h"
#include "main.h"
#include "save_file.h"
#include "score.h"
#include "sound.h"
#include "sram_misc.h"
#include "wario.h"

struct DemoDmaRegisters {
    const void *source;
    void *destination;
    vu32 control;
};

struct DemoMusicState {
    u8 state;
    u8 memoryAccessState;
    u16 songId;
    u16 previousSongId;
    u8 playerId;
    u8 padding07;
    u16 specialSongId;
    u8 specialState;
    u8 specialPlayerId;
};

extern u8 gUnk_3000023;
extern u8 gUnk_3000BF0[];
extern struct DemoMusicState gUnk_3003200;
extern const u8 sStageRoomCounts[];
extern const u32 sUnk_86391C4[][6];

#define BGM_DEMO_BOSS_STAGE 0x1ED

void SetupDemo(void)
{
    register u32 demoIndex asm("r8");
    register u8 *passage asm("sl");
    register u8 *stage asm("r9");
    register u8 *addressLoad asm("r2");
    register const u8 *configurations asm("r0");
    u32 doubledIndex;
    register const struct DemoConfiguration *configuration asm("r3");
    register int stageValue asm("r5");
    register s8 *stageId asm("r6");
    register const u8 *data asm("r4");
    u32 zero;
    u8 *roomCount;
    u32 stageOffset;
    u32 passageOffset;
    register const u8 *field asm("r1");
    register u8 *bossData asm("r2");
    s32 bossOffset;
    register u32 *collectionBase asm("r3");
    register u32 collectionOffset asm("r1");

    demoIndex = sDemoOrder[gUnk_3000020];
    gHasTemporarySave = 0;
    gDifficulty = 0;

    addressLoad = &gCurrentPassage;
    passage = addressLoad;
    configurations = (const u8 *)sDemoConfigurations;
    doubledIndex = demoIndex << 1;
    configuration = (const struct DemoConfiguration *)((doubledIndex + demoIndex) << 2);
    configuration = (const struct DemoConfiguration *)((u32)configuration + (u32)configurations);
    *addressLoad = configuration->passage;

    addressLoad = &gCurrentStageNumber;
    stage = addressLoad;
    stageValue = configuration->stage;
    *addressLoad = stageValue;
    gUnk_3000025 = configuration->room;

    stageId = &gCurrentStageID;
    data = (const u8 *)sUnk_86391C4;
    stageOffset = *addressLoad << 2;
    passageOffset = *passage * 24;
    stageOffset += passageOffset;
    stageOffset += (u32)data;
    *stageId = *(const u32 *)stageOffset;

    roomCount = &gUnk_3000023;
    data = sStageRoomCounts;
    *roomCount = data[*stageId * 12];

    zero = 0;
    gUnk_3003200.songId = configuration->songId;

    if (stageValue == 4) {
        bossData = gUnk_3000BF0;
        bossOffset = *stageId;
        bossOffset *= 12;
        /* Keep agbcc from scheduling the independent field base before the final index shift. */
        asm("" : "+r"(bossOffset));
        field = data;
        field += 8;
        {
            register u8 *bossEntry asm("r0");
            bossEntry = (u8 *)bossOffset;
            bossEntry += (u32)field;
            bossData[0] = *bossEntry;
        }

        bossOffset = *stageId;
        bossOffset *= 12;
        /* Keep agbcc from scheduling the independent field base before the final index shift. */
        asm("" : "+r"(bossOffset));
        field = data + 7;
        {
            register u8 *bossEntry asm("r0");
            bossEntry = (u8 *)bossOffset;
            bossEntry += (u32)field;
            bossData[1] = *bossEntry;
        }

        bossOffset = *stageId;
        bossOffset *= 12;
        /* Keep agbcc from scheduling the independent field base before the final index shift. */
        asm("" : "+r"(bossOffset));
        field = data + 6;
        {
            register u8 *bossEntry asm("r0");
            bossEntry = (u8 *)bossOffset;
            bossEntry += (u32)field;
            bossData[2] = *bossEntry;
        }
        m4aSongNumStart(BGM_DEMO_BOSS_STAGE);
    }

    gPauseFlag = zero;
    gTimerState = zero;
    gSwitchPressed = zero;
    gUnk_3000C3F = zero;
    collectionBase = (u32 *)gCurrentCollection;
    addressLoad = stage;
    collectionOffset = *addressLoad << 2;
    passageOffset = *passage * 24;
    collectionOffset += passageOffset;
    collectionOffset += (u32)collectionBase;
    addressLoad = 0;
    *(u32 *)collectionOffset = (u32)addressLoad;

    if (gDemoState == DEMO_STATE_PLAYBACK) {
        register volatile struct DemoDmaRegisters *dma asm("r1");
        register u32 pointerOffset asm("r3");
        register u32 control asm("r2");
        register const u16 *counts asm("r0");
        register const u16 *const *inputTable asm("r0");

        dma = (volatile struct DemoDmaRegisters *)0x040000D4;
        inputTable = sDemoInputStreams;
        pointerOffset = demoIndex << 2;
        dma->source = *(const u16 *const *)(pointerOffset + (u32)inputTable);
        dma->destination = gDemoInputs;
        counts = sDemoInputDmaWordCounts;
        counts = (const u16 *)((u32)doubledIndex + (u32)counts);
        control = *counts >> 1;
        control |= 0x80000000;
        dma->control = control;
        dma->control;

        dma->source = *(const u16 *const *)((const u8 *)sDemoInputLengthStreams + pointerOffset);
        dma->destination = gDemoInputLengths;
        dma->control = control;
        dma->control;
    } else if (gDemoState == 3) {
        gDemoState = DEMO_STATE_PLAYBACK;
    }

    gUnk_3000020 |= 0x80;
}

void StopDemo(void)
{
    register u32 demoIndex asm("r3");
    register struct WarioData *wario asm("r2");
    register const struct DemoConfiguration *configurations asm("r1");
    register const struct DemoConfiguration *configuration asm("r0");

    gUnk_3000020 &= 0x7F;
    demoIndex = sDemoOrder[gUnk_3000020];

    if (gUnk_3000025 != 0) {
        wario = &gWarioData;
        configurations = sDemoConfigurations;
        configuration = (const struct DemoConfiguration *)(demoIndex * sizeof(*configuration));
        configuration = (const struct DemoConfiguration *)((u32)configuration + (u32)configurations);
        wario->xPosition = configuration->warioX;
        wario->yPosition = configuration->warioY;
    }

    m4aSongNumStop(BGM_WORK_IT);
}

void StartDemoPlayback(void)
{
    gDemoState = DEMO_STATE_PLAYBACK;
    SetupDemo();
}

void DemoVBlankCallback(void)
{
    m4aSoundVSync();
    m4aSoundMain();
}

u32 AdvanceDemo(void)
{
    register u32 wrapped asm("r6");
    register u32 zero asm("r4");

    vu16 *ime;

    wrapped = 0;
    ime = (vu16 *)0x04000208;
    zero = 0;
    *ime = wrapped;
    REG_DISPSTAT &= 0xFFEF;
    REG_IE &= 0xFFFD;
    REG_IME = 1;
    InterruptCallbackSetVBlank(DemoVBlankCallback);
    m4aMPlayAllStop();

    if (gDemoState == DEMO_STATE_RECORDING) {
        register volatile struct DemoDmaRegisters *dma asm("r0");
        u32 control;

        dma = (volatile struct DemoDmaRegisters *)0x040000D4;
        dma->source = gDemoInputs;
        dma->destination = (void *)0x02038C00;
        control = 0x80000100;
        dma->control = control;
        dma->control;
        dma->source = gDemoInputLengths;
        dma->destination = (void *)0x02038E00;
        dma->control = control;
        dma->control;
        func_8001000();
    }

    gDemoState = zero;
    gUnk_3000C3F = zero;
    gPauseFlag = zero;
    gUnk_3000022 = zero;
    gUnk_3000020++;

    if (gUnk_3000020 > 15) {
        gUnk_3000020 = zero;
        wrapped = 1;
    }

    func_8073BE0();
    return wrapped;
}
