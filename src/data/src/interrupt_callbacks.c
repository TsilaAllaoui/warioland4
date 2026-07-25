#include "interrupt_callbacks.h"

#include "interrupts.h"

void InterruptCallbackCallVBlank(void)
{
    if (gVBlankCallback != NULL) {
        gVBlankCallback();
    }

    REG_IF |= INTR_FLAG_VBLANK;
    gInterruptCheck = 1;
}

void InterruptCallbackSetVBlank(ProcedureFunc cb)
{
    gVBlankCallback = cb;
    if (cb == NULL) {
        gVBlankCallback = InterruptCallbackEmpty;
    }
}

void InterruptCallbackCallHBlank(void)
{
    if (gHBlankCallback != NULL) {
        gHBlankCallback();
    }

    REG_IF |= INTR_FLAG_HBLANK;
}

void InterruptCallbackSetHBlank(ProcedureFunc cb)
{
    gHBlankCallback = cb;
    if (cb == NULL) {
        gHBlankCallback = InterruptCallbackEmpty;
    }
}

void InterruptCallbackCallVCount(void)
{
    if (gVCountCallback != NULL) {
        gVCountCallback();
    }

    REG_IF |= INTR_FLAG_VCOUNT;
}

void InterruptCallbackSetVCount(ProcedureFunc cb)
{
    gVCountCallback = cb;
    if (cb == NULL) {
        gVCountCallback = InterruptCallbackEmpty;
    }
}

void InterruptCallbackEmpty(void) {}
