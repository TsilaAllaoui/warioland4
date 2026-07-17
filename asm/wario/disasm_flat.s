.include "macros.s.inc"


thumb_func_start func_801AF4C
func_801AF4C:
	push	{lr}
	ldr	r1, .L_1af68
	ldr	r0, .L_1af6c
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1af68:
	.4byte	sFlatWarioPoseTable
.L_1af6c:
	.4byte	gWarioData


thumb_func_start func_801AF70
func_801AF70:
	ldr	r2, .L_1afa4
	ldr	r3, .L_1afa8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1afac
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1afac
	mov	r0, #2
	b	.L_1afae
.L_1afa4:
	.4byte	gWarioData
.L_1afa8:
	.4byte	sUnk_832504C
.L_1afac:
	mov	r0, #255	@ 0xff
.L_1afae:
	bx	lr


thumb_func_start func_801AFB0
func_801AFB0:
	ldr	r2, .L_1afe4
	ldr	r3, .L_1afe8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1afec
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1afec
	mov	r0, #254	@ 0xfe
	b	.L_1afee
.L_1afe4:
	.4byte	gWarioData
.L_1afe8:
	.4byte	sUnk_83250A0
.L_1afec:
	mov	r0, #255	@ 0xff
.L_1afee:
	bx	lr


thumb_func_start func_801AFF0
func_801AFF0:
	push	{r4, lr}
	ldr	r0, .L_1b008
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b010
	ldr	r1, .L_1b00c
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1b062
.L_1b008:
	.4byte	gButtonsPressed
.L_1b00c:
	.4byte	gWarioData
