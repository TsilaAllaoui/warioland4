#ifndef STAGE_END_H
#define STAGE_END_H

#include "types.h"

typedef s32 (*StageEndUpdateFunc)(void);

s32 UpdateStageExitSequence(void);
s32 UpdateStageEndSequence(void);

extern StageEndUpdateFunc sStageEndUpdateFunctions[];

#endif  // STAGE_END_H
