#include "minigames/minigame_homerun_derby.h"
#include "global_data.h"
#include "minigame.h"

/*
 * Auto-generated from disasm_homerun_derby.s.
 *
 * Each original assembly function is kept as one file-scope asm block.
 * To decompile one function, delete that function's asm block and put the
 * matching C implementation at the same position in this file.
 */


#ifndef HOMERUN_DERBY_E55C_ONLY
static s32 func_808F9E0(void);
#endif

struct Dma3Regs {
    vu32 src;
    vu32 dst;
    vu32 cnt;
};

#define DMA3 ((volatile struct Dma3Regs *)0x040000D4)

#ifndef HOMERUN_DERBY_E55C_ONLY
s32 func_808DFD0(void)
{
    /* agbcc register bindings: these pin locals to the exact registers the
       target uses so the switch/jump-table body matches byte-for-byte.
       (Only variable register-binding asm is used -- no asm() statements.) */
    register u8 *stateBase asm("r0");
    register u8 *statePtr  asm("r4");
    register u8 *camera    asm("r4");
    register u8 *cameraPtr asm("r3");
    u8 *flagPtr;
    u8 *pitchTable;
    u8 *pitcherBase;
    u8 *pitcher;
    register u8 *pitcherSound asm("r5");
    u8 *batter;
    register u8 state asm("r1");
    s32 difficulty;
    s32 pitchIndex;
    s32 counter;
    u8 value;
    register s32 next asm("r0");

    stateBase = &gUnk_30047B9;
    state = *stateBase;
    statePtr = stateBase;

    switch (state) {
    case 0:
        if (func_8089B9C(10) == 0) {
            break;
        }
        *(vu16 *)0x04000000 = 0x1800;
        gUnk_30047B9++;
        break;

    case 1:
        camera = gUnk_30047E4;
        next = *(u16 *)(camera + 4) + 0xC0;
        *(u16 *)(camera + 4) = next;
        *(u16 *)(camera + 6) = (*(u16 *)(camera + 6) + 0xFE7) & 0xFFF;
        if ((u16)next > 0x2000) {
            m4aSongNumStart(0x236);
            *(u16 *)(camera + 4) = 0x2000;
            next = 0xC00;
            *(u16 *)(camera + 6) = next;
            gUnk_30047B9++;
        }
        break;

    case 2:
        if (func_8089B9C(0x28) != 0) {
            gUnk_30047B9++;
            gUnk_30047E4[12] = 0;
            *(vu16 *)0x04000000 = 0x1C00;
        }
        break;

    case 3:
        if (func_8089B9C(20) != 0) {
            if (gUnk_3004A2D == 1 || gUnk_3004A2D == 4) {
                m4aSongNumStart(0x2C5);
                gUnk_30047B9++;
            } else {
                gUnk_30047B9 = 5;
                gUnk_3004A2D = 4;
            }
        }
        break;

    case 4:
        func_808E96C();
        if (func_8089B9C(100) != 0) {
            gUnk_30047B9++;
        }
        break;

    case 5:
        func_808E96C();
        if (func_8089B9C(30) != 0) {
            gUnk_30047B9++;
            pitcherBase = gUnk_3004A10;
            pitcherBase[5]++;
            difficulty = gDifficulty;
            pitcher = pitcherBase;
            if (difficulty == 2) {
                pitchTable = sUnk_871D627;
                pitchIndex = (gUnk_30049FC * 5) - 1;
                pitchIndex += pitcher[5];
            } else {
                pitchTable = sUnk_871D604;
                pitchIndex = (gUnk_30049FC * 5) - 1;
                pitchIndex += pitcher[5];
            }
            pitchIndex += (s32)pitchTable;
            value = *(u8 *)pitchIndex;
            pitcher[4] = value;
            pitcherSound = pitcher;
            if (pitcherSound[4] == 3) {
                m4aSongNumStart(0x226);
            }
            if (pitcherSound[4] == 2) {
                m4aSongNumStart(0x227);
            }
            *(u16 *)(pitcher + 2) = 0;
            *(u16 *)(pitcher + 0) = 0;
        }
        break;

    case 6:
        func_808E96C();
        break;

    case 7:
        func_808E96C();
        if (func_808E8CC() != 0) {
            if (gUnk_3004A2D == 2) {
                m4aSongNumStart(0x2C9);
                gUnk_3004A2E++;
                gUnk_30047B9 = 12;
            } else {
                gUnk_30047B9++;
                batter = (u8 *)gUnk_30049E8;
                *(u16 *)(batter + 4) = *(u16 *)(batter + 8) << 4;
                *(u16 *)(batter + 6) = *(u16 *)(batter + 10) << 4;
                gUnk_3004A0C = 1;
            }
        }
        break;

    case 8:
        flagPtr = &gUnk_3004A0C;
        if (*flagPtr != 0 && func_808EB88() != 0) {
            *flagPtr = 0;
        }
        if (func_808EC10() != 0) {
            switch (gUnk_3004A2D) {
            case 1:
                m4aSongNumStart(0x2C6);
                gUnk_30047B9 = 11;
                break;
            case 0:
                counter = gUnk_3004A2E + 1;
                gUnk_3004A2E = counter;
                if ((u8)counter > 2) {
                    gUnk_3004A2E = 2;
                }
                gUnk_30047B9 = 12;
                m4aSongNumStart(0x2CA);
                break;
            case 5:
                m4aSongNumStart(0x235);
                gUnk_30047B9 = 9;
                break;
            }
        }
        break;

    case 9:
        flagPtr = &gUnk_3004A0C;
        if (*flagPtr != 0 && func_808EB88() != 0) {
            *flagPtr = 0;
        }
        if (func_808ECF0() != 0) {
            if (gUnk_3004A2D == 1) {
                m4aSongNumStart(0x2C6);
            }
            gUnk_30047B9++;
        }
        break;

    case 10:
        flagPtr = &gUnk_3004A0C;
        if (*flagPtr != 0 && func_808EB88() != 0) {
            *flagPtr = 0;
        }
        if (func_8089B9C(80) != 0) {
            *(vu16 *)0x04000000 = 0x1C00;
            if (gUnk_3004A2D == 1) {
                gUnk_30047B9 = 11;
            } else {
                counter = gUnk_3004A2E + 1;
                gUnk_3004A2E = counter;
                if ((u8)counter > 2) {
                    gUnk_3004A2E = 2;
                }
                m4aSongNumStart(0x2CA);
                gUnk_30047B9 = 12;
            }
        }
        break;

    case 11:
        if (func_808F8E4() != 0) {
            gUnk_3004A2E = 0;
            func_808E834();
            if ((gUnk_30047D6 % 9) != 0) {
                gUnk_30047B9 = 3;
            } else {
                func_808FAF4();
                gUnk_30047B9 = 17;
            }
        }
        break;

    case 12:
        flagPtr = &gUnk_3004A0C;
        if (*flagPtr != 0 && func_808EB88() != 0) {
            *flagPtr = 0;
        }
        if (func_8089B9C(100) != 0) {
            if (gUnk_3004A2E == 3) {
                if ((MinigameRandom() & 1) == 0) {
                    m4aSongNumStart(0x2C7);
                } else {
                    m4aSongNumStart(0x2C8);
                }
                gUnk_3004A2D = 3;
                gUnk_30047B9++;
            } else {
                func_808E834();
                gUnk_30047B9 = 3;
            }
        }
        break;

    case 13:
        if (func_8089B9C(120) == 0) {
            break;
        }
        gUnk_30047B9++;
        *(vu16 *)0x04000000 = 0x1800;
        gUnk_30047E4[12] = 2;
        next = 0x200;
        *(u16 *)(gUnk_30047E4 + 4) = next;
        break;

    case 14:
        cameraPtr = gUnk_30047E4;
        next = *(u16 *)(cameraPtr + 4) + 0xC0;
        *(u16 *)(cameraPtr + 4) = next;
        *(u16 *)(cameraPtr + 6) = (*(u16 *)(cameraPtr + 6) + 25) & 0xFFF;
        if ((u16)next > 0x2000) {
            *(u16 *)(cameraPtr + 4) = 0x2000;
            (*statePtr)++;
            m4aSongNumStart(0x236);
        }
        break;

    case 15:
        if (func_8089B9C(80) != 0) {
            gUnk_30047B9 = 0;
            return 1;
        }
        break;

    case 16:
        if (func_8089B9C(30) != 0) {
            gUnk_30047B9 = 0;
            return 1;
        }
        break;

    case 17:
        if (func_808F9E0() != 0) {
            gUnk_30047B9 = 3;
        }
        break;
    }

    return 0;
}

void func_808E4DC(void)
{
    gUnk_30049E8[4] = 60;
    gUnk_30049E8[5] = 88;
    gUnk_30049E8[0] = 0;
    gUnk_30049E8[1] = 0;
    gUnk_30049E8[8] = 0;
    gUnk_30049E8[9] = 64;
    gUnk_30049FD = 0;
    gUnk_3004A00[0] = 0;
    gUnk_3004A00[1] = 0;
    ((unsigned char *)gUnk_3004A00)[6] = 0;
    gUnk_3004A00[2] = sUnk_871DD44[0];
    gUnk_3004A08 = 215;
    gUnk_3004A0A = 121;
    gUnk_3004A0C = 0;
    gUnk_3004A10[0] = 0;
    gUnk_3004A10[1] = 0;
    ((unsigned char *)gUnk_3004A10)[4] = 0;
    ((unsigned char *)gUnk_3004A10)[5] = 0;
    gUnk_3004A18[0] = 0;
    gUnk_3004A18[1] = 0;
    gUnk_3004A18[2] = 120;
    gUnk_3004A18[3] = 80;
    func_808E898();
}


#endif

void func_808E55C(void) __attribute__((section(".text.func_808E55C")));

