#include "minigames/roulette.h"
#include "minigame.h"
#include "stage_select.h"

void DrawRouletteScoreText(void)
{
    const u8 *data;
    if (gMinigameMedalHighlight != 0)
        DrawMinigameNumber(gMedalCount, (const u16 *)sRouletteAwardMedalTiles, 0x60);
    else
        DrawMinigameNumber(gMedalCount, (const u16 *)sRouletteMedalTiles, 0x60);
    DrawMinigameNumber(gMinigameScore, (const u16 *)(data = sRouletteScoreTiles), 0xE0);
    DrawMinigameHighScore(gMinigameHighScores[2], data + 0xC60, 0x980);
}
