#include "minigames/roulette.h"

extern struct RouletteItem *gRouletteItemDrawOrder[3];
extern const u16 *gRouletteItemOamTable[15];
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
extern void SortRouletteItemsByScale(void);
extern void DrawRouletteScoreText(void);

void DrawRoulette(void)
{
    register int slot = 0;
    register int total asm("r9");
    register u16 *rawDst asm("r6");
    register struct RouletteMainState *mainState asm("r8");
    register const u16 *src asm("r3");
    register OamData *oamBase asm("r2");
    struct RouletteRenderStack stack;
    s32 inverse;
    u8 state;

    total = gOamSlotsUsed;
    {
        register int byteOffset asm("r0");
        byteOffset = total << 3;
        oamBase = gOamBuffer;
        rawDst = (u16 *)(byteOffset + (u32)oamBase);
    }

    {
        register int active asm("r1");
        register struct RouletteMainState *statePtr asm("r0");
        statePtr = &gUnk_30047E4;
        active = statePtr->active;
        mainState = statePtr;
        if (active != 0) {
            if (active == 1)
                src = sRouletteMainState1Oam[0].oam;
            if (active == 2)
                src = sRouletteMainState2Oam[0].oam;
            total += *src++;
            {
                register s16 *affineBAddress asm("r0");
                register s16 *affineCAddress asm("r1");
                register s16 *affineDAddress asm("r4");
                /* agbcc otherwise delays these stack addresses until after the OAM loop. */
                asm volatile("mov %0, sp\nadd %0, %0, #2" : "=r"(affineBAddress));
                stack.affineBPtr = affineBAddress;
                asm volatile("" : : : "memory");
                asm volatile("mov %0, sp\nadd %0, %0, #4" : "=r"(affineCAddress));
                stack.affineCPtr = affineCAddress;
                asm volatile("" : : : "memory");
                asm volatile("mov %0, sp\nadd %0, %0, #6" : "=r"(affineDAddress));
                stack.affineDPtr = affineDAddress;
            }
            if (slot < total) {
                register struct RouletteMainState *position asm("r5");
                register OamData *oam asm("r4");
                register int xMask asm("r10");
                register int attr2Mask asm("r12");
                position = mainState;
                oam = oamBase;
                xMask = 0x1FF;
                attr2Mask = -13;
                slot = total;
                do {
                    {
                        register int value asm("r2");
                        value = *src++;
                        *rawDst++ = value;
                        ((u8 *)oam)[0] = position->y + value - 16;
                        ((u8 *)oam)[1] |= 3;
                    }
                    {
                        register int value asm("r2");
                        register int coord asm("r1");
                        register int xOffset asm("r0");
                        register int maskTemp asm("r2");
                        value = *src++;
                        *rawDst++ = value;
                        xOffset = 8;
                        /* agbcc otherwise chooses r7 for the signed-load index. */
                        asm volatile("ldrsh %0, [%1, %2]" : "=r"(coord) : "r"(position), "r"(xOffset));
                        coord = value + coord;
                        coord -= 32;
                        /* agbcc otherwise copies sl through r0; the target uses r2. */
                        asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                        {
                            register int oldAttr asm("r2");
                            register int maskedAttr asm("r0");
                            oldAttr = oam->all.attr1;
                            maskedAttr = 0xFFFFFE00;
                            maskedAttr &= oldAttr;
                            maskedAttr |= coord;
                            oam->all.attr1 = maskedAttr;
                        }
                    }
                    {
                        register int oldByte asm("r1");
                        register int mask asm("r0");
                        oldByte = ((u8 *)oam)[3];
                        asm volatile("" : "+r"(oldByte) : : "memory");
                        mask = 15;
                        mask = -mask;
                        mask &= oldByte;
                        ((u8 *)oam)[3] = mask;
                    }
                    {
                        register int value asm("r0");
                        register int oldByte asm("r1");
                        value = *src;
                        *rawDst = value;
                        src++;
                        oldByte = ((u8 *)oam)[5];
                        asm volatile("" : "+r"(oldByte) : : "memory");
                        value = attr2Mask;
                        value &= oldByte;
                        ((u8 *)oam)[5] = value;
                    }
                    rawDst += 2;
                    oam++;
                    slot--;
                    asm volatile("" : "+r"(slot));
                } while (slot != 0);
                slot = total;
            }
            {
                register s32 sin64 asm("r5");
                register s32 sin0 asm("r4");
                register s32 negSin0 asm("r4");
                register u32 affineDResult asm("r0");

                {
                    register const s16 *sinPtr asm("r0");
                    register s32 scaleValue asm("r0");
                    register s32 result asm("r0");
                    sinPtr = sSinCosTable;
                    sinPtr += 64;
                    /* The earlier source pointer still occupies r3 in agbcc's allocator. */
                    asm volatile("mov r3, #0\nldrsh r5, [r0, r3]"
                                 : "=r"(sin64) : "r"(sinPtr) : "r3");
                    asm volatile("mov r4, r8\nmov r1, #4\nldrsh r0, [r4, r1]"
                                 : "=r"(scaleValue) : : "r1", "r4");
                    result = FixedMul(sin64, (s16)FixedInverse(scaleValue));
                    stack.affineA = result;
                }

                {
                    register const s16 *sinPtr asm("r2");
                    register s32 scaleValue asm("r0");
                    register s32 result asm("r0");
                    register s16 *outPtr asm("r3");
                    sinPtr = sSinCosTable;
                    asm volatile("mov r3, #0\nldrsh r4, [r2, r3]"
                                 : "=r"(sin0) : "r"(sinPtr) : "r3");
                    asm volatile("mov r1, r8\nmov r2, #4\nldrsh r0, [r1, r2]"
                                 : "=r"(scaleValue) : : "r1", "r2");
                    result = FixedMul(sin0, (s16)FixedInverse(scaleValue));
                    outPtr = stack.affineBPtr;
                    *outPtr = result;
                }

                {
                    register const s16 *sinPtr asm("r0");
                    register s32 scaleValue asm("r0");
                    register s32 result asm("r0");
                    register s16 *outPtr asm("r3");
                    sinPtr = sSinCosTable;
                    negSin0 = (u16)*sinPtr;
                    negSin0 = -negSin0;
                    negSin0 = (s16)negSin0;
                    asm volatile("mov r1, r8\nmov r2, #4\nldrsh r0, [r1, r2]"
                                 : "=r"(scaleValue) : : "r1", "r2");
                    result = FixedMul(negSin0, (s16)FixedInverse(scaleValue));
                    outPtr = stack.affineCPtr;
                    *outPtr = result;
                }

                {
                    register s32 scaleValue asm("r0");
                    register s32 result asm("r0");
                    register s16 *outPtr asm("r2");
                    asm volatile("mov r4, r8\nmov r1, #4\nldrsh r0, [r4, r1]"
                                 : "=r"(scaleValue) : : "r1", "r4");
                    result = FixedMul(sin64, (s16)FixedInverse(scaleValue));
                    affineDResult = (u16)result;
                    outPtr = stack.affineDPtr;
                    *outPtr = affineDResult;
                }

                gOamBuffer[0].all.affineParam = stack.affineA;
                {
                    register s16 *affineBAddress asm("r3");
                    register int value asm("r1");
                    affineBAddress = stack.affineBPtr;
                    value = *(u16 *)affineBAddress;
                    gOamBuffer[1].all.affineParam = value;
                }
                {
                    register s16 *affineCAddress asm("r4");
                    register int value asm("r1");
                    affineCAddress = stack.affineCPtr;
                    value = *(u16 *)affineCAddress;
                    gOamBuffer[2].all.affineParam = value;
                }
                gOamBuffer[3].all.affineParam = affineDResult;
            }
        }
    }

    asm volatile("" : "+r"(slot));
    {
        register u8 *statePtr asm("r1");
        statePtr = &gUnk_30047B9;
        asm volatile("" : "+r"(statePtr));
        state = *statePtr;
    }
    if ((u8)(state - 4) <= 1) {
        gRoulettePromptAnim.timer++;
        if (sRoulettePromptOam[gRoulettePromptAnim.frame].time < gRoulettePromptAnim.timer) {
            gRoulettePromptAnim.timer = 1;
            gRoulettePromptAnim.frame++;
            if (sRoulettePromptOam[gRoulettePromptAnim.frame].time == 0)
                gRoulettePromptAnim.frame = 0;
        }
        src = sRoulettePromptOam[gRoulettePromptAnim.frame].oam;
        total += *src++;
        if (slot < total) {
            register OamData *oam asm("r4");
            register OamData *oamBase2 asm("r1");
            register int xMask asm("r8");
            register int xMaskLoad asm("r5");
            register int attr1Mask asm("r10");
            register int attr1Load asm("r0");
            register int attr2Mask asm("r5");
            register int byteOffset asm("r0");
            register int totalTemp asm("r1");
            oamBase2 = gOamBuffer;
            xMaskLoad = 0x1FF;
            asm volatile("" : "+r"(xMaskLoad));
            xMask = xMaskLoad;
            attr1Load = 0xFFFFFE00;
            attr1Mask = attr1Load;
            attr2Mask = 13;
            attr2Mask = -attr2Mask;
            byteOffset = slot << 3;
            oam = (OamData *)(byteOffset + (u32)oamBase2);
            /* Preserve the target r0 copy of total before subtraction. */
            asm volatile("mov %0, %2\nsub %1, %0, %1"
                         : "=r"(totalTemp), "+r"(slot) : "r"(total));
            do {
                register int value asm("r2");
                register int coord asm("r1");
                value = *src++;
                *rawDst++ = value;
                {
                    register int out asm("r0");
                    out = value;
                    out += 64;
                    ((u8 *)oam)[0] = out;
                }

                value = *src++;
                *rawDst++ = value;
                coord = value;
                coord += 140;
                {
                    /* Keep the target's r8 -> r2 mask copy. */
                    asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                }
                {
                    register int oldAttr asm("r2");
                    register int maskedAttr asm("r0");
                    oldAttr = oam->all.attr1;
                    maskedAttr = attr1Mask;
                    maskedAttr &= oldAttr;
                    maskedAttr |= coord;
                    oam->all.attr1 = maskedAttr;
                }

                {
                    register int out asm("r0");
                    register int oldByte asm("r1");
                    out = *src;
                    *rawDst = out;
                    src++;
                    oldByte = ((u8 *)oam)[5];
                    out = attr2Mask;
                    out &= oldByte;
                    oldByte = 4;
                    out |= oldByte;
                    ((u8 *)oam)[5] = out;
                }
                rawDst += 2;
                oam++;
                slot--;
                asm volatile("" : "+r"(slot));
            } while (slot != 0);
            slot = total;
        }
    }

    {
        register u8 *rouletteStatePtr asm("r3");
        rouletteStatePtr = &gUnk_30047B9;
        if (*rouletteStatePtr > 6) {
            register int itemIndex asm("r4");
            itemIndex = 0;
            do {
                register struct RouletteItem **currentItemRef asm("r5");
                register struct RouletteItem **itemsBase asm("r0");
                register int itemOffset asm("r1");
                register int nextItem asm("r1");
                register struct RouletteItem *itemPtr asm("r0");
                register int itemZero asm("r5");
                register int itemX asm("r2");
                register int itemLimit asm("r0");
                itemsBase = gRouletteItemDrawOrder;
                itemOffset = itemIndex << 2;
                /* agbcc commutes this address add; preserve the target r1 + r0 order. */
                asm volatile("add %0, %1, %0" : "+r"(itemsBase) : "r"(itemOffset));
                itemPtr = *itemsBase;
                itemZero = 0;
                asm volatile("ldrsh %0, [%1, %2]" : "=r"(itemX) : "r"(itemPtr), "r"(itemZero));
                itemLimit = 250;
                itemLimit <<= 2;
                stack.itemOffset = itemOffset;
                nextItem = itemIndex + 1;
                stack.nextItem = nextItem;
                if (itemX != itemLimit) {
                    switch (gUnk_30047B9) {
                    case 7:
                    case 9:
                    case 11:
                        goto rouletteItemUpdate;
                    case 8:
                    case 10:
                    case 12:
                    default:
                        goto rouletteItemDraw;
                    }
rouletteItemUpdate:
                    SortRouletteItemsByScale();
rouletteItemDraw:
                    {
                        register const u16 **animBase asm("r1");
                        register struct RouletteItem **itemsBase2 asm("r2");
                        register int savedOffset asm("r3");
                        animBase = gRouletteItemOamTable;
                        itemsBase2 = gRouletteItemDrawOrder;
                        savedOffset = stack.itemOffset;
                        /* Keep the target operand order for this address calculation. */
                        asm volatile("add %0, %1, %2" : "=r"(currentItemRef) : "r"(savedOffset), "r"(itemsBase2));
                        src = animBase[(*currentItemRef)->value];
                    }
                    total += *src++;
                    {
                        register s16 *affineBAddress asm("r0");
                        register s16 *affineCAddress asm("r1");
                        affineBAddress = &stack.affineB;
                        stack.affineBPtr = affineBAddress;
                        asm volatile("mov %0, sp\nadd %0, %0, #4" : "=r"(affineCAddress));
                        stack.affineCPtr = affineCAddress;
                        affineBAddress += 2;
                        stack.affineDPtr = affineBAddress;
                    }
                    itemIndex++;
                    stack.nextItem = itemIndex;
                    if (slot < total) {
                        register int matrixIndex asm("r10");
                        register int nibbleMask asm("r8");
                        register int nibbleLoad asm("r1");
                        register int attr1Mask asm("r12");
                        register int attr1Load asm("r2");
                        stack.itemRef = currentItemRef;
                        matrixIndex = itemIndex;
                        nibbleLoad = 15;
                        asm volatile("" : "+r"(nibbleLoad) : : "memory");
                        /* Keep the persistent nibble mask in r8 for both priority paths. */
                        asm volatile("mov %0, %1" : "=r"(nibbleMask) : "r"(nibbleLoad));
                        attr1Load = 0xFFFFFE00;
                        asm volatile("" : "+r"(attr1Load) : : "memory");
                        attr1Mask = attr1Load;
                        do {
                            register int value asm("r2");
                            register int byteOffset asm("r0");
                            register OamData *oam asm("r5");
                            register OamData *base asm("r4");
                            register struct RouletteItem **savedRef asm("r1");
                            register struct RouletteItem *savedItem asm("r0");
                            register int coord asm("r1");

                            value = *src++;
                            *rawDst++ = value;
                            byteOffset = slot << 3;
                            base = gOamBuffer;
                            asm volatile("" : "+r"(base) : : "memory");
                            oam = (OamData *)(byteOffset + (u32)base);
                            savedRef = stack.itemRef;
                            savedItem = *savedRef;
                            ((u8 *)oam)[0] = savedItem->y + value - 16;
                            ((u8 *)oam)[1] |= 3;

                            value = *src++;
                            *rawDst++ = value;
                            {
                                register struct RouletteItem **ref asm("r4");
                                register struct RouletteItem *cur asm("r0");
                                register int zero asm("r4");
                                ref = stack.itemRef;
                                cur = *ref;
                                zero = 0;
                                asm volatile("ldrsh %0, [%1, %2]" : "=r"(coord) : "r"(cur), "r"(zero));
                            }
                            coord = value + coord;
                            coord -= 32;
                            coord &= 0x1FF;
                            {
                                register int oldAttr asm("r2");
                                register int maskedAttr asm("r0");
                                oldAttr = oam->all.attr1;
                                maskedAttr = attr1Mask;
                                maskedAttr &= oldAttr;
                                maskedAttr |= coord;
                                oam->all.attr1 = maskedAttr;
                            }
                            {
                                register int bits asm("r1");
                                register int seven asm("r0");
                                register int oldByte asm("r2");
                                register int mask asm("r0");
                                seven = 7;
                                bits = matrixIndex;
                                bits &= seven;
                                bits <<= 1;
                                oldByte = ((u8 *)oam)[3];
                                /* agbcc reuses seven; force the target's rematerialized 15. */
                                asm volatile("mov %0, #15" : "=r"(mask));
                                mask = -mask;
                                mask &= oldByte;
                                mask |= bits;
                                ((u8 *)oam)[3] = mask;
                            }

                            {
                                register int third asm("r0");
                                third = *src;
                                *rawDst = third;
                            }
                            src++;
                            rawDst++;
                            {
                                register u32 priority asm("r2");
                                register int oldByte asm("r0");
                                oldByte = ((u8 *)oam)[5];
                                priority = 13;
                                priority = -priority;
                                priority &= oldByte;
                                ((u8 *)oam)[5] = priority;
                                {
                                    register u8 *itemState asm("r1");
                                    register u32 itemStateValue asm("r0");
                                    itemState = &gUnk_30047B9;
                                    asm volatile("" : "+r"(itemState) : : "memory");
                                    itemStateValue = *itemState;
                                    if (itemStateValue > 10) {
                                        register u32 low asm("r1");
                                        register u32 high asm("r0");
                                        register u32 maskTemp asm("r2");
                                        high = priority >> 4;
                                        high++;
                                        high <<= 4;
                                        /* Preserve priority in r1 and keep the nibble mask in r2. */
                                        asm volatile("mov %0, %2\nmov %1, r8"
                                                     : "=r"(low), "=r"(maskTemp) : "r"(priority));
                                        low &= maskTemp;
                                        low |= high;
                                        high = (u8)low >> 4;
                                        high++;
                                        high <<= 4;
                                        low &= maskTemp;
                                        low |= high;
                                        ((u8 *)oam)[5] = low;
                                    } else if (itemStateValue > 8) {
                                        register u32 low asm("r0");
                                        register u32 high asm("r1");
                                        high = priority >> 4;
                                        high++;
                                        high <<= 4;
                                        {
                                            register u32 maskTemp asm("r4");
                                            /* Preserve priority in r0 and the nibble mask in r4. */
                                            asm volatile("mov %0, %2\nmov %1, r8"
                                                         : "=r"(low), "=r"(maskTemp) : "r"(priority));
                                            low &= maskTemp;
                                        }
                                        low |= high;
                                        ((u8 *)oam)[5] = low;
                                    }
                                }
                            }
                            rawDst++;
                            slot++;
                        } while (slot < total);
                    }

                    {
                        register const s16 *sinPtr asm("r0");
                        register s32 sin64 asm("r5");
                        register struct RouletteItem **affineItemRef asm("r4");
                        register int savedOffset asm("r2");
                        register struct RouletteItem **itemsBase3 asm("r3");
                        register s32 sin0 asm("r8");
                        register s32 negSin0 asm("r10");

                        /* Prevent agbcc from hoisting this literal load above the OAM loop. */
                        sinPtr = sSinCosTable;
                        asm volatile("" : "+r"(sinPtr) : : "memory");
                        sinPtr += 64;
                        /* agbcc otherwise chooses r7 for the zero index. */
                        asm volatile("mov r1, #0\nldrsh r5, [r0, r1]" : "=r"(sin64) : "r"(sinPtr) : "r1");
                        savedOffset = stack.itemOffset;
                        itemsBase3 = gRouletteItemDrawOrder;
                        /* Keep the target operand order (r2 + r3). */
                        asm volatile("add %0, %1, %2" : "=r"(affineItemRef) : "r"(savedOffset), "r"(itemsBase3));

                        {
                            register struct RouletteItem *scaleItem asm("r0");
                            scaleItem = *affineItemRef;
                            asm volatile("mov r1, #4\nldrsh r0, [r0, r1]"
                                         : "+r"(scaleItem) : : "r1");
                            inverse = (s32)scaleItem;
                        }
                        stack.affineA = FixedMul(sin64, (s16)FixedInverse(inverse));

                        {
                            register const s16 *zeroSinPtr asm("r2");
                            zeroSinPtr = sSinCosTable;
                            asm volatile("" : "+r"(zeroSinPtr) : : "memory");
                            /* Load sin(0) in r2, then preserve it in r8 across calls. */
                            asm volatile("mov r3, #0\nldrsh r2, [r2, r3]\nmov r8, r2"
                                         : "=r"(sin0) : "r"(zeroSinPtr) : "r2", "r3");
                        }
                        {
                            register struct RouletteItem *scaleItem asm("r0");
                            scaleItem = *affineItemRef;
                            asm volatile("mov r1, #4\nldrsh r0, [r0, r1]"
                                         : "+r"(scaleItem) : : "r1");
                            inverse = (s32)scaleItem;
                        }
                        {
                            register s32 result asm("r0");
                            result = FixedMul(sin0, (s16)FixedInverse(inverse));
                            /* agbcc selects r1 for the spill pointer; the target reloads it in r2. */
                            asm volatile("ldr r2, [sp, #8]\nstrh r0, [r2]"
                                         : "+r"(result) : : "r2", "memory");
                        }

                        {
                            register const s16 *negativeSinPtr asm("r3");
                            register int value asm("r0");
                            negativeSinPtr = sSinCosTable;
                            asm volatile("" : "+r"(negativeSinPtr) : : "memory");
                            value = *(u16 *)negativeSinPtr;
                            value = -value;
                            value = (s16)value;
                            negSin0 = value;
                        }
                        {
                            register struct RouletteItem *scaleItem asm("r0");
                            scaleItem = *affineItemRef;
                            asm volatile("mov r1, #4\nldrsh r0, [r0, r1]"
                                         : "+r"(scaleItem) : : "r1");
                            inverse = (s32)scaleItem;
                        }
                        {
                            register s32 result asm("r0");
                            result = FixedMul(negSin0, (s16)FixedInverse(inverse));
                            /* Match the target's r2 reload for the affine-C spill pointer. */
                            asm volatile("ldr r2, [sp, #12]\nstrh r0, [r2]"
                                         : "+r"(result) : : "r2", "memory");
                        }

                        {
                            register struct RouletteItem *scaleItem asm("r0");
                            scaleItem = *affineItemRef;
                            asm volatile("mov r3, #4\nldrsh r0, [r0, r3]"
                                         : "+r"(scaleItem) : : "r3");
                            inverse = (s32)scaleItem;
                        }
                        *stack.affineDPtr = FixedMul(sin64, (s16)FixedInverse(inverse));

                        {
                            register struct RouletteItem *scaleItem asm("r0");
                            register s32 scaleCheck asm("r1");
                            scaleItem = *affineItemRef;
                            asm volatile("mov r2, #4\nldrsh %0, [%1, r2]"
                                         : "=r"(scaleCheck) : "r"(scaleItem) : "r2");
                            if (scaleCheck > 512) {
                                register s32 result asm("r0");
                                stack.affineA = FixedMul(sin64, (s16)FixedInverse(512));
                                {
                                    register s16 *out asm("r3");
                                    result = FixedMul(sin0, (s16)FixedInverse(512));
                                    out = stack.affineBPtr;
                                    *out = result;
                                }
                                {
                                    register s16 *out asm("r1");
                                    result = FixedMul(negSin0, (s16)FixedInverse(512));
                                    out = stack.affineCPtr;
                                    *out = result;
                                }
                                {
                                    register s16 *out asm("r2");
                                    result = FixedMul(sin64, (s16)FixedInverse(512));
                                    out = stack.affineDPtr;
                                    *out = result;
                                }
                            } else if (scaleCheck <= 15) {
                                register s32 result asm("r0");
                                stack.affineA = FixedMul(sin64, (s16)FixedInverse(16));
                                {
                                    register s16 *out asm("r3");
                                    result = FixedMul(sin0, (s16)FixedInverse(16));
                                    out = stack.affineBPtr;
                                    *out = result;
                                }
                                {
                                    register s16 *out asm("r4");
                                    result = FixedMul(negSin0, (s16)FixedInverse(16));
                                    out = stack.affineCPtr;
                                    *out = result;
                                }
                                {
                                    register s16 *out asm("r5");
                                    result = FixedMul(sin64, (s16)FixedInverse(16));
                                    out = stack.affineDPtr;
                                    *out = result;
                                }
                            }
                        }
                    }
                    {
                        register OamData *base asm("r3");
                        register int next asm("r0");
                        register int byteOffset asm("r1");
                        register int firstValue asm("r0");
                        register int matrixBase asm("r2");
                        register int dstOffset asm("r0");
                        register s16 *valuePtrB asm("r4");
                        register s16 *valuePtrC asm("r5");
                        register s16 *valuePtrD asm("r1");
                        register int value asm("r1");

                        base = gOamBuffer;
                        next = stack.nextItem;
                        byteOffset = next << 5;
                        /* agbcc otherwise commutes this add. */
                        asm volatile("add %0, %0, %1" : "+r"(byteOffset) : "r"(base));
                        asm volatile("mov %0, sp" : "=r"(firstValue));
                        firstValue = *(u16 *)firstValue;
                        ((OamData *)byteOffset)->all.affineParam = firstValue;

                        value = stack.nextItem;
                        matrixBase = value << 2;
                        dstOffset = matrixBase + 1;
                        dstOffset <<= 3;
                        dstOffset += (int)base;
                        valuePtrB = stack.affineBPtr;
                        value = *(u16 *)valuePtrB;
                        ((OamData *)dstOffset)->all.affineParam = value;

                        dstOffset = matrixBase + 2;
                        dstOffset <<= 3;
                        dstOffset += (int)base;
                        valuePtrC = stack.affineCPtr;
                        value = *(u16 *)valuePtrC;
                        ((OamData *)dstOffset)->all.affineParam = value;

                        matrixBase += 3;
                        matrixBase <<= 3;
                        matrixBase += (int)base;
                        valuePtrD = stack.affineDPtr;
                        firstValue = *(u16 *)valuePtrD;
                        ((OamData *)matrixBase)->all.affineParam = firstValue;
                    }
                }
                itemIndex = stack.nextItem;
            } while (itemIndex <= 2);
        }
    }

/* removed empty asm for target pool placement */
    {
        register u8 *statePtr asm("r2");
        register u32 stateValue asm("r0");
        statePtr = &gUnk_30047B9;
        stateValue = *statePtr;
        stateValue -= 7;
        stateValue = (u8)stateValue;
        if (stateValue > 3) {
            src = sRouletteAffineTableB;
            total += *src++;
            if (slot < total) {
                register OamData *baseLoad asm("r1");
                register struct RouletteSmallState *positionLoad asm("r4");
                register struct RouletteSmallState *position asm("r8");
                register int attrMaskLoad asm("r5");
                register int attrByteMask asm("r10");
                register int byteOffset asm("r0");
                register OamData *oam asm("r4");
                register int xMaskLoad asm("r0");
                register int xMask asm("r12");
                register int totalTemp asm("r1");

                baseLoad = gOamBuffer;
                positionLoad = &gRouletteMiddleResult;
                /* Force the target low-register load before moving the pointer to r8. */
                asm volatile("mov %0, %1" : "=r"(position) : "r"(positionLoad));
                /* agbcc otherwise reuses an earlier mask instead of the target setup. */
                asm volatile("mov r5, #13\nneg r5, r5\nmov sl, r5" : : : "r5");
                byteOffset = slot << 3;
                /* agbcc commutes this add; keep the target byteOffset + base order. */
                asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(baseLoad));
                xMaskLoad = 0x1FF;
                /* Keep the literal load in the target low register before moving it to ip. */
                asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
                /* Preserve the target low-register copy of total before subtraction. */
                asm volatile("mov %0, %2\nsub %1, %0, %1"
                             : "=r"(totalTemp), "+r"(slot) : "r"(total));
                do {
                    register int value asm("r2");
                    register int coord asm("r1");
                    register struct RouletteSmallState *positionLow asm("r5");
                    register int out asm("r0");

                    value = *src++;
                    *rawDst++ = value;
                    positionLow = position;
                    out = *(u8 *)((u8 *)positionLow + 2);
                    out += value;
                    ((u8 *)oam)[0] = out;
                    {
                        register int oldByte asm("r1");
                        oldByte = ((u8 *)oam)[1];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        oldByte = 4;
                        out |= oldByte;
                        ((u8 *)oam)[1] = out;
                    }

                    value = *src++;
                    *rawDst++ = value;
                    out = 0;
                    asm volatile("ldrsh %0, [%1, %2]" : "=r"(coord) : "r"(positionLow), "r"(out));
                    /* Preserve target operand order. */
                    asm volatile("add %0, %1, %0" : "+r"(coord) : "r"(value));
                    {
                        /* Keep the target's ip -> r2 mask copy. */
                        asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                    }
                    {
                        register int oldAttr asm("r2");
                        register int maskedAttr asm("r0");
                        oldAttr = oam->all.attr1;
                        maskedAttr = -512;
                        maskedAttr &= oldAttr;
                        maskedAttr |= coord;
                        oam->all.attr1 = maskedAttr;
                    }

                    out = *src;
                    *rawDst = out;
                    src++;
                    {
                        register int oldByte asm("r1");
                        register int four asm("r5");
                        oldByte = ((u8 *)oam)[5];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        four = 4;
                        out |= four;
                        ((u8 *)oam)[5] = out;
                    }
                    rawDst += 2;
                    oam++;
                    slot--;
                } while (slot != 0);
                slot = total;
            }
        }
    }

    {
        register u8 *statePtr asm("r1");
        register u32 stateValue asm("r0");
        statePtr = &gUnk_30047B9;
        stateValue = *statePtr;
        stateValue -= 7;
        stateValue = (u8)stateValue;
        if (stateValue > 1) {
            src = sRouletteAffineTableA;
            total += *src++;
            if (slot < total) {
                register OamData *baseLoad asm("r1");
                register struct RouletteSmallState *positionLoad asm("r2");
                register struct RouletteSmallState *position asm("r8");
                register int byteOffset asm("r0");
                register OamData *oam asm("r4");
                register int xMaskLoad asm("r5");
                register int xMask asm("r12");
                register int totalTemp asm("r0");

                baseLoad = gOamBuffer;
                positionLoad = &gRouletteTopResult;
                /* Force the target low-register load before moving the pointer to r8. */
                asm volatile("mov %0, %1" : "=r"(position) : "r"(positionLoad));
                /* Materialize -13 in sl at this exact loop boundary. */
                asm volatile("mov r4, #13\nneg r4, r4\nmov sl, r4" : : : "r4");
                byteOffset = slot << 3;
                /* agbcc commutes this add; keep the target byteOffset + base order. */
                asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(baseLoad));
                xMaskLoad = 0x1FF;
                /* Keep the literal load in the target low register before moving it to ip. */
                asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
                /* Preserve the target low-register copy of total before subtraction. */
                asm volatile("mov %0, %2\nsub %1, %0, %1"
                             : "=r"(totalTemp), "+r"(slot) : "r"(total));
                do {
                    register int value asm("r2");
                    register int coord asm("r1");
                    register int out asm("r0");

                    value = *src++;
                    *rawDst++ = value;
                    {
                        register struct RouletteSmallState *positionLow asm("r1");
                        positionLow = position;
                        out = *(u8 *)((u8 *)positionLow + 2);
                    }
                    out += value;
                    ((u8 *)oam)[0] = out;
                    {
                        register int oldByte asm("r1");
                        oldByte = ((u8 *)oam)[1];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        /* The target rematerializes 4 in r2 for this OR. */
                        asm volatile("mov r2, #4\norr %0, r2" : "+r"(out) : : "r2");
                        ((u8 *)oam)[1] = out;
                    }

                    value = *src++;
                    *rawDst++ = value;
                    {
                        register struct RouletteSmallState *positionLow asm("r5");
                        positionLow = position;
                        out = 0;
                        asm volatile("ldrsh %0, [%1, %2]" : "=r"(coord) : "r"(positionLow), "r"(out));
                    }
                    asm volatile("add %0, %1, %0" : "+r"(coord) : "r"(value));
                    {
                        /* Keep the target's ip -> r2 mask copy. */
                        asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                    }
                    {
                        register int oldAttr asm("r2");
                        register int maskedAttr asm("r0");
                        oldAttr = oam->all.attr1;
                        maskedAttr = -512;
                        maskedAttr &= oldAttr;
                        maskedAttr |= coord;
                        oam->all.attr1 = maskedAttr;
                    }

                    out = *src;
                    *rawDst = out;
                    src++;
                    {
                        register int oldByte asm("r1");
                        register int four asm("r5");
                        oldByte = ((u8 *)oam)[5];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        four = 4;
                        out |= four;
                        ((u8 *)oam)[5] = out;
                    }
                    rawDst += 2;
                    oam++;
                    slot--;
                } while (slot != 0);
                slot = total;
            }
        }
    }

    {
        register u8 *statePtr asm("r1");
        register u32 stateValue asm("r0");
        statePtr = &gUnk_30047B9;
        stateValue = *statePtr;
        stateValue -= 7;
        stateValue = (u8)stateValue;
        if (stateValue > 5) {
            src = sRouletteAffineTableC;
            total += *src++;
            if (slot < total) {
                register OamData *baseLoad asm("r1");
                register struct RouletteSmallState *positionLoad asm("r2");
                register struct RouletteSmallState *position asm("r8");
                register int byteOffset asm("r0");
                register OamData *oam asm("r4");
                register int xMaskLoad asm("r5");
                register int xMask asm("r12");
                register int totalTemp asm("r0");

                baseLoad = gOamBuffer;
                positionLoad = &gRouletteBottomResult;
                /* Force the target low-register load before moving the pointer to r8. */
                asm volatile("mov %0, %1" : "=r"(position) : "r"(positionLoad));
                /* Materialize -13 in sl at this exact loop boundary. */
                asm volatile("mov r4, #13\nneg r4, r4\nmov sl, r4" : : : "r4");
                byteOffset = slot << 3;
                /* agbcc commutes this add; keep the target byteOffset + base order. */
                asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(baseLoad));
                xMaskLoad = 0x1FF;
                /* Keep the literal load in the target low register before moving it to ip. */
                asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
                /* Preserve the target low-register copy of total before subtraction. */
                asm volatile("mov %0, %2\nsub %1, %0, %1"
                             : "=r"(totalTemp), "+r"(slot) : "r"(total));
                do {
                    register int value asm("r2");
                    register int coord asm("r1");
                    register int out asm("r0");

                    value = *src++;
                    *rawDst++ = value;
                    {
                        register struct RouletteSmallState *positionLow asm("r1");
                        positionLow = position;
                        out = *(u8 *)((u8 *)positionLow + 2);
                    }
                    out += value;
                    ((u8 *)oam)[0] = out;
                    {
                        register int oldByte asm("r1");
                        oldByte = ((u8 *)oam)[1];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        /* The target rematerializes 4 in r2 for this OR. */
                        asm volatile("mov r2, #4\norr %0, r2" : "+r"(out) : : "r2");
                        ((u8 *)oam)[1] = out;
                    }

                    value = *src++;
                    *rawDst++ = value;
                    {
                        register struct RouletteSmallState *positionLow asm("r5");
                        positionLow = position;
                        out = 0;
                        asm volatile("ldrsh %0, [%1, %2]" : "=r"(coord) : "r"(positionLow), "r"(out));
                    }
                    asm volatile("add %0, %1, %0" : "+r"(coord) : "r"(value));
                    {
                        /* Keep the target's ip -> r2 mask copy. */
                        asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                    }
                    {
                        register int oldAttr asm("r2");
                        register int maskedAttr asm("r0");
                        oldAttr = oam->all.attr1;
                        maskedAttr = -512;
                        maskedAttr &= oldAttr;
                        maskedAttr |= coord;
                        oam->all.attr1 = maskedAttr;
                    }

                    out = *src;
                    *rawDst = out;
                    src++;
                    {
                        register int oldByte asm("r1");
                        register int four asm("r5");
                        oldByte = ((u8 *)oam)[5];
                        asm volatile("mov %0, sl" : "=r"(out));
                        out &= oldByte;
                        four = 4;
                        out |= four;
                        ((u8 *)oam)[5] = out;
                    }
                    rawDst += 2;
                    oam++;
                    slot--;
                } while (slot != 0);
                slot = total;
            }
        }
    }

    {
        register u8 *animationFlag asm("r1");
        register int flagValue asm("r0");
        animationFlag = &gUnk_30047E0;
/* removed empty asm for target pool placement */
        flagValue = *animationFlag;
        if (flagValue != 0) {
            register struct RouletteAnimationState *anim asm("r2");
            register const struct AnimationFrame *frames asm("r3");
            register int timerValue asm("r0");
            register u32 frameTime asm("r1");
            anim = &gUnk_30047DC;
/* removed empty asm for target pool placement */
            timerValue = anim->timer;
            timerValue++;
            anim->timer = timerValue;
            frames = sRouletteCenterResultOam;
/* removed empty asm for target pool placement */
            frameTime = frames[anim->frame].time;
            timerValue = (u16)timerValue;
            if (frameTime < timerValue) {
                timerValue = 1;
                anim->timer = timerValue;
                timerValue = anim->frame;
                timerValue++;
                anim->frame = timerValue;
                timerValue = anim->frame;
                if (frames[timerValue].time == 0) {
                    anim->frame = 0;
                    anim->timer = 0;
                    {
                        register int zero asm("r0");
                        register u8 *flagReload asm("r2");
                        /* The target materializes zero before loading the flag address. */
                        asm volatile("mov %0, #0" : "=r"(zero));
                        flagReload = &gUnk_30047E0;
                        *flagReload = zero;
                    }
                    DrawRouletteScoreText();
                }
            }
        }
    }

    {
        register const struct AnimationFrame *frames asm("r1");
        register struct RouletteAnimationState *anim asm("r0");
        register struct RouletteAnimationState *nextAnim asm("r5");
        register int frameIndex asm("r0");
        frames = sRouletteCenterResultOam;
        anim = &gUnk_30047DC;
        frameIndex = anim->frame;
        src = frames[frameIndex].oam;
        total += *src++;
        nextAnim = &gRouletteSideAnim;
/* removed empty asm for target pool placement */
        if (slot < total) {
            register OamData *base asm("r1");
            register int xMaskLoad asm("r4");
            register int xMask asm("r10");
            register int attr1MaskLoad asm("r0");
            register int attr1Mask asm("r12");
            register int attrByteLoad asm("r2");
            register int attrByteMask asm("r8");
            register int byteOffset asm("r0");
            register OamData *oam asm("r4");
            register int totalTemp asm("r0");

            base = gOamBuffer;
            xMaskLoad = 0x1FF;
            /* Keep the target r4 literal load before moving the mask to sl. */
            asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
            attr1MaskLoad = -512;
            /* Keep the target r0 literal load before moving the mask to ip. */
            asm volatile("mov %0, %1" : "=r"(attr1Mask) : "r"(attr1MaskLoad));
            /* agbcc chooses r0 here; the target materializes -13 through r2 into r8. */
            asm volatile("mov r2, #13\nneg r2, r2\nmov %0, r2"
                         : "=r"(attrByteMask) : : "r2");
            byteOffset = slot << 3;
            /* Preserve the target's r0 + r1 operand order directly into r4. */
            asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(base));
            /* Preserve the target r0 copy of total before subtraction. */
            asm volatile("mov %0, %2\nsub %1, %0, %1"
                         : "=r"(totalTemp), "+r"(slot) : "r"(total));
            do {
                register int value asm("r2");
                register int out asm("r0");
                register int coord asm("r1");

                value = *src++;
                *rawDst++ = value;
                out = value;
                out += 24;
                ((u8 *)oam)[0] = out;

                value = *src++;
                *rawDst++ = value;
                coord = value;
                coord += 21;
                {
                    /* The target copies sl through r2 before masking. */
                    asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                }
                {
                    register int oldAttr asm("r2");
                    oldAttr = oam->all.attr1;
                    out = attr1Mask;
                    out &= oldAttr;
                    out |= coord;
                    oam->all.attr1 = out;
                }

                out = *src;
                *rawDst = out;
                src++;
                {
                    register int oldByte asm("r1");
                    oldByte = ((u8 *)oam)[5];
                    out = attrByteMask;
                    out &= oldByte;
                    ((u8 *)oam)[5] = out;
                }
                rawDst += 2;
                oam++;
                slot--;
            } while (slot != 0);
            slot = total;
        }

        {
            register int timerValue asm("r0");
            register int frameIndex2 asm("r1");
            register const struct AnimationFrame *nextFrames asm("r3");
            register u32 frameTime asm("r1");
            timerValue = nextAnim->timer;
            timerValue++;
            nextAnim->timer = timerValue;
            frameIndex2 = nextAnim->frame;
            frameIndex2 <<= 3;
            /*
             * agbcc hoists this literal into r7 across the preceding OAM loop,
             * clobbering the live slot counter. Keep the single target load here.
             */
            nextFrames = sRouletteSideResultOam; /* tied barrier removed for pool placement */
            /* agbcc commutes this address add; preserve frameIndex2 + nextFrames. */
            asm volatile("add %0, %0, %1" : "+r"(frameIndex2) : "r"(nextFrames));
            frameTime = *(u8 *)((u8 *)frameIndex2 + 4);
            timerValue = (u16)timerValue;
            if (frameTime < timerValue) {
                timerValue = 1;
                nextAnim->timer = timerValue;
                timerValue = nextAnim->frame;
                timerValue++;
                nextAnim->frame = timerValue;
                timerValue = nextAnim->frame;
                if (nextFrames[timerValue].time == 0)
                    nextAnim->frame = 0;
            }
        }

        frameIndex = nextAnim->frame;
        frameIndex <<= 3;
        {
            register const struct AnimationFrame *sideFrames asm("r4");
            register const struct AnimationFrame *framePtr asm("r0");
            /* Prevent reuse of the earlier literal; the target reloads it in r4 here. */
            sideFrames = sRouletteSideResultOam; asm volatile("" : "+r"(sideFrames) : : "memory");
            /* Preserve the target frameIndex + sideFrames operand order in r0. */
            asm volatile("add %0, %0, %1" : "+r"(frameIndex) : "r"(sideFrames));
            framePtr = (const struct AnimationFrame *)frameIndex;
            src = framePtr->oam;
        }
        total += *src++;
        if (slot < total) {
            register OamData *base asm("r1");
            register int xMaskLoad asm("r0");
            register int xMask asm("r10");
            register int attr1MaskLoad asm("r2");
            register int attr1Mask asm("r12");
            register int attrByteLoad asm("r4");
            register int attrByteMask asm("r8");
            register int byteOffset asm("r0");
            register OamData *oam asm("r4");
            register int totalTemp asm("r0");

            base = gOamBuffer;
            xMaskLoad = 0x1FF;
            /* Keep the target r0 literal load before moving the mask to sl. */
            asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
            attr1MaskLoad = -512;
            /* Keep the target r2 literal load before moving the mask to ip. */
            asm volatile("mov %0, %1" : "=r"(attr1Mask) : "r"(attr1MaskLoad));
            /* agbcc chooses r0; the target materializes -13 through r4 into r8. */
            asm volatile("mov r4, #13\nneg r4, r4\nmov %0, r4"
                         : "=r"(attrByteMask) : : "r4");
            byteOffset = slot << 3;
            /* Preserve the target's r0 + r1 operand order directly into r4. */
            asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(base));
            /* Preserve the target r0 copy of total before subtraction. */
            asm volatile("mov %0, %2\nsub %1, %0, %1"
                         : "=r"(totalTemp), "+r"(slot) : "r"(total));
            do {
                register int value asm("r2");
                register int out asm("r0");
                register int coord asm("r1");

                value = *src++;
                *rawDst++ = value;
                out = value;
                out += 112;
                ((u8 *)oam)[0] = out;

                value = *src++;
                *rawDst++ = value;
                coord = value;
                coord += 16;
                {
                    /* The target copies sl through r2 before masking. */
                    asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                }
                {
                    register int oldAttr asm("r2");
                    oldAttr = oam->all.attr1;
                    out = attr1Mask;
                    out &= oldAttr;
                    out |= coord;
                    oam->all.attr1 = out;
                }

                out = *src;
                *rawDst = out;
                src++;
                {
                    register int oldByte asm("r1");
                    oldByte = ((u8 *)oam)[5];
                    out = attrByteMask;
                    out &= oldByte;
                    oldByte = 4;
                    out |= oldByte;
                    ((u8 *)oam)[5] = out;
                }
                rawDst += 2;
                oam++;
                slot--;
            } while (slot != 0);
            slot = total;
        }

        frameIndex = nextAnim->frame;
        frameIndex <<= 3;
        {
            register const struct AnimationFrame *sideFrames asm("r3");
            register const struct AnimationFrame *framePtr asm("r0");
            /* The target performs a separate r3 literal load for the right-side list. */
            sideFrames = sRouletteSideResultOam; /* tied barrier removed for pool placement */
            /* Preserve the target frameIndex + sideFrames operand order in r0. */
            asm volatile("add %0, %0, %1" : "+r"(frameIndex) : "r"(sideFrames));
            framePtr = (const struct AnimationFrame *)frameIndex;
            src = framePtr->oam;
        }
        total += *src++;
        if (slot < total) {
            register OamData *base asm("r1");
            register int xMaskLoad asm("r4");
            register int xMask asm("r8");
            register int attr1MaskLoad asm("r5");
            register int attr1Mask asm("r10");
            register int attrByteMask asm("r5");
            register int byteOffset asm("r0");
            register OamData *oam asm("r4");
            register int totalTemp asm("r0");

            base = gOamBuffer;
            xMaskLoad = 0x1FF;
            /* Keep the target r4 literal load before moving the mask to r8. */
            asm volatile("mov %0, %1" : "=r"(xMask) : "r"(xMaskLoad));
            attr1MaskLoad = -512;
            /* Keep the target r5 literal load before moving the mask to sl. */
            asm volatile("mov %0, %1" : "=r"(attr1Mask) : "r"(attr1MaskLoad));
            attrByteMask = -13;
            byteOffset = slot << 3;
            /* Preserve the target's r0 + r1 operand order directly into r4. */
            asm volatile("add %0, %1, %2" : "=r"(oam) : "r"(byteOffset), "r"(base));
            /* Preserve the target r0 copy of total before subtraction. */
            asm volatile("mov %0, %2\nsub %1, %0, %1"
                         : "=r"(totalTemp), "+r"(slot) : "r"(total));
            do {
                register int value asm("r2");
                register int out asm("r0");
                register int coord asm("r1");

                value = *src++;
                *rawDst++ = value;
                out = value;
                out += 112;
                ((u8 *)oam)[0] = out;

                value = *src++;
                *rawDst++ = value;
                coord = value;
                coord += 224;
                {
                    /* The target copies r8 through r2 before masking. */
                    asm volatile("mov r2, %1\nand %0, r2" : "+r"(coord) : "r"(xMask) : "r2");
                }
                {
                    register int oldAttr asm("r2");
                    oldAttr = oam->all.attr1;
                    out = attr1Mask;
                    out &= oldAttr;
                    out |= coord;
                    oam->all.attr1 = out;
                }

                out = *src;
                *rawDst = out;
                src++;
                {
                    register int oldByte asm("r1");
                    oldByte = ((u8 *)oam)[5];
                    out = attrByteMask;
                    out &= oldByte;
                    oldByte = 4;
                    out |= oldByte;
                    /*
                     * agbcc otherwise inserts the literal pool between this store and
                     * the following raw OAM pointer increment. Keep only these two
                     * target instructions in one localized compiler boundary.
                     */
                    asm volatile("strb %1, [%2, #5]\nadd %0, #4"
                                 : "+r"(rawDst) : "r"(out), "r"(oam) : "memory");
                }
                oam++;
                slot--;
            } while (slot != 0);
        }
    }

    {
        register int finalTotal asm("r4");
        register u8 *slotsUsed asm("r3");
        finalTotal = total;
        slotsUsed = &gOamSlotsUsed;
        asm volatile("" : "+r"(slotsUsed));
        *slotsUsed = finalTotal;
    }
}
