#include "cutscenes/cutscene_wario_sprite.h"
#include "global_data.h"
#include "wario.h"

s32 CutsceneWarioSelectEffectAAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 329;

    if (frame <= 49) {
        *outOam = sCutsceneWarioEffectAFrame0Oam;
    } else if (frame <= 53) {
        *outOam = sCutsceneWarioEffectAFrame1Oam;
    } else if (frame <= 57) {
        *outOam = sCutsceneWarioEffectAFrame2Oam;
    } else if (frame <= 61) {
        *outOam = sCutsceneWarioEffectAFrame1Oam;
    } else if (frame <= 111) {
        *outOam = sCutsceneWarioEffectAFrame0Oam;
    } else if (frame <= 115) {
        *outOam = sCutsceneWarioEffectAFrame1Oam;
    } else if (frame <= 123) {
        *outOam = sCutsceneWarioEffectAFrame2Oam;
    } else if (frame <= 127) {
        *outOam = sCutsceneWarioEffectAFrame1Oam;
    } else if (frame <= 177) {
        *outOam = sCutsceneWarioEffectAFrame0Oam;
    } else if (frame <= 192) {
        *outOam = sCutsceneWarioEffectAFrame3Oam;
    } else if (frame <= 200) {
        *outOam = sCutsceneWarioEffectAFrame4Oam;
    } else if (frame <= 208) {
        *outOam = sCutsceneWarioEffectAFrame5Oam;
    } else if (frame <= 212) {
        *outOam = sCutsceneWarioEffectAFrame6Oam;
    } else if (frame <= 216) {
        *outOam = sCutsceneWarioEffectAFrame7Oam;
    } else if (frame <= 220) {
        *outOam = sCutsceneWarioEffectAFrame8Oam;
    } else if (frame <= 224) {
        *outOam = sCutsceneWarioEffectAFrame9Oam;
    } else if (frame <= 228) {
        *outOam = sCutsceneWarioEffectAFrame10Oam;
    } else {
        *outOam = sCutsceneWarioEffectAFrame11Oam;
    }

    finished = 0;
    if (frame == 328) {
        finished = 1;
    }

    return finished;
}

s32 CutsceneWarioSelectEffectBAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 24;

    if (frame <= 5) {
        *outOam = sCutsceneWarioEffectBFrame0Oam;
    } else if (frame <= 11) {
        *outOam = sCutsceneWarioEffectBFrame1Oam;
    } else if (frame <= 17) {
        *outOam = sCutsceneWarioEffectBFrame2Oam;
    } else {
        *outOam = sCutsceneWarioEffectBFrame3Oam;
    }

    finished = 0;
    if (frame == 23) {
        finished = 1;
    }

    return finished;
}

s32 CutsceneWarioSelectEffectCAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 74;

    if (frame <= 49) {
        *outOam = sCutsceneWarioEffectCFrame0Oam;
    } else if (frame <= 55) {
        *outOam = sCutsceneWarioEffectCFrame1Oam;
    } else if (frame <= 61) {
        *outOam = sCutsceneWarioEffectCFrame2Oam;
    } else if (frame <= 67) {
        *outOam = sCutsceneWarioEffectCFrame3Oam;
    } else {
        *outOam = sCutsceneWarioEffectCFrame4Oam;
    }

    finished = 0;
    if (frame == 73) {
        finished = 1;
    }

    return finished;
}

s32 CutsceneWarioSelectEffectDAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 30;

    if (frame <= 5) {
        *outOam = sCutsceneWarioEffectDFrame0Oam;
    } else if (frame <= 11) {
        *outOam = sCutsceneWarioEffectDFrame1Oam;
    } else if (frame <= 17) {
        *outOam = sCutsceneWarioEffectDFrame2Oam;
    } else if (frame <= 23) {
        *outOam = sCutsceneWarioEffectDFrame3Oam;
    } else {
        *outOam = sCutsceneWarioEffectDFrame4Oam;
    }

    finished = 0;
    if (frame == 29) {
        finished = 1;
    }

    return finished;
}

s32 CutsceneWarioSelectEffectEAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 22;

    if (frame <= 3) {
        *outOam = sCutsceneWarioEffectEFrame0Oam;
    } else if (frame <= 7) {
        *outOam = sCutsceneWarioEffectEFrame1Oam;
    } else if (frame <= 11) {
        *outOam = sCutsceneWarioEffectEFrame2Oam;
    } else if (frame <= 15) {
        *outOam = sCutsceneWarioEffectEFrame3Oam;
    } else {
        *outOam = 0;
    }

    finished = 0;
    if (frame == 0) {
        finished = 1;
    }

    return finished;
}

