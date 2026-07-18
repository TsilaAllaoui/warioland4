.include "macros.s.inc"


thumb_func_start func_8085E24
func_8085E24:
	push	{r4, lr}
	ldr	r0, .L_85e3c
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #8
	bls	.L_85e32
	b	.L_86058
.L_85e32:
	lsl	r0, r1, #2
	ldr	r1, .L_85e40
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_85e3c:
	.4byte	gUnk_3004731
.L_85e40:
	.4byte	.L_85e44
.L_85e44:
	.4byte	.L_85e68
	.4byte	.L_85eb4
	.4byte	.L_85ecc
	.4byte	.L_85ef4
	.4byte	.L_85f36
	.4byte	.L_85fbc
	.4byte	.L_85fdc
	.4byte	.L_86040
	.4byte	.L_85f8c
.L_85e68:
	bl	func_8089DCC
	cmp	r0, #0
	bne	.L_85e72
	b	.L_86058
.L_85e72:
	ldr	r0, .L_85e84
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_85e8c
	ldr	r1, .L_85e88
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_86058
	.align	2, 0
.L_85e84:
	.4byte	gUnk_3003C56
.L_85e88:
	.4byte	gUnk_3004731
.L_85e8c:
	ldr	r0, .L_85ea0
	ldrb	r1, [r0, #0]
	cmp	r1, #1
	beq	.L_85ea8
	cmp	r1, #2
	beq	.L_85ebe
	ldr	r1, .L_85ea4
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_86058
.L_85ea0:
	.4byte	gUnk_3004730
.L_85ea4:
	.4byte	gUnk_3004731
.L_85ea8:
	ldr	r0, .L_85eb0
	strb	r1, [r0, #0]
	b	.L_86058
	.align	2, 0
.L_85eb0:
	.4byte	gUnk_3004731
.L_85eb4:
	bl	func_8086648
	cmp	r0, #0
	bne	.L_85ebe
	b	.L_86058
.L_85ebe:
	ldr	r1, .L_85ec8
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_86058
	.align	2, 0
.L_85ec8:
	.4byte	gUnk_3004731
.L_85ecc:
	ldr	r4, .L_85eec
	ldrh	r0, [r4, #0]
	add	r2, r0, #1
	strh	r2, [r4, #0]
	ldr	r0, .L_85ef0
	ldrh	r0, [r0, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	bne	.L_85f08
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	cmp	r0, #100	@ 0x64
	bhi	.L_85eea
	b	.L_86058
.L_85eea:
	b	.L_85f84
.L_85eec:
	.4byte	gUnk_3003C3A
.L_85ef0:
	.4byte	gButtonsPressed
.L_85ef4:
	ldr	r4, .L_85f1c
	ldrh	r0, [r4, #0]
	add	r2, r0, #1
	strh	r2, [r4, #0]
	ldr	r0, .L_85f20
	ldrh	r0, [r0, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	beq	.L_85f28
.L_85f08:
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_85f24
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_86058
.L_85f1c:
	.4byte	gUnk_3003C3A
.L_85f20:
	.4byte	gButtonsPressed
.L_85f24:
	.4byte	gUnk_3004731
.L_85f28:
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	cmp	r0, #30
	bhi	.L_85f32
	b	.L_86058
.L_85f32:
	mov	r0, #4
	b	.L_85f86
.L_85f36:
	ldr	r1, .L_85f6c
	ldrh	r0, [r1, #14]
	sub	r0, #20
	strh	r0, [r1, #14]
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	ldr	r4, .L_85f70
	ldrh	r0, [r4, #0]
	add	r2, r0, #1
	strh	r2, [r4, #0]
	ldr	r0, .L_85f74
	ldrh	r0, [r0, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	beq	.L_85f7c
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_85f78
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_86058
.L_85f6c:
	.4byte	gUnk_3003C0C
.L_85f70:
	.4byte	gUnk_3003C3A
.L_85f74:
	.4byte	gButtonsPressed
.L_85f78:
	.4byte	gUnk_3004731
.L_85f7c:
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	cmp	r0, #90	@ 0x5a
	bls	.L_86058
.L_85f84:
	mov	r0, #8
.L_85f86:
	strb	r0, [r3, #0]
	strh	r1, [r4, #0]
	b	.L_86058
.L_85f8c:
	ldr	r0, .L_85fb4
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_85fa8
	ldr	r0, .L_85fb8
	ldrh	r1, [r0, #14]
	sub	r1, #20
	strh	r1, [r0, #14]
	ldrh	r1, [r0, #10]
	sub	r1, #4
	strh	r1, [r0, #10]
.L_85fa8:
	bl	func_8089E14
	cmp	r0, #0
	beq	.L_86058
	mov	r0, #1
	b	.L_8605a
.L_85fb4:
	.4byte	gUnk_3004730
.L_85fb8:
	.4byte	gUnk_3003C0C
.L_85fbc:
	ldr	r1, .L_85fd8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #80	@ 0x50
	ble	.L_86058
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	b	.L_86058
.L_85fd8:
	.4byte	gUnk_300476C
.L_85fdc:
	ldr	r4, .L_86028
	ldrh	r0, [r4, #0]
	sub	r0, #5
	strh	r0, [r4, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bhi	.L_86058
	mov	r0, #212	@ 0xd4
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_8602c
	mov	r3, #1
	strb	r3, [r0, #4]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	strh	r0, [r4, #0]
	ldr	r1, .L_86030
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_86034
	ldr	r0, .L_86038
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #16]
	lsl	r0, r0, #28
	cmp	r0, #0
	bge	.L_86058
	ldr	r0, .L_8603c
	strb	r3, [r0, #4]
	b	.L_86058
	.align	2, 0
.L_86028:
	.4byte	gUnk_300476A
.L_8602c:
	.4byte	gUnk_3004758
.L_86030:
	.4byte	gUnk_3004731
.L_86034:
	.4byte	gCurrentCollection
.L_86038:
	.4byte	gCurrentPassage
.L_8603c:
	.4byte	gUnk_3004760
.L_86040:
	ldr	r1, .L_86060
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #120	@ 0x78
	bls	.L_86058
	mov	r0, #8
	strb	r0, [r3, #0]
	mov	r0, #0
	strh	r0, [r1, #0]
.L_86058:
	mov	r0, #0
.L_8605a:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_86060:
	.4byte	gUnk_3003C3A


thumb_func_start func_8086064
func_8086064:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVideoMemory
	ldr	r1, .L_862a0
	mov	r2, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	strh	r0, [r1, #14]
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #8]
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #4
	strh	r0, [r1, #10]
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	ldr	r1, .L_862a4
	ldr	r0, .L_862a8
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_862ac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_860ae
.L_860a6:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_860a6
.L_860ae:
	ldr	r2, .L_862a4
	ldr	r3, .L_862b0
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #5
	ldr	r1, .L_862b4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_862b8
	str	r0, [r2, #4]
	ldr	r0, .L_862bc
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	add	r5, r3, #0
	ldr	r4, .L_862c0
	ldr	r3, .L_862c4
	ldr	r6, .L_862c8
	ldr	r7, .L_862cc
	mov	sl, r7
	ldr	r7, .L_862d0
	mov	ip, r7
	ldr	r7, .L_862d4
	mov	r8, r7
	ldr	r7, .L_862d8
	mov	r9, r7
	cmp	r0, #0
	bge	.L_860f0
.L_860e8:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_860e8
.L_860f0:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_862a4
	str	r4, [r1, #0]
	ldr	r0, .L_862dc
	str	r0, [r1, #4]
	ldr	r0, .L_862ac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_86118
.L_86110:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_86110
.L_86118:
	ldr	r1, .L_862a4
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_862e0
	str	r0, [r1, #4]
	ldr	r0, .L_862e4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8613e
.L_86136:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_86136
.L_8613e:
	ldr	r1, .L_862a4
	str	r6, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_862e8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_86160
.L_86158:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_86158
.L_86160:
	ldr	r1, .L_862a4
	mov	r0, sl
	str	r0, [r1, #0]
	ldr	r0, .L_862ec
	str	r0, [r1, #4]
	ldr	r0, .L_862f0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_86182
.L_8617a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8617a
.L_86182:
	ldr	r1, .L_862a4
	mov	r2, ip
	str	r2, [r1, #0]
	ldr	r0, .L_862f4
	str	r0, [r1, #4]
	ldr	r0, .L_862f8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_861a4
.L_8619c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8619c
.L_861a4:
	ldr	r1, .L_862a4
	mov	r3, r8
	str	r3, [r1, #0]
	ldr	r0, .L_862fc
	str	r0, [r1, #4]
	ldr	r0, .L_862f8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_861c6
.L_861be:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_861be
.L_861c6:
	ldr	r1, .L_862a4
	mov	r5, r9
	str	r5, [r1, #0]
	ldr	r0, .L_86300
	str	r0, [r1, #4]
	ldr	r0, .L_862f8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_861e8
.L_861e0:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_861e0
.L_861e8:
	ldr	r1, .L_86304
	mov	r7, #176	@ 0xb0
	lsl	r7, r7, #7
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_86308
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_8630c
	add	r0, r3, #0
	strh	r0, [r1, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_86310
	mov	r4, #0
	strh	r4, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #19
	mov	r5, #184	@ 0xb8
	lsl	r5, r5, #5
	add	r0, r5, #0
	strh	r0, [r3, #0]
	ldr	r0, .L_86314
	mov	r2, #0
	strb	r4, [r0, #4]
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	ldr	r0, .L_86318
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_8631c
	strh	r1, [r0, #0]
	ldr	r0, .L_86320
	strh	r2, [r0, #0]
	ldr	r1, .L_86324
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #6
	add	r1, r7, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_86328
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_8632c
	strh	r2, [r0, #0]
	add	r1, #8
	ldr	r3, .L_86330
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r5, .L_86334
	add	r0, r5, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_86338
	str	r2, [r0, #0]
	ldr	r0, .L_8633c
	strh	r2, [r0, #0]
	ldr	r0, .L_86340
	strb	r4, [r0, #0]
	ldr	r0, .L_86344
	strb	r4, [r0, #0]
	ldr	r1, .L_86348
	mov	r7, #144	@ 0x90
	lsl	r7, r7, #4
	add	r0, r7, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8634c
	strh	r2, [r0, #2]
	ldr	r0, .L_86350
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
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_862a0:
	.4byte	gUnk_3003C0C
.L_862a4:
	.4byte	0x40000D4
.L_862a8:
	.4byte	sUnk_86AE048
.L_862ac:
	.4byte	0x80000100
.L_862b0:
	.4byte	gCurrentPassage
.L_862b4:
	.4byte	sUnk_86B2648
.L_862b8:
	.4byte	0x5000160
.L_862bc:
	.4byte	0x80000010
.L_862c0:
	.4byte	sUnk_86A9E48
.L_862c4:
	.4byte	sUnk_86B2708
.L_862c8:
	.4byte	sUnk_86AE248
.L_862cc:
	.4byte	sUnk_86AA048
.L_862d0:
	.4byte	sUnk_86B1E48
.L_862d4:
	.4byte	sUnk_86B0E48
.L_862d8:
	.4byte	sUnk_86B1648
.L_862dc:
	.4byte	0x5000200
.L_862e0:
	.4byte	0x5000360
.L_862e4:
	.4byte	0x80000020
.L_862e8:
	.4byte	0x80001600
.L_862ec:
	.4byte	0x6010000
.L_862f0:
	.4byte	0x80002000
.L_862f4:
	.4byte	0x600C000
.L_862f8:
	.4byte	0x80000400
.L_862fc:
	.4byte	0x600D000
.L_86300:
	.4byte	0x600E000
.L_86304:
	.4byte	0x4000008
.L_86308:
	.4byte	0x5A01
.L_8630c:
	.4byte	0x5C02
.L_86310:
	.4byte	0x4000054
.L_86314:
	.4byte	gUnk_3004760
.L_86318:
	.4byte	gUnk_3003C4C
.L_8631c:
	.4byte	gUnk_3003C4E
.L_86320:
	.4byte	gUnk_3003C50
.L_86324:
	.4byte	gUnk_3003C52
.L_86328:
	.4byte	0x4000048
.L_8632c:
	.4byte	0x400004A
.L_86330:
	.4byte	0x1641
.L_86334:
	.4byte	0x808
.L_86338:
	.4byte	gUnk_3003C9C
.L_8633c:
	sub	r4, #58	@ 0x3a
	lsl	r0, r0, #12
.L_86340:
	.4byte	gUnk_3003C39
.L_86344:
	.4byte	gUnk_3004731
.L_86348:
	.4byte	gUnk_3004768
.L_8634c:
	.4byte	gUnk_3003C20
.L_86350:
	.4byte	0x4000012


thumb_func_start func_8086354
func_8086354:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_86374
	ldrb	r1, [r0, #0]
	mov	ip, r0
	cmp	r1, #0
	beq	.L_8636c
	cmp	r1, #5
	bne	.L_8637c
.L_8636c:
	ldr	r1, .L_86378
	mov	r0, #1
	b	.L_86380
	.align	2, 0
.L_86374:
	.4byte	gCurrentPassage
.L_86378:
	.4byte	gUnk_3003C4A
.L_8637c:
	ldr	r1, .L_863d4
	mov	r0, #0
.L_86380:
	strb	r0, [r1, #0]
	mov	r4, #0
	ldr	r0, .L_863d8
	mov	r8, r0
	ldr	r7, .L_863dc
	ldr	r1, .L_863e0
	mov	r9, r1
	ldr	r0, .L_863e4
	mov	sl, r0
	mov	r6, r8
	mov	r5, #0
	add	r3, r7, #0
.L_86398:
	lsl	r2, r4, #2
	mov	r0, ip
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r1, r0, #3
	add	r2, r2, r1
	add	r2, r2, r6
	ldrb	r2, [r2, #0]
	lsl	r0, r2, #31
	cmp	r0, #0
	beq	.L_863ee
	lsl	r0, r2, #30
	cmp	r0, #0
	bge	.L_863ee
	lsl	r0, r2, #29
	cmp	r0, #0
	bge	.L_863ee
	lsl	r0, r2, #28
	cmp	r0, #0
	bge	.L_863ee
	add	r0, r1, r6
	ldrb	r0, [r0, #16]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_863e8
	mov	r0, #2
	strb	r0, [r3, #4]
	b	.L_863f0
	.align	2, 0
.L_863d4:
	.4byte	gUnk_3003C4A
.L_863d8:
	.4byte	gCurrentCollection
.L_863dc:
	.4byte	gUnk_3004738
.L_863e0:
	.4byte	gUnk_3004730
.L_863e4:
	.4byte	gUnk_3003C08
.L_863e8:
	mov	r0, #1
	strb	r0, [r3, #4]
	b	.L_863f0
.L_863ee:
	strb	r5, [r3, #4]
.L_863f0:
	strh	r5, [r3, #0]
	strh	r5, [r3, #2]
	add	r3, #8
	add	r4, #1
	cmp	r4, #3
	ble	.L_86398
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldrb	r1, [r1, #16]
	lsl	r0, r1, #26
	lsr	r3, r0, #31
	cmp	r3, #0
	beq	.L_86416
	mov	r0, #3
	b	.L_8647a
.L_86416:
	lsl	r0, r1, #28
	cmp	r0, #0
	bge	.L_86442
	mov	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldrb	r2, [r1, #16]
	mov	r0, #9
	neg	r0, r0
	and	r0, r2
	strb	r0, [r1, #16]
	mov	r0, sl
	strb	r3, [r0, #0]
	bl	AutosaveDefeat
	b	.L_86484
.L_86442:
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_8645a
	ldrb	r0, [r7, #12]
	cmp	r0, #0
	beq	.L_8645a
	ldrb	r0, [r7, #20]
	cmp	r0, #0
	beq	.L_8645a
	ldrb	r0, [r7, #28]
	cmp	r0, #0
	bne	.L_86468
.L_8645a:
	ldr	r1, .L_86474
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_86478
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_86478
.L_86468:
	mov	r0, #2
	mov	r1, r9
	strb	r0, [r1, #0]
	mov	r0, #0
	b	.L_86480
	.align	2, 0
.L_86474:
	.4byte	gUnk_3003C4A
.L_86478:
	mov	r0, #0
.L_8647a:
	mov	r1, r9
	strb	r0, [r1, #0]
	mov	r0, #1
.L_86480:
	mov	r1, sl
	strb	r0, [r1, #0]
.L_86484:
	bl	func_8086064
	ldr	r1, .L_864a8
	ldr	r0, .L_864ac
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_864a8:
	.4byte	sUnk_863C5DC
.L_864ac:
	.4byte	gUnk_3004730


thumb_func_start func_80864B0
func_80864B0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_864d0
	ldrb	r1, [r0, #0]
	mov	ip, r0
	cmp	r1, #0
	beq	.L_864c8
	cmp	r1, #5
	bne	.L_864d8
.L_864c8:
	ldr	r1, .L_864d4
	mov	r0, #1
	b	.L_864dc
	.align	2, 0
.L_864d0:
	.4byte	gCurrentPassage
.L_864d4:
	.4byte	gUnk_3003C4A
.L_864d8:
	ldr	r1, .L_86524
	mov	r0, #0
.L_864dc:
	strb	r0, [r1, #0]
	mov	r4, #0
	ldr	r0, .L_86528
	mov	r9, r0
	ldr	r1, .L_8652c
	mov	sl, r1
	ldr	r3, .L_86530
	mov	r8, r3
	ldr	r6, .L_86534
	ldr	r7, .L_86538
	mov	r5, #0
	ldr	r3, .L_8653c
.L_864f4:
	lsl	r2, r4, #2
	mov	r0, ip
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r2, r2, r0
	add	r2, r2, r7
	ldrb	r2, [r2, #0]
	lsl	r0, r2, #31
	cmp	r0, #0
	beq	.L_86540
	lsl	r0, r2, #30
	cmp	r0, #0
	bge	.L_86540
	lsl	r0, r2, #29
	cmp	r0, #0
	bge	.L_86540
	lsl	r0, r2, #28
	cmp	r0, #0
	bge	.L_86540
	mov	r0, #1
	strb	r0, [r3, #4]
	b	.L_86542
.L_86524:
	.4byte	gUnk_3003C4A
.L_86528:
	.4byte	gUnk_300476A
.L_8652c:
	.4byte	sUnk_863C674
.L_86530:
	.4byte	gCurrentStageNumber
.L_86534:
	.4byte	gUnk_3004758
.L_86538:
	.4byte	gCurrentCollection
.L_8653c:
	.4byte	gUnk_3004738
.L_86540:
	strb	r5, [r3, #4]
.L_86542:
	strh	r5, [r3, #0]
	strh	r5, [r3, #2]
	add	r3, #8
	add	r4, #1
	cmp	r4, #3
	ble	.L_864f4
	mov	r2, #0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #2
	add	r0, r1, #0
	mov	r3, r9
	strh	r0, [r3, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_86594
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, sl
	ldr	r0, [r0, #0]
	ldr	r1, .L_86598
	strh	r0, [r1, #0]
	mov	r0, #0
	strh	r2, [r6, #0]
	strh	r2, [r6, #2]
	strb	r0, [r6, #4]
	ldr	r3, .L_8659c
	strb	r0, [r3, #0]
	bl	func_8086064
	ldr	r0, .L_865a0
	bl	m4aSongNumStart
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_86594:
	.4byte	gUnk_3003C4A
.L_86598:
	.4byte	gUnk_300476C
.L_8659c:
	.4byte	gUnk_3004730
.L_865a0:
	.4byte	0x1A9


thumb_func_start func_80865A4
func_80865A4:
	push	{lr}
	bl	func_807F6B4
	ldr	r3, .L_86614
	ldr	r1, .L_86618
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldr	r2, .L_8661c
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r3, #0]
	add	r3, #4
	ldr	r1, .L_86620
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldr	r2, .L_86624
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r3, #0]
	ldr	r2, .L_86628
	ldr	r1, .L_8662c
	ldrh	r1, [r1, #2]
	add	r1, r1, r0
	strh	r1, [r2, #0]
	ldr	r0, .L_86630
	strh	r1, [r0, #0]
	ldr	r3, .L_86634
	ldrb	r0, [r3, #0]
	mov	r2, #31
	and	r0, r2
	cmp	r0, #0
	bne	.L_865f6
	ldr	r1, .L_86638
	ldr	r0, .L_8663c
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_86640
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_865f6:
	ldrb	r0, [r3, #0]
	and	r0, r2
	cmp	r0, #16
	bne	.L_86610
	ldr	r1, .L_86638
	ldr	r0, .L_86644
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_86640
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_86610:
	pop	{r0}
	bx	r0
.L_86614:
	.4byte	0x4000040
.L_86618:
	.4byte	gUnk_3003C4C
.L_8661c:
	.4byte	gUnk_3003C4E
.L_86620:
	.4byte	gUnk_3003C50
.L_86624:
	.4byte	gUnk_3003C52
.L_86628:
	.4byte	0x4000016
.L_8662c:
	.4byte	gUnk_3003C20
.L_86630:
	.4byte	0x400001A
.L_86634:
	.4byte	gMainTimer
.L_86638:
	.4byte	0x40000D4
.L_8663c:
	.4byte	sUnk_86AE248
.L_86640:
	.4byte	0x80000200
.L_86644:
	.4byte	sUnk_86AE648


thumb_func_start func_8086648
func_8086648:
	push	{lr}
	ldr	r3, .L_8665c
	ldrb	r1, [r3, #0]
	cmp	r1, #1
	beq	.L_86694
	cmp	r1, #1
	bgt	.L_86660
	cmp	r1, #0
	beq	.L_8666a
	b	.L_86718
.L_8665c:
	.4byte	gUnk_3003C39
.L_86660:
	cmp	r1, #2
	beq	.L_866cc
	cmp	r1, #3
	beq	.L_866f0
	b	.L_86718
.L_8666a:
	ldr	r2, .L_8668c
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #30
	bls	.L_86718
	strh	r1, [r2, #0]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	ldr	r1, .L_86690
	mov	r0, #2
	str	r0, [r1, #0]
	b	.L_86718
	.align	2, 0
.L_8668c:
	.4byte	gUnk_3003C3A
.L_86690:
	.4byte	gUnk_3003C9C
.L_86694:
	ldr	r1, .L_866c4
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #70	@ 0x46
	bls	.L_86718
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	ldr	r1, .L_866c8
	mov	r0, #4
	str	r0, [r1, #0]
	mov	r0, #238	@ 0xee
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #10
	bl	VoiceSetPlay
	b	.L_86718
.L_866c4:
	.4byte	gUnk_3003C3A
.L_866c8:
	.4byte	gUnk_3003C9C
.L_866cc:
	ldr	r1, .L_866ec
	ldrh	r0, [r1, #0]
	sub	r0, #6
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bgt	.L_86718
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	b	.L_86718
.L_866ec:
	.4byte	gUnk_3004768
.L_866f0:
	ldr	r1, .L_86710
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #30
	bls	.L_86718
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r0, [r3, #0]
	ldr	r1, .L_86714
	mov	r0, #1
	str	r0, [r1, #0]
	b	.L_8671a
	.align	2, 0
.L_86710:
	.4byte	gUnk_3003C3A
.L_86714:
	.4byte	gUnk_3003C9C
.L_86718:
	mov	r0, #0
.L_8671a:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8086720
func_8086720:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #40	@ 0x28
	mov	r0, #0
	mov	sl, r0
	ldr	r0, .L_869ac
	ldrb	r0, [r0, #0]
	mov	r9, r0
	lsl	r1, r0, #3
	ldr	r0, .L_869b0
	add	r7, r1, r0
	ldr	r0, .L_869b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_86746
	b	.L_86c74
.L_86746:
	ldr	r0, .L_869b8
	ldrb	r1, [r0, #4]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_8681e
	ldr	r2, .L_869bc
	ldr	r0, .L_869c0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_869c4
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r1, [r4, #0]
	add	r1, #1
	strh	r1, [r4, #0]
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8679a
	mov	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8679a
	mov	r0, sl
	strh	r0, [r4, #0]
	strh	r0, [r4, #2]
	mov	r0, #0
	strb	r0, [r4, #4]
.L_8679a:
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	beq	.L_8681e
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r1, r9
	cmp	r1, #128	@ 0x80
	ble	.L_867b8
	bl	.L_87076
.L_867b8:
	cmp	sl, r9
	bge	.L_8681e
	ldr	r1, .L_869b0
	ldr	r6, .L_869c8
	ldr	r2, .L_869cc
	mov	r8, r2
	mov	r5, #13
	neg	r5, r5
	mov	r2, sl
	lsl	r0, r2, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	sl, r0
.L_867d4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r6
	ldrh	r2, [r4, #2]
	mov	r0, r8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r1, #1
	neg	r1, r1
	add	sl, r1
	mov	r2, sl
	cmp	r2, #0
	bne	.L_867d4
	mov	sl, r9
.L_8681e:
	ldr	r3, .L_869c4
	ldrb	r0, [r3, #0]
	mov	r1, #4
	str	r1, [sp, #12]
	cmp	r0, #0
	beq	.L_8682e
	mov	r2, #1
	str	r2, [sp, #12]
.L_8682e:
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r0, [sp, #12]
	cmp	r3, r0
	blt	.L_8683a
	b	.L_86b78
.L_8683a:
	mov	r1, #0
	str	r1, [sp, #32]
	mov	r2, #0
	str	r2, [sp, #36]	@ 0x24
.L_86842:
	ldr	r0, .L_869c0
	ldrb	r0, [r0, #0]
	ldr	r3, [sp, #8]
	cmp	r0, r3
	beq	.L_8684e
	b	.L_869fa
.L_8684e:
	ldr	r0, .L_869d0
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #6
	bls	.L_8685a
	b	.L_869e8
.L_8685a:
	cmp	r1, #4
	bhi	.L_86860
	b	.L_869e8
.L_86860:
	ldr	r0, .L_869d4
	ldr	r2, [sp, #36]	@ 0x24
	add	r1, r2, r0
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_86910
	add	r1, r0, #0
	sub	r1, #1
	lsl	r1, r1, #4
	ldr	r3, [sp, #32]
	add	r1, r3, r1
	ldr	r0, .L_869c4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #5
	add	r1, r1, r0
	ldr	r0, .L_869d8
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r1, r9
	cmp	r1, #128	@ 0x80
	ble	.L_86894
	b	.L_87076
.L_86894:
	cmp	sl, r9
	bge	.L_86910
	mov	r2, #15
	neg	r2, r2
	mov	ip, r2
	ldr	r0, .L_869dc
	mov	r8, r0
	mov	r1, sl
	lsl	r0, r1, #3
	ldr	r2, .L_869b0
	add	r4, r0, r2
	ldr	r6, .L_869c8
	mov	r0, #13
	neg	r0, r0
	add	r5, r0, #0
	mov	r2, r9
	sub	r2, r2, r1
	mov	sl, r2
.L_868b8:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #104	@ 0x68
	and	r1, r6
	ldrh	r2, [r4, #2]
	ldr	r0, .L_869cc
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	and	r0, r5
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r2, #1
	neg	r2, r2
	add	sl, r2
	mov	r0, sl
	cmp	r0, #0
	bne	.L_868b8
	mov	sl, r9
.L_86910:
	ldr	r5, .L_869e0
	add	r0, r5, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	ldr	r3, .L_869e4
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, #0
	ldrsh	r4, [r5, r2]
	ldr	r3, .L_869e4
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r6, sp
	add	r6, #2
	strh	r0, [r6, #0]
	ldrh	r4, [r5, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldr	r2, .L_869e4
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r4, sp, #4
	strh	r0, [r4, #0]
	ldr	r1, .L_869e4
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, sp
	add	r1, #6
	strh	r0, [r1, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	ldr	r3, .L_869b0
	strh	r1, [r3, #6]
	ldrh	r1, [r6, #0]
	strh	r1, [r3, #14]
	ldrh	r1, [r4, #0]
	strh	r1, [r3, #22]
	strh	r0, [r3, #30]
	b	.L_86b5e
.L_869ac:
	.4byte	gOamSlotsUsed
.L_869b0:
	.4byte	gOamBuffer
.L_869b4:
	.4byte	gUnk_3003C56
.L_869b8:
	.4byte	gUnk_3004758
.L_869bc:
	.4byte	sUnk_863C654
.L_869c0:
	.4byte	gCurrentStageNumber
.L_869c4:
	.4byte	gUnk_3003C4A
.L_869c8:
	.4byte	0x1FF
.L_869cc:
	.4byte	0xFFFFFE00
.L_869d0:
	.4byte	gUnk_3004731
.L_869d4:
	.4byte	gUnk_3004738
.L_869d8:
	.4byte	sUnk_863C5F4
.L_869dc:
	.4byte	gUnk_300476C
.L_869e0:
	.4byte	sSinCosTable
.L_869e4:
	.4byte	gUnk_300476A
.L_869e8:
	ldr	r1, .L_86c48
	ldrb	r0, [r1, #0]
	ldr	r3, [sp, #8]
	cmp	r0, r3
	bne	.L_869fa
	ldrb	r0, [r2, #0]
	cmp	r0, #6
	bhi	.L_869fa
	b	.L_86b5e
.L_869fa:
	ldr	r0, .L_86c4c
	ldr	r1, [sp, #36]	@ 0x24
	add	r2, r1, r0
	ldrb	r4, [r2, #4]
	mov	ip, r0
	cmp	r4, #1
	bne	.L_86ac6
	ldr	r1, .L_86c50
	ldr	r0, .L_86c54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	ldr	r3, [sp, #32]
	add	r0, r3, r0
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_86a46
	strh	r4, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_86a46
	strh	r0, [r2, #0]
	strh	r0, [r2, #2]
.L_86a46:
	ldr	r0, [sp, #36]	@ 0x24
	add	r0, ip
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, r9
	cmp	r0, #128	@ 0x80
	ble	.L_86a60
	b	.L_87076
.L_86a60:
	cmp	sl, r9
	bge	.L_86ac6
	ldr	r6, .L_86c58
	ldr	r1, .L_86c5c
	mov	r8, r1
	mov	r5, #13
	neg	r5, r5
	mov	r2, sl
	lsl	r0, r2, #3
	ldr	r1, .L_86c60
	add	r4, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	sl, r0
.L_86a7c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r6
	ldrh	r2, [r4, #2]
	mov	r0, r8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r1, #1
	neg	r1, r1
	add	sl, r1
	mov	r2, sl
	cmp	r2, #0
	bne	.L_86a7c
	mov	sl, r9
.L_86ac6:
	ldr	r1, [sp, #36]	@ 0x24
	add	r1, ip
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_86b5e
	add	r1, r0, #0
	sub	r1, #1
	lsl	r1, r1, #4
	ldr	r3, [sp, #32]
	add	r1, r3, r1
	ldr	r0, .L_86c54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #5
	add	r1, r1, r0
	ldr	r0, .L_86c64
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r1, r9
	cmp	r1, #128	@ 0x80
	ble	.L_86af8
	b	.L_87076
.L_86af8:
	cmp	sl, r9
	bge	.L_86b5e
	ldr	r6, .L_86c58
	ldr	r2, .L_86c5c
	mov	r8, r2
	mov	r5, #13
	neg	r5, r5
	mov	r1, sl
	lsl	r0, r1, #3
	ldr	r2, .L_86c60
	add	r4, r0, r2
	mov	r0, r9
	sub	r0, r0, r1
	mov	sl, r0
.L_86b14:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r6
	ldrh	r2, [r4, #2]
	mov	r0, r8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r1, #1
	neg	r1, r1
	add	sl, r1
	mov	r2, sl
	cmp	r2, #0
	bne	.L_86b14
	mov	sl, r9
.L_86b5e:
	ldr	r3, [sp, #32]
	add	r3, #4
	str	r3, [sp, #32]
	ldr	r0, [sp, #36]	@ 0x24
	add	r0, #8
	str	r0, [sp, #36]	@ 0x24
	ldr	r1, [sp, #8]
	add	r1, #1
	str	r1, [sp, #8]
	ldr	r2, [sp, #12]
	cmp	r1, r2
	bge	.L_86b78
	b	.L_86842
.L_86b78:
	ldr	r1, .L_86c68
	ldr	r0, .L_86c54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r0, .L_86c6c
	ldrb	r1, [r0, #4]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_86bc2
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_86bc2
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
	bne	.L_86bc2
	strh	r0, [r2, #0]
	strh	r0, [r2, #2]
	mov	r0, #0
	strb	r0, [r2, #4]
.L_86bc2:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, r9
	cmp	r0, #128	@ 0x80
	ble	.L_86bd8
	b	.L_87076
.L_86bd8:
	cmp	sl, r9
	blt	.L_86bde
	b	.L_87070
.L_86bde:
	ldr	r1, .L_86c60
	ldr	r6, .L_86c58
	ldr	r2, .L_86c5c
	mov	r8, r2
	mov	r5, #13
	neg	r5, r5
	mov	r2, sl
	lsl	r0, r2, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	sl, r0
.L_86bf6:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldr	r0, .L_86c70
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r6
	ldrh	r2, [r4, #2]
	mov	r0, r8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r1, #1
	neg	r1, r1
	add	sl, r1
	mov	r2, sl
	cmp	r2, #0
	bne	.L_86bf6
	b	.L_87070
	.align	2, 0
.L_86c48:
	.4byte	gCurrentStageNumber
.L_86c4c:
	.4byte	gUnk_3004738
.L_86c50:
	.4byte	sUnk_863C634
.L_86c54:
	.4byte	gUnk_3003C4A
.L_86c58:
	.4byte	0x1FF
.L_86c5c:
	.4byte	0xFFFFFE00
.L_86c60:
	.4byte	gOamBuffer
.L_86c64:
	.4byte	sUnk_863C5F4
.L_86c68:
	.4byte	sUnk_863C5EC
.L_86c6c:
	.4byte	gUnk_3004760
.L_86c70:
	.4byte	gUnk_3004768
.L_86c74:
	ldr	r0, .L_87010
	ldrb	r0, [r0, #0]
	ldr	r6, .L_87014
	ldr	r2, .L_87018
	cmp	r0, #3
	bls	.L_86cc0
	ldr	r0, .L_8701c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_86cc0
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
	ldrh	r1, [r6, #2]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_86cc0
	mov	r0, #1
	strh	r0, [r6, #0]
	ldrh	r0, [r6, #2]
	add	r0, #1
	strh	r0, [r6, #2]
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_86cc0
	mov	r3, sl
	strh	r3, [r6, #0]
	strh	r3, [r6, #2]
.L_86cc0:
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, r9
	cmp	r0, #128	@ 0x80
	ble	.L_86cd6
	b	.L_87076
.L_86cd6:
	ldr	r1, .L_87020
	mov	r8, r1
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #16]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #20]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #24]
	cmp	sl, r9
	bge	.L_86d6a
	ldr	r1, .L_87024
	add	r5, r6, #0
	mov	r2, sl
	lsl	r0, r2, #3
	add	r4, r0, r1
	ldr	r0, .L_87028
	mov	ip, r0
	mov	r1, r9
	sub	r1, r1, r2
	mov	sl, r1
.L_86d04:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r0, [r5, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	sub	r1, #32
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8702c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	sl, r0
	mov	r1, sl
	cmp	r1, #0
	bne	.L_86d04
	mov	sl, r9
.L_86d6a:
	mov	r0, r8
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r3, r8
	mov	r0, #0
	ldrsh	r4, [r3, r0]
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrh	r4, [r2, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #20]
	strh	r0, [r3, #0]
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r1, [sp, #24]
	strh	r0, [r1, #0]
	ldr	r2, .L_87024
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #16]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r3, [sp, #20]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
	ldr	r0, .L_8701c
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_86e02
	b	.L_87070
.L_86e02:
	ldr	r0, .L_87030
	ldrb	r1, [r0, #0]
	mov	r3, #4
	str	r3, [sp, #12]
	cmp	r1, #0
	beq	.L_86e12
	mov	r0, #1
	str	r0, [sp, #12]
.L_86e12:
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r1, r3
	blt	.L_86e1e
	b	.L_86fa0
.L_86e1e:
	mov	r0, #0
	str	r0, [sp, #28]
	ldr	r5, .L_87034
.L_86e24:
	ldrb	r2, [r5, #4]
	cmp	r2, #1
	bne	.L_86eee
	ldr	r1, .L_87038
	ldr	r3, .L_87030
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #4
	ldr	r3, [sp, #28]
	add	r0, r3, r0
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r1, [r5, #0]
	add	r1, #1
	strh	r1, [r5, #0]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_86e68
	strh	r2, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_86e68
	strh	r0, [r5, #0]
	strh	r0, [r5, #2]
.L_86e68:
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, r9
	cmp	r0, #128	@ 0x80
	ble	.L_86e7e
	b	.L_87076
.L_86e7e:
	cmp	sl, r9
	bge	.L_86eee
	ldr	r1, .L_87028
	mov	ip, r1
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	ldr	r6, .L_8703c
	mov	r1, sl
	lsl	r0, r1, #3
	ldr	r2, .L_87024
	add	r4, r0, r2
	mov	r0, r9
	sub	r0, r0, r1
	mov	sl, r0
.L_86e9c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r0, [r6, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	sub	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8702c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	sl, r0
	mov	r1, sl
	cmp	r1, #0
	bne	.L_86e9c
	mov	sl, r9
.L_86eee:
	ldrb	r0, [r5, #4]
	cmp	r0, #0
	beq	.L_86f8a
	sub	r0, #1
	lsl	r0, r0, #4
	ldr	r2, [sp, #28]
	add	r0, r2, r0
	ldr	r3, .L_87030
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #5
	add	r0, r0, r1
	ldr	r1, .L_87040
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r2, r9
	cmp	r2, #128	@ 0x80
	ble	.L_86f1a
	b	.L_87076
.L_86f1a:
	cmp	sl, r9
	bge	.L_86f8a
	ldr	r0, .L_87028
	mov	ip, r0
	mov	r1, #13
	neg	r1, r1
	mov	r8, r1
	ldr	r6, .L_8703c
	mov	r2, sl
	lsl	r0, r2, #3
	ldr	r1, .L_87024
	add	r4, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	sl, r0
.L_86f38:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r0, [r6, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	sub	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8702c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	sl, r0
	mov	r1, sl
	cmp	r1, #0
	bne	.L_86f38
	mov	sl, r9
.L_86f8a:
	ldr	r2, [sp, #28]
	add	r2, #4
	str	r2, [sp, #28]
	add	r5, #8
	ldr	r3, [sp, #8]
	add	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [sp, #12]
	cmp	r3, r0
	bge	.L_86fa0
	b	.L_86e24
.L_86fa0:
	ldr	r1, .L_87044
	ldr	r2, .L_87030
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r0, .L_87048
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, r9
	cmp	r0, #128	@ 0x80
	bgt	.L_87076
	cmp	sl, r9
	bge	.L_87070
	ldr	r1, .L_87024
	ldr	r2, .L_87028
	mov	r8, r2
	ldr	r0, .L_8702c
	mov	ip, r0
	mov	r6, #13
	neg	r6, r6
	ldr	r5, .L_8703c
	mov	r2, sl
	lsl	r0, r2, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	sl, r0
.L_86fe2:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	b	.L_8704c
	.align	2, 0
.L_87010:
	.4byte	gUnk_3004731
.L_87014:
	.4byte	gUnk_3003C0C
.L_87018:
	.4byte	sUnk_8642464
.L_8701c:
	.4byte	gUnk_3004730
.L_87020:
	.4byte	sSinCosTable
.L_87024:
	.4byte	gOamBuffer
.L_87028:
	.4byte	0x1FF
.L_8702c:
	.4byte	0xFFFFFE00
.L_87030:
	.4byte	gUnk_3003C4A
.L_87034:
	.4byte	gUnk_3004738
.L_87038:
	.4byte	sUnk_863C634
.L_8703c:
	.4byte	gUnk_3004768
.L_87040:
	.4byte	sUnk_863C5F4
.L_87044:
	.4byte	sUnk_863C5EC
.L_87048:
	.4byte	gUnk_3004760
.L_8704c:
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	mov	r0, #1
	neg	r0, r0
	add	sl, r0
	mov	r1, sl
	cmp	r1, #0
	bne	.L_86fe2
.L_87070:
	ldr	r0, .L_87088
	mov	r2, r9
	strb	r2, [r0, #0]
.L_87076:
	add	sp, #40	@ 0x28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_87088:
	.4byte	gOamSlotsUsed
