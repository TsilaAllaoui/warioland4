/*
    THERE IS SOME WEIRDS ASM ISLANDS THAT CAN'T BE REPLACED BECAUSE OF AGBCC BOUNDARIES
*/

#include "gba.h"
#include "gba/m4a.h"
#include "fixed_point.h"
#include "global_data.h"
#include "input.h"
#include "minigame.h"
#include "minigames/wario_hop.h"
#include "oam.h"

extern u8 gWarioHopSpeedLevel;
extern u16 gWarioHopBg0Scroll[2];
extern u16 gWarioHopBg1Scroll[2];
extern u16 gWarioHopBg2Scroll[2];
extern struct WarioHopObjState gWarioHopPlayer;
extern struct WarioHopObjState gWarioHopPlayerShadow;
extern u16 gWarioHopRollingObject[];
extern struct WarioHopSmallState gWarioHopObstacles[];
extern struct WarioHopSmallState gWarioHopMedalEffect;
extern struct WarioHopSmallState gWarioHopBonusEffect;
extern u8 gWarioHopObstacleSlot;
extern u8 gWarioHopObstaclePathIndex;
extern u8 gWarioHopPassedObstacleSlot;
extern u16 gWarioHopScrollStep;
extern u8 gWarioHopJumpState;
extern u8 gWarioHopJumpStartVelocity;
extern u8 gWarioHopJumpAcceleration;
extern u8 gWarioHopJumpDuration;
extern u32 gWarioHopBeatCounter;
extern u16 gWarioHopJumpTimer;
extern u16 gWarioHopLandingOffset;
extern u16 gWarioHopGameOverTimer;
extern u8 gWarioHopMusicActive;
extern u8 gWarioHopMedalRewardTimer;
extern u8 gWarioHopHitLock;
extern u8 gMinigameState;
extern u8 gMinigameNewHighScore;
extern u16 gMinigameScore;
extern u16 gMinigameUiAnimation[2];
extern u8 gMinigameMedalHighlight;
extern struct WarioHopMidState gMinigameCamera;
extern u16 gMedalCount;
extern u16 gMinigameHighScores[];

extern const u8 sUnk_87122F8[];
extern const u8 sUnk_870DAF8[];
extern const u8 sUnk_87124F8[];
extern const u8 sUnk_871A4F8[];
extern const u8 sUnk_871ACF8[];
extern const u8 sUnk_871BCF8[];
extern const u8 sUnk_8711D98[];
extern const u8 sUnk_8711AF8[];
extern const u8 sUnk_8711438[];

extern const u32 sUnk_870CDC8[];
extern const u32 sUnk_870CDB8[];
extern const s32 sUnk_870CDE4[];
extern const u32 sUnk_870CDF4[];
extern const u32 sUnk_870CE04[];
extern const u32 sUnk_870CDA8[];
extern const struct AnimationFrame *const sUnk_870CE14[];
extern const struct AnimationFrame *const sUnk_870CE24[];
extern const s32 sUnk_870CE40[];
extern const s32 sUnk_870CE5C[];
extern const u32 sUnk_870CE78[];
extern const struct AnimationFrame sWarioHopRollingObjectOam[];
extern const struct AnimationFrame sWarioHopMedalHighlightOam[];
extern const struct AnimationFrame sWarioHopPlayerOam[];
extern const struct AnimationFrame sWarioHopBonusEffectOam[];
extern const struct AnimationFrame sWarioHopMedalEffectOam[];
extern const u16 *sUnk_870D880;
extern const u16 *sUnk_870D890;
extern const u8 sUnk_870CC18[];
extern const u8 sUnk_870CCE0[];
extern const u16 sUnk_870CA28[][62];

void InitMinigameScoreDisplay(void);
void DrawMinigameNumber(u32 value, const void *src, u32 dst);
void m4aMPlayAllStop(void);

u32 WarioHopUpdateStateMachine(void)
{
    switch (gMinigameState) {
        case 0:
            WarioHopScrollBackgrounds();
            WarioHopAdvancePlayerAnimation();
            if (MinigameWaitForFrames(40) != 0) {
                gMinigameState++;
            }
            break;
        case 1:
            WarioHopScrollBackgrounds();
            WarioHopAdvancePlayerAnimation();
            gMinigameCamera.angle -= 20;
            if (gMinigameCamera.angle <= 31) {
                gMinigameCamera.angle = 32;
                gMinigameCamera.active = 0;
                gMinigameState++;
            }
            break;
        case 2:
            WarioHopScrollBackgrounds();
            WarioHopAdvancePlayerAnimation();
            if (WarioHopUpdateGameplay() != 0) {
                gMinigameState++;
            }
            break;
        case 3:
            WarioHopUpdateGameOverMusic();
            WarioHopUpdateMedalReward();
            if (MinigameWaitForFrames(120) != 0) {
                gMinigameState++;
                gMinigameCamera.active = 2;
            }
            break;
        case 4:
            WarioHopUpdateGameOverMusic();
            gMinigameCamera.angle += 20;
            if (gMinigameCamera.angle > 512) {
                m4aSongNumStart(0x236);
                gMinigameCamera.angle = 512;
                gMinigameState++;
            }
            break;
        case 5:
            WarioHopUpdateGameOverMusic();
            if (MinigameWaitForFrames(60) != 0) {
                gMinigameState = 0;
                return 1;
            }
            break;
    }

    return 0;
}

void WarioHopApplyBgScroll(void)
{
    *(vu16 *)0x04000010 = (s16)gWarioHopBg0Scroll[0] >> 4;
    *(vu16 *)0x04000014 = (s16)gWarioHopBg1Scroll[0] >> 4;
    *(vu16 *)0x04000018 = (s16)gWarioHopBg2Scroll[0] >> 4;
}

