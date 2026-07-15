.include "macros.s.inc"


thumb_func_start func_802E8BC
func_802E8BC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_2e8f0
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r6, r0, #0
	add	r6, #64	@ 0x40
	mov	r0, #255	@ 0xff
	and	r6, r0
	mov	r0, #229	@ 0xe5
	bl	SpriteUtilFindSpriteSlot
	add	r3, r0, #0
	ldr	r0, .L_2e8f4
	ldrh	r5, [r0, #0]
	ldrb	r0, [r4, #24]
	cmp	r0, #4
	bhi	.L_2e93c
	lsl	r0, r0, #2
	ldr	r1, .L_2e8f8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2e8f0:
	.4byte	gCurrentSprite
.L_2e8f4:
	.4byte	gUnk_3000A64
.L_2e8f8:
	.4byte	.L_2e8fc
.L_2e8fc:
	.4byte	.L_2e93c
	.4byte	.L_2e910
	.4byte	.L_2e91c
	.4byte	.L_2e928
	.4byte	.L_2e934
.L_2e910:
	lsl	r0, r5, #16
	ldr	r1, .L_2e918
	b	.L_2e938
	.align	2, 0
.L_2e918:
	.4byte	0xFFB80000
.L_2e91c:
	.2byte	0x0428
	ldr	r2, .L_2e924
	add	r0, r0, r2
	b	.L_2e93a
.L_2e924:
	.4byte	0xFF980000
.L_2e928:
	.2byte	0x0428
	ldr	r4, .L_2e930
	add	r0, r0, r4
	b	.L_2e93a
.L_2e930:
	.4byte	0xFF780000
.L_2e934:
	.2byte	0x0428
	ldr	r1, .L_2e98c
.L_2e938:
	add	r0, r0, r1
.L_2e93a:
	lsr	r5, r0, #16
.L_2e93c:
	ldr	r2, .L_2e990
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldr	r0, .L_2e994
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #8]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r7, r4, #0
	ldrh	r1, [r1, #10]
	mov	ip, r1
	ldr	r1, .L_2e998
	lsl	r2, r6, #16
	lsr	r0, r2, #15
	add	r0, r0, r1
	mov	r6, #0
	ldrsh	r3, [r0, r6]
	mov	r8, r1
	add	r6, r2, #0
	cmp	r3, #0
	bge	.L_2e9a0
	neg	r2, r3
	lsl	r1, r5, #16
	asr	r0, r1, #16
	mul	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	bge	.L_2e97c
	add	r0, #255	@ 0xff
.L_2e97c:
	lsl	r0, r0, #8
	ldr	r2, .L_2e99c
	lsl	r1, r4, #16
	asr	r1, r1, #16
	asr	r0, r0, #16
	sub	r1, r1, r0
	b	.L_2e9ba
	.align	2, 0
.L_2e98c:
	.4byte	0xFF580000
.L_2e990:
	.4byte	gSpriteData
.L_2e994:
	.4byte	gUnk_3000A64
.L_2e998:
	.4byte	sSinCosTable
.L_2e99c:
	.4byte	gCurrentSprite
.L_2e9a0:
	lsl	r1, r5, #16
	asr	r0, r1, #16
	mul	r0, r3
	add	r3, r1, #0
	cmp	r0, #0
	bge	.L_2e9ae
	add	r0, #255	@ 0xff
.L_2e9ae:
	lsl	r0, r0, #8
	ldr	r2, .L_2e9e4
	lsl	r1, r7, #16
	asr	r1, r1, #16
	asr	r0, r0, #16
	add	r1, r1, r0
.L_2e9ba:
	strh	r1, [r2, #8]
	lsr	r0, r6, #15
	add	r0, #128	@ 0x80
	add	r0, r8
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	cmp	r1, #0
	bge	.L_2e9e8
	neg	r1, r1
	asr	r0, r3, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_2e9d6
	add	r0, #255	@ 0xff
.L_2e9d6:
	lsl	r1, r0, #8
	mov	r6, ip
	lsl	r0, r6, #16
	asr	r0, r0, #16
	asr	r1, r1, #16
	sub	r0, r0, r1
	b	.L_2e9fe
.L_2e9e4:
	.4byte	gCurrentSprite
.L_2e9e8:
	asr	r0, r3, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_2e9f2
	add	r0, #255	@ 0xff
.L_2e9f2:
	lsl	r1, r0, #8
	mov	r3, ip
	lsl	r0, r3, #16
	asr	r0, r0, #16
	asr	r1, r1, #16
	add	r0, r0, r1
.L_2e9fe:
	strh	r0, [r2, #10]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802EA0C
func_802EA0C:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r5, .L_2ea90
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r5, #0]
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	ldrb	r4, [r0, #0]
	ldr	r0, .L_2ea94
	mov	r8, r0
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r5, #12]
	lsl	r4, r4, #1
	add	r4, r8
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r5, #18]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_2ea90:
	.4byte	gCurrentSprite
.L_2ea94:
	.4byte	sSinCosTable


thumb_func_start func_802EA98
func_802EA98:
	push	{r4, r5, lr}
	ldr	r0, .L_2eaac
	ldrb	r2, [r0, #24]
	add	r5, r0, #0
	cmp	r2, #4
	bne	.L_2eab4
	ldr	r0, .L_2eab0
	ldrb	r1, [r0, #0]
	b	.L_2eabc
	.align	2, 0
.L_2eaac:
	.4byte	gCurrentSprite
.L_2eab0:
	.4byte	gUnk_3000A59
.L_2eab4:
	mov	r1, #32
	cmp	r2, #0
	bne	.L_2eabc
	mov	r1, #72	@ 0x48
.L_2eabc:
	ldrh	r0, [r5, #8]
	sub	r0, r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r3, .L_2eaec
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r4, r1
	bls	.L_2eaf0
	sub	r0, r4, r1
	b	.L_2eaf2
	.align	2, 0
.L_2eaec:
	.4byte	gSpriteData
.L_2eaf0:
	sub	r0, r1, r4
.L_2eaf2:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	bhi	.L_2eafe
	mov	r2, #0
	b	.L_2eb0c
.L_2eafe:
	sub	r0, #2
	asr	r0, r0, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_2eb0c
	mov	r2, #1
.L_2eb0c:
	cmp	r4, r1
	bls	.L_2eb16
	ldrh	r0, [r5, #8]
	sub	r0, r0, r2
	b	.L_2eb1e
.L_2eb16:
	cmp	r4, r1
	bcs	.L_2eb20
	ldrh	r0, [r5, #8]
	add	r0, r2, r0
.L_2eb1e:
	strh	r0, [r5, #8]
.L_2eb20:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802EB28
func_802EB28:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_2eb84
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_2eb88
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2eb8c
	cmp	r1, r0
	bne	.L_2eb4a
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_2eb4a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldr	r4, .L_2eb90
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_2ebac
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r3, r0, #0
	ldr	r2, .L_2eb94
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	beq	.L_2eb9c
	mov	r0, #0
	strb	r0, [r4, #0]
	ldr	r1, .L_2eb98
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #67	@ 0x43
	strb	r1, [r0, #30]
	b	.L_2ebac
	.align	2, 0
.L_2eb84:
	.4byte	gCurrentSprite
.L_2eb88:
	.4byte	sUnk_83BAA3C
.L_2eb8c:
	.4byte	0x7FFF
.L_2eb90:
	.4byte	gUnk_3000A5B
.L_2eb94:
	.4byte	gWarioData
.L_2eb98:
	.4byte	gSpriteData
.L_2eb9c:
	ldr	r1, .L_2ebb4
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	ldrh	r0, [r0, #8]
	ldrh	r1, [r2, #52]	@ 0x34
	sub	r0, r0, r1
	strh	r0, [r2, #20]
.L_2ebac:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2ebb4:
	.4byte	gSpriteData


thumb_func_start func_802EBB8
func_802EBB8:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_2ed44
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r4, .L_2ed48
	mov	r0, #16
	strb	r0, [r4, #0]
	ldr	r0, .L_2ed4c
	strb	r1, [r0, #0]
	ldr	r0, .L_2ed50
	strb	r1, [r0, #0]
	ldr	r0, .L_2ed54
	strb	r1, [r0, #0]
	ldr	r0, .L_2ed58
	strb	r1, [r0, #0]
	ldr	r1, .L_2ed5c
	mov	r0, #14
	strb	r0, [r1, #0]
	ldr	r5, .L_2ed60
	ldrh	r1, [r5, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldrb	r0, [r5, #26]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r5, #26]
	strb	r2, [r5, #30]
	add	r1, r5, #0
	add	r1, #32
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_2ed64
	str	r0, [r5, #4]
	strb	r2, [r5, #22]
	strh	r3, [r5, #20]
	mov	r0, #1
	strb	r0, [r5, #28]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrh	r3, [r5, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r5, #10]
	add	r0, #248	@ 0xf8
	str	r0, [sp, #0]
	mov	r0, #231	@ 0xe7
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, #52	@ 0x34
	ldrh	r0, [r5, #10]
	add	r0, #224	@ 0xe0
	str	r0, [sp, #0]
	mov	r0, #231	@ 0xe7
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, #92	@ 0x5c
	ldrh	r0, [r5, #10]
	add	r0, #148	@ 0x94
	str	r0, [sp, #0]
	mov	r0, #231	@ 0xe7
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, #86	@ 0x56
	ldrh	r0, [r5, #10]
	sub	r0, #176	@ 0xb0
	str	r0, [sp, #0]
	mov	r0, #231	@ 0xe7
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, #86	@ 0x56
	ldrh	r0, [r5, #10]
	sub	r0, #144	@ 0x90
	str	r0, [sp, #0]
	mov	r0, #231	@ 0xe7
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrb	r0, [r4, #0]
	add	r3, r3, r0
	add	r3, #168	@ 0xa8
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrb	r0, [r4, #0]
	add	r3, r3, r0
	add	r3, #96	@ 0x60
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrb	r0, [r4, #0]
	add	r3, r3, r0
	add	r3, #64	@ 0x40
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrb	r0, [r4, #0]
	add	r3, r3, r0
	add	r3, #32
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrb	r0, [r4, #0]
	add	r3, r3, r0
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #4
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #152	@ 0x98
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #229	@ 0xe5
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #230	@ 0xe6
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #131	@ 0x83
	mov	r1, #8
	mov	r2, #4
	bl	func_8070964
	mov	r0, #14
	strb	r0, [r5, #29]
	bl	func_80747D8
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2ed44:
	.4byte	gUnk_3000A58
.L_2ed48:
	.4byte	gUnk_3000A59
.L_2ed4c:
	.4byte	gUnk_3000A5A
.L_2ed50:
	.4byte	gUnk_3000A5B
.L_2ed54:
	.4byte	gInitialHealth
.L_2ed58:
	.4byte	gPaletteFlashTimer
.L_2ed5c:
	.4byte	gBgAnimationFrame
.L_2ed60:
	.4byte	gCurrentSprite
.L_2ed64:
	.4byte	sUnk_83B9AD0


thumb_func_start func_802ED68
func_802ED68:
	ldr	r3, .L_2ed98
	add	r2, r3, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_2ed84
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2ed94
	ldr	r1, .L_2ed9c
	mov	r0, #7
	strb	r0, [r1, #0]
.L_2ed84:
	ldr	r0, .L_2ed9c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2ed94
	mov	r0, #2
	strb	r0, [r3, #28]
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #0]
.L_2ed94:
	bx	lr
	.align	2, 0
.L_2ed98:
	.4byte	gCurrentSprite
.L_2ed9c:
	.4byte	gUnk_30000F4


thumb_func_start func_802EDA0
func_802EDA0:
	push	{r4, r5, lr}
	ldr	r5, .L_2edd8
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2edd2
	ldr	r0, .L_2eddc
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_2edce
	bl	SpriteUtilStartBossTimer
	ldr	r0, .L_2ede0
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r4, [r5, #20]
	mov	r0, #162	@ 0xa2
	bl	m4aSongNumStart
.L_2edce:
	mov	r0, #3
	strb	r0, [r5, #28]
.L_2edd2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_2edd8:
	.4byte	gCurrentSprite
.L_2eddc:
	.4byte	gCurrentShopItem
.L_2ede0:
	.4byte	sUnk_83B9B40


thumb_func_start func_802EDE4
func_802EDE4:
	push	{lr}
	ldr	r0, .L_2ee0c
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2ee08
	ldr	r0, .L_2ee10
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_2ee08
	bl	SpriteUtilUnsetAllSpritesHighPriority
	ldr	r0, .L_2ee14
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	mov	r1, #24
	strb	r1, [r2, #0]
	mov	r1, #4
	strb	r1, [r0, #28]
.L_2ee08:
	pop	{r0}
	bx	r0
.L_2ee0c:
	.4byte	gWarioPauseTimer
.L_2ee10:
	.4byte	gTimerState
.L_2ee14:
	.4byte	gCurrentSprite


thumb_func_start func_802EE18
func_802EE18:
	push	{r4, lr}
	ldr	r2, .L_2ee38
	ldrh	r3, [r2, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_2ee3c
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #36	@ 0x24
	bls	.L_2ee40
	sub	r0, r3, #4
	strh	r0, [r2, #8]
	b	.L_2ee82
	.align	2, 0
.L_2ee38:
	.4byte	gCurrentSprite
.L_2ee3c:
	.4byte	gBg1YPosition
.L_2ee40:
	mov	r4, #0
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	ldr	r3, .L_2ee88
	mov	r1, #44	@ 0x2c
	add	r2, r0, #0
	mul	r2, r1
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_2ee8c
	str	r1, [r0, #0]
	add	r2, r2, r3
	strb	r4, [r2, #22]
	strh	r4, [r2, #20]
	ldr	r1, .L_2ee90
	ldr	r0, .L_2ee94
	str	r0, [r1, #0]
	ldr	r0, .L_2ee98
	str	r0, [r1, #4]
	ldr	r0, .L_2ee9c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #162	@ 0xa2
	bl	m4aSongNumStart
.L_2ee82:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2ee88:
	.4byte	gSpriteData
.L_2ee8c:
	.4byte	sUnk_83B9E50
.L_2ee90:
	.4byte	0x40000D4
.L_2ee94:
	.4byte	sUnk_83B889C
.L_2ee98:
	.4byte	0x6013000
.L_2ee9c:
	.4byte	0x80000800


thumb_func_start func_802EEA0
func_802EEA0:
	push	{lr}
	mov	r3, #0
	ldr	r1, .L_2eeb8
	ldrh	r2, [r1, #18]
	ldr	r1, .L_2eebc
	ldrh	r1, [r1, #10]
	cmp	r1, r2
	bls	.L_2eec0
	sub	r1, r1, r2
	cmp	r1, #63	@ 0x3f
	bgt	.L_2eec8
	b	.L_2eecc
.L_2eeb8:
	.4byte	gWarioData
.L_2eebc:
	.4byte	gCurrentSprite
.L_2eec0:
	sub	r1, r2, r1
	cmp	r1, #63	@ 0x3f
	bgt	.L_2eec8
	mov	r3, #1
.L_2eec8:
	cmp	r3, #0
	beq	.L_2eefe
.L_2eecc:
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	ldr	r3, .L_2ef04
	mov	r1, #44	@ 0x2c
	add	r2, r0, #0
	mul	r2, r1
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_2ef08
	str	r1, [r0, #0]
	add	r2, r2, r3
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	ldr	r0, .L_2ef0c
	mov	r1, #110	@ 0x6e
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #16
	strb	r1, [r0, #0]
	mov	r0, #162	@ 0xa2
	bl	m4aSongNumStart
.L_2eefe:
	pop	{r1}
	bx	r1
	.align	2, 0
.L_2ef04:
	.4byte	gSpriteData
.L_2ef08:
	.4byte	sUnk_83B9E60
.L_2ef0c:
	.4byte	gCurrentSprite


thumb_func_start func_802EF10
func_802EF10:
	push	{r4, r5, lr}
	ldr	r5, .L_2ef38
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_2ef64
	ldr	r4, .L_2ef3c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #60	@ 0x3c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2ef40
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_2ef44
	mov	r0, #1
	strb	r0, [r5, #0]
	b	.L_2efd0
.L_2ef38:
	.4byte	gUnk_3000A5A
.L_2ef3c:
	.4byte	gCurrentSprite
.L_2ef40:
	.4byte	gUnk_3000A51
.L_2ef44:
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	ldr	r0, .L_2ef5c
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_2efa4
	ldr	r1, .L_2ef60
	ldrh	r0, [r1, #18]
	sub	r0, #2
	b	.L_2efa2
.L_2ef5c:
	.4byte	gUnk_3000A5B
.L_2ef60:
	.4byte	gWarioData
.L_2ef64:
	ldr	r4, .L_2ef84
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #60	@ 0x3c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2ef88
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_2ef8c
	mov	r0, #0
	strb	r0, [r5, #0]
	b	.L_2efd0
	.align	2, 0
.L_2ef84:
	.4byte	gCurrentSprite
.L_2ef88:
	.4byte	gUnk_3000A51
.L_2ef8c:
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	ldr	r0, .L_2efb4
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_2efa4
	ldr	r1, .L_2efb8
	ldrh	r0, [r1, #18]
	add	r0, #2
.L_2efa2:
	strh	r0, [r1, #18]
.L_2efa4:
	ldr	r0, .L_2efbc
	add	r1, r0, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2efc0
	sub	r0, #1
	b	.L_2efce
.L_2efb4:
	.4byte	gUnk_3000A5B
.L_2efb8:
	.4byte	gWarioData
.L_2efbc:
	.4byte	gCurrentSprite
.L_2efc0:
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_2efcc
	bl	func_802EEA0
	b	.L_2efd0
.L_2efcc:
	mov	r0, #60	@ 0x3c
.L_2efce:
	strb	r0, [r1, #0]
.L_2efd0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802EFD8
func_802EFD8:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_2eff4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2f080
	ldr	r0, .L_2eff8
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	beq	.L_2f000
	ldr	r1, .L_2effc
	mov	r0, #17
	strb	r0, [r1, #28]
	b	.L_2f08c
	.align	2, 0
.L_2eff4:
	.4byte	gUnk_3000A5B
.L_2eff8:
	.4byte	gUnk_3000A58
.L_2effc:
	.4byte	gCurrentSprite
.L_2f000:
	ldr	r6, .L_2f040
	add	r5, r6, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_2f032
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2f08c
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r2, r0, #0
	ldr	r1, .L_2f044
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #67	@ 0x43
	strb	r1, [r0, #30]
	mov	r0, #164	@ 0xa4
	bl	m4aSongNumStart
.L_2f032:
	ldr	r1, .L_2f048
	ldrb	r0, [r1, #0]
	cmp	r0, #188	@ 0xbc
	bhi	.L_2f04c
	add	r0, #16
	strb	r0, [r1, #0]
	b	.L_2f08c
.L_2f040:
	.4byte	gCurrentSprite
.L_2f044:
	.4byte	gSpriteData
.L_2f048:
	.4byte	gUnk_3000A59
.L_2f04c:
	mov	r0, #111	@ 0x6f
	strb	r0, [r6, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r5, #0]
	mov	r0, #188	@ 0xbc
	strb	r0, [r1, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r2, r0, #0
	ldr	r3, .L_2f078
	mov	r0, #44	@ 0x2c
	mul	r2, r0
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_2f07c
	str	r1, [r0, #0]
	add	r2, r2, r3
	strb	r4, [r2, #22]
	strh	r4, [r2, #20]
	b	.L_2f08c
.L_2f078:
	.4byte	gSpriteData
.L_2f07c:
	.4byte	sUnk_83B9DF8
.L_2f080:
	ldr	r0, .L_2f094
	mov	r2, #0
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
.L_2f08c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2f094:
	.4byte	gCurrentSprite


thumb_func_start func_802F098
func_802F098:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_2f0b4
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	bne	.L_2f144
	ldr	r0, .L_2f0b8
	ldrb	r6, [r0, #0]
	cmp	r6, #0
	beq	.L_2f0c0
	ldr	r1, .L_2f0bc
	mov	r0, #17
	strb	r0, [r1, #28]
	b	.L_2f1d6
.L_2f0b4:
	.4byte	gUnk_3000A5B
.L_2f0b8:
	.4byte	gUnk_3000A58
.L_2f0bc:
	.4byte	gCurrentSprite
.L_2f0c0:
	ldr	r0, .L_2f108
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_2f144
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	beq	.L_2f114
	add	r0, r5, #0
	cmp	r0, #48	@ 0x30
	beq	.L_2f0e0
	b	.L_2f1d6
.L_2f0e0:
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r4, r0, #0
	ldr	r1, .L_2f10c
	mov	r0, #44	@ 0x2c
	add	r2, r4, #0
	mul	r2, r0
	add	r3, r2, r1
	mov	r0, #68	@ 0x44
	strb	r0, [r3, #30]
	add	r1, #4
	add	r2, r2, r1
	ldr	r0, .L_2f110
	str	r0, [r2, #0]
	strb	r6, [r3, #22]
	mov	r0, #1
	strh	r0, [r3, #20]
	b	.L_2f1d6
.L_2f108:
	.4byte	gCurrentSprite
.L_2f10c:
	.4byte	gSpriteData
.L_2f110:
	.4byte	sUnk_83B9E70
.L_2f114:
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r4, r0, #0
	ldr	r3, .L_2f13c
	mov	r0, #44	@ 0x2c
	add	r2, r4, #0
	mul	r2, r0
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_2f140
	str	r1, [r0, #0]
	add	r2, r2, r3
	strb	r5, [r2, #22]
	strh	r5, [r2, #20]
	mov	r0, #66	@ 0x42
	strb	r0, [r2, #30]
	b	.L_2f1d6
	.align	2, 0
.L_2f13c:
	.4byte	gSpriteData
.L_2f140:
	.4byte	sUnk_83B9E40
.L_2f144:
	ldr	r3, .L_2f174
	ldrb	r0, [r3, #0]
	cmp	r0, #16
	bls	.L_2f180
	sub	r0, #8
	strb	r0, [r3, #0]
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_2f1d6
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r4, r0, #0
	ldr	r2, .L_2f178
	ldr	r1, .L_2f17c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r0, [r0, #8]
	ldrh	r1, [r2, #52]	@ 0x34
	sub	r0, r0, r1
	strh	r0, [r2, #20]
	b	.L_2f1d6
.L_2f174:
	.4byte	gUnk_3000A59
.L_2f178:
	.4byte	gWarioData
.L_2f17c:
	.4byte	gSpriteData
.L_2f180:
	ldrb	r5, [r4, #0]
	cmp	r5, #0
	bne	.L_2f1c8
	ldr	r0, .L_2f1bc
	mov	r2, #16
	strb	r2, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	strb	r2, [r3, #0]
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r4, r0, #0
	ldr	r3, .L_2f1c0
	mov	r0, #44	@ 0x2c
	add	r2, r4, #0
	mul	r2, r0
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_2f1c4
	str	r1, [r0, #0]
	add	r2, r2, r3
	strb	r5, [r2, #22]
	strh	r5, [r2, #20]
	mov	r0, #162	@ 0xa2
	bl	m4aSongNumStart
	b	.L_2f1d6
.L_2f1bc:
	.4byte	gCurrentSprite
.L_2f1c0:
	.4byte	gSpriteData
.L_2f1c4:
	.4byte	sUnk_83B9E50
.L_2f1c8:
	ldr	r0, .L_2f1dc
	mov	r2, #16
	strb	r2, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	strb	r2, [r3, #0]
.L_2f1d6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_2f1dc:
	.4byte	gCurrentSprite


thumb_func_start func_802F1E0
func_802F1E0:
	ldr	r2, .L_2f200
	ldrh	r3, [r2, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_2f204
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #79	@ 0x4f
	bhi	.L_2f208
	add	r0, r3, #0
	add	r0, #8
	strh	r0, [r2, #8]
	b	.L_2f214
	.align	2, 0
.L_2f200:
	.4byte	gCurrentSprite
.L_2f204:
	.4byte	gBg1YPosition
.L_2f208:
	mov	r0, #18
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
.L_2f214:
	bx	lr
	.align	2, 0


thumb_func_start func_802F218
func_802F218:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_2f27c
	add	r1, r0, #0
	add	r1, #41	@ 0x29
	ldrb	r2, [r1, #0]
	add	r6, r0, #0
	cmp	r2, #0
	beq	.L_2f28a
	sub	r0, r2, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #32
	bhi	.L_2f28a
	mov	r5, #7
	and	r5, r4
	cmp	r5, #0
	bne	.L_2f28a
	ldrb	r0, [r6, #29]
	cmp	r0, #0
	beq	.L_2f264
	cmp	r4, #32
	bne	.L_2f264
	sub	r0, #1
	strb	r0, [r6, #29]
	bl	func_80747D8
	ldr	r0, .L_2f280
	str	r0, [r6, #4]
	strb	r5, [r6, #22]
	strh	r5, [r6, #20]
	mov	r0, #13
	bl	VoiceSetPlay
.L_2f264:
	mov	r0, #8
	and	r0, r4
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_2f284
	ldr	r1, .L_2f27c
	mov	r0, #3
	strb	r0, [r1, #27]
	add	r6, r1, #0
	b	.L_2f28a
	.align	2, 0
.L_2f27c:
	.4byte	gCurrentSprite
.L_2f280:
	.4byte	sUnk_83B9AB8
.L_2f284:
	ldr	r0, .L_2f370
	strb	r2, [r0, #27]
	add	r6, r0, #0
.L_2f28a:
	add	r7, r6, #0
	ldrb	r1, [r7, #29]
	ldr	r0, .L_2f374
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #1
	add	r0, #1
	cmp	r1, r0
	bge	.L_2f37c
	mov	r0, #41	@ 0x29
	add	r0, r0, r7
	mov	sl, r0
	ldrb	r1, [r0, #0]
	mov	r9, r1
	cmp	r1, #0
	beq	.L_2f2aa
	b	.L_2f3b4
.L_2f2aa:
	mov	r0, #230	@ 0xe6
	bl	SpriteUtilFindSpriteSlot
	ldr	r5, .L_2f378
	mov	r4, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r5
	mov	r6, #39	@ 0x27
	strb	r6, [r0, #28]
	mov	r0, #231	@ 0xe7
	mov	r1, #4
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	strb	r6, [r0, #28]
	mov	r0, #231	@ 0xe7
	mov	r1, #3
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	mov	r1, #41	@ 0x29
	mov	r8, r1
	mov	r1, r8
	strb	r1, [r0, #28]
	mov	r0, #231	@ 0xe7
	mov	r1, #2
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	strb	r6, [r0, #28]
	mov	r0, #231	@ 0xe7
	mov	r1, #1
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	strb	r6, [r0, #28]
	mov	r0, #231	@ 0xe7
	mov	r1, #0
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	mov	r1, r8
	strb	r1, [r0, #28]
	mov	r0, #232	@ 0xe8
	mov	r1, #4
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	mov	r1, r8
	strb	r1, [r0, #28]
	mov	r0, #232	@ 0xe8
	mov	r1, #3
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	strb	r6, [r0, #28]
	mov	r0, #232	@ 0xe8
	mov	r1, #2
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	mov	r1, r8
	strb	r1, [r0, #28]
	mov	r0, #232	@ 0xe8
	mov	r1, #1
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	strb	r6, [r0, #28]
	mov	r0, #232	@ 0xe8
	mov	r1, #0
	bl	SpriteUtilFindSprite
	mul	r0, r4
	add	r0, r0, r5
	mov	r1, r8
	strb	r1, [r0, #28]
	mov	r0, #19
	strb	r0, [r7, #28]
	mov	r1, r9
	mov	r0, sl
	strb	r1, [r0, #0]
	mov	r0, #170	@ 0xaa
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_2f3b4
	.align	2, 0
.L_2f370:
	.4byte	gCurrentSprite
.L_2f374:
	.4byte	gBgAnimationFrame
.L_2f378:
	.4byte	gSpriteData
.L_2f37c:
	add	r3, r7, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	cmp	r0, #16
	bhi	.L_2f3b4
	ldrh	r2, [r7, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_2f3a0
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #36	@ 0x24
	bls	.L_2f3a4
	sub	r0, r2, #4
	strh	r0, [r7, #8]
	b	.L_2f3b4
.L_2f3a0:
	.4byte	gBg1YPosition
.L_2f3a4:
	mov	r0, #0
	mov	r1, #111	@ 0x6f
	strb	r1, [r6, #28]
	strb	r0, [r3, #0]
	ldr	r1, .L_2f3c4
	str	r1, [r6, #4]
	strb	r0, [r6, #22]
	strh	r0, [r6, #20]
.L_2f3b4:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2f3c4:
	.4byte	sUnk_83B9B40


thumb_func_start func_802F3C8
func_802F3C8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_2f3e4
	mov	r0, #41	@ 0x29
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_2f418
	cmp	r0, #2
	bgt	.L_2f3e8
	cmp	r0, #0
	beq	.L_2f3ee
	b	.L_2f480
.L_2f3e4:
	.4byte	gCurrentSprite
.L_2f3e8:
	cmp	r0, #6
	beq	.L_2f440
	b	.L_2f480
.L_2f3ee:
	ldr	r1, .L_2f414
	mov	r0, #2
	strb	r0, [r1, #2]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #160	@ 0xa0
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #10
	b	.L_2f436
.L_2f414:
	.4byte	gSwitchStates
.L_2f418:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #140	@ 0x8c
	ldrh	r0, [r4, #10]
	sub	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #11
.L_2f436:
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_2f480
.L_2f440:
	ldrh	r1, [r4, #0]
	ldr	r0, .L_2f494
	and	r0, r1
	mov	r2, #0
	mov	r3, #0
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #35	@ 0x23
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_2f498
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #71	@ 0x47
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #20
	strb	r0, [r4, #28]
	mov	r0, #77	@ 0x4d
	mov	r1, ip
	strb	r0, [r1, #0]
.L_2f480:
	ldr	r1, .L_2f49c
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2f494:
	.4byte	0xFBFF
.L_2f498:
	.4byte	sUnk_83BA578
.L_2f49c:
	.4byte	gCurrentSprite


thumb_func_start func_802F4A0
func_802F4A0:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_2f4f0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_2f4f4
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_2f4f8
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_2f4c4
	ldrh	r5, [r6, #0]
	mov	r3, #0
.L_2f4c4:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
	strh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2f502
	mov	r0, #21
	strb	r0, [r4, #28]
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bhi	.L_2f4fc
	mov	r0, #12
	strb	r0, [r1, #0]
	b	.L_2f590
.L_2f4f0:
	.4byte	gCurrentSprite
.L_2f4f4:
	.4byte	sUnk_83BA9EA
.L_2f4f8:
	.4byte	0x7FFF
.L_2f4fc:
	mov	r0, #25
	strb	r0, [r1, #0]
	b	.L_2f590
.L_2f502:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2f554
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bhi	.L_2f520
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
	b	.L_2f526
.L_2f520:
	ldrh	r0, [r4, #10]
	add	r0, #1
	strh	r0, [r4, #10]
.L_2f526:
	ldrh	r0, [r4, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r1, r2, #0
	ldrh	r2, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2f54c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_2f590
	ldrh	r1, [r4, #0]
	ldr	r0, .L_2f550
	and	r0, r1
	b	.L_2f58e
	.align	2, 0
.L_2f54c:
	.4byte	gUnk_3000A51
.L_2f550:
	.4byte	0xFFBF
.L_2f554:
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bhi	.L_2f568
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
	b	.L_2f56e
.L_2f568:
	ldrh	r0, [r4, #10]
	sub	r0, #1
	strh	r0, [r4, #10]
.L_2f56e:
	ldrh	r0, [r4, #8]
	ldr	r2, .L_2f598
	add	r1, r2, #0
	ldrh	r2, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2f59c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_2f590
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
.L_2f58e:
	strh	r0, [r4, #0]
.L_2f590:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2f598:
	.4byte	0xFFFFFF00
.L_2f59c:
	.4byte	gUnk_3000A51


thumb_func_start func_802F5A0
func_802F5A0:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r2, .L_2f5f8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_2f5fc
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2f600
	cmp	r1, r0
	bne	.L_2f5c4
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_2f5c4:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	ldrb	r3, [r2, #29]
	cmp	r3, #4
	bhi	.L_2f5dc
	ldrb	r0, [r2, #22]
	add	r0, #1
	strb	r0, [r2, #22]
.L_2f5dc:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2f644
	mov	r0, #20
	strb	r0, [r2, #28]
	cmp	r3, #4
	bhi	.L_2f604
	mov	r0, #47	@ 0x2f
	b	.L_2f606
.L_2f5f8:
	.4byte	gCurrentSprite
.L_2f5fc:
	.4byte	sUnk_83BA9EA
.L_2f600:
	.4byte	0x7FFF
.L_2f604:
	mov	r0, #77	@ 0x4d
.L_2f606:
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r4, #64	@ 0x40
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_2f62e
	ldrh	r3, [r2, #8]
	add	r3, #92	@ 0x5c
	ldrh	r0, [r2, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #233	@ 0xe9
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_2f644
.L_2f62e:
	ldrh	r3, [r2, #8]
	add	r3, #92	@ 0x5c
	ldrh	r0, [r2, #10]
	add	r0, #16
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #233	@ 0xe9
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
.L_2f644:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802F64C
func_802F64C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_2f6e8
	mov	r0, #41	@ 0x29
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_2f700
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r1, #255	@ 0xff
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #15
	bls	.L_2f736
	mov	r0, #7
	and	r0, r4
	cmp	r0, #0
	bne	.L_2f736
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_2f6c8
	cmp	r4, #48	@ 0x30
	bne	.L_2f6c8
	sub	r0, #1
	strb	r0, [r2, #29]
	and	r0, r1
	cmp	r0, #0
	bne	.L_2f6be
	ldr	r1, .L_2f6ec
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
	ldr	r2, .L_2f6f0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r6, r2, r0
	mov	r5, #1
	mov	r3, #107	@ 0x6b
.L_2f6a0:
	ldrb	r0, [r2, #23]
	add	r0, #23
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_2f6b8
	ldrh	r1, [r2, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_2f6b8
	strb	r3, [r2, #28]
.L_2f6b8:
	add	r2, #44	@ 0x2c
	cmp	r2, r6
	ble	.L_2f6a0
.L_2f6be:
	bl	func_80747D8
	mov	r0, #13
	bl	VoiceSetPlay
.L_2f6c8:
	mov	r0, #8
	and	r0, r4
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_2f6f4
	ldr	r1, .L_2f6e8
	mov	r0, #2
	strb	r0, [r1, #27]
	cmp	r4, #40	@ 0x28
	bne	.L_2f736
	mov	r0, #1
	bl	VoiceSetPlay
	b	.L_2f736
	.align	2, 0
.L_2f6e8:
	.4byte	gCurrentSprite
.L_2f6ec:
	.4byte	gTimerState
.L_2f6f0:
	.4byte	gSpriteData
.L_2f6f4:
	ldr	r0, .L_2f6fc
	strb	r1, [r0, #27]
	b	.L_2f736
	.align	2, 0
.L_2f6fc:
	.4byte	gCurrentSprite
.L_2f700:
	ldrb	r3, [r2, #29]
	cmp	r3, #0
	bne	.L_2f716
	mov	r0, #120	@ 0x78
	strb	r0, [r2, #28]
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r0, #161	@ 0xa1
	bl	m4aSongNumStart
	b	.L_2f736
.L_2f716:
	ldr	r0, .L_2f72c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	cmp	r3, #4
	bhi	.L_2f730
	mov	r0, #47	@ 0x2f
	b	.L_2f732
	.align	2, 0
.L_2f72c:
	.4byte	sUnk_83BA578
.L_2f730:
	mov	r0, #77	@ 0x4d
.L_2f732:
	mov	r1, ip
	strb	r0, [r1, #0]
.L_2f736:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_802F73C
func_802F73C:
	push	{r4, lr}
	sub	sp, #4
	ldr	r1, .L_2f760
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #110	@ 0x6e
	bls	.L_2f756
	b	.L_2fa64
.L_2f756:
	lsl	r0, r0, #2
	ldr	r1, .L_2f764
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_2f760:
	.4byte	gCurrentSprite
.L_2f764:
	.4byte	.L_2f768
.L_2f768:
	.4byte	.L_2fa50
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa30
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa3a
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa26
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa20
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa16
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa08
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9fa
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9ec
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9de
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9d0
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9c2
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9b6
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9aa
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f9a0
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f992
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f984
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f976
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f968
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f95a
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f94c
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f93e
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f930
	.4byte	.L_2fa64
	.4byte	.L_2fa64
	.4byte	.L_2f924
.L_2f924:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f930:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f93e:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	add	r0, #72	@ 0x48
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f94c:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f95a:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #72	@ 0x48
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f968:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f976:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f984:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f992:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #72	@ 0x48
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9a0:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9aa:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #72	@ 0x48
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9b6:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9c2:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9d0:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9de:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9ec:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2f9fa:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2fa08:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_2fa46
.L_2fa16:
	ldrh	r3, [r4, #8]
	add	r3, #96	@ 0x60
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	b	.L_2fa42
.L_2fa20:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	b	.L_2fa42
.L_2fa26:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	b	.L_2fa42
.L_2fa30:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #32
	b	.L_2fa42
.L_2fa3a:
	ldrh	r3, [r4, #8]
	add	r3, #96	@ 0x60
	ldrh	r0, [r4, #10]
	add	r0, #32
.L_2fa42:
	str	r0, [sp, #0]
	mov	r0, #10
.L_2fa46:
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	b	.L_2fa64
.L_2fa50:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #207	@ 0xcf
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	mov	r0, #0
	strh	r0, [r4, #0]
.L_2fa64:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_802FA6C
func_802FA6C:
	push	{lr}
	ldr	r0, .L_2fa84
	ldrb	r0, [r0, #0]
	sub	r0, #2
	cmp	r0, #6
	bhi	.L_2fac0
	lsl	r0, r0, #2
	ldr	r1, .L_2fa88
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2fa84:
	.4byte	gCurrentShopItem
.L_2fa88:
	.4byte	.L_2fa8c
.L_2fa8c:
	.4byte	.L_2fac0
	.4byte	.L_2faa8
	.4byte	.L_2faac
	.4byte	.L_2fab0
	.4byte	.L_2fab4
	.4byte	.L_2fab8
	.4byte	.L_2fabc
.L_2faa8:
	mov	r0, #11
	b	.L_2fac2
.L_2faac:
	mov	r0, #10
	b	.L_2fac2
.L_2fab0:
	mov	r0, #5
	b	.L_2fac2
.L_2fab4:
	mov	r0, #6
	b	.L_2fac2
.L_2fab8:
	mov	r0, #2
	b	.L_2fac2
.L_2fabc:
	mov	r0, #7
	b	.L_2fac2
.L_2fac0:
	mov	r0, #12
.L_2fac2:
	ldr	r2, .L_2fb04
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	strb	r0, [r3, #0]
	ldr	r0, .L_2fb08
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r1, .L_2fb0c
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r1, .L_2fb10
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #0]
	mov	r0, #123	@ 0x7b
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_2faf8
	sub	r0, #1
	strb	r0, [r2, #29]
	bl	func_80747D8
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_2faf8:
	mov	r0, #13
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2fb04:
	.4byte	gCurrentSprite
.L_2fb08:
	.4byte	sUnk_83B9AB8
.L_2fb0c:
	.4byte	gPaletteFlashTimer
.L_2fb10:
	.4byte	gInitialHealth


thumb_func_start func_802FB14
func_802FB14:
	push	{r4, r5, lr}
	ldr	r5, .L_2fb44
	ldrb	r0, [r5, #0]
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_2fb58
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_2fbaa
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_2fb4c
	ldr	r1, .L_2fb48
	mov	r0, #3
	strb	r0, [r1, #27]
	b	.L_2fbaa
.L_2fb44:
	.4byte	gPaletteFlashTimer
.L_2fb48:
	.4byte	gCurrentSprite
.L_2fb4c:
	ldr	r0, .L_2fb54
	strb	r1, [r0, #27]
	b	.L_2fbaa
	.align	2, 0
.L_2fb54:
	.4byte	gCurrentSprite
.L_2fb58:
	ldr	r3, .L_2fb84
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	ldrb	r2, [r3, #29]
	add	r4, r2, #0
	ldrb	r0, [r0, #0]
	cmp	r4, r0
	bne	.L_2fb90
	ldr	r0, .L_2fb88
	strb	r2, [r0, #0]
	mov	r0, #3
	strb	r0, [r3, #28]
	ldr	r0, .L_2fb8c
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	bl	SpriteUtilStartBossTimer
	mov	r0, #162	@ 0xa2
	bl	m4aSongNumStart
	b	.L_2fbaa
.L_2fb84:
	.4byte	gCurrentSprite
.L_2fb88:
	.4byte	gBgAnimationFrame
.L_2fb8c:
	.4byte	sUnk_83B9B40
.L_2fb90:
	mov	r1, #32
	strb	r1, [r5, #0]
	ldr	r0, .L_2fbb0
	strb	r1, [r0, #0]
	cmp	r4, #0
	beq	.L_2fbaa
	sub	r0, r2, #1
	strb	r0, [r3, #29]
	bl	func_80747D8
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_2fbaa:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_2fbb0:
	.4byte	gInitialHealth


thumb_func_start func_802FBB4
func_802FBB4:
	push	{lr}
	ldr	r0, .L_2fc04
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_2fc08
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_2fc0c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #24]
	mov	r3, ip
	cmp	r0, #4
	bhi	.L_2fcc2
	lsl	r0, r0, #2
	ldr	r1, .L_2fc10
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2fc04:
	.4byte	gCurrentSprite
.L_2fc08:
	.4byte	0x8408
.L_2fc0c:
	.4byte	0xFFFB
.L_2fc10:
	.4byte	.L_2fc14
.L_2fc14:
	.4byte	.L_2fc28
	.4byte	.L_2fc30
	.4byte	.L_2fc54
	.4byte	.L_2fc74
	.4byte	.L_2fc90
.L_2fc28:
	ldr	r0, .L_2fc2c
	b	.L_2fc56
.L_2fc2c:
	.4byte	sUnk_83BA0BC
.L_2fc30:
	ldr	r0, .L_2fc50
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #48	@ 0x30
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #6
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	b	.L_2fcc2
.L_2fc50:
	.4byte	sUnk_83BA14C
.L_2fc54:
	ldr	r0, .L_2fc70
.L_2fc56:
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	b	.L_2fcc2
	.align	2, 0
.L_2fc70:
	.4byte	sUnk_83B9EE4
.L_2fc74:
	ldr	r0, .L_2fc8c
	str	r0, [r3, #4]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	b	.L_2fcc2
	.align	2, 0
.L_2fc8c:
	.4byte	sUnk_83B9ED4
.L_2fc90:
	ldr	r0, .L_2fccc
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
.L_2fcc2:
	mov	r0, #24
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r0}
	bx	r0
.L_2fccc:
	.4byte	sUnk_83B9EC4


thumb_func_start func_802FCD0
func_802FCD0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_2fce0
	ldrb	r0, [r4, #24]
	cmp	r0, #1
	beq	.L_2fce4
	cmp	r0, #4
	beq	.L_2fd60
	b	.L_2fdf0
.L_2fce0:
	.4byte	gCurrentSprite
.L_2fce4:
	ldr	r6, .L_2fd4c
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r6
	ldrb	r0, [r1, #28]
	cmp	r0, #15
	bls	.L_2fdf0
	ldr	r0, .L_2fd50
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_2fdf0
	ldrb	r0, [r1, #29]
	cmp	r0, #10
	bhi	.L_2fdf0
	ldr	r0, .L_2fd54
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fdf0
	ldr	r0, .L_2fd58
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fdf0
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_2fdac
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2fd5c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_2fdf0
	mov	r0, #231	@ 0xe7
	mov	r1, #4
	bl	SpriteUtilFindSprite
	mul	r0, r5
	add	r0, r0, r6
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_2fdf0
	mov	r0, #110	@ 0x6e
	b	.L_2fdee
.L_2fd4c:
	.4byte	gSpriteData
.L_2fd50:
	.4byte	gTimerState
.L_2fd54:
	.4byte	gUnk_3000A5B
.L_2fd58:
	.4byte	gUnk_3000A58
.L_2fd5c:
	.4byte	gUnk_3000A51
.L_2fd60:
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	mov	r1, #0
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	ldr	r6, .L_2fdb4
	add	r0, #1
	ldrb	r0, [r0, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r6
	ldrb	r0, [r1, #28]
	cmp	r0, #15
	bls	.L_2fdf0
	ldr	r0, .L_2fdb8
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_2fdf0
	ldrb	r0, [r1, #29]
	cmp	r0, #12
	bhi	.L_2fdf0
	ldr	r0, .L_2fdbc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fdf0
	ldr	r0, .L_2fdc0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fdf0
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_2fdc4
.L_2fdac:
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_2fdf0
	.align	2, 0
.L_2fdb4:
	.4byte	gSpriteData
.L_2fdb8:
	.4byte	gTimerState
.L_2fdbc:
	.4byte	gUnk_3000A5B
.L_2fdc0:
	.4byte	gUnk_3000A58
.L_2fdc4:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_2fdf8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_2fdf0
	mov	r0, #231	@ 0xe7
	mov	r1, #1
	bl	SpriteUtilFindSprite
	mul	r0, r5
	add	r0, r0, r6
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_2fdf0
	mov	r0, #17
.L_2fdee:
	strb	r0, [r4, #28]
.L_2fdf0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2fdf8:
	.4byte	gUnk_3000A51


thumb_func_start func_802FDFC
func_802FDFC:
	push	{lr}
	ldr	r0, .L_2fe14
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	mov	r0, #168	@ 0xa8
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_2fe14:
	.4byte	gCurrentSprite


thumb_func_start func_802FE18
func_802FE18:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_2fe44
	add	r5, r0, #0
	add	r5, #40	@ 0x28
	ldrb	r1, [r5, #0]
	sub	r2, r1, #1
	strb	r2, [r5, #0]
	lsl	r1, r2, #24
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_2fe6e
	add	r0, r1, #0
	lsr	r0, r0, #24
	cmp	r0, #50	@ 0x32
	bls	.L_2fe48
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #2
	b	.L_2feae
	.align	2, 0
.L_2fe44:
	.4byte	gCurrentSprite
.L_2fe48:
	cmp	r0, #35	@ 0x23
	bls	.L_2fe56
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #4
	b	.L_2feae
.L_2fe56:
	cmp	r0, #20
	bls	.L_2fe64
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #8
	b	.L_2feae
.L_2fe64:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #16
	b	.L_2feae
.L_2fe6e:
	ldr	r0, .L_2fe9c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fea4
	ldr	r0, .L_2fea0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2fea4
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #200	@ 0xc8
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #19
	strb	r0, [r4, #28]
	mov	r0, #240	@ 0xf0
	strb	r0, [r5, #0]
	b	.L_2feb0
.L_2fe9c:
	.4byte	gUnk_3000A5B
.L_2fea0:
	.4byte	gUnk_3000A58
.L_2fea4:
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #60	@ 0x3c
.L_2feae:
	strb	r0, [r1, #0]
.L_2feb0:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_802FEB8
func_802FEB8:
	push	{r4, lr}
	ldr	r3, .L_2fef4
	ldrh	r0, [r3, #0]
	mov	r4, #4
	add	r2, r4, #0
	orr	r2, r0
	strh	r2, [r3, #0]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2feec
	ldr	r0, .L_2fef8
	and	r2, r0
	strh	r2, [r3, #0]
	mov	r0, #20
	strb	r0, [r3, #28]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r4, [r0, #0]
	mov	r0, #168	@ 0xa8
	bl	m4aSongNumStart
.L_2feec:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2fef4:
	.4byte	gCurrentSprite
.L_2fef8:
	.4byte	0xFFFB


thumb_func_start func_802FEFC
func_802FEFC:
	ldr	r1, .L_2ff1c
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	add	r0, #4
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #251	@ 0xfb
	bls	.L_2ff1a
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r1, #40	@ 0x28
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #0]
.L_2ff1a:
	bx	lr
.L_2ff1c:
	.4byte	gCurrentSprite


thumb_func_start func_802FF20
func_802FF20:
	push	{lr}
	ldr	r0, .L_2ff44
	ldr	r1, .L_2ff48
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	mov	r0, #208	@ 0xd0
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2ff44:
	.4byte	gCurrentSprite
.L_2ff48:
	.4byte	sUnk_83BA0DC


thumb_func_start func_802FF4C
func_802FF4C:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_2ff74
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	mov	r5, #0
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	cmp	r0, #76	@ 0x4c
	beq	.L_2ff90
	cmp	r0, #76	@ 0x4c
	bgt	.L_2ff78
	cmp	r0, #60	@ 0x3c
	beq	.L_2ff7e
	cmp	r0, #64	@ 0x40
	beq	.L_2ff88
	b	.L_2ffe0
	.align	2, 0
.L_2ff74:
	.4byte	gCurrentSprite
.L_2ff78:
	cmp	r0, #80	@ 0x50
	beq	.L_2ffcc
	b	.L_2ffe0
.L_2ff7e:
	ldr	r0, .L_2ff84
	b	.L_2ffba
	.align	2, 0
.L_2ff84:
	.4byte	sUnk_83BA0FC
.L_2ff88:
	ldr	r0, .L_2ff8c
	b	.L_2ffba
.L_2ff8c:
	.4byte	sUnk_83BA10C
.L_2ff90:
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_2ffc4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_2ffb8
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #189	@ 0xbd
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_2ffb8:
	ldr	r0, .L_2ffc8
.L_2ffba:
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r5, [r4, #20]
	b	.L_2ffe0
	.align	2, 0
.L_2ffc4:
	.4byte	gUnk_3000A51
.L_2ffc8:
	.4byte	sUnk_83BA14C
.L_2ffcc:
	ldr	r0, .L_2ffe8
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r5, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #180	@ 0xb4
	strb	r0, [r1, #0]
.L_2ffe0:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_2ffe8:
	.4byte	sUnk_83BA14C


thumb_func_start func_802FFEC
func_802FFEC:
	ldr	r1, .L_3000c
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30010
	and	r0, r2
	mov	r2, #0
	strh	r0, [r1, #0]
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_3000c:
	.4byte	gCurrentSprite
.L_30010:
	.4byte	0x7F77


thumb_func_start func_8030014
func_8030014:
	ldr	r1, .L_30034
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30038
	and	r0, r2
	mov	r2, #0
	strh	r0, [r1, #0]
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_30034:
	.4byte	gCurrentSprite
.L_30038:
	.4byte	0x7F77


thumb_func_start func_803003C
func_803003C:
	push	{lr}
	ldr	r3, .L_30084
	ldrh	r1, [r3, #0]
	ldr	r2, .L_30088
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_3008c
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r2, [r3, #30]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	strb	r2, [r3, #22]
	mov	r0, #16
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #24]
	cmp	r0, #4
	bhi	.L_3013c
	lsl	r0, r0, #2
	ldr	r1, .L_30090
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_30084:
	.4byte	gCurrentSprite
.L_30088:
	.4byte	0x8408
.L_3008c:
	.4byte	0xFFFB
.L_30090:
	.4byte	.L_30094
.L_30094:
	.4byte	.L_300a8
	.4byte	.L_300cc
	.4byte	.L_300ec
	.4byte	.L_30108
	.4byte	.L_30124
.L_300a8:
	ldr	r0, .L_300c8
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r2, #0
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	strh	r2, [r3, #20]
	mov	r0, #66	@ 0x42
	strb	r0, [r3, #30]
	b	.L_3013c
	.align	2, 0
.L_300c8:
	.4byte	sUnk_83B9E40
.L_300cc:
	ldr	r0, .L_300e8
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r2, #0
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	strh	r2, [r3, #20]
	b	.L_3013c
	.align	2, 0
.L_300e8:
	.4byte	sUnk_83B9E18
.L_300ec:
	ldr	r0, .L_30104
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_3013a
.L_30104:
	.4byte	sUnk_83B9E18
.L_30108:
	ldr	r0, .L_30120
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #2
	b	.L_3013a
.L_30120:
	.4byte	sUnk_83B9E18
.L_30124:
	ldr	r0, .L_3014c
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #3
.L_3013a:
	strh	r0, [r3, #20]
.L_3013c:
	ldrb	r0, [r3, #24]
	cmp	r0, #4
	bne	.L_30150
	mov	r0, #24
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_30158
	.align	2, 0
.L_3014c:
	.4byte	sUnk_83B9E18
.L_30150:
	ldrb	r0, [r3, #24]
	add	r0, #1
	bl	SpriteUtilFindOwnSlot
.L_30158:
	pop	{r0}
	bx	r0


thumb_func_start func_803015C
func_803015C:
	push	{r4, lr}
	ldr	r4, .L_3017c
	bl	func_802EA98
	mov	r0, #24
	bl	SpriteUtilFindSpriteSlot
	ldr	r2, .L_30180
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	strh	r0, [r4, #10]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3017c:
	.4byte	gCurrentSprite
.L_30180:
	.4byte	gSpriteData


thumb_func_start func_8030184
func_8030184:
	push	{lr}
	ldr	r0, .L_301a4
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	mov	r1, #30
	strb	r1, [r0, #0]
	ldr	r1, .L_301a8
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, #166	@ 0xa6
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_301a4:
	.4byte	gCurrentSprite
.L_301a8:
	.4byte	gInitialHealth


thumb_func_start func_80301AC
func_80301AC:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L_30220
	ldr	r0, .L_30224
	mov	ip, r0
	ldr	r0, .L_30228
	mov	r7, #0
	mov	r6, #1
	add	r2, r0, #0
	add	r2, #23
	add	r3, r0, #0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r4, r3, r0
.L_301c6:
	ldrb	r0, [r2, #0]
	cmp	r0, #232	@ 0xe8
	bne	.L_301dc
	ldrh	r1, [r3, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_301dc
	mov	r0, #34	@ 0x22
	strb	r0, [r2, #5]
	strb	r7, [r2, #16]
.L_301dc:
	add	r2, #44	@ 0x2c
	add	r3, #44	@ 0x2c
	cmp	r3, r4
	ble	.L_301c6
	mov	r1, #0
	mov	r0, #34	@ 0x22
	strb	r0, [r5, #28]
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	mov	r0, ip
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
	mov	r0, #229	@ 0xe5
	bl	SpriteUtilFindSpriteSlot
	ldr	r4, .L_3022c
	ldrh	r2, [r5, #8]
	ldr	r3, .L_30228
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	sub	r2, r2, r0
	asr	r2, r2, #1
	strh	r2, [r4, #0]
	mov	r0, #163	@ 0xa3
	bl	m4aSongNumStart
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30220:
	.4byte	gCurrentSprite
.L_30224:
	.4byte	sUnk_83B9E40
.L_30228:
	.4byte	gSpriteData
.L_3022c:
	.4byte	gUnk_3000A64


thumb_func_start func_8030230
func_8030230:
	push	{lr}
	bl	func_802E8BC
	bl	func_802EA0C
	ldr	r0, .L_30268
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #119	@ 0x77
	bls	.L_30270
	mov	r0, #229	@ 0xe5
	bl	SpriteUtilFindSpriteSlot
	ldr	r2, .L_3026c
	mov	r1, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	sub	r1, #20
	mov	r2, #6
	bl	SpriteSpawnSecondary
	bl	func_8030184
	b	.L_30274
.L_30268:
	.4byte	gCurrentSprite
.L_3026c:
	.4byte	gSpriteData
.L_30270:
	add	r0, #4
	strb	r0, [r1, #0]
.L_30274:
	pop	{r0}
	bx	r0


thumb_func_start func_8030278
func_8030278:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L_302ec
	ldr	r0, .L_302f0
	mov	ip, r0
	ldr	r0, .L_302f4
	mov	r7, #0
	mov	r6, #1
	add	r2, r0, #0
	add	r2, #23
	add	r3, r0, #0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r4, r3, r0
.L_30292:
	ldrb	r0, [r2, #0]
	cmp	r0, #232	@ 0xe8
	bne	.L_302a8
	ldrh	r1, [r3, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_302a8
	mov	r0, #32
	strb	r0, [r2, #5]
	strb	r7, [r2, #16]
.L_302a8:
	add	r2, #44	@ 0x2c
	add	r3, #44	@ 0x2c
	cmp	r3, r4
	ble	.L_30292
	mov	r1, #0
	mov	r0, #32
	strb	r0, [r5, #28]
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	mov	r0, ip
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
	mov	r0, #229	@ 0xe5
	bl	SpriteUtilFindSpriteSlot
	ldr	r4, .L_302f8
	ldrh	r2, [r5, #8]
	ldr	r3, .L_302f4
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	sub	r2, r2, r0
	asr	r2, r2, #1
	strh	r2, [r4, #0]
	mov	r0, #163	@ 0xa3
	bl	m4aSongNumStart
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_302ec:
	.4byte	gCurrentSprite
.L_302f0:
	.4byte	sUnk_83B9E40
.L_302f4:
	.4byte	gSpriteData
.L_302f8:
	.4byte	gUnk_3000A64


thumb_func_start func_80302FC
func_80302FC:
	push	{lr}
	bl	func_802E8BC
	bl	func_802EA0C
	ldr	r0, .L_3033c
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	sub	r0, r1, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #135	@ 0x87
	bhi	.L_30344
	mov	r0, #229	@ 0xe5
	bl	SpriteUtilFindSpriteSlot
	ldr	r2, .L_30340
	mov	r1, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	add	r1, #20
	mov	r2, #6
	bl	SpriteSpawnSecondary
	bl	func_8030184
	b	.L_30348
	.align	2, 0
.L_3033c:
	.4byte	gCurrentSprite
.L_30340:
	.4byte	gSpriteData
.L_30344:
	sub	r0, r1, #4
	strb	r0, [r2, #0]
.L_30348:
	pop	{r0}
	bx	r0


thumb_func_start func_803034C
func_803034C:
	push	{lr}
	bl	func_802EA0C
	ldr	r1, .L_30374
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_30382
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #128	@ 0x80
	bls	.L_30378
	mov	r0, #20
	b	.L_3037a
	.align	2, 0
.L_30374:
	.4byte	gCurrentSprite
.L_30378:
	mov	r0, #18
.L_3037a:
	strb	r0, [r1, #28]
	mov	r0, #0
	bl	VoiceSetPlay
.L_30382:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8030388
func_8030388:
	push	{lr}
	bl	func_802E8BC
	bl	func_802EA0C
	ldr	r2, .L_303b4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_303c0
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_303b8
	and	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_303bc
	strb	r1, [r0, #0]
	b	.L_303c4
	.align	2, 0
.L_303b4:
	.4byte	gCurrentSprite
.L_303b8:
	.4byte	0xFF7F
.L_303bc:
	.4byte	gUnk_3000A58
.L_303c0:
	sub	r0, #4
	strb	r0, [r1, #0]
.L_303c4:
	pop	{r0}
	bx	r0


thumb_func_start func_80303C8
func_80303C8:
	push	{lr}
	bl	func_802E8BC
	bl	func_802EA0C
	ldr	r2, .L_303f4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_30400
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_303f8
	and	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_303fc
	strb	r1, [r0, #0]
	b	.L_30404
	.align	2, 0
.L_303f4:
	.4byte	gCurrentSprite
.L_303f8:
	.4byte	0xFF7F
.L_303fc:
	.4byte	gUnk_3000A58
.L_30400:
	add	r0, #4
	strb	r0, [r1, #0]
.L_30404:
	pop	{r0}
	bx	r0


thumb_func_start func_8030408
func_8030408:
	ldr	r2, .L_30424
	ldrh	r1, [r2, #0]
	ldr	r0, .L_30428
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #24]
	add	r1, r2, #0
	cmp	r0, #0
	bne	.L_3042c
	add	r2, #41	@ 0x29
	mov	r0, #1
	b	.L_30432
.L_30424:
	.4byte	gCurrentSprite
.L_30428:
	.4byte	0x7F77
.L_3042c:
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #3
.L_30432:
	strb	r0, [r2, #0]
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_803043C
func_803043C:
	ldr	r2, .L_30458
	ldrh	r1, [r2, #0]
	ldr	r0, .L_3045c
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #42	@ 0x2a
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #24]
	add	r1, r2, #0
	cmp	r0, #0
	bne	.L_30460
	add	r2, #41	@ 0x29
	mov	r0, #1
	b	.L_30466
.L_30458:
	.4byte	gCurrentSprite
.L_3045c:
	.4byte	0x7F77
.L_30460:
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #3
.L_30466:
	strb	r0, [r2, #0]
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8030470
func_8030470:
	push	{r4, lr}
	ldr	r0, .L_304d0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_304d4
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_304d8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_304dc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #24
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_304d0:
	.4byte	gCurrentSprite
.L_304d4:
	.4byte	0x8408
.L_304d8:
	.4byte	0xFFFB
.L_304dc:
	.4byte	sUnk_83B9C90


thumb_func_start func_80304E0
func_80304E0:
	push	{r4, lr}
	ldr	r0, .L_3050c
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_305aa
	cmp	r1, #32
	bne	.L_30542
	ldr	r0, .L_30510
	ldr	r3, [r0, #4]
	ldr	r1, .L_30514
	add	r4, r0, #0
	cmp	r3, r1
	bne	.L_30518
	ldrh	r0, [r4, #20]
	cmp	r0, #3
	bls	.L_30530
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_30536
	.align	2, 0
.L_3050c:
	.4byte	gInitialHealth
.L_30510:
	.4byte	gCurrentSprite
.L_30514:
	.4byte	sUnk_83B9C90
.L_30518:
	ldr	r0, .L_3052c
	cmp	r3, r0
	bne	.L_30538
	ldrh	r0, [r4, #20]
	cmp	r0, #3
	bhi	.L_30530
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_30536
.L_3052c:
	.4byte	sUnk_83B9CD8
.L_30530:
	ldrh	r1, [r4, #0]
	ldr	r0, .L_30560
	and	r0, r1
.L_30536:
	strh	r0, [r4, #0]
.L_30538:
	ldr	r0, .L_30564
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
.L_30542:
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_305aa
	ldr	r2, .L_30568
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	add	r4, r2, #0
	cmp	r0, #0
	beq	.L_30570
	ldr	r0, .L_3056c
	b	.L_30572
.L_30560:
	.4byte	0xFFBF
.L_30564:
	.4byte	sUnk_83B9D20
.L_30568:
	.4byte	gCurrentSprite
.L_3056c:
	.4byte	sUnk_83B9CD8
.L_30570:
	ldr	r0, .L_305b0
.L_30572:
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r0, #2
	strh	r0, [r4, #20]
	ldrh	r0, [r4, #0]
	ldr	r3, .L_305b4
	and	r3, r0
	strh	r3, [r4, #0]
	ldr	r2, .L_305b8
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r1, [r0, #29]
	ldr	r0, .L_305bc
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #1
	add	r0, #1
	cmp	r1, r0
	bge	.L_305aa
	mov	r0, #18
	strb	r0, [r4, #28]
	ldr	r0, .L_305c0
	and	r0, r3
	strh	r0, [r4, #0]
.L_305aa:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_305b0:
	.4byte	sUnk_83B9C90
.L_305b4:
	.4byte	0xFFBF
.L_305b8:
	.4byte	gSpriteData
.L_305bc:
	.4byte	gBgAnimationFrame
.L_305c0:
	.4byte	0xFBFF


thumb_func_start func_80305C4
func_80305C4:
	ldr	r1, .L_305cc
	mov	r0, #18
	strb	r0, [r1, #28]
	bx	lr
.L_305cc:
	.4byte	gCurrentSprite


thumb_func_start func_80305D0
func_80305D0:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_305ec
	ldrb	r0, [r1, #28]
	cmp	r0, #106	@ 0x6a
	bne	.L_305f0
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	b	.L_305fe
	.align	2, 0
.L_305ec:
	.4byte	gCurrentSprite
.L_305f0:
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	add	r1, #32
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
.L_305fe:
	ldr	r0, .L_30618
	ldr	r2, [r0, #4]
	ldr	r1, .L_3061c
	add	r5, r0, #0
	cmp	r2, r1
	bne	.L_30620
	ldrh	r0, [r5, #20]
	cmp	r0, #3
	bls	.L_30638
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_3063e
.L_30618:
	.4byte	gCurrentSprite
.L_3061c:
	.4byte	sUnk_83B9C90
.L_30620:
	ldr	r0, .L_30634
	cmp	r2, r0
	bne	.L_30640
	ldrh	r0, [r5, #20]
	cmp	r0, #3
	bhi	.L_30638
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_3063e
.L_30634:
	.4byte	sUnk_83B9CD8
.L_30638:
	ldrh	r1, [r5, #0]
	ldr	r0, .L_30698
	and	r0, r1
.L_3063e:
	strh	r0, [r5, #0]
.L_30640:
	ldr	r0, .L_3069c
	str	r0, [r5, #4]
	mov	r3, #0
	strb	r3, [r5, #22]
	mov	r6, #0
	strh	r3, [r5, #20]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r4, .L_306a0
	mov	r0, #44	@ 0x2c
	add	r2, r1, #0
	mul	r2, r0
	add	r0, r4, #4
	add	r0, r2, r0
	ldr	r1, .L_306a4
	str	r1, [r0, #0]
	add	r2, r2, r4
	strb	r6, [r2, #22]
	strh	r3, [r2, #20]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #49	@ 0x31
	strb	r0, [r1, #0]
	mov	r3, #22
	strb	r3, [r2, #28]
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	bne	.L_306a8
	ldrh	r0, [r2, #0]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r1, r4, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #0]
	orr	r0, r1
	strh	r0, [r5, #0]
	strb	r3, [r5, #28]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #96	@ 0x60
	b	.L_306b2
	.align	2, 0
.L_30698:
	.4byte	0xFFBF
.L_3069c:
	.4byte	sUnk_83B9D38
.L_306a0:
	.4byte	gSpriteData
.L_306a4:
	.4byte	sUnk_83BA5C0
.L_306a8:
	mov	r0, #20
	strb	r0, [r5, #28]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #48	@ 0x30
.L_306b2:
	strb	r0, [r1, #0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80306BC
func_80306BC:
	ldr	r1, .L_306e0
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	add	r2, r1, #0
	cmp	r0, #0
	bne	.L_30704
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_306e8
	ldr	r0, .L_306e4
	b	.L_306ea
	.align	2, 0
.L_306e0:
	.4byte	gCurrentSprite
.L_306e4:
	.4byte	sUnk_83B9CD8
.L_306e8:
	ldr	r0, .L_30708
.L_306ea:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #2
	strh	r0, [r2, #20]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_3070c
	and	r0, r1
	mov	r1, #18
	strb	r1, [r2, #28]
	ldr	r1, .L_30710
	and	r0, r1
	strh	r0, [r2, #0]
.L_30704:
	bx	lr
	.align	2, 0
.L_30708:
	.4byte	sUnk_83B9C90
.L_3070c:
	.4byte	0xFFBF
.L_30710:
	.4byte	0xFDFF


thumb_func_start func_8030714
func_8030714:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_30748
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_3073e
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	strh	r5, [r4, #0]
.L_3073e:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30748:
	.4byte	gCurrentSprite


thumb_func_start func_803074C
func_803074C:
	push	{lr}
	ldr	r0, .L_307a8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_307ac
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_307b0
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #34	@ 0x22
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_307b4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #24
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r0}
	bx	r0
.L_307a8:
	.4byte	gCurrentSprite
.L_307ac:
	.4byte	0x8408
.L_307b0:
	.4byte	0xFFFB
.L_307b4:
	.4byte	sUnk_83B9B00


thumb_func_start func_80307B8
func_80307B8:
	push	{r4, lr}
	ldr	r3, .L_307ec
	ldrh	r1, [r3, #0]
	ldr	r0, .L_307f0
	and	r0, r1
	mov	r1, #0
	mov	r2, #0
	strh	r0, [r3, #0]
	mov	r0, #40	@ 0x28
	strb	r0, [r3, #28]
	mov	r0, #41	@ 0x29
	add	r0, r0, r3
	mov	ip, r0
	mov	r0, #1
	mov	r4, ip
	strb	r0, [r4, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldr	r0, .L_307f4
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r2, [r3, #20]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_307ec:
	.4byte	gCurrentSprite
.L_307f0:
	.4byte	0x7F77
.L_307f4:
	.4byte	sUnk_83B9AF0


thumb_func_start func_80307F8
func_80307F8:
	push	{lr}
	ldr	r0, .L_30860
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_30864
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #69	@ 0x45
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_30868
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #28
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #1
	strb	r0, [r1, #26]
	bl	SpriteUtilTurnTowardWario
	mov	r0, #208	@ 0xd0
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_30860:
	.4byte	gCurrentSprite
.L_30864:
	.4byte	0xFFFB
.L_30868:
	.4byte	sUnk_83BA12C


thumb_func_start func_803086C
func_803086C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_30898
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_3089c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_308a0
	mov	r0, #0
	strh	r1, [r4, #8]
	mov	r1, #16
	strb	r1, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	strb	r0, [r1, #0]
	mov	r0, #209	@ 0xd1
	bl	m4aSongNumStart
	b	.L_308dc
.L_30898:
	.4byte	gCurrentSprite
.L_3089c:
	.4byte	gUnk_3000A50
.L_308a0:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_308c8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_308cc
	cmp	r1, r0
	bne	.L_308d0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_308da
.L_308c8:
	.4byte	sUnk_8352ADC
.L_308cc:
	.4byte	0x7FFF
.L_308d0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_308da:
	strh	r0, [r4, #8]
.L_308dc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80308E4
func_80308E4:
	push	{r4, lr}
	ldr	r4, .L_30910
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #31
	and	r0, r1
	cmp	r0, #0
	bne	.L_30900
	mov	r0, #209	@ 0xd1
	bl	m4aSongNumStart
.L_30900:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_30914
	ldrh	r0, [r4, #10]
	add	r0, #8
	b	.L_30918
.L_30910:
	.4byte	gCurrentSprite
.L_30914:
	ldrh	r0, [r4, #10]
	sub	r0, #8
.L_30918:
	strh	r0, [r4, #10]
	ldr	r2, .L_30934
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_3092c
	strh	r0, [r2, #0]
.L_3092c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30934:
	.4byte	gCurrentSprite


thumb_func_start func_8030938
func_8030938:
	push	{lr}
	ldr	r0, .L_309a4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_309a8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #69	@ 0x45
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_309ac
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #28
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #24]
	add	r1, #39	@ 0x27
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	mov	r0, #168	@ 0xa8
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_309a4:
	.4byte	gCurrentSprite
.L_309a8:
	.4byte	0xFFFB
.L_309ac:
	.4byte	sUnk_83B9EC4


thumb_func_start func_80309B0
func_80309B0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_309d4
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_309d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_309dc
	strh	r1, [r4, #8]
	mov	r0, #16
	strb	r0, [r4, #28]
	mov	r0, #169	@ 0xa9
	bl	m4aSongNumStart
	b	.L_30a18
.L_309d4:
	.4byte	gCurrentSprite
.L_309d8:
	.4byte	gUnk_3000A50
.L_309dc:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_30a04
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_30a08
	cmp	r1, r0
	bne	.L_30a0c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_30a16
.L_30a04:
	.4byte	sUnk_8352ADC
.L_30a08:
	.4byte	0x7FFF
.L_30a0c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_30a16:
	strh	r0, [r4, #8]
.L_30a18:
	ldr	r1, .L_30a28
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #16
	strb	r0, [r1, #0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_30a28:
	.4byte	gCurrentSprite


thumb_func_start func_8030A2C
func_8030A2C:
	ldr	r2, .L_30a48
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_30a4c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #16
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #10]
	add	r0, #4
	b	.L_30a5a
.L_30a48:
	.4byte	gCurrentSprite
.L_30a4c:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #16
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #10]
	sub	r0, #4
.L_30a5a:
	strh	r0, [r2, #10]
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_30a6c
	strh	r0, [r2, #0]
.L_30a6c:
	bx	lr
	.align	2, 0


thumb_func_start func_8030A70
func_8030A70:
	push	{r4, r5, lr}
	ldr	r0, .L_30acc
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r4, #8
	mov	r3, #0
	mov	r5, #0
	add	r2, r4, #0
	orr	r2, r0
	ldr	r0, .L_30ad0
	and	r2, r0
	mov	r1, ip
	strh	r2, [r1, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r1, #3
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_30ad4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r5, [r1, #20]
	mov	r0, #64	@ 0x40
	and	r0, r2
	mov	r2, ip
	cmp	r0, #0
	beq	.L_30ad8
	mov	r0, #52	@ 0x34
	b	.L_30ada
.L_30acc:
	.4byte	gCurrentSprite
.L_30ad0:
	.4byte	0xFFFB
.L_30ad4:
	.4byte	sUnk_83BA960
.L_30ad8:
	mov	r0, #54	@ 0x36
.L_30ada:
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #10
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #5
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #171	@ 0xab
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8030B00
func_8030B00:
	push	{r4, lr}
	ldr	r2, .L_30b34
	mov	r4, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_30b38
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_30b3c
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #123	@ 0x7b
	strb	r0, [r2, #28]
	add	r2, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_30b34:
	.4byte	gCurrentSprite
.L_30b38:
	.4byte	0xFEF7
.L_30b3c:
	.4byte	sUnk_83BA978


thumb_func_start func_8030B40
func_8030B40:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_30b78
	mov	r0, #1
	strb	r0, [r4, #31]
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_30b7c
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #28
	bne	.L_30b7e
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #234	@ 0xea
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_30b7e
	.align	2, 0
.L_30b78:
	.4byte	gCurrentSprite
.L_30b7c:
	strh	r0, [r4, #0]
.L_30b7e:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8030B88
func_8030B88:
	ldr	r2, .L_30ba4
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_30ba4:
	.4byte	gCurrentSprite


thumb_func_start func_8030BA8
func_8030BA8:
	push	{lr}
	ldr	r1, .L_30bb8
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8030B88
	pop	{r0}
	bx	r0
.L_30bb8:
	.4byte	gCurrentSprite


thumb_func_start func_8030BBC
func_8030BBC:
	push	{lr}
	ldr	r1, .L_30bcc
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8030B88
	pop	{r0}
	bx	r0
.L_30bcc:
	.4byte	gCurrentSprite


thumb_func_start func_8030BD0
func_8030BD0:
	ldr	r0, .L_30be0
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_30be0:
	.4byte	gCurrentSprite


thumb_func_start func_8030BE4
func_8030BE4:
	ldr	r2, .L_30c0c
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_30c10
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_30c0c:
	.4byte	gCurrentSprite
.L_30c10:
	.4byte	0xFEFF


thumb_func_start func_8030C14
func_8030C14:
	push	{lr}
	ldr	r1, .L_30c24
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8030BE4
	pop	{r0}
	bx	r0
.L_30c24:
	.4byte	gCurrentSprite


thumb_func_start func_8030C28
func_8030C28:
	push	{lr}
	ldr	r1, .L_30c38
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8030BE4
	pop	{r0}
	bx	r0
.L_30c38:
	.4byte	gCurrentSprite


thumb_func_start func_8030C3C
func_8030C3C:
	ldr	r0, .L_30c50
	add	r3, r0, #0
	add	r3, #41	@ 0x29
	mov	r2, #0
	mov	r1, #8
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_30c50:
	.4byte	gCurrentSprite


thumb_func_start func_8030C54
func_8030C54:
	push	{lr}
	ldr	r1, .L_30c64
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8030C3C
	pop	{r0}
	bx	r0
.L_30c64:
	.4byte	gCurrentSprite


thumb_func_start func_8030C68
func_8030C68:
	push	{lr}
	ldr	r1, .L_30c78
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8030C3C
	pop	{r0}
	bx	r0
.L_30c78:
	.4byte	gCurrentSprite


thumb_func_start func_8030C7C
func_8030C7C:
	ldr	r1, .L_30c8c
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30c90
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_30c8c:
	.4byte	gCurrentSprite
.L_30c90:
	.4byte	0xFFF7


thumb_func_start func_8030C94
func_8030C94:
	ldr	r1, .L_30ca4
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30ca8
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_30ca4:
	.4byte	gCurrentSprite
.L_30ca8:
	.4byte	0xFFF7


thumb_func_start func_8030CAC
func_8030CAC:
	ldr	r1, .L_30cc0
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30cc4
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	bx	lr
.L_30cc0:
	.4byte	gCurrentSprite
.L_30cc4:
	.4byte	0xFFF7


thumb_func_start func_8030CC8
func_8030CC8:
	ldr	r1, .L_30cdc
	ldrh	r2, [r1, #0]
	ldr	r0, .L_30ce0
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	bx	lr
.L_30cdc:
	.4byte	gCurrentSprite
.L_30ce0:
	.4byte	0xFFF7


thumb_func_start func_8030CE4
func_8030CE4:
	push	{r4, r5, lr}
	ldr	r3, .L_30d54
	ldrh	r0, [r3, #0]
	ldr	r5, .L_30d58
	and	r5, r0
	mov	r4, #0
	mov	r2, #0
	strh	r5, [r3, #0]
	mov	r0, #2
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	ldr	r0, .L_30d5c
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #28
	strb	r0, [r3, #28]
	add	r1, #1
	mov	r0, #10
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #170	@ 0xaa
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	ldr	r1, .L_30d60
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_30d68
	ldr	r0, .L_30d64
	and	r0, r5
	b	.L_30d6e
	.align	2, 0
.L_30d54:
	.4byte	gCurrentSprite
.L_30d58:
	.4byte	0xFFFB
.L_30d5c:
	.4byte	sUnk_83BA7A4
.L_30d60:
	.4byte	gWarioData
.L_30d64:
	.4byte	0xFFBF
.L_30d68:
	mov	r1, #64	@ 0x40
	add	r0, r5, #0
	orr	r0, r1
.L_30d6e:
	strh	r0, [r3, #0]
	mov	r0, #210	@ 0xd2
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8030D7C
func_8030D7C:
	ldr	r2, .L_30da0
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_30d9e
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #30
	strb	r0, [r3, #0]
.L_30d9e:
	bx	lr
.L_30da0:
	.4byte	gCurrentSprite


thumb_func_start func_8030DA4
func_8030DA4:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_30dd4
	add	r5, r4, #0
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bne	.L_30ddc
	ldrh	r0, [r4, #8]
	add	r0, #8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_30dd8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_30ddc
	mov	r1, #0
	mov	r0, #28
	strb	r0, [r4, #28]
	strb	r1, [r5, #0]
	b	.L_30ea8
	.align	2, 0
.L_30dd4:
	.4byte	gCurrentSprite
.L_30dd8:
	.4byte	gUnk_3000A51
.L_30ddc:
	ldr	r0, .L_30e30
	mov	r1, #39	@ 0x27
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r2, [r1, #0]
	add	r4, r0, #0
	cmp	r2, #0
	beq	.L_30df0
	sub	r0, r2, #1
	strb	r0, [r1, #0]
.L_30df0:
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r2, [r6, #0]
	ldr	r5, .L_30e34
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_30e38
	cmp	r1, r0
	bne	.L_30e0c
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_30e0c:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_30e70
	mov	r1, ip
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_30e3c
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_30e40
	.align	2, 0
.L_30e30:
	.4byte	gCurrentSprite
.L_30e34:
	.4byte	sUnk_83BA9C8
.L_30e38:
	.4byte	0x7FFF
.L_30e3c:
	ldrh	r0, [r4, #10]
	add	r0, #2
.L_30e40:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_30e68
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_30ea8
	ldrh	r1, [r4, #0]
	ldr	r0, .L_30e6c
	and	r0, r1
	b	.L_30ea6
	.align	2, 0
.L_30e68:
	.4byte	gUnk_3000A51
.L_30e6c:
	.4byte	0xFFBF
.L_30e70:
	mov	r7, ip
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_30e7e
	ldrh	r0, [r4, #10]
	sub	r0, #4
	b	.L_30e82
.L_30e7e:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_30e82:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_30eb0
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_30ea8
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
.L_30ea6:
	strh	r0, [r4, #0]
.L_30ea8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30eb0:
	.4byte	gUnk_3000A51


thumb_func_start func_8030EB4
func_8030EB4:
	ldr	r2, .L_30ee8
	ldr	r0, .L_30eec
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	sub	r0, #2
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_30ef0
	and	r0, r1
	mov	r3, #160	@ 0xa0
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_30ee8:
	.4byte	gCurrentSprite
.L_30eec:
	.4byte	sUnk_83BA7A4
.L_30ef0:
	.4byte	0xFEFF


thumb_func_start func_8030EF4
func_8030EF4:
	push	{r4, lr}
	ldr	r4, .L_30f1c
	mov	r0, #32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bl	func_8030EB4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30f1c:
	.4byte	gCurrentSprite


thumb_func_start func_8030F20
func_8030F20:
	push	{r4, lr}
	ldr	r4, .L_30f48
	mov	r0, #34	@ 0x22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bl	func_8030EB4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30f48:
	.4byte	gCurrentSprite


thumb_func_start func_8030F4C
func_8030F4C:
	push	{lr}
	ldr	r1, .L_30f68
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #32
	strb	r0, [r1, #28]
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	bl	func_8030EB4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30f68:
	.4byte	gCurrentSprite


thumb_func_start func_8030F6C
func_8030F6C:
	push	{lr}
	ldr	r1, .L_30f88
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	bl	func_8030EB4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_30f88:
	.4byte	gCurrentSprite


thumb_func_start func_8030F8C
func_8030F8C:
	ldr	r0, .L_30fa8
	ldr	r1, .L_30fac
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #32
	strb	r1, [r2, #0]
	add	r0, #40	@ 0x28
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	bx	lr
.L_30fa8:
	.4byte	gCurrentSprite
.L_30fac:
	.4byte	sUnk_83BA81C


thumb_func_start func_8030FB0
func_8030FB0:
	push	{lr}
	ldr	r1, .L_30fc8
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8030F8C
	pop	{r0}
	bx	r0
.L_30fc8:
	.4byte	gCurrentSprite


thumb_func_start func_8030FCC
func_8030FCC:
	push	{r4, lr}
	ldr	r1, .L_30ffc
	ldrh	r0, [r1, #10]
	add	r0, #4
	strh	r0, [r1, #10]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #0
	beq	.L_31004
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3100a
	ldr	r0, .L_31000
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_3100a
	.align	2, 0
.L_30ffc:
	.4byte	gCurrentSprite
.L_31000:
	.4byte	sUnk_83BA7A4
.L_31004:
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
.L_3100a:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_31044
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3103e
	ldrh	r1, [r4, #0]
	ldr	r0, .L_31048
	and	r0, r1
	mov	r1, #0
	mov	r2, #0
	strh	r0, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	ldr	r0, .L_3104c
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
.L_3103e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_31044:
	.4byte	gUnk_3000A51
.L_31048:
	.4byte	0xFFBF
.L_3104c:
	.4byte	sUnk_83BA7A4


thumb_func_start func_8031050
func_8031050:
	push	{lr}
	ldr	r1, .L_31068
	ldrh	r2, [r1, #0]
	ldr	r0, .L_3106c
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8030F8C
	pop	{r0}
	bx	r0
.L_31068:
	.4byte	gCurrentSprite
.L_3106c:
	.4byte	0xFFBF


thumb_func_start func_8031070
func_8031070:
	push	{r4, lr}
	ldr	r1, .L_310a0
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #0
	beq	.L_310a8
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_310ae
	ldr	r0, .L_310a4
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_310ae
	.align	2, 0
.L_310a0:
	.4byte	gCurrentSprite
.L_310a4:
	.4byte	sUnk_83BA7A4
.L_310a8:
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
.L_310ae:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_310e8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_310e2
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	ldr	r0, .L_310ec
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
.L_310e2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_310e8:
	.4byte	gUnk_3000A51
.L_310ec:
	.4byte	sUnk_83BA7A4


thumb_func_start func_80310F0
func_80310F0:
	push	{lr}
	ldr	r0, .L_31114
	ldr	r1, .L_31118
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r1, #1
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #70	@ 0x46
	strb	r1, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_31114:
	.4byte	gCurrentSprite
.L_31118:
	.4byte	sUnk_83BA834


thumb_func_start func_803111C
func_803111C:
	push	{r4, lr}
	ldr	r4, .L_31154
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_31160
	ldrh	r1, [r4, #10]
	add	r0, r1, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_31158
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_31188
	ldrh	r1, [r4, #0]
	ldr	r0, .L_3115c
	and	r0, r1
	b	.L_31186
	.align	2, 0
.L_31154:
	.4byte	gCurrentSprite
.L_31158:
	.4byte	gUnk_3000A51
.L_3115c:
	.4byte	0xFFBF
.L_31160:
	ldrh	r1, [r4, #10]
	sub	r0, r1, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_311a8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_31188
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
.L_31186:
	strh	r0, [r4, #0]
.L_31188:
	ldr	r2, .L_311ac
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r3, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_311d0
	lsr	r0, r0, #24
	cmp	r0, #60	@ 0x3c
	bne	.L_311b0
	mov	r0, #70	@ 0x46
	strb	r0, [r2, #30]
	b	.L_311d4
.L_311a8:
	.4byte	gUnk_3000A51
.L_311ac:
	.4byte	gCurrentSprite
.L_311b0:
	cmp	r0, #40	@ 0x28
	bne	.L_311bc
	ldr	r0, .L_311b8
	b	.L_311c2
.L_311b8:
	.4byte	sUnk_83BA84C
.L_311bc:
	cmp	r0, #20
	bne	.L_311d4
	ldr	r0, .L_311cc
.L_311c2:
	str	r0, [r2, #4]
	strb	r4, [r2, #22]
	mov	r0, #1
	strh	r0, [r2, #20]
	b	.L_311d4
.L_311cc:
	.4byte	sUnk_83BA864
.L_311d0:
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
.L_311d4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80311DC
func_80311DC:
	push	{lr}
	ldr	r0, .L_31238
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldr	r0, .L_3123c
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #22
	strb	r0, [r1, #0]
	mov	r0, #69	@ 0x45
	mov	r2, ip
	strb	r0, [r2, #30]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #26]
	ldrh	r0, [r2, #8]
	sub	r0, #28
	strh	r0, [r2, #8]
	mov	r0, #211	@ 0xd3
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_31238:
	.4byte	gCurrentSprite
.L_3123c:
	.4byte	sUnk_83BA7EC


thumb_func_start func_8031240
func_8031240:
	ldr	r2, .L_31258
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_31256
	strh	r0, [r2, #0]
.L_31256:
	bx	lr
.L_31258:
	.4byte	gCurrentSprite


thumb_func_start SpriteCuckooCondor
SpriteCuckooCondor:
	push	{lr}
	ldr	r0, .L_31274
	ldrb	r0, [r0, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_31268
	b	.L_314e6
.L_31268:
	lsl	r0, r0, #2
	ldr	r1, .L_31278
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_31274:
	.4byte	gCurrentSprite
.L_31278:
	.4byte	.L_3127c
.L_3127c:
	.4byte	.L_3146c
	.4byte	.L_31472
	.4byte	.L_31478
	.4byte	.L_3147e
	.4byte	.L_31484
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_3148a
	.4byte	.L_3149c
	.4byte	.L_314a2
	.4byte	.L_314a8
	.4byte	.L_314bc
	.4byte	.L_314cc
	.4byte	.L_314d2
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314ae
	.4byte	.L_314e6
	.4byte	.L_314ae
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314ae
	.4byte	.L_314ae
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_31490
	.4byte	.L_31496
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314e6
	.4byte	.L_314d8
	.4byte	.L_314e6
	.4byte	.L_314de
	.4byte	.L_314e2
.L_3146c:
	bl	func_802EBB8
	b	.L_314e6
.L_31472:
	bl	func_802ED68
	b	.L_314e6
.L_31478:
	bl	func_802EDA0
	b	.L_314e6
.L_3147e:
	bl	func_802EDE4
	b	.L_314e6
.L_31484:
	bl	func_802EE18
	b	.L_314e6
.L_3148a:
	bl	func_802EF10
	b	.L_314e6
.L_31490:
	bl	func_802EFD8
	b	.L_314e6
.L_31496:
	bl	func_802F098
	b	.L_314e6
.L_3149c:
	bl	func_802F1E0
	b	.L_314e6
.L_314a2:
	bl	func_802F218
	b	.L_314e6
.L_314a8:
	bl	func_802F3C8
	b	.L_314e6
.L_314ae:
	ldr	r1, .L_314c4
	mov	r0, #20
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_314c8
	and	r0, r2
	strh	r0, [r1, #0]
.L_314bc:
	bl	func_802F4A0
	b	.L_314e6
	.align	2, 0
.L_314c4:
	.4byte	gCurrentSprite
.L_314c8:
	.4byte	0xFDFF
.L_314cc:
	bl	func_802F5A0
	b	.L_314e6
.L_314d2:
	bl	func_802F64C
	b	.L_314e6
.L_314d8:
	bl	func_802F73C
	b	.L_314e6
.L_314de:
	bl	func_802FA6C
.L_314e2:
	bl	func_802FB14
.L_314e6:
	ldr	r0, .L_31508
	ldrb	r1, [r0, #29]
	ldr	r0, .L_3150c
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #1
	add	r0, #1
	cmp	r1, r0
	blt	.L_31502
	ldr	r0, .L_31510
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_31502
	bl	func_802EB28
.L_31502:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_31508:
	.4byte	gCurrentSprite
.L_3150c:
	.4byte	gBgAnimationFrame
.L_31510:
	.4byte	gUnk_3000A58


thumb_func_start SpriteUnknownE7
SpriteUnknownE7:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, .L_31534
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_31528
	b	.L_3178c
.L_31528:
	lsl	r0, r0, #2
	ldr	r1, .L_31538
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_31534:
	.4byte	gCurrentSprite
.L_31538:
	.4byte	.L_3153c
.L_3153c:
	.4byte	.L_316fc
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_31702
	.4byte	.L_31730
	.4byte	.L_3173c
	.4byte	.L_31750
	.4byte	.L_31764
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_31778
	.4byte	.L_3177c
	.4byte	.L_31782
	.4byte	.L_31786
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_3178c
	.4byte	.L_31708
	.4byte	.L_3171c
.L_316fc:
	bl	func_802FBB4
	b	.L_3178c
.L_31702:
	bl	func_802FCD0
	b	.L_3178c
.L_31708:
	ldr	r0, .L_31718
	ldrb	r0, [r0, #24]
	cmp	r0, #1
	bne	.L_3178c
	bl	func_802FF20
	b	.L_3178c
	.align	2, 0
.L_31718:
	.4byte	gCurrentSprite
.L_3171c:
	ldr	r0, .L_3172c
	ldrb	r0, [r0, #24]
	cmp	r0, #1
	bne	.L_3178c
	bl	func_802FF4C
	b	.L_3178c
	.align	2, 0
.L_3172c:
	.4byte	gCurrentSprite
.L_31730:
	ldr	r0, .L_3174c
	ldrb	r0, [r0, #24]
	cmp	r0, #4
	bne	.L_3178c
	bl	func_802FDFC
.L_3173c:
	ldr	r0, .L_3174c
	ldrb	r0, [r0, #24]
	cmp	r0, #4
	bne	.L_3178c
	bl	func_802FE18
	b	.L_3178c
	.align	2, 0
.L_3174c:
	.4byte	gCurrentSprite
.L_31750:
	ldr	r0, .L_31760
	ldrb	r0, [r0, #24]
	cmp	r0, #4
	bne	.L_3178c
	bl	func_802FEB8
	b	.L_3178c
	.align	2, 0
.L_31760:
	.4byte	gCurrentSprite
.L_31764:
	ldr	r0, .L_31774
	ldrb	r0, [r0, #24]
	cmp	r0, #4
	bne	.L_3178c
	bl	func_802FEFC
	b	.L_3178c
	.align	2, 0
.L_31774:
	.4byte	gCurrentSprite
.L_31778:
	bl	func_802FFEC
.L_3177c:
	bl	SpriteUtilFallOffscreenRight
	b	.L_31964
.L_31782:
	bl	func_8030014
.L_31786:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_31964
.L_3178c:
	ldr	r1, .L_317a8
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r3, [r0, #0]
	ldrb	r0, [r1, #24]
	add	r7, r1, #0
	cmp	r0, #4
	bls	.L_3179e
	b	.L_31960
.L_3179e:
	lsl	r0, r0, #2
	ldr	r1, .L_317ac
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_317a8:
	.4byte	gCurrentSprite
.L_317ac:
	.4byte	.L_317b0
.L_317b0:
	.4byte	.L_317c4
	.4byte	.L_317e0
	.4byte	.L_31804
	.4byte	.L_31820
	.4byte	.L_3183c
.L_317c4:
	ldr	r2, .L_317d8
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #86	@ 0x56
	strh	r0, [r7, #8]
	ldr	r2, .L_317dc
	b	.L_317f2
.L_317d8:
	.4byte	gSpriteData
.L_317dc:
	.4byte	0xFF70
.L_317e0:
	ldr	r2, .L_317fc
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #86	@ 0x56
	strh	r0, [r7, #8]
	ldr	r2, .L_31800
.L_317f2:
	add	r0, r2, #0
	ldrh	r1, [r1, #10]
	add	r0, r0, r1
	strh	r0, [r7, #10]
	b	.L_31964
.L_317fc:
	.4byte	gSpriteData
.L_31800:
	.4byte	0xFF50
.L_31804:
	ldr	r2, .L_3181c
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #92	@ 0x5c
	strh	r0, [r7, #8]
	ldrh	r0, [r1, #10]
	add	r0, #148	@ 0x94
	strh	r0, [r7, #10]
	b	.L_31964
.L_3181c:
	.4byte	gSpriteData
.L_31820:
	ldr	r2, .L_31838
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #52	@ 0x34
	strh	r0, [r7, #8]
	ldrh	r0, [r1, #10]
	add	r0, #224	@ 0xe0
	strh	r0, [r7, #10]
	b	.L_31964
.L_31838:
	.4byte	gSpriteData
.L_3183c:
	ldr	r2, .L_318d0
	mov	r0, #44	@ 0x2c
	add	r1, r3, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #56	@ 0x38
	strh	r0, [r7, #8]
	ldrh	r0, [r1, #10]
	add	r0, #248	@ 0xf8
	strh	r0, [r7, #10]
	mov	r0, #41	@ 0x29
	add	r0, r0, r7
	mov	r8, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_318d8
	ldr	r5, .L_318d4
	add	r6, r7, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	mov	r2, r8
	ldrb	r0, [r2, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	ldrb	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	b	.L_3194a
	.align	2, 0
.L_318d0:
	.4byte	gSpriteData
.L_318d4:
	.4byte	sSinCosTable
.L_318d8:
	ldr	r6, .L_3195c
	mov	r0, #39	@ 0x27
	add	r0, r0, r7
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
.L_3194a:
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	b	.L_31964
	.align	2, 0
.L_3195c:
	.4byte	sSinCosTable
.L_31960:
	mov	r0, #0
	strh	r0, [r1, #0]
.L_31964:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownE8
SpriteUnknownE8:
	push	{lr}
	ldr	r0, .L_31994
	ldrb	r1, [r0, #24]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_31980
	mov	r0, #1
	strb	r0, [r2, #31]
.L_31980:
	ldrb	r0, [r2, #28]
	cmp	r0, #42	@ 0x2a
	bls	.L_31988
	b	.L_31a8e
.L_31988:
	lsl	r0, r0, #2
	ldr	r1, .L_31998
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_31994:
	.4byte	gCurrentSprite
.L_31998:
	.4byte	.L_3199c
.L_3199c:
	.4byte	.L_31a48
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a4e
	.4byte	.L_31a8e
	.4byte	.L_31a6e
	.4byte	.L_31a8e
	.4byte	.L_31a74
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a68
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a5e
	.4byte	.L_31a62
	.4byte	.L_31a54
	.4byte	.L_31a58
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a8e
	.4byte	.L_31a7a
	.4byte	.L_31a7e
	.4byte	.L_31a84
	.4byte	.L_31a88
.L_31a48:
	bl	func_803003C
	b	.L_31a92
.L_31a4e:
	bl	func_803015C
	b	.L_31a92
.L_31a54:
	bl	func_80301AC
.L_31a58:
	bl	func_8030230
	b	.L_31a92
.L_31a5e:
	bl	func_8030278
.L_31a62:
	bl	func_80302FC
	b	.L_31a92
.L_31a68:
	bl	func_803034C
	b	.L_31a92
.L_31a6e:
	bl	func_8030388
	b	.L_31a92
.L_31a74:
	bl	func_80303C8
	b	.L_31a92
.L_31a7a:
	bl	func_8030408
.L_31a7e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_31a92
.L_31a84:
	bl	func_803043C
.L_31a88:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_31a92
.L_31a8e:
	mov	r0, #16
	strb	r0, [r2, #28]
.L_31a92:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownE5
SpriteUnknownE5:
	push	{lr}
	ldr	r1, .L_31ab8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #20
	beq	.L_31aea
	cmp	r0, #20
	bgt	.L_31ac2
	cmp	r0, #16
	beq	.L_31ade
	cmp	r0, #16
	bgt	.L_31abc
	cmp	r0, #0
	beq	.L_31ad8
	b	.L_31af4
.L_31ab8:
	.4byte	gCurrentSprite
.L_31abc:
	cmp	r0, #18
	beq	.L_31ae4
	b	.L_31af4
.L_31ac2:
	cmp	r0, #22
	beq	.L_31af0
	cmp	r0, #22
	blt	.L_31af4
	cmp	r0, #106	@ 0x6a
	bgt	.L_31af4
	cmp	r0, #105	@ 0x69
	blt	.L_31af4
	bl	func_80305D0
	b	.L_31aea
.L_31ad8:
	bl	func_8030470
	b	.L_31af4
.L_31ade:
	bl	func_80304E0
	b	.L_31af4
.L_31ae4:
	bl	func_80305C4
	b	.L_31af4
.L_31aea:
	bl	func_80306BC
	b	.L_31af4
.L_31af0:
	bl	func_8030714
.L_31af4:
	ldr	r2, .L_31b18
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r3, .L_31b1c
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r3
	ldr	r3, .L_31b20
	add	r0, r3, #0
	ldrh	r3, [r1, #8]
	add	r0, r0, r3
	strh	r0, [r2, #8]
	ldrh	r0, [r1, #10]
	strh	r0, [r2, #10]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_31b18:
	.4byte	gCurrentSprite
.L_31b1c:
	.4byte	gSpriteData
.L_31b20:
	.4byte	0xFF68


thumb_func_start SpriteUnknownE6
SpriteUnknownE6:
	push	{lr}
	ldr	r1, .L_31b3c
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #39	@ 0x27
	beq	.L_31b4c
	cmp	r0, #39	@ 0x27
	bgt	.L_31b40
	cmp	r0, #0
	beq	.L_31b46
	b	.L_31b56
.L_31b3c:
	.4byte	gCurrentSprite
.L_31b40:
	cmp	r0, #40	@ 0x28
	beq	.L_31b50
	b	.L_31b56
.L_31b46:
	bl	func_803074C
	b	.L_31b56
.L_31b4c:
	bl	func_80307B8
.L_31b50:
	bl	SpriteUtilFallOffscreenRight
	b	.L_31b7c
.L_31b56:
	ldr	r3, .L_31b80
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_31b84
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r2, r0, r2
	ldrb	r1, [r2, #29]
	ldr	r0, .L_31b88
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #1
	add	r0, #1
	cmp	r1, r0
	blt	.L_31b7c
	ldrh	r0, [r2, #8]
	strh	r0, [r3, #8]
	ldrh	r0, [r2, #10]
	strh	r0, [r3, #10]
.L_31b7c:
	pop	{r0}
	bx	r0
.L_31b80:
	.4byte	gCurrentSprite
.L_31b84:
	.4byte	gSpriteData
.L_31b88:
	.4byte	gBgAnimationFrame


thumb_func_start SpriteUnknownBD
SpriteUnknownBD:
	push	{lr}
	ldr	r0, .L_31ba0
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_31ba4
	cmp	r0, #28
	beq	.L_31baa
	bl	func_80308E4
	b	.L_31bae
.L_31ba0:
	.4byte	gCurrentSprite
.L_31ba4:
	bl	func_80307F8
	b	.L_31bae
.L_31baa:
	bl	func_803086C
.L_31bae:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownC8
SpriteUnknownC8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_31bcc
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_31bd0
	cmp	r0, #28
	beq	.L_31bd4
	bl	func_8030A2C
	b	.L_31bd8
.L_31bcc:
	.4byte	gCurrentSprite
.L_31bd0:
	bl	func_8030938
.L_31bd4:
	bl	func_80309B0
.L_31bd8:
	ldr	r0, .L_31c60
	mov	r8, r0
	ldr	r6, .L_31c64
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_31c60:
	.4byte	sSinCosTable
.L_31c64:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownE9
SpriteUnknownE9:
	push	{lr}
	ldr	r0, .L_31c80
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #123	@ 0x7b
	bls	.L_31c76
	b	.L_31f78
.L_31c76:
	lsl	r0, r1, #2
	ldr	r1, .L_31c84
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_31c80:
	.4byte	gCurrentSprite
.L_31c84:
	.4byte	.L_31c88
.L_31c88:
	.4byte	.L_31e78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31e7e
	.4byte	.L_31e82
	.4byte	.L_31e88
	.4byte	.L_31e9a
	.4byte	.L_31ea0
	.4byte	.L_31eb2
	.4byte	.L_31ebe
	.4byte	.L_31f78
	.4byte	.L_31ec8
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31eb8
	.4byte	.L_31f78
	.4byte	.L_31ebe
	.4byte	.L_31ec2
	.4byte	.L_31ec8
	.4byte	.L_31ecc
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31ed2
	.4byte	.L_31ee2
	.4byte	.L_31ed8
	.4byte	.L_31eec
	.4byte	.L_31ede
	.4byte	.L_31ee2
	.4byte	.L_31ee8
	.4byte	.L_31eec
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31e88
	.4byte	.L_31ea0
	.4byte	.L_31ef2
	.4byte	.L_31ef8
	.4byte	.L_31efe
	.4byte	.L_31f04
	.4byte	.L_31f16
	.4byte	.L_31f1c
	.4byte	.L_31f0a
	.4byte	.L_31f10
	.4byte	.L_31f22
	.4byte	.L_31f26
	.4byte	.L_31f4a
	.4byte	.L_31f4e
	.4byte	.L_31f2c
	.4byte	.L_31f30
	.4byte	.L_31f54
	.4byte	.L_31f58
	.4byte	.L_31f36
	.4byte	.L_31f3a
	.4byte	.L_31f5e
	.4byte	.L_31f62
	.4byte	.L_31f40
	.4byte	.L_31f44
	.4byte	.L_31f68
	.4byte	.L_31f6c
	.4byte	.L_31eae
	.4byte	.L_31e96
	.4byte	.L_31eb8
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f78
	.4byte	.L_31f72
.L_31e78:
	bl	func_8030A70
	b	.L_31f7c
.L_31e7e:
	bl	func_8030BD0
.L_31e82:
	bl	func_8023FA8
	b	.L_31f7c
.L_31e88:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	sub	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_31e96:
	bl	func_8030C14
.L_31e9a:
	bl	SpriteUtilFallOffscreenRight
	b	.L_31f7c
.L_31ea0:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	add	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_31eae:
	bl	func_8030C28
.L_31eb2:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_31f7c
.L_31eb8:
	bl	SpriteUtilDie
	b	.L_31f7c
.L_31ebe:
	bl	func_8030BA8
.L_31ec2:
	bl	func_8024A3C
	b	.L_31f7c
.L_31ec8:
	bl	func_8030BBC
.L_31ecc:
	bl	func_8024820
	b	.L_31f7c
.L_31ed2:
	bl	func_8024AC0
	b	.L_31ee2
.L_31ed8:
	bl	func_8024BEC
	b	.L_31eec
.L_31ede:
	bl	func_8030C54
.L_31ee2:
	bl	func_8024AD4
	b	.L_31f7c
.L_31ee8:
	bl	func_8030C68
.L_31eec:
	bl	func_8024C00
	b	.L_31f7c
.L_31ef2:
	bl	func_8030C7C
	b	.L_31f7c
.L_31ef8:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_31f7c
.L_31efe:
	bl	func_8030C94
	b	.L_31f7c
.L_31f04:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_31f7c
.L_31f0a:
	bl	func_8030CAC
	b	.L_31f7c
.L_31f10:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_31f7c
.L_31f16:
	bl	func_8030CC8
	b	.L_31f7c
.L_31f1c:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_31f7c
.L_31f22:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_31f26:
	bl	SpriteUtilThrownLeftSoft
	b	.L_31f7c
.L_31f2c:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_31f30:
	bl	SpriteUtilThrownLeftHard
	b	.L_31f7c
.L_31f36:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_31f3a:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_31f7c
.L_31f40:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_31f44:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_31f7c
.L_31f4a:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_31f4e:
	bl	SpriteUtilThrownRightSoft
	b	.L_31f7c
.L_31f54:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_31f58:
	bl	SpriteUtilThrownRightHard
	b	.L_31f7c
.L_31f5e:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_31f62:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_31f7c
.L_31f68:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_31f6c:
	bl	SpriteUtilThrownUpRightHard
	b	.L_31f7c
.L_31f72:
	bl	func_8030B40
	b	.L_31f7c
.L_31f78:
	bl	func_8030B00
.L_31f7c:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownEA
SpriteUnknownEA:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_31f9c
	ldrb	r0, [r0, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_31f90
	b	.L_322ec
.L_31f90:
	lsl	r0, r0, #2
	ldr	r1, .L_31fa0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_31f9c:
	.4byte	gCurrentSprite
.L_31fa0:
	.4byte	.L_31fa4
.L_31fa4:
	.4byte	.L_3216c
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_3217e
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_32178
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_32172
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_3219e
	.4byte	.L_321a2
	.4byte	.L_3223e
	.4byte	.L_32242
	.4byte	.L_32184
	.4byte	.L_32188
	.4byte	.L_3218e
	.4byte	.L_32192
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_32198
	.4byte	.L_322ec
	.4byte	.L_32238
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_3223e
	.4byte	.L_3219e
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322ec
	.4byte	.L_322d8
	.4byte	.L_322dc
	.4byte	.L_322e2
	.4byte	.L_322e6
.L_3216c:
	bl	func_8030CE4
	b	.L_322f8
.L_32172:
	bl	func_8023D48
	b	.L_322f8
.L_32178:
	bl	func_8030D7C
	b	.L_322f8
.L_3217e:
	bl	func_8030DA4
	b	.L_322f8
.L_32184:
	bl	func_8030FB0
.L_32188:
	bl	func_8030FCC
	b	.L_322f8
.L_3218e:
	bl	func_8031050
.L_32192:
	bl	func_8031070
	b	.L_322f8
.L_32198:
	bl	func_8030F4C
	b	.L_322f8
.L_3219e:
	bl	func_8030EF4
.L_321a2:
	bl	SpriteUtilFallOffscreenRight
	ldr	r5, .L_32230
	mov	r0, #0
	strb	r0, [r5, #22]
	strh	r0, [r5, #20]
	ldr	r0, .L_32234
	mov	r8, r0
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #18]
	ldrb	r0, [r7, #0]
	add	r0, #8
	strb	r0, [r7, #0]
	b	.L_322f8
.L_32230:
	.4byte	gCurrentSprite
.L_32234:
	.4byte	sSinCosTable
.L_32238:
	bl	func_8030F6C
	b	.L_322f8
.L_3223e:
	bl	func_8030F20
.L_32242:
	bl	SpriteUtilFallOffscreenLeft
	ldr	r5, .L_322d0
	mov	r0, #0
	strb	r0, [r5, #22]
	strh	r0, [r5, #20]
	ldr	r0, .L_322d4
	mov	r8, r0
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #18]
	ldrb	r0, [r7, #0]
	sub	r0, #8
	strb	r0, [r7, #0]
	b	.L_322f8
.L_322d0:
	.4byte	gCurrentSprite
.L_322d4:
	.4byte	sSinCosTable
.L_322d8:
	bl	func_80310F0
.L_322dc:
	bl	func_803111C
	b	.L_322f8
.L_322e2:
	bl	func_80311DC
.L_322e6:
	bl	func_8031240
	b	.L_322f8
.L_322ec:
	ldr	r0, .L_3231c
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	bl	SpriteUtilDie
.L_322f8:
	ldr	r2, .L_3231c
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_32312
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_32312
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
.L_32312:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3231c:
	.4byte	gCurrentSprite