void func_808E55C(void)
{
    register u8 *difficulty asm("r12");
    register u8 *flagPtr asm("r8");
    register u8 *tilesD asm("r9");
    register u8 *tilesE asm("r10");
    register u8 *srcB asm("r4");
    register u8 *srcA asm("r3");
    register u8 *srcC asm("r5");
    register u8 *srcD asm("r6");
    register u32 busy asm("r2");
    register u32 zero asm("r1");
    register u32 temp asm("r0");

    DMA3->src = (u32)sUnk_8720EE4;
    DMA3->dst = 0x05000000;
    DMA3->cnt = 0x80000100;
    temp = DMA3->cnt;
    temp = DMA3->cnt;
    busy = 0x80000000;
    srcA = sUnk_8725CE4;
    srcB = sUnk_87210E4;
    srcC = sUnk_8725EE4;
    difficulty = &gDifficulty;
    srcD = sUnk_871E6E4;
    tilesD = sUnk_871EEE4;
    tilesE = sUnk_872DEE4;
    flagPtr = &gUnk_3004A2F;
    if ((s32)temp < 0) {
        do {
            temp = DMA3->cnt & busy;
        } while (temp != 0);
    }

    DMA3->src = (u32)srcA;
    DMA3->dst = 0x05000200;
    DMA3->cnt = 0x80000100;
    temp = DMA3->cnt;
    temp = DMA3->cnt;
    busy = 0x80000000;
    if ((s32)temp < 0) {
        do {
            temp = DMA3->cnt & busy;
        } while (temp != 0);
    }

    DMA3->src = (u32)srcB;
    DMA3->dst = 0x06000000;
    DMA3->cnt = 0x80002600;
    temp = DMA3->cnt;
    temp = DMA3->cnt;
    busy = 0x80000000;
    if ((s32)temp < 0) {
        do {
            temp = DMA3->cnt & busy;
        } while (temp != 0);
    }

    DMA3->src = (u32)srcC;
    DMA3->dst = 0x06010000;
    DMA3->cnt = 0x80004000;
    temp = DMA3->cnt;
    temp = DMA3->cnt;
    busy = 0x80000000;
    if ((s32)temp < 0) {
        do {
            temp = DMA3->cnt & busy;
        } while (temp != 0);
    }

    {
        register u8 *difficultyR1 asm("r1");
        difficultyR1 = difficulty;
        if (*difficultyR1 == 2) {
            DMA3->src = (u32)sUnk_872EEE4;
            DMA3->dst = 0x06010000;
            DMA3->cnt = 0x80000800;
            temp = DMA3->cnt;
            temp = DMA3->cnt;
            busy = 0x80000000;
            if ((s32)temp < 0) {
                do {
                    temp = DMA3->cnt & busy;
                } while (temp != 0);
            }
        }
    }

    DMA3->src = (u32)srcD;
    DMA3->dst = 0x0600C000;
    temp = (DMA3->cnt = 0x80000400);
    temp = DMA3->cnt;
    busy = 0x80000000;
    if ((s32)temp < 0) {
        do {
            temp = DMA3->cnt & busy;
        } while (temp != 0);
    }

    {
        register volatile struct Dma3Regs *dma asm("r1");
        register u8 *srcE asm("r2");
        dma = DMA3;
        srcE = sUnk_872E6E4;
        dma->src = (u32)srcE;
        dma->dst = 0x0600C800;
        dma->cnt = 0x80000400;
        temp = dma->cnt;
        temp = dma->cnt;
        busy = 0x80000000;
        if ((s32)temp < 0) {
            do {
                temp = dma->cnt & busy;
            } while (temp != 0);
        }
    }

    {
        register volatile struct Dma3Regs *dma asm("r1");
        register u8 *tilesD2 asm("r6");
        dma = DMA3;
        tilesD2 = tilesD;
        dma->src = (u32)tilesD2;
        dma->dst = 0x0600D000;
        dma->cnt = 0x80001000;
        temp = dma->cnt;
        temp = dma->cnt;
        busy = 0x80000000;
        if ((s32)temp < 0) {
            do {
                temp = dma->cnt & busy;
            } while (temp != 0);
        }
    }

    {
        register volatile struct Dma3Regs *dma asm("r1");
        dma = DMA3;
        asm("mov r7, %0\n\tstr r7, [r1]" : : "r"(tilesE));
        dma->dst = 0x0600F000;
        dma->cnt = 0x80000400;
        temp = dma->cnt;
    }

    *(vu16 *)0x0400000E = 0x1803;
    *(vu16 *)0x0400000A = 0x1901;
    *(vu16 *)0x04000008 = 0xDA00;
    *(vu16 *)0x0400000C = 0x1E02;

    {
        register vu16 *regPtr asm("r0");
        regPtr = (vu16 *)0x0400001A;
        zero = 0;
        *regPtr = zero;
        regPtr--;
        *regPtr = zero;
        regPtr += 3;
        *regPtr = zero;
        regPtr--;
        *regPtr = zero;
        gUnk_30049E0 = zero;
        gUnk_30049E2 = zero;
        regPtr -= 5;
        *regPtr = zero;
        regPtr--;
        *regPtr = zero;
    }

    {
        register u8 *difficultyR2 asm("r2");
        difficultyR2 = difficulty;
        if (*difficultyR2 == 2) {
            register u8 *flagR6 asm("r6");
            temp = 1;
            flagR6 = flagPtr;
            *flagR6 = temp;
        } else {
            asm("mov r7, %0\n\tstrb r1, [r7]" : : "r"(flagPtr));
        }
    }

    {
        register u8 *stateR1 asm("r1");
        temp = 4;
        stateR1 = &gUnk_3004A2D;
        *stateR1 = temp;
    }

    func_808E4DC();

    gUnk_3004A20[0] = 0;
    gUnk_3004A20[1] = 0;
    ((u8 *)gUnk_3004A20)[8] = 0;
    ((u8 *)gUnk_3004A20)[9] = 0;
    ((u8 *)gUnk_3004A20)[10] = 0;
    gUnk_3004A2C = 0;

    {
        register u8 *oamData asm("r1");
        oamData = gUnk_30047E4;
        temp = 0x200;
        *(u16 *)(oamData + 4) = temp;
        *(u16 *)(oamData + 8) = 0x68;
        *(u16 *)(oamData + 10) = 0x40;
        *(u16 *)(oamData + 6) = 0;
        oamData[12] = 1;
    }

    gUnk_30047B9 = 0;
    gUnk_30047BA = 0;
    gUnk_30047BB = 0;
    gUnk_30047BC = 0;
    gUnk_30047D6 = 0;
    gUnk_30047D4 = 0;
    func_808ED88();
    gUnk_3004A2E = 0;
    func_807A428();
    *(vu16 *)0x04000054 = 0;
    *(vu16 *)0x04000050 = 0x1C42;
    *(vu16 *)0x04000052 = 0x060A;

    {
        register vu16 *regPtr asm("r1");
        register u32 dispCnt asm("r7");
        register u32 dispCntR0 asm("r0");

        asm(".4byte 0x27803952" : "=r"(regPtr), "=r"(dispCnt));
        dispCnt <<= 4;
        dispCntR0 = dispCnt;
        *regPtr = dispCntR0;
    }
}

#ifndef HOMERUN_DERBY_E55C_ONLY

#if 0
/* ASM fallback: func_808E55C */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808E55C\n"
    "	.thumb_func\n"
    "func_808E55C:\n"
    "	push	{r4, r5, r6, r7, lr}\n"
    "	mov	r7, sl\n"
    "	mov	r6, r9\n"
    "	mov	r5, r8\n"
    "	push	{r5, r6, r7}\n"
    "	ldr	r1, .L_8e6f8\n"
    "	ldr	r0, .L_8e6fc\n"
    "	str	r0, [r1, #0]\n"
    "	mov	r0, #160	@ 0xa0\n"
    "	lsl	r0, r0, #19\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e700\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	ldr	r3, .L_8e704\n"
    "	ldr	r4, .L_8e708\n"
    "	ldr	r5, .L_8e70c\n"
    "	ldr	r6, .L_8e710\n"
    "	mov	ip, r6\n"
    "	ldr	r6, .L_8e714\n"
    "	ldr	r7, .L_8e718\n"
    "	mov	r9, r7\n"
    "	ldr	r7, .L_8e71c\n"
    "	mov	sl, r7\n"
    "	ldr	r7, .L_8e720\n"
    "	mov	r8, r7\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e5a2\n"
    ".L_8e59a:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e59a\n"
    ".L_8e5a2:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	str	r3, [r1, #0]\n"
    "	ldr	r0, .L_8e724\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e700\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e5c2\n"
    ".L_8e5ba:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e5ba\n"
    ".L_8e5c2:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	str	r4, [r1, #0]\n"
    "	mov	r0, #192	@ 0xc0\n"
    "	lsl	r0, r0, #19\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e728\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e5e4\n"
    ".L_8e5dc:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e5dc\n"
    ".L_8e5e4:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	str	r5, [r1, #0]\n"
    "	ldr	r0, .L_8e72c\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e730\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e604\n"
    ".L_8e5fc:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e5fc\n"
    ".L_8e604:\n"
    "	mov	r1, ip\n"
    "	ldrb	r0, [r1, #0]\n"
    "	cmp	r0, #2\n"
    "	bne	.L_8e62e\n"
    "	ldr	r1, .L_8e6f8\n"
    "	ldr	r0, .L_8e734\n"
    "	str	r0, [r1, #0]\n"
    "	ldr	r0, .L_8e72c\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e738\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e62e\n"
    ".L_8e626:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e626\n"
    ".L_8e62e:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	str	r6, [r1, #0]\n"
    "	ldr	r0, .L_8e73c\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e740\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e64e\n"
    ".L_8e646:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e646\n"
    ".L_8e64e:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	ldr	r2, .L_8e744\n"
    "	str	r2, [r1, #0]\n"
    "	ldr	r0, .L_8e748\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e740\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e670\n"
    ".L_8e668:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e668\n"
    ".L_8e670:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	mov	r6, r9\n"
    "	str	r6, [r1, #0]\n"
    "	ldr	r0, .L_8e74c\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e750\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	mov	r2, #128	@ 0x80\n"
    "	lsl	r2, r2, #24\n"
    "	cmp	r0, #0\n"
    "	bge	.L_8e692\n"
    ".L_8e68a:\n"
    "	ldr	r0, [r1, #8]\n"
    "	and	r0, r2\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8e68a\n"
    ".L_8e692:\n"
    "	ldr	r1, .L_8e6f8\n"
    "	mov	r7, sl\n"
    "	str	r7, [r1, #0]\n"
    "	ldr	r0, .L_8e754\n"
    "	str	r0, [r1, #4]\n"
    "	ldr	r0, .L_8e740\n"
    "	str	r0, [r1, #8]\n"
    "	ldr	r0, [r1, #8]\n"
    "	sub	r1, #198	@ 0xc6\n"
    "	ldr	r2, .L_8e758\n"
    "	add	r0, r2, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	sub	r1, #4\n"
    "	ldr	r6, .L_8e75c\n"
    "	add	r0, r6, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	sub	r1, #2\n"
    "	mov	r7, #218	@ 0xda\n"
    "	lsl	r7, r7, #8\n"
    "	add	r0, r7, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	add	r1, #4\n"
    "	ldr	r2, .L_8e760\n"
    "	add	r0, r2, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	ldr	r0, .L_8e764\n"
    "	mov	r1, #0\n"
    "	strh	r1, [r0, #0]\n"
    "	sub	r0, #2\n"
    "	strh	r1, [r0, #0]\n"
    "	add	r0, #6\n"
    "	strh	r1, [r0, #0]\n"
    "	sub	r0, #2\n"
    "	strh	r1, [r0, #0]\n"
    "	ldr	r6, .L_8e768\n"
    "	strh	r1, [r6, #0]\n"
    "	ldr	r7, .L_8e76c\n"
    "	strh	r1, [r7, #0]\n"
    "	sub	r0, #10\n"
    "	strh	r1, [r0, #0]\n"
    "	sub	r0, #2\n"
    "	strh	r1, [r0, #0]\n"
    "	mov	r2, ip\n"
    "	ldrb	r0, [r2, #0]\n"
    "	cmp	r0, #2\n"
    "	bne	.L_8e770\n"
    "	mov	r0, #1\n"
    "	mov	r6, r8\n"
    "	strb	r0, [r6, #0]\n"
    "	b	.L_8e774\n"
    "	.align	2, 0\n"
    ".L_8e6f8:\n"
    "	.4byte	0x040000d4\n"
    ".L_8e6fc:\n"
    "	.4byte	sUnk_8720EE4\n"
    ".L_8e700:\n"
    "	.4byte	0x80000100\n"
    ".L_8e704:\n"
    "	.4byte	sUnk_8725CE4\n"
    ".L_8e708:\n"
    "	.4byte	sUnk_87210E4\n"
    ".L_8e70c:\n"
    "	.4byte	sUnk_8725EE4\n"
    ".L_8e710:\n"
    "	.4byte	gDifficulty\n"
    ".L_8e714:\n"
    "	.4byte	sUnk_871E6E4\n"
    ".L_8e718:\n"
    "	.4byte	sUnk_871EEE4\n"
    ".L_8e71c:\n"
    "	.4byte	sUnk_872DEE4\n"
    ".L_8e720:\n"
    "	.4byte	gUnk_3004A2F\n"
    ".L_8e724:\n"
    "	.4byte	0x05000200\n"
    ".L_8e728:\n"
    "	.4byte	0x80002600\n"
    ".L_8e72c:\n"
    "	.4byte	0x06010000\n"
    ".L_8e730:\n"
    "	.4byte	0x80004000\n"
    ".L_8e734:\n"
    "	.4byte	sUnk_872EEE4\n"
    ".L_8e738:\n"
    "	.4byte	0x80000800\n"
    ".L_8e73c:\n"
    "	.4byte	0x0600c000\n"
    ".L_8e740:\n"
    "	.4byte	0x80000400\n"
    ".L_8e744:\n"
    "	.4byte	sUnk_872E6E4\n"
    ".L_8e748:\n"
    "	.4byte	0x0600c800\n"
    ".L_8e74c:\n"
    "	.4byte	0x0600d000\n"
    ".L_8e750:\n"
    "	asr	r0, r0, #32\n"
    "	strh	r0, [r0, #0]\n"
    ".L_8e754:\n"
    "	.4byte	0x0600f000\n"
    ".L_8e758:\n"
    "	.4byte	0x00001803\n"
    ".L_8e75c:\n"
    "	.4byte	0x00001901\n"
    ".L_8e760:\n"
    "	.4byte	0x00001e02\n"
    ".L_8e764:\n"
    "	.4byte	0x0400001a\n"
    ".L_8e768:\n"
    "	.4byte	gUnk_30049E0\n"
    ".L_8e76c:\n"
    "	.4byte	gUnk_30049E2\n"
    ".L_8e770:\n"
    "	mov	r7, r8\n"
    "	strb	r1, [r7, #0]\n"
    ".L_8e774:\n"
    "	mov	r0, #4\n"
    "	ldr	r1, .L_8e7f8\n"
    "	strb	r0, [r1, #0]\n"
    "	bl	func_808E4DC\n"
    "	ldr	r0, .L_8e7fc\n"
    "	mov	r4, #0\n"
    "	mov	r5, #0\n"
    "	strh	r5, [r0, #0]\n"
    "	strh	r5, [r0, #2]\n"
    "	strb	r4, [r0, #8]\n"
    "	strb	r4, [r0, #9]\n"
    "	strb	r4, [r0, #10]\n"
    "	ldr	r0, .L_8e800\n"
    "	strb	r4, [r0, #0]\n"
    "	ldr	r1, .L_8e804\n"
    "	mov	r0, #128	@ 0x80\n"
    "	lsl	r0, r0, #2\n"
    "	strh	r0, [r1, #4]\n"
    "	mov	r0, #104	@ 0x68\n"
    "	strh	r0, [r1, #8]\n"
    "	mov	r0, #64	@ 0x40\n"
    "	strh	r0, [r1, #10]\n"
    "	strh	r5, [r1, #6]\n"
    "	mov	r0, #1\n"
    "	strb	r0, [r1, #12]\n"
    "	ldr	r0, .L_8e808\n"
    "	strb	r4, [r0, #0]\n"
    "	ldr	r0, .L_8e80c\n"
    "	strb	r4, [r0, #0]\n"
    "	ldr	r0, .L_8e810\n"
    "	strb	r4, [r0, #0]\n"
    "	ldr	r0, .L_8e814\n"
    "	strh	r5, [r0, #0]\n"
    "	ldr	r0, .L_8e818\n"
    "	strh	r5, [r0, #0]\n"
    "	ldr	r0, .L_8e81c\n"
    "	strb	r4, [r0, #0]\n"
    "	bl	func_808ED88\n"
    "	ldr	r0, .L_8e820\n"
    "	strb	r4, [r0, #0]\n"
    "	bl	func_807A428\n"
    "	ldr	r0, .L_8e824\n"
    "	strh	r5, [r0, #0]\n"
    "	ldr	r1, .L_8e828\n"
    "	ldr	r2, .L_8e82c\n"
    "	add	r0, r2, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	add	r1, #2\n"
    "	ldr	r6, .L_8e830\n"
    "	add	r0, r6, #0\n"
    "	strh	r0, [r1, #0]\n"
    ".L_8e7e0:\n"
    "	.4byte	0x27803952\n"
    "	lsl	r7, r7, #4\n"
    "	add	r0, r7, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	pop	{r3, r4, r5}\n"
    "	mov	r8, r3\n"
    "	mov	r9, r4\n"
    "	mov	sl, r5\n"
    "	pop	{r4, r5, r6, r7}\n"
    "	pop	{r0}\n"
    "	bx	r0\n"
    ".L_8e7f8:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8e7fc:\n"
    "	.4byte	gUnk_3004A20\n"
    ".L_8e800:\n"
    "	.4byte	gUnk_3004A2C\n"
    ".L_8e804:\n"
    "	.4byte	gUnk_30047E4\n"
    ".L_8e808:\n"
    "	.4byte	gUnk_30047B9\n"
    ".L_8e80c:\n"
    "	.4byte	gUnk_30047BA\n"
    ".L_8e810:\n"
    "	.4byte	gUnk_30047BB\n"
    ".L_8e814:\n"
    "	.4byte	gUnk_30047BC\n"
    ".L_8e818:\n"
    "	.4byte	gUnk_30047D6\n"
    ".L_8e81c:\n"
    "	.4byte	gUnk_30047D4\n"
    ".L_8e820:\n"
    "	.4byte	gUnk_3004A2E\n"
    ".L_8e824:\n"
    "	.4byte	0x04000054\n"
    ".L_8e828:\n"
    "	.4byte	0x04000050\n"
    ".L_8e82c:\n"
    "	.4byte	0x00001c42\n"
    ".L_8e830:\n"
    "	.4byte	0x0000060a\n"
	    "\n"
	    "\n"
	);
