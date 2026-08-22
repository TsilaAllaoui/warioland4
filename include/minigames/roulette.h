#ifndef GUARD_MINIGAMES_ROULETTE_H
#define GUARD_MINIGAMES_ROULETTE_H

#include "types.h"
#include "oam.h"

extern const struct AnimationFrame sRouletteMainState1Oam[];
extern const struct AnimationFrame sRouletteMainState2Oam[];
extern const struct AnimationFrame sRoulettePromptOam[];
extern const struct AnimationFrame sRouletteCenterResultOam[];
extern const struct AnimationFrame sRouletteSideResultOam[];

#ifndef ROULETTE_INTERNAL_H
#define ROULETTE_INTERNAL_H

#include "types.h"
#include "oam.h"
#include "minigames/roulette.h"

struct RouletteAnimationState { u16 timer; u16 frame; };
struct RouletteItem { s16 x; s16 y; s16 scale; u8 value; u8 active; s16 angle; s16 reserved; };
struct RouletteSmallState { u16 x; u16 y; u8 frame; u8 pad5[3]; };
struct RouletteMainState { u8 pad0[4]; u16 scale; u8 pad6[2]; u16 x; u16 y; u8 active; };
struct RouletteRenderStack {
    s16 affineA;
    s16 affineB;
    s16 affineC;
    s16 affineD;
    s16 *affineBPtr;
    s16 *affineCPtr;
    s16 *affineDPtr;
    int nextItem;
    int itemOffset;
    struct RouletteItem **itemRef;
};

extern u8 gUnk_30047B9;
extern struct RouletteMainState gUnk_30047E4;
extern u16 gUnk_300188E;
extern s8 gRouletteBlendEvb;
extern u8 gRouletteBlendEva;
extern u8 gRouletteStopRequested;
extern struct RouletteSmallState gRouletteTopResult;
extern struct RouletteSmallState gRouletteMiddleResult;
extern struct RouletteSmallState gRouletteBottomResult;
extern u8 gRouletteWinningValues[3];
extern u16 gUnk_30047BC;
extern s16 gRouletteTickPeriod;
extern struct RouletteItem *gRouletteItemDrawOrder[3];
extern u16 gRouletteMoveStartX;
extern u16 gRouletteMoveStartY;
extern u16 gRouletteMoveStartTile;
extern u16 gRouletteAngularAcceleration;
extern struct RouletteItem gRouletteItems[3];
extern int func_8089B9C(int);
extern void RefreshRouletteResultTiles(void);
extern int __modsi3(int, int);
extern void m4aSongNumStart();
extern void UpdateRouletteWheel(void);
extern int IsRouletteConfirmPressed(void);
extern void SortRouletteItemsByScale(void);
extern void UpdateRouletteResultTiles(void);
extern int MoveRouletteResultIntoSlot(void);
extern void ShuffleRouletteValuePool(void);
extern int UpdateRouletteResults(void);
extern int UpdateRouletteIntro(void);
extern u8 sRouletteBgPalette[];
extern u8 sRouletteObjPalette[];
extern u8 sRouletteBgTiles[];
extern u8 sRouletteObjTiles[];
extern u8 sRouletteTopResultTiles[];
extern u8 sRouletteMiddleResultTiles[];
extern u8 sRouletteBottomResultTiles[];
extern u8 sRouletteExtraBgTiles[];
extern u8 sRouletteExtraObjTiles[];
extern u16 gUnk_30047D6;
extern u8 gUnk_30047D4;
extern u16 gRouletteAngularSpeed;
extern u8 gRouletteMoveProgress;
extern u8 gRouletteValueSequenceIndex;
extern u8 gRouletteSelectedItemIndex;
extern u16 gRouletteValueCount;
extern struct RouletteAnimationState gRouletteSideAnim;
extern struct RouletteAnimationState gRoulettePromptAnim;
extern struct RouletteAnimationState gUnk_30047DC;
extern volatile u16 gRouletteFrameCounter;
extern u8 gUnk_30047E0;
extern u8 gUnk_30047BA;
extern u8 gUnk_30047BB;
extern void DrawRouletteScoreText(void);
extern void func_807A428(void);
extern void m4aSongNumStartOrChange();
extern void ShuffleRouletteOamTable(void);
extern int MinigameRandom(void);
extern const s16 sSinCosTableResetRouletteRound[];
extern const s16 sRouletteInitialTileSin;
extern unsigned int __umodsi3(unsigned int, unsigned int);
extern u16 gButtonsPressed;
extern const s16 sSinCosTable[];
extern u8 gRouletteValuePool[];
extern void LoadRouletteResultTiles(void);
extern s16 gRouletteMoveStepTile;
extern s16 gRouletteMoveStepX;
extern s16 gRouletteMoveStepY;
extern int __divsi3(int, int);
extern int GetRouletteFrameIndex(u8);
extern u8 gRouletteOamOrder[];
extern const u16 *gRouletteItemOamTable[15];
extern const u16 *sRouletteItemOamFrames[];
extern u16 gMedalCount;
extern const u8 sRouletteAwardMedalTiles[];
extern const u8 sRouletteMedalTiles[];
extern const u8 sRouletteScoreTiles[];
extern u16 gMinigameHighScores[];
extern void func_807AB8C(int, const void *, int);
extern void func_8089C98(int, const void *, int);
extern const struct AnimationFrame sRouletteMainState1Oam[];
extern const struct AnimationFrame sRouletteMainState2Oam[];
extern const struct AnimationFrame sRoulettePromptOam[];
extern const struct AnimationFrame sRouletteCenterResultOam[];
extern const struct AnimationFrame sRouletteSideResultOam[];
extern const u16 sRouletteAffineTableB[];
extern const u16 sRouletteAffineTableA[];
extern const u16 sRouletteAffineTableC[];
extern s32 FixedInverse(s32);
extern s32 FixedMul(s32, s32);
extern void BobRouletteResultLabels(void);
extern void ResetRouletteRound(void);
extern u8 sRouletteResultFlashTiles[];
extern void m4aSongNumStart(int);

