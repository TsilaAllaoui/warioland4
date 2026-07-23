.include "macros.s.inc"


@ These are mostly arrays of pointers with some other arrays mixed in. These are ordered among themselves by the file
@ they're used in, just like the .rodata section. The fact the data is laid out like this suggests the arrays weren't
@ properly marked const.

.section .data

@ Sprite AI and sprite sets

.global sUnk_878EBF0
sUnk_878EBF0:
	baserom_blob 0x78EBF0, 0x78EDB4

.global sUnk_878EDB4
sUnk_878EDB4:
	baserom_blob 0x78EDB4, 0x78EF78

.global sUnk_878EF78
sUnk_878EF78:
	baserom_blob 0x78EF78, 0x78F0E4

.global sUnk_878F0E4
sUnk_878F0E4:

baserom_blob 0x78F0E4, 0x78F0F8

.global sUnk_878F0F8
sUnk_878F0F8:

baserom_blob 0x78F0F8, 0x78F104

.global sShopkeeperGraphicsFramePointers
sShopkeeperGraphicsFramePointers:

baserom_blob 0x78F104, 0x78F170

.global sUnk_878F170
sUnk_878F170:

baserom_blob 0x78F170, 0x78F188

.global sGoldenDivaMaskGraphicsPointers
sGoldenDivaMaskGraphicsPointers:

baserom_blob 0x78F188, 0x78F1BC

.global sGoldenDivaFanDamageGraphicsPointers
sGoldenDivaFanDamageGraphicsPointers:

baserom_blob 0x78F1BC, 0x78F1D4

.global sGoldenDivaDynamicGraphicsPointers
sGoldenDivaDynamicGraphicsPointers:

baserom_blob 0x78F1D4, 0x78F21C

.global sRoomStartDataTables
sRoomStartDataTables:

baserom_blob 0x78F21C, 0x78F280

.global sRoomHeaderTables
sRoomHeaderTables:

baserom_blob 0x78F280, 0x78F2E4

.global sUnk_878F2E4
sUnk_878F2E4:

baserom_blob 0x78F2E4, 0x78F540

.global sUnk_878F540
sUnk_878F540:

baserom_blob 0x78F540, 0x78F5A4