#endif


void func_808E834(void)
{
    u32 value;

    *(vu16 *)0x04000200 ^= 1;
    *(vu16 *)0x04000000 = 0x1C00;

    value = gUnk_30047D6 % 5;
    if ((value << 16) == 0 && gUnk_3004A2D == 1) {
        gUnk_3004A2F++;
    }
    if (gUnk_3004A2F > 9) {
        gUnk_3004A2F = 9;
    }

    func_808E4DC();
    *(vu16 *)0x04000200 |= 1;
}


void func_808E898(void)
{
    unsigned char *dst;
    unsigned char *table;
    s32 randomValue;
    unsigned char row;
    s32 offset;

    dst = &gUnk_30049FC;
    table = sUnk_871D53C;
    randomValue = MinigameRandom();
    offset = randomValue % 20;
    row = gUnk_3004A2F;
    offset += row * 20;
    *dst = table[offset];
}


s32 func_808E8CC(void)
{
    register u16 *state asm("r5");
    u16 *stateAgain;
    register const u16 *xTable asm("r3");
    register const u16 *yTable asm("r3");
    register u8 *cursor asm("r4");
    register u8 *index asm("r2");
    s32 offset;
    s32 x;
    s32 y;

    state = gUnk_30049E8;
    xTable = sUnk_871D652;
    cursor = &gUnk_30049FD;
    index = &gUnk_30049FC;
    offset = (*index * 63) + *cursor;
    x = xTable[offset] + 60;
    state[4] = x;

    yTable = sUnk_871D9C4;
    offset = (*index * 63) + *cursor;
    y = yTable[offset] + 88;
    state[5] = y;

    if ((s32)(x << 16) >> 16 > 140) {
        if (func_808E9B4() != 0) {
            return 1;
        }
    }

    gUnk_30049FD++;
    if ((u8)gUnk_30049FD == sUnk_871D64A[gUnk_30049FC]) {
        stateAgain = gUnk_30049E8;
        stateAgain[2] = stateAgain[4] << 4;
        stateAgain[3] = stateAgain[5] << 4;
        gUnk_3004A2D = 2;
        return 1;
    }

    return 0;
}



void func_808E96C(void)
{
    if (gButtonsPressed & 1) {
        if (gUnk_3004A0C == 0) {
            gUnk_3004A0C = 1;
            m4aSongNumStart(0x232);
        }
    }

    if (gUnk_3004A0C != 0) {
        if (func_808EB88() != 0) {
            gUnk_3004A0C = 0;
        }
    }
}


/* ASM fallback: func_808E9B4 */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808E9B4\n"
    "	.thumb_func\n"
    "func_808E9B4:\n"
    "	push	{r4, r5, r6, r7, lr}\n"
    "	mov	r7, sl\n"
    "	mov	r6, r9\n"
    "	mov	r5, r8\n"
    "	push	{r5, r6, r7}\n"
    "	sub	sp, #4\n"
    "	ldr	r4, .L_8eb38\n"
    "	ldr	r0, .L_8eb3c\n"
    "	ldrb	r2, [r0, #0]\n"
    "	add	r0, r2, #1\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8eb40\n"
    "	mov	r8, r1\n"
    "	ldrb	r1, [r1, #0]\n"
    "	lsl	r3, r1, #6\n"
    "	sub	r3, r3, r1\n"
    "	lsl	r3, r3, #1\n"
    "	add	r0, r0, r3\n"
    "	add	r1, r0, r4\n"
    "	mov	r5, #0\n"
    "	ldrsh	r1, [r1, r5]\n"
    "	add	r1, #60	@ 0x3c\n"
    "	mov	sl, r1\n"
    "	ldr	r1, .L_8eb44\n"
    "	add	r0, r0, r1\n"
    "	mov	r7, #0\n"
    "	ldrsh	r0, [r0, r7]\n"
    "	add	r0, #88	@ 0x58\n"
    "	mov	r9, r0\n"
    "	sub	r2, #1\n"
    "	lsl	r2, r2, #1\n"
    "	add	r2, r2, r3\n"
    "	add	r4, r2, r4\n"
    "	mov	r3, #0\n"
    "	ldrsh	r0, [r4, r3]\n"
    "	add	r0, #60	@ 0x3c\n"
    "	str	r0, [sp, #0]\n"
    "	add	r2, r2, r1\n"
    "	mov	r4, #0\n"
    "	ldrsh	r0, [r2, r4]\n"
    "	add	r6, r0, #0\n"
    "	add	r6, #88	@ 0x58\n"
    "	ldr	r0, .L_8eb48\n"
    "	mov	r5, #0\n"
    "	ldrsh	r1, [r0, r5]\n"
    "	add	r5, r1, #0\n"
    "	sub	r5, #215	@ 0xd7\n"
    "	ldr	r3, .L_8eb4c\n"
    "	mov	r7, #0\n"
    "	ldrsh	r2, [r3, r7]\n"
    "	add	r4, r2, #0\n"
    "	sub	r4, #96	@ 0x60\n"
    "	mov	r0, #215	@ 0xd7\n"
    "	mul	r2, r0\n"
    "	lsl	r0, r1, #1\n"
    "	add	r0, r0, r1\n"
    "	lsl	r0, r0, #5\n"
    "	sub	r2, r2, r0\n"
    "	ldr	r0, .L_8eb50\n"
    "	mov	ip, r0\n"
    "	mov	r1, #0\n"
    "	ldrsh	r0, [r3, r1]\n"
    "	mov	r3, ip\n"
    "	mov	r7, #10\n"
    "	ldrsh	r1, [r3, r7]\n"
    "	cmp	r0, r1\n"
    "	ble	.L_8ea3c\n"
    "	b	.L_8eb74\n"
    ".L_8ea3c:\n"
    "	cmp	r1, #96	@ 0x60\n"
    "	ble	.L_8ea42\n"
    "	b	.L_8eb74\n"
    ".L_8ea42:\n"
    "	ldr	r0, [sp, #0]\n"
    "	add	r1, r4, #0\n"
    "	mul	r1, r0\n"
    "	add	r0, r5, #0\n"
    "	mul	r0, r6\n"
    "	add	r0, r0, r2\n"
    "	cmp	r1, r0\n"
    "	bge	.L_8ea54\n"
    "	b	.L_8eb74\n"
    ".L_8ea54:\n"
    "	mov	r1, sl\n"
    "	mul	r1, r4\n"
    "	mov	r0, r9\n"
    "	mul	r0, r5\n"
    "	add	r0, r0, r2\n"
    "	cmp	r1, r0\n"
    "	ble	.L_8ea64\n"
    "	b	.L_8eb74\n"
    ".L_8ea64:\n"
    "	ldr	r6, .L_8eb54\n"
    "	ldrb	r3, [r6, #6]\n"
    "	strb	r3, [r6, #7]\n"
    "	ldr	r7, .L_8eb58\n"
    "	ldrh	r1, [r6, #4]\n"
    "	lsl	r0, r1, #1\n"
    "	mov	r5, #255	@ 0xff\n"
    "	and	r0, r5\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	add	r0, r0, r7\n"
    "	mov	r4, #0\n"
    "	ldrsh	r2, [r0, r4]\n"
    "	mov	r9, r2\n"
    "	ldr	r4, .L_8eb5c\n"
    "	mov	r2, r8\n"
    "	ldrb	r0, [r2, #0]\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #0]\n"
    "	lsl	r0, r0, #24\n"
    "	asr	r0, r0, #24\n"
    "	mov	r2, r9\n"
    "	mul	r2, r0\n"
    "	add	r0, r2, #0\n"
    "	sub	r1, #64	@ 0x40\n"
    "	lsl	r1, r1, #1\n"
    "	add	r1, r1, r7\n"
    "	mov	r2, #0\n"
    "	ldrsh	r1, [r1, r2]\n"
    "	mul	r0, r1\n"
    "	mul	r0, r1\n"
    "	asr	r0, r0, #24\n"
    "	neg	r0, r0\n"
    "	mov	r1, ip\n"
    "	strb	r0, [r1, #12]\n"
    "	ldrh	r1, [r6, #4]\n"
    "	lsl	r0, r1, #1\n"
    "	and	r0, r5\n"
    "	lsl	r0, r0, #1\n"
    "	add	r0, r0, r7\n"
    "	mov	r5, #0\n"
    "	ldrsh	r2, [r0, r5]\n"
    "	mov	r5, r8\n"
    "	ldrb	r0, [r5, #0]\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #0]\n"
    "	lsl	r0, r0, #24\n"
    "	asr	r0, r0, #24\n"
    "	mul	r2, r0\n"
    "	sub	r1, #64	@ 0x40\n"
    "	lsl	r1, r1, #1\n"
    "	add	r1, r1, r7\n"
    "	mov	r4, #0\n"
    "	ldrsh	r0, [r1, r4]\n"
    ".L_8ead0:\n"
    "	mul	r0, r2\n"
    "	asr	r0, r0, #16\n"
    "	neg	r0, r0\n"
    "	mov	r5, ip\n"
    "	strb	r0, [r5, #13]\n"
    "	ldr	r4, .L_8eb60\n"
    "	mov	r1, r8\n"
    "	ldrb	r0, [r1, #0]\n"
    "	add	r0, r0, r4\n"
    "	mov	r1, #0\n"
    "	ldrsb	r1, [r0, r1]\n"
    "	ldrh	r0, [r6, #4]\n"
    "	sub	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	add	r0, r0, r7\n"
    "	mov	r2, #0\n"
    "	ldrsh	r0, [r0, r2]\n"
    "	mul	r0, r1\n"
    "	asr	r2, r0, #8\n"
    "	strb	r2, [r5, #14]\n"
    "	lsl	r3, r3, #24\n"
    "	lsr	r3, r3, #24\n"
    "	mov	r5, r8\n"
    "	ldrb	r0, [r5, #0]\n"
    "	cmp	r3, #12\n"
    "	bne	.L_8eb20\n"
    "	add	r0, r0, r4\n"
    "	mov	r1, #0\n"
    "	ldrsb	r1, [r0, r1]\n"
    "	ldrh	r0, [r6, #4]\n"
    "	sub	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	add	r0, r0, r7\n"
    "	mov	r7, #0\n"
    "	ldrsh	r0, [r0, r7]\n"
    "	mul	r0, r1\n"
    "	asr	r0, r0, #8\n"
    "	add	r0, r2, r0\n"
    "	mov	r1, ip\n"
    "	strb	r0, [r1, #14]\n"
    ".L_8eb20:\n"
    "	ldrb	r0, [r6, #7]\n"
    "	sub	r0, #10\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #2\n"
    "	bhi	.L_8eb64\n"
    "	mov	r0, #141	@ 0x8d\n"
    "	lsl	r0, r0, #2\n"
    "	bl	m4aSongNumStart\n"
    "	b	.L_8eb6a\n"
    "	.align	2, 0\n"
    ".L_8eb38:\n"
    "	.4byte	sUnk_871D652\n"
    ".L_8eb3c:\n"
    "	.4byte	gUnk_30049FD\n"
    ".L_8eb40:\n"
    "	.4byte	gUnk_30049FC\n"
    ".L_8eb44:\n"
    "	.4byte	sUnk_871D9C4\n"
    ".L_8eb48:\n"
    "	.4byte	gUnk_3004A08\n"
    ".L_8eb4c:\n"
    "	.4byte	gUnk_3004A0A\n"
    ".L_8eb50:\n"
    "	.4byte	gUnk_30049E8\n"
    ".L_8eb54:\n"
    "	.4byte	gUnk_3004A00\n"
    ".L_8eb58:\n"
    "	.4byte	sSinCosTable\n"
    ".L_8eb5c:\n"
    "	.4byte	sUnk_871DD36\n"
    ".L_8eb60:\n"
    "	.4byte	sUnk_871DD3D\n"
    ".L_8eb64:\n"
    "	ldr	r0, .L_8eb70\n"
    "	bl	m4aSongNumStart\n"
    ".L_8eb6a:\n"
    "	mov	r0, #1\n"
    ".L_8eb6c:\n"
    "	.4byte	0x0000e003\n"
    ".L_8eb70:\n"
    "	.4byte	0x00000233\n"
    ".L_8eb74:\n"
    "	mov	r0, #0\n"
    ".L_8eb76:\n"
    "	add	sp, #4\n"
    ".L_8eb78:\n"
    "	.4byte	0x4698bc38\n"
    "	mov	r9, r4\n"
    "	mov	sl, r5\n"
    "	pop	{r4, r5, r6, r7}\n"
    "	pop	{r1}\n"
    "	bx	r1\n"
    "	.align	2, 0\n"
    "\n"
    "\n"
);


