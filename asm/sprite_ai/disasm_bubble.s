.include "macros.s.inc"


thumb_func_start func_80352B0
func_80352B0:
	ldr	r0, .L_35300
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_35304
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_35308
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #6
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_35300:
	.4byte	gCurrentSprite
.L_35304:
	.4byte	0x40C
.L_35308:
	.4byte	sUnk_83BC8E4


thumb_func_start func_803530C
func_803530C:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_35344
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_3533a
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #155	@ 0x9b
	bl	func_801E3A8
	mov	r0, #250	@ 0xfa
	strb	r0, [r6, #0]
.L_3533a:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_35344:
	.4byte	gCurrentSprite


thumb_func_start func_8035348
func_8035348:
	ldr	r1, .L_35368
	mov	r2, #0
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	ldr	r0, .L_3536c
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r1, #31]
	bx	lr
	.align	2, 0
.L_35368:
	.4byte	gCurrentSprite
.L_3536c:
	.4byte	sUnk_83BC8BC


thumb_func_start func_8035370
func_8035370:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, .L_353a0
	ldr	r1, .L_353a4
	add	r4, r1, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	lsr	r0, r0, #3
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r2, [r0, #0]
	add	r3, r1, #0
	add	r3, #40	@ 0x28
	ldrb	r0, [r3, #0]
	add	r5, r1, #0
	cmp	r0, #0
	beq	.L_353a8
	ldrh	r0, [r5, #10]
	add	r0, r0, r2
	b	.L_353ac
	.align	2, 0
.L_353a0:
	.4byte	sUnk_82DEBC2
.L_353a4:
	.4byte	gCurrentSprite
.L_353a8:
	ldrh	r0, [r5, #10]
	sub	r0, r0, r2
.L_353ac:
	strh	r0, [r5, #10]
	ldrb	r0, [r4, #0]
	cmp	r0, #94	@ 0x5e
	bls	.L_353c0
	mov	r0, #0
	strb	r0, [r4, #0]
	ldrb	r0, [r3, #0]
	mov	r1, #1
	eor	r0, r1
	strb	r0, [r3, #0]
.L_353c0:
	add	r4, r5, #0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #1
	mov	r1, r8
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #8]
	sub	r0, r1, #2
	mov	r2, #0
	mov	sl, r2
	strh	r0, [r4, #8]
	add	r7, r4, #0
	add	r7, #41	@ 0x29
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	bne	.L_35454
	add	r0, r1, #0
	sub	r0, #66	@ 0x42
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
	ldr	r0, .L_35414
	mov	r9, r0
	ldrb	r1, [r0, #0]
	mov	r6, #15
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_35418
	add	r0, r4, #0
	b	.L_35440
	.align	2, 0
.L_35414:
	.4byte	gSpriteAiCollisionFlags
.L_35418:
	ldrh	r0, [r5, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r5, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r5, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	mov	r0, r9
	ldrb	r1, [r0, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_35458
	add	r0, r5, #0
.L_35440:
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r2, #1
	eor	r1, r2
	strb	r1, [r0, #0]
	strb	r6, [r7, #0]
	mov	r2, sl
	mov	r1, r8
	strb	r2, [r1, #0]
	b	.L_354c6
.L_35454:
	sub	r0, #1
	strb	r0, [r7, #0]
.L_35458:
	ldr	r4, .L_354a4
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, r5, #0
	bl	func_8023BFC
	ldr	r6, .L_354a8
	ldrb	r1, [r6, #0]
	mov	r7, #15
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3549c
	ldrh	r1, [r4, #10]
	add	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, r5, #0
	bl	func_8023BFC
	ldrb	r1, [r6, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_354ac
.L_3549c:
	bl	func_8035348
	b	.L_354c6
	.align	2, 0
.L_354a4:
	.4byte	gCurrentSprite
.L_354a8:
	.4byte	gSpriteAiCollisionFlags
.L_354ac:
	ldrh	r0, [r4, #8]
	sub	r0, #40	@ 0x28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_354d4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_354c6
	bl	func_8035348
.L_354c6:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_354d4:
	.4byte	gUnk_30000A0


thumb_func_start func_80354D8
func_80354D8:
	ldr	r2, .L_354f4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_354f8
	mov	r0, #1
	strb	r0, [r2, #31]
	b	.L_354fa
	.align	2, 0
.L_354f4:
	.4byte	gCurrentSprite
.L_354f8:
	strh	r0, [r2, #0]
.L_354fa:
	bx	lr


thumb_func_start func_80354FC
func_80354FC:
	push	{r4, lr}
	ldr	r3, .L_35570
	ldrh	r0, [r3, #0]
	ldr	r1, .L_35574
	and	r1, r0
	mov	r4, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	orr	r1, r0
	orr	r1, r4
	strh	r1, [r3, #0]
	add	r2, r3, #0
	add	r2, #32
	mov	r0, #32
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r2, #2
	mov	r0, #16
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #144	@ 0x90
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r2, #0]
	mov	r0, #74	@ 0x4a
	strb	r0, [r3, #30]
	mov	r2, #1
	strb	r2, [r3, #26]
	mov	r0, #64	@ 0x40
	and	r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #0
	beq	.L_35580
	ldr	r0, .L_35578
	ldrb	r0, [r0, #0]
	cmp	r0, #33	@ 0x21
	bne	.L_35560
	mov	r0, #5
	strb	r0, [r3, #25]
.L_35560:
	ldrh	r1, [r3, #0]
	ldr	r0, .L_3557c
	and	r0, r1
	strh	r0, [r3, #0]
	bl	func_8035348
	b	.L_355be
	.align	2, 0
.L_35570:
	.4byte	gCurrentSprite
.L_35574:
	.4byte	0xFFFB
.L_35578:
	.4byte	gUnk_3000027
.L_3557c:
	.4byte	0xFFBF
.L_35580:
	ldr	r0, .L_355b0
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #26
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r1, .L_355b4
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_355b8
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
	b	.L_355be
.L_355b0:
	.4byte	sUnk_83BC894
.L_355b4:
	.4byte	gWarioData
.L_355b8:
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
.L_355be:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80355C4
func_80355C4:
	ldr	r2, .L_355e0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_355e4
	mov	r0, #1
	strb	r0, [r2, #31]
	b	.L_355f0
	.align	2, 0
.L_355e0:
	.4byte	gCurrentSprite
.L_355e4:
	ldr	r0, .L_355f4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_355f0:
	bx	lr
	.align	2, 0
.L_355f4:
	.4byte	sUnk_83BC84C


thumb_func_start SpriteBubble
SpriteBubble:
	push	{lr}
	ldr	r0, .L_35608
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_3560c
	cmp	r0, #16
	beq	.L_35612
	b	.L_35616
.L_35608:
	.4byte	gCurrentSprite
.L_3560c:
	bl	func_80352B0
	b	.L_35616
.L_35612:
	bl	func_803530C
.L_35616:
	ldr	r1, .L_35620
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_35620:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknown9B
SpriteUnknown9B:
	push	{lr}
	ldr	r0, .L_3563c
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #16
	beq	.L_35654
	cmp	r1, #16
	bgt	.L_35640
	cmp	r1, #0
	beq	.L_3564a
	b	.L_35660
	.align	2, 0
.L_3563c:
	.4byte	gCurrentSprite
.L_35640:
	cmp	r1, #50	@ 0x32
	beq	.L_3565a
	cmp	r1, #111	@ 0x6f
	beq	.L_35650
	b	.L_35660
.L_3564a:
	bl	func_80354FC
	b	.L_35664
.L_35650:
	bl	func_80355C4
.L_35654:
	bl	func_8035370
	b	.L_35664
.L_3565a:
	bl	func_80354D8
	b	.L_35664
.L_35660:
	mov	r0, #0
	strh	r0, [r2, #0]
.L_35664:
	pop	{r0}
	bx	r0
