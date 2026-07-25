#include "quit.h"

#include "gba/m4a.h"
#include "global_data.h"
#include "interrupt_callbacks.h"
#include "main.h"
#include "save_file.h"
#include "score.h"

void QuitVBlankCallback(void)
{
    m4aSoundVSync();
    m4aSoundMain();
}

void QuitSubroutine(void)
{
    InterruptCallbackSetVBlank(QuitVBlankCallback);
    func_8072F0C();
    gTimerState = 0;
    gSwitchPressed = 0;
    gUnk_3000C3F = 0;
}
