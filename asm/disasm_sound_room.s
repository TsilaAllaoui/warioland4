.include "macros.s.inc"


thumb_func_start func_808708C
func_808708C:
	push	{r4, lr}
	ldr	r4, .L_870a0
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_870b0
	cmp	r0, #1
	bgt	.L_870a4
	cmp	r0, #0
	beq	.L_870aa
	b	.L_870cc
.L_870a0:
	.4byte	gUnk_3003C39
.L_870a4:
	cmp	r0, #2
	beq	.L_870c0
	b	.L_870cc
.L_870aa:
	bl	func_8089DCC
	b	.L_870b4
.L_870b0:
	bl	func_8087594
.L_870b4:
	cmp	r0, #0
	beq	.L_870cc
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_870cc
.L_870c0:
	bl	func_8089E14
	cmp	r0, #0
	beq	.L_870cc
	mov	r0, #1
	b	.L_870ce
.L_870cc:
	mov	r0, #0
.L_870ce:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_80870D4
func_80870D4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	bl	InitializeVideoMemory
	ldr	r1, .L_872d8
	ldr	r0, .L_872dc
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_872e0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_87104
.L_870fc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_870fc
.L_87104:
	ldr	r1, .L_872d8
	ldr	r0, .L_872dc
	str	r0, [r1, #0]
	ldr	r0, .L_872e4
	str	r0, [r1, #4]
	ldr	r0, .L_872e0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_872e8
	ldr	r4, .L_872ec
	ldr	r5, .L_872f0
	ldr	r6, .L_872f4
	ldr	r7, .L_872f8
	cmp	r0, #0
	bge	.L_87130
.L_87128:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_87128
.L_87130:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_872d8
	str	r3, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_872fc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8715a
.L_87152:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_87152
.L_8715a:
	ldr	r1, .L_872d8
	str	r4, [r1, #0]
	ldr	r0, .L_87300
	str	r0, [r1, #4]
	ldr	r0, .L_87304
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8717a
.L_87172:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_87172
.L_8717a:
	ldr	r1, .L_872d8
	str	r5, [r1, #0]
	ldr	r0, .L_87308
	str	r0, [r1, #4]
	ldr	r0, .L_8730c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8719a
.L_87192:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_87192
.L_8719a:
	ldr	r1, .L_872d8
	str	r6, [r1, #0]
	ldr	r0, .L_87310
	str	r0, [r1, #4]
	ldr	r0, .L_8730c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_871ba
.L_871b2:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_871b2
.L_871ba:
	ldr	r1, .L_872d8
	str	r7, [r1, #0]
	ldr	r0, .L_87314
	str	r0, [r1, #4]
	ldr	r0, .L_8730c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_87318
	add	r0, r4, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8731c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_87320
	mov	r2, #0
	strh	r2, [r0, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #19
	mov	r4, #184	@ 0xb8
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r3, #0]
	ldr	r0, .L_87324
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_87328
	strh	r1, [r0, #0]
	ldr	r0, .L_8732c
	strh	r2, [r0, #0]
	ldr	r1, .L_87330
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #6
	add	r1, r4, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_87334
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_87338
	strh	r2, [r0, #0]
	ldr	r0, .L_8733c
	strh	r2, [r0, #0]
	ldr	r0, .L_87340
	strb	r2, [r0, #0]
	ldr	r0, .L_87344
	strh	r2, [r0, #0]
	ldr	r0, .L_87348
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
	ldr	r0, .L_8734c
	strh	r2, [r0, #0]
	ldr	r0, .L_87350
	strb	r2, [r0, #0]
	ldr	r0, .L_87354
	strb	r2, [r0, #0]
	ldr	r0, .L_87358
	strb	r2, [r0, #0]
	ldr	r1, .L_8735c
	mov	r3, #0
	mov	r0, #20
	strh	r0, [r1, #8]
	mov	r0, #16
	strh	r0, [r1, #10]
	strh	r3, [r1, #0]
	strh	r3, [r1, #2]
	ldr	r0, .L_87360
	strh	r3, [r0, #0]
	strh	r3, [r0, #2]
	ldr	r0, .L_87364
	strb	r2, [r0, #0]
	ldr	r0, .L_87368
	strb	r2, [r0, #0]
	mov	r4, #0
	mov	r1, #0
	ldr	r0, .L_8736c
	mov	ip, r0
	ldr	r2, .L_87370
	mov	r8, r2
	ldr	r0, .L_87374
	mov	r9, r0
	ldr	r7, .L_87378
	ldr	r6, .L_8737c
	ldr	r5, .L_87380
.L_8728a:
	lsl	r0, r1, #4
	add	r3, r1, #1
	add	r1, r0, r6
	mov	r2, #3
.L_87292:
	ldr	r0, [r1, #0]
	cmp	r0, r5
	ble	.L_8729a
	add	r4, #1
.L_8729a:
	add	r1, #4
	sub	r2, #1
	cmp	r2, #0
	bge	.L_87292
	add	r1, r3, #0
	cmp	r1, #5
	ble	.L_8728a
	cmp	r4, #17
	ble	.L_872b2
	ldr	r1, .L_87368
	mov	r0, #1
	strb	r0, [r1, #0]
.L_872b2:
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r2, r8
	strb	r0, [r2, #0]
	mov	r4, r9
	strb	r0, [r4, #0]
	mov	r0, #0
	strh	r0, [r7, #0]
	strh	r0, [r7, #2]
	ldr	r0, .L_87384
	bl	m4aSongNumStart
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_872d8:
	.4byte	0x40000D4
.L_872dc:
	.4byte	sUnk_86B4088
.L_872e0:
	.4byte	0x80000100
.L_872e4:
	.4byte	0x5000200
.L_872e8:
	.4byte	sUnk_86B8A88
.L_872ec:
	.4byte	sUnk_86B4288
.L_872f0:
	.4byte	sUnk_86B2888
.L_872f4:
	.4byte	sUnk_86B3088
.L_872f8:
	.4byte	sUnk_86B3888
.L_872fc:
	.4byte	0x80003400
.L_87300:
	.4byte	0x6011800
.L_87304:
	.4byte	0x80002400
.L_87308:
	.4byte	0x600C000
.L_8730c:
	.4byte	0x80000400
.L_87310:
	.4byte	0x600D000
.L_87314:
	b	.L_87318
	lsl	r0, r0, #24
.L_87318:
	sub	r1, r0, r0
	.align	2, 0
.L_8731c:
	.4byte	0x1C02
.L_87320:
	.4byte	0x4000054
.L_87324:
	.4byte	gUnk_3003C4C
.L_87328:
	.4byte	gUnk_3003C4E
.L_8732c:
	.4byte	gUnk_3003C50
.L_87330:
	.4byte	gUnk_3003C52
.L_87334:
	.4byte	0x4000048
.L_87338:
	.4byte	0x400004A
.L_8733c:
	.4byte	gUnk_3003C3A
.L_87340:
	.4byte	gUnk_3003C39
.L_87344:
	.4byte	gUnk_3004A30
.L_87348:
	.4byte	0x4000012
.L_8734c:
	.4byte	gUnk_3004770
.L_87350:
	.4byte	gUnk_3004772
.L_87354:
	.4byte	gUnk_3004773
.L_87358:
	.4byte	gUnk_3004774
.L_8735c:
	.4byte	gUnk_3003C0C
.L_87360:
	.4byte	gUnk_3004778
.L_87364:
	.4byte	gUnk_3004780
.L_87368:
	.4byte	gUnk_3004781
.L_8736c:
	.4byte	gUnk_3004782
.L_87370:
	.4byte	gUnk_3004783
.L_87374:
	.4byte	gUnk_3004784
.L_87378:
	.4byte	gUnk_300477C
.L_8737c:
	.4byte	gHighScoreTable
.L_87380:
	.4byte	0x3E7
.L_87384:
	.4byte	0x26A


thumb_func_start func_8087388
func_8087388:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_873bc
	ldr	r0, .L_873c0
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_873c4
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	add	r2, #4
	ldr	r0, .L_873c8
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_873cc
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_873d0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_87400
	cmp	r0, #2
	bgt	.L_873d4
	cmp	r0, #1
	beq	.L_873dc
	b	.L_87520
.L_873bc:
	.4byte	0x4000040
.L_873c0:
	.4byte	gUnk_3003C4C
.L_873c4:
	.4byte	gUnk_3003C4E
.L_873c8:
	.4byte	gUnk_3003C50
.L_873cc:
	.4byte	gUnk_3003C52
.L_873d0:
	.4byte	gUnk_3004772
.L_873d4:
	cmp	r0, #4
	bne	.L_873da
	b	.L_87500
.L_873da:
	b	.L_87520
.L_873dc:
	ldr	r0, .L_873ec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_873f0
	cmp	r0, #1
	beq	.L_873f8
	b	.L_87582
	.align	2, 0
.L_873ec:
	.4byte	gLanguage
.L_873f0:
	ldr	r0, .L_873f4
	b	.L_8754c
.L_873f4:
	.4byte	sUnk_86D3226
.L_873f8:
	ldr	r0, .L_873fc
	b	.L_8754c
.L_873fc:
	.4byte	sUnk_86D3108
.L_87400:
	ldr	r0, .L_8743c
	ldrb	r2, [r0, #0]
	mov	r5, #1
	ldr	r7, .L_87440
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	add	r6, r0, #0
	ldr	r4, .L_87444
	ldr	r3, .L_87448
.L_87412:
	ldrh	r1, [r4, #0]
	add	r0, r7, #0
	and	r0, r1
	add	r0, r0, r6
	strh	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r0, r7, #0
	and	r0, r1
	add	r0, r0, r6
	strh	r0, [r3, #0]
	add	r4, #2
	add	r3, #2
	add	r5, #1
	cmp	r5, #26
	ble	.L_87412
	cmp	r2, #0
	bne	.L_87454
	ldr	r0, .L_8744c
	strh	r2, [r0, #0]
	ldr	r0, .L_87450
	b	.L_8748c
.L_8743c:
	.4byte	gMPlayMemAccArea
.L_87440:
	.4byte	0xFFF
.L_87444:
	.4byte	0x600C444
.L_87448:
	.4byte	0x600C484
.L_8744c:
	.4byte	gUnk_3004A30
.L_87450:
	.4byte	sUnk_86D3108
.L_87454:
	cmp	r2, #100	@ 0x64
	ble	.L_8749c
	ldr	r0, .L_87470
	mov	r3, #250	@ 0xfa
	lsl	r3, r3, #2
	add	r1, r3, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_87474
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87478
	cmp	r0, #1
	beq	.L_87480
	b	.L_874c4
.L_87470:
	.4byte	gUnk_3004A30
.L_87474:
	.4byte	gLanguage
.L_87478:
	ldr	r1, .L_8747c
	b	.L_87482
.L_8747c:
	.4byte	sUnk_863D948
.L_87480:
	ldr	r1, .L_87498
.L_87482:
	add	r0, r2, #0
	sub	r0, #101	@ 0x65
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
.L_8748c:
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_874c4
.L_87498:
	.4byte	sUnk_863D920
.L_8749c:
	cmp	r2, #0
	ble	.L_874c4
	lsl	r2, r2, #1
	ldr	r5, .L_874f0
	add	r4, r2, r5
	ldrh	r3, [r4, #0]
	ldr	r1, .L_874f4
	add	r0, r1, #0
	and	r0, r3
	mov	r5, #240	@ 0xf0
	lsl	r5, r5, #8
	add	r3, r5, #0
	add	r0, r0, r3
	strh	r0, [r4, #0]
	ldr	r0, .L_874f8
	add	r2, r2, r0
	ldrh	r0, [r2, #0]
	and	r1, r0
	add	r1, r1, r3
	strh	r1, [r2, #0]
.L_874c4:
	ldr	r0, .L_874fc
	ldrh	r0, [r0, #0]
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #1
.L_874cc:
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_87582
	bl	MinigameRandom
	add	r1, r0, #0
.L_874dc:
	cmp	r1, #0
	bge	.L_874e2
	add	r0, #15
.L_874e2:
	asr	r0, r0, #4
	lsl	r0, r0, #4
	sub	r0, r1, r0
	bl	func_8087D1C
	b	.L_87582
	.align	2, 0
.L_874f0:
	.4byte	0x600C442
.L_874f4:
	.4byte	0xFFF
.L_874f8:
	.4byte	0x600C482
.L_874fc:
	.4byte	gUnk_3003C3A
.L_87500:
	ldr	r0, .L_87530
	ldrh	r0, [r0, #0]
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #2
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r1, r0, #16
.L_87510:
	cmp	r1, #0
	beq	.L_8751c
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #1
	cmp	r1, r0
	bne	.L_87520
.L_8751c:
	bl	func_80885B4
.L_87520:
	ldr	r0, .L_87534
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87538
	cmp	r0, #1
	beq	.L_87564
	b	.L_87582
	.align	2, 0
.L_87530:
	.4byte	gUnk_3003C3A
.L_87534:
	.4byte	gLanguage
.L_87538:
	ldr	r2, .L_87558
	ldr	r0, .L_8755c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_87560
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
.L_8754c:
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_87582
.L_87558:
	.4byte	sUnk_863D8E0
.L_8755c:
	.4byte	gUnk_3004773
.L_87560:
	.4byte	gUnk_3004774
.L_87564:
	ldr	r2, .L_87588
	ldr	r0, .L_8758c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_87590
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_87582:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_87588:
	.4byte	sUnk_863D8A0
.L_8758c:
	.4byte	gUnk_3004773
.L_87590:
	.4byte	gUnk_3004774


thumb_func_start func_8087594
func_8087594:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r0, .L_875b0
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_875a4
	b	.L_87a1e
.L_875a4:
	lsl	r0, r0, #2
	ldr	r1, .L_875b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_875b0:
	.4byte	gUnk_3004772
.L_875b4:
	.4byte	.L_875b8
.L_875b8:
	.4byte	.L_875cc
	.4byte	.L_877ac
	.4byte	.L_878d4
	.4byte	.L_876a8
	.4byte	.L_8773c
.L_875cc:
	ldr	r3, .L_87600
	mov	r2, #0
	strh	r2, [r3, #0]
	ldr	r0, .L_87604
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87618
	ldr	r0, .L_87608
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_87614
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_8760c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_87610
	mov	r0, #60	@ 0x3c
	strh	r0, [r1, #8]
	mov	r0, #16
	strh	r0, [r1, #10]
	b	.L_87664
.L_87600:
	.4byte	gUnk_3004A30
.L_87604:
	.4byte	gUnk_3004781
.L_87608:
	.4byte	gButtonsPressed
.L_8760c:
	.4byte	gUnk_3004772
.L_87610:
	.4byte	gUnk_3003C0C
.L_87614:
	mov	r0, #128	@ 0x80
	b	.L_8761e
.L_87618:
	ldr	r0, .L_87684
	ldrh	r1, [r0, #0]
	mov	r0, #144	@ 0x90
.L_8761e:
	and	r0, r1
	cmp	r0, #0
	beq	.L_87664
	bl	func_8087A70
	cmp	r0, #0
	beq	.L_87664
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_87688
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r5, .L_8768c
	ldr	r2, .L_87690
	ldr	r4, .L_87694
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldr	r3, .L_87698
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	strh	r0, [r5, #8]
	ldr	r2, .L_8769c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	strh	r0, [r5, #10]
.L_87664:
	ldr	r0, .L_876a0
	ldrh	r2, [r0, #0]
	mov	r1, #211	@ 0xd3
	lsl	r1, r1, #2
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, r1
	bne	.L_8767a
	ldr	r1, .L_876a4
	mov	r0, #1
	strb	r0, [r1, #0]
.L_8767a:
	ldr	r0, .L_87684
	ldrh	r1, [r0, #0]
	mov	r0, #3
	b	.L_878be
	.align	2, 0
.L_87684:
	.4byte	gButtonsPressed
.L_87688:
	.4byte	gUnk_3004772
.L_8768c:
	.4byte	gUnk_3003C0C
.L_87690:
	.4byte	sUnk_863C694
.L_87694:
	.4byte	gUnk_3004773
.L_87698:
	.4byte	gUnk_3004774
.L_8769c:
	.4byte	sUnk_863C6D4
.L_876a0:
	.4byte	gButtonsHeld
.L_876a4:
	.4byte	gUnk_3004781
.L_876a8:
	ldr	r1, .L_87718
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_8087ACC
	ldr	r0, .L_8771c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_876c4
	b	.L_878bc
.L_876c4:
	ldr	r1, .L_87720
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_87724
	mov	r8, r0
	ldr	r6, .L_87728
	ldrb	r1, [r6, #0]
	lsl	r1, r1, #2
	ldr	r5, .L_8772c
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r8
	ldr	r4, [r1, #0]
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_87730
	add	r4, #1
	lsl	r4, r4, #2
	add	r4, r4, r0
	ldrh	r0, [r4, #0]
	bl	m4aSongNumStart
	ldr	r1, .L_87734
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_87738
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r8
	ldr	r0, [r0, #0]
	bl	func_8087D1C
	b	.L_87a1e
.L_87718:
	.4byte	gUnk_3004A30
.L_8771c:
	.4byte	gButtonsPressed
.L_87720:
	.4byte	gUnk_3003C3A
.L_87724:
	.4byte	sUnk_863C714
.L_87728:
	.4byte	gUnk_3004773
.L_8772c:
	.4byte	gUnk_3004774
.L_87730:
	.4byte	sUnk_863D85C
.L_87734:
	.4byte	gUnk_3004772
.L_87738:
	.4byte	gUnk_3004778
.L_8773c:
	ldr	r1, .L_8778c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_87790
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r5, .L_87794
	ldrh	r0, [r5, #0]
	add	r0, #4
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #0]
	ldr	r0, .L_87798
	ldrh	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	ldr	r1, .L_8779c
	cmp	r0, #0
	bne	.L_87770
	ldrb	r0, [r1, #0]
	cmp	r0, #127	@ 0x7f
	beq	.L_87770
	b	.L_87a1e
.L_87770:
	mov	r4, #0
	strb	r4, [r1, #0]
	ldr	r0, .L_877a0
	bl	m4aSongNumStart
	ldr	r0, .L_877a4
	bl	m4aSongNumStart
	ldr	r1, .L_877a8
	mov	r0, #3
	strb	r0, [r1, #0]
	strh	r4, [r5, #0]
	b	.L_87a1e
	.align	2, 0
.L_8778c:
	.4byte	gUnk_3003C3A
.L_87790:
	.4byte	gUnk_3004A30
.L_87794:
	.4byte	gUnk_3004770
.L_87798:
	.4byte	gButtonsPressed
.L_8779c:
	.4byte	gMPlayMemAccArea
.L_877a0:
	.4byte	0x26A
.L_877a4:
	.4byte	0x121
.L_877a8:
	.4byte	gUnk_3004772
.L_877ac:
	ldr	r2, .L_877e0
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_877e4
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_877f0
	mov	r4, #0
	strh	r4, [r2, #0]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_877e8
	strb	r4, [r0, #0]
	ldr	r1, .L_877ec
	mov	r0, #20
	strh	r0, [r1, #8]
	mov	r0, #16
	strh	r0, [r1, #10]
	b	.L_87838
	.align	2, 0
.L_877e0:
	.4byte	gUnk_3004A30
.L_877e4:
	.4byte	gButtonsPressed
.L_877e8:
	.4byte	gUnk_3004772
.L_877ec:
	sub	r4, #12
	lsl	r0, r0, #12
.L_877f0:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_87838
	bl	func_8087A70
	cmp	r0, #0
	beq	.L_87838
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_8788c
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r5, .L_87890
	ldr	r2, .L_87894
	ldr	r4, .L_87898
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldr	r3, .L_8789c
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	strh	r0, [r5, #8]
	ldr	r2, .L_878a0
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	strh	r0, [r5, #10]
.L_87838:
	ldr	r0, .L_878a4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_878bc
	bl	MinigameRandom
	add	r1, r0, #0
	cmp	r1, #0
	bge	.L_87850
	add	r0, #15
.L_87850:
	asr	r0, r0, #4
	lsl	r0, r0, #4
	sub	r0, r1, r0
	bl	func_8087D1C
	ldr	r0, .L_878a8
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_878ac
	strh	r1, [r0, #0]
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_878b0
	bl	m4aSongNumStart
	ldr	r1, .L_878b4
	ldr	r0, .L_878b8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	ldr	r1, .L_8788c
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_87a1e
	.align	2, 0
.L_8788c:
	.4byte	gUnk_3004772
.L_87890:
	.4byte	gUnk_3003C0C
.L_87894:
	.4byte	sUnk_863C694
.L_87898:
	.4byte	gUnk_3004773
.L_8789c:
	.4byte	gUnk_3004774
.L_878a0:
	.4byte	sUnk_863C6D4
.L_878a4:
	.4byte	gButtonsPressed
.L_878a8:
	.4byte	gUnk_3003C3A
.L_878ac:
	.4byte	gUnk_3004A30
.L_878b0:
	.4byte	0x2D9
.L_878b4:
	.4byte	sUnk_863D97C
.L_878b8:
	.4byte	gLanguage
.L_878bc:
	mov	r0, #2
.L_878be:
	and	r0, r1
	cmp	r0, #0
	bne	.L_878c6
	b	.L_87a1e
.L_878c6:
	ldr	r0, .L_878d0
	bl	m4aSongNumStart
	mov	r0, #1
	b	.L_87a20
.L_878d0:
	.4byte	0x129
.L_878d4:
	ldr	r1, .L_87a2c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_87a30
	ldrh	r1, [r2, #0]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_878f0
	ldr	r1, .L_87a34
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_878f0:
	ldrh	r2, [r2, #0]
	mov	r0, #32
	and	r0, r2
	add	r3, r2, #0
	cmp	r0, #0
	beq	.L_87904
	ldr	r1, .L_87a34
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_87904:
	mov	r0, #64	@ 0x40
	and	r0, r3
	cmp	r0, #0
	beq	.L_87914
	ldr	r1, .L_87a38
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_87914:
	mov	r0, #128	@ 0x80
	and	r0, r3
	cmp	r0, #0
	beq	.L_87924
	ldr	r1, .L_87a38
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_87924:
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_8793e
	ldr	r2, .L_87a3c
	ldrb	r0, [r2, #0]
	mov	r1, #1
	eor	r0, r1
	strb	r0, [r2, #0]
	ldr	r0, .L_87a40
	bl	m4aSongNumStart
.L_8793e:
	ldr	r1, .L_87a34
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #3
	ble	.L_8794c
	mov	r0, #3
	strb	r0, [r1, #0]
.L_8794c:
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	mov	r2, #3
	neg	r2, r2
	cmp	r0, r2
	bge	.L_8795a
	strb	r2, [r1, #0]
.L_8795a:
	ldr	r1, .L_87a38
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #3
	ble	.L_87968
	mov	r0, #3
	strb	r0, [r1, #0]
.L_87968:
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, r2
	bge	.L_87972
	strb	r2, [r1, #0]
.L_87972:
	ldr	r2, .L_87a44
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldr	r3, .L_87a48
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_879a4
	mov	r0, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_879a4
	strh	r0, [r2, #2]
.L_879a4:
	ldr	r0, .L_87a30
	ldrh	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_879b8
.L_879b0:
	ldr	r0, .L_87a4c
	ldrb	r0, [r0, #0]
	cmp	r0, #127	@ 0x7f
	bne	.L_87a1a
.L_879b8:
	ldr	r0, .L_87a50
	bl	m4aSongNumStop
	ldr	r0, .L_87a54
	mov	r4, #0
	strh	r4, [r0, #0]
	ldr	r0, .L_87a4c
	strb	r4, [r0, #0]
	ldr	r0, .L_87a58
	bl	m4aSongNumStart
	ldr	r0, .L_87a5c
	bl	m4aSongNumStart
	ldr	r1, .L_87a60
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_87a34
	strb	r4, [r0, #0]
	ldr	r0, .L_87a38
	strb	r4, [r0, #0]
	ldr	r0, .L_87a3c
	strb	r4, [r0, #0]
	mov	r4, #1
	ldr	r6, .L_87a64
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #6
	add	r5, r2, #0
	ldr	r3, .L_87a68
	ldr	r2, .L_87a6c
.L_879f4:
	ldrh	r1, [r3, #0]
	add	r0, r6, #0
	and	r0, r1
	add	r0, r0, r5
	strh	r0, [r3, #0]
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	add	r0, r0, r5
	strh	r0, [r2, #0]
	add	r3, #2
	add	r2, #2
	add	r4, #1
	cmp	r4, #26
	ble	.L_879f4
	ldr	r1, .L_87a44
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
.L_87a1a:
	bl	func_8087C10
.L_87a1e:
	mov	r0, #0
.L_87a20:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_87a2c:
	.4byte	gUnk_3003C3A
.L_87a30:
	.4byte	gButtonsPressed
.L_87a34:
	.4byte	gUnk_3004784
.L_87a38:
	.4byte	gUnk_3004783
.L_87a3c:
	.4byte	gUnk_3004782
.L_87a40:
	.4byte	0x11D
.L_87a44:
	.4byte	gUnk_300477C
.L_87a48:
	.4byte	sUnk_8642860
.L_87a4c:
	.4byte	gMPlayMemAccArea
.L_87a50:
	.4byte	0x2D9
.L_87a54:
	.4byte	gUnk_3004A30
.L_87a58:
	.4byte	0x26A
.L_87a5c:
	.4byte	0x121
.L_87a60:
	.4byte	gUnk_3004772
.L_87a64:
	.4byte	0xFFF
.L_87a68:
	.4byte	0x600C444
.L_87a6c:
	.4byte	0x600C484


thumb_func_start func_8087A70
func_8087A70:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_87a88
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	cmp	r1, #0
	bne	.L_87a94
	ldr	r0, .L_87a8c
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_87a98
	b	.L_87a94
.L_87a88:
	.4byte	gUnk_3004774
.L_87a8c:
	.4byte	gUnk_3004773
.L_87a90:
	strb	r4, [r7, #0]
	strb	r3, [r6, #0]
.L_87a94:
	mov	r0, #1
	b	.L_87ac0
.L_87a98:
	mov	r4, #0
	ldr	r5, .L_87ac8
.L_87a9c:
	mov	r3, #0
	add	r2, r4, #1
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r0, r5
.L_87aa8:
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	blt	.L_87a90
	add	r1, #4
	add	r3, #1
	cmp	r3, #3
	ble	.L_87aa8
	add	r4, r2, #0
	cmp	r4, #3
	ble	.L_87a9c
	mov	r0, #0
.L_87ac0:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_87ac8:
	.4byte	gCurrentCollection


thumb_func_start func_8087ACC
func_8087ACC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_87b88
	ldr	r0, .L_87b8c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_87b90
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	ldr	r0, .L_87b94
	ldrh	r2, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	neg	r0, r0
	asr	r6, r0, #31
	mov	r0, #4
	and	r6, r0
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_87b04
	mov	r6, #1
.L_87b04:
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_87b0e
	mov	r6, #3
.L_87b0e:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_87b18
	mov	r6, #2
.L_87b18:
	cmp	r6, #0
	beq	.L_87bec
	ldr	r2, .L_87b98
	lsl	r1, r1, #6
	sub	r0, r6, #1
	lsl	r0, r0, #10
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	cmp	r0, #99	@ 0x63
	beq	.L_87b6a
	ldr	r0, .L_87b9c
	mov	r8, r0
	ldr	r2, .L_87ba0
	mov	ip, r2
	add	r3, r1, #0
	add	r5, r3, #0
.L_87b3a:
	ldr	r1, [r5, #0]
	lsl	r1, r1, #2
	mov	r2, r8
	add	r0, r1, r2
	ldr	r7, [r0, #0]
	ldr	r0, .L_87ba4
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	lsl	r2, r7, #2
	add	r1, r4, #1
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r2, r2, r0
	add	r2, ip
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	blt	.L_87bb0
	add	r3, #4
	add	r5, #4
	ldr	r0, [r3, #0]
	cmp	r0, #99	@ 0x63
	bne	.L_87b3a
.L_87b6a:
	cmp	r6, #4
	bne	.L_87bec
	ldr	r1, .L_87ba8
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_87bac
	mov	r0, #20
	strh	r0, [r1, #8]
	mov	r0, #16
	strh	r0, [r1, #10]
	b	.L_87bec
.L_87b88:
	.4byte	sUnk_863C714
.L_87b8c:
	.4byte	gUnk_3004773
.L_87b90:
	.4byte	gUnk_3004774
.L_87b94:
	.4byte	gButtonsPressed
.L_87b98:
	.4byte	sUnk_863C85C
.L_87b9c:
	.4byte	sUnk_863C754
.L_87ba0:
	.4byte	gCurrentCollection
.L_87ba4:
	.4byte	sUnk_863C794
.L_87ba8:
	.4byte	gUnk_3004772
.L_87bac:
	.4byte	gUnk_3003C0C
.L_87bb0:
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r3, .L_87bf8
	strb	r4, [r3, #0]
	ldr	r2, .L_87bfc
	strb	r7, [r2, #0]
	ldr	r6, .L_87c00
	ldr	r4, .L_87c04
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	mov	r5, #0
	strh	r0, [r6, #8]
	ldr	r4, .L_87c08
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	strh	r0, [r6, #10]
	ldr	r0, .L_87c0c
	strh	r5, [r0, #0]
.L_87bec:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_87bf8:
	.4byte	gUnk_3004774
.L_87bfc:
	.4byte	gUnk_3004773
.L_87c00:
	.4byte	gUnk_3003C0C
.L_87c04:
	.4byte	sUnk_863C694
.L_87c08:
	.4byte	sUnk_863C6D4
.L_87c0c:
	.4byte	gUnk_3004A30


thumb_func_start func_8087C10
func_8087C10:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, .L_87c54
	ldr	r1, .L_87c58
	add	r0, r2, r1
	ldrh	r6, [r0, #0]
.L_87c20:
	ldr	r1, .L_87c5c
	ldr	r0, .L_87c60
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r7, [r0, #4]
	ldr	r0, .L_87c64
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87c70
	ldr	r1, .L_87c68
	lsl	r4, r6, #1
	add	r0, r4, r6
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	ldr	r1, .L_87c6c
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	bl	m4aMPlayVolumeControl
.L_87c50:
	b	.L_87c84
	.align	2, 0
.L_87c54:
	.4byte	gSongTable
.L_87c58:
	.4byte	0x16CC
.L_87c5c:
	.4byte	sUnk_863D97C
.L_87c60:
	.4byte	gLanguage
.L_87c64:
	.4byte	gUnk_3004782
.L_87c68:
	.4byte	gMPlayTable
.L_87c6c:
	.4byte	0xFFFF
.L_87c70:
	ldr	r1, .L_87d04
	lsl	r4, r6, #1
	add	r0, r4, r6
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	ldr	r1, .L_87d08
	mov	r2, #0
	bl	m4aMPlayVolumeControl
.L_87c84:
	ldr	r5, .L_87d04
	add	r0, r4, r6
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	mov	r9, r0
	ldr	r6, .L_87d0c
	ldr	r4, .L_87d10
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	add	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldrh	r1, [r0, #0]
	mov	r0, r9
	bl	m4aMPlayTempoControl
	lsl	r0, r7, #1
	add	r0, r0, r7
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	mov	r8, r0
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	add	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldrh	r1, [r0, #0]
	mov	r0, r8
	bl	m4aMPlayTempoControl
	ldr	r6, .L_87d08
	ldr	r5, .L_87d14
	ldr	r4, .L_87d18
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	add	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	mov	r0, r9
	add	r1, r6, #0
	bl	m4aMPlayPitchControl
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	add	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	mov	r0, r8
	add	r1, r6, #0
	bl	m4aMPlayPitchControl
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_87d04:
	.4byte	gMPlayTable
.L_87d08:
	.4byte	0xFFFF
.L_87d0c:
	.4byte	sUnk_863D9A0
.L_87d10:
	.4byte	gUnk_3004784
.L_87d14:
	.4byte	sUnk_863D984
.L_87d18:
	.4byte	gUnk_3004783


thumb_func_start func_8087D1C
func_8087D1C:
	push	{r4, r5, r6, r7, lr}
	lsr	r1, r0, #31
	add	r1, r0, r1
	asr	r1, r1, #1
	lsl	r2, r1, #1
	add	r1, r2, r1
	lsl	r6, r1, #11
	sub	r2, r0, r2
	lsl	r1, r2, #1
	add	r1, r1, r2
	lsl	r5, r1, #7
	ldr	r2, .L_87d94
	lsl	r0, r0, #5
	ldr	r1, .L_87d98
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_87d9c
	str	r0, [r2, #4]
	ldr	r0, .L_87da0
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_87d58
.L_87d50:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_87d50
.L_87d58:
	mov	r4, #0
	ldr	r3, .L_87d94
	ldr	r0, .L_87da4
	add	r0, r5, r0
	add	r5, r6, r0
	ldr	r7, .L_87da8
	ldr	r6, .L_87dac
.L_87d66:
	lsl	r1, r4, #10
	add	r0, r5, r1
	str	r0, [r3, #0]
	add	r1, r1, r7
	str	r1, [r3, #4]
	str	r6, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	add	r1, r4, #1
	cmp	r0, #0
	bge	.L_87d88
.L_87d80:
	ldr	r0, [r3, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_87d80
.L_87d88:
	add	r4, r1, #0
	cmp	r4, #5
	ble	.L_87d66
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_87d94:
	.4byte	0x40000D4
.L_87d98:
	.4byte	sUnk_86BF288
.L_87d9c:
	.4byte	0x50003E0
.L_87da0:
	.4byte	0x80000010
.L_87da4:
	.4byte	sUnk_86BF488
.L_87da8:
	.4byte	0x6016000
.L_87dac:
	.4byte	0x800000C0


thumb_func_start func_8087DB0
func_8087DB0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	mov	r7, #0
	ldr	r0, .L_87fc0
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r1, r0, #3
	ldr	r0, .L_87fc4
	add	r5, r1, r0
	ldr	r0, .L_87fc8
	ldrb	r1, [r0, #0]
	cmp	r1, #4
	beq	.L_87e7e
	cmp	r1, #2
	beq	.L_87e7e
	ldr	r2, .L_87fcc
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_87fd0
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_87e06
	strh	r7, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_87e06
	strh	r7, [r2, #2]
.L_87e06:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_87e1c
	b	.L_88582
.L_87e1c:
	cmp	r7, r8
	bge	.L_87e7e
	ldr	r1, .L_87fc4
	add	r6, r2, #0
	ldr	r2, .L_87fd4
	mov	sl, r2
	ldr	r3, .L_87fd8
	mov	ip, r3
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_87e3a:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #10]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, #8
	ldrsh	r1, [r6, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_87e3a
	mov	r7, r8
.L_87e7e:
	ldr	r0, .L_87fdc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87efc
	ldr	r1, .L_87fe0
	ldr	r0, .L_87fe4
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_87ea0
	b	.L_88582
.L_87ea0:
	cmp	r7, r8
	bge	.L_87efc
	ldr	r1, .L_87fc4
	ldr	r0, .L_87fd4
	mov	r9, r0
	ldr	r2, .L_87fd8
	mov	sl, r2
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_87eba:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #8
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #56	@ 0x38
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_87eba
	mov	r7, r8
.L_87efc:
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #2
	str	r4, [sp, #12]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #16]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #20]
.L_87f12:
	mov	r3, #0
	ldr	r2, [sp, #8]
	add	r2, #1
	mov	sl, r2
.L_87f1a:
	ldr	r0, [sp, #8]
	ldr	r4, .L_87fe8
	ldrb	r4, [r4, #0]
	cmp	r0, r4
	bne	.L_87ffc
	ldr	r0, .L_87fec
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_87ffc
	ldr	r1, .L_87fc8
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bls	.L_87ffc
	lsl	r1, r3, #2
	ldr	r2, [sp, #8]
	lsl	r0, r2, #4
	add	r2, r1, r0
	ldr	r4, .L_87ff0
	add	r0, r2, r4
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	add	r3, #1
	mov	r9, r3
	cmp	r7, r8
	blt	.L_87f52
	b	.L_88088
.L_87f52:
	ldr	r1, .L_87ff4
	add	r0, r2, r1
	ldr	r0, [r0, #0]
	mov	ip, r0
	ldr	r1, .L_87fc4
	ldr	r0, .L_87ff8
	add	r0, r2, r0
	ldr	r6, [r0, #0]
	lsl	r0, r7, #3
	add	r3, r0, r1
.L_87f66:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	add	r0, r1, r2
	sub	r0, #8
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #3
	orr	r1, r0
	strb	r1, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, r6
	sub	r1, #8
	ldr	r2, .L_87fd4
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_87fd8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	add	r7, #1
	cmp	r7, r8
	blt	.L_87f66
	b	.L_88088
	.align	2, 0
.L_87fc0:
	.4byte	gOamSlotsUsed
.L_87fc4:
	.4byte	gOamBuffer
.L_87fc8:
	.4byte	gUnk_3004772
.L_87fcc:
	.4byte	gUnk_3003C0C
.L_87fd0:
	.4byte	sUnk_8642898
.L_87fd4:
	.4byte	0x1FF
.L_87fd8:
	.4byte	0xFFFFFE00
.L_87fdc:
	.4byte	gUnk_3004781
.L_87fe0:
	.4byte	sUnk_8642860
.L_87fe4:
	.4byte	gUnk_300477C
.L_87fe8:
	.4byte	gUnk_3004774
.L_87fec:
	.4byte	gUnk_3004773
.L_87ff0:
	.4byte	sUnk_863C7D4
.L_87ff4:
	.4byte	sUnk_863C6D4
.L_87ff8:
	.4byte	sUnk_863C694
.L_87ffc:
	ldr	r2, .L_880b8
	lsl	r1, r3, #2
	mov	r4, sl
	lsl	r0, r4, #1
	add	r0, sl
	lsl	r0, r0, #3
	add	r0, r1, r0
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #27
	add	r3, #1
	mov	r9, r3
	cmp	r0, #0
	bge	.L_88088
	ldr	r2, [sp, #8]
	lsl	r0, r2, #4
	add	r1, r1, r0
	ldr	r3, .L_880bc
	add	r0, r1, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_88088
	ldr	r2, .L_880c0
	add	r0, r1, r2
	ldr	r0, [r0, #0]
	mov	ip, r0
	lsl	r0, r7, #3
	ldr	r2, .L_880c4
	add	r3, r0, r2
	ldr	r0, .L_880c8
	add	r0, r1, r0
	ldr	r6, [r0, #0]
	mov	r0, r8
	sub	r7, r0, r7
.L_88046:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	add	r0, r1, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, r6
	ldr	r2, .L_880cc
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_880d0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88046
	mov	r7, r8
.L_88088:
	mov	r3, r9
	cmp	r3, #3
	bgt	.L_88090
	b	.L_87f1a
.L_88090:
	mov	r3, sl
	str	r3, [sp, #8]
	cmp	r3, #3
	bgt	.L_8809a
	b	.L_87f12
.L_8809a:
	ldr	r4, .L_880d4
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bls	.L_880e4
	ldr	r2, .L_880d8
	ldr	r0, .L_880dc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_880e0
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	b	.L_88116
.L_880b8:
	.4byte	gCurrentCollection
.L_880bc:
	.4byte	sUnk_863C7D4
.L_880c0:
	.4byte	sUnk_863C6D4
.L_880c4:
	.4byte	gOamBuffer
.L_880c8:
	.4byte	sUnk_863C694
.L_880cc:
	.4byte	0x1FF
.L_880d0:
	.4byte	0xFFFFFE00
.L_880d4:
	.4byte	gUnk_3004772
.L_880d8:
	.4byte	sUnk_863C814
.L_880dc:
	.4byte	gUnk_3004773
.L_880e0:
	.4byte	gUnk_3004774
.L_880e4:
	ldr	r0, .L_88104
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_88114
	ldr	r0, .L_88108
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r4, .L_8810c
	cmp	r0, #1
	bne	.L_88116
	cmp	r1, #99	@ 0x63
	bhi	.L_88116
	ldr	r4, .L_88110
	b	.L_88116
	.align	2, 0
.L_88104:
	.4byte	gUnk_3004782
.L_88108:
	.4byte	gMPlayMemAccArea
.L_8810c:
	.4byte	sUnk_8642638
.L_88110:
	.4byte	sUnk_864262A
.L_88114:
	ldr	r4, .L_881b0
.L_88116:
	ldr	r1, .L_881b4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_88180
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_88180
	ldr	r1, .L_881b8
	ldr	r2, .L_881bc
	mov	r9, r2
	ldr	r3, .L_881c0
	mov	sl, r3
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_8813e:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8813e
	mov	r7, r8
.L_88180:
	ldr	r3, .L_881b4
	ldrb	r0, [r3, #0]
	cmp	r0, #2
	bne	.L_8825c
	ldr	r0, .L_881c4
	ldrh	r0, [r0, #0]
	mov	r1, #7
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L_881d0
	bl	MinigameRandom
	mov	r1, #10
	bl	__modsi3
	cmp	r0, #4
	bgt	.L_881cc
	ldr	r1, .L_881c8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_881d0
.L_881b0:
	.4byte	sUnk_864261C
.L_881b4:
	.4byte	gUnk_3004772
.L_881b8:
	.4byte	gOamBuffer
.L_881bc:
	.4byte	0x1FF
.L_881c0:
	.4byte	0xFFFFFE00
.L_881c4:
	.4byte	gUnk_3003C3A
.L_881c8:
	.4byte	gUnk_3004780
.L_881cc:
	ldr	r0, .L_88244
	strb	r6, [r0, #0]
.L_881d0:
	ldr	r0, .L_88244
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_881da
	ldr	r4, .L_88248
.L_881da:
	cmp	r0, #1
	bne	.L_881e0
	ldr	r4, .L_8824c
.L_881e0:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_881ec
	b	.L_884c6
.L_881ec:
	ldr	r1, .L_88250
	ldr	r0, .L_88254
	mov	r9, r0
	ldr	r2, .L_88258
	mov	sl, r2
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_88202:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88202
	b	.L_884c6
.L_88244:
	.4byte	gUnk_3004780
.L_88248:
	.4byte	sUnk_86427A0
.L_8824c:
	.4byte	sUnk_86427BA
.L_88250:
	.4byte	gOamBuffer
.L_88254:
	.4byte	0x1FF
.L_88258:
	.4byte	0xFFFFFE00
.L_8825c:
	cmp	r0, #4
	beq	.L_88262
	b	.L_8842c
.L_88262:
	ldr	r0, .L_882a0
	ldrh	r6, [r0, #0]
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #3
	add	r0, r6, #0
	bl	__umodsi3
	lsl	r0, r0, #16
	ldr	r1, .L_882a4
	cmp	r0, r1
	bhi	.L_8833c
	add	r0, r6, #0
	mov	r1, #7
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L_882b0
	bl	MinigameRandom
	mov	r1, #10
	bl	__modsi3
	cmp	r0, #4
	bgt	.L_882ac
	ldr	r1, .L_882a8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_882b0
	.align	2, 0
.L_882a0:
	.4byte	gUnk_3003C3A
.L_882a4:
	.4byte	0x12B0000
.L_882a8:
	.4byte	gUnk_3004780
.L_882ac:
	ldr	r0, .L_88324
	strb	r6, [r0, #0]
.L_882b0:
	ldr	r0, .L_88324
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_882ba
	ldr	r4, .L_88328
.L_882ba:
	cmp	r0, #1
	bne	.L_882c0
	ldr	r4, .L_8832c
.L_882c0:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_882cc
	b	.L_884c6
.L_882cc:
	ldr	r1, .L_88330
	ldr	r3, .L_88334
	mov	r9, r3
	ldr	r0, .L_88338
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_882e2:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_882e2
	b	.L_884c6
.L_88324:
	.4byte	gUnk_3004780
.L_88328:
	.4byte	sUnk_86427A0
.L_8832c:
	.4byte	sUnk_86427BA
.L_88330:
	.4byte	gOamBuffer
.L_88334:
	.4byte	0x1FF
.L_88338:
	.4byte	0xFFFFFE00
.L_8833c:
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #2
	add	r0, r6, #0
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	beq	.L_88358
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #1
	ldr	r2, .L_88370
	cmp	r3, r0
	bne	.L_88364
.L_88358:
	ldr	r0, .L_88370
	mov	r2, #0
	mov	r1, #1
	strh	r1, [r0, #0]
	strh	r2, [r0, #2]
	add	r2, r0, #0
.L_88364:
	ldr	r0, .L_88374
	cmp	r3, r0
	bgt	.L_8837c
	ldr	r0, .L_88378
	ldr	r3, [r0, #0]
	b	.L_88380
.L_88370:
	.4byte	gUnk_3004778
.L_88374:
	.4byte	0x12B
.L_88378:
	.4byte	sUnk_863C854
.L_8837c:
	ldr	r0, .L_8841c
	ldr	r3, [r0, #4]
.L_88380:
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
	bcs	.L_883ae
	mov	r0, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_883ae
	strh	r0, [r2, #2]
.L_883ae:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_883c2
	b	.L_884c6
.L_883c2:
	ldr	r1, .L_88420
	ldr	r3, .L_88424
	mov	r9, r3
	ldr	r0, .L_88428
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_883d8:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_883d8
	b	.L_884c6
	.align	2, 0
.L_8841c:
	.4byte	sUnk_863C854
.L_88420:
	.4byte	gOamBuffer
.L_88424:
	.4byte	0x1FF
.L_88428:
	.4byte	0xFFFFFE00
.L_8842c:
	ldr	r3, .L_88594
	ldr	r2, .L_88598
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
	bcs	.L_8845e
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
	bne	.L_8845e
	strh	r0, [r2, #2]
.L_8845e:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_884c6
	ldr	r1, .L_8859c
	ldr	r3, .L_885a0
	mov	r9, r3
	ldr	r0, .L_885a4
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_88486:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88486
.L_884c6:
	ldr	r3, .L_885a8
	ldrh	r0, [r3, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r4, .L_885ac
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #192	@ 0xc0
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_885a8
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	ldr	r3, .L_885ac
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldr	r3, .L_885a8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	ldr	r4, .L_885ac
	add	r0, r0, r4
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r2, .L_885a8
	ldrh	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_885ac
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_8859c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r4, [sp, #16]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
	ldr	r0, .L_885b0
	mov	r1, r8
	strb	r1, [r0, #0]
.L_88582:
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_88594:
	.4byte	sUnk_8642820
.L_88598:
	.4byte	gUnk_3004778
.L_8859c:
	.4byte	gOamBuffer
.L_885a0:
	.4byte	0x1FF
.L_885a4:
	.4byte	0xFFFFFE00
.L_885a8:
	.4byte	gUnk_3004770
.L_885ac:
	.4byte	sSinCosTable
.L_885b0:
	.4byte	gOamSlotsUsed


thumb_func_start func_80885B4
func_80885B4:
	push	{lr}
	bl	MinigameRandom
	mov	r1, #5
	bl	__modsi3
	add	r3, r0, #0
	ldr	r2, .L_88604
	lsl	r0, r3, #6
	ldr	r1, .L_88608
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_8860c
	str	r0, [r2, #4]
	ldr	r0, .L_88610
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_885e8
.L_885e0:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_885e0
.L_885e8:
	ldr	r2, .L_88604
	lsl	r0, r3, #1
	add	r0, r0, r3
	lsl	r0, r0, #11
	ldr	r1, .L_88614
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_88618
	str	r0, [r2, #4]
	ldr	r0, .L_8861c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	pop	{r0}
	bx	r0
.L_88604:
	.4byte	0x40000D4
.L_88608:
	.4byte	sUnk_86CB7C8
.L_8860c:
	.4byte	0x50003A0
.L_88610:
	.4byte	0x80000020
.L_88614:
	.4byte	sUnk_86CB908
.L_88618:
	.4byte	0x6010000
.L_8861c:
	.4byte	0x80000C00