s32 func_808EB88(void)
{
    register u8 *state asm("r4");
    u16 *xOut;
    register u16 *yOut asm("r5");
    register const u8 *frames asm("ip");
    register s32 baseX asm("r6");
    register s32 counter asm("r2");
    register const s16 *table asm("r3");
    s32 angle;
    s32 value;
    s32 scaled;
    s32 result;

    state = (u8 *)gUnk_3004A00;
    counter = state[6] + 1;
    state[6] = counter;

    frames = sUnk_871DD44;
    angle = frames[state[6]];
    ((u16 *)state)[2] = angle;

    xOut = &gUnk_3004A08;
    table = sSinCosTable;
    value = table[((u16 *)state)[2]];
    scaled = (value * 25) >> 8;
    baseX = 215;
    *xOut = baseX - scaled;

    yOut = &gUnk_3004A0A;
    angle = ((u16 *)state)[2];
    angle += 64;
    value = table[angle];
    scaled = (value * 25) >> 8;
    *yOut = scaled + 96;

    if ((u8)counter > 21) {
        goto reset;
    }
    result = 0;
    goto done;

reset:
    {
        register const u8 *resetFrames asm("r1");

        state[6] = 0;
        resetFrames = frames;
        ((u16 *)state)[2] = resetFrames[0];
        *xOut = baseX;
        *yOut = 121;
        result = 1;
    }

done:
    return result;
}


/* ASM fallback: func_808EC10 */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808EC10\n"
    "	.thumb_func\n"
    "func_808EC10:\n"
    "	push	{r4, r5, lr}\n"
    "	ldr	r1, .L_8eca8\n"
    "	ldrh	r4, [r1, #4]\n"
    "	lsl	r3, r4, #16\n"
    "	cmp	r3, #0\n"
    "	ble	.L_8ecbc\n"
    "	ldrh	r2, [r1, #6]\n"
    "	lsl	r0, r2, #16\n"
    "	cmp	r0, #0\n"
    "	ble	.L_8ecbc\n"
    "	asr	r0, r0, #20\n"
    "	cmp	r0, #159	@ 0x9f\n"
    "	bgt	.L_8ecbc\n"
    "	asr	r0, r3, #20\n"
    "	cmp	r0, #239	@ 0xef\n"
    "	bgt	.L_8ecbc\n"
    "	mov	r0, #12\n"
    "	ldrsb	r0, [r1, r0]\n"
    "	add	r3, r4, r0\n"
    "	strh	r3, [r1, #4]\n"
    "	mov	r0, #13\n"
    "	ldrsb	r0, [r1, r0]\n"
    "	add	r4, r2, r0\n"
    "	strh	r4, [r1, #6]\n"
    "	ldrh	r0, [r1, #16]\n"
    "	add	r0, #5\n"
    "	mov	r5, #255	@ 0xff\n"
    "	and	r0, r5\n"
    "	strh	r0, [r1, #16]\n"
    "	mov	r0, #14\n"
    "	ldrsb	r0, [r1, r0]\n"
    "	ldrh	r2, [r1, #18]\n"
    "	add	r0, r0, r2\n"
    "	strh	r0, [r1, #18]\n"
    "	lsl	r0, r0, #16\n"
    "	mov	r1, #128	@ 0x80\n"
    "	lsl	r1, r1, #18\n"
    "	cmp	r0, r1\n"
    "	bls	.L_8ece8\n"
    "	ldr	r0, .L_8ecac\n"
    "	lsl	r2, r3, #16\n"
    "	asr	r2, r2, #20\n"
    "	mov	r3, #128	@ 0x80\n"
    "	lsl	r3, r3, #1\n"
    "	add	r1, r3, #0\n"
    "	sub	r2, r1, r2\n"
    "	strh	r2, [r0, #0]\n"
    "	ldr	r3, .L_8ecb0\n"
    "	lsl	r0, r4, #16\n"
    "	asr	r0, r0, #20\n"
    "	sub	r1, r1, r0\n"
    "	strh	r1, [r3, #0]\n"
    "	ldr	r0, .L_8ecb4\n"
    "	strh	r1, [r0, #0]\n"
    "	sub	r0, #2\n"
    "	strh	r2, [r0, #0]\n"
    "	add	r0, #6\n"
    "	mov	r4, #192	@ 0xc0\n"
    "	lsl	r4, r4, #1\n"
    "	add	r3, r4, #0\n"
    "	add	r1, r1, r3\n"
    "	and	r1, r5\n"
    "	strh	r1, [r0, #0]\n"
    "	sub	r0, #2\n"
    "	add	r2, r2, r3\n"
    "	and	r2, r5\n"
    "	strh	r2, [r0, #0]\n"
    "	mov	r1, #128	@ 0x80\n"
    "	lsl	r1, r1, #19\n"
    "	mov	r2, #248	@ 0xf8\n"
    "	lsl	r2, r2, #5\n"
    "	add	r0, r2, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	ldr	r1, .L_8ecb8\n"
    "	mov	r0, #5\n"
    "	b	.L_8ecdc\n"
    ".L_8eca8:\n"
    "	.4byte	gUnk_30049E8\n"
    ".L_8ecac:\n"
    "	.4byte	gUnk_30049E0\n"
    ".L_8ecb0:\n"
    "	.4byte	gUnk_30049E2\n"
    ".L_8ecb4:\n"
    "	.4byte	0x04000012\n"
    ".L_8ecb8:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8ecbc:\n"
    "	ldr	r0, .L_8ecd0\n"
    "	ldrb	r0, [r0, #7]\n"
    "	sub	r0, #10\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #2\n"
    "	bhi	.L_8ecd8\n"
    "	ldr	r1, .L_8ecd4\n"
    "	mov	r0, #1\n"
    "	b	.L_8ecdc\n"
    ".L_8ecd0:\n"
    "	.4byte	gUnk_3004A00\n"
    ".L_8ecd4:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8ecd8:\n"
    "	ldr	r1, .L_8ece4\n"
    "	mov	r0, #0\n"
    ".L_8ecdc:\n"
    "	strb	r0, [r1, #0]\n"
    "	mov	r0, #1\n"
    "	b	.L_8ecea\n"
    "	.align	2, 0\n"
    ".L_8ece4:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8ece8:\n"
    "	mov	r0, #0\n"
    ".L_8ecea:\n"
    "	pop	{r4, r5}\n"
    "	pop	{r1}\n"
    "	bx	r1\n"
    "\n"
    "\n"
);


/* ASM fallback: func_808ECF0 */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808ECF0\n"
    "	.thumb_func\n"
    "func_808ECF0:\n"
    "	push	{r4, r5, lr}\n"
    "	ldr	r2, .L_8ed4c\n"
    "	ldrh	r5, [r2, #4]\n"
    "	lsl	r0, r5, #16\n"
    "	asr	r1, r0, #20\n"
    "	mov	r3, #20\n"
    "	neg	r3, r3\n"
    "	cmp	r1, r3\n"
    "	ble	.L_8ed54\n"
    "	ldrh	r4, [r2, #6]\n"
    "	lsl	r0, r4, #16\n"
    "	asr	r0, r0, #20\n"
    "	cmp	r0, r3\n"
    "	ble	.L_8ed54\n"
    "	cmp	r0, #179	@ 0xb3\n"
    "	bgt	.L_8ed54\n"
    "	ldr	r0, .L_8ed50\n"
    "	cmp	r1, r0\n"
    "	bgt	.L_8ed54\n"
    "	mov	r0, #12\n"
    "	ldrsb	r0, [r2, r0]\n"
    "	add	r0, r5, r0\n"
    "	strh	r0, [r2, #4]\n"
    "	mov	r0, #13\n"
    "	ldrsb	r0, [r2, r0]\n"
    "	add	r0, r4, r0\n"
    "	strh	r0, [r2, #6]\n"
    "	ldrh	r0, [r2, #16]\n"
    "	add	r0, #5\n"
    "	mov	r1, #255	@ 0xff\n"
    "	and	r0, r1\n"
    "	strh	r0, [r2, #16]\n"
    "	mov	r0, #14\n"
    "	ldrsb	r0, [r2, r0]\n"
    "	ldrh	r1, [r2, #18]\n"
    "	add	r0, r0, r1\n"
    "	strh	r0, [r2, #18]\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	mov	r1, #128	@ 0x80\n"
    "	lsl	r1, r1, #3\n"
    "	cmp	r0, r1\n"
    "	bls	.L_8ed80\n"
    "	strh	r1, [r2, #18]\n"
    "	b	.L_8ed80\n"
    "	.align	2, 0\n"
    ".L_8ed4c:\n"
    "	.4byte	gUnk_30049E8\n"
    ".L_8ed50:\n"
    "	.4byte	0x00000103\n"
    ".L_8ed54:\n"
    "	ldr	r0, .L_8ed68\n"
    "	ldrb	r0, [r0, #7]\n"
    "	sub	r0, #10\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #2\n"
    "	bhi	.L_8ed70\n"
    "	ldr	r1, .L_8ed6c\n"
    "	mov	r0, #1\n"
    "	b	.L_8ed74\n"
    ".L_8ed68:\n"
    "	.4byte	gUnk_3004A00\n"
    ".L_8ed6c:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8ed70:\n"
    "	ldr	r1, .L_8ed7c\n"
    "	mov	r0, #0\n"
    ".L_8ed74:\n"
    "	strb	r0, [r1, #0]\n"
    "	mov	r0, #1\n"
    "	b	.L_8ed82\n"
    "	.align	2, 0\n"
    ".L_8ed7c:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8ed80:\n"
    "	mov	r0, #0\n"
    ".L_8ed82:\n"
    "	pop	{r4, r5}\n"
    "	pop	{r1}\n"
    "	bx	r1\n"
    "\n"
    "\n"
);