void WarioHopInit(void)
{
    register const void *dmaSrc1 asm("r3");
    register const void *dmaSrc2 asm("r4");
    register const void *dmaSrc4 asm("r12");
    register const void *dmaSrc5 asm("r9");
    register u16 *scrollA asm("r10");
    register u8 *speedBase asm("r8");
    register struct WarioHopObjState *playerBase asm("r6");
    u16 *scrollPtr;
    u32 i;
    u32 randomBit;
    register s32 zero asm("r4");

    randomBit = MinigameRandom() & 1;
    if (randomBit == 0) {
        gWarioHopSpeedLevel = randomBit;
    } else {
        gWarioHopSpeedLevel = 1;
    }

    DmaSet(3, (const void *)0x0870D8F8, (void *)0x05000000, 0x80000100);
    {
        vu32 *dmaRegs = (vu32 *)REG_ADDR_DMA3;
        u32 dmaStatus = dmaRegs[2];
        u32 dmaMask = DMA_ENABLE << 16;
        register const void *tmpSrc4 asm("r5");
        register u16 *tmpScrollA asm("r7");
        register u8 *tmpSpeedBase asm("r5");

        dmaSrc1 = sUnk_87122F8;
        dmaSrc2 = sUnk_870DAF8;
        tmpSrc4 = sUnk_871A4F8;
        dmaSrc4 = tmpSrc4;
        playerBase = (struct WarioHopObjState *)sUnk_871ACF8;
        asm("" : "+r"(playerBase));
        dmaSrc5 = playerBase;
        tmpScrollA = gWarioHopBg0Scroll;
        scrollA = tmpScrollA;
        tmpSpeedBase = &gWarioHopJumpDuration;
        speedBase = tmpSpeedBase;
        playerBase = &gWarioHopPlayer;
        if ((s32)dmaStatus < 0) {
            while (dmaRegs[2] & dmaMask) {
            }
        }
    }

    DmaSet(3, dmaSrc1, (void *)0x05000200, 0x80000100);
    DmaWait(3);
    DmaSet(3, dmaSrc2, (void *)0x06000000, 0x80004000);
    DmaWait(3);
    {
        vu32 *dmaRegs;
        register const void *tmpDmaSrc3 asm("r7");

        dmaRegs = (vu32 *)REG_ADDR_DMA3;
        tmpDmaSrc3 = sUnk_87124F8;
        dmaRegs[0] = (vu32)tmpDmaSrc3;
        dmaRegs[1] = (vu32)(void *)0x06010000;
        dmaRegs[2] = 0x80004000;
        dmaRegs[2];
    }
    DmaWait(3);
    {
        vu32 *dmaRegs;
        register const void *src asm("r0");

        dmaRegs = (vu32 *)REG_ADDR_DMA3;
        /* agbcc otherwise reloads the high-register DMA source through a different low register. */
        asm("mov r0, ip" : "=r"(src) : "h"(dmaSrc4));
        dmaRegs[0] = (vu32)src;
        dmaRegs[1] = (vu32)(void *)0x0600C000;
        dmaRegs[2] = 0x80000400;
        dmaRegs[2];
    }
    DmaWait(3);
    {
        vu32 *dmaRegs;
        register const void *src asm("r2");

        dmaRegs = (vu32 *)REG_ADDR_DMA3;
        /* agbcc otherwise reloads the high-register DMA source through a different low register. */
        asm("mov r2, r9" : "=r"(src) : "h"(dmaSrc5));
        dmaRegs[0] = (vu32)src;
        dmaRegs[1] = (vu32)(void *)0x0600D000;
        dmaRegs[2] = 0x80000800;
        dmaRegs[2];
    }
    DmaWait(3);
    {
        vu32 *dmaRegs;
        register const void *tmpDmaSrc asm("r3");

        dmaRegs = (vu32 *)REG_ADDR_DMA3;
        tmpDmaSrc = sUnk_871BCF8;
        dmaRegs[0] = (vu32)tmpDmaSrc;
        dmaRegs[1] = (vu32)(void *)0x0600E000;
        dmaRegs[2] = 0x80000800;
        dmaRegs[2];
    }
    DmaWait(3);
    {
        vu32 *dmaRegs;
        register const void *tmpDmaSrc asm("r4");

        dmaRegs = (vu32 *)REG_ADDR_DMA3;
        tmpDmaSrc = (const void *)0x0871CCF8;
        dmaRegs[0] = (vu32)tmpDmaSrc;
        dmaRegs[1] = (vu32)(void *)0x0600F000;
        dmaRegs[2] = 0x80000400;
        dmaRegs[2];
    }

    {
        register s32 reserve asm("r4");
        asm("" : "=r"(reserve));
        /*
         * Pure C was tested with a direct constant, a register-bound r5 value,
         * and a temporary reused later as zero. agbcc either assigns 0x1801 to
         * r7 or emits a separate absolute-address load; both forms also move
         * the literal pool. Keep this two-instruction assembler rewrite so the
         * surrounding register allocation and literal table remain exact.
         */
        asm(".macro ldr dst:req, rest:vararg\n\t.purgem ldr\n\tldr r5, \\rest\n\t.endm\n\t.macro add args:vararg\n\t.purgem add\n\tadd r0, r5, #0\n\t.endm");
        *(vu16 *)0x04000008 = 0x1801;
        {
            register s32 b0 asm("r2");
            register s32 b1 asm("r3");
            register s32 b2 asm("r5");
            asm("" : "=r"(b0), "=r"(b1), "=r"(b2));
            *(vu16 *)0x0400000A = 0x5A02;
            asm("" : : "r"(b0), "r"(b1), "r"(b2));
        }
        *(vu16 *)0x0400000C = 0x5C03;
        *(vu16 *)0x0400000E = 0x1E00;
        asm("" : : "r"(reserve));
    }
    asm("" : : "r"(dmaSrc2));

    /*
     * The original keeps two equivalent zero values: byte zero in r5 and
     * halfword zero in r4. Pure C merges them; binding the byte zero to r5
     * makes agbcc spill it to the stack and changes the prologue. Preserve the
     * compiler's live ranges and rewrite only the generated destination here.
     */
    asm(".macro mov args:vararg\n\t.purgem mov\n\tmov r5, #0\n\t.endm");
    i = 0;
    zero = 0;
    /*
     * A pure-C pointer assignment selects r5 because the compiler cannot see
     * the hidden byte zero already occupying it. An explicit r7 C binding was
     * also tested, but it changes allocation before the DMA blocks. Rewrite
     * only this move and the affected zero stores.
     */
    asm(".macro mov args:vararg\n\t.purgem mov\n\tmov r7, sl\n\t.endm");
    scrollPtr = scrollA;
    asm(".macro strh args:vararg\n\t.purgem strh\n\tstrh r4, [r7]\n\t.endm");
    scrollPtr[0] = zero;
    asm(".macro strh args:vararg\n\t.purgem strh\n\tstrh r4, [r7, #2]\n\t.endm");
    scrollPtr[1] = zero;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    gWarioHopBg1Scroll[0] = i;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    gWarioHopBg1Scroll[1] = i;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    gWarioHopBg2Scroll[0] = i;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    gWarioHopBg2Scroll[1] = i;

    *(vu16 *)0x04000012 = zero;
    *(vu16 *)0x04000010 = zero;
    *(vu16 *)0x04000016 = zero;
    *(vu16 *)0x04000014 = zero;
    *(vu16 *)0x0400001A = zero;
    *(vu16 *)0x04000018 = zero;
    *(vu16 *)0x0400001E = zero;
    *(vu16 *)0x0400001C = zero;

    {
        s32 speed;
        s32 selectedSpeed;
        register u8 *speedPtr asm("r7");

        selectedSpeed = sUnk_870CE04[gWarioHopSpeedLevel];
        speedPtr = speedBase;
        asm("strb %1, [%0]" : : "r"(speedPtr), "r"(selectedSpeed) : "memory");
        /* Force the single direct byte load selected by the original compiler schedule. */
        asm("ldrb r0, [r7]" : "=r"(speed) : : "memory");
        gWarioHopJumpAcceleration = 0x2800 / (speed * speed);
        {
            register s32 speed2 asm("r1");
            register s32 accel asm("r0");
            /* The original reloads the duration directly into r1. */
            asm("ldrb r1, [r7]" : "=r"(speed2) : : "memory");
            accel = gWarioHopJumpAcceleration;
            gWarioHopJumpStartVelocity = (accel * speed2) >> 1;
        }
    }
    asm("" : : "r"(scrollPtr), "r"(zero));

    /*
     * Pure C materializes the player X coordinate in r5. Binding it to r7
     * changes the complete function's register graph and introduces spills;
     * rewrite only the three instructions that establish r7/r8.
     */
    asm(".macro mov dst:req, src:vararg\n\t.ifc \\dst,r5\n\tmovs r7, #160\n\t.else\n\t.purgem mov\n\t.hword 0x46b8\n\t.endif\n\t.endm\n\t.macro lsl args:vararg\n\t.purgem lsl\n\tlsl r7, r7, #4\n\t.endm");
    playerBase->x = 0xA00;
    playerBase->y = 0x8C0;
    asm(".macro add args:vararg\n\t.purgem add\n\t.endm\n\t.macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    playerBase->unkC = zero;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    playerBase->yOffset = zero;
    playerBase->scale = 0x100;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    playerBase->angle = zero;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    playerBase->animTimer = zero;
    asm(".macro strh src:req, rest:vararg\n\t.purgem strh\n\tstrh r4, \\rest\n\t.endm");
    playerBase->animFrame = zero;
    /*
     * Pure structure assignment selects {r1, r3, r5}; fixed-register C forms
     * alter the stack frame and literal pool. Keep the assignment in C and
     * rewrite only its 16-byte destructive copy schedule to {r3, r6, r7}.
     */
    asm(".macro ldr dst:req, rest:vararg\n\t.purgem ldr\n\tldr r1, \\rest\n\tadd r0, r6, #0\n\t.macro ldr dst2:req, rest2:vararg\n\t.purgem ldr\n\tldr r0, [r0]\n\t.endm\n\t.endm\n\t.macro ldmia args:vararg\n\t.purgem ldmia\n\tldmia r0!, {r3, r6, r7}\n\t.endm\n\t.macro stmia args:vararg\n\t.purgem stmia\n\tstmia r1!, {r3, r6, r7}\n\t.endm\n\t.macro str args:vararg\n\t.purgem str\n\tstr r0, [r1]\n\t.endm");
    gWarioHopPlayerShadow = *playerBase;
    asm("" : "+r"(playerBase));

    gWarioHopRollingObject[0] = 0xA00;
    gWarioHopRollingObject[1] = 0x8C0;
    /*
     * agbcc keeps the C zero in r7, while the original reuses the halfword
     * zero already in r4. Pure C adds a move, so only these stores are asm.
     */
    asm volatile("strh r4, [r0, #6]\n\tstrh r4, [r0, #8]" : : "r"(i), "r"(zero) : "memory");

    {
        register u8 *subStatePtr asm("r2");
        register u16 *scorePtr asm("r3");
        register u8 *highScorePtr asm("r6");

        /*
         * The target has two equivalent zero values live: r5 for byte stores
         * and r4 for halfword stores. agbcc merges them in pure C, so these
         * three stores remain one-instruction compiler boundaries.
         */
        subStatePtr = &gMinigameState;
        asm volatile("strb r5, [r2]" : : "r"(subStatePtr), "r"(zero) : "memory");
        scorePtr = &gMinigameScore;
        asm volatile("strh r4, [r3]" : : "r"(scorePtr), "r"(zero) : "memory");
        highScorePtr = &gMinigameNewHighScore;
        asm volatile("strb r5, [r6]" : : "r"(highScorePtr), "r"(zero) : "memory");
    }
    WarioHopDrawScoreDigits();
    {
        register u8 *medalTimerPtr asm("r0");
        medalTimerPtr = &gWarioHopMedalRewardTimer;
        /* Same persistent r5 byte zero as above. */
        asm volatile("strb r5, [r0]" : : "r"(medalTimerPtr), "r"(zero) : "memory");
    }
    InitMinigameScoreDisplay();
    *(vu16 *)0x04000054 = zero;
    m4aSongNumStart(0x2BE);

    {
        register s32 j asm("r1");
        register u32 loopZero asm("r2");
        register u32 one asm("r3");
        register struct WarioHopSmallState *item asm("r0");
        loopZero = 0;
        one = 1;
        item = gWarioHopObstacles;
        j = 6;
        do {
            /*
             * Pure C copies these equivalent zeros through r7. The original
             * directly reuses r2 for halfwords and r4 for the type byte.
             */
            asm volatile(
                "strh r2, [r0]\n\t"
                "strb r4, [r0, #4]\n\t"
                "strh r2, [r0, #6]\n\t"
                "strh r2, [r0, #8]\n\t"
                "strb r3, [r0, #10]"
                : : "r"(item), "r"(i), "r"(loopZero), "r"(one), "r"(zero) : "memory");
            item++;
            j--;
        } while (j >= 0);
    }

    {
        u32 tailZero;
        s32 tailZero2;
        tailZero = 0;
        gWarioHopObstacleSlot = tailZero;
        gWarioHopObstaclePathIndex = tailZero;
        gWarioHopJumpState = tailZero;
        gWarioHopJumpTimer = tailZero;
        tailZero2 = 0;
        gWarioHopLandingOffset = tailZero2 - 2;
        gWarioHopBeatCounter = tailZero;
        gWarioHopGameOverTimer = tailZero;
        gWarioHopMusicActive = tailZero2;
        gWarioHopPassedObstacleSlot = tailZero2;
        gMinigameUiAnimation[0] = tailZero;
        gMinigameUiAnimation[1] = tailZero;
        gMinigameMedalHighlight = tailZero2;
    }

    gMinigameCamera.xOffset = 0x80;
    gMinigameCamera.yOffset = 0x40;
    gMinigameCamera.angle = 0x200;
    gMinigameCamera.active = 1;

    {
        register struct WarioHopSmallState *bonusEffect asm("r0");
        register struct WarioHopSmallState *medalEffect asm("r1");

        bonusEffect = &gWarioHopBonusEffect;
        bonusEffect->animTimer = 0;
        bonusEffect->animFrame = 0;
        bonusEffect->type = 0;
        medalEffect = &gWarioHopMedalEffect;
        /*
         * Pure structure assignment chooses {r2,r4,r5} after the preceding
         * compiler boundaries. The original uses {r2,r4,r7}; keep only this
         * 12-byte copy as a two-instruction compiler boundary.
         */
        asm volatile(
            "ldmia r0!, {r2, r4, r7}\n\t"
            "stmia r1!, {r2, r4, r7}"
            : "+r"(bonusEffect), "+r"(medalEffect) : : "r2", "r4", "r7", "memory");
    }

    gWarioHopHitLock = 0;
    asm("" : : "h"(dmaSrc5), "h"(scrollA));
    /*
     * A pure C volatile store chooses r2 after the preceding fixed-register
     * copy. The original materializes the value in r5, so keep this isolated
     * hardware-register write as the final compiler boundary.
     */
    asm volatile(
        "mov r1, #128\n\t"
        "lsl r1, r1, #19\n\t"
        "mov r5, #248\n\t"
        "lsl r5, r5, #5\n\t"
        "add r0, r5, #0\n\t"
        "strh r0, [r1]");
}

void WarioHopRestartMusicForNextSpeed(void)
{
    gWarioHopMusicActive = 0;
    gWarioHopBeatCounter = 0;
    m4aSongNumStart(0x2BE);
    if (gWarioHopSpeedLevel != 3) {
        gWarioHopSpeedLevel++;
    }
    if (gWarioHopSpeedLevel == 1) {
        gWarioHopSpeedLevel++;
    }
}

s32 WarioHopUpdateGameplay(void)
{
    switch (gWarioHopJumpState) {
        case 0:
            if (WarioHopIsJumpPressed() != 0) {
                gWarioHopJumpState = 1;
                gWarioHopJumpTimer = 0;
                gWarioHopPlayer.scale = 0x150;
                if (gMPlayMemAccArea[0] == 1 && gWarioHopMusicActive != 0) {
                    m4aSongNumStart(sUnk_870CDC8[gWarioHopObstacles[gWarioHopPassedObstacleSlot].type - 1]);
                    gWarioHopHitLock = 1;
                } else {
                    m4aSongNumStart(0x23D);
                }
            }
            break;
        case 1:
            if (WarioHopUpdateJumpArc() != 0) {
                {
                    register s32 resetValue asm("r0");
                    register volatile s16 *resetPtr asm("r1");

                    gWarioHopHitLock = 0;
                    gWarioHopJumpState = 0;
                    resetPtr = (s16 *)&gWarioHopJumpTimer;
                    resetValue = 0;
                    *resetPtr = resetValue;
                    resetPtr = (s16 *)&gWarioHopLandingOffset;
                    asm volatile("sub %0, #2\n\tstrh %0, [%1, #0]" : "+r"(resetValue) : "r"(resetPtr));
                }
                gWarioHopPlayer.yOffset = 0;
                gWarioHopPlayerShadow.yOffset = 0;
            }
            break;
    }

    {
        register u8 *activePtr asm("r6");
        register u32 active asm("r0");

        activePtr = &gWarioHopMusicActive;
        asm volatile("ldrb %0, [%1, #0]" : "=r"(active) : "r"(activePtr));
        if (active == 1) {
            if (MinigameRandom() % 3000 == 0 && gWarioHopBonusEffect.type == 0) {
                gWarioHopBonusEffect.type++;
            }
            WarioHopSpawnObstacleIfDue();
            gWarioHopBeatCounter++;
            if (gMPlayMemAccArea[0] == 0x7F) {
                gMPlayMemAccArea[0] = 0;
                gWarioHopMedalEffect.type = 1;
                m4aSongNumStart(0x23B);
                WarioHopRestartMusicForNextSpeed();
            }
        } else {
            if (gWarioHopJumpState == 0) {
                register u8 *speedPtr asm("r4");
                register u8 *accelPtr asm("r5");
                s32 speed;

                speedPtr = &gWarioHopJumpDuration;
                *speedPtr = sUnk_870CE04[gWarioHopSpeedLevel];
                accelPtr = &gWarioHopJumpAcceleration;
                speed = *speedPtr;
                *accelPtr = 0x2800 / (speed * speed);
                gWarioHopJumpStartVelocity = ((*speedPtr) * (*accelPtr)) >> 1;
            }
            if (gMPlayMemAccArea[0] == 0x7E) {
                *activePtr = 1;
                gWarioHopObstaclePathIndex = 0;
                gMPlayMemAccArea[0] = 0;
                m4aSongNumStart(sUnk_870CDB8[gWarioHopSpeedLevel]);
            }
        }
    }

    WarioHopUpdateObstacles();
    {
        register s32 result asm("r0");
        asm volatile(".4byte 0xfa46f000" : "=r"(result));
        if (result != 0) {
            return 1;
        }
    }
    WarioHopUpdateMedalReward();
    return 0;
}

s32 WarioHopIsJumpPressed(void)
{
    if (gButtonsPressed & A_BUTTON) {
        return 1;
    }
    return 0;
}

s32 WarioHopUpdateJumpArc(void)
{
    register u16 *timer asm("r5");
    register struct WarioHopObjState *first asm("r3");
    u8 *baseSpeed;
    u8 *accel;
    register s32 baseValue asm("r1");
    register s32 accelValue asm("r2");
    register s32 frame asm("r0");
    struct WarioHopObjState *second;
    s32 movement;

    timer = &gWarioHopJumpTimer;
    (*timer)++;
    first = &gWarioHopPlayer;
    baseSpeed = &gWarioHopJumpStartVelocity;
    asm("ldrb %0, [%1]" : "=r"(baseValue) : "r"(baseSpeed));
    accel = &gWarioHopJumpAcceleration;
    asm("ldrb %0, [%1]" : "=r"(accelValue) : "r"(accel));
    asm("mov r4, #0\n\tldrsh %0, [%1, r4]" : "=r"(frame) : "r"(timer) : "r4");

    movement = baseValue - frame * accelValue;
    first->yOffset = movement;
    first->y -= movement;
    {
        u32 nextScale;

        nextScale = first->scale - 10;
        first->scale = nextScale;
        if ((u16)nextScale <= 0xFF) {
            first->scale = 0x100;
        }
    }

    frame = (s16)*timer;
    second = &gWarioHopPlayerShadow;
    if (frame > 2) {
        asm("ldrb %0, [%2]\n\tldrb %1, [%3]"
            : "=r"(baseValue), "=r"(accelValue)
            : "r"(baseSpeed), "r"(accel));
        frame -= 2;
        movement = baseValue - frame * accelValue;
        second->yOffset = movement;
        second->y -= movement;
    }
    asm("mov r1, #2\n\tldrsh %0, [%1, r1]" : "=r"(frame) : "r"(first) : "r1");
    if (frame > 0x8C0) {
        first->y = 0x8C0;
    }
    if ((s16)second->y > 0x8C0) {
        second->y = 0x8C0;
    }
    asm("mov r4, #0\n\tldrsh %0, [%1, r4]" : "=r"(baseValue) : "r"(timer) : "r4");
    if (baseValue == gWarioHopJumpDuration + 2) {
        return 1;
    }
    return 0;
}

void WarioHopUpdateWaitingForStart(void)
{
    WarioHopScrollBackgrounds();
    WarioHopAdvancePlayerAnimation();
}

void WarioHopSpawnObstacleIfDue(void)
{
    register const s32 *speedTable asm("r1");
    register u8 *modePtr asm("r0");
    register s32 mode asm("r4");
    register u32 modeOffset asm("r6");
    register s32 pathIndex asm("r5");
    const u8 *pathBase;
    u32 pathOffset;
    u32 modePathOffset;
    s32 step;
    s32 kind;

    speedTable = sUnk_870CDE4;
    modePtr = &gWarioHopSpeedLevel;
    mode = *modePtr;
    modeOffset = mode << 2;
    speedTable = (const s32 *)(modeOffset + (u32)speedTable);
    step = 0xA00 / *speedTable;
    pathBase = (const u8 *)sUnk_870CA28;
    pathIndex = gWarioHopObstaclePathIndex;
    pathOffset = pathIndex << 1;
    modePathOffset = (mode << 5) - mode;
    modePathOffset <<= 2;

    if (*(const u16 *)(pathBase + (pathOffset + modePathOffset)) - step + *(const s32 *)((const u8 *)sUnk_870CE78 + modeOffset) == (s32)gWarioHopBeatCounter) {
        s32 pathCount;

        pathCount = *(const s32 *)((const u8 *)sUnk_870CDA8 + modeOffset);
        asm("" : : "r"(modeOffset));
        if (pathIndex == pathCount - 1) {
            kind = 5;
        } else if (pathIndex == 0) {
            kind = 6;
        } else {
            kind = MinigameRandom() % 5;
        }

        gWarioHopObstacles[gWarioHopObstacleSlot].type = kind + 1;
        gWarioHopObstacles[gWarioHopObstacleSlot].y = 0x8C0;

        gWarioHopObstaclePathIndex++;
        if (gWarioHopObstaclePathIndex > 61) {
            gWarioHopObstaclePathIndex = 61;
        }

        gWarioHopObstacleSlot++;
        if (gWarioHopObstacleSlot > 6) {
            gWarioHopObstacleSlot = 0;
        }
    }
}

void WarioHopAdvancePlayerAnimation(void)
{
    register struct WarioHopObjState *player asm("r3");
    register s32 temp asm("r0");
    register s32 value asm("r1");

    player = &gWarioHopPlayer;
    /* agbcc reorders this constant after the halfword load; the target needs r0=0x100 copied to r1 before loading angle. */
    asm("mov %0, #0x80\n\tlsl %0, %0, #1\n\tadd %1, %0, #0" : "=r"(temp), "=r"(value));
    temp = player->angle;
    value += temp;
    value -= sUnk_870CDF4[gWarioHopSpeedLevel];
    temp = 0xFF;
    value &= temp;
    player->angle = value;
}

void WarioHopUpdateObstacles(void)
{
    register s32 i asm("r5");
    register s32 offset asm("r4");
    register struct WarioHopSmallState *base asm("r3");
    register s32 passLimit asm("r7");
    register s32 farLimit asm("r6");

    base = gWarioHopObstacles;
    passLimit = 0xA80;
    asm volatile("mov %0, #0" : "=r"(offset) : "r"(base), "r"(passLimit));
    farLimit = 0x1180;
    asm volatile("mov %0, #6" : "=r"(i) : "r"(farLimit));
    do {
        struct WarioHopSmallState *item;

        item = (struct WarioHopSmallState *)((u8 *)gWarioHopObstacles + offset);
        if (item->type != 0) {
            item->x += gWarioHopScrollStep;
            if ((s16)item->x > 0xA80 && item->active != 0 && gWarioHopJumpState == 0) {
                item->active = 0;
                if (WarioHopAddScoreAndCheckMedal() != 0) {
                    gWarioHopMedalRewardTimer++;
                }
            }
            {
                struct WarioHopSmallState *item2;

                item2 = (struct WarioHopSmallState *)((u8 *)gWarioHopObstacles + offset);
                if ((s16)item2->x > 0x1180) {
                    item2->active = 1;
                    item2->type = 0;
                    item2->x = 0;
                    item2->animTimer = 0;
                    item2->animFrame = 0;
                }
            }
        }
        offset += 12;
        i--;
    } while (i >= 0);
}

void WarioHopUpdateGameOverMusic(void)
{
    register struct MusicPlayerInfo *info asm("r4");
    u16 song;

    song = gSongTable[sUnk_870CDB8[gWarioHopSpeedLevel]].ms;
    switch ((s16)gWarioHopGameOverTimer) {
        case 0:
            info = gMPlayTable[song].info;
            m4aMPlayTempoControl(info, 280);
            m4aMPlayPitchControl(info, 0xFFFF, -100);
            m4aSongNumStart(0x23C);
            break;
        case 30:
            info = gMPlayTable[song].info;
            m4aMPlayTempoControl(info, 220);
            m4aMPlayPitchControl(info, 0xFFFF, -200);
            break;
        case 60:
            info = gMPlayTable[song].info;
            m4aMPlayTempoControl(info, 200);
            m4aMPlayPitchControl(info, 0xFFFF, -300);
            break;
        case 90:
            info = gMPlayTable[song].info;
            m4aMPlayTempoControl(info, 160);
            m4aMPlayPitchControl(info, 0xFFFF, -400);
            m4aMPlayModDepthSet(info, 0xFFFF, 15);
            break;
        case 120:
            info = gMPlayTable[song].info;
            m4aMPlayTempoControl(info, 130);
            m4aMPlayPitchControl(info, 0xFFFF, -500);
            m4aMPlayFadeOut(info, 3);
            break;
    }
    if ((s16)gWarioHopGameOverTimer == 180) {
        m4aMPlayAllStop();
    }
    if ((s16)gWarioHopGameOverTimer <= 180) {
        gWarioHopGameOverTimer++;
    }
}

void WarioHopScrollBackgrounds(void)
{
    u16 *delta;
    const u32 *table;
    u32 value;

    delta = &gWarioHopScrollStep;
    table = (const u32 *)sUnk_870CDE4;
    value = table[gWarioHopSpeedLevel];
    *delta = value;
    gWarioHopBg0Scroll[0] -= value;
    gWarioHopBg1Scroll[0] -= (s16)*delta / 10;
    gWarioHopBg2Scroll[0] -= (s16)*delta / 18;
    if ((s16)gWarioHopBg0Scroll[0] < 0) {
        gWarioHopBg0Scroll[0] += 0x2000;
    }
    if ((s16)gWarioHopBg1Scroll[0] < 0) {
        gWarioHopBg1Scroll[0] += 0x2000;
    }
    if ((s16)gWarioHopBg2Scroll[0] < 0) {
        gWarioHopBg2Scroll[0] += 0x2000;
    }
}

s32 WarioHopCheckPlayerCollision(void)
{
    s32 leftMin;
    s32 leftMax;
    s32 playerY;
    s32 top;
    s32 bottom;
    s32 i;
    const s32 *widths;
    struct WarioHopSmallState *item;

    leftMin = 160;
    leftMax = 176;
    playerY = (s16)gWarioHopPlayer.y >> 4;
    top = playerY - 48;
    bottom = playerY;
    i = 0;
    widths = sUnk_870CE40;
    item = gWarioHopObstacles;
    do {
        if (item->type != 0) {
            s32 type;
            s32 width;
            s32 height;
            s32 x;

            type = item->type - 1;
            width = widths[type];
            height = sUnk_870CE5C[type];
            x = (s16)item->x >> 4;
            if (x > leftMin && x - width < leftMax) {
                s32 y;

                y = (s16)item->y >> 4;
                if (y > top && y - height < bottom && gWarioHopHitLock == 0) {
                    return 1;
                }
            }
        }
        item++;
        i++;
    } while (i <= 6);
    return 0;
}

void WarioHopDrawScoreDigits(void)
{
    if (gMinigameMedalHighlight != 0) {
        DrawMinigameNumber(gMedalCount, sUnk_8711D98, 0x3840);
    } else {
        DrawMinigameNumber(gMedalCount, sUnk_8711AF8, 0x3840);
    }
    DrawMinigameNumber(gMinigameScore, sUnk_8711438, 0x38C0);
    DrawMinigameHighScore(gMinigameHighScores[1], sUnk_8711438 + 0xC20, 0x4160);
}

s32 WarioHopAddScoreAndCheckMedal(void)
{
    gMinigameScore++;
    gWarioHopPassedObstacleSlot++;
    if (gWarioHopPassedObstacleSlot > 6) {
        gWarioHopPassedObstacleSlot = 0;
    }
    if (gMinigameScore > 999) {
        gMinigameScore = 999;
    } else {
        m4aSongNumStart(0x224);
    }
    if (gMinigameScore > gMinigameHighScores[1]) {
        gMinigameNewHighScore = 1;
        gMinigameHighScores[1] = gMinigameScore;
    }
    WarioHopDrawScoreDigits();
    if (gMinigameScore % 15 == 0) {
        return 1;
    }
    return 0;
}

void WarioHopUpdateMedalReward(void)
{
    if (gWarioHopMedalRewardTimer != 0) {
        gWarioHopMedalRewardTimer++;
    }
    if (gWarioHopMedalRewardTimer > 20) {
        gWarioHopMedalRewardTimer = 0;
        gMedalCount++;
        if (gMedalCount > 999) {
            gMedalCount = 999;
        } else {
            m4aSongNumStart(0x223);
            gMinigameMedalHighlight = 1;
            WarioHopDrawScoreDigits();
        }
    }
}

void WarioHopDrawSprites(void)
{
    s32 i;
    register s32 total asm("r9");
    register u16 *raw asm("r5");
    const u16 *frame;
    register struct WarioHopObjState *player asm("r6");
    register struct WarioHopMidState *stateBase asm("r2");
    OamData *oam;
    register u32 oamOffset asm("r0");
    u32 count;
    register u32 active asm("r1");
    register s16 *affinePtr asm("r0");
    u32 stackPad;
    register u32 effectActive asm("r0");
    register u8 *effectActivePtr asm("r1");
    register s32 xMask asm("r12");
    register s32 matrixMask asm("r10");
    register s32 priorityMask asm("r8");
    /*
     * These four scalars intentionally form contiguous stack storage. B/C/D
     * are reached through affineBPtr/affineCPtr/affineDPtr rather than by name;
     * replacing them with an array changes agbcc's stack layout and codegen.
     */
    s16 affineA;
    s16 affineB UNUSED;
    s16 affineC UNUSED;
    s16 affineD UNUSED;
    s16 *affineBPtr;
    s16 *affineCPtr;
    s16 *affineDPtr;
    u16 affineDResult;
    register s32 affineDResult2 asm("r0");

    asm("" : : "m"(stackPad));
    i = 0;
    total = gOamSlotsUsed;
    oamOffset = total << 3;
    oam = gOamBuffer;
    raw = (u16 *)((u8 *)oam + oamOffset);
    stateBase = &gMinigameCamera;
    active = stateBase->active;
    affinePtr = &affineA;
    affinePtr++;
    affineBPtr = affinePtr;
    affinePtr++;
    affineCPtr = affinePtr;
    affinePtr++;
    affineDPtr = affinePtr;

#define DRAW_FRAME_COMMON(_frame, _x, _y, _attr0Set, _attr0Clear, _attr1Set, _attr1Clear, _attr2Set, _attr2Clear) \
    do { \
        frame = (_frame); \
        count = *frame++; \
        total += count; \
        while (i < total) { \
            OamData *oam; \
            u16 attr0; \
            u16 attr1; \
            u16 attr2; \
            oam = &gOamBuffer[i]; \
            attr0 = *frame++; \
            *raw++ = attr0; \
            oam->split.y = attr0 + (_y); \
            if ((_attr0Set) != 0 || (_attr0Clear) != 0) { \
                oam->split.affineMode = (_attr0Set); \
            } \
            attr1 = *frame++; \
            *raw++ = attr1; \
            oam->split.x = attr1 + (_x); \
            if ((_attr1Set) != 0 || (_attr1Clear) != 0) { \
                oam->split.matrixNum = (_attr1Set) >> 1; \
            } \
            attr2 = *frame++; \
            *raw++ = attr2; \
            oam->split.priority = (_attr2Set) >> 2; \
            raw++; \
            i++; \
        } \
    } while (0)

    if (active != 0) {
        if (active == 1) {
            frame = sUnk_870D880;
        }
        if (active == 2) {
            frame = sUnk_870D890;
        }
        count = *frame;
        total += count;
        frame++;
        if (i < total) {
            register struct WarioHopMidState *state asm("r6");
            register s32 tempXMask asm("r1");
            register s32 tempMatrixMask asm("r2");
            register s32 tempPriorityMask asm("r0");

            /* Keep the state pointer in r2 until the target r6 copy point. */
            asm("add %0, %1, #0" : "=r"(state) : "r"(stateBase));
            tempXMask = 0xFFFFFE00;
            /* agbcc schedules the literal load after the other masks unless this copy is fixed here. */
            asm volatile("mov %0, %1" : "=r"(xMask) : "r"(tempXMask));
            tempMatrixMask = -15;
            asm("" : "+r"(tempMatrixMask));
            matrixMask = tempMatrixMask;
            asm("" : "+r"(matrixMask));
            tempPriorityMask = -13;
            asm("" : "+r"(tempPriorityMask));
            priorityMask = tempPriorityMask;
            asm("" : "+r"(priorityMask));
            do {
                register s32 value asm("r2");
                register s32 newX asm("r1");
                register u16 oldAttr asm("r2");
                register s32 mergedAttr asm("r0");
                register s32 coord asm("r0");
                register s32 finalValue asm("r0");
                register s32 attrHigh asm("r1");
                u8 *oamBytes;

                value = *frame++;
                *raw++ = value;
                coord = (u8)state->yOffset;
                coord += value;
                coord -= 16;
                oam->split.y = coord;
                oam->split.affineMode = 3;

                value = *frame++;
                *raw++ = value;
                newX = value + (s16)state->xOffset;
                newX -= 32;
                newX &= 0x1FF;
                oldAttr = oam->all.attr1;
                mergedAttr = xMask;
                mergedAttr &= oldAttr;
                mergedAttr |= newX;
                oam->all.attr1 = mergedAttr;
                oamBytes = (u8 *)oam;
                /* agbcc otherwise swaps the byte-load and mask result registers. */
                asm volatile("ldrb %0, [%1, #3]" : "=r"(attrHigh) : "r"(oamBytes));
                mergedAttr = matrixMask;
                mergedAttr &= attrHigh;
                mergedAttr |= 2;
                oamBytes[3] = mergedAttr;

                finalValue = *frame;
                *raw = finalValue;
                frame++;
                attrHigh = oamBytes[5];
                mergedAttr = priorityMask;
                mergedAttr &= attrHigh;
                oamBytes[5] = mergedAttr;

                raw += 2;
                oam++;
                i++;
            } while (i < total);
        }
    }

    effectActivePtr = &gMinigameMedalHighlight;
    /* agbcc otherwise hoists this read across the preceding OAM loop. */
    asm("ldrb %0, [%1]" : "=r"(effectActive) : "r"(effectActivePtr));
    if (effectActive != 0) {
        gMinigameUiAnimation[0]++;
        if (sWarioHopMedalHighlightOam[gMinigameUiAnimation[1]].time < gMinigameUiAnimation[0]) {
            gMinigameUiAnimation[0] = 1;
            gMinigameUiAnimation[1]++;
            if (sWarioHopMedalHighlightOam[gMinigameUiAnimation[1]].time == 0) {
                register u32 resetZero asm("r0");
                register u8 *resetActivePtr asm("r2");

                gMinigameUiAnimation[1] = 0;
                gMinigameUiAnimation[0] = 0;
                resetZero = 0;
                resetActivePtr = &gMinigameMedalHighlight;
                *resetActivePtr = resetZero;
                WarioHopDrawScoreDigits();
            }
        }
    }
    {
        register OamData *oamBase asm("r1");
        register OamData *loopOam asm("r3");
        register u32 offset asm("r0");
        register s32 remainingBase asm("r0");
        register s32 tempCoordMask asm("r3");
        register s32 coordMask asm("r10");
        register s32 tempClearX asm("r0");
        register s32 clearX asm("r12");
        register s32 tempPriority asm("r2");
        register s32 drawPriorityMask asm("r8");

        frame = sWarioHopMedalHighlightOam[gMinigameUiAnimation[1]].oam;
        count = *frame;
        total += count;
        frame++;
        player = &gWarioHopPlayerShadow;
        if (i < total) {
            oamBase = gOamBuffer;
            tempCoordMask = 0x1FF;
            asm volatile("mov %0, %1" : "=r"(coordMask) : "r"(tempCoordMask));
            tempClearX = 0xFFFFFE00;
            asm volatile("mov %0, %1" : "=r"(clearX) : "r"(tempClearX));
            tempPriority = -13;
            asm("" : "+r"(tempPriority));
            drawPriorityMask = tempPriority;
            asm("" : "+r"(drawPriorityMask));
            offset = i << 3;
            /* Fix operand order for the Thumb add selected by agbcc. */
            asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(offset), "r"(oamBase));
            asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
            i = remainingBase - i;
            do {
                register s32 value asm("r2");
                register s32 coord asm("r0");
                register s32 newX asm("r1");
                register u16 oldAttr asm("r2");
                register s32 mergedAttr asm("r0");
                register s32 finalValue asm("r0");
                register s32 attrHigh asm("r1");
                register s32 maskTemp asm("r2");

                value = *frame++;
                *raw++ = value;
                coord = value;
                coord += 24;
                loopOam->split.y = coord;

                value = *frame++;
                *raw++ = value;
                newX = value;
                newX += 29;
                asm volatile("mov %0, %1" : "=r"(maskTemp) : "r"(coordMask));
                newX &= maskTemp;
                oldAttr = loopOam->all.attr1;
                mergedAttr = clearX;
                mergedAttr &= oldAttr;
                mergedAttr |= newX;
                loopOam->all.attr1 = mergedAttr;

                finalValue = *frame;
                *raw = finalValue;
                frame++;
                attrHigh = ((u8 *)loopOam)[5];
                mergedAttr = drawPriorityMask;
                mergedAttr &= attrHigh;
                ((u8 *)loopOam)[5] = mergedAttr;

                raw += 2;
                loopOam++;
                i--;
            } while (i != 0);
            i = total;
        }
    }

    {
        register u8 *variantPtr asm("r3");
        register u32 variantOffset asm("r0");
        register const struct AnimationFrame *const *animationTable asm("r1");
        register const struct AnimationFrame *playerAnim asm("r3");
        register const struct AnimationFrame **animationEntry asm("r0");
        register u16 playerTimer asm("r1");
        register u32 playerFrameTime asm("r0");
        register u8 *phasePtr asm("r2");
        register OamData *oamBase asm("r1");
        register OamData *loopOam asm("r3");
        register u32 oamByteOffset asm("r0");
        register s32 tempClearX asm("r2");
        register s32 clearX asm("r12");
        register s32 tempPriority asm("r3");
        register s32 drawPriorityMask asm("r10");
        register s32 tempCoordMask asm("r0");
        register s32 coordMask asm("r8");
        register s32 remainingBase asm("r1");

        variantPtr = &gWarioHopSpeedLevel;
        variantOffset = *variantPtr;
        variantOffset <<= 2;
        animationTable = sUnk_870CE14;
        asm volatile("add %0, %1, %2" : "=r"(animationEntry) : "r"(variantOffset), "r"(animationTable));
        playerAnim = *animationEntry;
        phasePtr = &gMinigameState;
        if (*phasePtr <= 2) {
            player->animTimer++;
        }
        playerFrameTime = playerAnim[player->animFrame].time;
        playerTimer = player->animTimer;
        if (playerFrameTime < playerTimer) {
            player->animTimer = 0;
            player->animFrame++;
            if (playerAnim[player->animFrame].time == 0) {
                player->animFrame = 0;
            }
        }

        frame = playerAnim[player->animFrame].oam;
        count = *frame;
        total += count;
        frame++;
        if (i < total) {
            oamBase = gOamBuffer;
            tempClearX = 0xFFFFFE00;
            asm volatile("mov %0, %1" : "=r"(clearX) : "r"(tempClearX));
            tempPriority = -13;
            asm("" : "+r"(tempPriority));
            drawPriorityMask = tempPriority;
            asm("" : "+r"(drawPriorityMask));
            oamByteOffset = i << 3;
            asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(oamByteOffset), "r"(oamBase));
            tempCoordMask = 0x1FF;
            asm volatile("mov %0, %1" : "=r"(coordMask) : "r"(tempCoordMask));
            asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
            i = remainingBase - i;
            do {
                register s32 value asm("r2");
                register s32 coord asm("r0");
                register s32 newX asm("r1");
                register s32 maskTemp asm("r2");
                register u16 oldAttr asm("r2");
                register s32 mergedAttr asm("r0");
                register s32 finalValue asm("r0");
                register s32 attrHigh asm("r1");

                value = *frame++;
                *raw++ = value;
                coord = player->y;
                coord <<= 16;
                coord >>= 20;
                coord += value;
                loopOam->split.y = coord;

                value = *frame++;
                *raw++ = value;
                newX = player->x;
                newX <<= 16;
                newX >>= 20;
                newX = value + newX;
                asm volatile("mov %0, %1" : "=r"(maskTemp) : "r"(coordMask));
                newX &= maskTemp;
                oldAttr = loopOam->all.attr1;
                mergedAttr = clearX;
                mergedAttr &= oldAttr;
                mergedAttr |= newX;
                loopOam->all.attr1 = mergedAttr;

                finalValue = *frame;
                *raw = finalValue;
                frame++;
                attrHigh = ((u8 *)loopOam)[5];
                mergedAttr = drawPriorityMask;
                mergedAttr &= attrHigh;
                mergedAttr |= 4;
                ((u8 *)loopOam)[5] = mergedAttr;

                raw += 2;
                loopOam++;
                i--;
            } while (i != 0);
            i = total;
        }
    }

    {
        register const struct AnimationFrame *base asm("r3");
        register const u16 *currentFrame asm("r4");
        register struct WarioHopObjState *currentPlayer asm("r6");
        register OamData *oamBase asm("r0");
        register OamData *oamBaseHigh asm("r12");
        register s32 tempMatrixMask asm("r1");
        register s32 drawMatrixMask asm("r10");
        register s32 tempPriorityMask asm("r2");
        register s32 drawPriorityMask asm("r8");

        base = sWarioHopPlayerOam;
        currentFrame = base[0].oam;
        count = *currentFrame;
        total += count;
        currentFrame++;
        if (i < total) {
            currentPlayer = &gWarioHopPlayer;
            oamBase = gOamBuffer;
            asm volatile("mov %0, %1" : "=r"(oamBaseHigh) : "r"(oamBase));
            tempMatrixMask = -15;
            asm volatile("mov %0, %1" : "=r"(drawMatrixMask) : "r"(tempMatrixMask));
            tempPriorityMask = -13;
            asm volatile("mov %0, %1" : "=r"(drawPriorityMask) : "r"(tempPriorityMask));
            do {
                register s32 value asm("r2");
                register u32 byteOffset asm("r3");
                register OamData *loopOam asm("r3");
                register s32 coord asm("r0");
                register s32 attrHigh asm("r1");
                register s32 newX asm("r1");
                register u16 oldAttr asm("r2");
                register s32 mergedAttr asm("r0");
                register s32 finalValue asm("r0");

                value = *currentFrame++;
                *raw++ = value;
                byteOffset = i << 3;
                asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(byteOffset), "r"(oamBaseHigh));
                coord = currentPlayer->y;
                coord <<= 16;
                coord >>= 20;
                coord += value;
                loopOam->split.y = coord;
                attrHigh = ((u8 *)loopOam)[1];
                coord = -4;
                coord &= attrHigh;
                attrHigh = 1;
                coord |= attrHigh;
                ((u8 *)loopOam)[1] = coord;

                value = *currentFrame++;
                *raw++ = value;
                newX = currentPlayer->x;
                newX <<= 16;
                newX >>= 20;
                newX = value + newX;
                newX &= 0x1FF;
                oldAttr = loopOam->all.attr1;
                mergedAttr = 0xFFFFFE00;
                mergedAttr &= oldAttr;
                mergedAttr |= newX;
                loopOam->all.attr1 = mergedAttr;
                attrHigh = ((u8 *)loopOam)[3];
                mergedAttr = drawMatrixMask;
                mergedAttr &= attrHigh;
                ((u8 *)loopOam)[3] = mergedAttr;

                finalValue = *currentFrame;
                *raw = finalValue;
                currentFrame++;
                attrHigh = ((u8 *)loopOam)[5];
                mergedAttr = drawPriorityMask;
                mergedAttr &= attrHigh;
                attrHigh = 4;
                mergedAttr |= attrHigh;
                ((u8 *)loopOam)[5] = mergedAttr;

                raw += 2;
                i++;
            } while (i < total);
        }
    }

    {
        register u8 *companionActivePtr asm("r3");
        register u32 zero asm("r4");

        companionActivePtr = &gWarioHopJumpState;
        zero = *companionActivePtr;
        if (zero == 0) {
            register u16 *companion asm("r2");
            register const struct AnimationFrame *companionAnim asm("r3");
            register u16 timer asm("r1");
            register u32 frameTime asm("r0");
            register const u16 *currentFrame asm("r4");

            companion = gWarioHopRollingObject;
            timer = companion[3];
            timer++;
            companion[3] = timer;
            companionAnim = sWarioHopRollingObjectOam;
            frameTime = companionAnim[companion[4]].time;
            if (frameTime < timer) {
                companion[3] = zero;
                companion[4]++;
                if (companionAnim[companion[4]].time == 0) {
                    companion[4] = 0;
                }
            }

            currentFrame = companionAnim[companion[4]].oam;
            count = *currentFrame;
            total += count;
            currentFrame++;
            if (i < total) {
                register OamData *oamBase asm("r1");
                register u16 *drawCompanion asm("r6");
                register s32 tempClearX asm("r0");
                register s32 clearX asm("r12");
                register s32 tempPriorityMask asm("r2");
                register s32 drawPriorityMask asm("r10");
                register u32 byteOffset asm("r0");
                register OamData *loopOam asm("r3");
                register s32 tempCoordMask asm("r0");
                register s32 coordMask asm("r8");
                register s32 remainingBase asm("r1");

                oamBase = gOamBuffer;
                asm volatile("add %0, %1, #0" : "=r"(drawCompanion) : "r"(companion));
                tempClearX = 0xFFFFFE00;
                asm volatile("mov %0, %1" : "=r"(clearX) : "r"(tempClearX));
                tempPriorityMask = -13;
                asm volatile("mov %0, %1" : "=r"(drawPriorityMask) : "r"(tempPriorityMask));
                byteOffset = i << 3;
                asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(byteOffset), "r"(oamBase));
                tempCoordMask = 0x1FF;
                asm volatile("mov %0, %1" : "=r"(coordMask) : "r"(tempCoordMask));
                asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
                i = remainingBase - i;
                do {
                    register s32 value asm("r2");
                    register s32 coord asm("r0");
                    register s32 newX asm("r1");
                    register s32 maskTemp asm("r2");
                    register u16 oldAttr asm("r2");
                    register s32 mergedAttr asm("r0");
                    register s32 finalValue asm("r0");
                    register s32 attrHigh asm("r1");

                    value = *currentFrame++;
                    *raw++ = value;
                    coord = drawCompanion[1];
                    coord <<= 16;
                    coord >>= 20;
                    coord += value;
                    loopOam->split.y = coord;

                    value = *currentFrame++;
                    *raw++ = value;
                    newX = drawCompanion[0];
                    newX <<= 16;
                    newX >>= 20;
                    newX = value + newX;
                    asm volatile("mov %0, %1" : "=r"(maskTemp) : "r"(coordMask));
                    newX &= maskTemp;
                    oldAttr = loopOam->all.attr1;
                    mergedAttr = clearX;
                    mergedAttr &= oldAttr;
                    mergedAttr |= newX;
                    loopOam->all.attr1 = mergedAttr;

                    finalValue = *currentFrame;
                    *raw = finalValue;
                    currentFrame++;
                    attrHigh = ((u8 *)loopOam)[5];
                    mergedAttr = drawPriorityMask;
                    mergedAttr &= attrHigh;
                    attrHigh = 4;
                    mergedAttr |= attrHigh;
                    ((u8 *)loopOam)[5] = mergedAttr;

                    raw += 2;
                    loopOam++;
                    i--;
                } while (i != 0);
                i = total;
            }
        }
    }

    {
        register s32 itemIndex asm("r6");
        register s32 nextIndex asm("r8");

        itemIndex = 0;
        do {
            register u32 indexTwice asm("r0");
            register u32 itemOffset asm("r1");
            register struct WarioHopSmallState *itemsBase asm("r3");
            register struct WarioHopSmallState *currentItem asm("r2");
            register u32 itemType asm("r1");
            register u32 savedIndexTwice asm("r12");
            register s32 nextIndexTemp asm("r0");

            indexTwice = itemIndex << 1;
            itemOffset = indexTwice + itemIndex;
            itemOffset <<= 2;
            itemsBase = (struct WarioHopSmallState *)0x03004950;
            currentItem = (struct WarioHopSmallState *)((u8 *)itemsBase + itemOffset);
            itemType = currentItem->type;
            savedIndexTwice = indexTwice;
            nextIndexTemp = itemIndex + 1;
            asm volatile("mov %0, %1" : "=r"(nextIndex) : "r"(nextIndexTemp));
            if (itemType != 0) {
                register const struct AnimationFrame *const *animationTable asm("r1");
                register u32 typeOffset asm("r0");
                register const struct AnimationFrame *currentAnim asm("r3");
                register u32 timer asm("r1");
                register u32 frameTime asm("r0");
                register s32 zero asm("r4");
                register const u16 *currentFrame asm("r4");
                register struct WarioHopSmallState *drawBase asm("r2");
                register struct WarioHopSmallState *drawItemBase asm("r0");
                register struct WarioHopSmallState *drawItem asm("r6");
                register u32 savedForOffset asm("r1");
                register u32 offsetSum asm("r0");
                register struct WarioHopSmallState *frameState asm("r0");

                animationTable = sUnk_870CE24;
                typeOffset = currentItem->type - 1;
                typeOffset <<= 2;
                currentAnim = *(const struct AnimationFrame **)(typeOffset + (u32)animationTable);
                timer = currentItem->animTimer;
                timer++;
                zero = 0;
                currentItem->animTimer = timer;
                /*
                * Semantically equivalent C:
                *
                *     frameTime = currentAnim[currentItem->animFrame].time;
                *     if ((u16)timer > frameTime) {
                *         ...
                *     }
                *
                * When expressed in C, agbcc inserts the function's literal pool after
                * the initial `ldrh`, then schedules the remaining address calculation
                * after the pool and reverses the comparison operands (`cmp r1, r0`
                * followed by `bls`). This shifts the literal pool and its relocation
                * offsets, so the complete seven-instruction load-and-compare sequence
                * must remain one localized compiler boundary for a byte-exact match.
                */
                asm volatile(
                    "ldrh %0, [%2, #8]\n"
                    "lsl %0, %0, #3\n"
                    "add %0, %0, %3\n"
                    "ldrb %0, [%0, #4]\n"
                    "lsl %1, %1, #16\n"
                    "lsr %1, %1, #16\n"
                    "cmp %0, %1"
                    : "=r"(frameTime), "+r"(timer)
                    : "r"(currentItem), "r"(currentAnim)
                    : "cc");
                /* The compare above sets carry exactly as the target.  Keep only the
                 * one-instruction conditional boundary after agbcc's literal pool. */
                asm volatile("bcs .LwarioHopItemAnimNoAdvance" : : : "cc", "memory");
                currentItem->animTimer = zero;
                currentItem->animFrame++;
                if (currentAnim[currentItem->animFrame].time == 0) {
                    currentItem->animFrame = 0;
                }
                asm volatile(".LwarioHopItemAnimNoAdvance:" : : : "memory");

                savedForOffset = savedIndexTwice;
                offsetSum = savedForOffset + itemIndex;
                itemOffset = offsetSum << 2;
                drawBase = gWarioHopObstacles;
                asm("add %0, %1, %2" : "=r"(frameState) : "r"(itemOffset), "r"(drawBase));
                currentFrame = currentAnim[frameState->animFrame].oam;
                count = *currentFrame;
                total += count;
                currentFrame++;
                itemIndex++;
                nextIndex = itemIndex;
                if (i < total) {
                    register OamData *oamBase asm("r1");
                    register u32 byteOffset asm("r0");
                    register OamData *loopOam asm("r3");
                    register s32 tempCoordMask asm("r2");
                    register s32 coordMask asm("r10");
                    register s32 tempPriorityMask asm("r0");
                    register s32 drawPriorityMask asm("r12");
                    register s32 remainingBase asm("r1");

                    asm volatile("add %0, %1, #0" : "=r"(drawItemBase) : "r"(drawBase));
                    asm volatile("add %0, %1, %2" : "=r"(drawItem) : "r"(itemOffset), "r"(drawItemBase));
                    byteOffset = i << 3;
                    oamBase = gOamBuffer;
                    asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(byteOffset), "r"(oamBase));
                    tempCoordMask = 0x1FF;
                    asm volatile("mov %0, %1" : "=r"(coordMask) : "r"(tempCoordMask));
                    tempPriorityMask = -13;
                    asm volatile("mov %0, %1" : "=r"(drawPriorityMask) : "r"(tempPriorityMask));
                    asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
                    i = remainingBase - i;
                    do {
                        register s32 value asm("r2");
                        register s32 coord asm("r0");
                        register s32 newX asm("r1");
                        register s32 maskTemp asm("r2");
                        register u16 oldAttr asm("r2");
                        register s32 mergedAttr asm("r0");
                        register s32 finalValue asm("r0");
                        register s32 attrHigh asm("r1");

                        value = *currentFrame++;
                        *raw++ = value;
                        coord = drawItem->y;
                        coord <<= 16;
                        coord >>= 20;
                        coord += value;
                        loopOam->split.y = coord;

                        value = *currentFrame++;
                        *raw++ = value;
                        newX = drawItem->x;
                        newX <<= 16;
                        newX >>= 20;
                        newX = value + newX;
                        asm volatile("mov %0, %1" : "=r"(maskTemp) : "r"(coordMask));
                        newX &= maskTemp;
                        oldAttr = loopOam->all.attr1;
                        mergedAttr = 0xFFFFFE00;
                        mergedAttr &= oldAttr;
                        mergedAttr |= newX;
                        loopOam->all.attr1 = mergedAttr;

                        finalValue = *currentFrame;
                        *raw = finalValue;
                        currentFrame++;
                        attrHigh = ((u8 *)loopOam)[5];
                        mergedAttr = drawPriorityMask;
                        mergedAttr &= attrHigh;
                        attrHigh = 4;
                        mergedAttr |= attrHigh;
                        ((u8 *)loopOam)[5] = mergedAttr;

                        raw += 2;
                        loopOam++;
                        i--;
                    } while (i != 0);
                    i = total;
                }
            }
            itemIndex = nextIndex;
        } while (itemIndex <= 6);
    }

    {
        register struct WarioHopSmallState *effectState asm("r3");
        register u32 effectType asm("r1");

        effectState = &gWarioHopBonusEffect;
        effectType = effectState->type;
        if (effectType == 0) {
            goto warioHopEffectDone;
        }
        effectType++;
        effectState->type = effectType;
        effectState->animTimer++;
        if ((u8)effectType > 201) {
            effectState->type = 0;
        }
    }
    {
        register const struct AnimationFrame *animBase asm("r0");
        register u32 r2Value asm("r2");
        register u32 r3Value asm("r3");
        register u32 frameTime asm("r1");
        register const u16 *currentFrame asm("r4");
        register struct WarioHopSmallState *drawStateSource asm("r3");

        animBase = sWarioHopBonusEffectOam;
        r2Value = (u32)&gWarioHopBonusEffect;
        frameTime = animBase[((struct WarioHopSmallState *)r2Value)->animFrame].time;
        asm volatile("add %0, %1, #0" : "=r"(r2Value) : "r"(animBase));
        r3Value = (u32)&gWarioHopBonusEffect;
        r3Value = ((struct WarioHopSmallState *)r3Value)->animTimer;
        if (frameTime < r3Value) {
            register u32 one asm("r0");
            register struct WarioHopSmallState *updateState asm("r1");

            one = 1;
            updateState = &gWarioHopBonusEffect;
            updateState->animTimer = one;
            updateState->animFrame++;
            if (((const struct AnimationFrame *)r2Value)[updateState->animFrame].time == 0) {
                updateState->animFrame = 0;
            }
        }
        r3Value = (u32)&gWarioHopBonusEffect;
        drawStateSource = (struct WarioHopSmallState *)r3Value;
        if (drawStateSource->type != 0) {
            currentFrame = ((const struct AnimationFrame *)r2Value)[drawStateSource->animFrame].oam;
            count = *currentFrame;
            total += count;
            currentFrame++;
            if (i < total) {
                register OamData *oamBase asm("r1");
                register struct WarioHopSmallState *drawState asm("r6");
                register const u8 *xTable asm("r0");
                register const u8 *xTableHigh asm("r12");
                register u32 byteOffset asm("r0");
                register OamData *loopOam asm("r3");
                register s32 tempCoordMask asm("r1");
                register s32 coordMask asm("r8");
                register s32 tempPriorityMask asm("r2");
                register s32 drawPriorityMask asm("r10");
                register s32 remainingBase asm("r0");

                oamBase = gOamBuffer;
                asm volatile("add %0, %1, #0" : "=r"(drawState) : "r"(drawStateSource));
                xTable = sUnk_870CC18;
                asm volatile("mov %0, %1" : "=r"(xTableHigh) : "r"(xTable));
                byteOffset = i << 3;
                asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(byteOffset), "r"(oamBase));
                tempCoordMask = 0x1FF;
                asm volatile("mov %0, %1" : "=r"(coordMask) : "r"(tempCoordMask));
                tempPriorityMask = -13;
                asm volatile("mov %0, %1" : "=r"(drawPriorityMask) : "r"(tempPriorityMask));
                asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
                i = remainingBase - i;
                do {
                    register s32 value asm("r2");
                    register s32 coord asm("r0");
                    register s32 xIndex asm("r0");
                    register s32 newX asm("r1");
                    register s32 maskTemp asm("r2");
                    register u16 oldAttr asm("r2");
                    register s32 mergedAttr asm("r0");
                    register s32 finalValue asm("r0");
                    register s32 attrHigh asm("r1");

                    value = *currentFrame++;
                    *raw++ = value;
                    coord = drawState->type;
                    coord -= 2;
                    coord = sUnk_870CCE0[coord];
                    coord += value;
                    loopOam->split.y = coord;

                    value = *currentFrame++;
                    *raw++ = value;
                    xIndex = drawState->type;
                    xIndex -= 2;
                    xIndex += (u32)xTableHigh;
                    newX = *(u8 *)xIndex;
                    newX = value + newX;
                    asm volatile("mov %0, %1" : "=r"(maskTemp) : "r"(coordMask));
                    newX &= maskTemp;
                    oldAttr = loopOam->all.attr1;
                    mergedAttr = 0xFFFFFE00;
                    mergedAttr &= oldAttr;
                    mergedAttr |= newX;
                    loopOam->all.attr1 = mergedAttr;

                    finalValue = *currentFrame;
                    *raw = finalValue;
                    currentFrame++;
                    attrHigh = ((u8 *)loopOam)[5];
                    mergedAttr = drawPriorityMask;
                    mergedAttr &= attrHigh;
                    attrHigh = 8;
                    mergedAttr |= attrHigh;
                    ((u8 *)loopOam)[5] = mergedAttr;

                    raw += 2;
                    loopOam++;
                    i--;
                } while (i != 0);
                i = total;
            }
        }
    }