s32 CutsceneWarioSelectEffectFAnimOam(s32 timer, u16 **outOam)
{
    s32 frame;
    s32 finished;

    frame = timer % 22;

    if (frame <= 3) {
        *outOam = sCutsceneWarioEffectFFrame0Oam;
    } else if (frame <= 7) {
        *outOam = sCutsceneWarioEffectFFrame1Oam;
    } else if (frame <= 11) {
        *outOam = sCutsceneWarioEffectFFrame2Oam;
    } else if (frame <= 15) {
        *outOam = sCutsceneWarioEffectFFrame3Oam;
    } else {
        *outOam = 0;
    }

    finished = 0;
    if (frame == 0) {
        finished = 1;
    }

    return finished;
}

void CutsceneWarioGetStaticOam(u16 **outOam)
{
    *outOam = sCutsceneWarioStaticOam;
}

void CutsceneWarioSetPose(u8 reaction, u8 pose, u16 direction)
{
    gWarioData.reaction = reaction;
    gWarioData.pose = pose;
    gWarioData.horizontalDirection = direction;
    gWarioData.unk_1F = 0;
    gWarioData.unk_1E = 0;
}

u16 *CutsceneWarioDrawPoseOam(s32 xOffset, s32 yOffset, u16 priority, u16 heldKeys, u16 pressedKeys)
{
    u16 oldPressed;
    u16 oldHeld;
    u16 oamCount;
    u16 *oamSrc;
    u16 *oamDst;
    u16 attr1;
    OamData *oamSlot;
    s32 remainingSprites;
    u16 attr0;
    s32 isFacingRight;
    s32 direction;
    s32 xMask;
    s32 xKeepMask;
    unsigned char priorityBits;
    s32 priorityMask;
    u16 priorityCopy;

    priorityCopy = priority;
    oldPressed = gButtonsPressed;
    oldHeld = gButtonsHeld;

    gButtonsPressed = pressedKeys;
    gButtonsHeld = heldKeys;
    sWarioPoseHandlerTable[gWarioData.reaction]();
    gButtonsPressed = oldPressed;
    gButtonsHeld = oldHeld;

    isFacingRight = gWarioData.horizontalDirection & 0x10;
    direction = 1;
    if (isFacingRight) {
        direction = 0;
    }
    sUnk_82DED30[gWarioData.reaction](direction);

    gOamSlotsUsed = 0;
    oamDst = (u16 *)gOamBuffer;
    oamSrc = (u16 *)gWarioData.pOamData;
    oamCount = oldHeld = *(oamSrc++);

    isFacingRight = 0;
    if (oldHeld != isFacingRight) {
        xMask = 0x1FF;
        xKeepMask = 0xFFFFFE00;
        priorityBits = ((priorityCopy & 3) << 1) << 1;
        oamSlot = (OamData *)oamDst;
        priorityMask = -13;
        remainingSprites = oamCount;

        do {
            attr0 = *(oamSrc++);
            *(oamDst++) = attr0;
            ((u8 *)oamSlot)[0] = attr0 + yOffset;

            attr1 = *(oamSrc++);
            *(oamDst++) = attr1;
            {
                s32 newAttr1;
                newAttr1 = (attr1 + xOffset) & xMask;
                oamSlot->all.attr1 = (xKeepMask & oamSlot->all.attr1) | newAttr1;
            }

            *oamDst = *oamSrc;
            oamSrc++;
            ((u8 *)oamSlot)[5] = (((u8 *)oamSlot)[5] & priorityMask) | priorityBits;
            oamDst += 2;
            oamSlot++;
            remainingSprites--;
        } while (remainingSprites != 0);
    }

    gOamSlotsUsed = oldHeld;
    gWarioData.unk_1E++;
    return oamDst;
}

void CutsceneWarioLoadObjTiles(void)
{
    vu32 *dma;
    u32 control;

    if (gWarioData.objData1Size != 0) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)gWarioData.pObjData1;
        dma[1] = 0x06010000;
        control = (gWarioData.objData1Size >> 1) | 0x80000000;
        dma[2] = control;
        (void)dma[2];
    }

    if (gWarioData.objData2Size != 0) {
        dma = (vu32 *)0x040000D4;
        dma[0] = (u32)gWarioData.pObjData2;
        dma[1] = 0x06010400;
        control = (gWarioData.objData2Size >> 1) | 0x80000000;
        dma[2] = control;
        (void)dma[2];
    }
}

void CutsceneWarioLoadObjPalette(void)
{
    vu32 *dma;

    dma = (vu32 *)0x040000D4;

    dma[0] = (u32)sWarioDefaultObjPalette;
    dma[1] = 0x05000200;
    dma[2] = 0x80000010;
    (void)dma[2];
}
