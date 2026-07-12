#ifndef GLOBAL_DATA_H
#define GLOBAL_DATA_H

#include "gba.h"

enum Passage {
    PASSAGE_ENTRY,
    PASSAGE_EMERALD,
    PASSAGE_RUBY,
    PASSAGE_TOPAZ,
    PASSAGE_SAPPHIRE,
    PASSAGE_GOLDEN,
    PASSAGE_SOUND_ROOM,
    PASSAGE_MAX
};

#define ENTRY_GOLDEN_STAGE_COUNT (1)
#define NORMAL_STAGE_COUNT (4)
#define STAGE_BOSS (4)
#define STAGE_MINIGAMES (5)
#define STAGE_MAX (6)

enum Difficulty {
    DIFFICULTY_NORMAL,
    DIFFICULTY_HARD,
    DIFFICULTY_SUPER_HARD,
};

enum ClearMessage {
    CLEAR_MESSAGE_TRY_FOR_ALL_TREASURES,
    CLEAR_MESSAGE_ALL_TREASURES,
    CLEAR_MESSAGE_SUPER_HARD_UNLOCKED,
};

enum TitleScreenStyle {
    TITLE_STYLE_NORMAL,
    TITLE_STYLE_S_HARD_UNLOCKED,
};

enum Language {
    LANGUAGE_ENGLISH,
    LANGUAGE_JAPANESE,
};

enum SaveFile {
    SAVE_A,
    SAVE_B,
    SAVE_COUNT
};

enum SwitchID {
    SWITCH_UNUSED,
    SWITCH_RED,
    SWITCH_PURPLE,
    SWITCH_GREEN,
    SWITCH_ESCAPE,
    SWITCH_COUNT
};

enum SwitchState {
    SWITCH_STATE_OFF,
    SWITCH_STATE_ON,
    SWITCH_STATE_SWITCHING_ON,
    SWITCH_STATE_SWITCHING_OFF,
};

struct DebugInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
};

struct BackgroundInfo {
    u16* pBg0Data;
    u16 bg0Width;
    u16 bg0Height;
    u16* pBg1Data;
    u16 bg1Width;
    u16 bg1Height;
    u16* pBg2Data;
    u16 bg2Width;
    u16 bg2Height;
    u16* pBg3Data;
    u16 bg3Width;
    u16 bg3Height;
};

struct RoomHeader {
    u8 tileset;
    u8 bg0Param;
    u8 bg1Param;
    u8 bg2Param;
    u8 bg3Param;
    u16* pBg0Data;
    u16* pBg1Data;
    u16* pBg2Data;
    u16* pBg3Data;
    u8 cameraControl;
    u8 layer3Scrolling;
    u8 bgPriorityAlpha;
    void* pHardSpriteData;
    void* pNormalSpriteData;
    void* pSHardSpriteData;
    u8 raster;
    u8 water;
    u16 musicVolume;
};

struct Unk_30000A0 {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
};

struct BackgroundScroll {
    u16 bg0Horizontal;
    u16 bg0Vertical;
    u16 bg1Horizontal;
    u16 bg1Vertical;
    u16 bg2Horizontal;
    u16 bg2Vertical;
    u16 bg3Horizontal;
    u16 bg3Vertical;
};

struct Window {
    u8 left;
    u8 right;
    u8 top;
    u8 bottom;
    u8 content;
};


struct TransparencyState {
    u8 targetAlpha;
    u8 currentAlpha;
    u8 defaultAlpha;
    u8 blendTimer;
};

struct BackgroundTileTables {
    const u16 *top;
    const u16 *bottom;
    const u16 *attributes;
};

struct GameMusicState {
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

struct BackgroundPositionState {
    u16 x;
    u16 y;
    s8 xOffset;
    s8 yOffset;
};


struct RoomEffectState {
    u8 type;
    u8 timer;
    u16 value;
};

struct ScreenShakeParameters {
    u8 duration;
    u8 frameTimer;
    u8 amplitude;
    u8 direction;
};

// gUnk_3000000
extern u8 gCurrentPassage;
extern u8 gCurrentStageNumber;
extern s8 gCurrentStageID;
extern u16 gRandomSeed;
// gMedalCount
// gMinigameHighScores
extern u8 gCurrentPassageTemp;
extern u8 gClearMessage;
extern u8 gHasTemporarySave;
extern u8 gSaveFlag;
extern u8 gUnk_3000014;
extern u8 gTitleScreenStyle;
extern u8 gLanguage;
extern u8 gDifficulty;
extern u8 gResetSaveFile;
extern u8 gSelectedSaveFile;
extern s8 gUnk_300001A;
extern u8 gUnk_300001B;
extern u8 gUnk_300001C;
// gUnk_300001D
extern u8 gDisableSoftReset;
extern u8 gUnk_3000020;
extern u8 gUnk_3000021;
extern u8 gUnk_3000022;
extern u8 gUnk_3000023;
extern u8 gCurrentRoom;
extern u8 gUnk_3000025;
extern u8 gUnk_3000026;
extern u8 gUnk_3000027;
extern s8 gUnk_3000028;
extern u16 gBldAlpha;
extern u16 gBldCnt;
extern u8 gSwitchStates[SWITCH_COUNT];
extern u8 gDrawWarioOverBackground;
extern u8 gUnk_3000034;
extern u8 gUnk_3000035;
extern u8 gEnableHBlank;
extern u8 gUnk_3000038;
extern u16 gUnk_300003A;
extern u16 gUnk_300003C;
extern u16 gUnk_300003E;
// gUnk_3000040
extern u8 gUnk_3000044;
extern u8 gUnk_3000045;
extern u8 gUnk_3000046;
extern u8 gTimerState;
extern u8 gStageExitType;
extern struct DebugInfo gUnk_300004C;
extern struct BackgroundInfo gBackgroundInfo;
extern struct RoomHeader gCurrentRoomHeader;
extern struct Unk_30000A0 gUnk_30000A0;
extern struct BackgroundScroll gBackgroundScroll;
extern struct Window gWindow;
extern struct ScreenShakeParameters gScreenShakeY;
extern struct ScreenShakeParameters gScreenShakeX;

extern struct TransparencyState gUnk_30000D8;
extern u8 gUnk_30000F4[6];
extern u8 gUnk_30000FC[6];
extern u8 gDemoState;
extern u8 gUnk_300342C;
extern u16 gUnk_300188E;
extern u8 gUnk_30037BE;
extern u8 gUnk_30037BF;
extern u8 gUnk_3003BF5;
extern u8 gUnk_3003BF6;
extern struct BackgroundTileTables gUnk_30031F4;
extern struct GameMusicState gUnk_3003200;
extern u16 gUnk_300320C[4];
extern struct RoomEffectState gUnk_3003214;
extern struct RoomEffectState gUnk_3003218;
extern u16 gUnk_300321C[2];
extern struct BackgroundPositionState gUnk_3003224;

#endif  // GLOBAL_DATA_H