warioHopEffectDone:
;

    {
        register struct WarioHopSmallState *effectState asm("r3");
        register const struct AnimationFrame *effectAnim asm("r2");
        register u16 timer asm("r1");

        effectState = &gWarioHopMedalEffect;
        if (effectState->type != 0) {
            timer = effectState->animTimer;
            timer++;
            effectState->animTimer = timer;
            effectAnim = sWarioHopMedalEffectOam;
            if (effectAnim[effectState->animFrame].time < timer) {
                effectState->animTimer = 1;
                effectState->animFrame++;
                if (effectAnim[effectState->animFrame].time == 0) {
                    effectState->animFrame = 0;
                    effectState->animTimer = 0;
                    effectState->type = 0;
                }
            }
            {
                register struct WarioHopSmallState *drawStateSource asm("r1");
                register const u16 *currentFrame asm("r4");

                drawStateSource = &gWarioHopMedalEffect;
                if (drawStateSource->type != 0) {
                    currentFrame = effectAnim[drawStateSource->animFrame].oam;
                count = *currentFrame;
                total += count;
                currentFrame++;
                if (i < total) {
                    register OamData *oamBase asm("r1");
                    register s32 coordMask asm("r6");
                    register s32 tempClearX asm("r2");
                    register s32 clearX asm("r8");
                    register u32 byteOffset asm("r0");
                    register OamData *loopOam asm("r3");
                    register s32 remainingBase asm("r0");

                    oamBase = gOamBuffer;
                    coordMask = 0x1FF;
                    tempClearX = 0xFFFFFE00;
                    asm volatile("mov %0, %1" : "=r"(clearX) : "r"(tempClearX));
                    byteOffset = i << 3;
                    asm volatile("add %0, %1, %2" : "=r"(loopOam) : "r"(byteOffset), "r"(oamBase));
                    asm volatile("mov %0, %1" : "=r"(remainingBase) : "r"(total));
                    i = remainingBase - i;
                    do {
                        register s32 value asm("r2");
                        register s32 coord asm("r0");
                        register s32 newX asm("r1");
                        register u16 oldAttr asm("r2");
                        register s32 mergedAttr asm("r0");
                        register s32 finalValue asm("r0");
                        register s32 attrHigh asm("r0");
                        register s32 priorityBits asm("r1");

                        value = *currentFrame++;
                        *raw++ = value;
                        coord = value;
                        coord += 140;
                        loopOam->split.y = coord;

                        value = *currentFrame++;
                        *raw++ = value;
                        newX = value;
                        newX += 160;
                        newX &= coordMask;
                        oldAttr = loopOam->all.attr1;
                        mergedAttr = clearX;
                        mergedAttr &= oldAttr;
                        mergedAttr |= newX;
                        loopOam->all.attr1 = mergedAttr;

                        finalValue = *currentFrame;
                        *raw = finalValue;
                        currentFrame++;
                        attrHigh = ((u8 *)loopOam)[5];
                        priorityBits = 12;
                        attrHigh |= priorityBits;
                        ((u8 *)loopOam)[5] = attrHigh;

                        raw += 2;
                        loopOam++;
                        i--;
                    } while (i != 0);
                    i = total;
                }
                }
            }
        }
    }

