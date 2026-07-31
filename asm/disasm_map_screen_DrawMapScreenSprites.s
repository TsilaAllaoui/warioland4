.align 2, 0
.global DrawMapScreenSprites
.thumb
.type DrawMapScreenSprites, %function
DrawMapScreenSprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r7, #0
	ldr	r4, .L_7c5d8
	ldrb	r6, [r4, #0]
	lsl	r1, r6, #3
	ldr	r0, .L_7c5dc
	add	r5, r1, r0
	ldr	r2, .L_7c5e0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c5e4
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c2a0
	mov	r0, #1
	add	r1, r2, #0
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #2]
	add	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_7c5e8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7c2a0
	strh	r7, [r2, #2]
.L_7c2a0:
	ldr	r1, .L_7c5e0
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c2b6
	b	.L_7ca5a
.L_7c2b6:
	cmp	r7, r6
	bge	.L_7c320
	ldr	r1, .L_7c5dc
	ldr	r2, .L_7c5ec
	mov	r9, r2
	ldr	r0, .L_7c5f0
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c2d0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #90	@ 0x5a
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c2d0
	add	r7, r6, #0
.L_7c320:
	ldr	r1, .L_7c5f4
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	beq	.L_7c3b0
	ldr	r2, .L_7c5f8
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7c5fc
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c344
	b	.L_7ca5a
.L_7c344:
	cmp	r7, r6
	bge	.L_7c3b0
	ldr	r1, .L_7c5dc
	mov	r8, r2
	ldr	r0, .L_7c5f0
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7c5ec
	mov	r9, r0
	sub	r7, r6, r7
.L_7c360:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c360
	add	r7, r6, #0
.L_7c3b0:
	ldr	r0, .L_7c600
	ldrb	r1, [r0, #0]
	cmp	r1, #2
	bne	.L_7c468
	ldr	r2, .L_7c604
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c608
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c3ea
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
	bne	.L_7c3ea
	strh	r0, [r2, #2]
.L_7c3ea:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c3fe
	b	.L_7ca5a
.L_7c3fe:
	cmp	r7, r6
	bge	.L_7c468
	ldr	r1, .L_7c5dc
	ldr	r0, .L_7c5ec
	mov	r9, r0
	ldr	r2, .L_7c5f0
	mov	sl, r2
	mov	r0, #13
	neg	r0, r0
	mov	r8, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c418:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c418
	add	r7, r6, #0
.L_7c468:
	ldr	r0, .L_7c60c
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_7c544
	ldr	r2, .L_7c610
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c614
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r2
	cmp	r0, r1
	bcs	.L_7c4aa
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
	bne	.L_7c4aa
	strh	r0, [r2, #2]
	mov	r0, #0
	strb	r0, [r4, #0]
.L_7c4aa:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_7c544
	mov	r1, #0
.L_7c4b2:
	mov	r2, sl
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	ldr	r2, .L_7c614
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c4ca
	b	.L_7ca5a
.L_7c4ca:
	add	r0, r1, #1
	mov	r9, r0
	cmp	r7, r6
	bge	.L_7c53e
	ldr	r0, .L_7c618
	lsl	r1, r1, #2
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r7, #3
	ldr	r2, .L_7c5dc
	add	r4, r0, r2
	ldr	r0, .L_7c61c
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	ip, r1
	sub	r7, r6, r7
.L_7c4ec:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	add	r1, r0, r2
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, ip
	add	r1, r2, r0
	ldr	r0, .L_7c5ec
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_7c5f0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c4ec
	add	r7, r6, #0
.L_7c53e:
	mov	r1, r9
	cmp	r1, #3
	ble	.L_7c4b2
.L_7c544:
	ldr	r0, .L_7c620
	ldrb	r1, [r0, #0]
	cmp	r1, #4
	bne	.L_7c554
	ldr	r0, .L_7c624
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_7c588
.L_7c554:
	ldr	r3, .L_7c628
	ldrh	r0, [r3, #4]
	add	r0, #1
	strh	r0, [r3, #4]
	ldrh	r1, [r3, #6]
	ldr	r2, .L_7c62c
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7c588
	mov	r0, #1
	strh	r0, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r0, #1
	strh	r0, [r3, #6]
	ldrh	r0, [r3, #6]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7c588
	strh	r2, [r3, #6]
.L_7c588:
	ldr	r1, .L_7c600
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7c670
	ldr	r2, .L_7c628
	ldrh	r0, [r2, #6]
	ldr	r1, .L_7c62c
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c5aa
	b	.L_7ca5a
.L_7c5aa:
	cmp	r7, r6
	bge	.L_7c670
	ldr	r1, .L_7c5dc
	mov	r8, r2
	ldr	r2, .L_7c5f0
	mov	sl, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7c5ec
	mov	r9, r0
	sub	r7, r6, r7
.L_7c5c0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #2]
	lsr	r1, r1, #4
	add	r1, r1, r2
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	b	.L_7c630
	.align	2, 0
.L_7c5d8:
	.4byte	gOamSlotsUsed
.L_7c5dc:
	.4byte	gOamBuffer
.L_7c5e0:
	.4byte	gUnk_3003C74
.L_7c5e4:
	.4byte	sUnk_863FFAC
.L_7c5e8:
	.4byte	gUnk_3003C96
.L_7c5ec:
	.4byte	0x1FF
.L_7c5f0:
	.4byte	0xFFFFFE00
.L_7c5f4:
	.4byte	gUnk_3003C6C
.L_7c5f8:
	.4byte	gStageEntryMainSpriteState
.L_7c5fc:
	.4byte	gUnk_3003C40
.L_7c600:
	.4byte	gUnk_3003C95
.L_7c604:
	.4byte	gUnk_3003C84
.L_7c608:
	.4byte	sUnk_8640C68
.L_7c60c:
	.4byte	gUnk_3003C97
.L_7c610:
	.4byte	gUnk_3003C80
.L_7c614:
	.4byte	sUnk_8641070
.L_7c618:
	.4byte	sUnk_86395B4
.L_7c61c:
	.4byte	sUnk_86395A4
.L_7c620:
	.4byte	gUnk_3003C94
.L_7c624:
	.4byte	gStageEntrySequenceStep
.L_7c628:
	.4byte	gUnk_3003C88
.L_7c62c:
	.4byte	gUnk_3003C68
.L_7c630:
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #0]
	lsr	r1, r1, #4
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c5c0
	add	r7, r6, #0
.L_7c670:
	ldr	r1, .L_7c7c4
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	bne	.L_7c6f6
	ldr	r2, .L_7c7c8
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7c7cc
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c694
	b	.L_7ca5a
.L_7c694:
	cmp	r7, r6
	bge	.L_7c6f6
	ldr	r1, .L_7c7d0
	mov	r8, r2
	ldr	r0, .L_7c7d4
	mov	sl, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_7c7d8
	mov	r9, r1
	sub	r7, r6, r7
.L_7c6aa:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c6aa
	add	r7, r6, #0
.L_7c6f6:
	ldr	r2, .L_7c7dc
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bhi	.L_7c7f0
	ldr	r2, .L_7c7e0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c7e4
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c730
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
	bne	.L_7c730
	strh	r0, [r2, #2]
.L_7c730:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c744
	b	.L_7ca5a
.L_7c744:
	cmp	r7, r6
	blt	.L_7c74a
	b	.L_7c8b8
.L_7c74a:
	ldr	r1, .L_7c7d0
	ldr	r0, .L_7c7dc
	mov	r8, r0
	ldr	r2, .L_7c7e8
	mov	sl, r2
	ldr	r0, .L_7c7d4
	mov	ip, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_7c7d8
	mov	r9, r1
	sub	r7, r6, r7
.L_7c762:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_7c7ec
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r1, r2
	ldr	r2, .L_7c7c4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c762
	add	r7, r6, #0
	b	.L_7c8b8
	.align	2, 0
.L_7c7c4:
	.4byte	gUnk_3003C6C
.L_7c7c8:
	.4byte	gStageEntryMainSpriteState
.L_7c7cc:
	.4byte	gUnk_3003C40
.L_7c7d0:
	.4byte	gOamBuffer
.L_7c7d4:
	.4byte	0xFFFFFE00
.L_7c7d8:
	.4byte	0x1FF
.L_7c7dc:
	.4byte	gUnk_3003C60
.L_7c7e0:
	.4byte	gUnk_3003C7C
.L_7c7e4:
	.4byte	sUnk_8640B28
.L_7c7e8:
	.4byte	sUnk_8639534
.L_7c7ec:
	.4byte	sUnk_8639550
.L_7c7f0:
	ldr	r1, .L_7ca6c
	ldrb	r0, [r2, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r2, .L_7ca70
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
	bcs	.L_7c82c
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
	bne	.L_7c82c
	strh	r0, [r2, #2]
.L_7c82c:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c840
	b	.L_7ca5a
.L_7c840:
	cmp	r7, r6
	bge	.L_7c8b8
	ldr	r0, .L_7ca74
	mov	ip, r0
	ldr	r1, .L_7ca78
	mov	r8, r1
	ldr	r2, .L_7ca7c
	mov	r9, r2
	ldr	r0, .L_7ca80
	mov	sl, r0
	ldr	r1, .L_7ca84
	lsl	r0, r7, #3
	add	r4, r0, r1
.L_7c85a:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, ip
	ldr	r1, [r0, #0]
	add	r1, r1, r2
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r0, .L_7ca8c
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	add	r7, #1
	cmp	r7, r6
	blt	.L_7c85a
.L_7c8b8:
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #3
	bhi	.L_7c954
	ldr	r0, .L_7ca94
	ldrh	r0, [r0, #2]
	ldr	r1, .L_7ca98
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c8da
	b	.L_7ca5a
.L_7c8da:
	cmp	r7, r6
	bge	.L_7c954
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca80
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7ca8c
	mov	r8, r0
	sub	r7, r6, r7
.L_7c8f4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #48	@ 0x30
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r8
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	add	r5, #2
	ldrb	r1, [r4, #5]
	mov	r0, #12
	orr	r1, r0
	strb	r1, [r4, #5]
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bne	.L_7c948
	mov	r0, r9
	and	r1, r0
	mov	r0, #8
	orr	r1, r0
	strb	r1, [r4, #5]
.L_7c948:
	add	r5, #2
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c8f4
	add	r7, r6, #0
.L_7c954:
	ldr	r1, .L_7ca9c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7c964
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bne	.L_7c9e2
.L_7c964:
	ldr	r3, .L_7caa0
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_7ca5a
	cmp	r7, r6
	bge	.L_7c9e2
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca8c
	mov	sl, r0
	ldr	r2, .L_7ca80
	mov	ip, r2
	ldr	r0, .L_7caa4
	mov	r9, r0
	ldr	r2, .L_7caa8
	mov	r8, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c98c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r9
	ldrh	r0, [r0, #0]
	str	r0, [sp, #0]
	ldr	r1, .L_7ca88
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	ldr	r0, [sp, #0]
	sub	r1, r0, r1
	str	r1, [sp, #0]
	asr	r0, r1, #4
	add	r0, r2, r0
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c98c
	add	r7, r6, #0
.L_7c9e2:
	ldr	r0, .L_7caac
	ldr	r2, .L_7cab0
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_7ca5a
	cmp	r7, r6
	bge	.L_7ca56
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca8c
	mov	r8, r0
	ldr	r2, .L_7ca80
	mov	r9, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7ca0c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #90	@ 0x5a
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r8
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7ca0c
.L_7ca56:
	ldr	r1, .L_7cab4
	strb	r6, [r1, #0]
.L_7ca5a:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7ca6c:
	.4byte	sUnk_8639618
.L_7ca70:
	.4byte	gUnk_3003C7C
.L_7ca74:
	.4byte	sUnk_8639550
.L_7ca78:
	.4byte	gUnk_3003C60
.L_7ca7c:
	.4byte	sUnk_8639534
.L_7ca80:
	.4byte	0xFFFFFE00
.L_7ca84:
	.4byte	gOamBuffer
.L_7ca88:
	.4byte	gUnk_3003C6C
.L_7ca8c:
	.4byte	0x1FF
.L_7ca90:
	.4byte	gUnk_3003C94
.L_7ca94:
	.4byte	gUnk_3003C78
.L_7ca98:
	.4byte	gUnk_3003C64
.L_7ca9c:
	.4byte	gUnk_3003C95
.L_7caa0:
	.4byte	sUnk_8640A58
.L_7caa4:
	.4byte	gUnk_3003C92
.L_7caa8:
	.4byte	gUnk_3003C90
.L_7caac:
	.4byte	sUnk_863FF84
.L_7cab0:
	.4byte	gUnk_3003C74
.L_7cab4:
	.4byte	gOamSlotsUsed
