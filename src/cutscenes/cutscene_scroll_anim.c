#include "cutscenes/cutscene_scroll_anim.h"
#include "global_data.h"

s32 func_800F7BC(s32 timer, u8 **ppData)
{
    if (timer <= 7) {
        *ppData = &sUnk_82D270C;
        return timer > 0x12A;
    }
    if (timer <= 15) {
        *ppData = &sUnk_82D2714;
        return timer > 0x12A;
    }
    if (timer <= 23) {
        *ppData = &sUnk_82D2722;
        return timer > 0x12A;
    }
    if (timer <= 31) {
        *ppData = &sUnk_82D272A;
        return timer > 0x12A;
    }
    if (timer <= 47) {
        *ppData = &sUnk_82D2738;
        return timer > 0x12A;
    }
    if (timer <= 55) {
        *ppData = &sUnk_82D2746;
        return timer > 0x12A;
    }
    if (timer <= 63) {
        *ppData = &sUnk_82D275A;
        return timer > 0x12A;
    }
    if (timer <= 71) {
        *ppData = &sUnk_82D276E;
        return timer > 0x12A;
    }
    if (timer <= 87) {
        *ppData = &sUnk_82D2956;
        return timer > 0x12A;
    }
    if (timer <= 95) {
        *ppData = &sUnk_82D2788;
        return timer > 0x12A;
    }
    if (timer <= 103) {
        *ppData = &sUnk_82D27B4;
        return timer > 0x12A;
    }
    if (timer <= 111) {
        *ppData = &sUnk_82D27E0;
        return timer > 0x12A;
    }
    if (timer <= 119) {
        *ppData = &sUnk_82D2812;
        return timer > 0x12A;
    }
    if (timer <= 139) {
        *ppData = &sUnk_82D283E;
        return timer > 0x12A;
    }
    if (timer <= 159) {
        *ppData = &sUnk_82D286A;
        return timer > 0x12A;
    }
    if (timer <= 179) {
        *ppData = &sUnk_82D289C;
        return timer > 0x12A;
    }
    if (timer <= 199) {
        *ppData = &sUnk_82D28D4;
        return timer > 0x12A;
    }
    *ppData = &sUnk_82D2912;
    return timer > 0x12A;
}

s32 func_800F8A4(s32 timer, u8 **ppData)
{
    if (timer <= 7) {
        *ppData = &sUnk_82D2976;
        return timer > 0xFC;
    }
    if (timer <= 15) {
        *ppData = &sUnk_82D297E;
        return timer > 0xFC;
    }
    if (timer <= 23) {
        *ppData = &sUnk_82D298C;
        return timer > 0xFC;
    }
    if (timer <= 31) {
        *ppData = &sUnk_82D2994;
        return timer > 0xFC;
    }
    if (timer <= 47) {
        *ppData = &sUnk_82D29A2;
        return timer > 0xFC;
    }
    if (timer <= 55) {
        *ppData = &sUnk_82D29B0;
        return timer > 0xFC;
    }
    if (timer <= 63) {
        *ppData = &sUnk_82D29BE;
        return timer > 0xFC;
    }
    if (timer <= 93) {
        *ppData = &sUnk_82D29D2;
        return timer > 0xFC;
    }
    if (timer <= 113) {
        *ppData = &sUnk_82D29E6;
        return timer > 0xFC;
    }
    if (timer <= 133) {
        *ppData = &sUnk_82D2A00;
        return timer > 0xFC;
    }
    if (timer <= 153) {
        *ppData = &sUnk_82D2A20;
        return timer > 0xFC;
    }
    *ppData = &sUnk_82D2A46;
    return timer > 0xFC;
}

s32 func_800F940(s32 tableIndex, s32 step, s16 *pX, s16 *pY)
{
    u16 *table1;
    u16 *table2;
    s32 index;

    table1 = sUnk_878E7C0[(s16)tableIndex];
    table2 = sUnk_878E7D0[(s16)tableIndex];
    index = 0;
    if (step >= 0) {
        index = step;
        if (step > 179) {
            index = 179;
        }
    }
    *pX = -table1[index];
    *pY = -table2[index];
    return step > 178;
}

s32 func_800F990(s32 tableIndex, s32 step, s16 *pX, s16 *pY)
{
    u16 *table1;
    u16 *table2;
    s32 index;

    table1 = sUnk_878E7E0[(s16)tableIndex];
    table2 = sUnk_878E7F0[(s16)tableIndex];
    index = 0;
    if (step >= 0) {
        index = step;
        if (step > 179) {
            index = 179;
        }
    }
    *pX = -table1[index];
    *pY = -table2[index];
    return step > 178;
}
