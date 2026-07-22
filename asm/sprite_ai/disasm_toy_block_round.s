.include "macros.s.inc"


thumb_func_start func_804318C
func_804318C:
	ldr	r0, .L_431e4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r0, #160	@ 0xa0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	ldr	r0, .L_431e8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #26
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
.L_431e4:
	.4byte	gCurrentSprite
.L_431e8:
	.4byte	sUnk_83C79AC


thumb_func_start func_80431EC
func_80431EC:
	ldr	r1, .L_431fc
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_43200
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_431fc:
	.4byte	gCurrentSprite
.L_43200:
	.4byte	0xFCFF


thumb_func_start func_8043204
func_8043204:
	push	{lr}
	bl	func_8023B88
	ldr	r0, .L_43234
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4325e
	ldr	r3, .L_43238
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4323c
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_43250
.L_43234:
	.4byte	gSpriteAiCollisionResult
.L_43238:
	.4byte	gCurrentSprite
.L_4323c:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_43250:
	ldr	r0, .L_43264
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4325e
	ldr	r1, .L_43268
	mov	r0, #29
	strb	r0, [r1, #28]
.L_4325e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_43264:
	.4byte	gSpriteAiCollisionFlags
.L_43268:
	.4byte	gCurrentSprite


thumb_func_start func_804326C
func_804326C:
	ldr	r0, .L_4327c
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4327c:
	.4byte	gCurrentSprite


thumb_func_start func_8043280
func_8043280:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_432c4
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_432c8
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_432a8
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
.L_432a8:
	ldr	r0, .L_432cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_432e8
	mov	r2, #0
	strh	r5, [r4, #8]
	ldr	r1, .L_432d0
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_432d4
	mov	r0, #36	@ 0x24
	b	.L_432d6
	.align	2, 0
.L_432c4:
	.4byte	gCurrentSprite
.L_432c8:
	.4byte	gUnk_30000A0
.L_432cc:
	.4byte	gSpriteAiCollisionResult
.L_432d0:
	.4byte	gWarioData
.L_432d4:
	mov	r0, #38	@ 0x26
.L_432d6:
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	b	.L_43358
.L_432e8:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_43324
	ldr	r5, .L_4331c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_43320
	cmp	r1, r0
	bne	.L_4334c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_43356
	.align	2, 0
.L_4331c:
	.4byte	sUnk_8352AFC
.L_43320:
	.4byte	0x7FFF
.L_43324:
	ldr	r5, .L_43344
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_43348
	cmp	r1, r0
	bne	.L_4334c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_43356
.L_43344:
	.4byte	sUnk_8352ADC
.L_43348:
	.4byte	0x7FFF
.L_4334c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_43356:
	strh	r0, [r4, #8]
.L_43358:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8043360
func_8043360:
	ldr	r1, .L_43378
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_43378:
	.4byte	gCurrentSprite


thumb_func_start func_804337C
func_804337C:
	ldr	r1, .L_43394
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_43394:
	.4byte	gCurrentSprite


thumb_func_start func_8043398
func_8043398:
	ldr	r0, .L_433a8
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_433a8:
	.4byte	gCurrentSprite


thumb_func_start func_80433AC
func_80433AC:
	push	{lr}
	ldr	r1, .L_433c0
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_433c4
	bl	func_8025F48
	b	.L_433c8
.L_433c0:
	.4byte	gCurrentSprite
.L_433c4:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_433c8:
	pop	{r0}
	bx	r0


thumb_func_start func_80433CC
func_80433CC:
	ldr	r0, .L_433dc
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_433dc:
	.4byte	gCurrentSprite


thumb_func_start func_80433E0
func_80433E0:
	push	{lr}
	ldr	r1, .L_433f4
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_433f8
	bl	func_802608C
	b	.L_433fc
.L_433f4:
	.4byte	gCurrentSprite
.L_433f8:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_433fc:
	pop	{r0}
	bx	r0


thumb_func_start func_8043400
func_8043400:
	ldr	r1, .L_43410
	ldrb	r0, [r1, #28]
	cmp	r0, #79	@ 0x4f
	bne	.L_43414
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #20
	b	.L_4341a
.L_43410:
	.4byte	gCurrentSprite
.L_43414:
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #10
.L_4341a:
	strb	r0, [r2, #0]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r2, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0


thumb_func_start func_804342C
func_804342C:
	push	{lr}
	ldr	r1, .L_43440
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_43444
	bl	func_802608C
	b	.L_43448
.L_43440:
	.4byte	gCurrentSprite
.L_43444:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_43448:
	pop	{r0}
	bx	r0


thumb_func_start func_804344C
func_804344C:
	ldr	r1, .L_4345c
	ldrb	r0, [r1, #28]
	cmp	r0, #80	@ 0x50
	bne	.L_43460
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #20
	b	.L_43466
.L_4345c:
	.4byte	gCurrentSprite
.L_43460:
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #10
.L_43466:
	strb	r0, [r2, #0]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r2, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0


thumb_func_start func_8043478
func_8043478:
	push	{lr}
	ldr	r1, .L_4348c
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_43490
	bl	func_8025F48
	b	.L_43494
.L_4348c:
	.4byte	gCurrentSprite
.L_43490:
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_43494:
	pop	{r0}
	bx	r0


thumb_func_start SpriteToyBlockRound
SpriteToyBlockRound:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_434c4
	mov	r0, #0
	strb	r0, [r2, #31]
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_434b0
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_434b0:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_434b8
	b	.L_4379c
.L_434b8:
	lsl	r0, r0, #2
	ldr	r1, .L_434c8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_434c4:
	.4byte	gCurrentSprite
.L_434c8:
	.4byte	.L_434cc
.L_434cc:
	.4byte	.L_43678
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_43686
	.4byte	.L_4368a
	.4byte	.L_436c0
	.4byte	.L_4379c
	.4byte	.L_436dc
	.4byte	.L_4379c
	.4byte	.L_4367c
	.4byte	.L_436c4
	.4byte	.L_4367c
	.4byte	.L_436e0
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_43690
	.4byte	.L_43694
	.4byte	.L_436a8
	.4byte	.L_436ac
	.4byte	.L_4367c
	.4byte	.L_43680
	.4byte	.L_4367c
	.4byte	.L_4379c
	.4byte	.L_4367c
	.4byte	.L_4379c
	.4byte	.L_4367c
	.4byte	.L_4379c
	.4byte	.L_436f8
	.4byte	.L_43702
	.4byte	.L_43708
	.4byte	.L_43712
	.4byte	.L_43718
	.4byte	.L_43722
	.4byte	.L_43728
	.4byte	.L_43732
	.4byte	.L_43738
	.4byte	.L_43742
	.4byte	.L_43748
	.4byte	.L_43752
	.4byte	.L_43758
	.4byte	.L_43768
	.4byte	.L_4375e
	.4byte	.L_43784
	.4byte	.L_43764
	.4byte	.L_43768
	.4byte	.L_43780
	.4byte	.L_43784
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_436c0
	.4byte	.L_436dc
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4379c
	.4byte	.L_4367c
	.4byte	.L_4367c
.L_43678:
	bl	func_804318C
.L_4367c:
	bl	func_80431EC
.L_43680:
	bl	func_8043204
	b	.L_437a0
.L_43686:
	bl	func_804326C
.L_4368a:
	bl	func_8043280
	b	.L_437a0
.L_43690:
	bl	func_8043398
.L_43694:
	bl	func_80433AC
	ldr	r1, .L_436a4
	ldrb	r0, [r1, #22]
	sub	r0, #5
	strb	r0, [r1, #22]
	b	.L_437a0
	.align	2, 0
.L_436a4:
	.4byte	gCurrentSprite
.L_436a8:
	bl	func_80433CC
.L_436ac:
	bl	func_80433E0
	ldr	r1, .L_436bc
	ldrb	r0, [r1, #22]
	add	r0, #5
	strb	r0, [r1, #22]
	b	.L_437a0
	.align	2, 0
.L_436bc:
	.4byte	gCurrentSprite
.L_436c0:
	bl	func_8043400
.L_436c4:
	ldr	r1, .L_436d8
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	ldrb	r2, [r1, #22]
	add	r0, r0, r2
	strb	r0, [r1, #22]
	bl	func_804342C
	b	.L_437a0
.L_436d8:
	.4byte	gCurrentSprite
.L_436dc:
	bl	func_804344C
.L_436e0:
	ldr	r0, .L_436f4
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	ldrb	r1, [r0, #22]
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	strb	r1, [r0, #22]
	bl	func_8043478
	b	.L_437a0
.L_436f4:
	.4byte	gCurrentSprite
.L_436f8:
	bl	func_8024688
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43702:
	bl	func_80246B8
	b	.L_4376c
.L_43708:
	bl	func_802473C
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43712:
	bl	func_802476C
	b	.L_4376c
.L_43718:
	bl	func_80247F0
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43722:
	bl	func_8024820
	b	.L_4376c
.L_43728:
	bl	func_80248A4
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43732:
	bl	func_80248D4
	b	.L_43788
.L_43738:
	bl	func_8024958
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43742:
	bl	func_8024988
	b	.L_43788
.L_43748:
	bl	func_8024A0C
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_43752:
	bl	func_8024A3C
	b	.L_43788
.L_43758:
	bl	func_8024AC0
	b	.L_43768
.L_4375e:
	bl	func_8024BEC
	b	.L_43784
.L_43764:
	bl	func_8043360
.L_43768:
	bl	func_8024AD4
.L_4376c:
	ldr	r0, .L_4377c
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	ldrb	r1, [r0, #22]
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	strb	r1, [r0, #22]
	b	.L_437a0
.L_4377c:
	.4byte	gCurrentSprite
.L_43780:
	bl	func_804337C
.L_43784:
	bl	func_8024C00
.L_43788:
	ldr	r1, .L_43798
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	ldrb	r2, [r1, #22]
	add	r0, r0, r2
	strb	r0, [r1, #22]
	b	.L_437a0
.L_43798:
	.4byte	gCurrentSprite
.L_4379c:
	bl	SpriteUtilDie
.L_437a0:
	ldr	r7, .L_43840
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_43820
	ldr	r6, .L_43844
	ldrb	r0, [r7, #22]
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
	ldrb	r0, [r7, #22]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r7, #22]
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
	ldrb	r0, [r7, #22]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
.L_43820:
	ldr	r0, .L_43848
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_4382e
	cmp	r0, #8
	bne	.L_43834
.L_4382e:
	ldrb	r0, [r7, #22]
	sub	r0, #1
	strb	r0, [r7, #22]
.L_43834:
	bl	func_8026838
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_43840:
	.4byte	gCurrentSprite
.L_43844:
	.4byte	sSinCosTable
.L_43848:
	.4byte	gSubGameMode
