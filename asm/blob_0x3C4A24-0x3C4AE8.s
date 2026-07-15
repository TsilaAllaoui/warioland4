.include "macros.s.inc"

.section .rodata

.align 2, 0

.global sMayubirdFloatXVelocity
sMayubirdFloatXVelocity:
baserom_blob 0x3C4A24, 0x3C4A46

.global sMayubirdFloatYVelocity
sMayubirdFloatYVelocity:
baserom_blob 0x3C4A46, 0x3C4AC8

.global sMayubirdFlyLeftXVelocity
sMayubirdFlyLeftXVelocity:
baserom_blob 0x3C4AC8, 0x3C4AD8

.global sMayubirdFlyRightXVelocity
sMayubirdFlyRightXVelocity:
baserom_blob 0x3C4AD8, 0x3C4AE8
