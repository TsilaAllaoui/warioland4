#include "tile_interaction.h"

TileInteractionHandler gTileInteractionHandlers[] = {
    BreakSingleTile,
    BreakSingleTile,
    BreakAdjacentTiles,
    BreakAdjacentTiles,
    BreakAdjacentTiles,
    BreakAdjacentTiles,
    BreakTrackedAdjacentTiles,
    BreakTrackedAdjacentTiles,
};

TileCoordinateHandler gTileCoordinateHandlers[] = {
    ProcessTileAtPosition,
    ProcessAlternateTileAtPosition,
};
