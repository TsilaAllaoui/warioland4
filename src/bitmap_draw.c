#include "bitmap_draw.h"
#include "background_registers.h"

void SetBgTileColor(s32 x, s32 y, s32 color)
{
    s32 offset;
    u16 *dst;
    s32 mode;

    color = (u16)color;
    mode = gVideoMode;

    if (mode == 4) goto mode4;
    if (mode > 4) goto modeDefault;
    if (mode != 3) goto modeDefault;

    offset = (y * 0x1E0);
    y = x * 2;
    offset += y;
    dst = (u16 *)(offset + 0x06000000);
    *dst = color;
    return;

mode4:
    if (gVideoPage == 0) {
        offset = (y * 0xF0) + x;
        dst = (u16 *)(offset + 0x06000000);
    } else {
        offset = (y * 0xF0) + x;
        dst = (u16 *)(offset + 0x0600A000);
    }
    *dst = (*dst & 0xFF00) | color;
    return;

modeDefault:
    if (gVideoPage == 0) {
        offset = y * 0x140;
        y = x * 2;
        offset += y;
        dst = (u16 *)(offset + 0x06000000);
    } else {
        offset = (y * 0x140) + x;
        dst = (u16 *)(offset + 0x0600A000);
    }
    *dst = color;
}

void DrawBgLine(s32 x0, s32 y0, s32 x1, s32 y1, s32 color)
{
    volatile s32 sp0;
    volatile s32 sp4;
    register s32 r0v asm("r0");
    register s32 r1v asm("r1");
    register s32 r4v asm("r4");
    s32 r5v;
    s32 r6v;
    s32 r7v;
    register s32 r8v asm("r8");
    register s32 r9v asm("r9");
    register s32 temp_r2;
    register s32 slv asm("sl");

    r4v = x0;
    r6v = y0;
    r1v = y1;
    r0v = color;
    r0v = (u16)r0v;
    sp0 = r0v;

    r5v = x1 - r4v;
    if (r5v < 0) {
        r5v = -r5v;
    }

    r0v = r1v - r6v;
    if (r0v < 0) {
        r0v = -r0v;
    }

    if (r5v >= r0v) {
        if (r4v <= x1) {
            slv = r4v;
            sp4 = x1;
            r7v = r6v;
            r9v = r1v;
        } else {
            slv = x1;
            sp4 = r4v;
            r7v = r1v;
            r9v = r6v;
        }

        r6v = 0;
        r0v = sp4;
        r1v = slv;
        r4v = r0v - r1v;
        if (r6v <= r4v) {
            do {
                temp_r2 = r9v;
                r0v = temp_r2 - r7v;
                r0v = r0v * r6v;
                r8v = r4v;
                r1v = r4v;
                r5v = r0v / r1v;
                r1v = slv;
                r0v = r6v + r1v;
                r1v = r5v + r7v;
                temp_r2 = sp0;
                SetBgTileColor(r0v, r1v, temp_r2);
                r6v += 1;
            } while (r6v <= r8v);
        }
    } else {
        if (r6v <= r1v) {
            slv = r4v;
            sp4 = x1;
            r7v = r6v;
            r9v = r1v;
        } else {
            slv = x1;
            sp4 = r4v;
            r7v = r1v;
            r9v = r6v;
        }

        r5v = 0;
        temp_r2 = r9v;
        temp_r2 = temp_r2 - r7v;
        r8v = temp_r2;
        if (r5v <= r8v) {
            do {
                r1v = sp4;
                temp_r2 = slv;
                r0v = r1v - temp_r2;
                r0v = r0v * r5v;
                r9v = r8v;
                r1v = r8v;
                r6v = r0v / r1v;
                r1v = slv;
                r0v = r6v + r1v;
                r1v = r5v + r7v;
                temp_r2 = sp0;
                SetBgTileColor(r0v, r1v, temp_r2);
                r5v += 1;
            } while (r5v <= r9v);
        }
    }
}
