#ifndef CUTSCENE_H
#define CUTSCENE_H

#include "types.h"

void ResetPrimaryCutsceneAffineState(void);
void ResetSecondaryCutsceneAffineState(void);
u32 UpdateCutsceneSequence(void);
void CutsceneVBlankCallback(void);

#endif  // CUTSCENE_H
