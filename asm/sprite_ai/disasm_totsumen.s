.include "macros.s.inc"


thumb_func_start func_8032320
func_8032320:
	push	{r4, lr}
	ldr	r3, .L_32384
	mov	r2, #0
	mov	r0, #33	@ 0x21
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	mov	r0, #35	@ 0x23
	add	r0, r0, r3
	mov	ip, r0
	mov	r0, #64	@ 0x40
	mov	r4, ip
	strb	r0, [r4, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	mov	r0, #37	@ 0x25
	add	r0, r0, r3
	mov	ip, r0
	mov	r0, #32
	mov	r4, ip
	strb	r0, [r4, #0]
	mov	r0, #38	@ 0x26
	add	r0, r0, r3
	mov	ip, r0
	mov	r0, #28
	mov	r4, ip
	strb	r0, [r4, #0]
	ldr	r0, .L_32388
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r2, [r3, #20]
	strb	r1, [r3, #28]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
.L_32384:
	.4byte	gCurrentSprite
.L_32388:
	.4byte	sUnk_83BB0E8


thumb_func_start func_803238C
func_803238C:
	ldr	r0, .L_323a8
	ldr	r1, .L_323ac
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #30]
	add	r0, #40	@ 0x28
	mov	r1, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
.L_323a8:
	.4byte	gCurrentSprite
.L_323ac:
	.4byte	sUnk_83BB0E8


thumb_func_start func_80323B0
func_80323B0:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	mov	r0, #56	@ 0x38
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_323f0
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_32424
	ldr	r3, .L_323f4
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_323f8
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_3240c
.L_323f0:
	.4byte	gSpriteAiCollisionResult
.L_323f4:
	.4byte	gCurrentSprite
.L_323f8:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_3240c:
	ldr	r0, .L_3241c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_324f0
	ldr	r1, .L_32420
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_324f4
.L_3241c:
	.4byte	gSpriteAiCollisionFlags
.L_32420:
	.4byte	gCurrentSprite
.L_32424:
	ldr	r4, .L_3247c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_32484
	cmp	r5, #8
	beq	.L_32488
	cmp	r5, #4
	beq	.L_324e4
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_324f0
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_324f0
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_32480
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_324e4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_324d2
.L_3247c:
	.4byte	gCurrentSprite
.L_32480:
	.4byte	gSpriteAiCollisionFlags
.L_32484:
	cmp	r5, #4
	bne	.L_3248e
.L_32488:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_324f4
.L_3248e:
	cmp	r5, #8
	beq	.L_324e4
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_324f0
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_324f0
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_324ec
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_324e4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_324d2:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_324f0
.L_324e4:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_324f4
	.align	2, 0
.L_324ec:
	.4byte	gSpriteAiCollisionFlags
.L_324f0:
	bl	func_8026374
.L_324f4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80324FC
func_80324FC:
	ldr	r1, .L_3251c
	ldr	r0, .L_32520
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #13
	strb	r0, [r2, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_3251c:
	.4byte	gCurrentSprite
.L_32520:
	.4byte	sUnk_83BB2E8


thumb_func_start func_8032524
func_8032524:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_32540
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_32548
	ldr	r1, .L_32544
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_3259c
	.align	2, 0
.L_32540:
	.4byte	gSpriteAiCollisionResult
.L_32544:
	.4byte	gCurrentSprite
.L_32548:
	ldr	r2, .L_32584
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_3259c
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_3258c
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_32588
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_3259c
.L_32584:
	.4byte	gCurrentSprite
.L_32588:
	.4byte	sUnk_83BB308
.L_3258c:
	ldr	r0, .L_325a0
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
.L_3259c:
	pop	{r0}
	bx	r0
.L_325a0:
	.4byte	sUnk_83BB0E8


thumb_func_start func_80325A4
func_80325A4:
	ldr	r2, .L_325d4
	ldr	r0, .L_325d8
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
	beq	.L_325d0
	mov	r0, #5
	strb	r0, [r2, #30]
.L_325d0:
	bx	lr
	.align	2, 0
.L_325d4:
	.4byte	gCurrentSprite
.L_325d8:
	.4byte	sUnk_83BB240


thumb_func_start func_80325DC
func_80325DC:
	push	{lr}
	ldr	r1, .L_325ec
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_80325A4
	pop	{r0}
	bx	r0
.L_325ec:
	.4byte	gCurrentSprite


thumb_func_start func_80325F0
func_80325F0:
	push	{lr}
	ldr	r1, .L_32600
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_80325A4
	pop	{r0}
	bx	r0
.L_32600:
	.4byte	gCurrentSprite


thumb_func_start func_8032604
func_8032604:
	ldr	r1, .L_32624
	ldr	r0, .L_32628
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #57	@ 0x39
	strb	r0, [r2, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_32624:
	.4byte	gCurrentSprite
.L_32628:
	.4byte	sUnk_83BB158


thumb_func_start func_803262C
func_803262C:
	push	{r4, lr}
	ldr	r4, .L_32664
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_3266c
	add	r0, r1, #0
	cmp	r0, #42	@ 0x2a
	bne	.L_3264c
	mov	r0, #3
	strb	r0, [r4, #30]
.L_3264c:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_32668
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3267e
	mov	r0, #27
	strb	r0, [r4, #28]
	b	.L_3267e
	.align	2, 0
.L_32664:
	.4byte	gCurrentSprite
.L_32668:
	.4byte	gSpriteAiCollisionResult
.L_3266c:
	ldr	r0, .L_32684
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
	mov	r0, #87	@ 0x57
	bl	m4aSongNumStart
.L_3267e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_32684:
	.4byte	sUnk_83BB1A0


thumb_func_start func_8032688
func_8032688:
	push	{r4, lr}
	ldr	r4, .L_326dc
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3272a
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_326e0
	ldrb	r1, [r0, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	bne	.L_326e8
	bl	func_8023B88
	ldr	r0, .L_326e4
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_326e8
	mov	r0, #70	@ 0x46
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrh	r0, [r4, #10]
	add	r0, #8
	b	.L_327c2
	.align	2, 0
.L_326dc:
	.4byte	gCurrentSprite
.L_326e0:
	.4byte	gSpriteAiCollisionFlags
.L_326e4:
	.4byte	gSpriteAiCollisionResult
.L_326e8:
	ldr	r4, .L_3271c
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_32720
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_32724
	cmp	r1, #17
	beq	.L_327a4
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	b	.L_327c4
	.align	2, 0
.L_3271c:
	.4byte	gCurrentSprite
.L_32720:
	.4byte	gSpriteAiCollisionFlags
.L_32724:
	ldrh	r0, [r4, #10]
	add	r0, #12
	b	.L_327c2
.L_3272a:
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_32770
	ldrb	r1, [r0, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	bne	.L_32778
	bl	func_8023B88
	ldr	r0, .L_32774
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_32778
	mov	r0, #68	@ 0x44
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, #8
	b	.L_327c2
	.align	2, 0
.L_32770:
	.4byte	gSpriteAiCollisionFlags
.L_32774:
	.4byte	gSpriteAiCollisionResult
.L_32778:
	ldr	r4, .L_327b0
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_327b4
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_327be
	cmp	r1, #17
	bne	.L_327b8
.L_327a4:
	mov	r0, #114	@ 0x72
	strb	r0, [r4, #28]
	mov	r0, #88	@ 0x58
	bl	m4aSongNumStart
	b	.L_327c4
.L_327b0:
	.4byte	gCurrentSprite
.L_327b4:
	.4byte	gSpriteAiCollisionFlags
.L_327b8:
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	b	.L_327c4
.L_327be:
	ldrh	r0, [r4, #10]
	sub	r0, #12
.L_327c2:
	strh	r0, [r4, #10]
.L_327c4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80327CC
func_80327CC:
	push	{lr}
	ldr	r1, .L_327f0
	ldrb	r0, [r1, #30]
	cmp	r0, #3
	bne	.L_327e4
	ldr	r0, .L_327f4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #5
	strb	r0, [r1, #30]
.L_327e4:
	mov	r0, #89	@ 0x59
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_327f0:
	.4byte	gCurrentSprite
.L_327f4:
	.4byte	sUnk_83BB240


thumb_func_start func_80327F8
func_80327F8:
	ldr	r0, .L_3281c
	ldr	r1, .L_32820
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #115	@ 0x73
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	strb	r2, [r1, #0]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_3281c:
	.4byte	gCurrentSprite
.L_32820:
	.4byte	sUnk_83BB1D8


thumb_func_start func_8032824
func_8032824:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_3285c
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_32860
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_32864
	cmp	r1, r0
	bne	.L_32868
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_32872
	.align	2, 0
.L_3285c:
	.4byte	gCurrentSprite
.L_32860:
	.4byte	sUnk_83BB480
.L_32864:
	.4byte	0x7FFF
.L_32868:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_32872:
	strh	r0, [r3, #8]
	ldr	r4, .L_328b8
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	bls	.L_32904
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_328bc
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_3289e
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_3289e:
	ldr	r0, .L_328c0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_3293c
	strh	r2, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_328c4
	mov	r0, #54	@ 0x36
	b	.L_328c6
	.align	2, 0
.L_328b8:
	.4byte	gCurrentSprite
.L_328bc:
	.4byte	gUnk_30000A0
.L_328c0:
	.4byte	gSpriteAiCollisionResult
.L_328c4:
	mov	r0, #52	@ 0x34
.L_328c6:
	strb	r0, [r4, #28]
	ldr	r2, .L_328fc
	ldr	r0, .L_32900
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
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #89	@ 0x59
	bl	m4aSongNumStart
	b	.L_3295a
	.align	2, 0
.L_328fc:
	.4byte	gCurrentSprite
.L_32900:
	.4byte	sUnk_83BB240
.L_32904:
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_32934
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_3293c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_32938
	mov	r0, #67	@ 0x43
	b	.L_3293a
	.align	2, 0
.L_32934:
	.4byte	gSpriteAiCollisionFlags
.L_32938:
	mov	r0, #69	@ 0x45
.L_3293a:
	strb	r0, [r4, #28]
.L_3293c:
	ldr	r2, .L_32950
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_32954
	ldrh	r0, [r2, #10]
	sub	r0, #8
	b	.L_32958
	.align	2, 0
.L_32950:
	.4byte	gCurrentSprite
.L_32954:
	ldrh	r0, [r2, #10]
	add	r0, #8
.L_32958:
	strh	r0, [r2, #10]
.L_3295a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8032960
func_8032960:
	ldr	r1, .L_32980
	ldr	r0, .L_32984
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r2, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_32980:
	.4byte	gCurrentSprite
.L_32984:
	.4byte	sUnk_83BB378


thumb_func_start func_8032988
func_8032988:
	ldr	r0, .L_329a4
	ldr	r1, .L_329a8
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #84	@ 0x54
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_329a4:
	.4byte	gCurrentSprite
.L_329a8:
	.4byte	sUnk_83BB278


thumb_func_start func_80329AC
func_80329AC:
	push	{r4, lr}
	ldr	r1, .L_329cc
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r2, [r0, #0]
	add	r3, r2, #0
	add	r0, r2, #0
	sub	r0, #28
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r4, r1, #0
	cmp	r0, #28
	bls	.L_329d0
	bl	func_8023CD8
	b	.L_32a1e
.L_329cc:
	.4byte	gCurrentSprite
.L_329d0:
	cmp	r2, #56	@ 0x38
	beq	.L_329d8
	cmp	r2, #49	@ 0x31
	bne	.L_329e0
.L_329d8:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	strh	r0, [r4, #8]
	b	.L_32a14
.L_329e0:
	cmp	r2, #42	@ 0x2a
	bne	.L_32a00
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	eor	r1, r0
	mov	r3, #0
	mov	r2, #0
	strh	r1, [r4, #0]
	ldr	r0, .L_329fc
	str	r0, [r4, #4]
	strh	r2, [r4, #20]
	strb	r3, [r4, #22]
	b	.L_32a04
	.align	2, 0
.L_329fc:
	.4byte	sUnk_83BB2B0
.L_32a00:
	cmp	r2, #35	@ 0x23
	bne	.L_32a0c
.L_32a04:
	ldrh	r0, [r4, #8]
	add	r0, #32
	strh	r0, [r4, #8]
	b	.L_32a14
.L_32a0c:
	cmp	r3, #28
	bne	.L_32a14
	mov	r0, #33	@ 0x21
	strb	r0, [r4, #30]
.L_32a14:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_32a1e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8032A24
func_8032A24:
	ldr	r0, .L_32a3c
	ldr	r1, .L_32a40
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #28
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_32a3c:
	.4byte	gCurrentSprite
.L_32a40:
	.4byte	sUnk_83BB120


thumb_func_start func_8032A44
func_8032A44:
	ldr	r1, .L_32a64
	ldr	r0, .L_32a68
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
.L_32a64:
	.4byte	gCurrentSprite
.L_32a68:
	.4byte	sUnk_83BB240


thumb_func_start func_8032A6C
func_8032A6C:
	push	{r4, r5, lr}
	ldr	r5, .L_32ad0
	ldr	r0, .L_32ad4
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
	strb	r4, [r5, #26]
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_32ad8
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_32adc
	ldr	r0, .L_32ae0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_32ad0:
	.4byte	gCurrentSprite
.L_32ad4:
	.4byte	sUnk_83BB3F0
.L_32ad8:
	.4byte	0xFEFF
.L_32adc:
	.4byte	gPersistentSpriteData
.L_32ae0:
	.4byte	gCurrentRoom


thumb_func_start func_8032AE4
func_8032AE4:
	push	{lr}
	ldr	r1, .L_32af4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8032A6C
	pop	{r0}
	bx	r0
.L_32af4:
	.4byte	gCurrentSprite


thumb_func_start func_8032AF8
func_8032AF8:
	push	{lr}
	ldr	r1, .L_32b08
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8032A6C
	pop	{r0}
	bx	r0
.L_32b08:
	.4byte	gCurrentSprite


thumb_func_start func_8032B0C
func_8032B0C:
	push	{r4, lr}
	ldr	r4, .L_32b60
	ldr	r0, .L_32b64
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r1, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_32b68
	ldr	r0, .L_32b6c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_32b60:
	.4byte	gCurrentSprite
.L_32b64:
	.4byte	sUnk_83BB3F0
.L_32b68:
	.4byte	gPersistentSpriteData
.L_32b6c:
	.4byte	gCurrentRoom


thumb_func_start func_8032B70
func_8032B70:
	push	{lr}
	ldr	r1, .L_32b80
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8032B0C
	pop	{r0}
	bx	r0
.L_32b80:
	.4byte	gCurrentSprite


thumb_func_start func_8032B84
func_8032B84:
	push	{lr}
	ldr	r1, .L_32b94
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8032B0C
	pop	{r0}
	bx	r0
.L_32b94:
	.4byte	gCurrentSprite


thumb_func_start func_8032B98
func_8032B98:
	ldr	r2, .L_32bc4
	ldr	r0, .L_32bc8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_32bc4:
	.4byte	gCurrentSprite
.L_32bc8:
	.4byte	sUnk_83BB360


thumb_func_start func_8032BCC
func_8032BCC:
	push	{lr}
	ldr	r1, .L_32bdc
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8032B98
	pop	{r0}
	bx	r0
.L_32bdc:
	.4byte	gCurrentSprite


thumb_func_start func_8032BE0
func_8032BE0:
	push	{lr}
	ldr	r1, .L_32bf0
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8032B98
	pop	{r0}
	bx	r0
.L_32bf0:
	.4byte	gCurrentSprite


thumb_func_start func_8032BF4
func_8032BF4:
	ldr	r2, .L_32c1c
	ldr	r0, .L_32c20
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_32c1c:
	.4byte	gCurrentSprite
.L_32c20:
	.4byte	sUnk_83BB3C0


thumb_func_start func_8032C24
func_8032C24:
	push	{lr}
	ldr	r1, .L_32c34
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8032BF4
	pop	{r0}
	bx	r0
.L_32c34:
	.4byte	gCurrentSprite


thumb_func_start func_8032C38
func_8032C38:
	push	{lr}
	ldr	r1, .L_32c48
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8032BF4
	pop	{r0}
	bx	r0
.L_32c48:
	.4byte	gCurrentSprite


thumb_func_start func_8032C4C
func_8032C4C:
	ldr	r1, .L_32c68
	ldr	r0, .L_32c6c
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
.L_32c68:
	.4byte	gCurrentSprite
.L_32c6c:
	.4byte	sUnk_83BB240


thumb_func_start func_8032C70
func_8032C70:
	push	{lr}
	ldr	r1, .L_32c80
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8032C4C
	pop	{r0}
	bx	r0
.L_32c80:
	.4byte	gCurrentSprite


thumb_func_start func_8032C84
func_8032C84:
	push	{lr}
	ldr	r1, .L_32c94
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8032C4C
	pop	{r0}
	bx	r0
.L_32c94:
	.4byte	gCurrentSprite


thumb_func_start func_8032C98
func_8032C98:
	push	{r4, lr}
	ldr	r1, .L_32cb0
	ldrb	r0, [r1, #30]
	add	r4, r1, #0
	cmp	r0, #5
	bne	.L_32cb8
	ldr	r0, .L_32cb4
	str	r0, [r4, #4]
	add	r1, #39	@ 0x27
	mov	r0, #7
	b	.L_32cc2
	.align	2, 0
.L_32cb0:
	.4byte	gCurrentSprite
.L_32cb4:
	.4byte	sUnk_83BB3A8
.L_32cb8:
	ldr	r0, .L_32d04
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #8
.L_32cc2:
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_32d08
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	ldr	r1, .L_32d0c
	ldr	r0, .L_32d10
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_32d04:
	.4byte	sUnk_83BB388
.L_32d08:
	.4byte	0xFEFF
.L_32d0c:
	.4byte	gPersistentSpriteData
.L_32d10:
	.4byte	gCurrentRoom


thumb_func_start func_8032D14
func_8032D14:
	push	{r4, lr}
	ldr	r4, .L_32d40
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_32d44
	ldr	r0, .L_32d48
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_32d40:
	.4byte	gCurrentSprite
.L_32d44:
	.4byte	gPersistentSpriteData
.L_32d48:
	.4byte	gCurrentRoom


thumb_func_start func_8032D4C
func_8032D4C:
	ldr	r2, .L_32d70
	ldr	r0, .L_32d74
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
.L_32d70:
	.4byte	gCurrentSprite
.L_32d74:
	.4byte	sUnk_83BB240


thumb_func_start func_8032D78
func_8032D78:
	push	{lr}
	ldr	r1, .L_32d88
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8032D4C
	pop	{r0}
	bx	r0
.L_32d88:
	.4byte	gCurrentSprite


thumb_func_start func_8032D8C
func_8032D8C:
	push	{lr}
	ldr	r1, .L_32d9c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8032D4C
	pop	{r0}
	bx	r0
.L_32d9c:
	.4byte	gCurrentSprite


thumb_func_start func_8032DA0
func_8032DA0:
	ldr	r2, .L_32dc8
	ldr	r0, .L_32dcc
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #19
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_32dc8:
	.4byte	gCurrentSprite
.L_32dcc:
	.4byte	sUnk_83BB220


thumb_func_start func_8032DD0
func_8032DD0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_32e08
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_32e52
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_32e0c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_32e10
	mov	r0, #29
	b	.L_32e54
.L_32e08:
	.4byte	gCurrentSprite
.L_32e0c:
	.4byte	gSpriteAiCollisionFlags
.L_32e10:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_32e3c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_32e40
	cmp	r1, r0
	bne	.L_32e44
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_32e56
	.align	2, 0
.L_32e3c:
	.4byte	sUnk_8352B18
.L_32e40:
	.4byte	0x7FFF
.L_32e44:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_32e56
.L_32e52:
	mov	r0, #27
.L_32e54:
	strb	r0, [r4, #28]
.L_32e56:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8032E5C
func_8032E5C:
	ldr	r1, .L_32e6c
	ldr	r0, .L_32e70
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_32e6c:
	.4byte	gCurrentSprite
.L_32e70:
	.4byte	sUnk_83BB240


thumb_func_start func_8032E74
func_8032E74:
	push	{lr}
	ldr	r1, .L_32e84
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8032E5C
	pop	{r0}
	bx	r0
.L_32e84:
	.4byte	gCurrentSprite


thumb_func_start func_8032E88
func_8032E88:
	push	{lr}
	ldr	r1, .L_32e98
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8032E5C
	pop	{r0}
	bx	r0
.L_32e98:
	.4byte	gCurrentSprite


thumb_func_start func_8032E9C
func_8032E9C:
	ldr	r1, .L_32eb0
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_32eb4
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_32eb0:
	.4byte	gCurrentSprite
.L_32eb4:
	.4byte	sUnk_83BB240


thumb_func_start func_8032EB8
func_8032EB8:
	push	{lr}
	ldr	r1, .L_32ec8
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_8032E9C
	pop	{r0}
	bx	r0
.L_32ec8:
	.4byte	gCurrentSprite


thumb_func_start func_8032ECC
func_8032ECC:
	push	{lr}
	ldr	r1, .L_32edc
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_8032E9C
	pop	{r0}
	bx	r0
.L_32edc:
	.4byte	gCurrentSprite


thumb_func_start SpriteTotsumen
SpriteTotsumen:
	push	{lr}
	ldr	r2, .L_32f08
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_32ef4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_32ef4:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_32efc
	b	.L_332be
.L_32efc:
	lsl	r0, r0, #2
	ldr	r1, .L_32f0c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_32f08:
	.4byte	gCurrentSprite
.L_32f0c:
	.4byte	.L_32f10
.L_32f10:
	.4byte	.L_330e0
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_330e6
	.4byte	.L_330ea
	.4byte	.L_330f0
	.4byte	.L_330f4
	.4byte	.L_332be
	.4byte	.L_330f4
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_33114
	.4byte	.L_33118
	.4byte	.L_3311e
	.4byte	.L_33122
	.4byte	.L_33128
	.4byte	.L_3312c
	.4byte	.L_33132
	.4byte	.L_33136
	.4byte	.L_3313c
	.4byte	.L_33140
	.4byte	.L_33146
	.4byte	.L_3314a
	.4byte	.L_33150
	.4byte	.L_33154
	.4byte	.L_3315a
	.4byte	.L_3315e
	.4byte	.L_33164
	.4byte	.L_33168
	.4byte	.L_33172
	.4byte	.L_33176
	.4byte	.L_33180
	.4byte	.L_33184
	.4byte	.L_3318a
	.4byte	.L_3318e
	.4byte	.L_33194
	.4byte	.L_33198
	.4byte	.L_3319e
	.4byte	.L_331a2
	.4byte	.L_331a8
	.4byte	.L_331f4
	.4byte	.L_331ae
	.4byte	.L_331ca
	.4byte	.L_331b4
	.4byte	.L_331bc
	.4byte	.L_331c2
	.4byte	.L_331ca
	.4byte	.L_331d0
	.4byte	.L_331d8
	.4byte	.L_331de
	.4byte	.L_331e6
	.4byte	.L_331ec
	.4byte	.L_331f4
	.4byte	.L_331fa
	.4byte	.L_33202
	.4byte	.L_33208
	.4byte	.L_33218
	.4byte	.L_3320e
	.4byte	.L_33222
	.4byte	.L_33214
	.4byte	.L_33218
	.4byte	.L_3321e
	.4byte	.L_33222
	.4byte	.L_33228
	.4byte	.L_3322c
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_3313c
	.4byte	.L_33146
	.4byte	.L_33232
	.4byte	.L_33238
	.4byte	.L_3323e
	.4byte	.L_33244
	.4byte	.L_33256
	.4byte	.L_3325c
	.4byte	.L_3324a
	.4byte	.L_33250
	.4byte	.L_33262
	.4byte	.L_33266
	.4byte	.L_3328a
	.4byte	.L_3328e
	.4byte	.L_3326c
	.4byte	.L_33270
	.4byte	.L_33294
	.4byte	.L_33298
	.4byte	.L_33276
	.4byte	.L_3327a
	.4byte	.L_3329e
	.4byte	.L_332a2
	.4byte	.L_33280
	.4byte	.L_33284
	.4byte	.L_332a8
	.4byte	.L_332ac
	.4byte	.L_332b2
	.4byte	.L_332b8
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_332be
	.4byte	.L_330fa
	.4byte	.L_330fe
	.4byte	.L_332be
	.4byte	.L_33104
	.4byte	.L_3310a
	.4byte	.L_3310e
.L_330e0:
	bl	func_8032320
	b	.L_332c2
.L_330e6:
	bl	func_803238C
.L_330ea:
	bl	func_80323B0
	b	.L_332c2
.L_330f0:
	bl	func_80324FC
.L_330f4:
	bl	func_8032524
	b	.L_332c2
.L_330fa:
	bl	func_8032604
.L_330fe:
	bl	func_803262C
	b	.L_332c2
.L_33104:
	bl	func_8032688
	b	.L_332c2
.L_3310a:
	bl	func_80327F8
.L_3310e:
	bl	func_8032824
	b	.L_332c2
.L_33114:
	bl	func_8032960
.L_33118:
	bl	func_8023C94
	b	.L_332c2
.L_3311e:
	bl	func_8032988
.L_33122:
	bl	func_80329AC
	b	.L_332c2
.L_33128:
	bl	func_8032A24
.L_3312c:
	bl	func_8023D48
	b	.L_332c2
.L_33132:
	bl	func_8032A44
.L_33136:
	bl	func_8023EE0
	b	.L_332c2
.L_3313c:
	bl	func_8032AE4
.L_33140:
	bl	SpriteUtilFallOffscreenRight
	b	.L_332c2
.L_33146:
	bl	func_8032AF8
.L_3314a:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_332c2
.L_33150:
	bl	func_8032BCC
.L_33154:
	bl	SpriteUtilPushedRight
	b	.L_332c2
.L_3315a:
	bl	func_8032BE0
.L_3315e:
	bl	SpriteUtilPushedLeft
	b	.L_332c2
.L_33164:
	bl	func_8032C24
.L_33168:
	bl	SpriteUtilPushedRight
	bl	func_80238E8
	b	.L_332c2
.L_33172:
	bl	func_8032C38
.L_33176:
	bl	SpriteUtilPushedLeft
	bl	func_80238E8
	b	.L_332c2
.L_33180:
	bl	func_8032C70
.L_33184:
	bl	func_8024478
	b	.L_332c2
.L_3318a:
	bl	func_8032C84
.L_3318e:
	bl	func_802449C
	b	.L_332c2
.L_33194:
	bl	func_80244C0
.L_33198:
	bl	func_80244E0
	b	.L_332c2
.L_3319e:
	bl	func_8032C98
.L_331a2:
	bl	SpriteUtilDieAfterDelay
	b	.L_332c2
.L_331a8:
	bl	func_80325DC
	b	.L_331f4
.L_331ae:
	bl	func_80325F0
	b	.L_331ca
.L_331b4:
	bl	func_80327CC
	bl	func_8024688
.L_331bc:
	bl	func_80246B8
	b	.L_332c2
.L_331c2:
	bl	func_80327CC
	bl	func_802473C
.L_331ca:
	bl	func_802476C
	b	.L_332c2
.L_331d0:
	bl	func_80327CC
	bl	func_80247F0
.L_331d8:
	bl	func_8024820
	b	.L_332c2
.L_331de:
	bl	func_80327CC
	bl	func_80248A4
.L_331e6:
	bl	func_80248D4
	b	.L_332c2
.L_331ec:
	bl	func_80327CC
	bl	func_8024958
.L_331f4:
	bl	func_8024988
	b	.L_332c2
.L_331fa:
	bl	func_80327CC
	bl	func_8024A0C
.L_33202:
	bl	func_8024A3C
	b	.L_332c2
.L_33208:
	bl	func_8024AC0
	b	.L_33218
.L_3320e:
	bl	func_8024BEC
	b	.L_33222
.L_33214:
	bl	func_8032D78
.L_33218:
	bl	func_8024AD4
	b	.L_332c2
.L_3321e:
	bl	func_8032D8C
.L_33222:
	bl	func_8024C00
	b	.L_332c2
.L_33228:
	bl	func_8032DA0
.L_3322c:
	bl	func_8032DD0
	b	.L_332c2
.L_33232:
	bl	func_8032E74
	b	.L_332c2
.L_33238:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_332c2
.L_3323e:
	bl	func_8032E88
	b	.L_332c2
.L_33244:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_332c2
.L_3324a:
	bl	func_8032EB8
	b	.L_332c2
.L_33250:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_332c2
.L_33256:
	bl	func_8032ECC
	b	.L_332c2
.L_3325c:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_332c2
.L_33262:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_33266:
	bl	SpriteUtilThrownLeftSoft
	b	.L_332c2
.L_3326c:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_33270:
	bl	SpriteUtilThrownLeftHard
	b	.L_332c2
.L_33276:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_3327a:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_332c2
.L_33280:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_33284:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_332c2
.L_3328a:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_3328e:
	bl	SpriteUtilThrownRightSoft
	b	.L_332c2
.L_33294:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_33298:
	bl	SpriteUtilThrownRightHard
	b	.L_332c2
.L_3329e:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_332a2:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_332c2
.L_332a8:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_332ac:
	bl	SpriteUtilThrownUpRightHard
	b	.L_332c2
.L_332b2:
	bl	func_8032B84
	b	.L_332c2
.L_332b8:
	bl	func_8032B70
	b	.L_332c2
.L_332be:
	bl	func_8032D14
.L_332c2:
	pop	{r0}
	bx	r0
	.align	2, 0
