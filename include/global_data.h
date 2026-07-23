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

#define ENTRY_GOLDEN_STAGE_COUNT 1
#define NORMAL_STAGE_COUNT 4
#define STAGE_BOSS 4
#define STAGE_MINIGAMES 5
#define STAGE_MAX 6

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
    u16 *pBg0Data;
    u16 bg0Width;
    u16 bg0Height;
    u16 *pBg1Data;
    u16 bg1Width;
    u16 bg1Height;
    u16 *pBg2Data;
    u16 bg2Width;
    u16 bg2Height;
    u16 *pBg3Data;
    u16 bg3Width;
    u16 bg3Height;
};

struct RoomHeader {
    u8 tileset;
    u8 bg0Param;
    u8 bg1Param;
    u8 bg2Param;
    u8 bg3Param;
    u8 *pBg0Data;
    u8 *pBg1Data;
    u8 *pBg2Data;
    u8 *pBg3Data;
    u8 cameraControl;
    u8 layer3Scrolling;
    u8 bgPriorityAlpha;
    void *pHardSpriteData;
    void *pNormalSpriteData;
    void *pSHardSpriteData;
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
    u16 unk_06;
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
    u8 unk_14;
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
    const u8 *objData;
    const u16 *oamData;
    u8 time;
    u8 padding[3];
};

struct WarioHitbox {
    s16 left;
    s16 top;
    s16 right;
    s16 bottom;
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

struct WarioEffectFrame {
    const void *data;
    u16 time;
    u16 pad;
};

struct SecondarySprite {
    u8 status;
    u8 work0;
    u8 id;
    u8 pose;
    u8 timer;
    u8 unk5;
    u16 animationTimer;
    u16 yPosition;
    u16 xPosition;
};

/* 0x03000000 */
extern u8 gCurrentPassage;
extern u8 gCurrentStageNumber;
extern s8 gCurrentStageID;
extern const u16 sHorizontalOscillationVelocity[];
extern u16 gRandomSeed;
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
extern u8 gDisableSoftReset;

/* 0x03000020 */
extern u8 gUnk_3000020;
extern u8 gSpriteAiDropTimer;
extern u8 gUnk_3000022;
extern u8 gUnk_3000023;
extern u8 gCurrentRoom;
extern u8 gUnk_3000025;
extern u8 gUnk_3000026;
extern u8 gUnk_3000027;
extern s8 gSpriteAiCollisionOffset;
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
extern u8 gShopItemState;
extern u8 gShopItemTimer;
extern u8 gUnk_3000046;
extern u8 gTimerState;
extern u8 gUnk_3000A62;
extern u8 gStageExitType;
extern struct DebugInfo gUnk_300004C;
extern struct BackgroundInfo gBackgroundInfo;
extern struct RoomHeader gCurrentRoomHeader;
extern struct Unk_30000A0 gUnk_30000A0;
extern struct BackgroundScroll gBackgroundScroll;
extern struct Window gWindow;
extern u8 gUnk_30000C8;
extern struct TransparencyState gUnk_30000D8;
extern u8 gColorFadingState[6];
extern u8 gGoldenDivaRoomTimer;
extern struct ScreenShakeParameters gScreenShakeY;
extern struct ScreenShakeParameters gScreenShakeX;

extern u8 gBossDefeatTimer[];
extern u8 gUnk_3000023;
extern struct BackgroundTileTables gUnk_30031F4;
extern u8 gUnk_300342C;

/* 0x03000544 */
extern u8 gUnk_3000544[];

/* 0x03000964 */
extern u8 gUnk_3000964[][3];

/* 0x03000B80 */
extern struct SecondarySprite gSecondarySpriteData[8];

/* 0x0300188E */
extern u16 gUnk_300188E;

/* 0x03002C60 */
extern u16 gUnk_3002C60;
extern s32 gUnk_3002C64;
extern u32 gUnk_3002C6C;
extern OamData *gUnk_3002C70;
extern u32 gUnk_3002C74;

/* 0x030031F4 */
extern struct BackgroundTileTables gUnk_30031F4;
extern struct GameMusicState gGameMusicState;
extern u16 gUnk_300320C[4];
extern struct RoomEffectState gUnk_3003214;
extern struct RoomEffectState gUnk_3003218;
extern u16 gUnk_300321C[2];
extern struct BackgroundPositionState gUnk_3003224;

/* 0x0300342C */
extern u8 gUnk_300342C;

/* 0x030037BE */
extern u8 gUnk_30037BE;
extern u8 gUnk_30037BF;

/* 0x03003BF5 */
extern u8 gUnk_3003BF5;
extern u8 gUnk_3003BF6;

/* Other IWRAM globals */
extern u8 gDemoState;
extern u8 gVideoMode;
extern u8 gVideoPage;
extern struct WarioData gWarioData;
extern u16 gButtonsPressed;
extern u16 gButtonsHeld;
extern u8 gOamSlotsUsed;
extern s8 gWarioMusicState;
extern struct WarioCollisionData gWarioCollisionData;


/* ROM data */
extern const s16 sWarioHitboxes[][4];
extern const struct WarioEffectFrame sWarioAfterimageFrames[];
extern const struct WarioAnimationFrame *const sUnk_82DDB10[][2];
extern const struct WarioPoseProperty sUnk_82DDB60[];
extern const u16 sBouncyWarioPalette[];
extern const struct AnimationFrame sAerodentOam_83DABA0[];

extern u8 gInitialHealth;
extern u8 gPaletteFlashTimer;
extern u8 gBgAnimationFrame;
extern u8 gBgAnimationTimer;

#endif /* GLOBAL_DATA_H */
