#include "minigames/roulette.h"

void DrawRouletteScoreText(void)
{
    const u8 *data;
    if (gUnk_30047E0 != 0)
        func_807AB8C(gMedalCount, sRouletteAwardMedalTiles, 0x60);
    else
        func_807AB8C(gMedalCount, sRouletteMedalTiles, 0x60);
    func_807AB8C(gUnk_30047D6, data = sRouletteScoreTiles, 0xE0);
    func_8089C98(gMinigameHighScores[2], data + 0xC60, 0x980);
}
