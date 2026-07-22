.include "macros.s.inc"


thumb_func_start func_804012C
func_804012C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #16
	ldr	r3, .L_40218
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
	mov	r9, r0
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r6, r2, #16
	mov	r5, #0
.L_40184:
	ldr	r1, .L_4021c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_40220
	mov	r1, ip
	ldrb	r0, [r1, #23]
	cmp	r0, #65	@ 0x41
	bne	.L_40220
	mov	r0, ip
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_40220
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r1, [r1, #8]
	add	r3, r2, r1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, ip
	ldrh	r0, [r0, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	r0, ip
	add	r0, #35	@ 0x23
	ldrb	r4, [r0, #0]
	sub	r4, r3, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r3, r3, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, ip
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
	mov	r0, r9
	mov	r1, r8
	add	r2, r7, #0
	add	r3, r6, #0
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_40220
	mov	r0, #81	@ 0x51
	bl	m4aSongNumStart
	ldr	r1, .L_40218
	ldrh	r0, [r1, #8]
	add	r0, #20
	strh	r0, [r1, #8]
	mov	r0, #1
	b	.L_40228
.L_40218:
	.4byte	gCurrentSprite
.L_4021c:
	.4byte	gSpriteData
.L_40220:
	add	r5, #1
	cmp	r5, #23
	ble	.L_40184
	mov	r0, #0
.L_40228:
	add	sp, #16
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8040238
func_8040238:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r3, .L_40318
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
	mov	sl, r0
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	mov	r6, #0
.L_40294:
	ldr	r1, .L_4031c
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_40320
	ldrb	r0, [r5, #23]
	cmp	r0, #65	@ 0x41
	bne	.L_40320
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_40320
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
	add	r3, r3, r0
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
	mov	r0, sl
	mov	r1, r9
	mov	r2, r8
	add	r3, r7, #0
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_40320
	mov	r0, #17
	strb	r0, [r5, #28]
	b	.L_40326
	.align	2, 0
.L_40318:
	.4byte	gCurrentSprite
.L_4031c:
	.4byte	gSpriteData
.L_40320:
	add	r6, #1
	cmp	r6, #23
	ble	.L_40294
.L_40326:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8040338
func_8040338:
	push	{r4, lr}
	ldr	r0, .L_40394
	mov	ip, r0
	mov	r3, #0
	mov	r0, #49	@ 0x31
	mov	r1, ip
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #24
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #8
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #34	@ 0x22
	mov	r0, #16
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r1, ip
	add	r1, #38	@ 0x26
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #70	@ 0x46
	strb	r0, [r1, #0]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_40394:
	.4byte	gCurrentSprite


thumb_func_start func_8040398
func_8040398:
	ldr	r1, .L_403b4
	ldr	r0, .L_403b8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_403bc
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_403b4:
	.4byte	gCurrentSprite
.L_403b8:
	.4byte	sUnk_83C62FC
.L_403bc:
	.4byte	0xFDFF


thumb_func_start func_80403C0
func_80403C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r0, #8
	str	r0, [sp, #0]
	ldr	r0, .L_40450
	ldrh	r6, [r0, #20]
	mov	sl, r6
	ldrh	r0, [r0, #18]
	mov	r8, r0
	ldr	r4, .L_40454
	ldrh	r5, [r4, #8]
	mov	r9, r5
	ldrh	r7, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_40460
	add	r1, r7, #2
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_40458
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_40488
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_40428
	mov	r0, #17
	strb	r0, [r4, #28]
.L_40428:
	add	r2, r4, #0
	cmp	r6, r5
	bls	.L_404f6
	sub	r1, r6, r5
	ldr	r0, .L_4045c
	cmp	r1, r0
	bgt	.L_404f6
	cmp	r1, #128	@ 0x80
	ble	.L_404f6
	cmp	r8, r7
	bls	.L_404f6
	mov	r3, r8
	sub	r1, r3, r7
	sub	r0, #64	@ 0x40
	cmp	r1, r0
	bgt	.L_404f6
	cmp	r1, #127	@ 0x7f
	ble	.L_404d0
	b	.L_404dc
	.align	2, 0
.L_40450:
	.4byte	gWarioData
.L_40454:
	.4byte	gCurrentSprite
.L_40458:
	.4byte	gSpriteAiCollisionFlags
.L_4045c:
	.4byte	0x1BF
.L_40460:
	sub	r1, r7, #2
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_40490
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_40494
.L_40488:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_4051c
	.align	2, 0
.L_40490:
	.4byte	gSpriteAiCollisionFlags
.L_40494:
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_404a8
	mov	r0, #17
	strb	r0, [r4, #28]
.L_404a8:
	add	r2, r4, #0
	cmp	sl, r9
	bls	.L_404f6
	mov	r3, sl
	mov	r0, r9
	sub	r1, r3, r0
	ldr	r0, .L_404d8
	cmp	r1, r0
	bgt	.L_404f6
	cmp	r1, #128	@ 0x80
	ble	.L_404f6
	cmp	r7, r8
	bls	.L_404f6
	mov	r3, r8
	sub	r1, r7, r3
	sub	r0, #64	@ 0x40
	cmp	r1, r0
	bgt	.L_404f6
	cmp	r1, #127	@ 0x7f
	bgt	.L_404dc
.L_404d0:
	mov	r7, #2
	str	r7, [sp, #0]
	b	.L_404e4
	.align	2, 0
.L_404d8:
	.4byte	0x1BF
.L_404dc:
	cmp	r1, #255	@ 0xff
	bgt	.L_404e4
	mov	r0, #6
	str	r0, [sp, #0]
.L_404e4:
	ldr	r1, .L_4052c
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	mov	r2, sp
	ldrb	r2, [r2, #0]
	strb	r2, [r0, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r1, #28]
	add	r2, r1, #0
.L_404f6:
	add	r6, r2, #0
	add	r6, #42	@ 0x2a
	ldrb	r3, [r6, #0]
	ldr	r5, .L_40530
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_40534
	cmp	r1, r0
	bne	.L_40512
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_40512:
	add	r0, r3, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
.L_4051c:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_4052c:
	.4byte	gCurrentSprite
.L_40530:
	.4byte	sUnk_83C6594
.L_40534:
	.4byte	0x7FFF


thumb_func_start func_8040538
func_8040538:
	push	{lr}
	ldr	r0, .L_4055c
	ldr	r1, .L_40560
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #24
	strb	r1, [r0, #0]
	mov	r0, #79	@ 0x4f
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4055c:
	.4byte	gCurrentSprite
.L_40560:
	.4byte	sUnk_83C6384


thumb_func_start func_8040564
func_8040564:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_405ac
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_405b0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_405b4
	cmp	r1, r0
	bne	.L_40586
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_40586:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_405a6
	mov	r0, #19
	strb	r0, [r3, #28]
.L_405a6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_405ac:
	.4byte	gCurrentSprite
.L_405b0:
	.4byte	sUnk_83C6594
.L_405b4:
	.4byte	0x7FFF


thumb_func_start func_80405B8
func_80405B8:
	ldr	r2, .L_405dc
	ldr	r0, .L_405e0
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_405dc:
	.4byte	gCurrentSprite
.L_405e0:
	.4byte	sUnk_83C63EC


thumb_func_start func_80405E4
func_80405E4:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_40634
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_40638
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4063c
	cmp	r1, r0
	bne	.L_40606
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_40606:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4062c
	mov	r0, #15
	strb	r0, [r3, #28]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
.L_4062c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_40634:
	.4byte	gCurrentSprite
.L_40638:
	.4byte	sUnk_83C6594
.L_4063c:
	.4byte	0x7FFF


thumb_func_start func_8040640
func_8040640:
	ldr	r1, .L_40660
	ldr	r0, .L_40664
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #180	@ 0xb4
	strb	r0, [r2, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_40660:
	.4byte	gCurrentSprite
.L_40664:
	.4byte	sUnk_83C651C


thumb_func_start func_8040668
func_8040668:
	push	{lr}
	ldr	r2, .L_4068c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4069c
	ldr	r1, .L_40690
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_40694
	mov	r0, #35	@ 0x23
	b	.L_40696
	.align	2, 0
.L_4068c:
	.4byte	gCurrentSprite
.L_40690:
	.4byte	gWarioData
.L_40694:
	mov	r0, #37	@ 0x25
.L_40696:
	strb	r0, [r2, #28]
	bl	func_8040238
.L_4069c:
	pop	{r0}
	bx	r0


thumb_func_start func_80406A0
func_80406A0:
	push	{lr}
	ldr	r0, .L_406c4
	ldr	r1, .L_406c8
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #16
	strb	r1, [r0, #0]
	mov	r0, #80	@ 0x50
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_406c4:
	.4byte	gCurrentSprite
.L_406c8:
	.4byte	sUnk_83C6424


thumb_func_start func_80406CC
func_80406CC:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_40714
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_40718
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4071c
	cmp	r1, r0
	bne	.L_406ee
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_406ee:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4070e
	mov	r0, #113	@ 0x71
	strb	r0, [r3, #28]
.L_4070e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_40714:
	.4byte	gCurrentSprite
.L_40718:
	.4byte	sUnk_83C6594
.L_4071c:
	.4byte	0x7FFF


thumb_func_start func_8040720
func_8040720:
	push	{r4, r5, r6, lr}
	bl	func_804012C
	cmp	r0, #0
	beq	.L_40738
	ldr	r1, .L_40734
	mov	r0, #23
	strb	r0, [r1, #28]
	b	.L_40810
	.align	2, 0
.L_40734:
	.4byte	gCurrentSprite
.L_40738:
	ldr	r4, .L_40774
	ldrh	r2, [r4, #8]
	ldr	r0, .L_40778
	ldrh	r0, [r0, #20]
	sub	r0, #110	@ 0x6e
	cmp	r2, r0
	bgt	.L_407fa
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	cmp	r0, #239	@ 0xef
	bhi	.L_407fa
	ldrh	r1, [r4, #10]
	add	r0, r2, #0
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_4077c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_407fa
	ldr	r0, .L_40780
	ldrb	r1, [r0, #0]
	mov	r6, #15
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_40784
	strh	r2, [r4, #8]
	b	.L_407fa
.L_40774:
	.4byte	gCurrentSprite
.L_40778:
	.4byte	gWarioData
.L_4077c:
	.4byte	gUnk_30000A0
.L_40780:
	.4byte	gSpriteAiCollisionResult
.L_40784:
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldrh	r2, [r4, #8]
	add	r0, r2, #0
	add	r0, #8
	strh	r0, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_407d4
	add	r0, r2, #0
	sub	r0, #24
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
	ldr	r0, .L_407d0
	ldrb	r1, [r0, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_407fa
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_4080e
	.align	2, 0
.L_407d0:
	.4byte	gSpriteAiCollisionFlags
.L_407d4:
	add	r0, r2, #0
	sub	r0, #24
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
	ldr	r0, .L_40800
	ldrb	r1, [r0, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_40804
.L_407fa:
	mov	r0, #115	@ 0x73
	strb	r0, [r4, #28]
	b	.L_40810
.L_40800:
	.4byte	gSpriteAiCollisionFlags
.L_40804:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
.L_4080e:
	strh	r0, [r4, #10]
.L_40810:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8040818
func_8040818:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_4084c
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	add	r3, r4, #0
	add	r3, #39	@ 0x27
	ldrb	r2, [r3, #0]
	cmp	r2, #0
	beq	.L_40842
	ldr	r5, .L_40850
	ldrb	r1, [r5, #0]
	mov	r6, #15
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_40854
.L_40842:
	mov	r0, #117	@ 0x75
	strb	r0, [r4, #28]
	mov	r0, #16
	strb	r0, [r3, #0]
	b	.L_408ca
.L_4084c:
	.4byte	gCurrentSprite
.L_40850:
	.4byte	gSpriteAiCollisionFlags
.L_40854:
	sub	r0, r2, #1
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #8]
	add	r0, r2, #0
	sub	r0, #8
	strh	r0, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4089a
	add	r0, r2, #0
	sub	r0, #40	@ 0x28
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
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_408ca
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_408c8
.L_4089a:
	add	r0, r2, #0
	sub	r0, #40	@ 0x28
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
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_408ca
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
.L_408c8:
	strh	r0, [r4, #10]
.L_408ca:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80408D0
func_80408D0:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_40924
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_40928
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4092c
	cmp	r1, r0
	bne	.L_408f2
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_408f2:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4094a
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_40934
	ldr	r1, .L_40930
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_40946
	b	.L_4093e
.L_40924:
	.4byte	gCurrentSprite
.L_40928:
	.4byte	sUnk_83C6594
.L_4092c:
	.4byte	0x7FFF
.L_40930:
	.4byte	gWarioData
.L_40934:
	ldr	r1, .L_40950
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_40946
.L_4093e:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #16
	strb	r0, [r1, #0]
.L_40946:
	mov	r0, #15
	strb	r0, [r2, #28]
.L_4094a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_40950:
	.4byte	gWarioData


thumb_func_start func_8040954
func_8040954:
	ldr	r1, .L_40968
	ldr	r0, .L_4096c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
.L_40968:
	.4byte	gCurrentSprite
.L_4096c:
	.4byte	sUnk_83C646C


thumb_func_start func_8040970
func_8040970:
	push	{lr}
	ldr	r1, .L_40980
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8040954
	pop	{r0}
	bx	r0
.L_40980:
	.4byte	gCurrentSprite


thumb_func_start func_8040984
func_8040984:
	push	{lr}
	ldr	r1, .L_40994
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8040954
	pop	{r0}
	bx	r0
.L_40994:
	.4byte	gCurrentSprite


thumb_func_start func_8040998
func_8040998:
	ldr	r2, .L_409b0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_409ae
	mov	r0, #35	@ 0x23
	strb	r0, [r2, #28]
.L_409ae:
	bx	lr
.L_409b0:
	.4byte	gCurrentSprite


thumb_func_start func_80409B4
func_80409B4:
	ldr	r2, .L_409cc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_409ca
	mov	r0, #37	@ 0x25
	strb	r0, [r2, #28]
.L_409ca:
	bx	lr
.L_409cc:
	.4byte	gCurrentSprite


thumb_func_start func_80409D0
func_80409D0:
	ldr	r2, .L_409f8
	ldr	r0, .L_409fc
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #30]
	bx	lr
.L_409f8:
	.4byte	gCurrentSprite
.L_409fc:
	.4byte	sUnk_83C6494


thumb_func_start func_8040A00
func_8040A00:
	push	{lr}
	ldr	r1, .L_40a10
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_80409D0
	pop	{r0}
	bx	r0
.L_40a10:
	.4byte	gCurrentSprite


thumb_func_start func_8040A14
func_8040A14:
	push	{lr}
	ldr	r1, .L_40a24
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_80409D0
	pop	{r0}
	bx	r0
.L_40a24:
	.4byte	gCurrentSprite


thumb_func_start func_8040A28
func_8040A28:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_40a70
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_40a74
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_40acc
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_40a78
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_40a7c
	cmp	r1, r0
	bne	.L_40a80
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_40a8a
.L_40a70:
	.4byte	gCurrentSprite
.L_40a74:
	.4byte	gSpriteAiCollisionFlags
.L_40a78:
	.4byte	sUnk_83C6616
.L_40a7c:
	.4byte	0x7FFF
.L_40a80:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_40a8a:
	strh	r0, [r4, #8]
	ldr	r4, .L_40ad4
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
	ldr	r0, .L_40ad8
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_40acc
	ldrh	r0, [r4, #10]
	add	r0, #6
	strh	r0, [r4, #10]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_40ace
.L_40acc:
	strb	r2, [r4, #28]
.L_40ace:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_40ad4:
	.4byte	gCurrentSprite
.L_40ad8:
	.4byte	gSpriteAiCollisionFlags


thumb_func_start func_8040ADC
func_8040ADC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_40b24
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_40b28
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_40b80
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_40b2c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_40b30
	cmp	r1, r0
	bne	.L_40b34
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_40b3e
.L_40b24:
	.4byte	gCurrentSprite
.L_40b28:
	.4byte	gSpriteAiCollisionFlags
.L_40b2c:
	.4byte	sUnk_83C6616
.L_40b30:
	.4byte	0x7FFF
.L_40b34:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_40b3e:
	strh	r0, [r4, #8]
	ldr	r4, .L_40b88
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
	ldr	r0, .L_40b8c
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_40b80
	ldrh	r0, [r4, #10]
	sub	r0, #6
	strh	r0, [r4, #10]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_40b82
.L_40b80:
	strb	r2, [r4, #28]
.L_40b82:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_40b88:
	.4byte	gCurrentSprite
.L_40b8c:
	.4byte	gSpriteAiCollisionFlags


thumb_func_start func_8040B90
func_8040B90:
	push	{r4, r5, lr}
	ldr	r5, .L_40bd4
	ldr	r0, .L_40bd8
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
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_40bdc
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
.L_40bd4:
	.4byte	gCurrentSprite
.L_40bd8:
	.4byte	sUnk_83C64EC
.L_40bdc:
	.4byte	0xFEFF


thumb_func_start func_8040BE0
func_8040BE0:
	push	{lr}
	ldr	r1, .L_40bf0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8040B90
	pop	{r0}
	bx	r0
.L_40bf0:
	.4byte	gCurrentSprite


thumb_func_start func_8040BF4
func_8040BF4:
	push	{lr}
	ldr	r1, .L_40c04
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8040B90
	pop	{r0}
	bx	r0
.L_40c04:
	.4byte	gCurrentSprite


thumb_func_start func_8040C08
func_8040C08:
	push	{lr}
	ldr	r2, .L_40c38
	ldr	r0, .L_40c3c
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
	strb	r1, [r2, #26]
	ldrh	r0, [r2, #8]
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_40c38:
	.4byte	gCurrentSprite
.L_40c3c:
	.4byte	sUnk_83C64EC


thumb_func_start func_8040C40
func_8040C40:
	push	{lr}
	ldr	r1, .L_40c50
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8040C08
	pop	{r0}
	bx	r0
.L_40c50:
	.4byte	gCurrentSprite


thumb_func_start func_8040C54
func_8040C54:
	push	{lr}
	ldr	r1, .L_40c64
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8040C08
	pop	{r0}
	bx	r0
.L_40c64:
	.4byte	gCurrentSprite


thumb_func_start func_8040C68
func_8040C68:
	ldr	r2, .L_40c94
	mov	r1, #0
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r0, .L_40c98
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_40c9c
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_40c94:
	.4byte	gCurrentSprite
.L_40c98:
	.4byte	sUnk_83C64BC
.L_40c9c:
	.4byte	0xFEFF


thumb_func_start func_8040CA0
func_8040CA0:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteBeezley
SpriteBeezley:
	push	{lr}
	ldr	r0, .L_40cc4
	ldrb	r0, [r0, #28]
	cmp	r0, #117	@ 0x75
	bls	.L_40cb8
	b	.L_40f3e
.L_40cb8:
	lsl	r0, r0, #2
	ldr	r1, .L_40cc8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_40cc4:
	.4byte	gCurrentSprite
.L_40cc8:
	.4byte	.L_40ccc
.L_40ccc:
	.4byte	.L_40ea4
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40ea8
	.4byte	.L_40eac
	.4byte	.L_40eb2
	.4byte	.L_40eb6
	.4byte	.L_40ebc
	.4byte	.L_40ec0
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40ec6
	.4byte	.L_40eca
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f00
	.4byte	.L_40f04
	.4byte	.L_40f0a
	.4byte	.L_40f0e
	.4byte	.L_40f14
	.4byte	.L_40f18
	.4byte	.L_40f1e
	.4byte	.L_40f22
	.4byte	.L_40eec
	.4byte	.L_40ef0
	.4byte	.L_40ef6
	.4byte	.L_40efa
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f28
	.4byte	.L_40f2c
	.4byte	.L_40f14
	.4byte	.L_40f3e
	.4byte	.L_40f1e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f00
	.4byte	.L_40f0a
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f32
	.4byte	.L_40f38
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40f3e
	.4byte	.L_40ed0
	.4byte	.L_40ed4
	.4byte	.L_40f3e
	.4byte	.L_40eda
	.4byte	.L_40f3e
	.4byte	.L_40ee0
	.4byte	.L_40f3e
	.4byte	.L_40ee6
.L_40ea4:
	bl	func_8040338
.L_40ea8:
	bl	func_8040398
.L_40eac:
	bl	func_80403C0
	b	.L_40f42
.L_40eb2:
	bl	func_8040538
.L_40eb6:
	bl	func_8040564
	b	.L_40f42
.L_40ebc:
	bl	func_80405B8
.L_40ec0:
	bl	func_80405E4
	b	.L_40f42
.L_40ec6:
	bl	func_8040640
.L_40eca:
	bl	func_8040668
	b	.L_40f42
.L_40ed0:
	bl	func_80406A0
.L_40ed4:
	bl	func_80406CC
	b	.L_40f42
.L_40eda:
	bl	func_8040720
	b	.L_40f42
.L_40ee0:
	bl	func_8040818
	b	.L_40f42
.L_40ee6:
	bl	func_80408D0
	b	.L_40f42
.L_40eec:
	bl	func_8040970
.L_40ef0:
	bl	func_8040998
	b	.L_40f42
.L_40ef6:
	bl	func_8040984
.L_40efa:
	bl	func_80409B4
	b	.L_40f42
.L_40f00:
	bl	func_8040BE0
.L_40f04:
	bl	SpriteUtilFallOffscreenRight
	b	.L_40f42
.L_40f0a:
	bl	func_8040BF4
.L_40f0e:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_40f42
.L_40f14:
	bl	func_8040A00
.L_40f18:
	bl	func_8040A28
	b	.L_40f42
.L_40f1e:
	bl	func_8040A14
.L_40f22:
	bl	func_8040ADC
	b	.L_40f42
.L_40f28:
	bl	func_8040C68
.L_40f2c:
	bl	SpriteUtilDieAfterDelay
	b	.L_40f42
.L_40f32:
	bl	func_8040C54
	b	.L_40f42
.L_40f38:
	bl	func_8040C40
	b	.L_40f42
.L_40f3e:
	bl	func_8040CA0
.L_40f42:
	pop	{r0}
	bx	r0
	.align	2, 0