void func_808ED88(void)
{
    const u16 *scoreTiles;
    u32 score;

    if (gUnk_30047E0 != 0) {
        func_807AB8C(gMedalCount, sUnk_8724AA4, 0x3800);
    } else {
        func_807AB8C(gMedalCount, sUnk_8724964, 0x3800);
    }

    score = gUnk_30047D6;
    scoreTiles = sUnk_8725164;
    func_807AB8C(score, scoreTiles, 0x4000);
    func_8089C98(gMinigameHighScores, scoreTiles + 0x400, 0x4800);
}

/* ASM fallback: func_808EDFC */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808EDFC\n"
    "	.thumb_func\n"
    "func_808EDFC:\n"
    "	push	{r4, r5, r6, r7, lr}\n"
    "	mov	r7, sl\n"
    "	mov	r6, r9\n"
    "	mov	r5, r8\n"
    "	push	{r5, r6, r7}\n"
    "	sub	sp, #20\n"
    "	mov	r7, #0\n"
    "	ldr	r0, .L_8f11c\n"
    "	ldrb	r0, [r0, #0]\n"
    "	mov	r8, r0\n"
    "	lsl	r0, r0, #3\n"
    "	ldr	r2, .L_8f120\n"
    "	add	r6, r0, r2\n"
    "	ldr	r0, .L_8f124\n"
    "	ldrb	r1, [r0, #12]\n"
    "	mov	r9, r0\n"
    "	cmp	r1, #0\n"
    "	bne	.L_8ee22\n"
    "	b	.L_8ef78\n"
    ".L_8ee22:\n"
    "	cmp	r1, #1\n"
    ".L_8ee24:\n"
    "	bne	.L_8ee2a\n"
    "	ldr	r0, .L_8f128\n"
    "	ldr	r3, [r0, #0]\n"
    ".L_8ee2a:\n"
    "	cmp	r1, #2\n"
    "	bne	.L_8ee32\n"
    "	ldr	r0, .L_8f12c\n"
    "	ldr	r3, [r0, #0]\n"
    ".L_8ee32:\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	mov	r0, sp\n"
    "	add	r0, #2\n"
    "	str	r0, [sp, #8]\n"
    "	mov	r1, sp\n"
    "	add	r1, #4\n"
    "	str	r1, [sp, #12]\n"
    "	add	r0, #4\n"
    "	str	r0, [sp, #16]\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8eeb6\n"
    "	mov	r5, r9\n"
    "	add	r4, r2, #0\n"
    "	ldr	r1, .L_8f130\n"
    "	mov	sl, r1\n"
    "	mov	r2, #13\n"
    "	neg	r2, r2\n"
    "	mov	ip, r2\n"
    "	mov	r7, r8\n"
    ".L_8ee5c:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	ldrb	r0, [r5, #10]\n"
    "	add	r0, r0, r2\n"
    "	sub	r0, #16\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrb	r0, [r4, #1]\n"
    "	mov	r1, #3\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #1]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	mov	r0, #8\n"
    "	ldrsh	r1, [r5, r0]\n"
    "	add	r1, r2, r1\n"
    "	sub	r1, #32\n"
    "	mov	r2, sl\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	ldr	r0, .L_8f134\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrb	r1, [r4, #3]\n"
    "	mov	r0, #15\n"
    "	neg	r0, r0\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #3]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r1, [r4, #5]\n"
    "	mov	r0, ip\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8ee5c\n"
    "	mov	r7, r8\n"
    ".L_8eeb6:\n"
    "	mov	r3, r9\n"
    "	ldrh	r0, [r3, #6]\n"
    "	lsr	r0, r0, #4\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f138\n"
    "	add	r0, r0, r1\n"
    "	mov	r2, #0\n"
    "	ldrsh	r4, [r0, r2]\n"
    "	ldrh	r0, [r3, #4]\n"
    "	lsr	r0, r0, #4\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	mov	r1, sp\n"
    "	strh	r0, [r1, #0]\n"
    "	mov	r3, r9\n"
    "	ldrh	r0, [r3, #6]\n"
    "	lsr	r0, r0, #4\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f138\n"
    "	add	r0, r0, r1\n"
    "	mov	r2, #0\n"
    "	ldrsh	r4, [r0, r2]\n"
    "	ldrh	r0, [r3, #4]\n"
    "	lsr	r0, r0, #4\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r3, [sp, #8]\n"
    "	strh	r0, [r3, #0]\n"
    "	mov	r1, r9\n"
    "	ldrh	r0, [r1, #6]\n"
    "	lsr	r0, r0, #4\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r2, .L_8f138\n"
    "	add	r0, r0, r2\n"
    "	ldrh	r4, [r0, #0]\n"
    "	neg	r4, r4\n"
    ".L_8ef18:\n"
    "	lsl	r4, r4, #16\n"
    "	asr	r4, r4, #16\n"
    "	ldrh	r0, [r1, #4]\n"
    "	lsr	r0, r0, #4\n"
    ".L_8ef20:\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r3, [sp, #12]\n"
    "	strh	r0, [r3, #0]\n"
    "	mov	r1, r9\n"
    "	ldrh	r0, [r1, #6]\n"
    "	lsr	r0, r0, #4\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r2, .L_8f138\n"
    "	add	r0, r0, r2\n"
    "	mov	r3, #0\n"
    "	ldrsh	r4, [r0, r3]\n"
    "	ldrh	r0, [r1, #4]\n"
    "	lsr	r0, r0, #4\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	ldr	r1, [sp, #16]\n"
    "	strh	r0, [r1, #0]\n"
    "	ldr	r2, .L_8f120\n"
    "	mov	r1, sp\n"
    "	ldrh	r1, [r1, #0]\n"
    "	strh	r1, [r2, #6]\n"
    "	ldr	r3, [sp, #8]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #14]\n"
    "	ldr	r3, [sp, #12]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #22]\n"
    "	strh	r0, [r2, #30]\n"
    ".L_8ef78:\n"
    "	ldr	r0, .L_8f13c\n"
    "	ldrb	r0, [r0, #0]\n"
    "	add	r1, r0, #0\n"
    "	cmp	r1, #2\n"
    "	bhi	.L_8ef86\n"
    "	bl	.L_8f894\n"
    ".L_8ef86:\n"
    "	cmp	r1, #15\n"
    "	bne	.L_8ef8e\n"
    "	bl	.L_8f894\n"
    ".L_8ef8e:\n"
    "	cmp	r1, #14\n"
    "	bne	.L_8ef96\n"
    "	bl	.L_8f894\n"
    ".L_8ef96:\n"
    "	sub	r0, #8\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #1\n"
    "	bls	.L_8efa2\n"
    "	b	.L_8f14c\n"
    ".L_8efa2:\n"
    "	ldr	r2, .L_8f140\n"
    "	ldrh	r1, [r2, #0]\n"
    "	add	r1, #1\n"
    "	strh	r1, [r2, #0]\n"
    "	ldr	r3, .L_8f144\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r3\n"
    "	ldrb	r0, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	lsr	r1, r1, #16\n"
    "	add	r5, r2, #0\n"
    "	ldr	r2, .L_8f148\n"
    "	cmp	r0, r1\n"
    "	bcs	.L_8efd8\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r5, #0]\n"
    "	ldrh	r0, [r5, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r5, #2]\n"
    "	ldrh	r0, [r5, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r2\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8efd8\n"
    "	strh	r0, [r5, #2]\n"
    ".L_8efd8:\n"
    "	ldrh	r0, [r5, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r2\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	mov	r0, sp\n"
    "	add	r0, #2\n"
    "	str	r0, [sp, #8]\n"
    "	mov	r1, sp\n"
    "	add	r1, #4\n"
    "	str	r1, [sp, #12]\n"
    "	mov	r2, sp\n"
    "	add	r2, #6\n"
    "	str	r2, [sp, #16]\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f06c\n"
    "	ldr	r1, .L_8f120\n"
    "	mov	r9, r5\n"
    "	mov	r0, #15\n"
    "	neg	r0, r0\n"
    "	mov	ip, r0\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	ldr	r1, .L_8f130\n"
    "	mov	sl, r1\n"
    "	mov	r2, r8\n"
    "	sub	r7, r2, r7\n"
    ".L_8f012:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	mov	r1, r9\n"
    "	ldrh	r0, [r1, #6]\n"
    "	lsl	r0, r0, #16\n"
    "	asr	r0, r0, #20\n"
    "	add	r0, r0, r2\n"
    "	sub	r0, #32\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrb	r0, [r4, #1]\n"
    "	mov	r1, #3\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #1]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	mov	r0, r9\n"
    "	ldrh	r1, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #20\n"
    "	add	r1, r2, r1\n"
    "	sub	r1, #32\n"
    "	mov	r2, sl\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	ldr	r0, .L_8f134\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrb	r1, [r4, #3]\n"
    "	mov	r0, ip\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #3]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f012\n"
    "	mov	r7, r8\n"
    ".L_8f06c:\n"
    "	ldrh	r0, [r5, #16]\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r3, .L_8f138\n"
    "	add	r0, r0, r3\n"
    "	mov	r1, #0\n"
    "	ldrsh	r4, [r0, r1]\n"
    "	mov	r2, #18\n"
    "	ldrsh	r0, [r5, r2]\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	mov	r1, sp\n"
    "	strh	r0, [r1, #0]\n"
    "	ldrh	r0, [r5, #16]\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r3, .L_8f138\n"
    "	add	r0, r0, r3\n"
    "	mov	r1, #0\n"
    "	ldrsh	r4, [r0, r1]\n"
    "	mov	r2, #18\n"
    "	ldrsh	r0, [r5, r2]\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r3, [sp, #8]\n"
    "	strh	r0, [r3, #0]\n"
    "	ldrh	r0, [r5, #16]\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f138\n"
    "	add	r0, r0, r1\n"
    "	ldrh	r4, [r0, #0]\n"
    "	neg	r4, r4\n"
    "	lsl	r4, r4, #16\n"
    "	asr	r4, r4, #16\n"
    "	mov	r2, #18\n"
    "	ldrsh	r0, [r5, r2]\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r3, [sp, #12]\n"
    "	strh	r0, [r3, #0]\n"
    "	ldrh	r0, [r5, #16]\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f138\n"
    "	add	r0, r0, r1\n"
    "	mov	r2, #0\n"
    "	ldrsh	r4, [r0, r2]\n"
    "	mov	r3, #18\n"
    "	ldrsh	r0, [r5, r3]\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r1, [sp, #16]\n"
    "	strh	r0, [r1, #0]\n"
    "	ldr	r2, .L_8f120\n"
    "	mov	r1, sp\n"
    "	ldrh	r1, [r1, #0]\n"
    "	strh	r1, [r2, #6]\n"
    "	ldr	r3, [sp, #8]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #14]\n"
    "	ldr	r3, [sp, #12]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #22]\n"
    "	strh	r0, [r2, #30]\n"
    "	b	.L_8f222\n"
    ".L_8f11c:\n"
    "	.4byte	gOamSlotsUsed\n"
    ".L_8f120:\n"
    "	.4byte	gOamBuffer\n"
    ".L_8f124:\n"
    "	.4byte	gUnk_30047E4\n"
    ".L_8f128:\n"
    "	.4byte	sUnk_871E4C4\n"
    ".L_8f12c:\n"
    "	.4byte	sUnk_871E4B4\n"
    ".L_8f130:\n"
    "	.4byte	0x000001ff\n"
    ".L_8f134:\n"
    "	.4byte	0xfffffe00\n"
    ".L_8f138:\n"
    "	.4byte	sSinCosTable\n"
    ".L_8f13c:\n"
    "	.4byte	gUnk_30047B9\n"
    ".L_8f140:\n"
    "	.4byte	gUnk_30049E8\n"
    ".L_8f144:\n"
    "	.4byte	sUnk_871E374\n"
    ".L_8f148:\n"
    "	.4byte	sUnk_871E364\n"
    ".L_8f14c:\n"
    "	mov	r0, sp\n"
    "	add	r0, #2\n"
    "	str	r0, [sp, #8]\n"
    "	mov	r2, sp\n"
    "	add	r2, #4\n"
    "	str	r2, [sp, #12]\n"
    "	mov	r3, sp\n"
    "	add	r3, #6\n"
    "	str	r3, [sp, #16]\n"
    "	cmp	r1, #7\n"
    "	bne	.L_8f222\n"
    "	ldr	r2, .L_8f500\n"
    "	ldrh	r1, [r2, #0]\n"
    "	add	r1, #1\n"
    "	strh	r1, [r2, #0]\n"
    "	ldr	r3, .L_8f504\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r3\n"
    "	ldrb	r0, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	lsr	r1, r1, #16\n"
    "	add	r5, r2, #0\n"
    "	ldr	r2, .L_8f508\n"
    "	cmp	r0, r1\n"
    "	bcs	.L_8f198\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r5, #0]\n"
    "	ldrh	r0, [r5, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r5, #2]\n"
    "	ldrh	r0, [r5, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r2\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f198\n"
    "	strh	r0, [r5, #2]\n"
    ".L_8f198:\n"
    "	ldrh	r0, [r5, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r2\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	mov	r0, sp\n"
    "	add	r0, #2\n"
    "	str	r0, [sp, #8]\n"
    "	mov	r1, sp\n"
    "	add	r1, #4\n"
    "	str	r1, [sp, #12]\n"
    "	mov	r2, sp\n"
    "	add	r2, #6\n"
    "	str	r2, [sp, #16]\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f222\n"
    "	ldr	r1, .L_8f50c\n"
    "	ldr	r0, .L_8f510\n"
    "	mov	ip, r0\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	ldr	r1, .L_8f514\n"
    "	mov	r9, r1\n"
    "	mov	r2, #13\n"
    "	neg	r2, r2\n"
    "	mov	sl, r2\n"
    "	mov	r0, r8\n"
    "	sub	r7, r0, r7\n"
    ".L_8f1d4:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	ldrb	r0, [r5, #10]\n"
    "	add	r0, r0, r2\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrb	r1, [r4, #1]\n"
    "	mov	r0, #4\n"
    "	neg	r0, r0\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #1]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	mov	r0, #8\n"
    "	ldrsh	r1, [r5, r0]\n"
    "	add	r1, r2, r1\n"
    "	mov	r2, r9\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	mov	r0, ip\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r1, [r4, #5]\n"
    "	mov	r0, sl\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f1d4\n"
    "	mov	r7, r8\n"
    ".L_8f222:\n"
    "	ldr	r0, .L_8f518\n"
    "	ldrb	r0, [r0, #0]\n"
    "	mov	ip, r0\n"
    "	cmp	r0, #2\n"
    "	ble	.L_8f230\n"
    "	mov	r3, #2\n"
    "	mov	ip, r3\n"
    ".L_8f230:\n"
    "	mov	r5, #0\n"
    "	cmp	r5, ip\n"
    "	bge	.L_8f2a8\n"
    ".L_8f236:\n"
    "	ldr	r0, .L_8f51c\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	add	r1, r5, #1\n"
    "	mov	r9, r1\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f2a2\n"
    "	mov	r2, #13\n"
    "	neg	r2, r2\n"
    "	mov	sl, r2\n"
    "	lsl	r0, r7, #3\n"
    "	ldr	r1, .L_8f50c\n"
    "	add	r4, r0, r1\n"
    "	mov	r2, r8\n"
    "	sub	r7, r2, r7\n"
    ".L_8f258:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r0, r2, #0\n"
    "	add	r0, #32\n"
    "	lsl	r1, r5, #3\n"
    "	sub	r0, r0, r1\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r1, r2, #0\n"
    "	add	r1, #224	@ 0xe0\n"
    "	ldr	r0, .L_8f514\n"
    "	and	r1, r0\n"
    "	ldrh	r2, [r4, #2]\n"
    "	ldr	r0, .L_8f510\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r1, [r4, #5]\n"
    "	mov	r0, sl\n"
    "	and	r0, r1\n"
    "	mov	r1, #8\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f258\n"
    "	mov	r7, r8\n"
    ".L_8f2a2:\n"
    "	mov	r5, r9\n"
    "	cmp	r5, ip\n"
    "	blt	.L_8f236\n"
    ".L_8f2a8:\n"
    "	ldr	r1, .L_8f520\n"
    "	ldrb	r0, [r1, #0]\n"
    "	cmp	r0, #0\n"
    "	beq	.L_8f2ee\n"
    "	ldr	r2, .L_8f524\n"
    "	ldrh	r0, [r2, #0]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #0]\n"
    "	ldr	r3, .L_8f528\n"
    "	ldrh	r1, [r2, #2]\n"
    "	lsl	r1, r1, #3\n"
    "	add	r1, r1, r3\n"
    "	ldrb	r1, [r1, #4]\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	cmp	r1, r0\n"
    "	bcs	.L_8f2ee\n"
    "	mov	r0, #1\n"
    "	strh	r0, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #2]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r3\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f2ee\n"
    "	strh	r0, [r2, #2]\n"
    "	strh	r0, [r2, #0]\n"
    "	mov	r0, #0\n"
    "	ldr	r2, .L_8f520\n"
    "	strb	r0, [r2, #0]\n"
    "	bl	func_808ED88\n"
    ".L_8f2ee:\n"
    "	ldr	r1, .L_8f528\n"
    "	ldr	r0, .L_8f524\n"
    "	ldrh	r0, [r0, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r1\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	ldr	r0, .L_8f52c\n"
    "	mov	r9, r0\n"
    "	ldr	r5, .L_8f530\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f364\n"
    "	ldr	r1, .L_8f50c\n"
    "	ldr	r2, .L_8f514\n"
    "	mov	ip, r2\n"
    "	mov	r0, #13\n"
    "	neg	r0, r0\n"
    "	mov	sl, r0\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	mov	r1, r8\n"
    "	sub	r7, r1, r7\n"
    ".L_8f31e:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r0, r2, #0\n"
    "	add	r0, #146	@ 0x92\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r1, r2, #0\n"
    "	add	r1, #24\n"
    "	mov	r2, ip\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	ldr	r0, .L_8f510\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r1, [r4, #5]\n"
    "	mov	r0, sl\n"
    "	and	r0, r1\n"
    "	mov	r1, #8\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f31e\n"
    "	mov	r7, r8\n"
    ".L_8f364:\n"
    "	mov	r3, r9\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r3, #0]\n"
    "	ldrh	r1, [r3, #2]\n"
    "	lsl	r1, r1, #3\n"
    "	add	r1, r1, r5\n"
    "	ldrb	r1, [r1, #4]\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	cmp	r1, r0\n"
    "	bcs	.L_8f394\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r3, #0]\n"
    "	ldrh	r0, [r3, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r3, #2]\n"
    "	ldrh	r0, [r3, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r5\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f394\n"
    "	strh	r0, [r3, #2]\n"
    ".L_8f394:\n"
    "	mov	r1, r9\n"
    "	ldrh	r0, [r1, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r5\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f418\n"
    "	ldr	r1, .L_8f50c\n"
    "	ldr	r2, .L_8f510\n"
    "	mov	ip, r2\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	ldr	r5, .L_8f514\n"
    "	mov	r0, #15\n"
    "	neg	r0, r0\n"
    "	mov	sl, r0\n"
    "	mov	r1, r8\n"
    "	sub	r7, r1, r7\n"
    ".L_8f3be:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r0, r2, #0\n"
    "	add	r0, #96	@ 0x60\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrb	r1, [r4, #1]\n"
    "	mov	r0, #4\n"
    "	neg	r0, r0\n"
    "	and	r0, r1\n"
    "	mov	r1, #1\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #1]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r1, r2, #0\n"
    "	add	r1, #215	@ 0xd7\n"
    "	and	r1, r5\n"
    "	ldrh	r2, [r4, #2]\n"
    "	mov	r0, ip\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrb	r1, [r4, #3]\n"
    "	mov	r0, sl\n"
    "	and	r0, r1\n"
    "	mov	r1, #2\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #3]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r0, [r4, #5]\n"
    "	mov	r1, #12\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f3be\n"
    "	mov	r7, r8\n"
    ".L_8f418:\n"
    "	mov	r2, r9\n"
    "	ldrh	r0, [r2, #4]\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r3, .L_8f534\n"
    "	add	r0, r0, r3\n"
    "	mov	r1, #0\n"
    "	ldrsh	r4, [r0, r1]\n"
    "	mov	r5, #128	@ 0x80\n"
    "	lsl	r5, r5, #1\n"
    "	add	r0, r5, #0\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	mov	r1, sp\n"
    "	strh	r0, [r1, #0]\n"
    "	mov	r2, r9\n"
    "	ldrh	r0, [r2, #4]\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r3, .L_8f534\n"
    "	add	r0, r0, r3\n"
    "	mov	r1, #0\n"
    "	ldrsh	r4, [r0, r1]\n"
    "	add	r0, r5, #0\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r2, [sp, #8]\n"
    "	strh	r0, [r2, #0]\n"
    "	mov	r3, r9\n"
    "	ldrh	r0, [r3, #4]\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f534\n"
    "	add	r0, r0, r1\n"
    "	ldrh	r4, [r0, #0]\n"
    "	neg	r4, r4\n"
    "	lsl	r4, r4, #16\n"
    "	asr	r4, r4, #16\n"
    "	add	r0, r5, #0\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r2, [sp, #12]\n"
    "	strh	r0, [r2, #0]\n"
    "	mov	r3, r9\n"
    "	ldrh	r0, [r3, #4]\n"
    "	add	r0, #64	@ 0x40\n"
    "	lsl	r0, r0, #1\n"
    "	ldr	r1, .L_8f534\n"
    "	add	r0, r0, r1\n"
    "	mov	r2, #0\n"
    "	ldrsh	r4, [r0, r2]\n"
    "	add	r0, r5, #0\n"
    "	bl	FixedInverse\n"
    "	add	r1, r0, #0\n"
    "	lsl	r1, r1, #16\n"
    "	asr	r1, r1, #16\n"
    "	add	r0, r4, #0\n"
    "	bl	FixedMul\n"
    "	ldr	r3, [sp, #16]\n"
    "	strh	r0, [r3, #0]\n"
    "	ldr	r2, .L_8f50c\n"
    "	mov	r1, sp\n"
    "	ldrh	r1, [r1, #0]\n"
    "	strh	r1, [r2, #38]	@ 0x26\n"
    "	ldr	r3, [sp, #8]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #46]	@ 0x2e\n"
    "	ldr	r3, [sp, #12]\n"
    "	ldrh	r1, [r3, #0]\n"
    "	strh	r1, [r2, #54]	@ 0x36\n"
    "	strh	r0, [r2, #62]	@ 0x3e\n"
    "	ldr	r2, .L_8f538\n"
    "	ldrb	r0, [r2, #8]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f4d4\n"
    "	b	.L_8f608\n"
    ".L_8f4d4:\n"
    "	ldr	r1, .L_8f53c\n"
    "	lsl	r0, r0, #2\n"
    "	add	r0, r0, r1\n"
    "	ldr	r4, [r0, #0]\n"
    "	ldrh	r1, [r2, #0]\n"
    "	add	r1, #1\n"
    "	strh	r1, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    ".L_8f4e4:\n"
    "	.4byte	0x190000c0\n"
    "	ldrb	r0, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	lsr	r1, r1, #16\n"
    "	cmp	r0, r1\n"
    "	bcs	.L_8f592\n"
    "	mov	r0, #1\n"
    "	strh	r0, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #2]\n"
    "	b	.L_8f540\n"
    "	.align	2, 0\n"
    ".L_8f500:\n"
    "	.4byte	gUnk_30049E8\n"
    ".L_8f504:\n"
    "	.4byte	sUnk_871E50C\n"
    ".L_8f508:\n"
    "	.4byte	sUnk_871E48C\n"
    ".L_8f50c:\n"
    "	.4byte	gOamBuffer\n"
    ".L_8f510:\n"
    "	.4byte	0xfffffe00\n"
    ".L_8f514:\n"
    "	.4byte	0x000001ff\n"
    ".L_8f518:\n"
    "	.4byte	gUnk_3004A2E\n"
    ".L_8f51c:\n"
    "	.4byte	sUnk_871E4FC\n"
    ".L_8f520:\n"
    "	.4byte	gUnk_30047E0\n"
    ".L_8f524:\n"
    "	.4byte	gUnk_30047DC\n"
    ".L_8f528:\n"
    "	.4byte	sUnk_871E424\n"
    ".L_8f52c:\n"
    "	.4byte	gUnk_3004A00\n"
    ".L_8f530:\n"
    "	.4byte	sUnk_871E354\n"
    ".L_8f534:\n"
    "	.4byte	sSinCosTable\n"
    ".L_8f538:\n"
    "	.4byte	gUnk_3004A20\n"
    ".L_8f53c:\n"
    "	.4byte	sUnk_871DD5C\n"
    ".L_8f540:\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f592\n"
    "	strh	r0, [r2, #2]\n"
    "	ldr	r0, .L_8f568\n"
    "	ldrb	r4, [r0, #0]\n"
    "	cmp	r4, #1\n"
    "	bne	.L_8f592\n"
    "	bl	MinigameRandom\n"
    "	and	r4, r0\n"
    "	cmp	r4, #0\n"
    "	bne	.L_8f570\n"
    "	ldr	r0, .L_8f56c\n"
    "	bl	m4aSongNumStart\n"
    "	b	.L_8f578\n"
    ".L_8f568:\n"
    "	.4byte	gUnk_30047BB\n"
    ".L_8f56c:\n"
    "	.4byte	0x00000237\n"
    ".L_8f570:\n"
    "	mov	r0, #142	@ 0x8e\n"
    "	lsl	r0, r0, #2\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f578:\n"
    "	mov	r0, #179	@ 0xb3\n"
    "	lsl	r0, r0, #2\n"
    "	bl	m4aSongNumStart\n"
    "	ldr	r0, .L_8f64c\n"
    "	ldrb	r1, [r0, #9]\n"
    "	mov	r2, #0\n"
    "	strb	r1, [r0, #8]\n"
    "	strh	r2, [r0, #0]\n"
    "	ldr	r1, .L_8f650\n"
    "	ldrb	r0, [r1, #0]\n"
    "	add	r0, #1\n"
    "	strb	r0, [r1, #0]\n"
    ".L_8f592:\n"
    "	ldr	r1, .L_8f654\n"
    "	ldr	r2, .L_8f64c\n"
    "	ldrb	r0, [r2, #8]\n"
    "	lsl	r0, r0, #2\n"
    "	add	r0, r0, r1\n"
    "	ldr	r4, [r0, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f608\n"
    "	ldr	r1, .L_8f658\n"
    "	add	r5, r2, #0\n"
    "	ldr	r0, .L_8f65c\n"
    "	mov	r9, r0\n"
    "	ldr	r2, .L_8f660\n"
    "	mov	sl, r2\n"
    ".L_8f5bc:\n"
    "	.4byte	0x184400f8\n"
    "	mov	r0, r8\n"
    "	sub	r7, r0, r7\n"
    ".L_8f5c4:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	ldrb	r0, [r5, #6]\n"
    "	add	r0, r0, r2\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrh	r2, [r3, #0]\n"
    ".L_8f5d4:\n"
    "	.4byte	0x80323302\n"
    "	add	r6, #2\n"
    "	mov	r0, #4\n"
    "	ldrsh	r1, [r5, r0]\n"
    "	add	r1, r2, r1\n"
    "	mov	r2, r9\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	mov	r0, sl\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r0, [r4, #5]\n"
    "	mov	r1, #12\n"
    ".L_8f5f8:\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f5c4\n"
    "	mov	r7, r8\n"
    ".L_8f608:\n"
    "	ldr	r1, .L_8f664\n"
    "	ldr	r2, .L_8f668\n"
    "	ldrb	r0, [r2, #4]\n"
    "	lsl	r0, r0, #2\n"
    "	add	r0, r0, r1\n"
    "	ldr	r4, [r0, #0]\n"
    "	ldrh	r1, [r2, #0]\n"
    "	add	r1, #1\n"
    "	strh	r1, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	lsr	r1, r1, #16\n"
    "	cmp	r0, r1\n"
    "	bcc	.L_8f62c\n"
    "	b	.L_8f774\n"
    ".L_8f62c:\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #2]\n"
    "	ldrb	r0, [r2, #4]\n"
    "	cmp	r0, #4\n"
    "	bne	.L_8f6ea\n"
    "	ldrh	r0, [r2, #2]\n"
    "	cmp	r0, #10\n"
    "	bhi	.L_8f6ea\n"
    "	lsl	r0, r0, #2\n"
    "	ldr	r1, .L_8f66c\n"
    "	add	r0, r0, r1\n"
    "	ldr	r0, [r0, #0]\n"
    "	mov	pc, r0\n"
    ".L_8f64c:\n"
    "	.4byte	gUnk_3004A20\n"
    ".L_8f650:\n"
    "	.4byte	gUnk_30047BB\n"
    ".L_8f654:\n"
    "	.4byte	sUnk_871DD5C\n"
    ".L_8f658:\n"
    "	asr	r4, r0, #17\n"
    "	lsl	r0, r0, #12\n"
    ".L_8f65c:\n"
    "	.4byte	0x000001ff\n"
    ".L_8f660:\n"
    "	.4byte	0xfffffe00\n"
    ".L_8f664:\n"
    "	.4byte	sUnk_871D4F8\n"
    ".L_8f668:\n"
    "	.4byte	gUnk_3004A10\n"
    ".L_8f66c:\n"
    "	.4byte	.L_8f670\n"
    ".L_8f670:\n"
    "	.4byte	.L_8f6c0\n"
    "	.4byte	.L_8f6ca\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f6d8\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f6e4\n"
    "	.4byte	.L_8f6ea\n"
    "	.4byte	.L_8f69c\n"
    ".L_8f69c:\n"
    "	ldr	r1, .L_8f6b4\n"
    "	mov	r0, #7\n"
    "	strb	r0, [r1, #0]\n"
    "	ldr	r1, .L_8f6b8\n"
    "	ldr	r0, .L_8f6bc\n"
    "	ldrb	r0, [r0, #0]\n"
    "	lsl	r0, r0, #2\n"
    "	add	r0, r0, r1\n"
    "	ldrh	r0, [r0, #0]\n"
    "	bl	m4aSongNumStart\n"
    "	b	.L_8f6ea\n"
    ".L_8f6b4:\n"
    "	.4byte	gUnk_30047B9\n"
    ".L_8f6b8:\n"
    "	.4byte	sUnk_871D520\n"
    ".L_8f6bc:\n"
    "	.4byte	gUnk_30049FC\n"
    ".L_8f6c0:\n"
    "	mov	r0, #138	@ 0x8a\n"
    "	lsl	r0, r0, #2\n"
    "	bl	m4aSongNumStart\n"
    "	b	.L_8f6ea\n"
    ".L_8f6ca:\n"
    "	ldr	r0, .L_8f6d4\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f6d0:\n"
    "	.4byte	0x0000e00b\n"
    ".L_8f6d4:\n"
    "	.4byte	0x00000229\n"
    ".L_8f6d8:\n"
    "	ldr	r0, .L_8f6e0\n"
    "	bl	m4aSongNumStart\n"
    "	b	.L_8f6ea\n"
    ".L_8f6e0:\n"
    "	.4byte	0x0000022a\n"
    ".L_8f6e4:\n"
    "	ldr	r0, .L_8f70c\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f6ea:\n"
    "	ldr	r3, .L_8f710\n"
    "	ldrh	r0, [r3, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f774\n"
    "	strh	r0, [r3, #2]\n"
    "	ldrb	r0, [r3, #4]\n"
    ".L_8f6fc:\n"
    "	cmp	r0, #4\n"
    "	bne	.L_8f718\n"
    "	mov	r0, #5\n"
    "	strb	r0, [r3, #4]\n"
    "	ldr	r0, .L_8f714\n"
    "	ldr	r4, [r0, #20]\n"
    ".L_8f708:\n"
    "	b	.L_8f774\n"
    "	.align	2, 0\n"
    ".L_8f70c:\n"
    "	.4byte	0x0000022b\n"
    ".L_8f710:\n"
    "	ldr	r2, .L_8f754\n"
    "	lsl	r0, r0, #12\n"
    ".L_8f714:\n"
    "	.4byte	sUnk_871D4F8\n"
    ".L_8f718:\n"
    "	sub	r0, #1\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #3\n"
    "	bhi	.L_8f774\n"
    "	ldrb	r0, [r3, #5]\n"
    "	add	r0, #1\n"
    "	strb	r0, [r3, #5]\n"
    "	ldr	r0, .L_8f734\n"
    "	ldrb	r0, [r0, #0]\n"
    "	cmp	r0, #2\n"
    "	bne	.L_8f73c\n"
    "	ldr	r2, .L_8f738\n"
    "	b	.L_8f73e\n"
    ".L_8f734:\n"
    "	.4byte	gDifficulty\n"
    ".L_8f738:\n"
    "	.4byte	sUnk_871D627\n"
    ".L_8f73c:\n"
    "	ldr	r2, .L_8f8ac\n"
    ".L_8f73e:\n"
    "	ldr	r0, .L_8f8b0\n"
    "	ldrb	r1, [r0, #0]\n"
    "	lsl	r0, r1, #2\n"
    "	add	r0, r0, r1\n"
    "	sub	r0, #1\n"
    "	ldrb	r1, [r3, #5]\n"
    "	add	r0, r0, r1\n"
    "	add	r0, r0, r2\n"
    "	ldrb	r0, [r0, #0]\n"
    "	strb	r0, [r3, #4]\n"
    "	ldr	r2, .L_8f8b4\n"
    ".L_8f754:\n"
    "	.4byte	0x79294d58\n"
    "	lsl	r0, r1, #2\n"
    "	add	r0, r0, r2\n"
    "	ldr	r4, [r0, #0]\n"
    "	cmp	r1, #3\n"
    "	bne	.L_8f768\n"
    "	ldr	r0, .L_8f8bc\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f768:\n"
    "	ldrb	r0, [r5, #4]\n"
    "	cmp	r0, #2\n"
    "	bne	.L_8f774\n"
    "	ldr	r0, .L_8f8c0\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f774:\n"
    "	ldr	r0, .L_8f8b8\n"
    "	ldrh	r0, [r0, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	ldr	r2, .L_8f8c4\n"
    "	mov	sl, r2\n"
    "	cmp	r7, r8\n"
    ".L_8f78a:\n"
    "	bge	.L_8f7dc\n"
    "	ldr	r1, .L_8f8c8\n"
    "	ldr	r5, .L_8f8cc\n"
    "	ldr	r0, .L_8f8d0\n"
    "	mov	r9, r0\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	mov	r1, r8\n"
    "	sub	r7, r1, r7\n"
    ".L_8f79c:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r0, r2, #0\n"
    "	add	r0, #88	@ 0x58\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	add	r1, r2, #0\n"
    "	add	r1, #72	@ 0x48\n"
    "	and	r1, r5\n"
    "	ldrh	r2, [r4, #2]\n"
    "	mov	r0, r9\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r0, [r4, #5]\n"
    "	mov	r1, #12\n"
    "	orr	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f79c\n"
    "	mov	r7, r8\n"
    ".L_8f7dc:\n"
    "	mov	r2, sl\n"
    "	ldrb	r0, [r2, #0]\n"
    "	sub	r0, #11\n"
    "	lsl	r0, r0, #24\n"
    "	lsr	r0, r0, #24\n"
    "	cmp	r0, #2\n"
    "	bhi	.L_8f894\n"
    "	ldr	r1, .L_8f8d4\n"
    "	ldr	r0, .L_8f8d8\n"
    "	ldrb	r0, [r0, #0]\n"
    "	lsl	r0, r0, #2\n"
    "	add	r0, r0, r1\n"
    "	ldr	r4, [r0, #0]\n"
    "	ldr	r2, .L_8f8dc\n"
    "	ldrh	r1, [r2, #0]\n"
    "	add	r1, #1\n"
    "	strh	r1, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #4]\n"
    "	lsl	r1, r1, #16\n"
    "	lsr	r1, r1, #16\n"
    "	cmp	r0, r1\n"
    "	bcs	.L_8f826\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r2, #0]\n"
    "	ldrh	r0, [r2, #2]\n"
    ".L_8f814:\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #2]\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldrb	r0, [r0, #4]\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f826\n"
    "	strh	r0, [r2, #2]\n"
    ".L_8f826:\n"
    "	ldrh	r0, [r2, #2]\n"
    "	lsl	r0, r0, #3\n"
    "	add	r0, r0, r4\n"
    "	ldr	r3, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    ".L_8f830:\n"
    "	add	r8, r0\n"
    "	add	r3, #2\n"
    "	cmp	r7, r8\n"
    "	bge	.L_8f894\n"
    "	ldr	r1, .L_8f8c8\n"
    "	add	r5, r2, #0\n"
    "	ldr	r0, .L_8f8cc\n"
    "	mov	sl, r0\n"
    "	ldr	r2, .L_8f8d0\n"
    "	mov	ip, r2\n"
    "	mov	r0, #13\n"
    "	neg	r0, r0\n"
    "	mov	r9, r0\n"
    "	lsl	r0, r7, #3\n"
    "	add	r4, r0, r1\n"
    "	mov	r1, r8\n"
    "	sub	r7, r1, r7\n"
    ".L_8f852:\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	ldrb	r0, [r5, #6]\n"
    "	add	r0, r0, r2\n"
    "	strb	r0, [r4, #0]\n"
    "	ldrh	r2, [r3, #0]\n"
    "	add	r3, #2\n"
    "	strh	r2, [r6, #0]\n"
    "	add	r6, #2\n"
    "	mov	r0, #4\n"
    "	ldrsh	r1, [r5, r0]\n"
    "	add	r1, r2, r1\n"
    "	mov	r2, sl\n"
    "	and	r1, r2\n"
    "	ldrh	r2, [r4, #2]\n"
    "	mov	r0, ip\n"
    "	and	r0, r2\n"
    "	orr	r0, r1\n"
    "	strh	r0, [r4, #2]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	strh	r0, [r6, #0]\n"
    "	add	r3, #2\n"
    "	ldrb	r1, [r4, #5]\n"
    "	mov	r0, r9\n"
    "	and	r0, r1\n"
    "	strb	r0, [r4, #5]\n"
    "	add	r6, #4\n"
    "	add	r4, #8\n"
    "	sub	r7, #1\n"
    "	cmp	r7, #0\n"
    "	bne	.L_8f852\n"
    ".L_8f894:\n"
    "	ldr	r0, .L_8f8e0\n"
    "	mov	r3, r8\n"
    "	strb	r3, [r0, #0]\n"
    "	add	sp, #20\n"
    "	pop	{r3, r4, r5}\n"
    "	mov	r8, r3\n"
    "	mov	r9, r4\n"
    "	mov	sl, r5\n"
    ".L_8f8a4:\n"
    "	.4byte	0xbc01bcf0\n"
    ".L_8f8a8:\n"
    "	bx	r0\n"
    "	.align	2, 0\n"
    ".L_8f8ac:\n"
    "	.4byte	sUnk_871D604\n"
    ".L_8f8b0:\n"
    "	.4byte	gUnk_30049FC\n"
    ".L_8f8b4:\n"
    "	.4byte	sUnk_871D4F8\n"
    ".L_8f8b8:\n"
    "	ldr	r2, .L_8f8fc\n"
    "	lsl	r0, r0, #12\n"
    ".L_8f8bc:\n"
    "	.4byte	0x00000226\n"
    ".L_8f8c0:\n"
    "	.4byte	0x00000227\n"
    ".L_8f8c4:\n"
    "	.4byte	gUnk_30047B9\n"
    ".L_8f8c8:\n"
    "	.4byte	gOamBuffer\n"
    ".L_8f8cc:\n"
    "	.4byte	0x000001ff\n"
    ".L_8f8d0:\n"
    "	.4byte	0xfffffe00\n"
    ".L_8f8d4:\n"
    "	.4byte	sUnk_871D510\n"
    ".L_8f8d8:\n"
    "	.4byte	gUnk_3004A2D\n"
    ".L_8f8dc:\n"
    "	.4byte	gUnk_3004A18\n"
    ".L_8f8e0:\n"
    "	.4byte	gOamSlotsUsed\n"
    "\n"
    "\n"
);


