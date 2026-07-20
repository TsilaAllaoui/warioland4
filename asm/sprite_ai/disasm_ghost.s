.include "macros.s.inc"


thumb_func_start func_803F214
func_803F214:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #17
	mov	ip, r0
	mov	r3, #0
	ldr	r1, .L_3f258
	ldrb	r0, [r1, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_3f252
	ldr	r7, .L_3f25c
	add	r2, r1, #0
	mov	r4, #0
	add	r6, r2, #2
	ldr	r5, .L_3f260
.L_3f22e:
	add	r0, r4, r6
	ldrb	r0, [r0, #0]
	cmp	r0, ip
	bne	.L_3f242
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	add	r0, r3, r0
	add	r0, r0, r7
	mov	r1, #17
	strb	r1, [r0, #0]
.L_3f242:
	add	r2, #3
	add	r4, #3
	add	r3, #1
	cmp	r3, #63	@ 0x3f
	bgt	.L_3f252
	ldrb	r0, [r2, #0]
	cmp	r0, #255	@ 0xff
	bne	.L_3f22e
.L_3f252:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3f258:
	.4byte	gUnk_3000964
.L_3f25c:
	.4byte	gPersistentSpriteData
.L_3f260:
	.4byte	gCurrentRoom


thumb_func_start func_803F264
func_803F264:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #17
	mov	ip, r0
	mov	r3, #0
	ldr	r1, .L_3f2a8
	ldrb	r0, [r1, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_3f2a2
	ldr	r7, .L_3f2ac
	add	r2, r1, #0
	mov	r4, #0
	add	r6, r2, #2
	ldr	r5, .L_3f2b0
.L_3f27e:
	add	r0, r4, r6
	ldrb	r0, [r0, #0]
	cmp	r0, ip
	bne	.L_3f292
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	add	r0, r3, r0
	add	r0, r0, r7
	mov	r1, #1
	strb	r1, [r0, #0]
.L_3f292:
	add	r2, #3
	add	r4, #3
	add	r3, #1
	cmp	r3, #63	@ 0x3f
	bgt	.L_3f2a2
	ldrb	r0, [r2, #0]
	cmp	r0, #255	@ 0xff
	bne	.L_3f27e
.L_3f2a2:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3f2a8:
	.4byte	gUnk_3000964
.L_3f2ac:
	.4byte	gPersistentSpriteData
.L_3f2b0:
	.4byte	gCurrentRoom


thumb_func_start func_803F2B4
func_803F2B4:
	push	{r4, r5, lr}
	ldr	r1, .L_3f2f8
	ldr	r5, .L_3f2fc
	ldr	r0, .L_3f300
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r5, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r4, #138	@ 0x8a
	lsl	r4, r4, #1
	cmp	r0, #17
	bne	.L_3f2d2
	add	r4, #100	@ 0x64
.L_3f2d2:
	ldrh	r2, [r5, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r0, r1, #0
	add	r1, r2, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldr	r1, .L_3f304
	ldrh	r1, [r1, #20]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r3, r0
	bcs	.L_3f314
	sub	r1, r0, r3
	cmp	r1, r4
	ble	.L_3f308
	add	r0, r2, #5
	b	.L_3f318
.L_3f2f8:
	.4byte	gPersistentSpriteData
.L_3f2fc:
	.4byte	gCurrentSprite
.L_3f300:
	.4byte	gCurrentRoom
.L_3f304:
	.4byte	gWarioData
.L_3f308:
	add	r0, r4, #0
	sub	r0, #10
	cmp	r1, r0
	bge	.L_3f31a
	sub	r0, r2, #1
	b	.L_3f318
.L_3f314:
	add	r0, r2, #0
	sub	r0, #8
.L_3f318:
	strh	r0, [r5, #8]
.L_3f31a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_803F320
func_803F320:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_3f368
	ldr	r1, .L_3f36c
	ldr	r0, .L_3f370
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r1, #24]
	add	r0, r0, r3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	add	r5, r1, #0
	cmp	r0, #17
	beq	.L_3f3be
	ldr	r0, .L_3f374
	ldrb	r1, [r0, #0]
	cmp	r1, #1
	bne	.L_3f388
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	ldr	r0, .L_3f378
	ldrh	r1, [r0, #18]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r1, r1, r2
	ldrh	r0, [r5, #10]
	add	r0, r0, r2
	cmp	r1, r0
	ble	.L_3f37c
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3f408
	b	.L_3f402
	.align	2, 0
.L_3f368:
	.4byte	gPersistentSpriteData
.L_3f36c:
	.4byte	gCurrentSprite
.L_3f370:
	.4byte	gCurrentRoom
.L_3f374:
	.4byte	gCollectedKeyzer
.L_3f378:
	.4byte	gWarioData
.L_3f37c:
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3f402
	b	.L_3f408
.L_3f388:
	mov	r6, #0
	mov	r4, #0
	mov	r3, #0
	ldr	r7, .L_3f3c4
	add	r2, r7, #0
.L_3f392:
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f3b2
	ldrb	r1, [r2, #23]
	add	r0, r1, #0
	add	r0, #127	@ 0x7f
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bhi	.L_3f3b2
	cmp	r1, r4
	bcc	.L_3f3b2
	add	r6, r3, #0
	ldrb	r4, [r2, #23]
.L_3f3b2:
	add	r2, #44	@ 0x2c
	add	r3, #1
	cmp	r3, #23
	ble	.L_3f392
	cmp	r4, #0
	bne	.L_3f3c8
.L_3f3be:
	mov	r0, #0
	b	.L_3f40e
	.align	2, 0
.L_3f3c4:
	.4byte	gSpriteData
.L_3f3c8:
	add	r3, r5, #0
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r0, r0, r7
	ldrh	r1, [r0, #10]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r1, r1, r2
	ldrh	r0, [r3, #10]
	add	r0, r0, r2
	cmp	r1, r0
	ble	.L_3f3f8
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f402
	mov	r0, #110	@ 0x6e
	strb	r0, [r3, #28]
	b	.L_3f40c
.L_3f3f8:
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f408
.L_3f402:
	bl	func_803F944
	b	.L_3f40c
.L_3f408:
	mov	r0, #110	@ 0x6e
	strb	r0, [r5, #28]
.L_3f40c:
	mov	r0, #1
.L_3f40e:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_803F414
func_803F414:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_3f51c
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
	mov	r7, #0
.L_3f472:
	ldr	r1, .L_3f520
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f506
	ldrb	r0, [r5, #23]
	add	r0, #127	@ 0x7f
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bhi	.L_3f506
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
	ldr	r0, [sp, #16]
	mov	r1, sl
	mov	r2, r9
	mov	r3, r8
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_3f506
	mov	r6, #0
	mov	r4, #0
	strh	r4, [r5, #0]
	mov	r0, #94	@ 0x5e
	bl	m4aSongNumStart
	ldr	r1, .L_3f51c
	ldr	r0, [r1, #4]
	ldr	r2, .L_3f524
	cmp	r0, r2
	beq	.L_3f506
	str	r2, [r1, #4]
	strb	r6, [r1, #22]
	strh	r4, [r1, #20]
.L_3f506:
	add	r7, #1
	cmp	r7, #23
	ble	.L_3f472
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3f51c:
	.4byte	gCurrentSprite
.L_3f520:
	.4byte	gSpriteData
.L_3f524:
	.4byte	sUnk_83C53C4


thumb_func_start func_803F528
func_803F528:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_3f548
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3f54c
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_3f65c
	.align	2, 0
.L_3f548:
	.4byte	gCurrentSprite
.L_3f54c:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r7, [r3, #8]
	add	r1, r2, r7
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
	lsr	r2, r2, #16
	str	r2, [sp, #16]
	mov	r6, #0
	mov	r5, #0
.L_3f59e:
	ldr	r0, .L_3f638
	add	r4, r5, r0
	ldrb	r1, [r4, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f654
	ldrb	r0, [r4, #2]
	cmp	r0, #75	@ 0x4b
	bne	.L_3f654
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r0, r1, #0
	ldrh	r2, [r4, #8]
	add	r1, r0, r2
	lsl	r1, r1, #16
	ldrh	r7, [r4, #10]
	add	r0, r0, r7
	lsl	r0, r0, #16
	ldr	r2, .L_3f63c
	add	r3, r1, r2
	lsr	r3, r3, #16
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #14
	add	r1, r1, r7
	lsr	r1, r1, #16
	ldr	r7, .L_3f640
	add	r2, r0, r7
	lsr	r2, r2, #16
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #13
	add	r0, r0, r7
	lsr	r0, r0, #16
	str	r3, [sp, #0]
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	mov	r0, sl
	mov	r1, r9
	mov	r2, r8
	ldr	r3, [sp, #16]
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_3f654
	mov	r5, #0
	strb	r5, [r4, #0]
	mov	r0, #95	@ 0x5f
	bl	m4aSongNumStart
	ldr	r4, .L_3f644
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #168	@ 0xa8
	bl	SpriteSpawnAsChild
	ldr	r0, .L_3f648
	strb	r5, [r0, #0]
	bl	func_803F214
	ldr	r2, .L_3f64c
	ldrb	r0, [r2, #3]
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r2, #3]
	ldr	r0, [r4, #4]
	ldr	r1, .L_3f650
	cmp	r0, r1
	beq	.L_3f65c
	str	r1, [r4, #4]
	strb	r5, [r4, #22]
	strh	r5, [r4, #20]
	b	.L_3f65c
	.align	2, 0
.L_3f638:
	.4byte	gSecondarySpriteData
.L_3f63c:
	.4byte	0xFFD80000
.L_3f640:
	.4byte	0xFFF00000
.L_3f644:
	.4byte	gCurrentSprite
.L_3f648:
	.4byte	gCollectedKeyzer
.L_3f64c:
	.4byte	gSwitchStates
.L_3f650:
	.4byte	sUnk_83C53C4
.L_3f654:
	add	r5, #12
	add	r6, #1
	cmp	r6, #7
	ble	.L_3f59e
.L_3f65c:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_803F66C
func_803F66C:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	mov	r0, #63	@ 0x3f
	bl	SpriteUtilDespawnIfSpriteExists
	add	r6, r0, #0
	cmp	r6, #0
	bne	.L_3f702
	ldr	r4, .L_3f70c
	ldrh	r1, [r4, #0]
	ldr	r2, .L_3f710
	add	r0, r2, #0
	mov	r5, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #6
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #32
	mov	r1, #48	@ 0x30
	strb	r1, [r0, #0]
	add	r2, r4, #0
	add	r2, #33	@ 0x21
	mov	r0, #24
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #34	@ 0x22
	strb	r1, [r0, #0]
	add	r1, r4, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
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
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r5, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #167	@ 0xa7
	bl	SpriteSpawnAsChild
	ldrb	r0, [r4, #28]
	cmp	r0, #1
	bne	.L_3f6f6
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #168	@ 0xa8
	bl	SpriteSpawnAsChild
.L_3f6f6:
	ldr	r0, .L_3f714
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r6, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
.L_3f702:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3f70c:
	.4byte	gCurrentSprite
.L_3f710:
	.4byte	0xA408
.L_3f714:
	.4byte	sUnk_83C5364


thumb_func_start func_803F718
func_803F718:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #167	@ 0xa7
	mov	r9, r0
	ldr	r0, .L_3f77c
	ldrb	r7, [r0, #24]
	add	r6, r0, #0
	ldr	r1, .L_3f780
	mov	sl, r1
	ldr	r5, .L_3f784
	mov	r0, #1
	mov	r8, r0
	add	r2, r5, #0
	add	r4, r5, #0
	mov	r3, #0
	mov	r1, #253	@ 0xfd
	lsl	r1, r1, #2
	add	r1, r1, r5
	mov	ip, r1
.L_3f744:
	ldrb	r0, [r2, #23]
	cmp	r0, r9
	bne	.L_3f75a
	ldrb	r0, [r2, #24]
	cmp	r0, r7
	bne	.L_3f75a
	ldrh	r1, [r2, #0]
	mov	r0, r8
	and	r0, r1
	cmp	r0, #0
	bne	.L_3f790
.L_3f75a:
	add	r2, #44	@ 0x2c
	add	r4, #44	@ 0x2c
	add	r3, #44	@ 0x2c
	cmp	r2, ip
	ble	.L_3f744
.L_3f764:
	mov	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r6, #24]
	add	r0, r0, r1
	ldr	r1, .L_3f788
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3f7a4
	ldr	r0, .L_3f78c
	b	.L_3f7a6
.L_3f77c:
	.4byte	gCurrentSprite
.L_3f780:
	.4byte	gCurrentRoom
.L_3f784:
	.4byte	gSpriteData
.L_3f788:
	.4byte	gPersistentSpriteData
.L_3f78c:
	.4byte	sUnk_83C53C4
.L_3f790:
	add	r0, r5, #4
	add	r0, r3, r0
	ldr	r1, .L_3f7a0
	str	r1, [r0, #0]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	b	.L_3f764
.L_3f7a0:
	.4byte	sUnk_83C5528
.L_3f7a4:
	ldr	r0, .L_3f7c8
.L_3f7a6:
	str	r0, [r6, #4]
	mov	r0, #0
	strb	r0, [r6, #22]
	strh	r0, [r6, #20]
	mov	r0, #16
	strb	r0, [r6, #28]
	mov	r0, #93	@ 0x5d
	bl	m4aSongNumStart
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3f7c8:
	.4byte	sUnk_83C5364


thumb_func_start func_803F7CC
func_803F7CC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r4, .L_3f880
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r1, r0, #0
	ldrh	r2, [r4, #10]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r0, .L_3f884
	ldrh	r0, [r0, #18]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	ldr	r1, .L_3f888
	ldr	r0, .L_3f88c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r6, [r4, #24]
	add	r0, r0, r6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3f89c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r5, .L_3f890
	ldrb	r1, [r5, #0]
	mov	r6, #15
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3f89c
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3f89c
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r2, [r5, #0]
	ldr	r1, .L_3f894
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3f898
	cmp	r1, r0
	beq	.L_3f8f4
	add	r0, r2, #1
	strb	r0, [r5, #0]
	mov	r0, r9
	cmp	r0, #0
	beq	.L_3f932
	ldrh	r0, [r4, #10]
	add	r0, r0, r3
	b	.L_3f936
.L_3f880:
	.4byte	gCurrentSprite
.L_3f884:
	.4byte	gWarioData
.L_3f888:
	.4byte	gPersistentSpriteData
.L_3f88c:
	.4byte	gCurrentRoom
.L_3f890:
	.4byte	gSpriteCollisionTileType
.L_3f894:
	.4byte	sUnk_83C55EA
.L_3f898:
	.4byte	0x7FFF
.L_3f89c:
	mov	r1, r9
	cmp	r1, #0
	beq	.L_3f8ec
	add	r0, r7, #0
	add	r0, #64	@ 0x40
	cmp	r8, r0
	bgt	.L_3f8f4
	ldr	r4, .L_3f8d4
	mov	r2, #41	@ 0x29
	add	r2, r2, r4
	mov	ip, r2
	ldrb	r2, [r2, #0]
	ldr	r5, .L_3f8d8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3f8dc
	cmp	r1, r0
	bne	.L_3f8e0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3f936
.L_3f8d4:
	.4byte	gCurrentSprite
.L_3f8d8:
	.4byte	sUnk_83C5598
.L_3f8dc:
	.4byte	0x7FFF
.L_3f8e0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #10]
	add	r0, r0, r3
	b	.L_3f936
.L_3f8ec:
	add	r0, r7, #0
	sub	r0, #64	@ 0x40
	cmp	r8, r0
	bge	.L_3f8fa
.L_3f8f4:
	bl	func_803F944
	b	.L_3f938
.L_3f8fa:
	ldr	r4, .L_3f920
	mov	r2, #41	@ 0x29
	add	r2, r2, r4
	mov	ip, r2
	ldrb	r2, [r2, #0]
	ldr	r5, .L_3f924
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3f928
	cmp	r1, r0
	bne	.L_3f92c
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	b	.L_3f932
.L_3f920:
	.4byte	gCurrentSprite
.L_3f924:
	.4byte	sUnk_83C5598
.L_3f928:
	.4byte	0x7FFF
.L_3f92c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_3f932:
	ldrh	r0, [r4, #10]
	sub	r0, r0, r3
.L_3f936:
	strh	r0, [r4, #10]
.L_3f938:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_803F944
func_803F944:
	ldr	r0, .L_3f954
	mov	r2, #0
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_3f954:
	.4byte	gCurrentSprite


thumb_func_start func_803F958
func_803F958:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	ldr	r3, .L_3f9d0
	ldrh	r6, [r3, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r1, r0, #0
	add	r0, r6, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	str	r0, [sp, #0]
	ldr	r0, .L_3f9d4
	ldrh	r0, [r0, #18]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	str	r1, [sp, #4]
	ldrh	r7, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r7
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	str	r5, [sp, #8]
	mov	r0, #41	@ 0x29
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r1, .L_3f9d8
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r8, r4
	ldr	r0, .L_3f9dc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r3, #24]
	add	r0, r0, r1
	ldr	r1, .L_3f9e0
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3fa4e
	cmp	r5, #0
	beq	.L_3fa14
	ldr	r0, .L_3f9e4
	cmp	r4, r0
	bne	.L_3f9e8
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
.L_3f9c8:
	bl	func_803F718
	b	.L_3fb02
	.align	2, 0
.L_3f9d0:
	.4byte	gCurrentSprite
.L_3f9d4:
	.4byte	gWarioData
.L_3f9d8:
	.4byte	sUnk_83C5644
.L_3f9dc:
	.4byte	gCurrentRoom
.L_3f9e0:
	.4byte	gPersistentSpriteData
.L_3f9e4:
	.4byte	0x7FFF
.L_3f9e8:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	add	r0, r6, r4
	strh	r0, [r3, #10]
	cmp	r2, #32
	bne	.L_3fa04
	ldr	r0, .L_3fa00
	b	.L_3fa84
	.align	2, 0
.L_3fa00:
	.4byte	sUnk_83C53FC
.L_3fa04:
	cmp	r2, #42	@ 0x2a
	beq	.L_3fa0a
	b	.L_3fb02
.L_3fa0a:
	ldr	r0, .L_3fa10
	and	r0, r7
	b	.L_3fb00
.L_3fa10:
	.4byte	0xFFBF
.L_3fa14:
	ldr	r0, .L_3fa20
	cmp	r4, r0
	bne	.L_3fa24
	mov	r1, ip
	strb	r5, [r1, #0]
	b	.L_3f9c8
.L_3fa20:
	.4byte	0x7FFF
.L_3fa24:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	sub	r0, r6, r4
	strh	r0, [r3, #10]
	cmp	r2, #32
	bne	.L_3fa48
	ldr	r0, .L_3fa44
	str	r0, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r5, [r3, #20]
	b	.L_3fb02
	.align	2, 0
.L_3fa44:
	.4byte	sUnk_83C53FC
.L_3fa48:
	cmp	r2, #42	@ 0x2a
	bne	.L_3fb02
	b	.L_3fafc
.L_3fa4e:
	cmp	r5, #0
	beq	.L_3faa8
	ldr	r0, .L_3fa6c
	cmp	r4, r0
	bne	.L_3fa70
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3fabe
	b	.L_3f9c8
	.align	2, 0
.L_3fa6c:
	.4byte	0x7FFF
.L_3fa70:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	add	r0, r6, r4
	strh	r0, [r3, #10]
	cmp	r2, #32
	bne	.L_3fa94
	ldr	r0, .L_3fa90
.L_3fa84:
	str	r0, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	mov	r0, #0
	strh	r0, [r3, #20]
	b	.L_3fb02
.L_3fa90:
	.4byte	sUnk_83C53B4
.L_3fa94:
	cmp	r2, #42	@ 0x2a
	bne	.L_3fb02
	cmp	sl, r9
	bls	.L_3fb02
	ldr	r0, .L_3faa4
	and	r0, r7
	b	.L_3fb00
	.align	2, 0
.L_3faa4:
	.4byte	0xFFBF
.L_3faa8:
	ldr	r0, .L_3fac4
	cmp	r4, r0
	bne	.L_3fac8
	mov	r1, ip
	strb	r5, [r1, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3fabe
	b	.L_3f9c8
.L_3fabe:
	mov	r0, #110	@ 0x6e
	strb	r0, [r3, #28]
	b	.L_3fb02
.L_3fac4:
	.4byte	0x7FFF
.L_3fac8:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	mov	r1, r8
	sub	r0, r6, r1
	strh	r0, [r3, #10]
	cmp	r2, #32
	bne	.L_3faf0
	ldr	r0, .L_3faec
	str	r0, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	mov	r0, sp
	ldrh	r0, [r0, #8]
	strh	r0, [r3, #20]
	b	.L_3fb02
.L_3faec:
	.4byte	sUnk_83C53B4
.L_3faf0:
	cmp	r2, #42	@ 0x2a
	bne	.L_3fb02
	ldr	r1, [sp, #0]
	ldr	r0, [sp, #4]
	cmp	r1, r0
	bcs	.L_3fb02
.L_3fafc:
	mov	r0, #64	@ 0x40
	orr	r0, r7
.L_3fb00:
	strh	r0, [r3, #0]
.L_3fb02:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803FB14
func_803FB14:
	ldr	r0, .L_3fb24
	mov	r2, #0
	mov	r1, #20
	strb	r1, [r0, #28]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_3fb24:
	.4byte	gCurrentSprite


thumb_func_start func_803FB28
func_803FB28:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	ldr	r3, .L_3fb90
	ldrh	r5, [r3, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r1, r0, #0
	add	r0, r5, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	mov	r2, r9
	str	r2, [sp, #0]
	ldr	r0, .L_3fb94
	ldrh	r0, [r0, #18]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	mov	r0, r8
	str	r0, [sp, #4]
	ldrh	r6, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r6
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r1, #41	@ 0x29
	add	r1, r1, r3
	mov	ip, r1
	ldrb	r2, [r1, #0]
	ldr	r1, .L_3fb98
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r7, r1, #0
	mov	sl, r3
	cmp	r4, #0
	beq	.L_3fbec
	ldr	r0, .L_3fb9c
	cmp	r1, r0
	bne	.L_3fba0
	mov	r0, #0
	mov	r2, ip
	strb	r0, [r2, #0]
	bl	func_803F718
	b	.L_3fc5e
	.align	2, 0
.L_3fb90:
	.4byte	gCurrentSprite
.L_3fb94:
	.4byte	gWarioData
.L_3fb98:
	.4byte	sUnk_83C56AE
.L_3fb9c:
	.4byte	0x7FFF
.L_3fba0:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	add	r0, r5, r1
	strh	r0, [r3, #10]
	cmp	r2, #4
	bne	.L_3fbd8
	ldr	r1, .L_3fbcc
	ldr	r0, .L_3fbd0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r3, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3fc38
	ldr	r0, .L_3fbd4
	b	.L_3fc3a
	.align	2, 0
.L_3fbcc:
	.4byte	gPersistentSpriteData
.L_3fbd0:
	.4byte	gCurrentRoom
.L_3fbd4:
	.4byte	sUnk_83C53FC
.L_3fbd8:
	cmp	r2, #14
	bne	.L_3fc5e
	cmp	r9, r8
	bls	.L_3fc5e
	ldr	r0, .L_3fbe8
	and	r0, r6
	b	.L_3fc5c
	.align	2, 0
.L_3fbe8:
	.4byte	0xFFBF
.L_3fbec:
	ldr	r0, .L_3fbfc
	cmp	r1, r0
	bne	.L_3fc00
	mov	r2, ip
	strb	r4, [r2, #0]
	bl	func_803F718
	b	.L_3fc5e
.L_3fbfc:
	.4byte	0x7FFF
.L_3fc00:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, ip
	strb	r2, [r0, #0]
	sub	r0, r5, r7
	strh	r0, [r3, #10]
	cmp	r2, #4
	bne	.L_3fc4c
	ldr	r1, .L_3fc2c
	ldr	r0, .L_3fc30
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r3, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3fc38
	ldr	r0, .L_3fc34
	b	.L_3fc3a
	.align	2, 0
.L_3fc2c:
	.4byte	gPersistentSpriteData
.L_3fc30:
	.4byte	gCurrentRoom
.L_3fc34:
	.4byte	sUnk_83C53FC
.L_3fc38:
	ldr	r0, .L_3fc48
.L_3fc3a:
	str	r0, [r3, #4]
	mov	r0, #0
	mov	r1, sl
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	b	.L_3fc5e
	.align	2, 0
.L_3fc48:
	.4byte	sUnk_83C53B4
.L_3fc4c:
	cmp	r2, #14
	bne	.L_3fc5e
	ldr	r2, [sp, #0]
	ldr	r0, [sp, #4]
	cmp	r2, r0
	bcs	.L_3fc5e
	mov	r0, #64	@ 0x40
	orr	r0, r6
.L_3fc5c:
	strh	r0, [r3, #0]
.L_3fc5e:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803FC70
func_803FC70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #167	@ 0xa7
	mov	sl, r0
	ldr	r0, .L_3fcc0
	ldrb	r1, [r0, #24]
	mov	ip, r1
	mov	r4, #0
	add	r7, r0, #0
	ldr	r6, .L_3fcc4
	add	r0, r6, #4
	mov	r9, r0
	mov	r5, #0
	ldr	r1, .L_3fcc8
	mov	r8, r1
.L_3fc94:
	mov	r0, #44	@ 0x2c
	add	r3, r4, #0
	mul	r3, r0
	add	r2, r3, r6
	ldrb	r0, [r2, #23]
	cmp	r0, sl
	bne	.L_3fccc
	ldrb	r0, [r2, #24]
	cmp	r0, ip
	bne	.L_3fccc
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3fccc
	mov	r1, r9
	add	r0, r3, r1
	mov	r1, r8
	str	r1, [r0, #0]
	strb	r5, [r2, #22]
	strh	r5, [r2, #20]
	b	.L_3fcd2
.L_3fcc0:
	.4byte	gCurrentSprite
.L_3fcc4:
	.4byte	gSpriteData
.L_3fcc8:
	.4byte	sUnk_83C5568
.L_3fccc:
	add	r4, #1
	cmp	r4, #23
	ble	.L_3fc94
.L_3fcd2:
	mov	r1, #0
	mov	r0, #111	@ 0x6f
	strb	r0, [r7, #28]
	add	r0, r7, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldr	r0, .L_3fcf4
	str	r0, [r7, #4]
	strb	r1, [r7, #22]
	strh	r1, [r7, #20]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3fcf4:
	.4byte	sUnk_83C538C


thumb_func_start func_803FCF8
func_803FCF8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, .L_3fd58
	ldrh	r6, [r4, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r1, r0, #0
	add	r0, r6, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	ip, r0
	mov	sl, ip
	ldr	r0, .L_3fd5c
	ldrh	r0, [r0, #18]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r9, r3
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r2, #42	@ 0x2a
	add	r2, r2, r4
	mov	r8, r2
	ldrb	r2, [r2, #0]
	ldr	r1, .L_3fd60
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	ldr	r5, .L_3fd64
	cmp	r0, r5
	bne	.L_3fd80
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #0
	strb	r0, [r1, #0]
	cmp	r7, #0
	beq	.L_3fd68
	cmp	ip, r3
	bhi	.L_3fd7a
	b	.L_3fd6c
.L_3fd58:
	.4byte	gCurrentSprite
.L_3fd5c:
	.4byte	gWarioData
.L_3fd60:
	.4byte	sUnk_83C56E0
.L_3fd64:
	.4byte	0x7FFF
.L_3fd68:
	cmp	sl, r9
	bcc	.L_3fd7a
.L_3fd6c:
	bl	func_803F718
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	b	.L_3fdde
.L_3fd7a:
	bl	func_803FB14
	b	.L_3fdde
.L_3fd80:
	add	r0, r2, #1
	mov	r2, r8
	strb	r0, [r2, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	mov	r0, #41	@ 0x29
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_3fdb4
	lsl	r0, r2, #1
	add	r0, r0, r3
	ldrh	r1, [r0, #0]
	cmp	r7, #0
	beq	.L_3fdc2
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmp	r0, r5
	bne	.L_3fdb8
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	add	r0, r6, r0
	b	.L_3fddc
.L_3fdb4:
	.4byte	sUnk_83C5598
.L_3fdb8:
	add	r0, r2, #1
	mov	r2, ip
	strb	r0, [r2, #0]
	add	r0, r6, r1
	b	.L_3fddc
.L_3fdc2:
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmp	r0, r5
	bne	.L_3fdd4
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r1, [r0, #0]
	b	.L_3fdda
.L_3fdd4:
	add	r0, r2, #1
	mov	r5, ip
	strb	r0, [r5, #0]
.L_3fdda:
	sub	r0, r6, r1
.L_3fddc:
	strh	r0, [r4, #10]
.L_3fdde:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_803FDEC
func_803FDEC:
	push	{r4, lr}
	ldr	r0, .L_3fe48
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #164	@ 0xa4
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_3fe4c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #6
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_3fe50
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3fe48:
	.4byte	gCurrentSprite
.L_3fe4c:
	.4byte	0xFFFB
.L_3fe50:
	.4byte	sUnk_83C5528


thumb_func_start func_803FE54
func_803FE54:
	push	{r4, lr}
	ldr	r0, .L_3feb8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_3febc
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_3fec0
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #6
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #34	@ 0x22
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #12
	strb	r0, [r1, #0]
	ldr	r0, .L_3fec4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r2, ip
	strb	r0, [r2, #31]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3feb8:
	.4byte	gCurrentSprite
.L_3febc:
	.4byte	0x8440
.L_3fec0:
	.4byte	0xFFFB
.L_3fec4:
	.4byte	sKeyzerIdleOam


thumb_func_start func_803FEC8
func_803FEC8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #63	@ 0x3f
	ldr	r0, .L_3ff30
	ldrb	r4, [r0, #24]
	mov	ip, r0
	mov	r6, #1
	ldr	r2, .L_3ff34
	add	r3, r2, #0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r5, r2, r0
.L_3fede:
	ldrb	r0, [r2, #23]
	cmp	r0, r7
	bne	.L_3fef4
	ldrb	r0, [r2, #24]
	cmp	r0, r4
	bne	.L_3fef4
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3ff44
.L_3fef4:
	add	r2, #44	@ 0x2c
	add	r3, #44	@ 0x2c
	cmp	r2, r5
	ble	.L_3fede
.L_3fefc:
	mov	r0, #0
	mov	r1, ip
	strh	r0, [r1, #0]
	bl	func_803F264
	ldr	r1, .L_3ff38
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_3ff3c
	ldrb	r1, [r2, #3]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, #96	@ 0x60
	bl	m4aSongNumStart
	ldr	r2, .L_3ff40
	ldrh	r1, [r2, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ff4e
	ldrh	r0, [r2, #18]
	add	r0, #64	@ 0x40
	b	.L_3ff52
	.align	2, 0
.L_3ff30:
	.4byte	gCurrentSprite
.L_3ff34:
	.4byte	gSpriteData
.L_3ff38:
	.4byte	gCollectedKeyzer
.L_3ff3c:
	.4byte	gSwitchStates
.L_3ff40:
	.4byte	gWarioData
.L_3ff44:
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	b	.L_3fefc
.L_3ff4e:
	ldrh	r0, [r2, #18]
	sub	r0, #64	@ 0x40
.L_3ff52:
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	ldr	r0, .L_3ff68
	ldrh	r0, [r0, #20]
	sub	r0, #96	@ 0x60
	mov	r2, #75	@ 0x4b
	bl	SpriteSpawnSecondary
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_3ff68:
	.4byte	gWarioData


thumb_func_start SpriteGhost
SpriteGhost:
	push	{lr}
	ldr	r1, .L_3ff8c
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_3ffbc
	cmp	r0, #18
	bgt	.L_3ff90
	cmp	r0, #0
	blt	.L_3fff0
	cmp	r0, #1
	ble	.L_3ffa4
	cmp	r0, #16
	beq	.L_3ffaa
	b	.L_3fff0
.L_3ff8c:
	.4byte	gCurrentSprite
.L_3ff90:
	cmp	r0, #110	@ 0x6e
	beq	.L_3ffd0
	cmp	r0, #110	@ 0x6e
	bgt	.L_3ff9e
	cmp	r0, #20
	beq	.L_3ffc6
	b	.L_3fff0
.L_3ff9e:
	cmp	r0, #111	@ 0x6f
	beq	.L_3ffd4
	b	.L_3fff0
.L_3ffa4:
	bl	func_803F66C
	b	.L_3fff0
.L_3ffaa:
	bl	func_803F2B4
	bl	func_803F320
	cmp	r0, #0
	bne	.L_3fff8
	bl	func_803F7CC
	b	.L_3fff0
.L_3ffbc:
	bl	func_803F2B4
	bl	func_803F958
	b	.L_3fff0
.L_3ffc6:
	bl	func_803F2B4
	bl	func_803FB28
	b	.L_3fff0
.L_3ffd0:
	bl	func_803FC70
.L_3ffd4:
	bl	func_803FCF8
	ldr	r0, .L_3ffe8
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_3ffec
	bl	func_803F528
	b	.L_3fff0
	.align	2, 0
.L_3ffe8:
	.4byte	gCollectedKeyzer
.L_3ffec:
	bl	func_803F414
.L_3fff0:
	ldr	r1, .L_3fffc
	ldr	r2, .L_40000
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_3fff8:
	pop	{r0}
	bx	r0
.L_3fffc:
	.4byte	0x4000052
.L_40000:
	.4byte	0x90B


thumb_func_start SpriteUnknownA7
SpriteUnknownA7:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #63	@ 0x3f
	ldr	r0, .L_4004c
	ldrb	r5, [r0, #24]
	mov	r3, #0
	add	r4, r0, #0
	ldr	r6, .L_40050
.L_40012:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r6
	ldrb	r0, [r2, #23]
	cmp	r0, r7
	bne	.L_40062
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_40062
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_40062
	ldrh	r0, [r2, #8]
	strh	r0, [r4, #8]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4005c
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bne	.L_40054
	ldrh	r0, [r2, #10]
	add	r0, #52	@ 0x34
	strh	r0, [r4, #10]
	b	.L_40068
	.align	2, 0
.L_4004c:
	.4byte	gCurrentSprite
.L_40050:
	.4byte	gSpriteData
.L_40054:
	ldrh	r0, [r2, #10]
	add	r0, #24
	strh	r0, [r4, #10]
	b	.L_40068
.L_4005c:
	ldrh	r0, [r2, #10]
	strh	r0, [r4, #10]
	b	.L_40068
.L_40062:
	add	r3, #1
	cmp	r3, #23
	ble	.L_40012
.L_40068:
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_40076
	bl	func_803FDEC
.L_40076:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownA8
SpriteUnknownA8:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #63	@ 0x3f
	mov	ip, r0
	ldr	r0, .L_400c0
	ldrb	r5, [r0, #24]
	mov	r3, #0
	add	r4, r0, #0
	ldr	r6, .L_400c4
	add	r7, r4, #0
.L_4008e:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r6
	ldrb	r0, [r2, #23]
	cmp	r0, ip
	bne	.L_400c8
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_400c8
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_400c8
	ldrh	r0, [r2, #8]
	strh	r0, [r7, #8]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_400e0
	ldrh	r0, [r2, #10]
	sub	r0, #72	@ 0x48
	strh	r0, [r4, #10]
	b	.L_400ce
.L_400c0:
	.4byte	gCurrentSprite
.L_400c4:
	.4byte	gSpriteData
.L_400c8:
	add	r3, #1
	cmp	r3, #23
	ble	.L_4008e
.L_400ce:
	ldr	r0, .L_400dc
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_400f0
	cmp	r0, #49	@ 0x31
	beq	.L_400f6
	b	.L_400fa
.L_400dc:
	.4byte	gCurrentSprite
.L_400e0:
	ldr	r1, .L_400ec
	add	r0, r1, #0
	ldrh	r2, [r2, #10]
	add	r0, r0, r2
	strh	r0, [r4, #10]
	b	.L_400ce
.L_400ec:
	.4byte	0xFFD0
.L_400f0:
	bl	func_803FE54
	b	.L_400fa
.L_400f6:
	bl	func_803FEC8
.L_400fa:
	ldr	r2, .L_40128
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_40120
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_40120
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #97	@ 0x61
	bl	m4aSongNumStart
.L_40120:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_40128:
	.4byte	gCurrentSprite
