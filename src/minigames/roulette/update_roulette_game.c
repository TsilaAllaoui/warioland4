#include "minigames/roulette.h"

int UpdateRouletteGame(void)
{
    register u8 *statePtr;
    register u8 *stateLoad;
    register u32 sound asm("r0");
    register s8 *fadePtr asm("r2");
    register u8 fadeRaw asm("r3");
    register s32 fade asm("r0");
    register int parity asm("r1");
    u32 state;

    stateLoad = &gUnk_30047B9;
    state = *stateLoad;
    statePtr = stateLoad;
    switch (state) {
    case 0:
        if (func_8089B9C(40) == 0)
            return 0;
        asm volatile("@ roulette case 0 success boundary");
        goto advanceStateReload;

    case 1:
        gUnk_30047E4.scale -= 20;
        if (gUnk_30047E4.scale > 31)
            return 0;
        gUnk_30047E4.scale = 32;
        gUnk_30047E4.active = 0;
        goto advanceStateCached;

    case 2:
        if (func_8089B9C(60) == 0)
            return 0;
        asm volatile("@ roulette case 2 success boundary");
        goto advanceStateReload;

    case 3:
        gUnk_300188E++;
        if ((gUnk_300188E & 1) != 0)
            return 0;
        fadePtr = &gRouletteBlendEvb;
        fadeRaw = *(u8 *)fadePtr;
        fade = *fadePtr;
        if (fade > 0)
            goto fadeForward;
        gRouletteTopResult.frame = gRouletteWinningValues[0];
        gRouletteMiddleResult.frame = gRouletteWinningValues[1];
        gRouletteBottomResult.frame = gRouletteWinningValues[2];
        RefreshRouletteResultTiles();
        goto advanceStateReload;

    case 4:
        gUnk_300188E++;
        if ((gUnk_300188E & 1) != 0)
            return 0;
        if (gRouletteBlendEvb > 15)
            goto advanceStateCached;
        gRouletteBlendEva--;
        gRouletteBlendEvb++;
        return 0;

    case 5:
        {
            register u16 *timerPtr asm("r3");
            register int timer asm("r2");
            s16 period;

            timerPtr = &gUnk_30047BC;
            (*timerPtr)++;
            timer = *timerPtr;
            period = gRouletteTickPeriod;
            if (timer == period * 4) {
                *timerPtr = 0;
                m4aSongNumStart(592);
                sound = 590;
                goto playSoundAndAdvance;
            }
            if (__modsi3(timer, period) == 0)
                m4aSongNumStart(591);
        }
        return 0;

    case 6:
        {
            parity = (u32)&gUnk_300188E;
            /* agbcc otherwise swaps r0/r1 for this tightly related counter update. */
            asm volatile(
                "ldrh %0, [%1]\n"
                "add %0, #1\n"
                "strh %0, [%1]"
                : "=r"(fade)
                : "r"(parity)
                : "memory");
            parity = 1;
            parity &= fade;
            if (parity != 0)
                return 0;
            fadePtr = &gRouletteBlendEvb;
            fadeRaw = *(u8 *)fadePtr;
            fade = *fadePtr;
            if (fade <= 0)
                goto fadeFinished;
        }

fadeForward:
        fade = (u32)&gRouletteBlendEva;
        /* Keep the display-byte increment in r0/r1 as emitted by the original compiler. */
        asm volatile(
            "ldrb %1, [%0]\n"
            "add %1, #1\n"
            "strb %1, [%0]"
            : "+r"(fade), "=r"(parity)
            :
            : "memory");
        /* Preserve the target's r0 result instead of decrementing the live r3 byte. */
        asm volatile(
            "sub %0, %1, #1\n"
            "strb %0, [%2]"
            : "=r"(fade)
            : "r"(fadeRaw), "r"(fadePtr)
            : "memory");
        return 0;

fadeFinished:
        gRouletteBlendEva = parity;
        *fadePtr = 16;
        gRouletteStopRequested = parity;

advanceStateCached:
        (*statePtr)++;
        return 0;

    case 7:
        UpdateRouletteWheel();
        if (IsRouletteConfirmPressed() == 0)
            return 0;
        SortRouletteItemsByScale();
        {
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem **ref asm("r3");
            register int hiddenX asm("r2");
            register int count asm("r1");
            register struct RouletteItem *hidden asm("r0");

            base = gRouletteItemDrawOrder;
            hiddenX = 250;
            hiddenX <<= 2;
            ref = base + 1;
            count = 1;
            do {
                hidden = *ref++;
                hidden->x = hiddenX;
                count--;
            } while (count >= 0);
        }
        m4aSongNumStart(587);
        asm volatile("@ roulette case 7 copy boundary");
        {
            register struct RouletteSmallState *result asm("r1");
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem *item asm("r2");

            result = &gRouletteTopResult;
            base = gRouletteItemDrawOrder;
            item = base[0];
            result->frame = item->value;
            gRouletteMoveStartX = item->x;
            gRouletteMoveStartY = item->y;
            gRouletteMoveStartTile = item->scale;
            gRouletteAngularAcceleration = 0;
        }
        UpdateRouletteResultTiles();
        asm volatile("@ roulette case 7 end boundary");
        goto advanceStateReload;

    case 8:
        {
            register int done asm("r4");
            done = MoveRouletteResultIntoSlot();
            if (done != 1)
                return 0;
            {
                register u8 *caseState asm("r1");
                caseState = &gUnk_30047B9;
                (*caseState)++;
            }
            ShuffleRouletteValuePool();
            gRouletteStopRequested = done;
        {
            register u16 *itemHalfwords asm("r0");
            register int zero asm("r3");
            register int angle asm("r2");
            register int count asm("r1");

            itemHalfwords = (u16 *)gRouletteItems;
            zero = 0;
            angle = 224;
            angle <<= 5;
            itemHalfwords += 2;
            count = 2;
            do {
                itemHalfwords[2] = angle;
                itemHalfwords[0] = zero;
                itemHalfwords += 6;
                count--;
            } while (count >= 0);
        }
            return 0;
        }

    case 9:
        /* Keep the second selection block physically distinct from case 7. */
        asm volatile("" ::: "memory");
        UpdateRouletteWheel();
        if (IsRouletteConfirmPressed() == 0)
            return 0;
        SortRouletteItemsByScale();
        {
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem **ref asm("r3");
            register int hiddenX asm("r2");
            register int count asm("r1");
            register struct RouletteItem *hidden asm("r0");

            base = gRouletteItemDrawOrder;
            hiddenX = 250;
            hiddenX <<= 2;
            ref = base + 1;
            count = 1;
            do {
                hidden = *ref++;
                hidden->x = hiddenX;
                count--;
            } while (count >= 0);
        }
        m4aSongNumStart(588);
        asm volatile("@ roulette case 9 copy boundary");
        {
            register struct RouletteSmallState *result asm("r1");
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem *item asm("r2");

            result = &gRouletteMiddleResult;
            base = gRouletteItemDrawOrder;
            item = base[0];
            result->frame = item->value;
            gRouletteMoveStartX = item->x;
            gRouletteMoveStartY = item->y;
            gRouletteMoveStartTile = item->scale;
            gRouletteAngularAcceleration = 0;
        }
        UpdateRouletteResultTiles();
        asm volatile("@ roulette case 9 end boundary");
        goto advanceStateReload;

    case 10:
        /* Keep the second reset loop distinct from case 8. */
        asm volatile("" ::: "memory");
        if (MoveRouletteResultIntoSlot() == 0)
            return 0;
        gUnk_30047B9++;
        ShuffleRouletteValuePool();
        gRouletteStopRequested = 2;
        {
            register u16 *itemHalfwords asm("r0");
            register int zero asm("r3");
            register int angle asm("r2");
            register int count asm("r1");

            itemHalfwords = (u16 *)gRouletteItems;
            zero = 0;
            angle = 224;
            angle <<= 5;
            itemHalfwords += 2;
            count = 2;
            do {
                itemHalfwords[2] = angle;
                itemHalfwords[0] = zero;
                itemHalfwords += 6;
                count--;
            } while (count >= 0);
        }
        return 0;

    case 11:
        /* Keep the third selection block physically distinct. */
        asm volatile("" ::: "memory");
        UpdateRouletteWheel();
        if (IsRouletteConfirmPressed() == 0)
            return 0;
        SortRouletteItemsByScale();
        {
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem **ref asm("r3");
            register int hiddenX asm("r2");
            register int count asm("r1");
            register struct RouletteItem *hidden asm("r0");

            base = gRouletteItemDrawOrder;
            hiddenX = 250;
            hiddenX <<= 2;
            ref = base + 1;
            count = 1;
            do {
                hidden = *ref++;
                hidden->x = hiddenX;
                count--;
            } while (count >= 0);
        }
        m4aSongNumStart(589);
        asm volatile("@ roulette case 11 copy boundary");
        {
            register struct RouletteSmallState *result asm("r1");
            register struct RouletteItem **base asm("r0");
            register struct RouletteItem *item asm("r2");

            result = &gRouletteBottomResult;
            base = gRouletteItemDrawOrder;
            item = base[0];
            result->frame = item->value;
            gRouletteMoveStartX = item->x;
            gRouletteMoveStartY = item->y;
            gRouletteMoveStartTile = item->scale;
            gRouletteAngularAcceleration = 0;
        }
        UpdateRouletteResultTiles();
        asm volatile("@ roulette case 11 end boundary");
        goto advanceStateReload;

    case 12:
        if (MoveRouletteResultIntoSlot() == 0)
            return 0;
        if (gRouletteTopResult.frame == gRouletteWinningValues[0] &&
            gRouletteMiddleResult.frame == gRouletteWinningValues[1] &&
            gRouletteBottomResult.frame == gRouletteWinningValues[2]) {
            sound = 582;
            goto playSoundAndAdvance;
        }
        goto rouletteMismatch;

playSoundAndAdvance:
        m4aSongNumStart(sound);
advanceStateReload:
        gUnk_30047B9++;
        return 0;

rouletteMismatch:
        m4aSongNumStart(583);
        /* Separate alias prevents agbcc from reusing the cached r4 state pointer. */
        gUnk_30047B9 = 14;
        {
            register const struct MusicPlayer *mplay asm("r2");
            register const u8 *songBase asm("r0");
            register int songOffset asm("r1");
            u16 songIndex;

            mplay = gMPlayTable;
            songBase = (const u8 *)gSongTable;
            songOffset = 0x1624;
            asm volatile("" : "+r"(mplay), "+r"(songBase), "+r"(songOffset));
            songBase += songOffset;
            songIndex = *(u16 *)songBase;
            m4aMPlayFadeOut(mplay[songIndex].info, 8);
        }
        return 0;

    case 13:
        if (UpdateRouletteResults() != 0)
            gUnk_30047B9 = 5;
        return 0;

    case 14:
        if (UpdateRouletteIntro() != 0)
            return 1;
        return 0;
    }
    return 0;

}