/* ASM fallback: func_808F8E4 */
asm(
    "	.section .text\n"
    "	.align	2, 0\n"
    "	.thumb\n"
    "	.global	func_808F8E4\n"
    "	.thumb_func\n"
    "func_808F8E4:\n"
    "	push	{r4, r5, lr}\n"
    "	ldr	r5, .L_8f8f8\n"
    "	ldrb	r4, [r5, #0]\n"
    "	cmp	r4, #1\n"
    "	beq	.L_8f95c\n"
    "	cmp	r4, #1\n"
    "	bgt	.L_8f8fc\n"
    "	cmp	r4, #0\n"
    "	beq	.L_8f902\n"
    "	b	.L_8f9d8\n"
    ".L_8f8f8:\n"
    "	.4byte	gUnk_30047BB\n"
    ".L_8f8fc:\n"
    "	cmp	r4, #2\n"
    "	beq	.L_8f9bc\n"
    "	b	.L_8f9d8\n"
    ".L_8f902:\n"
    "	mov	r0, #60	@ 0x3c\n"
    "	bl	func_8089B9C\n"
    "	cmp	r0, #0\n"
    "	beq	.L_8f9d8\n"
    "	ldr	r2, .L_8f924\n"
    "	ldrh	r0, [r2, #0]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #0]\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	ldr	r1, .L_8f928\n"
    "	cmp	r0, r1\n"
    "	bls	.L_8f92c\n"
    "	strh	r1, [r2, #0]\n"
    "	b	.L_8f934\n"
    "	.align	2, 0\n"
    ".L_8f924:\n"
    "	.4byte	gUnk_30047D6\n"
    ".L_8f928:\n"
    "	.4byte	0x000003e7\n"
    ".L_8f92c:\n"
    "	mov	r0, #137	@ 0x89\n"
    "	lsl	r0, r0, #2\n"
    "	bl	m4aSongNumStart\n"
    ".L_8f934:\n"
    "	ldr	r0, .L_8f950\n"
    "	ldr	r3, .L_8f954\n"
    "	ldrh	r2, [r0, #0]\n"
    "	ldrh	r0, [r3, #0]\n"
    "	cmp	r2, r0\n"
    "	bls	.L_8f948\n"
    "	ldr	r1, .L_8f958\n"
    "	mov	r0, #1\n"
    "	strb	r0, [r1, #0]\n"
    "	strh	r2, [r3, #0]\n"
    ".L_8f948:\n"
    "	bl	func_808ED88\n"
    "	b	.L_8f9a6\n"
    "	.align	2, 0\n"
    ".L_8f950:\n"
    "	.4byte	gUnk_30047D6\n"
    ".L_8f954:\n"
    "	.4byte	gMinigameHighScores\n"
    ".L_8f958:\n"
    "	.4byte	gUnk_30047D4\n"
    ".L_8f95c:\n"
    "	mov	r0, #20\n"
    "	bl	func_8089B9C\n"
    "	cmp	r0, #0\n"
    "	beq	.L_8f9d8\n"
    "	ldr	r0, .L_8f98c\n"
    "	ldrh	r0, [r0, #0]\n"
    "	mov	r1, #3\n"
    "	bl	__umodsi3\n"
    "	lsl	r0, r0, #16\n"
    "	cmp	r0, #0\n"
    "	bne	.L_8f9a6\n"
    "	ldr	r2, .L_8f990\n"
    "	ldrh	r0, [r2, #0]\n"
    "	add	r0, #1\n"
    "	strh	r0, [r2, #0]\n"
    "	lsl	r0, r0, #16\n"
    "	lsr	r0, r0, #16\n"
    "	ldr	r1, .L_8f994\n"
    "	cmp	r0, r1\n"
    "	bls	.L_8f998\n"
    "	strh	r1, [r2, #0]\n"
    "	b	.L_8f9a2\n"
    ".L_8f98c:\n"
    "	.4byte	gUnk_30047D6\n"
    ".L_8f990:\n"
    "	.4byte	gMedalCount\n"
    ".L_8f994:\n"
    "	.4byte	0x000003e7\n"
    ".L_8f998:\n"
    "	ldr	r0, .L_8f9b0\n"
    "	bl	m4aSongNumStart\n"
    "	ldr	r0, .L_8f9b4\n"
    "	strb	r4, [r0, #0]\n"
    ".L_8f9a2:\n"
    "	bl	func_808ED88\n"
    ".L_8f9a6:\n"
    "	ldr	r1, .L_8f9b8\n"
    "	ldrb	r0, [r1, #0]\n"
    "	add	r0, #1\n"
    "	strb	r0, [r1, #0]\n"
    "	b	.L_8f9d8\n"
    ".L_8f9b0:\n"
    "	.4byte	0x00000223\n"
    ".L_8f9b4:\n"
    "	.4byte	gUnk_30047E0\n"
    ".L_8f9b8:\n"
    "	.4byte	gUnk_30047BB\n"
    ".L_8f9bc:\n"
    "	mov	r0, #30\n"
    "	bl	func_8089B9C\n"
    "	cmp	r0, #0\n"
    "	beq	.L_8f9d8\n"
    "	ldr	r1, .L_8f9d4\n"
    "	mov	r0, #0\n"
    "	strh	r0, [r1, #0]\n"
    "	strb	r0, [r5, #0]\n"
    "	mov	r0, #1\n"
    "	b	.L_8f9da\n"
    "	.align	2, 0\n"
    ".L_8f9d4:\n"
    "	.4byte	gUnk_30047BC\n"
    ".L_8f9d8:\n"
    "	mov	r0, #0\n"
    ".L_8f9da:\n"
    "	pop	{r4, r5}\n"
    "	pop	{r1}\n"
    "	bx	r1\n"
    "\n"
    "\n"
);