.L_1b010:
	ldr	r0, .L_1b028
	ldrh	r0, [r0, #0]
	mov	r1, #48	@ 0x30
	and	r1, r0
	add	r3, r1, #0
	cmp	r3, #0
	beq	.L_1b030
	ldr	r0, .L_1b02c
	strh	r1, [r0, #14]
	mov	r0, #3
	b	.L_1b062
	.align	2, 0
.L_1b028:
	.4byte	gButtonsHeld
.L_1b02c:
	.4byte	gWarioData
.L_1b030:
	ldr	r2, .L_1b068
	ldr	r4, .L_1b06c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1b060
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1b060
	strb	r0, [r2, #31]
.L_1b060:
	mov	r0, #255	@ 0xff
.L_1b062:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_1b068:
	.4byte	gWarioData
.L_1b06c:
	.4byte	sUnk_832513C


thumb_func_start func_801B070
func_801B070:
	push	{r4, lr}
	ldr	r0, .L_1b088
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b090
	ldr	r1, .L_1b08c
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1b10c
.L_1b088:
	.4byte	gButtonsPressed
.L_1b08c:
	.4byte	gWarioData
.L_1b090:
	ldr	r0, .L_1b0b0
	ldr	r1, .L_1b0b4
	ldrh	r4, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r4, #0
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_1b0c4
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1b0b8
	mov	r0, #32
	strh	r0, [r3, #22]
	b	.L_1b0da
.L_1b0b0:
	.4byte	gButtonsHeld
.L_1b0b4:
	.4byte	gWarioData
.L_1b0b8:
	ldr	r0, .L_1b0c0
	strh	r0, [r3, #22]
	b	.L_1b0da
	.align	2, 0
.L_1b0c0:
	.4byte	0xFFE0
.L_1b0c4:
	mov	r0, #48	@ 0x30
	add	r1, r2, #0
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r4
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1b0d6
	strh	r1, [r3, #14]
.L_1b0d6:
	mov	r0, #2
	b	.L_1b10c
.L_1b0da:
	ldr	r2, .L_1b114
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1b10a
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1b10a
	strb	r0, [r3, #31]
.L_1b10a:
	mov	r0, #255	@ 0xff
.L_1b10c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1b114:
	.4byte	sUnk_8325160


thumb_func_start func_801B118
func_801B118:
	push	{r4, r5, lr}
	ldr	r2, .L_1b13c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	add	r4, r2, #0
	cmp	r0, #0
	beq	.L_1b144
	ldr	r0, .L_1b140
	ldrb	r1, [r4, #10]
	lsr	r1, r1, #2
	lsl	r1, r1, #1
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	ldrh	r1, [r4, #18]
	add	r0, r0, r1
	strh	r0, [r4, #18]
	b	.L_1b156
.L_1b13c:
	.4byte	gWarioData
.L_1b140:
	.4byte	sUnk_82DEBDA
.L_1b144:
	ldr	r1, .L_1b1a8
	ldrb	r0, [r4, #10]
	lsr	r0, r0, #2
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r1, [r4, #18]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r4, #18]
.L_1b156:
	add	r3, r4, #0
	ldr	r1, .L_1b1ac
	ldrb	r5, [r3, #10]
	lsl	r0, r5, #24
	lsr	r2, r0, #24
	lsr	r0, r0, #26
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r3, #20]
	add	r0, r0, r1
	strh	r0, [r3, #20]
	cmp	r2, #46	@ 0x2e
	bhi	.L_1b1b4
	add	r0, r5, #1
	strb	r0, [r3, #10]
	ldr	r4, .L_1b1b0
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r1, [r3, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_1b1d4
	add	r2, r3, #0
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1b1d4
	b	.L_1b1d0
.L_1b1a8:
	.4byte	sUnk_82DEBDA
.L_1b1ac:
	.4byte	sUnk_82DEBF2
.L_1b1b0:
	.4byte	sUnk_83250DC
.L_1b1b4:
	ldr	r0, .L_1b1cc
	ldrh	r0, [r0, #0]
	ldrh	r1, [r4, #14]
	and	r0, r1
	cmp	r0, #0
	bne	.L_1b1c6
	mov	r0, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r4, #14]
.L_1b1c6:
	mov	r0, #254	@ 0xfe
	b	.L_1b1d6
	.align	2, 0
.L_1b1cc:
	.4byte	gButtonsHeld
.L_1b1d0:
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_1b1d4:
	mov	r0, #255	@ 0xff
.L_1b1d6:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_801B1DC
func_801B1DC:
	push	{r4, lr}
	ldr	r4, .L_1b1ec
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	bgt	.L_1b1f0
	mov	r0, #254	@ 0xfe
	b	.L_1b230
.L_1b1ec:
	.4byte	gWarioData
.L_1b1f0:
	ldr	r0, .L_1b20c
	ldrh	r2, [r0, #0]
	ldrh	r1, [r4, #14]
	add	r3, r2, #0
	and	r3, r1
	cmp	r3, #0
	beq	.L_1b21c
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b210
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_1b22e
.L_1b20c:
	.4byte	gButtonsHeld
.L_1b210:
	ldr	r0, .L_1b218
	strh	r0, [r4, #22]
	b	.L_1b22e
	.align	2, 0
.L_1b218:
	.4byte	0xFFE0
.L_1b21c:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1b22c
	strh	r1, [r4, #14]
.L_1b22c:
	strh	r3, [r4, #22]
.L_1b22e:
	mov	r0, #255	@ 0xff
.L_1b230:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801B236
func_801B236:
	.align	2, 0
	ldr	r2, .L_1b274
	ldr	r3, .L_1b278
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1b27c
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1b27c
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_1b27e
	.align	2, 0
.L_1b274:
	.4byte	gWarioData
.L_1b278:
	.4byte	sUnk_83251FC
.L_1b27c:
	mov	r0, #255	@ 0xff
.L_1b27e:
	bx	lr


thumb_func_start func_801B280
func_801B280:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	ResetWarioState
	cmp	r4, #253	@ 0xfd
	beq	.L_1b2dc
	cmp	r4, #253	@ 0xfd
	bgt	.L_1b298
	cmp	r4, #0
	beq	.L_1b2e8
	b	.L_1b2f6
.L_1b298:
	cmp	r4, #254	@ 0xfe
	bne	.L_1b2f6
	ldr	r0, .L_1b2b8
	ldrb	r0, [r0, #8]
	cmp	r0, #1
	bne	.L_1b2c4
	ldr	r1, .L_1b2bc
	mov	r0, #5
	strb	r0, [r1, #1]
	mov	r0, #138	@ 0x8a
	strh	r0, [r1, #24]
	ldr	r1, .L_1b2c0
	mov	r0, #13
	strb	r0, [r1, #0]
	b	.L_1b2ca
	.align	2, 0
.L_1b2b8:
	.4byte	gWarioDataCopy
.L_1b2bc:
	.4byte	gWarioData
.L_1b2c0:
	.4byte	gWarioDustEffect1
.L_1b2c4:
	ldr	r1, .L_1b2d4
	mov	r0, #4
	strb	r0, [r1, #1]
.L_1b2ca:
	ldr	r0, .L_1b2d8
	bl	m4aSongNumStart
	b	.L_1b2fa
	.align	2, 0
.L_1b2d4:
	.4byte	gWarioData
.L_1b2d8:
	.4byte	0x165
.L_1b2dc:
	ldr	r1, .L_1b2e4
	mov	r0, #2
	strb	r0, [r1, #1]
	b	.L_1b2fa
.L_1b2e4:
	.4byte	gWarioData
.L_1b2e8:
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
.L_1b2f6:
	ldr	r0, .L_1b300
	strb	r4, [r0, #1]
.L_1b2fa:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1b300:
	.4byte	gWarioData


thumb_func_start func_801B304
func_801B304:
	push	{r4, lr}
	ldr	r3, .L_1b35c
	ldr	r2, .L_1b360
	ldr	r4, .L_1b364
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	bl	UpdateWarioHorizontalCollisionOffset
	mov	r2, #0
	ldrb	r0, [r4, #1]
	cmp	r0, #5
	bne	.L_1b34a
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_1b34a:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_1b368
	bl	GetAdjustedWarioXVelocity
	b	.L_1b36a
.L_1b35c:
	.4byte	gUnk_3001918
.L_1b360:
	.4byte	sUnk_82DDC78
.L_1b364:
	.4byte	gWarioData
.L_1b368:
	ldrh	r0, [r4, #22]
.L_1b36a:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_1b380
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1b380:
	.4byte	gWarioData


thumb_func_start func_801B384
func_801B384:
	push	{r4, r5, lr}
	ldr	r4, .L_1b3dc
	ldr	r2, .L_1b3e0
	ldr	r3, .L_1b3e4
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #11]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #12]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #13]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #17]
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_1b3c8
	mov	r0, #0
	strb	r0, [r4, #12]
.L_1b3c8:
	mov	r5, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b3e8
	bl	func_8014C4C
	b	.L_1b418
	.align	2, 0
.L_1b3dc:
	.4byte	gUnk_3001918
.L_1b3e0:
	.4byte	sUnk_82DDC78
.L_1b3e4:
	.4byte	gWarioData
.L_1b3e8:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b3f6
	bl	func_8014930
	b	.L_1b418
.L_1b3f6:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_1b40e
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_1b408
	bl	func_8014930
	b	.L_1b418
.L_1b408:
	bl	func_80143D8
	b	.L_1b418
.L_1b40e:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_1b41c
	bl	func_8014758
.L_1b418:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_1b41c:
	ldr	r4, .L_1b444
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_1b448
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_1b474
.L_1b444:
	.4byte	gWarioData
.L_1b448:
	ldr	r1, .L_1b47c
	ldrb	r0, [r1, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_1b474
	ldrb	r0, [r1, #18]
	cmp	r0, #0
	beq	.L_1b46a
	ldrb	r0, [r4, #1]
	cmp	r0, #4
	beq	.L_1b460
	cmp	r0, #5
	bne	.L_1b46a
.L_1b460:
	ldrh	r0, [r4, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r4, #14]
	mov	r5, #254	@ 0xfe
.L_1b46a:
	cmp	r5, #255	@ 0xff
	beq	.L_1b474
	add	r0, r5, #0
	bl	func_801B280
.L_1b474:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1b47c:
	.4byte	gUnk_3001918


thumb_func_start func_801B480
func_801B480:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	UpdateWarioPositionHistory
	ldr	r1, .L_1b4dc
	lsl	r4, r4, #2
	ldr	r2, .L_1b4e0
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	add	r4, r4, r0
	add	r4, r4, r1
	ldr	r3, [r4, #0]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, [r3, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #48]	@ 0x30
	add	r1, #1
	str	r1, [r2, #36]	@ 0x24
	ldrh	r0, [r2, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r2, #44]	@ 0x2c
	ldr	r0, [r3, #4]
	str	r0, [r2, #32]
	ldr	r1, .L_1b4e4
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r0, .L_1b4e8
	mov	r1, #0
	mov	r2, #16
	bl	CopyWarioPalette
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1b4dc:
	.4byte	sUnk_82DDC40
.L_1b4e0:
	.4byte	gWarioData
.L_1b4e4:
	.4byte	gWarioPaletteSize
.L_1b4e8:
	.4byte	sUnk_82DE918


thumb_func_start func_801B4EC
func_801B4EC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_1b564
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #14
	beq	.L_1b55a
	ldr	r4, .L_1b568
	ldr	r6, [r4, #0]
	add	r0, r6, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, [r4, #12]
	mov	r8, r4
	mov	r0, r8
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1b56c
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #14
	strb	r0, [r7, #0]
.L_1b55a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1b564:
	.4byte	gUnk_30031BC
.L_1b568:
	.4byte	gMPlayTable
.L_1b56c:
	.4byte	0xFFFF


thumb_func_start func_801B570
func_801B570:
	push	{r4, lr}
	ldr	r3, .L_1b5b4
	ldr	r4, .L_1b5b8
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_1b5bc
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #56]	@ 0x38
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r3, #7
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r0, #2
	bne	.L_1b5c0
	strb	r0, [r4, #26]
	b	.L_1b5c8
.L_1b5b4:
	.4byte	sUnk_82DDC78
.L_1b5b8:
	.4byte	gWarioData
.L_1b5bc:
	.4byte	sUnk_82DEB18
.L_1b5c0:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_1b5c8
	strb	r1, [r4, #26]
.L_1b5c8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
