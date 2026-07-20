.include "macros.s.inc"


thumb_func_start func_802C894
func_802C894:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_2c8cc
	add	r5, r4, #0
	add	r5, #40	@ 0x28
	ldrb	r0, [r5, #0]
	add	r2, r0, #0
	add	r3, r4, #0
	cmp	r2, #0
	bne	.L_2c91c
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bne	.L_2c8dc
	ldr	r0, [r4, #20]
	ldr	r1, .L_2c8d0
	and	r0, r1
	ldr	r1, .L_2c8d4
	cmp	r0, r1
	bne	.L_2c8dc
	mov	r0, #77	@ 0x4d
	strb	r0, [r5, #0]
	ldr	r0, .L_2c8d8
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #29]
	b	.L_2c9a4
.L_2c8cc:
	.4byte	gCurrentSprite
.L_2c8d0:
	.4byte	0xFFFFFF
.L_2c8d4:
	.4byte	0x70007
.L_2c8d8:
	.4byte	sUnk_83B77F0
.L_2c8dc:
	ldr	r1, .L_2c8f4
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_2c8f8
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2c9a4
	b	.L_2c902
	.align	2, 0
.L_2c8f4:
	.4byte	gWarioData
.L_2c8f8:
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_2c9a4
.L_2c902:
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r2, #0
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_2c918
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r2, [r3, #20]
	b	.L_2c9a4
	.align	2, 0
.L_2c918:
	.4byte	sUnk_83B7660
.L_2c91c:
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_2c986
	ldr	r0, .L_2c964
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_2c9a4
	ldrb	r0, [r4, #29]
	cmp	r0, #29
	bls	.L_2c9a4
	ldr	r0, [r4, #20]
	ldr	r1, .L_2c968
	and	r0, r1
	ldr	r1, .L_2c96c
	cmp	r0, r1
	bne	.L_2c9a4
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_2c970
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	b	.L_2c97e
	.align	2, 0
.L_2c964:
	.4byte	gWarioData
.L_2c968:
	.4byte	0xFFFFFF
.L_2c96c:
	.4byte	0x10008
.L_2c970:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	str	r5, [sp, #4]
.L_2c97e:
	mov	r0, #152	@ 0x98
	bl	SpawnPrimarySpriteWithStatus
	b	.L_2c9a4
.L_2c986:
	ldr	r0, .L_2c9ac
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	ldr	r0, .L_2c9b0
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_2c99c
	ldrb	r0, [r4, #29]
	cmp	r0, #29
	bhi	.L_2c9a4
.L_2c99c:
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
.L_2c9a4:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_2c9ac:
	.4byte	sUnk_83B75E8
.L_2c9b0:
	.4byte	gWarioData


thumb_func_start func_802C9B4
func_802C9B4:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_2ca34
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r5, #0
	mov	r2, #0
	add	r4, r0, #0
	orr	r4, r1
	strh	r4, [r3, #0]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	mov	r1, #32
	strb	r1, [r0, #0]
	mov	r6, #38	@ 0x26
	mov	r0, #28
	strb	r0, [r6, r3]
	ldr	r0, .L_2ca38
	str	r0, [r3, #4]
	strb	r5, [r3, #22]
	strh	r2, [r3, #20]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r5, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	add	r2, r3, #0
	add	r2, #41	@ 0x29
	mov	r0, #80	@ 0x50
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	strb	r1, [r3, #30]
	mov	r0, #1
	strb	r0, [r3, #26]
	mov	r0, #30
	strb	r0, [r3, #29]
	ldr	r1, .L_2ca3c
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_2ca44
	ldr	r0, .L_2ca40
	and	r4, r0
	strh	r4, [r3, #0]
	mov	r0, #111	@ 0x6f
	b	.L_2ca4c
	.align	2, 0
.L_2ca34:
	.4byte	gCurrentSprite
.L_2ca38:
	.4byte	sUnk_83B75E8
.L_2ca3c:
	.4byte	gWarioData
.L_2ca40:
	.4byte	0xFFBF
.L_2ca44:
	mov	r0, #64	@ 0x40
	orr	r4, r0
	strh	r4, [r3, #0]
	mov	r0, #113	@ 0x71
.L_2ca4c:
	strb	r0, [r3, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802CA54
func_802CA54:
	push	{r4, r5, r6, lr}
	bl	func_802C894
	ldr	r3, .L_2ca6c
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2ca70
	sub	r0, #1
	b	.L_2cb08
	.align	2, 0
.L_2ca6c:
	.4byte	gCurrentSprite
.L_2ca70:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_2ca98
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2ca9c
	cmp	r1, r0
	bne	.L_2caa0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2caaa
.L_2ca98:
	.4byte	sUnk_83B78D8
.L_2ca9c:
	.4byte	0x7FFF
.L_2caa0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_2caaa:
	strh	r0, [r3, #8]
	ldr	r0, .L_2caf0
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_2cb0a
	ldr	r2, .L_2caf4
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	add	r3, r1, #0
	cmp	r3, #0
	beq	.L_2caf8
	sub	r1, #1
	strb	r1, [r0, #0]
	ldrh	r0, [r2, #10]
	sub	r0, #4
	strh	r0, [r2, #10]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #80	@ 0x50
	bne	.L_2cb0a
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2cb0a
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	b	.L_2cb02
.L_2caf0:
	.4byte	gMainTimer
.L_2caf4:
	.4byte	gCurrentSprite
.L_2caf8:
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
.L_2cb02:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
.L_2cb08:
	strb	r0, [r1, #0]
.L_2cb0a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802CB10
func_802CB10:
	push	{r4, r5, r6, lr}
	bl	func_802C894
	ldr	r3, .L_2cb28
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2cb2c
	sub	r0, #1
	b	.L_2cbc4
	.align	2, 0
.L_2cb28:
	.4byte	gCurrentSprite
.L_2cb2c:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_2cb54
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2cb58
	cmp	r1, r0
	bne	.L_2cb5c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2cb66
.L_2cb54:
	.4byte	sUnk_83B78D8
.L_2cb58:
	.4byte	0x7FFF
.L_2cb5c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_2cb66:
	strh	r0, [r3, #8]
	ldr	r0, .L_2cbac
	ldrb	r0, [r0, #0]
	mov	r3, #1
	and	r3, r0
	cmp	r3, #0
	bne	.L_2cbc6
	ldr	r2, .L_2cbb0
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	cmp	r1, #159	@ 0x9f
	bhi	.L_2cbb4
	add	r1, #1
	strb	r1, [r0, #0]
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #80	@ 0x50
	bne	.L_2cbc6
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_2cbc6
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	b	.L_2cbbe
	.align	2, 0
.L_2cbac:
	.4byte	gMainTimer
.L_2cbb0:
	.4byte	gCurrentSprite
.L_2cbb4:
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
.L_2cbbe:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
.L_2cbc4:
	strb	r0, [r1, #0]
.L_2cbc6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802CBCC
func_802CBCC:
	push	{lr}
	ldr	r1, .L_2cbf0
	ldr	r0, .L_2cbf4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r2, #0]
	mov	r0, #115	@ 0x73
	strb	r0, [r1, #28]
	mov	r0, #86	@ 0x56
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_2cbf0:
	.4byte	gCurrentSprite
.L_2cbf4:
	.4byte	sUnk_83B76E8


thumb_func_start func_802CBF8
func_802CBF8:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r2, .L_2cc70
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r4, r2, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	ip, r2
	cmp	r1, #0
	bne	.L_2ccc8
	mov	r3, #15
	strb	r3, [r2, #31]
	ldr	r0, .L_2cc74
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	mov	r2, #0
	mov	r0, ip
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #0]
	ldr	r0, .L_2cc78
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #35	@ 0x23
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	strb	r2, [r4, #0]
	mov	r0, #5
	mov	r2, ip
	strb	r0, [r2, #30]
	mov	r0, #2
	strb	r0, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_2cc7c
	and	r0, r1
	strh	r0, [r2, #0]
	strb	r3, [r2, #29]
	ldr	r1, .L_2cc80
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_2cc84
	mov	r0, #73	@ 0x49
	strb	r0, [r2, #28]
	b	.L_2cc8a
	.align	2, 0
.L_2cc70:
	.4byte	gCurrentSprite
.L_2cc74:
	.4byte	sUnk_83B76F8
.L_2cc78:
	.4byte	0xFBFF
.L_2cc7c:
	.4byte	0xFFFB
.L_2cc80:
	.4byte	gWarioData
.L_2cc84:
	mov	r0, #71	@ 0x47
	mov	r4, ip
	strb	r0, [r4, #28]
.L_2cc8a:
	mov	r5, ip
	ldrh	r1, [r5, #0]
	mov	r5, #64	@ 0x40
	add	r0, r5, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L_2ccb2
	mov	r0, ip
	ldrb	r1, [r0, #24]
	ldrb	r2, [r0, #25]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #153	@ 0x99
	bl	SpawnPrimarySpriteWithStatus
	b	.L_2ccc8
.L_2ccb2:
	mov	r2, ip
	ldrb	r1, [r2, #24]
	ldrb	r2, [r2, #25]
	mov	r5, ip
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #153	@ 0x99
	bl	SpawnPrimarySpriteWithStatus
.L_2ccc8:
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_802CCD0
func_802CCD0:
	ldr	r1, .L_2ccf0
	ldr	r0, .L_2ccf4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #30
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_2ccf0:
	.4byte	gCurrentSprite
.L_2ccf4:
	.4byte	sUnk_83B7688


thumb_func_start func_802CCF8
func_802CCF8:
	ldr	r1, .L_2cd14
	ldr	r0, .L_2cd18
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_2cd14:
	.4byte	gCurrentSprite
.L_2cd18:
	.4byte	sUnk_83B7688


thumb_func_start func_802CD1C
func_802CD1C:
	push	{lr}
	ldr	r1, .L_2cd2c
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_802CCF8
	pop	{r0}
	bx	r0
.L_2cd2c:
	.4byte	gCurrentSprite


thumb_func_start func_802CD30
func_802CD30:
	push	{lr}
	ldr	r1, .L_2cd40
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_802CCF8
	pop	{r0}
	bx	r0
.L_2cd40:
	.4byte	gCurrentSprite


thumb_func_start func_802CD44
func_802CD44:
	push	{r4, r5, lr}
	ldr	r5, .L_2cd8c
	ldr	r0, .L_2cd90
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	mov	r0, #1
	strb	r0, [r5, #26]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_2cd94
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2cd8c:
	.4byte	gCurrentSprite
.L_2cd90:
	.4byte	sUnk_83B76F8
.L_2cd94:
	.4byte	0xFEFF


thumb_func_start func_802CD98
func_802CD98:
	push	{lr}
	ldr	r1, .L_2cda8
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_802CD44
	pop	{r0}
	bx	r0
.L_2cda8:
	.4byte	gCurrentSprite


thumb_func_start func_802CDAC
func_802CDAC:
	push	{lr}
	ldr	r1, .L_2cdbc
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_802CD44
	pop	{r0}
	bx	r0
.L_2cdbc:
	.4byte	gCurrentSprite


thumb_func_start func_802CDC0
func_802CDC0:
	push	{lr}
	ldr	r2, .L_2cdf4
	ldr	r0, .L_2cdf8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #1
	strb	r0, [r2, #26]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_2cdf4:
	.4byte	gCurrentSprite
.L_2cdf8:
	.4byte	sUnk_83B76F8


thumb_func_start func_802CDFC
func_802CDFC:
	push	{lr}
	ldr	r1, .L_2ce0c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_802CDC0
	pop	{r0}
	bx	r0
.L_2ce0c:
	.4byte	gCurrentSprite


thumb_func_start func_802CE10
func_802CE10:
	push	{lr}
	ldr	r1, .L_2ce20
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_802CDC0
	pop	{r0}
	bx	r0
.L_2ce20:
	.4byte	gCurrentSprite


thumb_func_start func_802CE24
func_802CE24:
	ldr	r2, .L_2ce54
	ldr	r0, .L_2ce58
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	beq	.L_2ce50
	mov	r0, #5
	strb	r0, [r2, #30]
.L_2ce50:
	bx	lr
	.align	2, 0
.L_2ce54:
	.4byte	gCurrentSprite
.L_2ce58:
	.4byte	sUnk_83B7688


thumb_func_start func_802CE5C
func_802CE5C:
	push	{lr}
	ldr	r1, .L_2ce6c
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_802CE24
	pop	{r0}
	bx	r0
.L_2ce6c:
	.4byte	gCurrentSprite


thumb_func_start func_802CE70
func_802CE70:
	push	{lr}
	ldr	r1, .L_2ce80
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_802CE24
	pop	{r0}
	bx	r0
.L_2ce80:
	.4byte	gCurrentSprite


thumb_func_start func_802CE84
func_802CE84:
	ldr	r2, .L_2cea8
	ldr	r0, .L_2ceac
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_2cea8:
	.4byte	gCurrentSprite
.L_2ceac:
	.4byte	sUnk_83B7688


thumb_func_start func_802CEB0
func_802CEB0:
	push	{lr}
	ldr	r1, .L_2cec0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_802CE84
	pop	{r0}
	bx	r0
.L_2cec0:
	.4byte	gCurrentSprite


thumb_func_start func_802CEC4
func_802CEC4:
	push	{lr}
	ldr	r1, .L_2ced4
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_802CE84
	pop	{r0}
	bx	r0
.L_2ced4:
	.4byte	gCurrentSprite


thumb_func_start func_802CED8
func_802CED8:
	push	{lr}
	ldr	r0, .L_2ceec
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_2cef0
	bl	func_802CE5C
	b	.L_2cef4
.L_2ceec:
	.4byte	gMainTimer
.L_2cef0:
	bl	func_802CE70
.L_2cef4:
	pop	{r0}
	bx	r0


thumb_func_start func_802CEF8
func_802CEF8:
	ldr	r1, .L_2cf0c
	ldr	r0, .L_2cf10
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	mov	r0, #1
	strb	r0, [r1, #29]
	bx	lr
.L_2cf0c:
	.4byte	gCurrentSprite
.L_2cf10:
	.4byte	sUnk_83B7688


thumb_func_start func_802CF14
func_802CF14:
	push	{lr}
	ldr	r1, .L_2cf24
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_802CEF8
	pop	{r0}
	bx	r0
.L_2cf24:
	.4byte	gCurrentSprite


thumb_func_start func_802CF28
func_802CF28:
	push	{lr}
	ldr	r1, .L_2cf38
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_802CEF8
	pop	{r0}
	bx	r0
.L_2cf38:
	.4byte	gCurrentSprite


thumb_func_start func_802CF3C
func_802CF3C:
	ldr	r1, .L_2cf54
	mov	r3, #0
	mov	r2, #1
	strb	r2, [r1, #31]
	ldr	r0, .L_2cf58
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r3, [r1, #20]
	strb	r0, [r1, #22]
	strb	r2, [r1, #29]
	bx	lr
	.align	2, 0
.L_2cf54:
	.4byte	gCurrentSprite
.L_2cf58:
	.4byte	sUnk_83B7688


thumb_func_start func_802CF5C
func_802CF5C:
	push	{lr}
	ldr	r1, .L_2cf6c
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_802CF3C
	pop	{r0}
	bx	r0
.L_2cf6c:
	.4byte	gCurrentSprite


thumb_func_start func_802CF70
func_802CF70:
	push	{lr}
	ldr	r1, .L_2cf80
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_802CF3C
	pop	{r0}
	bx	r0
.L_2cf80:
	.4byte	gCurrentSprite


thumb_func_start func_802CF84
func_802CF84:
	ldr	r1, .L_2cf94
	ldr	r0, .L_2cf98
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_2cf94:
	.4byte	gCurrentSprite
.L_2cf98:
	.4byte	sUnk_83B7688


thumb_func_start func_802CF9C
func_802CF9C:
	ldr	r1, .L_2cfb4
	mov	r2, #0
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_2cfb8
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_2cfb4:
	.4byte	gCurrentSprite
.L_2cfb8:
	.4byte	0xFEFF


thumb_func_start func_802CFBC
func_802CFBC:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_2cfd8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2cfe0
	ldr	r1, .L_2cfdc
	mov	r0, #29
	strb	r0, [r1, #28]
	b	.L_2cff6
	.align	2, 0
.L_2cfd8:
	.4byte	gSpriteCollisionResult
.L_2cfdc:
	.4byte	gCurrentSprite
.L_2cfe0:
	ldr	r2, .L_2cffc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2cff6
	mov	r0, #25
	strb	r0, [r2, #28]
.L_2cff6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2cffc:
	.4byte	gCurrentSprite


thumb_func_start func_802D000
func_802D000:
	ldr	r2, .L_2d02c
	ldr	r0, .L_2d030
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #26
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #65	@ 0x41
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, #32
	strb	r0, [r2, #30]
	mov	r0, #1
	strb	r0, [r2, #26]
	bx	lr
	.align	2, 0
.L_2d02c:
	.4byte	gCurrentSprite
.L_2d030:
	.4byte	sUnk_83B76A0


thumb_func_start func_802D034
func_802D034:
	push	{r4, lr}
	ldr	r0, .L_2d084
	ldrb	r0, [r0, #0]
	ldr	r4, .L_2d088
	cmp	r0, #5
	bne	.L_2d054
	ldr	r0, .L_2d08c
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_2d054
	ldrh	r0, [r4, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r4, #0]
.L_2d054:
	add	r2, r4, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2d094
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_2d0b6
	ldrh	r0, [r2, #8]
	sub	r0, #68	@ 0x44
	mov	r1, #0
	strh	r0, [r2, #8]
	ldr	r0, .L_2d090
	str	r0, [r2, #4]
	strh	r3, [r2, #20]
	strb	r1, [r2, #22]
	b	.L_2d0b6
	.align	2, 0
.L_2d084:
	.4byte	gWarioData
.L_2d088:
	.4byte	gCurrentSprite
.L_2d08c:
	.4byte	gMainTimer
.L_2d090:
	.4byte	sUnk_83B75E8
.L_2d094:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2d0aa
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #4
	strh	r0, [r2, #8]
	b	.L_2d0b6
.L_2d0aa:
	bl	func_802C9B4
	ldrh	r1, [r4, #0]
	ldr	r0, .L_2d0bc
	and	r0, r1
	strh	r0, [r4, #0]
.L_2d0b6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2d0bc:
	.4byte	0xFFFB


thumb_func_start func_802D0C0
func_802D0C0:
	push	{r4, lr}
	ldr	r0, .L_2d120
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_2d124
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #12
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_2d128
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	strb	r1, [r2, #30]
	mov	r0, #1
	strb	r0, [r2, #26]
	strb	r1, [r2, #28]
	mov	r0, #85	@ 0x55
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2d120:
	.4byte	gCurrentSprite
.L_2d124:
	.4byte	0xFFFB
.L_2d128:
	.4byte	sUnk_83B77A8


thumb_func_start func_802D12C
func_802D12C:
	push	{r4, lr}
	ldr	r4, .L_2d154
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	ldr	r0, .L_2d158
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_2d14c
	ldr	r0, .L_2d15c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d160
.L_2d14c:
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
	b	.L_2d17e
	.align	2, 0
.L_2d154:
	.4byte	gCurrentSprite
.L_2d158:
	.4byte	gUnk_30000A0
.L_2d15c:
	.4byte	gSpriteCollisionResult
.L_2d160:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d170
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_2d174
.L_2d170:
	ldrh	r0, [r4, #10]
	sub	r0, #4
.L_2d174:
	strh	r0, [r4, #10]
	ldr	r1, .L_2d184
	ldrh	r0, [r1, #8]
	add	r0, #4
	strh	r0, [r1, #8]
.L_2d17e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2d184:
	.4byte	gCurrentSprite


thumb_func_start func_802D188
func_802D188:
	ldr	r1, .L_2d1a4
	ldr	r0, .L_2d1a8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #7
	strb	r0, [r2, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_2d1a4:
	.4byte	gCurrentSprite
.L_2d1a8:
	.4byte	sUnk_83B78B0


thumb_func_start func_802D1AC
func_802D1AC:
	ldr	r2, .L_2d1c8
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_2d1c6
	strh	r0, [r2, #0]
.L_2d1c6:
	bx	lr
.L_2d1c8:
	.4byte	gCurrentSprite


thumb_func_start func_802D1CC
func_802D1CC:
	push	{r4, lr}
	ldr	r0, .L_2d234
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_2d238
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r1, #33	@ 0x21
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_2d23c
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #6
	strb	r0, [r2, #30]
	mov	r0, #1
	strb	r0, [r2, #26]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #27
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2d234:
	.4byte	gCurrentSprite
.L_2d238:
	.4byte	0xFFFB
.L_2d23c:
	.4byte	sUnk_83B7708


thumb_func_start func_802D240
func_802D240:
	ldr	r2, .L_2d258
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_2d256
	strh	r0, [r2, #0]
.L_2d256:
	bx	lr
.L_2d258:
	.4byte	gCurrentSprite


thumb_func_start SpriteSkeletonBird
SpriteSkeletonBird:
	push	{lr}
	ldr	r0, .L_2d284
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_2d28c
	ldr	r0, .L_2d288
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #5
	beq	.L_2d29e
	ldrh	r0, [r2, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	bls	.L_2d29e
	sub	r0, #1
	strb	r0, [r2, #29]
	b	.L_2d29e
.L_2d284:
	.4byte	gWarioData
.L_2d288:
	.4byte	gCurrentSprite
.L_2d28c:
	ldr	r0, .L_2d2c0
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #26
	beq	.L_2d29e
	ldrh	r1, [r2, #0]
	ldr	r0, .L_2d2c4
	and	r0, r1
	strh	r0, [r2, #0]
.L_2d29e:
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d2ae
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_2d2ae:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_2d2b6
	b	.L_2d64e
.L_2d2b6:
	lsl	r0, r0, #2
	ldr	r1, .L_2d2c8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_2d2c0:
	.4byte	gCurrentSprite
.L_2d2c4:
	.4byte	0xFFFB
.L_2d2c8:
	.4byte	.L_2d2cc
.L_2d2cc:
	.4byte	.L_2d49c
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4f6
	.4byte	.L_2d4fa
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4b8
	.4byte	.L_2d4bc
	.4byte	.L_2d4c2
	.4byte	.L_2d4c6
	.4byte	.L_2d4cc
	.4byte	.L_2d4d0
	.4byte	.L_2d4d6
	.4byte	.L_2d64e
	.4byte	.L_2d4dc
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4e2
	.4byte	.L_2d4e6
	.4byte	.L_2d4ec
	.4byte	.L_2d4f0
	.4byte	.L_2d500
	.4byte	.L_2d508
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4d6
	.4byte	.L_2d558
	.4byte	.L_2d4dc
	.4byte	.L_2d528
	.4byte	.L_2d50e
	.4byte	.L_2d518
	.4byte	.L_2d51e
	.4byte	.L_2d528
	.4byte	.L_2d52e
	.4byte	.L_2d538
	.4byte	.L_2d53e
	.4byte	.L_2d548
	.4byte	.L_2d54e
	.4byte	.L_2d558
	.4byte	.L_2d55e
	.4byte	.L_2d56e
	.4byte	.L_2d574
	.4byte	.L_2d584
	.4byte	.L_2d57a
	.4byte	.L_2d58e
	.4byte	.L_2d580
	.4byte	.L_2d584
	.4byte	.L_2d58a
	.4byte	.L_2d58e
	.4byte	.L_2d594
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4c2
	.4byte	.L_2d4cc
	.4byte	.L_2d59a
	.4byte	.L_2d5a0
	.4byte	.L_2d5a6
	.4byte	.L_2d5ac
	.4byte	.L_2d5be
	.4byte	.L_2d5c4
	.4byte	.L_2d5b2
	.4byte	.L_2d5b8
	.4byte	.L_2d5ca
	.4byte	.L_2d5d4
	.4byte	.L_2d60a
	.4byte	.L_2d612
	.4byte	.L_2d5e0
	.4byte	.L_2d5e8
	.4byte	.L_2d618
	.4byte	.L_2d620
	.4byte	.L_2d5ee
	.4byte	.L_2d5f6
	.4byte	.L_2d626
	.4byte	.L_2d62e
	.4byte	.L_2d5fc
	.4byte	.L_2d604
	.4byte	.L_2d634
	.4byte	.L_2d63c
	.4byte	.L_2d642
	.4byte	.L_2d648
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d64e
	.4byte	.L_2d4a2
	.4byte	.L_2d64e
	.4byte	.L_2d4a8
	.4byte	.L_2d4ae
	.4byte	.L_2d4b2
.L_2d49c:
	bl	func_802C9B4
	b	.L_2d652
.L_2d4a2:
	bl	func_802CA54
	b	.L_2d652
.L_2d4a8:
	bl	func_802CB10
	b	.L_2d652
.L_2d4ae:
	bl	func_802CBCC
.L_2d4b2:
	bl	func_802CBF8
	b	.L_2d652
.L_2d4b8:
	bl	func_802CCD0
.L_2d4bc:
	bl	func_8023FA8
	b	.L_2d652
.L_2d4c2:
	bl	func_802CD98
.L_2d4c6:
	bl	SpriteUtilFallOffscreenRight
	b	.L_2d652
.L_2d4cc:
	bl	func_802CDAC
.L_2d4d0:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_2d652
.L_2d4d6:
	bl	func_802CE5C
	b	.L_2d558
.L_2d4dc:
	bl	func_802CE70
	b	.L_2d528
.L_2d4e2:
	bl	func_802CD1C
.L_2d4e6:
	bl	func_8024478
	b	.L_2d652
.L_2d4ec:
	bl	func_802CD30
.L_2d4f0:
	bl	func_802449C
	b	.L_2d652
.L_2d4f6:
	bl	func_802D000
.L_2d4fa:
	bl	func_802D034
	b	.L_2d652
.L_2d500:
	mov	r0, #1
	strb	r0, [r2, #29]
	bl	func_802CF9C
.L_2d508:
	bl	func_802CFBC
	b	.L_2d652
.L_2d50e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	beq	.L_2d564
	bl	func_8024688
.L_2d518:
	bl	func_80246B8
	b	.L_2d652
.L_2d51e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	beq	.L_2d564
	bl	func_802473C
.L_2d528:
	bl	func_802476C
	b	.L_2d652
.L_2d52e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	beq	.L_2d564
	bl	func_80247F0
.L_2d538:
	bl	func_8024820
	b	.L_2d652
.L_2d53e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	beq	.L_2d564
	bl	func_80248A4
.L_2d548:
	bl	func_80248D4
	b	.L_2d652
.L_2d54e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	beq	.L_2d564
	bl	func_8024958
.L_2d558:
	bl	func_8024988
	b	.L_2d652
.L_2d55e:
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	bne	.L_2d56a
.L_2d564:
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
	b	.L_2d652
.L_2d56a:
	bl	func_8024A0C
.L_2d56e:
	bl	func_8024A3C
	b	.L_2d652
.L_2d574:
	bl	func_8024AC0
	b	.L_2d584
.L_2d57a:
	bl	func_8024BEC
	b	.L_2d58e
.L_2d580:
	bl	func_802CEB0
.L_2d584:
	bl	func_8024AD4
	b	.L_2d652
.L_2d58a:
	bl	func_802CEC4
.L_2d58e:
	bl	func_8024C00
	b	.L_2d652
.L_2d594:
	bl	func_802CED8
	b	.L_2d652
.L_2d59a:
	bl	func_802CF14
	b	.L_2d652
.L_2d5a0:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_2d652
.L_2d5a6:
	bl	func_802CF28
	b	.L_2d652
.L_2d5ac:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_2d652
.L_2d5b2:
	bl	func_802CF5C
	b	.L_2d652
.L_2d5b8:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_2d652
.L_2d5be:
	bl	func_802CF70
	b	.L_2d652
.L_2d5c4:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_2d652
.L_2d5ca:
	bl	func_802CF84
	ldr	r1, .L_2d5dc
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #28]
.L_2d5d4:
	bl	SpriteUtilThrownLeftSoft
	b	.L_2d652
	.align	2, 0
.L_2d5dc:
	.4byte	gCurrentSprite
.L_2d5e0:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d5e8:
	bl	SpriteUtilThrownLeftHard
	b	.L_2d652
.L_2d5ee:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d5f6:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_2d652
.L_2d5fc:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d604:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_2d652
.L_2d60a:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d612:
	bl	SpriteUtilThrownRightSoft
	b	.L_2d652
.L_2d618:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d620:
	bl	SpriteUtilThrownRightHard
	b	.L_2d652
.L_2d626:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d62e:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_2d652
.L_2d634:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	bl	func_802CF84
.L_2d63c:
	bl	SpriteUtilThrownUpRightHard
	b	.L_2d652
.L_2d642:
	bl	func_802CE10
	b	.L_2d652
.L_2d648:
	bl	func_802CDFC
	b	.L_2d652
.L_2d64e:
	bl	SpriteUtilDie
.L_2d652:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown98
SpriteUnknown98:
	push	{lr}
	ldr	r0, .L_2d66c
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_2d67c
	cmp	r0, #16
	bgt	.L_2d670
	cmp	r0, #0
	beq	.L_2d676
	b	.L_2d688
.L_2d66c:
	.4byte	gCurrentSprite
.L_2d670:
	cmp	r0, #50	@ 0x32
	beq	.L_2d682
	b	.L_2d688
.L_2d676:
	bl	func_802D0C0
	b	.L_2d68c
.L_2d67c:
	bl	func_802D12C
	b	.L_2d68c
.L_2d682:
	bl	func_802D1AC
	b	.L_2d68c
.L_2d688:
	bl	func_802D188
.L_2d68c:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknown99
SpriteUnknown99:
	push	{lr}
	ldr	r2, .L_2d6a8
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_2d6ac
	strh	r0, [r2, #0]
	b	.L_2d6c8
	.align	2, 0
.L_2d6a8:
	.4byte	gCurrentSprite
.L_2d6ac:
	ldrb	r1, [r2, #28]
	cmp	r1, #0
	beq	.L_2d6b8
	cmp	r1, #16
	beq	.L_2d6be
	b	.L_2d6c2
.L_2d6b8:
	bl	func_802D1CC
	b	.L_2d6c2
.L_2d6be:
	bl	func_802D240
.L_2d6c2:
	ldr	r1, .L_2d6cc
	mov	r0, #1
	strb	r0, [r1, #31]
.L_2d6c8:
	pop	{r0}
	bx	r0
.L_2d6cc:
	.4byte	gCurrentSprite
