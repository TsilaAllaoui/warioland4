#ifndef GLOBAL_DATA_H
#define GLOBAL_DATA_H

#include "gba.h"
#include "oam.h"

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

// Aerodent
extern u8 gUnk_30000F4;
extern const struct AnimationFrame sUnk_83DABA0[];
extern const struct AnimationFrame sUnk_83DAB28[];
extern const struct AnimationFrame sUnk_83DABB0[];
extern const struct AnimationFrame sUnk_83DABC8[];
extern const struct AnimationFrame sUnk_83DACC0[];
extern const struct AnimationFrame sUnk_83DAD28[];
extern const struct AnimationFrame sUnk_83DAD48[];
extern const struct AnimationFrame sUnk_83DAD68[];
extern const struct AnimationFrame sUnk_83DADA8[];
extern const struct AnimationFrame sUnk_83DADF0[];
extern const struct AnimationFrame sUnk_83DAE38[];
extern const struct AnimationFrame sUnk_83DAE50[];
extern const struct AnimationFrame sUnk_83DAE78[];
extern const struct AnimationFrame sUnk_83DAF00[];
extern const struct AnimationFrame sUnk_83DB0B0[];
extern const struct AnimationFrame sUnk_83DB0E8[];
extern const struct AnimationFrame sUnk_83DB110[];
extern const struct AnimationFrame sUnk_83DB3A4[];
extern const struct AnimationFrame sUnk_83DB3B4[];
extern const struct AnimationFrame sUnk_83DB3EC[];
extern const struct AnimationFrame sUnk_83DB3FC[];
extern const struct AnimationFrame sUnk_83DB43C[];
extern const struct AnimationFrame sUnk_83DB48C[];
extern const struct AnimationFrame sUnk_83DB49C[];
extern const struct AnimationFrame sUnk_83DB4AC[];
extern const struct AnimationFrame sUnk_83DB4BC[];
extern const struct AnimationFrame sUnk_83DB4D4[];
extern const struct AnimationFrame sUnk_83DB4E4[];
extern const struct AnimationFrame sUnk_83DB588[];
extern const struct AnimationFrame sUnk_83DB5A8[];
extern const struct AnimationFrame sUnk_83DB5C8[];
extern const struct AnimationFrame sUnk_83DB5E8[];
extern const struct AnimationFrame sUnk_83DBA60[];
extern const u16 sUnk_83DB610[];
extern const u16 sUnk_83DB810[];
extern const s16 sUnk_83DBA10[];
extern const u16 sUnk_83DBA34[];
extern const s16 sUnk_83DBA70[];
extern const s16 sUnk_83DBAE2[][2];
extern const s16 sUnk_83DBB62[][2];
extern const s16 sUnk_83DBBE2[];
extern const s16 sUnk_83DBC08[];
extern const s16 sUnk_83DBC32[];
extern const s16 sUnk_83DBC52[];
extern const s16 sUnk_83DBC68[];

#endif  // GLOBAL_DATA_H
