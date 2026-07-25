#include "minigames/roulette.h"

void SortRouletteItemsByScale(void)
{
    int i;
    int j;
    int selected;
    s16 selectedScale;
    struct RouletteItem *swappedItem;

    {
        register struct RouletteItem **base asm("r2");
        register struct RouletteItem *itemPtr asm("r0");
        register struct RouletteItem **refPtr asm("r1");
        base = gRouletteItemDrawOrder;
        itemPtr = gRouletteItems;
        /* Keep the data relocation unmodified; the target adds 24 at runtime. */
        asm volatile("" : "+r"(itemPtr));
        itemPtr += 2;
        refPtr = base;
        refPtr += 2;
        do {
            *refPtr = itemPtr;
            itemPtr--;
            refPtr--;
        } while ((int)refPtr >= (int)base);
    }

    for (i = 0; i <= 1; i++) {
        selectedScale = gRouletteItemDrawOrder[i]->scale;
        selected = i;
        for (j = i + 1; j <= 2; j++) {
            if (gRouletteItemDrawOrder[j]->scale > selectedScale) {
                selectedScale = gRouletteItemDrawOrder[j]->scale;
                selected = j;
            }
        }
        swappedItem = gRouletteItemDrawOrder[i];
        gRouletteItemDrawOrder[i] = gRouletteItemDrawOrder[selected];
        gRouletteItemDrawOrder[selected] = swappedItem;
    }
}