static s32 func_808F9E0(void)
{
    u8 *statePtr;
    u8 *statePtr2;
    struct Unk_3004A20 *work;
    u8 dir;
    s32 value;
    u16 next;
    s32 temp;
    s32 state;
    s32 lower;

    statePtr = &gUnk_30047BB;
    state = *statePtr;
    statePtr2 = statePtr;

    switch (state) {
    case 0:
    {
        register struct Unk_3004A20 *work2 asm("r5");

        work = (struct Unk_3004A20 *)gUnk_3004A20;
        dir = work->unkA;
        if (dir != 0) {
            work->unk6++;
            if (work->unk6 > 0x50) {
                work->unk6 = 0x50;
            }
        } else {
            work->unk6--;
            if (work->unk6 <= 0x4F) {
                work->unk6 = 0x50;
            }
        }

        work2 = work;
        if (work2->unk6 == 0x50) {
            (*statePtr2)++;
            work2->unk0 = 0;
            work2->unk2 = 0;

            temp = work2->unk8;
            if (temp != 4) {
                if (temp <= 4) {
                    if (temp < (lower = 1)) {
                        break;
                    }
                    work2->unk8 = MinigameRandom() % 2 + 7;
                }
            } else {
                work->unk8 = MinigameRandom() % 2 + 5;
            }
        }
        break;
    }

    case 1:
        break;

    case 2:
    {
        register struct Unk_3004A20 *work3 asm("r3");
        register s32 regDir asm("r4");

        work3 = (struct Unk_3004A20 *)gUnk_3004A20;
        regDir = work3->unkA;
        if (regDir != 0) {
            register u16 *out asm("r1");

            next = work3->unk6 + 1;
            regDir = 0;
            work3->unk6 = next;
            value = work3->unk6;
            if (value > sUnk_871DD84[work3->unkA - 1]) {
                out = &gUnk_30047BC;
                *out = 0;
                *statePtr = regDir;
                work3->unk8 = regDir;
                return 1;
            }
        } else {
            register u8 zero asm("r6");

            next = work3->unk6 - 1;
            zero = 0;
            work3->unk6 = next;
            value = work3->unk6;
            if (value < sUnk_871DD84[work3->unkA + 1]) {
                gUnk_30047BC = regDir;
                *statePtr = zero;
                work3->unk8 = zero;
                return 1;
            }
        }
        break;
    }
    }

    return 0;
}

