.include "macros.s.inc"

.section .rodata


baserom_blob 0x3B548C, 0x3B59EC

.global sSwitchIdleOam
sSwitchIdleOam:

baserom_blob 0x3B59EC, 0x3B59FC

.global sEscapeSwitchPressedOam
sEscapeSwitchPressedOam:

baserom_blob 0x3B59FC, 0x3B5A24

.global sEscapeSwitchActiveOam
sEscapeSwitchActiveOam:

baserom_blob 0x3B5A24, 0x3B5A34

.global sSwitchReleasedOam
sSwitchReleasedOam:

baserom_blob 0x3B5A34, 0x3B5A8C

.global sSwitchPressedOam
sSwitchPressedOam:

baserom_blob 0x3B5A8C, 0x3B5AB4

.global sSwitchEffectIdleOam
sSwitchEffectIdleOam:

baserom_blob 0x3B5AB4, 0x3B5B1C

.global sEscapeSwitchWaitingOam
sEscapeSwitchWaitingOam:

baserom_blob 0x3B5B1C, 0x3B5BE4

.global sEscapeSwitchIdleOam
sEscapeSwitchIdleOam:

baserom_blob 0x3B5BE4, 0x3B5BF4

.global sSwitchEffectActiveOam
sSwitchEffectActiveOam:

baserom_blob 0x3B5BF4, 0x3B5C5C
