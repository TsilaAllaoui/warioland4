.include "macros.s.inc"


thumb_func_start func_80421DC
func_80421DC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_422e0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r0, [r3, #8]
	add	r1, r2, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	ldrh	r0, [r3, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r1
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	r8, r2
	mov	r6, #0
	mov	r7, #17
.L_4223c:
	ldr	r1, .L_422e4
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_422f4
	ldrb	r0, [r5, #23]
	cmp	r0, #68	@ 0x44
	bne	.L_422f4
	ldrb	r0, [r5, #28]
	cmp	r0, #16
	bne	.L_422f4
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r0, [r5, #8]
	add	r3, r2, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r0, [r5, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r5, #0
	add	r0, #35	@ 0x23
	ldrb	r4, [r0, #0]
	sub	r4, r3, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	sub	r3, r3, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, r5, #0
	add	r0, #37	@ 0x25
	ldrb	r1, [r0, #0]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r4, [sp, #0]
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r0, [sp, #16]
	mov	r1, sl
	mov	r2, r9
	mov	r3, r8
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_422f4
	strb	r7, [r5, #28]
	ldrh	r0, [r5, #0]
	ldr	r2, .L_422e8
	add	r1, r2, #0
	and	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_422ec
	ldr	r0, .L_422f0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	strb	r7, [r0, #0]
	mov	r0, #250	@ 0xfa
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	mov	r0, #1
	b	.L_422fc
.L_422e0:
	.4byte	gCurrentSprite
.L_422e4:
	.4byte	gSpriteData
.L_422e8:
	.4byte	0xFFFB
.L_422ec:
	.4byte	gPersistentSpriteData
.L_422f0:
	.4byte	gCurrentRoom
.L_422f4:
	add	r6, #1
	cmp	r6, #23
	ble	.L_4223c
	mov	r0, #0
.L_422fc:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_804230C
func_804230C:
	push	{r4, lr}
	ldr	r0, .L_42364
	mov	ip, r0
	ldrh	r0, [r0, #10]
	add	r0, #32
	mov	r2, #0
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #0]
	mov	r1, #32
	orr	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, ip
	add	r0, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r4, #34	@ 0x22
	mov	r0, #16
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_42368
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #5
	strb	r0, [r1, #30]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_42364:
	.4byte	gCurrentSprite
.L_42368:
	.4byte	sUnk_83C798C


thumb_func_start func_804236C
func_804236C:
	ldr	r1, .L_4237c
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_42380
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_4237c:
	.4byte	gCurrentSprite
.L_42380:
	.4byte	0xFCFF


thumb_func_start func_8042384
func_8042384:
	push	{lr}
	bl	func_8023B88
	ldr	r0, .L_423b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_423de
	ldr	r3, .L_423b8
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_423bc
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_423d0
.L_423b4:
	.4byte	gSpriteCollisionResult
.L_423b8:
	.4byte	gCurrentSprite
.L_423bc:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_423d0:
	ldr	r0, .L_423e4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_423de
	ldr	r1, .L_423e8
	mov	r0, #27
	strb	r0, [r1, #28]
.L_423de:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_423e4:
	.4byte	gUnk_3000A51
.L_423e8:
	.4byte	gCurrentSprite


thumb_func_start func_80423EC
func_80423EC:
	ldr	r0, .L_423fc
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_423fc:
	.4byte	gCurrentSprite


thumb_func_start func_8042400
func_8042400:
	ldr	r0, .L_42410
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_42410:
	.4byte	gCurrentSprite


thumb_func_start func_8042414
func_8042414:
	ldr	r0, .L_42424
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_42424:
	.4byte	gCurrentSprite


thumb_func_start func_8042428
func_8042428:
	ldr	r1, .L_42440
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
.L_42440:
	.4byte	gCurrentSprite


thumb_func_start func_8042444
func_8042444:
	ldr	r1, .L_4245c
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
.L_4245c:
	.4byte	gCurrentSprite


thumb_func_start func_8042460
func_8042460:
	ldr	r2, .L_42480
	mov	r1, #0
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r1, #0]
	bx	lr
.L_42480:
	.4byte	gCurrentSprite


thumb_func_start func_8042484
func_8042484:
	ldr	r2, .L_424a4
	mov	r1, #0
	mov	r0, #38	@ 0x26
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	strb	r0, [r1, #0]
	bx	lr
.L_424a4:
	.4byte	gCurrentSprite


thumb_func_start func_80424A8
func_80424A8:
	ldr	r2, .L_424c8
	mov	r1, #0
	mov	r0, #52	@ 0x34
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_424c8:
	.4byte	gCurrentSprite


thumb_func_start func_80424CC
func_80424CC:
	ldr	r2, .L_424ec
	mov	r1, #0
	mov	r0, #54	@ 0x36
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_424ec:
	.4byte	gCurrentSprite


thumb_func_start func_80424F0
func_80424F0:
	ldr	r2, .L_42510
	mov	r1, #0
	mov	r0, #66	@ 0x42
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_42510:
	.4byte	gCurrentSprite


thumb_func_start func_8042514
func_8042514:
	ldr	r2, .L_42534
	mov	r1, #0
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_42534:
	.4byte	gCurrentSprite


thumb_func_start func_8042538
func_8042538:
	push	{lr}
	ldr	r0, .L_4254c
	ldr	r1, .L_42550
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_42554
	bl	func_80424A8
	b	.L_42558
.L_4254c:
	.4byte	gCurrentSprite
.L_42550:
	.4byte	gWarioData
.L_42554:
	bl	func_80424CC
.L_42558:
	pop	{r0}
	bx	r0


thumb_func_start func_804255C
func_804255C:
	ldr	r1, .L_42564
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_42564:
	.4byte	gCurrentSprite


thumb_func_start func_8042568
func_8042568:
	ldr	r1, .L_42570
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_42570:
	.4byte	gCurrentSprite


thumb_func_start func_8042574
func_8042574:
	ldr	r0, .L_42580
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_42580:
	.4byte	gCurrentSprite


thumb_func_start func_8042584
func_8042584:
	ldr	r0, .L_42590
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_42590:
	.4byte	gCurrentSprite


thumb_func_start func_8042594
func_8042594:
	ldr	r0, .L_425ec
	mov	ip, r0
	ldrh	r0, [r0, #10]
	add	r0, #32
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #10]
	ldrh	r1, [r1, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
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
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_425f0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #6
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_425ec:
	.4byte	gCurrentSprite
.L_425f0:
	.4byte	sUnk_83C798C


thumb_func_start func_80425F4
func_80425F4:
	push	{lr}
	ldr	r1, .L_4260c
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #4
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_8042594
	pop	{r0}
	bx	r0
.L_4260c:
	.4byte	gCurrentSprite


thumb_func_start func_8042610
func_8042610:
	push	{lr}
	ldr	r1, .L_42620
	mov	r0, #24
	strb	r0, [r1, #28]
	bl	func_8042594
	pop	{r0}
	bx	r0
.L_42620:
	.4byte	gCurrentSprite


thumb_func_start func_8042624
func_8042624:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_4269c
	mov	r0, #24
	strb	r0, [r2, #28]
	ldrh	r0, [r2, #8]
	add	r1, r0, #0
	add	r1, #252	@ 0xfc
	lsr	r5, r1, #6
	ldrh	r1, [r2, #10]
	add	r0, r1, #0
	sub	r0, #32
	cmp	r0, #0
	bge	.L_42640
	add	r0, #63	@ 0x3f
.L_42640:
	lsl	r0, r0, #10
	lsr	r4, r0, #16
	mov	r6, #0
	mov	r2, #0
	ldr	r0, .L_426a0
	add	r3, r0, #0
	ldrb	r0, [r3, #0]
	cmp	r5, r0
	bne	.L_42658
	ldrb	r0, [r3, #1]
	cmp	r4, r0
	beq	.L_4267a
.L_42658:
	add	r2, #1
	cmp	r2, #63	@ 0x3f
	bgt	.L_42676
	lsl	r0, r2, #1
	add	r1, r0, r2
	add	r0, r1, r3
	ldrb	r0, [r0, #0]
	cmp	r5, r0
	bne	.L_42658
	add	r0, r3, #1
	add	r0, r1, r0
	ldrb	r0, [r0, #0]
	cmp	r4, r0
	bne	.L_42658
	add	r6, #1
.L_42676:
	cmp	r6, #0
	beq	.L_426c6
.L_4267a:
	ldr	r1, .L_426a4
	ldr	r0, .L_426a8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, r2, r0
	add	r0, r0, r1
	mov	r5, #17
	strb	r5, [r0, #0]
	add	r3, r2, #0
	mov	r2, #0
	ldr	r0, .L_426ac
	ldrb	r1, [r0, #24]
	add	r4, r0, #0
	cmp	r1, r3
	bne	.L_426b0
	strb	r5, [r4, #28]
	b	.L_426c6
.L_4269c:
	.4byte	gCurrentSprite
.L_426a0:
	.4byte	gUnk_3000964
.L_426a4:
	.4byte	gPersistentSpriteData
.L_426a8:
	.4byte	gCurrentRoom
.L_426ac:
	.4byte	gSpriteData
.L_426b0:
	add	r2, #1
	cmp	r2, #23
	bgt	.L_426c6
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r4
	ldrb	r0, [r1, #24]
	cmp	r0, r3
	bne	.L_426b0
	mov	r0, #17
	strb	r0, [r1, #28]
.L_426c6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80426CC
func_80426CC:
	ldr	r0, .L_4272c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #29
	mov	r1, ip
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4272c:
	.4byte	gCurrentSprite


thumb_func_start func_8042730
func_8042730:
	push	{lr}
	ldr	r1, .L_4274c
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r2, #0]
	ldr	r0, .L_42750
	str	r0, [r1, #4]
	bl	func_80426CC
	pop	{r0}
	bx	r0
.L_4274c:
	.4byte	gCurrentSprite
.L_42750:
	.4byte	sUnk_83C7A5C


thumb_func_start func_8042754
func_8042754:
	push	{lr}
	ldr	r1, .L_42770
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #180	@ 0xb4
	strb	r0, [r2, #0]
	ldr	r0, .L_42774
	str	r0, [r1, #4]
	bl	func_80426CC
	pop	{r0}
	bx	r0
.L_42770:
	.4byte	gCurrentSprite
.L_42774:
	.4byte	sUnk_83C7A4C


thumb_func_start func_8042778
func_8042778:
	ldr	r2, .L_427a0
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4279c
	mov	r0, #18
	strb	r0, [r2, #28]
	ldr	r0, .L_427a4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #29
	strb	r0, [r3, #0]
.L_4279c:
	bx	lr
	.align	2, 0
.L_427a0:
	.4byte	gCurrentSprite
.L_427a4:
	.4byte	sUnk_83C79FC


thumb_func_start func_80427A8
func_80427A8:
	push	{r4, lr}
	ldr	r4, .L_42818
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_42812
	ldr	r0, .L_4281c
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #180	@ 0xb4
	strb	r0, [r2, #0]
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #64	@ 0x40
	mov	r2, #49	@ 0x31
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #50	@ 0x32
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #49	@ 0x31
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #50	@ 0x32
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #64	@ 0x40
	mov	r2, #49	@ 0x31
	bl	SpriteSpawnSecondary
	mov	r0, #24
	strb	r0, [r4, #28]
.L_42812:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_42818:
	.4byte	gCurrentSprite
.L_4281c:
	.4byte	sUnk_83C7A4C


thumb_func_start func_8042820
func_8042820:
	ldr	r2, .L_42848
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_42844
	mov	r0, #20
	strb	r0, [r2, #28]
	ldr	r0, .L_4284c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #14
	strb	r0, [r3, #0]
.L_42844:
	bx	lr
	.align	2, 0
.L_42848:
	.4byte	gCurrentSprite
.L_4284c:
	.4byte	sUnk_83C79BC


thumb_func_start func_8042850
func_8042850:
	ldr	r2, .L_42878
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_42874
	ldr	r0, .L_4287c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #180	@ 0xb4
	strb	r0, [r3, #0]
	mov	r0, #24
	strb	r0, [r2, #28]
.L_42874:
	bx	lr
	.align	2, 0
.L_42878:
	.4byte	gCurrentSprite
.L_4287c:
	.4byte	sUnk_83C7A4C


thumb_func_start SpriteToyBlockTriangle
SpriteToyBlockTriangle:
	push	{lr}
	ldr	r0, .L_428b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4288e
	cmp	r0, #12
	bne	.L_428c0
.L_4288e:
	bl	func_80421DC
	cmp	r0, #0
	beq	.L_428c0
	ldr	r1, .L_428b4
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_428b8
	ldr	r0, .L_428bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r1, #24]
	add	r0, r0, r1
	add	r0, r0, r2
	mov	r1, #2
	strb	r1, [r0, #0]
	b	.L_42c5e
.L_428b0:
	.4byte	gCurrentCarriedSprite
.L_428b4:
	.4byte	gCurrentSprite
.L_428b8:
	.4byte	gPersistentSpriteData
.L_428bc:
	.4byte	gCurrentRoom
.L_428c0:
	ldr	r2, .L_428e4
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_428d2
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_428d2:
	ldrb	r0, [r2, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_428da
	b	.L_42c46
.L_428da:
	lsl	r0, r0, #2
	ldr	r1, .L_428e8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_428e4:
	.4byte	gCurrentSprite
.L_428e8:
	.4byte	.L_428ec
.L_428ec:
	.4byte	.L_42a9c
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42aa0
	.4byte	.L_42aa4
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42aa0
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42aaa
	.4byte	.L_42c46
	.4byte	.L_42aaa
	.4byte	.L_42aae
	.4byte	.L_42ae2
	.4byte	.L_42c46
	.4byte	.L_42ae8
	.4byte	.L_42c46
	.4byte	.L_42ab4
	.4byte	.L_42ab8
	.4byte	.L_42abe
	.4byte	.L_42ac2
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42ac8
	.4byte	.L_42acc
	.4byte	.L_42ad2
	.4byte	.L_42ad6
	.4byte	.L_42aa0
	.4byte	.L_42c46
	.4byte	.L_42adc
	.4byte	.L_42c46
	.4byte	.L_42ae2
	.4byte	.L_42b44
	.4byte	.L_42ae8
	.4byte	.L_42b14
	.4byte	.L_42afa
	.4byte	.L_42b04
	.4byte	.L_42b0a
	.4byte	.L_42b14
	.4byte	.L_42b1a
	.4byte	.L_42b24
	.4byte	.L_42b2a
	.4byte	.L_42b34
	.4byte	.L_42b3a
	.4byte	.L_42b44
	.4byte	.L_42b4a
	.4byte	.L_42b54
	.4byte	.L_42b5a
	.4byte	.L_42b6a
	.4byte	.L_42b60
	.4byte	.L_42b74
	.4byte	.L_42b66
	.4byte	.L_42b6a
	.4byte	.L_42b70
	.4byte	.L_42b74
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42c46
	.4byte	.L_42ae2
	.4byte	.L_42ae8
	.4byte	.L_42b7a
	.4byte	.L_42b80
	.4byte	.L_42b86
	.4byte	.L_42b8c
	.4byte	.L_42b9e
	.4byte	.L_42ba4
	.4byte	.L_42b92
	.4byte	.L_42b98
	.4byte	.L_42baa
	.4byte	.L_42bae
	.4byte	.L_42bda
	.4byte	.L_42bde
	.4byte	.L_42bb4
	.4byte	.L_42bbc
	.4byte	.L_42be4
	.4byte	.L_42bec
	.4byte	.L_42bc2
	.4byte	.L_42bc6
	.4byte	.L_42bf2
	.4byte	.L_42bf6
	.4byte	.L_42bcc
	.4byte	.L_42bd4
	.4byte	.L_42bfc
	.4byte	.L_42c04
	.4byte	.L_42af4
	.4byte	.L_42aee
	.4byte	.L_42c0a
.L_42a9c:
	bl	func_804230C
.L_42aa0:
	bl	func_804236C
.L_42aa4:
	bl	func_8042384
	b	.L_42c5e
.L_42aaa:
	bl	func_80423EC
.L_42aae:
	bl	func_8023EE0
	b	.L_42c5e
.L_42ab4:
	bl	func_8042460
.L_42ab8:
	bl	SpriteUtilPushedRight
	b	.L_42c5e
.L_42abe:
	bl	func_8042484
.L_42ac2:
	bl	SpriteUtilPushedLeft
	b	.L_42c5e
.L_42ac8:
	bl	func_8042400
.L_42acc:
	bl	func_8024478
	b	.L_42c5e
.L_42ad2:
	bl	func_8042414
.L_42ad6:
	bl	func_802449C
	b	.L_42c5e
.L_42adc:
	bl	func_8042538
	b	.L_42c5e
.L_42ae2:
	bl	func_80424A8
	b	.L_42b44
.L_42ae8:
	bl	func_80424CC
	b	.L_42b14
.L_42aee:
	bl	func_80424F0
	b	.L_42c5e
.L_42af4:
	bl	func_8042514
	b	.L_42c5e
.L_42afa:
	bl	func_8024688
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b04:
	bl	func_80246B8
	b	.L_42c5e
.L_42b0a:
	bl	func_802473C
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b14:
	bl	func_802476C
	b	.L_42c5e
.L_42b1a:
	bl	func_80247F0
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b24:
	bl	func_8024820
	b	.L_42c5e
.L_42b2a:
	bl	func_80248A4
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b34:
	bl	func_80248D4
	b	.L_42c5e
.L_42b3a:
	bl	func_8024958
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b44:
	bl	func_8024988
	b	.L_42c5e
.L_42b4a:
	bl	func_8024A0C
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
.L_42b54:
	bl	func_8024A3C
	b	.L_42c5e
.L_42b5a:
	bl	func_8024AC0
	b	.L_42b6a
.L_42b60:
	bl	func_8024BEC
	b	.L_42b74
.L_42b66:
	bl	func_8042428
.L_42b6a:
	bl	func_8024AD4
	b	.L_42c5e
.L_42b70:
	bl	func_8042444
.L_42b74:
	bl	func_8024C00
	b	.L_42c5e
.L_42b7a:
	bl	func_804255C
	b	.L_42c5e
.L_42b80:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_42c5e
.L_42b86:
	bl	func_8042568
	b	.L_42c5e
.L_42b8c:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_42c5e
.L_42b92:
	bl	func_8042574
	b	.L_42c5e
.L_42b98:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_42c5e
.L_42b9e:
	bl	func_8042584
	b	.L_42c5e
.L_42ba4:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_42c5e
.L_42baa:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_42bae:
	bl	SpriteUtilThrownLeftSoft
	b	.L_42c5e
.L_42bb4:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #29]
.L_42bbc:
	bl	SpriteUtilThrownLeftHard
	b	.L_42c5e
.L_42bc2:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_42bc6:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_42c5e
.L_42bcc:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	mov	r0, #18
	strb	r0, [r2, #29]
.L_42bd4:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_42c5e
.L_42bda:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_42bde:
	bl	SpriteUtilThrownRightSoft
	b	.L_42c5e
.L_42be4:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	mov	r0, #2
	strb	r0, [r2, #29]
.L_42bec:
	bl	SpriteUtilThrownRightHard
	b	.L_42c5e
.L_42bf2:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_42bf6:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_42c5e
.L_42bfc:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	mov	r0, #17
	strb	r0, [r2, #29]
.L_42c04:
	bl	SpriteUtilThrownUpRightHard
	b	.L_42c5e
.L_42c0a:
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	bne	.L_42c46
	ldrb	r1, [r2, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_42c28
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_42c2e
.L_42c28:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_42c2e:
	strb	r0, [r1, #0]
	ldrb	r1, [r2, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_42c40
	bl	func_8024AC0
	b	.L_42c5e
.L_42c40:
	bl	func_8024BEC
	b	.L_42c5e
.L_42c46:
	ldr	r1, .L_42c64
	ldr	r0, .L_42c68
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	sub	r1, #1
	strb	r1, [r0, #0]
	bl	SpriteUtilDie
.L_42c5e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_42c64:
	.4byte	gPersistentSpriteData
.L_42c68:
	.4byte	gCurrentRoom


thumb_func_start SpriteToyBlockTriangleLock
SpriteToyBlockTriangleLock:
	push	{lr}
	ldr	r1, .L_42c84
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #1
	beq	.L_42c98
	cmp	r0, #1
	bgt	.L_42c88
	cmp	r0, #0
	beq	.L_42c92
	b	.L_42ca2
.L_42c84:
	.4byte	gCurrentSprite
.L_42c88:
	cmp	r0, #16
	beq	.L_42ca2
	cmp	r0, #17
	beq	.L_42c9e
	b	.L_42ca2
.L_42c92:
	bl	func_80425F4
	b	.L_42ca2
.L_42c98:
	bl	func_8042610
	b	.L_42ca2
.L_42c9e:
	bl	func_8042624
.L_42ca2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteToyBlockTriangleDoor
SpriteToyBlockTriangleDoor:
	push	{lr}
	ldr	r0, .L_42cc0
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #24
	bhi	.L_42d6c
	lsl	r0, r1, #2
	ldr	r1, .L_42cc4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_42cc0:
	.4byte	gCurrentSprite
.L_42cc4:
	.4byte	.L_42cc8
.L_42cc8:
	.4byte	.L_42d2c
	.4byte	.L_42d3c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d30
	.4byte	.L_42d46
	.4byte	.L_42d50
	.4byte	.L_42d6c
	.4byte	.L_42d64
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d6c
	.4byte	.L_42d5a
.L_42d2c:
	bl	func_8042730
.L_42d30:
	ldr	r1, .L_42d38
	mov	r0, #1
	strb	r0, [r1, #31]
	b	.L_42d6c
.L_42d38:
	.4byte	gCurrentSprite
.L_42d3c:
	bl	func_8042754
	bl	func_8026838
	b	.L_42d6c
.L_42d46:
	mov	r0, #1
	strb	r0, [r2, #31]
	bl	func_8042778
	b	.L_42d6c
.L_42d50:
	mov	r0, #1
	strb	r0, [r2, #31]
	bl	func_80427A8
	b	.L_42d6c
.L_42d5a:
	bl	func_8042820
	bl	func_8026838
	b	.L_42d6c
.L_42d64:
	bl	func_8042850
	bl	func_8026838
.L_42d6c:
	pop	{r0}
	bx	r0
