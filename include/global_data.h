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
    u8* pBg0Data;
    u16 bg0Width;
    u16 bg0Height;
    u8* pBg1Data;
    u16 bg1Width;
    u16 bg1Height;
    u8* pBg2Data;
    u16 bg2Width;
    u16 bg2Height;
    u8* pBg3Data;
    u16 bg3Width;
    u16 bg3Height;
};

struct RoomHeader {
    u8 tileset;
    u8 bg0Param;
    u8 bg1Param;
    u8 bg2Param;
    u8 bg3Param;
    u8* pBg0Data;
    u8* pBg1Data;
    u8* pBg2Data;
    u8* pBg3Data;
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

struct WarioCollisionData {
    u16 unk_00;
    u16 flags;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
};

struct WarioPoseProperty {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
};

struct WarioAnimationFrame {
    const u8* objData;
    const u16* oamData;
    u8 time;
    u8 padding[3];
};

struct WarioHitbox {
    s16 left;
    s16 top;
    s16 right;
    s16 bottom;
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
// gUnk_300001C
// gUnk_300001D
extern u8 gDisableSoftReset;
extern u8 gUnk_3000020;
extern u8 gUnk_3000021;
extern u8 gUnk_3000022;
// gUnk_3000023
extern u8 gCurrentRoom;
extern u8 gUnk_3000025;
// gUnk_3000026
// gUnk_3000027
extern s8 gUnk_3000028;
extern u16 gBldAlpha;
extern u16 gBldCnt;
extern u8 gSwitchStates[SWITCH_COUNT];
extern u8 gDrawWarioOverBackground;
// gUnk_3000034
// gUnk_3000035
extern u8 gEnableHBlank;
// gUnk_300003A
// gUnk_300003C
// gUnk_300003E
// gUnk_3000040
// gUnk_3000044
// gUnk_3000045
// gUnk_3000046
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

extern struct WarioCollisionData gUnk_3001918;
extern const struct WarioAnimationFrame* const sUnk_82DDB10[][2];
extern const struct WarioPoseProperty sUnk_82DDB60[];
extern const u16 sBouncyWarioPalette[];
extern const struct WarioHitbox sUnk_82DEB18[];

#endif  // GLOBAL_DATA_H
