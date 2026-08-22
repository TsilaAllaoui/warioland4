#include "minigames/roulette.h"

#define ROULETTE_TARGET_ADD(value, base) \
    asm volatile("add %0, %0, %1" : "+r"(value) : "r"(base))

void UpdateRouletteWheel(void)
{
    register struct RouletteItem *base asm("r6");
    register struct RouletteItem *current asm("r3");
    register const s16 *sinTable asm("r5");
    register s16 *speedPtr;
    register s32 maxAngle asm("r12");
    register int count asm("r4");

    {
        register struct RouletteItem *first asm("r4");
        first = gRouletteItems;
        if (first->active == 0) {
            LoadRouletteResultTiles();
            first->active = 1;
        }
        base = first;
    }

    maxAngle = 255 << 5;
    sinTable = sSinCosTable;
    current = base;
    speedPtr = &gRouletteAngularSpeed;
    count = 2;
    do {
        if (current->active != 0) {
            {
                register u16 speed asm("r0");
                register u16 oldAngle asm("r2");
                register u16 sum asm("r1");
                register s32 signedSum asm("r0");

                speed = *speedPtr;
                oldAngle = current->angle;
                sum = speed + oldAngle;
                current->angle = sum;
                signedSum = (s16)sum;
                if (signedSum > maxAngle) {
                    register s32 correction asm("r2");
                    register u16 corrected asm("r0");

                    correction = -8160;
                    /* agbcc reverses the target's sum/correction register assignment here. */
                    asm volatile("add %0, %1, %2" : "=r"(corrected) : "r"(sum), "r"(correction));
                    current->angle = corrected;
                }
            }

            {
                register s32 index asm("r2");
                register s32 sample asm("r0");
                register s32 product asm("r1");

                index = (s16)current->angle >> 5;
                {
                    register s32 offset asm("r0");
                    register const s16 *samplePtr asm("r0");

                    offset = index;
                    offset += 64;
                    offset <<= 1;
                    samplePtr = (const s16 *)offset;
                    ROULETTE_TARGET_ADD(samplePtr, sinTable);
                    sample = *samplePtr;
                }
                product = (sample << 3) + sample;
                product >>= 5;
                sample = 124;
                sample -= product;
                current->x = sample;

                sample = sinTable[index];
                index = 256;
                asm volatile("" : "+r"(index));
                sample += index;
                product = (u32)sample >> 31;
                sample += product;
                sample >>= 1;
                sample <<= 1;
                current->scale = sample;
            }
        }
        current++;
        count--;
    } while (count >= 0);

    {
        register s32 accumulatorValue asm("r0");
        register s32 zeroOffset asm("r1");

        accumulatorValue = (s32)&gRouletteAngularAcceleration;
        zeroOffset = 0;
        /* Keep the target's r1 zero offset for the signed halfword read. */
        asm volatile("ldrsh %0, [%0, %1]" : "+r"(accumulatorValue) : "r"(zeroOffset));
        if (accumulatorValue == 0) {
        register volatile u8 *selectedIndex asm("r3");
        register const s16 *selectedSin asm("r4");

        selectedIndex = &gRouletteSelectedItemIndex;
        {
            register struct RouletteItem *selected asm("r0");
            u8 index;

            index = *selectedIndex;
            selected = (struct RouletteItem *)((index * 3) << 2);
            ROULETTE_TARGET_ADD(selected, base);
            selected->angle = 224 << 5;
        }

        {
            register struct RouletteItem *selected asm("r2");
            register s32 sample asm("r0");
            register s32 product asm("r1");
            s32 index;

            {
                u8 selectedValue;

                selectedValue = *selectedIndex;
                selected = (struct RouletteItem *)((selectedValue * 3) << 2);
                ROULETTE_TARGET_ADD(selected, base);
            }
            selectedSin = sSinCosTable;
            index = (s16)selected->angle >> 5;
            {
                register s32 offset asm("r0");
                register const s16 *samplePtr asm("r0");

                offset = index;
                offset += 64;
                offset <<= 1;
                samplePtr = (const s16 *)offset;
                ROULETTE_TARGET_ADD(samplePtr, selectedSin);
                sample = *samplePtr;
            }
            product = (sample << 3) + sample;
            product >>= 5;
            sample = 124;
            sample -= product;
            selected->x = sample;
        }

        {
            register struct RouletteItem *selected asm("r0");
            register s32 one asm("r1");

            {
                u8 selectedValue;

                selectedValue = *selectedIndex;
                selected = (struct RouletteItem *)((selectedValue * 3) << 2);
                ROULETTE_TARGET_ADD(selected, base);
            }
            one = 1;
            selected->active = one;
        }

        {
            register struct RouletteItem *selected asm("r2");
            register s32 sample asm("r0");
            register s32 roundingAdjustment asm("r1");
            s32 index;

            {
                u8 selectedValue;

                selectedValue = *selectedIndex;
                selected = (struct RouletteItem *)((selectedValue * 3) << 2);
                ROULETTE_TARGET_ADD(selected, base);
            }
            index = (s16)selected->angle >> 5;
            sample = selectedSin[index];
            roundingAdjustment = 256;
            sample += roundingAdjustment;
            roundingAdjustment = (u32)sample >> 31;
            sample += roundingAdjustment;
            sample >>= 1;
            sample <<= 1;
            selected->scale = sample;
        }

        {
            register struct RouletteItem *selected asm("r1");

            {
                u8 selectedValue;

                selectedValue = *selectedIndex;
                selected = (struct RouletteItem *)((selectedValue * 3) << 2);
                ROULETTE_TARGET_ADD(selected, base);
            }
            selected->value = gRouletteValuePool[gRouletteValueSequenceIndex];
        }

        if (gUnk_30047B9 == 7)
            m4aSongNumStart(584);
        if (gUnk_30047B9 == 9)
            m4aSongNumStart(585);
        if (gUnk_30047B9 == 11)
            m4aSongNumStart(586);
        }
    }

    {
        register s16 *accumulatorPtr asm("r2");
        register s16 *speedPtr2 asm("r0");
        register u16 sum asm("r0");

        accumulatorPtr = &gRouletteAngularAcceleration;
        speedPtr2 = &gRouletteAngularSpeed;
        /* agbcc otherwise swaps the accumulator pointer/value registers. */
        asm volatile(
            "ldrh r0, [r0]\n\t"
            "ldrh r1, [r2]\n\t"
            "add r0, r0, r1\n\t"
            "strh r0, [r2]"
            : "=r"(sum)
            : "0"(speedPtr2), "r"(accumulatorPtr)
            : "r1", "memory");
        if ((s16)sum > 2047) {
        register u8 zero asm("r4");
        register volatile u8 *selectedPtr asm("r2");
        register u32 selectedValue asm("r1");
        register volatile u8 *sequencePtr asm("r3");
        register u32 sequenceValue asm("r0");

        zero = 0;
        /* r2 still holds &gRouletteAngularAcceleration; agbcc otherwise rematerializes zero in r0. */
        asm volatile("strh r4, [r2]" : : : "memory");
        selectedPtr = &gRouletteSelectedItemIndex;
        selectedValue = *selectedPtr;
        selectedValue++;
        *selectedPtr = selectedValue;
        sequencePtr = &gRouletteValueSequenceIndex;
        sequenceValue = *sequencePtr;
        sequenceValue++;
        *sequencePtr = sequenceValue;
        selectedValue = (u8)selectedValue;
        if (selectedValue > 2)
            *selectedPtr = zero;
        {
            register u16 *limitPtr asm("r1");
            register u32 currentSequence asm("r0");
            register u32 limit asm("r1");

            limitPtr = &gRouletteValueCount;
            asm volatile("" : "+r"(limitPtr));
            currentSequence = *sequencePtr;
            limit = *limitPtr;
            if (currentSequence >= limit)
                *sequencePtr = zero;
        }
        }
    }
}
