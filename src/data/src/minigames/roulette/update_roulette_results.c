#include "minigames/roulette.h"

int UpdateRouletteResults(void)
{
    register u8 *statePtr asm("r5");
    register u8 *stateLoad asm("r0");
    register u8 *fadeStorePtr asm("r2");
    register u32 fadeStoreValue asm("r0");
    u32 state;

    stateLoad = &gMinigameSequenceState;
    state = *stateLoad;
    statePtr = stateLoad;

    switch (state) {
    case 0:
        {
            register u16 *timer asm("r4");
            timer = &gMinigameSequenceTimer;
            (*timer)++;
            BobRouletteResultLabels();
            if (*timer > 60) {
                register u8 *reload asm("r0");
                register u32 value asm("r1");
                reload = &gMinigameSequenceState;
                asm volatile("" : "+r"(reload));
                value = *reload;
                value++;
                *reload = value;
                *timer = 0;
            }
        }
        goto end;

    case 1:
        gMinigameScore++;
        if (gMinigameScore > 999) {
            gMinigameScore = 999;
        } else {
            m4aSongNumStart(548);
        }
        if (gMinigameScore > gMinigameHighScores[2]) {
            gMinigameNewHighScore = 1;
            gMinigameHighScores[2] = gMinigameScore;
        }
        DrawRouletteScoreText();
        BobRouletteResultLabels();
        goto advanceState;

    case 2:
        {
            register u16 *timer asm("r4");
            timer = &gMinigameSequenceTimer;
            (*timer)++;
            BobRouletteResultLabels();
            if (*timer <= 20)
                goto end;
            {
                register u16 zero asm("r0");
                zero = 0;
                /* A one-instruction store boundary keeps this delay state from
                 * being tail-merged with state 4 by agbcc. */
                asm volatile("strh %1, [%0]"
                             :
                             : "r"(timer), "r"(zero)
                             : "memory");
            }
        }
        goto advanceState;

    case 3:
        if ((u16)__umodsi3(gMinigameScore, 3) == 0) {
            gMedalCount++;
            if (gMedalCount > 999) {
                gMedalCount = 999;
            } else {
                m4aSongNumStart(547);
                gMinigameMedalHighlight = 1;
            }
        }
        DrawRouletteScoreText();
        {
            register u8 *reload asm("r1");
            register u32 value asm("r0");
            reload = &gMinigameSequenceState;
            asm volatile("" : "+r"(reload));
            value = *reload;
            value++;
            *reload = value;
        }
        BobRouletteResultLabels();
        goto end;

    case 4:
        {
            register u16 *timer asm("r4");
            timer = &gMinigameSequenceTimer;
            (*timer)++;
            BobRouletteResultLabels();
            if (*timer <= 20)
                goto end;
            *timer = 0;
        }
        goto advanceState;

    case 5:
        {
            register u16 *timer asm("r5");
            register u32 one asm("r4");
            register u32 timerValue asm("r0");
            register u8 *fade asm("r2");
            register u32 fadeRaw asm("r3");

            timer = &gMinigameSequenceTimer;
            timerValue = *timer;
            timerValue++;
            *timer = timerValue;
            one = 1;
            one &= timerValue;
            if (one != 0)
                goto end;

            fade = (u8 *)&gRouletteBlendEvb;
            fadeRaw = *fade;
            if ((s8)fadeRaw > 0) {
                {
                    register u8 *blendPtr asm("r0");
                    register u32 blendValue asm("r1");
                    blendPtr = &gRouletteBlendEva;
                    asm volatile("" : "+r"(blendPtr));
                    blendValue = *blendPtr;
                    blendValue++;
                    *blendPtr = blendValue;
                }
                fadeStorePtr = fade;
                fadeStoreValue = fadeRaw - 1;
                goto storeFade;
            }

            ResetRouletteRound();
            *timer = one;
        }

advanceState:
        {
            register u8 *reload asm("r1");
            register u32 value asm("r0");
            reload = &gMinigameSequenceState;
            asm volatile("" : "+r"(reload));
            value = *reload;
            value++;
            *reload = value;
        }
        goto end;

    case 6:
        {
            register u16 *timer asm("r3");
            register u32 one asm("r1");
            register u32 timerValue asm("r0");
            register u8 *fade asm("r2");
            register u32 fadeRaw asm("r4");

            timer = &gMinigameSequenceTimer;
            timerValue = *timer;
            timerValue++;
            *timer = timerValue;
            one = 1;
            one &= timerValue;
            if (one != 0)
                goto end;

            fade = (u8 *)&gRouletteBlendEvb;
            fadeRaw = *fade;
            if ((s8)fadeRaw > 15) {
                register u32 clear asm("r0");
                clear = 0;
                *timer = one;
                *statePtr = clear;
                return 1;
            }

            {
                register u8 *blendPtr asm("r0");
                register u32 blendValue asm("r1");
                blendPtr = &gRouletteBlendEva;
                asm volatile("" : "+r"(blendPtr));
                blendValue = *blendPtr;
                blendValue--;
                *blendPtr = blendValue;
            }
            fadeStorePtr = fade;
            fadeStoreValue = fadeRaw + 1;
        }

storeFade:
        *fadeStorePtr = fadeStoreValue;
        break;
    }

end:
    return 0;
}
