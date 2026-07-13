.include "macros.s.inc"

.section .rodata


.global sBossRoomOverlayTiles
sBossRoomOverlayTiles:

baserom_blob 0x3FA838, 0x3FBDF0

.global sGoldenBossRoomOverlayTiles
sGoldenBossRoomOverlayTiles:

baserom_blob 0x3FBDF0, 0x3FD4A8

.global sBossRoomOverlayTilemap
sBossRoomOverlayTilemap:

baserom_blob 0x3FD4A8, 0x3FD74F

.global sGoldenBossRoomOverlayTilemap
sGoldenBossRoomOverlayTilemap:

baserom_blob 0x3FD74F, 0x3FDA2C
