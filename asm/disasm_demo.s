.include "macros.s.inc"


thumb_func_start func_8072964
func_8072964:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	ldr	r1, .L_72a90
	ldr	r0, .L_72a94
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r8, r0
	ldr	r0, .L_72a98
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_72a9c
	strb	r1, [r0, #0]
	ldr	r2, .L_72aa0
	mov	sl, r2
	ldr	r0, .L_72aa4
	mov	r1, r8
	lsl	r1, r1, #1
	str	r1, [sp, #0]
	add	r3, r1, #0
	add	r3, r8
	lsl	r3, r3, #2
	add	r3, r3, r0
	ldrb	r0, [r3, #0]
	strb	r0, [r2, #0]
	ldr	r2, .L_72aa8
	mov	r9, r2
	ldrb	r5, [r3, #1]
	strb	r5, [r2, #0]
	ldr	r1, .L_72aac
	ldrb	r0, [r3, #2]
	strb	r0, [r1, #0]
	ldr	r6, .L_72ab0
	ldr	r4, .L_72ab4
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	mov	r0, sl
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r4
	ldr	r0, [r1, #0]
	strb	r0, [r6, #0]
	ldr	r2, .L_72ab8
	ldr	r4, .L_72abc
	mov	r1, #0
	ldrsb	r1, [r6, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	ldr	r1, .L_72ac0
	ldrh	r0, [r3, #8]
	mov	r7, #0
	strh	r0, [r1, #2]
	cmp	r5, #4
	bne	.L_72a26
	ldr	r2, .L_72ac4
	mov	r1, #0
	ldrsb	r1, [r6, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #0
	add	r1, #8
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	mov	r1, #0
	ldrsb	r1, [r6, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #7
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #1]
	mov	r1, #0
	ldrsb	r1, [r6, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #2]
	ldr	r0, .L_72ac8
	bl	m4aSongNumStart
.L_72a26:
	ldr	r0, .L_72acc
	strb	r7, [r0, #0]
	ldr	r0, .L_72ad0
	strb	r7, [r0, #0]
	ldr	r0, .L_72ad4
	strb	r7, [r0, #0]
	ldr	r0, .L_72ad8
	strb	r7, [r0, #0]
	ldr	r3, .L_72adc
	mov	r2, r9
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	mov	r0, sl
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	mov	r2, #0
	str	r2, [r1, #0]
	ldr	r1, .L_72ae0
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bne	.L_72afc
	ldr	r1, .L_72ae4
	ldr	r0, .L_72ae8
	mov	r2, r8
	lsl	r3, r2, #2
	add	r0, r3, r0
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_72aec
	str	r0, [r1, #4]
	ldr	r0, .L_72af0
	ldr	r2, [sp, #0]
	add	r0, r2, r0
	ldrh	r2, [r0, #0]
	lsr	r2, r2, #1
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #24
	orr	r2, r0
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_72af4
	add	r3, r3, r0
	ldr	r0, [r3, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_72af8
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	b	.L_72b04
.L_72a90:
	.4byte	sUnk_840092C
.L_72a94:
	.4byte	gUnk_3000020
.L_72a98:
	.4byte	gHasTemporarySave
.L_72a9c:
	.4byte	gDifficulty
.L_72aa0:
	.4byte	gCurrentPassage
.L_72aa4:
	.4byte	sUnk_840086C
.L_72aa8:
	.4byte	gCurrentStageNumber
.L_72aac:
	.4byte	gUnk_3000025
.L_72ab0:
	.4byte	gCurrentStageID
.L_72ab4:
	.4byte	sUnk_86391C4
.L_72ab8:
	.4byte	gUnk_3000023
.L_72abc:
	.4byte	sStageRoomCounts
.L_72ac0:
	.4byte	gUnk_3003200
.L_72ac4:
	.4byte	gUnk_3000BF0
.L_72ac8:
	.4byte	0x000001ed
.L_72acc:
	.4byte	gPauseFlag
.L_72ad0:
	.4byte	gTimerState
.L_72ad4:
	.4byte	gSwitchPressed
.L_72ad8:
	.4byte	gUnk_3000C3F
.L_72adc:
	.4byte	gCurrentCollection
.L_72ae0:
	.4byte	gDemoState
.L_72ae4:
	.4byte	0x040000d4
.L_72ae8:
	.4byte	sUnk_878F5F4
.L_72aec:
	.4byte	gDemoInputs
.L_72af0:
	.4byte	sUnk_840084C
.L_72af4:
	.4byte	sUnk_878F634
.L_72af8:
	.4byte	gDemoInputLengths
.L_72afc:
	cmp	r0, #3
	bne	.L_72b04
	mov	r0, #2
	strb	r0, [r1, #0]
.L_72b04:
	ldr	r0, .L_72b20
	ldrb	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	orr	r1, r2
	strb	r1, [r0, #0]
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72b20:
	.4byte	gUnk_3000020


thumb_func_start func_8072B24
func_8072B24:
	push	{lr}
	ldr	r1, .L_72b60
	ldrb	r2, [r1, #0]
	mov	r0, #127	@ 0x7f
	and	r0, r2
	strb	r0, [r1, #0]
	ldr	r2, .L_72b64
	ldrb	r0, [r1, #0]
	add	r0, r0, r2
	ldrb	r3, [r0, #0]
	ldr	r0, .L_72b68
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_72b54
	ldr	r2, .L_72b6c
	ldr	r1, .L_72b70
	lsl	r0, r3, #1
	add	r0, r0, r3
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #4]
	strh	r1, [r2, #18]
	ldrh	r0, [r0, #6]
	strh	r0, [r2, #20]
.L_72b54:
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #2
	bl	m4aSongNumStop
	pop	{r0}
	bx	r0
.L_72b60:
	.4byte	gUnk_3000020
.L_72b64:
	.4byte	sUnk_840092C
.L_72b68:
	.4byte	gUnk_3000025
.L_72b6c:
	.4byte	gWarioData
.L_72b70:
	.4byte	sUnk_840086C


thumb_func_start func_8072B74
func_8072B74:
	push	{lr}
	ldr	r1, .L_72b84
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8072964
	pop	{r0}
	bx	r0
.L_72b84:
	.4byte	gDemoState


thumb_func_start func_8072B88
func_8072B88:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8072B98
func_8072B98:
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r3, .L_72c1c
	mov	r4, #0
	strh	r6, [r3, #0]
	ldr	r2, .L_72c20
	ldrh	r1, [r2, #0]
	ldr	r0, .L_72c24
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_72c28
	ldrh	r1, [r2, #0]
	ldr	r0, .L_72c2c
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r0, .L_72c30
	bl	InterruptCallbackSetVBlank
	bl	m4aMPlayAllStop
	ldr	r5, .L_72c34
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bne	.L_72bec
	ldr	r0, .L_72c38
	ldr	r1, .L_72c3c
	str	r1, [r0, #0]
	ldr	r1, .L_72c40
	str	r1, [r0, #4]
	ldr	r2, .L_72c44
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_72c48
	str	r1, [r0, #0]
	ldr	r1, .L_72c4c
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	bl	func_8001000
.L_72bec:
	strb	r4, [r5, #0]
	ldr	r0, .L_72c50
	strb	r4, [r0, #0]
	ldr	r0, .L_72c54
	strb	r4, [r0, #0]
	ldr	r0, .L_72c58
	strb	r4, [r0, #0]
	ldr	r1, .L_72c5c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #15
	bls	.L_72c0e
	strb	r4, [r1, #0]
	mov	r6, #1
.L_72c0e:
	bl	func_8073BE0
	add	r0, r6, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_72c1c:
	.4byte	0x04000208
.L_72c20:
	.4byte	0x04000004
.L_72c24:
	.4byte	0x0000ffef
.L_72c28:
	.4byte	0x04000200
.L_72c2c:
	.4byte	0x0000fffd
.L_72c30:
	.4byte	func_8072B88
.L_72c34:
	.4byte	gDemoState
.L_72c38:
	.4byte	0x040000d4
.L_72c3c:
	.4byte	gDemoInputs
.L_72c40:
	.4byte	0x02038c00
.L_72c44:
	.4byte	0x80000100
.L_72c48:
	.4byte	gDemoInputLengths
.L_72c4c:
	.4byte	0x02038e00
.L_72c50:
	.4byte	gUnk_3000C3F
.L_72c54:
	.4byte	gPauseFlag
.L_72c58:
	.4byte	gUnk_3000022
.L_72c5c:
	.4byte	gUnk_3000020


.section .rodata

@ Demo data
baserom_blob 0x3FDA2C, 0x40084C

.global sUnk_840084C
sUnk_840084C:
	.2byte 512, 400, 464, 400, 352, 320, 240, 80, 288, 368, 512, 512, 336, 192, 512, 416

.global sUnk_840086C
sUnk_840086C:
	.byte 0, 0, 4; .align 1, 0; .2byte 0x125, 0x3BF, 0x2A0; .align 2, 0  @ passage, stage, door, wario X, wario Y, music
	.byte 0x01, 0x00, 0x05, 0x00, 0x92, 0x01, 0xBF, 0x03, 0x8B, 0x02, 0x00, 0x00
	.byte 0x01, 0x01, 0x06, 0x00, 0xD8, 0x00, 0x3F, 0x06, 0x8E, 0x02, 0x00, 0x00
	.byte 0x01, 0x02, 0x06, 0x00, 0x5F, 0x0C, 0x7F, 0x05, 0x8F, 0x02, 0x00, 0x00
	.byte 0x01, 0x03, 0x03, 0x00, 0xFF, 0x16, 0xFF, 0x03, 0x92, 0x02, 0x00, 0x00
	.byte 0x01, 0x04, 0x02, 0x00, 0x60, 0x03, 0x3F, 0x06, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0xC5, 0x0A, 0xBF, 0x02, 0x93, 0x02, 0x00, 0x00
	.byte 0x02, 0x02, 0x06, 0x00, 0x45, 0x05, 0xBF, 0x03, 0x96, 0x02, 0x00, 0x00
	.byte 0x02, 0x03, 0x03, 0x00, 0x89, 0x02, 0x3F, 0x12, 0x95, 0x02, 0x00, 0x00
	.byte 0x03, 0x04, 0x02, 0x00, 0x60, 0x03, 0x3F, 0x06, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x02, 0x00, 0xDB, 0x02, 0x7F, 0x03, 0x97, 0x02, 0x00, 0x00
	.byte 0x03, 0x02, 0x02, 0x00, 0x08, 0x01, 0xFF, 0x01, 0x99, 0x02, 0x00, 0x00
	.byte 0x03, 0x03, 0x06, 0x00, 0x98, 0x01, 0xBF, 0x02, 0x9A, 0x02, 0x00, 0x00
	.byte 0x04, 0x01, 0x06, 0x00, 0x1E, 0x06, 0x3F, 0x07, 0x9C, 0x02, 0x00, 0x00
	.byte 0x04, 0x02, 0x07, 0x00, 0xA5, 0x01, 0x7F, 0x04, 0x9E, 0x02, 0x00, 0x00
	.byte 0x04, 0x03, 0x03, 0x00, 0x90, 0x06, 0xBF, 0x02, 0x9D, 0x02, 0x00, 0x00

.global sUnk_840092C
sUnk_840092C:
	.byte 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