#undef DRAW_FRAME_COMMON

    {
        register struct WarioHopObjState *affineState asm("r1");
        register u32 affineAddress asm("r0");
        register const s16 *affineTable asm("r2");
        register s32 affineZero asm("r3");
        register s32 affineSine asm("r4");
        register s32 affineScaleOffset asm("r2");
        register s32 affineInverse asm("r0");
        register s32 affineResult asm("r0");
        register s16 *affineDst asm("r1");

        affineState = &gWarioHopPlayer;
        affineAddress = affineState->angle;
        affineAddress += 64;
        affineAddress <<= 1;
        affineTable = sSinCosTable;
        affineAddress += (u32)affineTable;
        affineZero = 0;
        /* agbcc otherwise chooses r2 for this signed table load instead of target r3. */
        asm("ldrsh %0, [%1, %2]" : "=r"(affineSine) : "r"(affineAddress), "r"(affineZero));
        affineScaleOffset = 6;
        /* Keep the scale load in target r0/r1/r2 before FixedInverse. */
        asm("ldrsh %0, [%1, %2]" : "=r"(affineInverse) : "r"(affineState), "r"(affineScaleOffset));
        affineInverse = FixedInverse(affineInverse);
        affineResult = FixedMul(affineSine, (s16)affineInverse);
        affineDst = &affineA;
        *affineDst = affineResult;
    }
    {
        register struct WarioHopObjState *affineState asm("r3");
        register u32 affineAddress asm("r0");
        register const s16 *affineTable asm("r1");
        register s32 affineZero asm("r2");
        register s32 affineSine asm("r4");
        register s32 affineScaleOffset asm("r1");
        register s32 affineInverse asm("r0");
        register s32 affineResult asm("r0");
        register s16 *affineDst asm("r2");

        affineState = &gWarioHopPlayer;
        affineAddress = affineState->angle;
        affineAddress <<= 1;
        affineTable = sSinCosTable;
        affineAddress += (u32)affineTable;
        affineZero = 0;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineSine) : "r"(affineAddress), "r"(affineZero));
        affineScaleOffset = 6;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineInverse) : "r"(affineState), "r"(affineScaleOffset));
        affineInverse = FixedInverse(affineInverse);
        affineResult = FixedMul(affineSine, (s16)affineInverse);
        affineDst = affineBPtr;
        *affineDst = affineResult;
    }
    {
        register struct WarioHopObjState *affineState asm("r3");
        register u32 affineAddress asm("r0");
        register const u16 *affineTable asm("r1");
        register s32 affineSine asm("r4");
        register s32 affineScaleOffset asm("r2");
        register s32 affineInverse asm("r0");
        register s32 affineResult asm("r0");
        register s16 *affineDst asm("r3");

        affineState = &gWarioHopPlayer;
        affineAddress = affineState->angle;
        affineAddress <<= 1;
        affineTable = (const u16 *)sSinCosTable;
        affineAddress += (u32)affineTable;
        affineSine = *(u16 *)affineAddress;
        affineSine = -affineSine;
        affineSine = (s16)affineSine;
        affineScaleOffset = 6;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineInverse) : "r"(affineState), "r"(affineScaleOffset));
        affineInverse = FixedInverse(affineInverse);
        affineResult = FixedMul(affineSine, (s16)affineInverse);
        affineDst = affineCPtr;
        *affineDst = affineResult;
    }
    {
        register struct WarioHopObjState *affineState asm("r1");
        register u32 affineAddress asm("r0");
        register const s16 *affineTable asm("r2");
        register s32 affineZero asm("r3");
        register s32 affineSine asm("r4");
        register s32 affineScaleOffset asm("r2");
        register s32 affineInverse asm("r0");
        register s16 *affineDst asm("r3");

        affineState = &gWarioHopPlayer;
        affineAddress = affineState->angle;
        affineAddress += 64;
        affineAddress <<= 1;
        affineTable = sSinCosTable;
        affineAddress += (u32)affineTable;
        affineZero = 0;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineSine) : "r"(affineAddress), "r"(affineZero));
        affineScaleOffset = 6;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineInverse) : "r"(affineState), "r"(affineScaleOffset));
        affineInverse = FixedInverse(affineInverse);
        affineDResult = FixedMul(affineSine, (s16)affineInverse);
        /* Force only the compiler-boundary pointer load needed for target r3. */
        asm("ldr %0, [sp, #16]" : "=r"(affineDst));
        *affineDst = affineDResult;
    }

    gOamBuffer[0].all.affineParam = affineA;
    gOamBuffer[1].all.affineParam = *affineBPtr;
    gOamBuffer[2].all.affineParam = *affineCPtr;
    gOamBuffer[3].all.affineParam = affineDResult;

    {
        register const s16 *affineTable asm("r0");
        register s32 affineZero asm("r2");
        register s32 affineCosTemp asm("r1");
        register s32 affineSecondCos asm("r8");
        register struct WarioHopMidState *affineState asm("r6");
        register s32 affineScaleOffset asm("r3");
        register s32 affineInverse asm("r0");
        register s32 affineResult asm("r0");
        register s16 *affineDst asm("r1");

        affineTable = sSinCosTable;
        affineTable += 64;
        affineZero = 0;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineCosTemp) : "r"(affineTable), "r"(affineZero));
        affineSecondCos = affineCosTemp;
        affineState = &gMinigameCamera;
        affineScaleOffset = 4;
        asm("ldrsh %0, [%1, %2]" : "=r"(affineInverse) : "r"(affineState), "r"(affineScaleOffset));
        affineInverse = FixedInverse(affineInverse);
        affineResult = FixedMul(affineSecondCos, (s16)affineInverse);
        affineDst = &affineA;
        *affineDst = affineResult;

        {
            register const s16 *affineTableB asm("r0");
            register s32 affineZeroB asm("r1");
            register s32 affineSineB asm("r4");
            register s32 affineScaleOffsetB asm("r2");
            register s32 affineInverseB asm("r0");
            register s32 affineResultB asm("r0");
            register s16 *affineDstB asm("r3");

            affineTableB = sSinCosTable;
            affineZeroB = 0;
            asm("ldrsh %0, [%1, %2]" : "=r"(affineSineB) : "r"(affineTableB), "r"(affineZeroB));
            affineScaleOffsetB = 4;
            asm("ldrsh %0, [%1, %2]" : "=r"(affineInverseB) : "r"(affineState), "r"(affineScaleOffsetB));
            affineInverseB = FixedInverse(affineInverseB);
            affineResultB = FixedMul(affineSineB, (s16)affineInverseB);
            affineDstB = affineBPtr;
            asm("" : "+r"(affineDstB));
            *affineDstB = affineResultB;
        }
        {
            register const u16 *affineTableC asm("r0");
            register s32 affineSineC asm("r4");
            register s32 affineScaleOffsetC asm("r1");
            register s32 affineInverseC asm("r0");
            register s32 affineResultC asm("r0");
            register s16 *affineDstC asm("r2");

            affineTableC = (const u16 *)sSinCosTable;
            affineSineC = *affineTableC;
            affineSineC = -affineSineC;
            affineSineC = (s16)affineSineC;
            affineScaleOffsetC = 4;
            asm("ldrsh %0, [%1, %2]" : "=r"(affineInverseC) : "r"(affineState), "r"(affineScaleOffsetC));
            affineInverseC = FixedInverse(affineInverseC);
            affineResultC = FixedMul(affineSineC, (s16)affineInverseC);
            affineDstC = affineCPtr;
            asm("" : "+r"(affineDstC));
            *affineDstC = affineResultC;
        }
        {
            register s32 affineScaleOffsetD asm("r3");
            register s32 affineInverseD asm("r0");
            register s16 *affineDstD asm("r1");

            affineScaleOffsetD = 4;
            asm("ldrsh %0, [%1, %2]" : "=r"(affineInverseD) : "r"(affineState), "r"(affineScaleOffsetD));
            affineInverseD = FixedInverse(affineInverseD);
            affineDResult2 = FixedMul(affineSecondCos, (s16)affineInverseD);
            affineDstD = affineDPtr;
            asm("" : "+r"(affineDstD));
            *affineDstD = affineDResult2;
        }
    }

    gOamBuffer[4].all.affineParam = affineA;
    gOamBuffer[5].all.affineParam = *affineBPtr;
    gOamBuffer[6].all.affineParam = *affineCPtr;
    gOamBuffer[7].all.affineParam = affineDResult2;

    gOamSlotsUsed = total;
}