#define CALC_SOURCE(stateObject, graphicsBase, destination) do { \
    register s32 frame asm("r1"); \
    register s32 quotient asm("r2"); \
    register s32 frameOffset asm("r0"); \
    frameOffset = GetRouletteFrameIndex((stateObject).frame); \
    frame = frameOffset; \
    if (frame < 0) \
        frameOffset = frame + 3; \
    frameOffset >>= 2; \
    asm volatile("" : "+r"(frameOffset)); \
    quotient = frameOffset; \
    frameOffset = quotient << 2; \
    frameOffset = frame - frameOffset; \
    quotient <<= 12; \
    frameOffset <<= 8; \
    { \
        register u8 *base asm("r1"); \
        base = (graphicsBase); \
        frameOffset += (s32)base; \
    } \
    src = (u8 *)(quotient + frameOffset); \
    dst = (u8 *)(destination); \
} while (0)

#define CALC_PARTS_FROM_VALUE(callExpression, graphicsBase) do { \
    register s32 frame asm("r3"); \
    register s32 frameOffset asm("r0"); \
    frameOffset = (callExpression); \
    frame = frameOffset; \
    if (frame < 0) \
        frameOffset = frame + 3; \
    frameOffset >>= 2; \
    asm volatile("" : "+r"(frameOffset)); \
    quotient = frameOffset; \
    frameOffset = quotient << 2; \
    frameOffset = frame - frameOffset; \
    quotient <<= 12; \
    src = (u8 *)(frameOffset << 8); \
    { \
        register u8 *base asm("r0"); \
        base = (graphicsBase); \
        src += (s32)base; \
    } \
} while (0)

#define RUN_FOUR_DMAS(destination) do { \
    register volatile u32 *dma asm("r4"); \
    register u32 control asm("r12"); \
    register u32 controlLoad asm("r0"); \
    register u8 *dst asm("r6"); \
    register u32 busy; \
    register u32 step asm("r2"); \
    register int count asm("r5"); \
    register u32 value asm("r0"); \
    dma = (volatile u32 *)0x040000D4; \
    controlLoad = 0x80000080; \
    control = controlLoad; \
    dst = (u8 *)(destination); \
    src = (u8 *)((u32)quotient + (u32)src); \
    busy = 0x80000000; \
    step = 0x400; \
    count = 3; \
    do { \
        dma[0] = (u32)src; \
        dma[1] = (u32)dst; \
        dma[2] = control; \
        value = dma[2]; \
        value = dma[2]; \
        value &= busy; \
        if (value != 0) { \
            register u32 pollMask asm("r3"); \
            pollMask = 0x80000000; \
            do { \
                value = dma[2]; \
                value &= pollMask; \
            } while (value != 0); \
        } \
        /* agbcc hoists these pointer updates in the second copy; keep the target post-wait order. */ \
        asm volatile("add %0, %0, %2\nadd %1, %1, %2" \
                     : "+r"(dst), "+r"(src) : "r"(step)); \
        count--; \
    } while (count >= 0); \
} while (0)

#endif



void InitRouletteGame(void);
int UpdateRouletteGame(void);
void DrawRoulette(void);

#endif
