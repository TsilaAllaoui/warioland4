#include "cutscenes/cutscene_gfx.h"
#include "global_data.h"

s32 SelectCutsceneGfx1(s32 timer, u8 **outGfx)
{
    s32 frameTimer;
    s32 animationFinished;

    frameTimer = timer % 24;

    if (frameTimer <= 5) {
        *outGfx = &sCutsceneGfx1_Frame0;
    } else if (frameTimer <= 11) {
        *outGfx = &sCutsceneGfx1_Frame1;
    } else if (frameTimer <= 17) {
        *outGfx = &sCutsceneGfx1_Frame2;
    } else {
        *outGfx = &sCutsceneGfx1_Frame3;
    }

    animationFinished = 0;
    if (frameTimer == 23) {
        animationFinished = 1;
    }

    return animationFinished;
}

s32 SelectCutsceneGfx2(s32 timer, u8 **outGfx)
{
    s32 frameTimer;
    s32 animationFinished;

    frameTimer = timer % 42;

    if (frameTimer <= 5) {
        *outGfx = &sCutsceneGfx2_Frame0;
    } else if (frameTimer <= 11) {
        *outGfx = &sCutsceneGfx2_Frame1;
    } else if (frameTimer <= 17) {
        *outGfx = &sCutsceneGfx2_Frame2;
    } else if (frameTimer <= 23) {
        *outGfx = &sCutsceneGfx2_Frame3;
    } else if (frameTimer <= 29) {
        *outGfx = &sCutsceneGfx2_Frame4;
    } else if (frameTimer <= 35) {
        *outGfx = &sCutsceneGfx2_Frame5;
    } else {
        *outGfx = &sCutsceneGfx2_Frame6;
    }

    animationFinished = 0;
    if (frameTimer == 41) {
        animationFinished = 1;
    }

    return animationFinished;
}

s32 SelectCutsceneGfx3(s32 timer, u8 **outGfx)
{
    s32 frameTimer;
    s32 animationFinished;

    frameTimer = timer % 24;

    if (frameTimer <= 5) {
        *outGfx = &sCutsceneGfx3_Frame0;
    } else if (frameTimer <= 11) {
        *outGfx = &sCutsceneGfx3_Frame1;
    } else if (frameTimer <= 17) {
        *outGfx = &sCutsceneGfx3_Frame2;
    } else {
        *outGfx = &sCutsceneGfx3_Frame3;
    }

    animationFinished = 0;
    if (frameTimer == 23) {
        animationFinished = 1;
    }

    return animationFinished;
}

s32 SelectCutsceneGfx4(s32 timer, u8 **outGfx)
{
    s32 frameTimer;
    s32 animationFinished;

    frameTimer = timer % 48;

    if (frameTimer <= 5) {
        *outGfx = &sCutsceneGfx4_Frame0;
    } else if (frameTimer <= 11) {
        *outGfx = &sCutsceneGfx4_Frame1;
    } else if (frameTimer <= 17) {
        *outGfx = &sCutsceneGfx4_Frame2;
    } else if (frameTimer <= 23) {
        *outGfx = &sCutsceneGfx4_Frame3;
    } else if (frameTimer <= 29) {
        *outGfx = &sCutsceneGfx4_Frame4;
    } else if (frameTimer <= 35) {
        *outGfx = &sCutsceneGfx4_Frame5;
    } else if (frameTimer <= 41) {
        *outGfx = &sCutsceneGfx4_Frame6;
    } else {
        *outGfx = &sCutsceneGfx4_Frame7;
    }

    animationFinished = 0;
    if (frameTimer == 47) {
        animationFinished = 1;
    }

    return animationFinished;
}

s32 SelectCutsceneGfx5(s32 timer, u8 **outGfx)
{
    s32 frameTimer;
    s32 animationFinished;

    frameTimer = timer % 48;

    if (frameTimer <= 5) {
        *outGfx = &sCutsceneGfx5_Frame0;
    } else if (frameTimer <= 11) {
        *outGfx = &sCutsceneGfx5_Frame1;
    } else if (frameTimer <= 17) {
        *outGfx = &sCutsceneGfx5_Frame2;
    } else if (frameTimer <= 23) {
        *outGfx = &sCutsceneGfx5_Frame3;
    } else if (frameTimer <= 29) {
        *outGfx = &sCutsceneGfx5_Frame4;
    } else if (frameTimer <= 35) {
        *outGfx = &sCutsceneGfx5_Frame5;
    } else if (frameTimer <= 41) {
        *outGfx = &sCutsceneGfx5_Frame6;
    } else {
        *outGfx = &sCutsceneGfx5_Frame7;
    }

    animationFinished = 0;
    if (frameTimer == 47) {
        animationFinished = 1;
    }

    return animationFinished;
}