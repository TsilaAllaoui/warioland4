.include "macros.s.inc"


thumb_func_start MinigameSubroutine
MinigameSubroutine:
	push	{r4, r5, r6, lr}
	mov	r6, #0
	bl	func_8089BBC
	ldr	r0, .L_89924
	strb	r6, [r0, #0]
	ldr	r0, .L_89928
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #16
	bls	.L_89918
	b	.L_89b6a
.L_89918:
	lsl	r0, r0, #2
	ldr	r1, .L_8992c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_89924:
	.4byte	gOamSlotsUsed
.L_89928:
	.4byte	gSubGameMode
.L_8992c:
	.4byte	.L_89930
.L_89930:
	.4byte	.L_89974
	.4byte	.L_89994
	.4byte	.L_899b0
	.4byte	.L_899c8
	.4byte	.L_89a38
	.4byte	.L_89a64
	.4byte	.L_89a84
	.4byte	.L_89a9c
	.4byte	.L_89b58
	.4byte	.L_89ab0
	.4byte	.L_89ad0
	.4byte	.L_89ae8
	.4byte	.L_89b58
	.4byte	.L_89afc
	.4byte	.L_89b2c
	.4byte	.L_89b44
	.4byte	.L_89b58
.L_89974:
	ldr	r4, .L_8998c
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_89990
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_808A33C
	b	.L_89b10
	.align	2, 0
.L_8998c:
	.4byte	0x04000200
.L_89990:
	.4byte	gColorFading
.L_89994:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_899a2
	b	.L_89b6a
.L_899a2:
	ldr	r1, .L_899ac
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
	.align	2, 0
.L_899ac:
	.4byte	gSubGameMode
.L_899b0:
	bl	func_8089E74
	cmp	r0, #0
	bne	.L_899ba
	b	.L_89b6a
.L_899ba:
	ldr	r1, .L_899c4
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
	.align	2, 0
.L_899c4:
	.4byte	gSubGameMode
.L_899c8:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_899d6
	b	.L_89b6a
.L_899d6:
	bl	func_807ACCC
	ldr	r0, .L_899f4
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_899f8
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_89a20
	cmp	r0, #1
	bgt	.L_899fc
	cmp	r0, #0
	beq	.L_89a14
	b	.L_89b6a
	.align	2, 0
.L_899f4:
	.4byte	gUnk_3000000
.L_899f8:
	.4byte	gUnk_30047B8
.L_899fc:
	cmp	r0, #2
	beq	.L_89a2c
	cmp	r0, #3
	beq	.L_89a06
	b	.L_89b6a
.L_89a06:
	ldr	r0, .L_89a10
	strh	r1, [r0, #0]
	mov	r6, #1
	b	.L_89b6a
	.align	2, 0
.L_89a10:
	.4byte	gSubGameMode
.L_89a14:
	ldr	r1, .L_89a1c
	mov	r0, #5
	b	.L_89b68
	.align	2, 0
.L_89a1c:
	.4byte	gSubGameMode
.L_89a20:
	ldr	r1, .L_89a28
	mov	r0, #9
	b	.L_89b68
	.align	2, 0
.L_89a28:
	.4byte	gSubGameMode
.L_89a2c:
	ldr	r1, .L_89a34
	mov	r0, #13
	b	.L_89b68
	.align	2, 0
.L_89a34:
	.4byte	gSubGameMode
.L_89a38:
	ldr	r5, .L_89a58
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_89a5c
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_808A3C0
	ldr	r0, .L_89a60
	strh	r4, [r0, #0]
	ldrh	r0, [r5, #0]
	orr	r0, r4
	strh	r0, [r5, #0]
	b	.L_89b6a
.L_89a58:
	.4byte	0x04000200
.L_89a5c:
	.4byte	gColorFading
.L_89a60:
	.4byte	gSubGameMode
.L_89a64:
	ldr	r4, .L_89a7c
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_89a80
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	InitHomerunDerby
	b	.L_89b10
	.align	2, 0
.L_89a7c:
	.4byte	0x04000200
.L_89a80:
	.4byte	gColorFading
.L_89a84:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89a98
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89a98:
	.4byte	gSubGameMode
.L_89a9c:
	bl	UpdateHomerunDerby
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89aac
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89aac:
	.4byte	gSubGameMode
.L_89ab0:
	ldr	r4, .L_89ac8
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_89acc
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_808CC5C
	b	.L_89b10
	.align	2, 0
.L_89ac8:
	.4byte	0x04000200
.L_89acc:
	.4byte	gColorFading
.L_89ad0:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89ae4
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89ae4:
	.4byte	gSubGameMode
.L_89ae8:
	bl	func_808CB18
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89af8
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89af8:
	.4byte	gSubGameMode
.L_89afc:
	ldr	r4, .L_89b20
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_89b24
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_808B104
.L_89b10:
	ldr	r1, .L_89b28
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	orr	r0, r5
	strh	r0, [r4, #0]
	b	.L_89b6a
.L_89b20:
	.4byte	0x04000200
.L_89b24:
	.4byte	gColorFading
.L_89b28:
	.4byte	gSubGameMode
.L_89b2c:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89b40
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89b40:
	.4byte	gSubGameMode
.L_89b44:
	bl	func_808AC90
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89b54
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_89b68
.L_89b54:
	.4byte	gSubGameMode
.L_89b58:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	beq	.L_89b6a
	ldr	r1, .L_89b7c
	mov	r0, #4
.L_89b68:
	strh	r0, [r1, #0]
.L_89b6a:
	bl	func_8089D4C
	bl	ResetFreeOam
	add	r0, r6, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_89b7c:
	.4byte	gSubGameMode


thumb_func_start MinigameRandom
MinigameRandom:
	ldr	r1, .L_89b94
	ldrh	r2, [r1, #0]
	mov	r0, #109	@ 0x6d
	mul	r0, r2
	ldr	r2, .L_89b98
	add	r0, r0, r2
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_89b94:
	.4byte	gRandomSeed
.L_89b98:
	.4byte	0x000003fd


thumb_func_start MinigameWaitForFrames
MinigameWaitForFrames:
	ldr	r2, .L_89bb0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r1, [r2, #0]
	cmp	r1, r0
	bgt	.L_89bb4
	mov	r0, #0
	b	.L_89bba
	.align	2, 0
.L_89bb0:
	.4byte	gUnk_30047C6
.L_89bb4:
	mov	r0, #0
	strh	r0, [r2, #0]
	mov	r0, #1
.L_89bba:
	bx	lr


thumb_func_start func_8089BBC
func_8089BBC:
	push	{lr}
	ldr	r0, .L_89bc8
	bl	InterruptCallbackSetVBlank
	pop	{r0}
	bx	r0
.L_89bc8:
	.4byte	func_8089BCC


thumb_func_start func_8089BCC
func_8089BCC:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_89bfc
	ldr	r0, .L_89c00
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_89c04
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_89c08
	ldrh	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #15
	bhi	.L_89c60
	lsl	r0, r0, #2
	ldr	r1, .L_89c0c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_89bfc:
	.4byte	0x040000d4
.L_89c00:
	.4byte	gOamBuffer
.L_89c04:
	.4byte	0x84000100
.L_89c08:
	.4byte	gSubGameMode
.L_89c0c:
	.4byte	.L_89c10
.L_89c10:
	.4byte	.L_89c50
	.4byte	.L_89c50
	.4byte	.L_89c50
	.4byte	.L_89c50
	.4byte	.L_89c60
	.4byte	.L_89c60
	.4byte	.L_89c60
	.4byte	.L_89c60
	.4byte	.L_89c5c
	.4byte	.L_89c5c
	.4byte	.L_89c5c
	.4byte	.L_89c5c
	.4byte	.L_89c56
	.4byte	.L_89c56
	.4byte	.L_89c56
	.4byte	.L_89c56
.L_89c50:
	bl	func_808A46C
	b	.L_89c60
.L_89c56:
	bl	func_808B0E0
	b	.L_89c60
.L_89c5c:
	bl	func_808CC24
.L_89c60:
	pop	{r0}
	bx	r0


thumb_func_start func_8089C64
func_8089C64:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_89c88
	ldr	r0, .L_89c8c
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_89c90
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #128	@ 0x80
	ldr	r0, .L_89c94
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_89c88:
	.4byte	0x040000d4
.L_89c8c:
	.4byte	gOamBuffer
.L_89c90:
	.4byte	0x84000100
.L_89c94:
	.4byte	gBldy


thumb_func_start DrawMinigameHighScore
DrawMinigameHighScore:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	add	r6, r1, #0
	add	r7, r2, #0
	mov	r1, #100	@ 0x64
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	add	r4, r0, #0
	add	r0, r5, #0
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, #10
	bl	__modsi3
	add	r3, r0, #0
	ldr	r1, .L_89d3c
	lsl	r4, r4, #5
	add	r4, r6, r4
	str	r4, [r1, #0]
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #19
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_89d40
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_89cf4
.L_89cec:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_89cec
.L_89cf4:
	ldr	r1, .L_89d3c
	mov	r2, r8
	lsl	r0, r2, #5
	add	r0, r6, r0
	str	r0, [r1, #0]
	ldr	r2, .L_89d44
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_89d40
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	lsl	r4, r3, #5
	cmp	r0, #0
	bge	.L_89d1e
.L_89d16:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_89d16
.L_89d1e:
	ldr	r1, .L_89d3c
	add	r0, r6, r4
	str	r0, [r1, #0]
	ldr	r2, .L_89d48
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_89d40
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_89d3c:
	.4byte	0x040000d4
.L_89d40:
	.4byte	0x80000010
.L_89d44:
	.4byte	0x06000020
.L_89d48:
	.4byte	0x06000040


thumb_func_start func_8089D4C
func_8089D4C:
	push	{lr}
	ldr	r0, .L_89d64
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #16
	bhi	.L_89dc6
	lsl	r0, r0, #2
	ldr	r1, .L_89d68
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_89d64:
	.4byte	gSubGameMode
.L_89d68:
	.4byte	.L_89d6c
.L_89d6c:
	.4byte	.L_89db0
	.4byte	.L_89db0
	.4byte	.L_89db0
	.4byte	.L_89db0
	.4byte	.L_89db0
	.4byte	.L_89dc6
	.4byte	.L_89dc2
	.4byte	.L_89dc2
	.4byte	.L_89dc2
	.4byte	.L_89dc6
	.4byte	.L_89dbc
	.4byte	.L_89dbc
	.4byte	.L_89dbc
	.4byte	.L_89dc6
	.4byte	.L_89db6
	.4byte	.L_89db6
	.4byte	.L_89db6
.L_89db0:
	bl	func_808A8E4
	b	.L_89dc6
.L_89db6:
	bl	func_808BE4C
	b	.L_89dc6
.L_89dbc:
	bl	func_808D824
	b	.L_89dc6
.L_89dc2:
	bl	DrawHomerunDerby
.L_89dc6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8089DCC
func_8089DCC:
	push	{r4, r5, lr}
	ldr	r4, .L_89df4
	ldrh	r1, [r4, #0]
	sub	r1, #5
	strh	r1, [r4, #0]
	ldr	r3, .L_89df8
	ldrh	r0, [r3, #0]
	add	r0, #5
	strh	r0, [r3, #0]
	ldr	r0, .L_89dfc
	mov	r5, #0
	strh	r5, [r0, #0]
	ldr	r2, .L_89e00
	mov	r0, #160	@ 0xa0
	strh	r0, [r2, #0]
	lsl	r1, r1, #16
	cmp	r1, #0
	blt	.L_89e04
	mov	r0, #0
	b	.L_89e0c
.L_89df4:
	.4byte	gUnk_3003C4C
.L_89df8:
	.4byte	gUnk_3003C4E
.L_89dfc:
	.4byte	gUnk_3003C50
.L_89e00:
	.4byte	gUnk_3003C52
.L_89e04:
	strh	r5, [r4, #0]
	mov	r0, #240	@ 0xf0
	strh	r0, [r3, #0]
	mov	r0, #1
.L_89e0c:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8089E14
func_8089E14:
	push	{r4, lr}
	ldr	r4, .L_89e40
	ldrh	r1, [r4, #0]
	add	r1, #5
	strh	r1, [r4, #0]
	ldr	r3, .L_89e44
	ldrh	r0, [r3, #0]
	sub	r0, #5
	strh	r0, [r3, #0]
	ldr	r2, .L_89e48
	mov	r0, #0
	strh	r0, [r2, #0]
	ldr	r2, .L_89e4c
	mov	r0, #160	@ 0xa0
	strh	r0, [r2, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	cmp	r1, #120	@ 0x78
	bgt	.L_89e50
	mov	r0, #0
	b	.L_89e58
	.align	2, 0
.L_89e40:
	.4byte	gUnk_3003C4C
.L_89e44:
	.4byte	gUnk_3003C4E
.L_89e48:
	.4byte	gUnk_3003C50
.L_89e4c:
	.4byte	gUnk_3003C52
.L_89e50:
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #0]
	strh	r0, [r3, #0]
	mov	r0, #1
.L_89e58:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8089E60
func_8089E60:
	push	{lr}
	bl	func_8073880
	ldr	r2, .L_89e70
	mov	r1, #1
	strb	r1, [r2, #0]
	pop	{r1}
	bx	r1
.L_89e70:
	.4byte	gSaveFlag


thumb_func_start func_8089E74
func_8089E74:
	push	{r4, r5, lr}
	mov	r5, #0
	ldr	r0, .L_89e8c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_89e82
	b	.L_89fe2
.L_89e82:
	lsl	r0, r0, #2
	ldr	r1, .L_89e90
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_89e8c:
	.4byte	gHomerunState
.L_89e90:
	.4byte	.L_89e94
.L_89e94:
	.4byte	.L_89ea8
	.4byte	.L_89f40
	.4byte	.L_89f64
	.4byte	.L_89f78
	.4byte	.L_89fb8
.L_89ea8:
	ldr	r1, .L_89ee8
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_89eb4
	add	r0, #1
	strh	r0, [r1, #0]
.L_89eb4:
	bl	func_808A4F8
	cmp	r0, #0
	bne	.L_89ebe
	b	.L_89fe2
.L_89ebe:
	ldr	r0, .L_89eec
	ldrb	r4, [r0, #0]
	cmp	r4, #3
	bne	.L_89f00
	ldr	r2, .L_89ef0
	ldr	r0, .L_89ef4
	ldr	r1, .L_89ef8
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #8
	bl	m4aMPlayFadeOut
	ldr	r0, .L_89efc
	strb	r4, [r0, #0]
	b	.L_89fe2
	.align	2, 0
.L_89ee8:
	.4byte	gUnk_3004A30
.L_89eec:
	.4byte	gUnk_30047B8
.L_89ef0:
	.4byte	gMPlayTable
.L_89ef4:
	.4byte	gSongTable
.L_89ef8:
	.4byte	0x000015ec
.L_89efc:
	.4byte	gHomerunState
.L_89f00:
	ldr	r1, .L_89f2c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_89f30
	ldr	r0, .L_89f34
	ldr	r1, .L_89f38
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #12
	bl	m4aMPlayFadeOut
	ldr	r1, .L_89f3c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_89fe2
	.align	2, 0
.L_89f2c:
	.4byte	gUnk_30047F4
.L_89f30:
	.4byte	gMPlayTable
.L_89f34:
	.4byte	gSongTable
.L_89f38:
	.4byte	0x000015ec
.L_89f3c:
	.4byte	gHomerunState
.L_89f40:
	ldr	r1, .L_89f5c
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_89f4c
	add	r0, #1
	strh	r0, [r1, #0]
.L_89f4c:
	bl	func_808A6E8
	cmp	r0, #0
	beq	.L_89fe2
	ldr	r1, .L_89f60
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_89fe2
.L_89f5c:
	.4byte	gUnk_3004A30
.L_89f60:
	.4byte	gHomerunState
.L_89f64:
	bl	func_808A818
	cmp	r0, #0
	beq	.L_89fe2
	ldr	r1, .L_89f74
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_89fe2
.L_89f74:
	.4byte	gHomerunState
.L_89f78:
	ldr	r1, .L_89fac
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_89f84
	add	r0, #1
	strh	r0, [r1, #0]
.L_89f84:
	ldr	r2, .L_89fb0
	ldr	r0, .L_89fb4
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r0, r2
	ldrb	r0, [r1, #8]
	cmp	r0, #4
	bne	.L_89f9e
	ldrh	r0, [r1, #6]
	sub	r0, #2
	strh	r0, [r1, #6]
.L_89f9e:
	bl	func_8089E14
	cmp	r0, #0
	beq	.L_89fe2
	mov	r5, #1
	b	.L_89fe2
	.align	2, 0
.L_89fac:
	.4byte	gUnk_3004A30
.L_89fb0:
	.4byte	gUnk_30047F8
.L_89fb4:
	.4byte	gUnk_30047B8
.L_89fb8:
	ldr	r2, .L_89fec
	ldr	r0, .L_89ff0
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r0, r2
	ldrb	r0, [r1, #8]
	cmp	r0, #4
	bne	.L_89fd2
	ldrh	r0, [r1, #6]
	add	r0, #2
	strh	r0, [r1, #6]
.L_89fd2:
	bl	func_8089DCC
	cmp	r0, #0
	beq	.L_89fe2
	ldr	r0, .L_89ff4
	ldr	r1, .L_89ff8
	ldrb	r1, [r1, #0]
	strb	r1, [r0, #0]
.L_89fe2:
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_89fec:
	.4byte	gUnk_30047F8
.L_89ff0:
	.4byte	gUnk_30047B8
.L_89ff4:
	.4byte	gHomerunState
.L_89ff8:
	.4byte	gHomerunSubstate


thumb_func_start func_8089FFC
func_8089FFC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVideoMemory
	ldr	r1, .L_8a17c
	ldr	r0, .L_8a180
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8a184
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a02e
.L_8a026:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a026
.L_8a02e:
	ldr	r1, .L_8a17c
	ldr	r0, .L_8a188
	str	r0, [r1, #0]
	ldr	r0, .L_8a18c
	str	r0, [r1, #4]
	ldr	r0, .L_8a184
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_8a190
	ldr	r4, .L_8a194
	ldr	r5, .L_8a198
	ldr	r6, .L_8a19c
	mov	r7, #190	@ 0xbe
	lsl	r7, r7, #7
	add	r7, r7, r3
	mov	r9, r7
	ldr	r7, .L_8a1a0
	add	r7, r7, r3
	mov	sl, r7
	ldr	r7, .L_8a1a4
	mov	ip, r7
	mov	r7, #176	@ 0xb0
	lsl	r7, r7, #7
	add	r7, r7, r3
	mov	r8, r7
	cmp	r0, #0
	bge	.L_8a072
.L_8a06a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a06a
.L_8a072:
	ldr	r1, .L_8a17c
	str	r3, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8a1a8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a094
.L_8a08c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a08c
.L_8a094:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8a17c
	str	r4, [r1, #0]
	ldr	r0, .L_8a1ac
	str	r0, [r1, #4]
	ldr	r0, .L_8a1b0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a0bc
.L_8a0b4:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a0b4
.L_8a0bc:
	ldr	r1, .L_8a17c
	str	r5, [r1, #0]
	ldr	r0, .L_8a1b4
	str	r0, [r1, #4]
	ldr	r0, .L_8a1b8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a0dc
.L_8a0d4:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a0d4
.L_8a0dc:
	ldr	r1, .L_8a17c
	str	r6, [r1, #0]
	ldr	r0, .L_8a1bc
	str	r0, [r1, #4]
	ldr	r0, .L_8a1b8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a0fc
.L_8a0f4:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a0f4
.L_8a0fc:
	ldr	r1, .L_8a17c
	ldr	r0, .L_8a1c0
	str	r0, [r1, #0]
	ldr	r0, .L_8a1c4
	str	r0, [r1, #4]
	ldr	r0, .L_8a1b8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_8a1c8
	mov	r3, #176	@ 0xb0
	lsl	r3, r3, #7
	add	r0, r3, #0
	strh	r0, [r2, #0]
	add	r2, #2
	ldr	r4, .L_8a1cc
	add	r0, r4, #0
	strh	r0, [r2, #0]
	add	r2, #2
	ldr	r7, .L_8a1d0
	add	r0, r7, #0
	strh	r0, [r2, #0]
	mov	r0, r9
	str	r0, [r1, #0]
	ldr	r0, .L_8a1d4
	str	r0, [r1, #4]
	ldr	r0, .L_8a1d8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a146
.L_8a13e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a13e
.L_8a146:
	ldr	r1, .L_8a17c
	mov	r3, sl
	str	r3, [r1, #0]
	ldr	r0, .L_8a1dc
	str	r0, [r1, #4]
	ldr	r0, .L_8a1d8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8a168
.L_8a160:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8a160
.L_8a168:
	ldr	r4, .L_8a1e0
	ldrb	r1, [r4, #16]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	bne	.L_8a1e4
	mov	r0, #20
	mov	r7, ip
	strb	r0, [r7, #0]
	b	.L_8a1ea
.L_8a17c:
	.4byte	0x040000d4
.L_8a180:
	.4byte	sUnk_86E541C
.L_8a184:
	.4byte	0x80000100
.L_8a188:
	.4byte	sUnk_86EB61C
.L_8a18c:
	.4byte	0x05000200
.L_8a190:
	.4byte	sUnk_86E561C
.L_8a194:
	.4byte	sUnk_86EB81C
.L_8a198:
	.4byte	sUnk_86F401C
.L_8a19c:
	.4byte	sUnk_86F381C
.L_8a1a0:
	.4byte	0x00005e60
.L_8a1a4:
	.4byte	gUnk_300482D
.L_8a1a8:
	.4byte	0x80003000
.L_8a1ac:
	.4byte	0x06010000
.L_8a1b0:
	.4byte	0x80003c00
.L_8a1b4:
	.4byte	0x0600c000
.L_8a1b8:
	.4byte	0x80000400
.L_8a1bc:
	.4byte	0x0600d000
.L_8a1c0:
	.4byte	sUnk_86F301C
.L_8a1c4:
	.4byte	0x0600e000
.L_8a1c8:
	.4byte	0x04000008
.L_8a1cc:
	.4byte	0x00005a01
.L_8a1d0:
	.4byte	0x00005c02
.L_8a1d4:
	.4byte	0x06005b00
.L_8a1d8:
	.4byte	0x80000010
.L_8a1dc:
	.4byte	0x06005b20
.L_8a1e0:
	.4byte	gCurrentCollection
.L_8a1e4:
	mov	r0, #50	@ 0x32
	mov	r1, ip
	strb	r0, [r1, #0]
.L_8a1ea:
	ldr	r3, .L_8a2d0
	ldr	r0, [r3, #0]
	ldr	r2, .L_8a2d4
	mov	r1, r8
	bl	func_807A824
	ldr	r0, .L_8a2d8
	ldrh	r0, [r0, #0]
	ldr	r2, .L_8a2dc
	mov	r1, r8
	bl	DrawMinigameNumber
	ldr	r6, .L_8a2e0
	ldr	r5, .L_8a2e4
	mov	r4, #2
.L_8a208:
	ldrh	r0, [r5, #0]
	ldr	r1, .L_8a2e8
	add	r2, r6, #0
	bl	DrawMinigameNumber
	add	r6, #128	@ 0x80
	add	r5, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_8a208
	ldr	r0, .L_8a2ec
	mov	r2, #0
	strh	r2, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	add	r0, #6
	strh	r2, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	add	r0, #6
	strh	r2, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_8a2f0
	strb	r2, [r0, #0]
	ldr	r0, .L_8a2f4
	strh	r2, [r0, #0]
	ldr	r0, .L_8a2f8
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_8a2fc
	strh	r1, [r0, #0]
	ldr	r0, .L_8a300
	strh	r2, [r0, #0]
	ldr	r1, .L_8a304
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #19
	ldrh	r0, [r3, #0]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #6
	add	r1, r4, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_8a308
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_8a30c
	strh	r2, [r0, #0]
	ldr	r0, .L_8a310
	mov	r3, #0
	strh	r3, [r0, #0]
	strh	r3, [r0, #2]
	ldr	r1, .L_8a314
	ldr	r2, .L_8a318
	ldr	r4, .L_8a31c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	strh	r0, [r1, #4]
	ldr	r2, .L_8a320
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	strh	r0, [r1, #6]
	strh	r3, [r1, #0]
	strh	r3, [r1, #2]
	ldr	r1, .L_8a324
	ldr	r0, .L_8a328
	str	r0, [r1, #0]
	ldr	r2, .L_8a32c
	mov	r1, #0
	ldr	r0, .L_8a330
	mov	r4, #2
.L_8a2a2:
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	add	r0, #12
	sub	r4, #1
	cmp	r4, #0
	bge	.L_8a2a2
	mov	r4, #0
	strh	r4, [r2, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_8a334
	strh	r4, [r0, #0]
	ldr	r0, .L_8a338
	bl	m4aSongNumStartOrChange
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8a2d0:
	.4byte	gTotalScore
.L_8a2d4:
	.4byte	0x000059a0
.L_8a2d8:
	.4byte	gMedalCount
.L_8a2dc:
	.4byte	0x000050e0
.L_8a2e0:
	.4byte	0x000052a0
.L_8a2e4:
	.4byte	gMinigameHighScores
.L_8a2e8:
	.4byte	sUnk_86EA75C
.L_8a2ec:
	.4byte	0x04000012
.L_8a2f0:
	.4byte	gHomerunSequenceState
.L_8a2f4:
	.4byte	gHomerunSequenceTimer
.L_8a2f8:
	.4byte	gUnk_3003C4C
.L_8a2fc:
	.4byte	gUnk_3003C4E
.L_8a300:
	.4byte	gUnk_3003C50
.L_8a304:
	.4byte	gUnk_3003C52
.L_8a308:
	.4byte	0x04000048
.L_8a30c:
	.4byte	0x0400004a
.L_8a310:
	.4byte	gUnk_3004820
.L_8a314:
	.4byte	gUnk_30047C8
.L_8a318:
	.4byte	sUnk_86E31F8
.L_8a31c:
	.4byte	gUnk_30047B8
.L_8a320:
	.4byte	sUnk_86E3208
.L_8a324:
	.4byte	gUnk_30047D0
.L_8a328:
	.4byte	sUnk_86E534C
.L_8a32c:
	.4byte	gUnk_3004A30
.L_8a330:
	.4byte	gUnk_30047F8
.L_8a334:
	.4byte	0x04000054
.L_8a338:
	.4byte	0x000002bd


thumb_func_start func_808A33C
func_808A33C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_8a3a4
	mov	r1, #3
	strb	r1, [r0, #0]
	mov	r9, r0
	ldr	r6, .L_8a3a8
	ldr	r7, .L_8a3ac
	ldr	r0, .L_8a3b0
	mov	ip, r0
	ldr	r1, .L_8a3b4
	mov	r8, r1
	ldr	r0, .L_8a3b8
	mov	r5, #0
	mov	r4, #72	@ 0x48
	add	r1, r0, #4
	ldr	r3, .L_8a3bc
	mov	r2, #2
.L_8a364:
	strb	r5, [r1, #4]
	ldmia	r3!, {r0}
	strh	r0, [r1, #0]
	strh	r4, [r1, #2]
	add	r1, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_8a364
	mov	r1, #0
	strb	r1, [r6, #0]
	mov	r0, #4
	strb	r0, [r7, #0]
	mov	r2, ip
	strb	r1, [r2, #0]
	mov	r1, r9
	ldrb	r0, [r1, #0]
	mov	r2, r8
	strb	r0, [r2, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_8089FFC
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8a3a4:
	.4byte	gUnk_30047B8
.L_8a3a8:
	.4byte	gHomerunSubstate
.L_8a3ac:
	.4byte	gHomerunState
.L_8a3b0:
	.4byte	gUnk_30047F4
.L_8a3b4:
	.4byte	gUnk_300482C
.L_8a3b8:
	.4byte	gUnk_30047F8
.L_8a3bc:
	.4byte	sUnk_86E3258


thumb_func_start func_808A3C0
func_808A3C0:
	push	{r4, r5, lr}
	bl	func_8089E60
	mov	r3, #0
	ldr	r0, .L_8a3e4
	ldr	r5, .L_8a3e8
	add	r1, r0, #4
	ldr	r2, .L_8a3ec
	ldr	r4, .L_8a3f0
.L_8a3d2:
	ldrb	r0, [r4, #0]
	cmp	r3, r0
	bne	.L_8a3f4
	mov	r0, #4
	strb	r0, [r1, #4]
	ldr	r0, [r2, #0]
	strh	r0, [r1, #0]
	strh	r5, [r1, #2]
	b	.L_8a400
.L_8a3e4:
	.4byte	gUnk_30047F8
.L_8a3e8:
	.4byte	0x0000ffec
.L_8a3ec:
	.4byte	sUnk_86E3258
.L_8a3f0:
	.4byte	gUnk_30047B8
.L_8a3f4:
	mov	r0, #0
	strb	r0, [r1, #4]
	ldr	r0, [r2, #0]
	strh	r0, [r1, #0]
	mov	r0, #72	@ 0x48
	strh	r0, [r1, #2]
.L_8a400:
	add	r1, #12
	add	r2, #4
	add	r3, #1
	cmp	r3, #2
	ble	.L_8a3d2
	ldr	r1, .L_8a434
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r1, .L_8a438
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_8089FFC
	ldr	r0, .L_8a43c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8a444
	ldr	r1, .L_8a440
	mov	r0, #10
	b	.L_8a448
.L_8a434:
	.4byte	gHomerunSubstate
.L_8a438:
	.4byte	gHomerunState
.L_8a43c:
	.4byte	gHomerunNewHighScore
.L_8a440:
	.4byte	gUnk_300482C
.L_8a444:
	ldr	r1, .L_8a460
	mov	r0, #9
.L_8a448:
	strb	r0, [r1, #0]
	ldr	r1, .L_8a464
	ldr	r0, .L_8a468
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_8a460:
	.4byte	gUnk_300482C
.L_8a464:
	.4byte	sUnk_86E3330
.L_8a468:
	.4byte	gUnk_30047B8


thumb_func_start func_808A46C
func_808A46C:
	push	{lr}
	ldr	r2, .L_8a49c
	ldr	r0, .L_8a4a0
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_8a4a4
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	add	r2, #4
	ldr	r0, .L_8a4a8
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_8a4ac
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_8a4b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8a4b4
	cmp	r0, #1
	beq	.L_8a4d4
	b	.L_8a4ea
.L_8a49c:
	.4byte	0x04000040
.L_8a4a0:
	.4byte	gUnk_3003C4C
.L_8a4a4:
	.4byte	gUnk_3003C4E
.L_8a4a8:
	.4byte	gUnk_3003C50
.L_8a4ac:
	.4byte	gUnk_3003C52
.L_8a4b0:
	.4byte	gLanguage
.L_8a4b4:
	ldr	r1, .L_8a4cc
	ldr	r0, .L_8a4d0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_8a4ea
.L_8a4cc:
	.4byte	sUnk_86E32F4
.L_8a4d0:
	.4byte	gUnk_300482C
.L_8a4d4:
	ldr	r1, .L_8a4f0
	ldr	r0, .L_8a4f4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_8a4ea:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8a4f0:
	.4byte	sUnk_86E32C4
.L_8a4f4:
	.4byte	gUnk_300482C


thumb_func_start func_808A4F8
func_808A4F8:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #4
	ldr	r1, .L_8a51c
	ldrh	r2, [r1, #0]
	mov	r0, #1
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_8a5c4
	ldr	r5, .L_8a520
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bne	.L_8a528
	ldr	r0, .L_8a524
	bl	m4aSongNumStart
	b	.L_8a6d8
	.align	2, 0
.L_8a51c:
	.4byte	gButtonsPressed
.L_8a520:
	.4byte	gUnk_30047B8
.L_8a524:
	.4byte	0x00000129
.L_8a528:
	ldr	r2, .L_8a584
	ldr	r0, .L_8a588
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #1
	ldr	r1, [r2, #0]
	cmp	r1, r0
	blt	.L_8a5a4
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_8a58c
	ldr	r0, .L_8a590
	str	r0, [r1, #0]
	ldr	r0, .L_8a594
	mov	r4, #0
	mov	r3, #0
	strh	r3, [r0, #2]
	strh	r3, [r0, #0]
	ldr	r2, .L_8a598
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	strb	r4, [r0, #8]
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	strh	r3, [r0, #0]
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	strh	r3, [r0, #2]
	ldr	r1, .L_8a59c
	mov	r0, #8
	strb	r0, [r1, #0]
	ldr	r0, .L_8a5a0
	strh	r3, [r0, #0]
	b	.L_8a6d8
.L_8a584:
	.4byte	gTotalScore
.L_8a588:
	.4byte	gUnk_300482D
.L_8a58c:
	.4byte	gUnk_30047D0
.L_8a590:
	.4byte	sUnk_86E5364
.L_8a594:
	.4byte	gUnk_30047C8
.L_8a598:
	.4byte	gUnk_30047F8
.L_8a59c:
	.4byte	gUnk_300482C
.L_8a5a0:
	.4byte	gUnk_3004A30
.L_8a5a4:
	ldr	r0, .L_8a5b8
	bl	m4aSongNumStart
	ldr	r0, .L_8a5bc
	strb	r4, [r0, #0]
	ldr	r1, .L_8a5c0
	mov	r0, #0
	strh	r0, [r1, #0]
.L_8a5b4:
	mov	r0, #0
	b	.L_8a6da
.L_8a5b8:
	.4byte	0x00000225
.L_8a5bc:
	.4byte	gUnk_300482C
.L_8a5c0:
	.4byte	gUnk_3004A30
.L_8a5c4:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_8a5d0
	mov	r4, #0
	b	.L_8a5f2
.L_8a5d0:
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_8a5dc
	mov	r4, #1
	b	.L_8a5f2
.L_8a5dc:
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_8a5e8
	mov	r4, #2
	b	.L_8a5f2
.L_8a5e8:
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_8a5f2
	mov	r4, #3
.L_8a5f2:
	cmp	r4, #4
	beq	.L_8a6c0
	ldr	r2, .L_8a658
	lsl	r1, r4, #2
	ldr	r4, .L_8a65c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	cmp	r1, #4
	beq	.L_8a6c0
	strb	r1, [r4, #0]
	ldr	r2, .L_8a660
	ldr	r1, .L_8a664
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strh	r0, [r2, #4]
	ldr	r1, .L_8a668
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strh	r0, [r2, #6]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r5, #0
	add	r6, r4, #0
	mov	r4, #0
	ldr	r7, .L_8a66c
	ldr	r3, .L_8a670
	ldr	r2, .L_8a674
.L_8a63a:
	ldrb	r0, [r6, #0]
	cmp	r0, #3
	bne	.L_8a696
	strb	r4, [r2, #8]
	ldr	r0, .L_8a678
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #1
	ldr	r1, [r7, #0]
	cmp	r1, r0
	bge	.L_8a67c
	mov	r0, #7
	strb	r0, [r3, #0]
	b	.L_8a6a8
.L_8a658:
	.4byte	sUnk_86E3218
.L_8a65c:
	.4byte	gUnk_30047B8
.L_8a660:
	.4byte	gUnk_30047C8
.L_8a664:
	.4byte	sUnk_86E31F8
.L_8a668:
	.4byte	sUnk_86E3208
.L_8a66c:
	.4byte	gTotalScore
.L_8a670:
	.4byte	gUnk_300482C
.L_8a674:
	.4byte	gUnk_30047F8
.L_8a678:
	.4byte	gUnk_300482D
.L_8a67c:
	ldr	r0, .L_8a68c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8a690
	mov	r0, #6
	strb	r0, [r3, #0]
	b	.L_8a6a8
	.align	2, 0
.L_8a68c:
	.4byte	gUnk_30047F4
.L_8a690:
	mov	r0, #11
	strb	r0, [r3, #0]
	b	.L_8a6a8
.L_8a696:
	ldrb	r0, [r6, #0]
	cmp	r0, r5
	bne	.L_8a6a4
	strb	r5, [r3, #0]
	mov	r0, #1
	strb	r0, [r2, #8]
	b	.L_8a6a8
.L_8a6a4:
	strb	r0, [r3, #0]
	strb	r4, [r2, #8]
.L_8a6a8:
	strh	r4, [r2, #0]
	strh	r4, [r2, #2]
	ldr	r0, .L_8a6bc
	strh	r4, [r0, #0]
	add	r2, #12
	add	r5, #1
	cmp	r5, #2
	ble	.L_8a63a
	b	.L_8a5b4
	.align	2, 0
.L_8a6bc:
	.4byte	gUnk_3004A30
.L_8a6c0:
	ldrh	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_8a6cc
	b	.L_8a5b4
.L_8a6cc:
	ldr	r0, .L_8a6e0
	bl	m4aSongNumStart
	ldr	r1, .L_8a6e4
	mov	r0, #3
	strb	r0, [r1, #0]
.L_8a6d8:
	mov	r0, #1
.L_8a6da:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_8a6e0:
	.4byte	0x00000129
.L_8a6e4:
	.4byte	gUnk_30047B8


thumb_func_start func_808A6E8
func_808A6E8:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_8a6fc
	ldrb	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_8a718
	cmp	r0, #1
	bgt	.L_8a700
	cmp	r0, #0
	beq	.L_8a70a
	b	.L_8a810
.L_8a6fc:
	.4byte	gHomerunSequenceState
.L_8a700:
	cmp	r0, #2
	beq	.L_8a774
	cmp	r0, #3
	beq	.L_8a7d8
	b	.L_8a810
.L_8a70a:
	mov	r0, #20
	bl	MinigameWaitForFrames
	cmp	r0, #0
	bne	.L_8a716
	b	.L_8a810
.L_8a716:
	b	.L_8a754
.L_8a718:
	ldr	r4, .L_8a75c
	ldr	r0, [r4, #0]
	sub	r0, #10
	str	r0, [r4, #0]
	ldr	r5, .L_8a760
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #0]
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_8a73c
	ldr	r0, .L_8a764
	bl	m4aSongNumStart
.L_8a73c:
	ldr	r0, [r4, #0]
	ldr	r1, .L_8a768
	ldr	r2, .L_8a76c
	bl	func_807A824
	ldr	r1, .L_8a770
	ldrh	r0, [r5, #0]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bne	.L_8a810
	mov	r0, #0
	strh	r0, [r5, #0]
.L_8a754:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	b	.L_8a810
.L_8a75c:
	.4byte	gTotalScore
.L_8a760:
	.4byte	gHomerunSequenceTimer
.L_8a764:
	.4byte	0x00000222
.L_8a768:
	.4byte	sUnk_86EAE1C
.L_8a76c:
	.4byte	0x000059a0
.L_8a770:
	.4byte	gUnk_300482D
.L_8a774:
	mov	r0, #60	@ 0x3c
	bl	MinigameWaitForFrames
	cmp	r0, #0
	beq	.L_8a810
	ldr	r1, .L_8a7cc
	ldr	r4, .L_8a7d0
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #208	@ 0xd0
	lsl	r2, r2, #6
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_8a7d4
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	mov	r3, #0
	mov	r1, #3
	strb	r1, [r0, #8]
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	strh	r3, [r0, #0]
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	strh	r3, [r0, #2]
	b	.L_8a810
.L_8a7cc:
	.4byte	sUnk_86E3324
.L_8a7d0:
	.4byte	gUnk_30047B8
.L_8a7d4:
	.4byte	gUnk_30047F8
.L_8a7d8:
	ldr	r3, .L_8a808
	ldr	r2, .L_8a80c
	ldrb	r0, [r2, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r1, #8]
	cmp	r0, #4
	bne	.L_8a7f2
	ldrh	r0, [r1, #6]
	sub	r0, #2
	strh	r0, [r1, #6]
.L_8a7f2:
	ldrb	r0, [r2, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	mov	r2, #6
	ldrsh	r0, [r1, r2]
	cmp	r0, #19
	bgt	.L_8a810
	mov	r0, #1
	b	.L_8a812
.L_8a808:
	.4byte	gUnk_30047F8
.L_8a80c:
	.4byte	gUnk_30047B8
.L_8a810:
	mov	r0, #0
.L_8a812:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_808A818
func_808A818:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_8a828
	ldrb	r2, [r5, #0]
	cmp	r2, #0
	beq	.L_8a82c
	cmp	r2, #1
	beq	.L_8a88c
	b	.L_8a8dc
.L_8a828:
	.4byte	gHomerunSequenceState
.L_8a82c:
	ldr	r4, .L_8a884
	ldr	r3, .L_8a888
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrh	r1, [r0, #6]
	add	r1, #2
	strh	r1, [r0, #6]
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r0, r4
	mov	r6, #6
	ldrsh	r0, [r1, r6]
	cmp	r0, #40	@ 0x28
	ble	.L_8a8dc
	mov	r0, #72	@ 0x48
	strh	r0, [r1, #6]
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	mov	r1, #5
	strb	r1, [r0, #8]
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	strh	r2, [r0, #0]
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	strh	r2, [r0, #2]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	b	.L_8a8dc
.L_8a884:
	.4byte	gUnk_30047F8
.L_8a888:
	.4byte	gUnk_30047B8
.L_8a88c:
	ldr	r2, .L_8a8c8
	ldr	r0, .L_8a8cc
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #1
	bne	.L_8a8dc
	ldr	r0, .L_8a8d0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8a8ae
	ldr	r0, .L_8a8d4
	bl	m4aSongNumStart
.L_8a8ae:
	ldr	r0, .L_8a8d8
	mov	r2, #0
	strh	r2, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #220	@ 0xdc
	lsl	r3, r3, #6
	add	r0, r3, #0
	strh	r0, [r1, #0]
	strb	r2, [r5, #0]
	mov	r0, #1
	b	.L_8a8de
	.align	2, 0
.L_8a8c8:
	.4byte	gUnk_30047F8
.L_8a8cc:
	.4byte	gUnk_30047B8
.L_8a8d0:
	.4byte	gHomerunNewHighScore
.L_8a8d4:
	.4byte	0x00000251
.L_8a8d8:
	.4byte	gUnk_3004A30
.L_8a8dc:
	mov	r0, #0
.L_8a8de:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_808A8E4
func_808A8E4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r3, .L_8aab0
	ldrb	r7, [r3, #0]
	lsl	r0, r7, #3
	ldr	r4, .L_8aab4
	add	r5, r0, r4
	ldr	r2, .L_8aab8
	ldr	r0, .L_8aabc
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	sub	r0, #3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_8a918
	b	.L_8aa4c
.L_8a918:
	ldr	r0, .L_8aac0
	ldrb	r1, [r0, #16]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	bne	.L_8a98e
	ldr	r0, .L_8aac4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r7, r7, r0
	add	r3, #2
	cmp	r7, #128	@ 0x80
	ble	.L_8a934
	b	.L_8ac5a
.L_8a934:
	cmp	r8, r7
	bge	.L_8a98e
	ldr	r1, .L_8aac8
	mov	r9, r1
	ldr	r2, .L_8aacc
	mov	sl, r2
	mov	r6, #13
	neg	r6, r6
	mov	r8, r7
.L_8a946:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #38	@ 0x26
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #168	@ 0xa8
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_8a946
	mov	r8, r7
.L_8a98e:
	ldr	r2, .L_8aad0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_8aad4
	ldr	r4, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8a9ca
	mov	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8a9ca
	strh	r0, [r2, #2]
	ldr	r0, .L_8aad8
	cmp	r4, r0
	bne	.L_8a9ca
	strh	r1, [r2, #2]
.L_8a9ca:
	ldrh	r0, [r2, #2]
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r7, r7, r0
	add	r3, #2
	cmp	r7, #128	@ 0x80
	ble	.L_8a9e0
	b	.L_8ac5a
.L_8a9e0:
	cmp	r8, r7
	bge	.L_8aa4c
	ldr	r1, .L_8aab4
	add	r6, r2, #0
	ldr	r4, .L_8aac8
	mov	sl, r4
	ldr	r0, .L_8aacc
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	mov	r4, r8
	lsl	r0, r4, #3
	add	r4, r0, r1
	mov	r0, r8
	sub	r0, r7, r0
	mov	r8, r0
.L_8aa02:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #6]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, #4
	ldrsh	r1, [r6, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_8aa02
	mov	r8, r7
.L_8aa4c:
	mov	r2, #0
	mov	ip, r2
.L_8aa50:
	mov	r4, ip
	lsl	r2, r4, #1
	add	r1, r2, r4
	lsl	r0, r1, #2
	ldr	r4, .L_8aab8
	add	r3, r0, r4
	ldrb	r0, [r3, #8]
	lsl	r0, r0, #2
	lsl	r6, r1, #3
	add	r0, r0, r6
	ldr	r1, .L_8aadc
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8aaee
	mov	r1, #1
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8aaee
	strh	r0, [r3, #2]
	ldrb	r0, [r3, #8]
	cmp	r0, #3
	bne	.L_8aae0
	mov	r0, #4
	strb	r0, [r3, #8]
	add	r0, r6, #0
	add	r0, #16
	ldr	r4, .L_8aadc
	add	r0, r0, r4
	b	.L_8aaec
	.align	2, 0
.L_8aab0:
	.4byte	gOamSlotsUsed
.L_8aab4:
	.4byte	gOamBuffer
.L_8aab8:
	.4byte	gUnk_30047F8
.L_8aabc:
	.4byte	gUnk_30047B8
.L_8aac0:
	.4byte	gCurrentCollection
.L_8aac4:
	.4byte	sUnk_86E540C
.L_8aac8:
	.4byte	0x000001ff
.L_8aacc:
	.4byte	0xfffffe00
.L_8aad0:
	.4byte	gUnk_30047C8
.L_8aad4:
	.4byte	gUnk_30047D0
.L_8aad8:
	.4byte	sUnk_86E5364
.L_8aadc:
	.4byte	sUnk_86E3264
.L_8aae0:
	cmp	r0, #5
	bne	.L_8aaee
	strb	r1, [r3, #8]
	add	r0, r6, #4
	ldr	r1, .L_8ac68
	add	r0, r0, r1
.L_8aaec:
	ldr	r4, [r0, #0]
.L_8aaee:
	mov	r1, ip
	add	r0, r2, r1
	lsl	r2, r0, #2
	ldr	r1, .L_8ac6c
	add	r0, r2, r1
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r7, r7, r0
	add	r3, #2
	cmp	r7, #128	@ 0x80
	ble	.L_8ab0c
	b	.L_8ac5a
.L_8ab0c:
	mov	r4, #1
	add	r4, ip
	mov	r9, r4
	cmp	r8, r7
	bge	.L_8ab80
	add	r0, r1, #0
	add	r6, r2, r0
	mov	r1, r8
	lsl	r0, r1, #3
	ldr	r2, .L_8ac70
	add	r4, r0, r2
	ldr	r0, .L_8ac74
	mov	ip, r0
	mov	r1, #13
	neg	r1, r1
	mov	sl, r1
	mov	r2, r8
	sub	r2, r7, r2
	mov	r8, r2
.L_8ab32:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #6]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, #4
	ldrsh	r1, [r6, r0]
	add	r1, r2, r1
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8ac78
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_8ab32
	mov	r8, r7
.L_8ab80:
	mov	ip, r9
	mov	r2, ip
	cmp	r2, #2
	bgt	.L_8ab8a
	b	.L_8aa50
.L_8ab8a:
	ldr	r2, .L_8ac7c
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_8ac80
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r2
	cmp	r0, r1
	bcs	.L_8abbe
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8abbe
	strh	r0, [r2, #2]
.L_8abbe:
	mov	r4, #0
	mov	ip, r4
.L_8abc2:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	ldr	r2, .L_8ac80
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r7, r7, r0
	add	r3, #2
	cmp	r7, #128	@ 0x80
	bgt	.L_8ac5a
	mov	r4, #1
	add	r4, ip
	mov	r9, r4
	cmp	r8, r7
	bge	.L_8ac4e
	ldr	r0, .L_8ac84
	mov	r2, ip
	lsl	r1, r2, #2
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	ip, r0
	mov	r4, r8
	lsl	r0, r4, #3
	ldr	r2, .L_8ac70
	add	r4, r0, r2
	ldr	r0, .L_8ac88
	add	r1, r1, r0
	ldr	r6, [r1, #0]
	mov	r0, r8
	sub	r0, r7, r0
	mov	r8, r0
.L_8ac02:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	add	r0, r1, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, r6
	ldr	r0, .L_8ac74
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8ac78
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r0, r8
	cmp	r0, #0
	bne	.L_8ac02
	mov	r8, r7
.L_8ac4e:
	mov	ip, r9
	mov	r1, ip
	cmp	r1, #2
	ble	.L_8abc2
	ldr	r2, .L_8ac8c
	strb	r7, [r2, #0]
.L_8ac5a:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8ac68:
	.4byte	sUnk_86E3264
.L_8ac6c:
	.4byte	gUnk_30047F8
.L_8ac70:
	.4byte	gOamBuffer
.L_8ac74:
	.4byte	0x000001ff
.L_8ac78:
	.4byte	0xfffffe00
.L_8ac7c:
	.4byte	gUnk_3004820
.L_8ac80:
	.4byte	sUnk_86E52FC
.L_8ac84:
	.4byte	sUnk_86E32B8
.L_8ac88:
	.4byte	sUnk_86E32AC
.L_8ac8c:
	.4byte	gOamSlotsUsed
