.include "macros.s.inc"


thumb_func_start func_80332C8
func_80332C8:
	push	{r4, lr}
	ldr	r0, .L_33320
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #16
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_33324
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r2, ip
	strb	r3, [r2, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_33320:
	.4byte	gCurrentSprite
.L_33324:
	.4byte	sUnk_83BB63C


thumb_func_start func_8033328
func_8033328:
	ldr	r2, .L_33350
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3334c
	ldr	r0, .L_33354
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #63	@ 0x3f
	strb	r0, [r3, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
.L_3334c:
	bx	lr
	.align	2, 0
.L_33350:
	.4byte	gCurrentSprite
.L_33354:
	.4byte	sUnk_83BB64C


thumb_func_start func_8033358
func_8033358:
	ldr	r2, .L_33380
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3337c
	ldr	r0, .L_33384
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #8
	strb	r0, [r3, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
.L_3337c:
	bx	lr
	.align	2, 0
.L_33380:
	.4byte	gCurrentSprite
.L_33384:
	.4byte	sUnk_83BB69C


thumb_func_start func_8033388
func_8033388:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_333d0
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_333c6
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #182	@ 0xb6
	bl	SpriteSpawnAsChild
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_333be
	mov	r0, #118	@ 0x76
	bl	m4aSongNumStart
.L_333be:
	mov	r0, #22
	strb	r0, [r4, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r5, #0]
.L_333c6:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_333d0:
	.4byte	gCurrentSprite


thumb_func_start func_80333D4
func_80333D4:
	ldr	r2, .L_333fc
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_333f8
	ldr	r0, .L_33400
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #160	@ 0xa0
	strb	r0, [r3, #0]
	mov	r0, #24
	strb	r0, [r2, #28]
.L_333f8:
	bx	lr
	.align	2, 0
.L_333fc:
	.4byte	gCurrentSprite
.L_33400:
	.4byte	sUnk_83BB63C


thumb_func_start func_8033404
func_8033404:
	ldr	r2, .L_33420
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3341e
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_3341e:
	bx	lr
.L_33420:
	.4byte	gCurrentSprite


thumb_func_start func_8033424
func_8033424:
	ldr	r0, .L_33488
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_3348c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	ldr	r0, .L_33490
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #14
	strb	r0, [r1, #30]
	mov	r0, #18
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #1
	strb	r0, [r1, #26]
	bx	lr
.L_33488:
	.4byte	gCurrentSprite
.L_3348c:
	.4byte	0xFFFB
.L_33490:
	.4byte	sUnk_83BB6AC


thumb_func_start func_8033494
func_8033494:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_334b8
	ldrh	r0, [r4, #8]
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_334bc
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_334c0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	b	.L_334ea
	.align	2, 0
.L_334b8:
	.4byte	gCurrentSprite
.L_334bc:
	.4byte	gUnk_30000A0
.L_334c0:
	ldr	r0, .L_334f4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_334fc
	mov	r1, #0
	mov	r2, #0
	strh	r3, [r4, #8]
	add	r3, r4, #0
	add	r3, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	ldr	r0, .L_334f8
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #126	@ 0x7e
.L_334ea:
	strb	r0, [r1, #0]
	mov	r0, #20
	strb	r0, [r4, #28]
	b	.L_33538
	.align	2, 0
.L_334f4:
	.4byte	gSpriteCollisionResult
.L_334f8:
	.4byte	sUnk_83BB704
.L_334fc:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_33524
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_33528
	cmp	r1, r0
	bne	.L_3352c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_33536
.L_33524:
	.4byte	sSharedDebrisYVelocity
.L_33528:
	.4byte	0x7FFF
.L_3352c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_33536:
	strh	r0, [r4, #8]
.L_33538:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8033540
func_8033540:
	ldr	r2, .L_33568
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_33564
	ldr	r0, .L_3356c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #33	@ 0x21
	strb	r0, [r3, #0]
	mov	r0, #22
	strb	r0, [r2, #28]
.L_33564:
	bx	lr
	.align	2, 0
.L_33568:
	.4byte	gCurrentSprite
.L_3356c:
	.4byte	sUnk_83BB7AC


thumb_func_start func_8033570
func_8033570:
	ldr	r3, .L_33594
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_33598
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #14
	bhi	.L_3359a
	mov	r0, #1
	strb	r0, [r3, #31]
	b	.L_3359a
	.align	2, 0
.L_33594:
	.4byte	gCurrentSprite
.L_33598:
	strh	r0, [r3, #0]
.L_3359a:
	bx	lr


thumb_func_start SpritePigHeadStatue
SpritePigHeadStatue:
	push	{lr}
	ldr	r1, .L_335b4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #24
	bhi	.L_33642
	lsl	r0, r0, #2
	ldr	r1, .L_335b8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_335b4:
	.4byte	gCurrentSprite
.L_335b8:
	.4byte	.L_335bc
.L_335bc:
	.4byte	.L_33620
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33642
	.4byte	.L_33626
	.4byte	.L_33642
	.4byte	.L_3362c
	.4byte	.L_33642
	.4byte	.L_33632
	.4byte	.L_33642
	.4byte	.L_33638
	.4byte	.L_33642
	.4byte	.L_3363e
.L_33620:
	bl	func_80332C8
	b	.L_33642
.L_33626:
	bl	func_8033328
	b	.L_33642
.L_3362c:
	bl	func_8033358
	b	.L_33642
.L_33632:
	bl	func_8033388
	b	.L_33642
.L_33638:
	bl	func_80333D4
	b	.L_33642
.L_3363e:
	bl	func_8033404
.L_33642:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownB6
SpriteUnknownB6:
	push	{lr}
	ldr	r0, .L_3365c
	ldrb	r0, [r0, #28]
	cmp	r0, #18
	beq	.L_33670
	cmp	r0, #18
	bgt	.L_33660
	cmp	r0, #0
	beq	.L_3366a
	b	.L_33680
.L_3365c:
	.4byte	gCurrentSprite
.L_33660:
	cmp	r0, #20
	beq	.L_33676
	cmp	r0, #22
	beq	.L_3367c
	b	.L_33680
.L_3366a:
	bl	func_8033424
	b	.L_33680
.L_33670:
	bl	func_8033494
	b	.L_33680
.L_33676:
	bl	func_8033540
	b	.L_33680
.L_3367c:
	bl	func_8033570
.L_33680:
	pop	{r0}
	bx	r0
