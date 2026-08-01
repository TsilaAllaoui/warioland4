#ifndef SCROLLING_H
#define SCROLLING_H

#include "types.h"

void UpdateBackgroundScrollRegisters(void);
void UpdateLayer3ScrollPosition(void);
void UpdateLayer3ScrollEffect(void);
void PrepareVerticalScrollingTileUploads(s32 scrollDelta);
void ApplyVerticalScrollingTileUploads(void);
void PrepareHorizontalScrollingTileUploads(s32 scrollDelta);
void ApplyHorizontalScrollingTileUploads(void);
void WaitForDma3Transfer();

#endif
