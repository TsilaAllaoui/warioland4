.align 2, 0
.global DrawCurrentSecondarySprite
.thumb
.type DrawCurrentSecondarySprite, %function
DrawCurrentSecondarySprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	str	r0, [sp, #0]
	ldr	r0, .L_7639c
	ldrb	r2, [r0, #2]
	add	r4, r0, #0
	cmp	r2, #77	@ 0x4d
	bls	.L_763b4
	ldr	r1, .L_763a0
	ldrb	r2, [r1, #0]
	ldr	r0, .L_763a4
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	ble	.L_76312
	b	.L_76620
.L_76312:
	lsl	r0, r2, #3
	ldr	r2, .L_763a8
	add	r3, r0, r2
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #2
	mov	r9, r0
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	mov	ip, r0
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	bne	.L_76334
	b	.L_765d8
.L_76334:
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
	add	r4, r3, #0
.L_76340:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_763ac
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_763b0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	cmp	r7, #0
	beq	.L_76390
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r2, sl
	orr	r0, r2
	strb	r0, [r4, #3]
.L_76390:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_76340
	b	.L_765d8
.L_7639c:
	.4byte	gCurrentSecondarySprite
.L_763a0:
	.4byte	gOamSlotsUsed
.L_763a4:
	.4byte	gCurrentSecondarySpriteOamData
.L_763a8:
	.4byte	gOamBuffer
.L_763ac:
	.4byte	0x000001ff
.L_763b0:
	.4byte	0xfffffe00
.L_763b4:
	cmp	r2, #75	@ 0x4b
	beq	.L_763ba
	b	.L_764fc
.L_763ba:
	ldr	r0, .L_763c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_763cc
	mov	r0, #0
	mov	sl, r0
	b	.L_763dc
.L_763c8:
	.4byte	gUnk_3000034
.L_763cc:
	ldr	r0, .L_764d8
	ldrb	r0, [r0, #0]
	mov	r1, #2
	mov	sl, r1
	cmp	r0, #0
	beq	.L_763dc
	mov	r2, #1
	mov	sl, r2
.L_763dc:
	ldrh	r1, [r4, #8]
	lsr	r1, r1, #2
	ldr	r0, .L_764dc
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	ldr	r1, .L_764e0
	ldrb	r2, [r1, #0]
	ldr	r0, .L_764e4
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	ble	.L_76404
	b	.L_76620
.L_76404:
	lsl	r0, r2, #3
	ldr	r2, .L_764e8
	add	r3, r0, r2
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_764ec
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	beq	.L_764ac
	mov	r2, #3
	mov	r1, sp
	strb	r2, [r1, #4]
	mov	r0, sl
	lsl	r0, r0, #2
	str	r0, [sp, #8]
	add	r4, r3, #0
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
.L_76442:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_764f0
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_764f4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	ldr	r1, [sp, #8]
	orr	r0, r1
	strb	r0, [r4, #5]
	cmp	r7, #0
	beq	.L_764a2
	ldrb	r0, [r4, #1]
	mov	r2, sp
	ldrb	r2, [r2, #4]
	orr	r0, r2
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r1, sl
	orr	r0, r1
	strb	r0, [r4, #3]
.L_764a2:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_76442
.L_764ac:
	mov	r6, r8
	ldr	r2, .L_764e0
	strb	r6, [r2, #0]
	cmp	r7, #0
	bne	.L_764b8
	b	.L_76620
.L_764b8:
	ldr	r0, [sp, #0]
	lsl	r2, r0, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	lsl	r0, r0, #3
	ldr	r1, .L_764e8
	add	r0, r0, r1
	ldr	r1, .L_764f8
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #97	@ 0x61
	lsl	r0, r0, #3
	ldr	r6, .L_764e8
	b	.L_765fc
	.align	2, 0
.L_764d8:
	.4byte	gDrawWarioOverBackground
.L_764dc:
	.4byte	gBg1YPosition
.L_764e0:
	.4byte	gOamSlotsUsed
.L_764e4:
	.4byte	gCurrentSecondarySpriteOamData
.L_764e8:
	.4byte	gOamBuffer
.L_764ec:
	.4byte	gBg1XPosition
.L_764f0:
	.4byte	0x000001ff
.L_764f4:
	.4byte	0xfffffe00
.L_764f8:
	.4byte	gSecondarySpriteAffinePA
.L_764fc:
	ldr	r5, .L_76524
	cmp	r2, #73	@ 0x49
	bhi	.L_76528
	ldrh	r3, [r5, #0]
	add	r1, r3, #0
	add	r1, #192	@ 0xc0
	ldrh	r0, [r4, #8]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r2, r0, r6
	cmp	r1, r2
	bgt	.L_7651e
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #2
	add	r0, r3, r1
	cmp	r0, r2
	bge	.L_76528
.L_7651e:
	mov	r0, #0
	strb	r0, [r4, #0]
	b	.L_76620
.L_76524:
	.4byte	gBg1YPosition
.L_76528:
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #2
	ldrh	r1, [r5, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	ldr	r1, .L_76630
	ldrb	r2, [r1, #0]
	ldr	r0, .L_76634
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	bgt	.L_76620
	lsl	r0, r2, #3
	ldr	r2, .L_76638
	add	r3, r0, r2
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_7663c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	beq	.L_765d8
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
	add	r4, r3, #0
.L_7657e:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_76640
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_76644
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	cmp	r7, #0
	beq	.L_765ce
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r2, sl
	orr	r0, r2
	strb	r0, [r4, #3]
.L_765ce:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_7657e
.L_765d8:
	mov	r0, r8
	ldr	r6, .L_76630
	strb	r0, [r6, #0]
	cmp	r7, #0
	beq	.L_76620
	ldr	r1, [sp, #0]
	lsl	r2, r1, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	lsl	r0, r0, #3
	ldr	r6, .L_76638
	add	r0, r0, r6
	ldr	r1, .L_76648
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #97	@ 0x61
	lsl	r0, r0, #3
.L_765fc:
	add	r0, r0, r6
	ldr	r1, .L_7664c
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #98	@ 0x62
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldr	r1, .L_76650
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #99	@ 0x63
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldr	r1, .L_76654
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
.L_76620:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76630:
	.4byte	gOamSlotsUsed
.L_76634:
	.4byte	gCurrentSecondarySpriteOamData
.L_76638:
	.4byte	gOamBuffer
.L_7663c:
	.4byte	gBg1XPosition
.L_76640:
	.4byte	0x000001ff
.L_76644:
	.4byte	0xfffffe00
.L_76648:
	.4byte	gSecondarySpriteAffinePA
.L_7664c:
	.4byte	gSecondarySpriteAffinePB
.L_76650:
	.4byte	gSecondarySpriteAffinePC
.L_76654:
	.4byte	gSecondarySpriteAffinePD
