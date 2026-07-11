#ifndef WARIO_MATCHED_HELPERS_H
#define WARIO_MATCHED_HELPERS_H

#include "types.h"

/*
 * These declarations preserve the ABI view used by the matched Wario-state
 * modules.  The convenience declarations in wario.h use narrower types for
 * some helpers, which changes agbcc code generation at the call sites.
 */
void func_800FD90(const void *source, u32 destination, u32 size);
void func_800FE58(void);
s32 func_800FDBC(void);
s32 func_80143D8(void);
s32 func_8014758(void);
s32 func_8014930(void);
s32 func_8014C4C(void);
void func_8016614(int value);

#endif  // WARIO_MATCHED_HELPERS_H
