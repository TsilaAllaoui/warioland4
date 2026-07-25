#include "minigames/roulette.h"
#include "minigame.h"
#include "stage_select.h"

void DrawRouletteScoreText(void)
{
    const u8 *data;
    if (gMinigameMedalHighlight != 0)
        DrawMinigameNumber(gMedalCount, sRouletteAwardMedalTiles, 0x60);
    else
        DrawMinigameNumber(gMedalCount, sRouletteMedalTiles, 0x60);
    DrawMinigameNumber(gMinigameScore, data = sRouletteScoreTiles, 0xE0);
    DrawMinigameHighScore(gMinigameHighScores[2], data + 0xC60, 0x980);
}
