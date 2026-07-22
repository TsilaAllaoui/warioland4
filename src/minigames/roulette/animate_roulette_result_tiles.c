#include "minigames/roulette.h"

void AnimateRouletteResultTiles(void)
{
    register u32 phase asm("r1");
    volatile u32 *dma;

    {
        volatile u16 *frameCounter;
        frameCounter = &gRouletteFrameCounter;
        phase = *frameCounter;
        phase++;
        *frameCounter = phase;
        phase = *frameCounter;
    }
    phase &= 15;
    if (phase == 0) {
        dma = (volatile u32 *)0x040000D4;
        dma[0] = (u32)sRouletteResultFlashTiles;
        dma[1] = 0x06017000;
        dma[2] = 0x80000800;
        dma[2];
    } else if (phase == 8) {
        register int i asm("r3");
        register u8 *source0 asm("r9");
        register u8 *source1 asm("r8");
        register u8 *source2 asm("ip");
        register volatile u32 *dmaRegs asm("r2");
        register u32 control;
        register u32 busy asm("r6");

        i = 0;
        source0 = sRouletteTopResultTiles;
        source1 = sRouletteMiddleResultTiles;
        source2 = sRouletteBottomResultTiles;
        dmaRegs = (volatile u32 *)0x040000D4;
        control = 0x80000080;
        busy = 0x80000000;
        do {
            register u32 offset asm("r1");
            register u32 value asm("r0");
            register int next asm("r5");
            register u8 *address asm("r0");

            offset = i << 10;
            {
                register u8 *base asm("r4");
                base = source0;
                /* agbcc reverses this commutative add; preserve the target offset+base register order. */
                asm volatile("add %0, %1, %2" : "=r"(address) : "r"(offset), "r"(base));
            }
            dmaRegs[0] = (u32)address;
            {
                register u8 *base asm("r4");
                base = (u8 *)0x06017000;
                address = base + offset;
            }
            dmaRegs[1] = (u32)address;
            dmaRegs[2] = control;
            value = dmaRegs[2];
            value = dmaRegs[2];
            value &= busy;
            next = i + 1;
            if (value != 0) {
                register u32 pollMask asm("r3");
                pollMask = 0x80000000;
                do {
                    value = dmaRegs[2];
                    value &= pollMask;
                } while (value != 0);
            }

            {
                register u8 *base asm("r3");
                base = source1;
                /* agbcc reverses this commutative add; preserve the target offset+base register order. */
                asm volatile("add %0, %1, %2" : "=r"(address) : "r"(offset), "r"(base));
            }
            dmaRegs[0] = (u32)address;
            {
                register u8 *base asm("r4");
                base = (u8 *)0x06017100;
                /* Keep the destination base in r4 after the preceding source-order boundary. */
                asm volatile("add %0, %1, %2" : "=r"(address) : "r"(offset), "r"(base));
            }
            dmaRegs[1] = (u32)address;
            dmaRegs[2] = control;
            value = dmaRegs[2];
            {
                register volatile u32 *waitDma asm("r4");
                waitDma = dmaRegs;
                value = dmaRegs[2];
                value &= busy;
                if (value != 0) {
                    register u32 pollMask asm("r3");
                    pollMask = 0x80000000;
                    do {
                        value = waitDma[2];
                        value &= pollMask;
                    } while (value != 0);
                }
            }

            {
                register u8 *base asm("r3");
                base = source2;
                /* agbcc reverses this commutative add; preserve the target offset+base register order. */
                asm volatile("add %0, %1, %2" : "=r"(address) : "r"(offset), "r"(base));
            }
            dmaRegs[0] = (u32)address;
            {
                register u8 *base asm("r4");
                base = (u8 *)0x06017200;
                /* Keep the destination base in r4 after the preceding source-order boundary. */
                asm volatile("add %0, %1, %2" : "=r"(address) : "r"(offset), "r"(base));
            }
            dmaRegs[1] = (u32)address;
            dmaRegs[2] = control;
            value = dmaRegs[2];
            {
                register volatile u32 *waitDma asm("r1");
                waitDma = dmaRegs;
                value = waitDma[2];
                value &= busy;
                if (value != 0) {
                    register u32 pollMask asm("r3");
                    pollMask = 0x80000000;
                    do {
                        value = waitDma[2];
                        value &= pollMask;
                    } while (value != 0);
                }
            }
            i = next;
        } while (i <= 3);
    }
}
