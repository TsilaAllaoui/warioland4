#include "minigames/roulette.h"

int MoveRouletteResultIntoSlot(void)
{
    register u8 *progressPtr;
    register s16 *tileStepPtr asm("r4");
    register u16 *tileBasePtr asm("r5");
    register s16 *xStepPtr asm("r6");
    register u16 *xBasePtr asm("r8");
    register s16 *yStepPtr asm("r9");
    register u16 *yBasePtr asm("sl");
    u8 progress;

    {
        register u8 *progressAddress asm("r0");
        register u8 initialProgress asm("r1");
        progressAddress = &gRouletteMoveProgress;
        initialProgress = *progressAddress;
        progressPtr = progressAddress;
        progress = initialProgress;
    }
    tileStepPtr = &gRouletteMoveStepTile;
    tileBasePtr = &gRouletteMoveStartTile;
    xStepPtr = &gRouletteMoveStepX;
    xBasePtr = &gRouletteMoveStartX;
    yStepPtr = &gRouletteMoveStepY;
    yBasePtr = &gRouletteMoveStartY;

    if (progress == 0) {
        *tileStepPtr = __divsi3(((s16)*tileBasePtr - 256) << 5, 30);
        *xStepPtr = __divsi3((122 - (s16)*xBasePtr) << 5, 30);

        switch (gUnk_30047B9) {
        case 8:
            *yStepPtr = __divsi3((88 - (s16)*yBasePtr) << 5, 30);
            break;
        case 10:
            {
                register s16 *base asm("r2");
                register s32 zero asm("r0");
                register s32 baseValue asm("r1");
                base = (s16 *)yBasePtr;
                zero = 0;
                /* Preserve the target's r2 base/r0 zero signed load. */
                asm volatile("ldrsh %0, [%1, %2]"
                             : "=r"(baseValue)
                             : "r"(base), "r"(zero));
                *yStepPtr = __divsi3((106 - baseValue) << 5, 30);
            }
            break;
        case 12:
            {
                register s16 *base asm("r2");
                register s32 zero asm("r0");
                register s32 baseValue asm("r1");
                base = (s16 *)yBasePtr;
                zero = 0;
                /* Preserve the target's r2 base/r0 zero signed load. */
                asm volatile("ldrsh %0, [%1, %2]"
                             : "=r"(baseValue)
                             : "r"(base), "r"(zero));
                *yStepPtr = __divsi3((116 - baseValue) << 5, 30);
            }
            break;
        }
    }

    progress = *progressPtr + 1;
    *progressPtr = progress;

    {
        register struct RouletteItem **refs asm("r3");
        register struct RouletteItem *item asm("r2");
        register s32 step asm("r1");
        register s32 value asm("r0");

        refs = gRouletteItemDrawOrder;
        item = refs[0];
        step = *tileStepPtr;
        value = *progressPtr;
        step *= value;
        step >>= 5;
        value = *tileBasePtr;
        value -= step;
        item->scale = value;

        item = refs[0];
        {
            register s32 zero asm("r4");
            zero = 0;
            /* agbcc normally uses r0 as the signed-load offset here. Keep the
             * target's already-dead r4 zero for this single ldrsh. */
            asm volatile("ldrsh %0, [%1, %2]"
                         : "=r"(step)
                         : "r"(xStepPtr), "r"(zero));
        }
        value = *progressPtr;
        value *= step;
        value >>= 5;
        /* Prevent agbcc from moving the r8 pointer copy before the shift. */
        asm volatile("" : "+r"(value));
        step = *xBasePtr;
        value += step;
        item->x = value;

        item = refs[0];
        {
            register s16 *stepBase asm("r4");
            register s32 zero asm("r0");
            stepBase = yStepPtr;
            zero = 0;
            /* Preserve the target's r4 base/r0 zero signed load. */
            asm volatile("ldrsh %0, [%1, %2]"
                         : "=r"(step)
                         : "r"(stepBase), "r"(zero));
        }
        value = *progressPtr;
        value *= step;
        value >>= 5;
        /* Prevent agbcc from moving the sl pointer copy before the shift. */
        asm volatile("" : "+r"(value));
        step = *yBasePtr;
        value += step;
        item->y = value;

        if (*progressPtr == 30) {
            register u32 state asm("r2");
            state = gUnk_30047B9;
            if ((state == 8 && refs[0]->value == gRouletteWinningValues[0]) ||
                (state == 10 && refs[0]->value == gRouletteWinningValues[1]) ||
                (state == 12 && refs[0]->value == gRouletteWinningValues[2])) {
                m4aSongNumStart(580);
            } else {
                m4aSongNumStart(581);
            }

            {
                register u8 *resetProgress asm("r7");
                register struct RouletteItem **resetRefs asm("r12");
                register u8 *selectedPtr asm("r8");
                register u8 *sequencePtr asm("r9");
                register u16 *yPtr asm("r0");
                register u8 *statePtr asm("r5");
                register int zero asm("r6");
                register int yForState8 asm("r4");
                register int yForState10 asm("r2");
                register int count asm("r3");
                register struct RouletteItem **refsLoad asm("r2");
                register u8 *selectedLoad asm("r4");
                register u8 *sequenceLoad asm("r0");
                register struct RouletteItem *itemBase asm("r0");

                resetProgress = &gRouletteMoveProgress;
                refsLoad = gRouletteItemDrawOrder;
                /* These empty boundaries keep the two literal loads in the
                 * target low registers before they are copied to ip/r8. */
                asm volatile("" : "+r"(refsLoad));
                resetRefs = refsLoad;
                selectedLoad = &gRouletteSelectedItemIndex;
                asm volatile("" : "+r"(selectedLoad));
                selectedPtr = selectedLoad;
                sequenceLoad = &gRouletteValueSequenceIndex;
                asm volatile("" : "+r"(sequenceLoad));
                sequencePtr = sequenceLoad;
                itemBase = gRouletteItems;
                zero = 0;
                yPtr = (u16 *)itemBase;
                yPtr++;
                statePtr = &gUnk_30047B9;
                yForState8 = 106;
                yForState10 = 116;
                count = 2;
                do {
                    ((u8 *)yPtr)[5] = zero;
                    switch (*statePtr) {
                    case 8:
                        *yPtr = yForState8;
                        break;
                    case 10:
                        *yPtr = yForState10;
                        break;
                    }
                    yPtr += 6;
                    count--;
                } while (count >= 0);

                {
                    register struct RouletteItem **refsLow asm("r1");
                    register struct RouletteItem *first asm("r2");
                    register int clear asm("r1");
                    register u8 *selectedLow asm("r2");
                    register u8 *sequenceLow asm("r4");

                    refsLow = resetRefs;
                    first = refsLow[0];
                    clear = 0;
                    first->x = 1000;
                    /* agbcc inserts a redundant r7-to-r0 copy for this store;
                     * constrain only the target strb instruction. */
                    asm volatile("strb %1, [%0]"
                                 :
                                 : "r"(resetProgress), "r"(clear)
                                 : "memory");
                    selectedLow = selectedPtr;
                    *selectedLow = clear;
                    sequenceLow = sequencePtr;
                    *sequenceLow = clear;
                }
            }
            return 1;
        }
    }
    return 0;
}