void func_808FAF4(void) {
    register struct Unk_3004A20 *work asm("r4");
    register s32 temp_r1 asm("r1");
    register s32 temp_r5 asm("r5");
    u32 temp_r0;
    u8 temp_r0_2;
    register s32 var_r0 asm("r0");

    temp_r0 = MinigameRandom();
    work = (struct Unk_3004A20 *)gUnk_3004A20;
    temp_r1 = temp_r0 >> 0x1F;
    temp_r1 = temp_r0 + temp_r1;
    temp_r1 = temp_r1 >> 1;
    temp_r1 <<= 1;
    temp_r5 = temp_r0 - temp_r1;
    work->unkA = temp_r5;
    work->unk4 = 0x78;
    work->unk6 = sUnk_871DD84[work->unkA];
    temp_r0_2 = (u8) (gUnk_3004A2C % 3U);
    switch (temp_r0_2) {
    case 1:
        var_r0 = 4;
        work->unk8 = var_r0;
        break;
    case 2:
        var_r0 = 9;
        work->unk8 = var_r0;
        break;
    default:
        var_r0 = temp_r5 + 1;
        work->unk8 = var_r0;
        if ((MinigameRandom() % 3) == 0) {
            var_r0 = 3;
            work->unk8 = var_r0;
        }
        break;
    }
    work->unk0 = 0;
    work->unk2 = 0;
    work->unk9 = work->unk8;
    gUnk_3004A2C += 1;
    m4aSongNumStart(0x2CBU);
}
#endif
