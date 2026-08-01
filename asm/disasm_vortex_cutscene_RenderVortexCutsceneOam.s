.syntax divided
.align 2, 0
.global RenderVortexCutsceneOam
.thumb
.type RenderVortexCutsceneOam, %function
RenderVortexCutsceneOam:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	mov	r0, #0
	mov	r8, r0
	ldr	r0, .L_80558
	ldrb	r0, [r0, #0]
	mov	r9, r0
	lsl	r0, r0, #3
	ldr	r1, .L_8055c
	add	r6, r0, r1
	ldr	r0, .L_80560
	ldrh	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #88	@ 0x58
	bls	.L_801b8
	b	.L_80302
.L_801b8:
	ldr	r5, .L_80564
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r2, r9
	cmp	r2, #128	@ 0x80
	ble	.L_801ca
	bl	.L_80a42
.L_801ca:
	ldr	r7, .L_80568
	mov	r3, sp
	add	r3, #2
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #4
	str	r4, [sp, #12]
	mov	r0, sp
	add	r0, #6
	str	r0, [sp, #16]
	cmp	r8, r9
	bge	.L_80250
	add	r4, r7, #0
	add	r3, r1, #0
	ldr	r1, .L_8056c
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r8, r9
.L_801f2:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r4, #6]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrh	r1, [r4, #4]
	add	r1, r2, r1
	sub	r1, #32
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80570
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_801f2
	mov	r8, r9
.L_80250:
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r2, .L_80574
	add	r0, r0, r2
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #8]
	strh	r0, [r4, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	ldr	r2, .L_8055c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r4, [sp, #12]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_80302:
	ldr	r0, .L_80560
	ldrh	r0, [r0, #0]
	sub	r0, #30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #89	@ 0x59
	bls	.L_80312
	b	.L_8046c
.L_80312:
	ldr	r0, .L_80578
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_8031c
	b	.L_8046c
.L_8031c:
	ldr	r0, .L_8057c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_80326
	b	.L_8046c
.L_80326:
	ldr	r5, .L_80580
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r7, r9
	cmp	r7, #128	@ 0x80
	ble	.L_80336
	b	.L_80a42
.L_80336:
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #16]
	ldr	r7, .L_80584
	cmp	r8, r9
	bge	.L_803be
	add	r4, r7, #0
	mov	r3, #15
	neg	r3, r3
	mov	ip, r3
	ldr	r1, .L_8055c
	mov	r0, #13
	neg	r0, r0
	mov	sl, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
.L_80364:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r4, #6]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrh	r1, [r4, #4]
	add	r1, r2, r1
	sub	r1, #32
	ldr	r0, .L_8056c
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80570
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, r9
	blt	.L_80364
.L_803be:
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #8]
	strh	r0, [r2, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #12]
	strh	r0, [r4, #0]
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	ldr	r2, .L_8055c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #38]	@ 0x26
	ldr	r4, [sp, #8]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #46]	@ 0x2e
	ldr	r7, [sp, #12]
	ldrh	r1, [r7, #0]
	strh	r1, [r2, #54]	@ 0x36
	strh	r0, [r2, #62]	@ 0x3e
.L_8046c:
	ldr	r0, .L_80588
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #18
	beq	.L_80478
	b	.L_80a3c
.L_80478:
	ldr	r0, .L_8058c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bhi	.L_80482
	b	.L_80a3c
.L_80482:
	cmp	r0, #3
	beq	.L_80488
	b	.L_80630
.L_80488:
	ldr	r0, .L_80590
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_80492
	b	.L_80630
.L_80492:
	ldr	r1, .L_80594
	ldr	r2, .L_80598
	ldrb	r0, [r2, #6]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r3, sp
	add	r3, #2
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #4
	str	r4, [sp, #12]
	mov	r7, sp
	add	r7, #6
	str	r7, [sp, #16]
	cmp	r8, r9
	bge	.L_8059e
	add	r0, r2, #0
	mov	sl, r0
.L_804be:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, r8
	lsl	r0, r1, #3
	ldr	r3, .L_8055c
	add	r4, r0, r3
	mov	r7, sl
	ldrb	r0, [r7, #2]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r4, #0]
	ldrb	r0, [r7, #6]
	cmp	r0, #4
	bne	.L_804e8
	ldr	r1, .L_80598
.L_804e0:
	ldrb	r0, [r1, #2]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r4, #0]
.L_804e8:
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r3, sl
	mov	r7, #0
	ldrsh	r0, [r3, r7]
	add	r0, r2, r0
	sub	r0, #16
	ldr	r1, .L_8056c
	mov	ip, r1
	and	r0, r1
	ldrh	r1, [r4, #2]
	ldr	r3, .L_80570
	and	r3, r1
	orr	r3, r0
	strh	r3, [r4, #2]
	mov	r7, sl
	ldrb	r0, [r7, #6]
	cmp	r0, #4
	bne	.L_80532
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	add	r0, r2, r0
	sub	r0, #32
	mov	r1, #255	@ 0xff
	and	r0, r1
	mov	r2, ip
	and	r0, r2
	ldr	r7, .L_80570
	and	r3, r7
	orr	r3, r0
	strh	r3, [r4, #2]
.L_80532:
	ldrb	r1, [r4, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r9
	b	.L_8059c
	.align	2, 0
.L_80558:
	.4byte	gOamSlotsUsed
.L_8055c:
	asr	r4, r0, #17
	lsl	r0, r0, #12
.L_80560:
	.4byte	gUnk_3003D66
.L_80564:
	.4byte	sStageEjectionWarioOam
.L_80568:
	.4byte	gStageEntryMainSpriteState
.L_8056c:
	.4byte	0x1FF
.L_80570:
	.4byte	0xFFFFFE00
.L_80574:
	.4byte	sSinCosTable
.L_80578:
	.4byte	gCollectedKeyzer
.L_8057c:
	.4byte	gUnk_3003C34
.L_80580:
	.4byte	sUnk_863D9EC
.L_80584:
	.4byte	gUnk_3003D78
.L_80588:
	.4byte	gSubGameMode
.L_8058c:
	.4byte	gStageEntrySequenceStep
.L_80590:
	.4byte	gStageResultsAnimationFinished
.L_80594:
	.4byte	sUnk_863A47C
.L_80598:
	.4byte	gStageResultsTreasure
.L_8059c:
	blt	.L_804be
.L_8059e:
	ldr	r0, .L_8083c
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	ldr	r2, .L_80840
	mov	r3, #4
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r7, .L_8083c
	mov	r0, #0
	ldrsh	r4, [r7, r0]
	ldr	r1, .L_80840
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	ldrh	r4, [r7, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldr	r7, .L_80840
	mov	r1, #4
	ldrsh	r0, [r7, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r3, #4
	ldrsh	r0, [r7, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r4, [sp, #16]
	strh	r0, [r4, #0]
	ldr	r2, .L_80844
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r7, [sp, #8]
	ldrh	r1, [r7, #0]
	strh	r1, [r2, #14]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_80630:
	ldr	r0, .L_80848
	ldrb	r3, [r0, #0]
	ldr	r4, .L_8084c
	mov	ip, r4
	cmp	r3, #1
	bne	.L_806e8
	ldrh	r1, [r4, #0]
	add	r1, #1
	strh	r1, [r4, #0]
	ldr	r2, .L_80850
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8066c
	mov	r7, ip
	strh	r3, [r7, #0]
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8066c
	strh	r0, [r7, #2]
.L_8066c:
	mov	r1, ip
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_806e8
	ldr	r1, .L_80844
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	ldr	r7, .L_80854
	mov	r3, r8
	lsl	r0, r3, #3
	add	r3, r0, r1
	ldr	r4, .L_80858
	mov	r0, r9
	mov	r1, r8
	sub	r0, r0, r1
	mov	r8, r0
.L_8069a:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_8085c
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r4
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80860
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r0, r8
	cmp	r0, #0
	bne	.L_8069a
	mov	r8, r9
.L_806e8:
	mov	r1, #0
.L_806ea:
	lsl	r0, r1, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	add	r7, r1, #1
	cmp	r0, #0
	beq	.L_8076e
	ldr	r0, .L_80864
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r5, [r1, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_8076e
	ldr	r1, .L_80854
	mov	sl, r1
	mov	r2, r8
	lsl	r0, r2, #3
	ldr	r4, .L_80844
	add	r3, r0, r4
	ldr	r4, .L_80858
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_8071c:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_8085c
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r4
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80860
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r0, r8
	cmp	r0, #0
	bne	.L_8071c
	mov	r8, r9
.L_8076e:
	add	r1, r7, #0
	cmp	r1, #3
	ble	.L_806ea
	mov	r0, ip
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_80824
	mov	r2, ip
	ldrh	r1, [r2, #32]
	add	r1, #1
	strh	r1, [r2, #32]
	ldr	r2, .L_80868
	mov	r3, ip
	ldrh	r0, [r3, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_807b2
	mov	r0, #1
	strh	r0, [r3, #32]
	ldrh	r0, [r3, #34]	@ 0x22
	add	r0, #1
	strh	r0, [r3, #34]	@ 0x22
	ldrh	r0, [r3, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_807b2
	strh	r0, [r3, #34]	@ 0x22
.L_807b2:
	mov	r4, ip
	ldrh	r0, [r4, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_80824
	ldr	r1, .L_80844
	ldr	r7, .L_80858
	ldr	r0, .L_80860
	mov	sl, r0
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_807de:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #144	@ 0x90
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
.L_80810:
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_807de
	mov	r8, r9
.L_80824:
	ldr	r3, .L_8086c
	ldrb	r0, [r3, #0]
	cmp	r0, #4
	bls	.L_808f8
	ldr	r0, .L_80870
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_808f8
.L_80834:
	cmp	r0, #1
	bne	.L_80878
	ldr	r0, .L_80874
	b	.L_80886
.L_8083c:
	str	r0, [r7, r4]
	lsr	r1, r1, #32
.L_80840:
	.4byte	gStageResultsTreasure
.L_80844:
	.4byte	gOamBuffer
.L_80848:
	.4byte	gStageResultsAllJewelPieces
.L_8084c:
	.4byte	gStageResultsTreasureIcons
.L_80850:
	.4byte	sUnk_863DB7C
.L_80854:
	.4byte	gUnk_3003C4A
.L_80858:
	.4byte	0x1FF
.L_8085c:
	.4byte	sStageResultsTreasureXPositions
.L_80860:
	.4byte	0xFFFFFE00
.L_80864:
	.4byte	sUnk_863A47C
.L_80868:
	.4byte	sUnk_863DBE4
.L_8086c:
	.4byte	gStageEntrySequenceStep
.L_80870:
	.4byte	gStageResultsScoreRank
.L_80874:
	.4byte	sUnk_863DCCC
.L_80878:
	cmp	r0, #2
	bne	.L_80884
	ldr	r0, .L_80880
	b	.L_80886
.L_80880:
	.4byte	sUnk_863DCDC
.L_80884:
	ldr	r0, .L_809a8
.L_80886:
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r4, r9
	cmp	r4, #128	@ 0x80
	ble	.L_80896
	b	.L_80a42
.L_80896:
	cmp	r8, r9
	bge	.L_808f8
	ldr	r1, .L_809ac
	ldr	r7, .L_809b0
	ldr	r0, .L_809b4
	mov	sl, r0
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_808b2:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #80	@ 0x50
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_808b2
	mov	r8, r9
.L_808f8:
	ldr	r0, .L_809b8
	ldrb	r1, [r0, #4]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.L_809a2
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_809bc
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_80932
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
.L_80928:
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_80932
	strh	r0, [r3, #2]
.L_80932:
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_809a2
	ldr	r1, .L_809ac
	ldr	r7, .L_809b0
	ldr	r3, .L_809b4
	mov	sl, r3
.L_8094c:
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_8095c:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #56	@ 0x38
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
.L_80984:
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_8095c
	mov	r8, r9
.L_809a2:
	mov	r1, #0
	b	.L_80a34
	.align	2, 0
.L_809a8:
	.4byte	sUnk_863DCEC
.L_809ac:
	.4byte	gOamBuffer
.L_809b0:
	.4byte	0x1FF
.L_809b4:
	.4byte	0xFFFFFE00
.L_809b8:
	.4byte	gStageResultsNewHighScoreIcon
.L_809bc:
	.4byte	sUnk_863DCB4
.L_809c0:
	ldr	r5, .L_80a54
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	add	r7, r1, #1
	cmp	r8, r9
	bge	.L_80a32
	lsl	r0, r1, #3
	add	r4, r0, #0
	add	r4, #88	@ 0x58
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	mov	r1, r8
	lsl	r0, r1, #3
	ldr	r2, .L_80a58
	add	r3, r0, r2
	ldr	r0, .L_80a5c
	mov	sl, r0
	mov	r2, r9
	sub	r2, r2, r1
	mov	r8, r2
.L_809ec:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, r4
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80a60
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_809ec
	mov	r8, r9
.L_80a32:
	add	r1, r7, #0
.L_80a34:
	ldr	r3, .L_80a64
	ldrb	r3, [r3, #0]
	cmp	r1, r3
	blt	.L_809c0
.L_80a3c:
	ldr	r0, .L_80a68
	mov	r4, r9
.L_80a40:
	strb	r4, [r0, #0]
.L_80a42:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_80a54:
	.4byte	sUnk_863D9F4
.L_80a58:
	.4byte	gOamBuffer
.L_80a5c:
	.4byte	0x1FF
.L_80a60:
	.4byte	0xFFFFFE00
.L_80a64:
	.4byte	gStageResultsRemainingHearts
.L_80a68:
	.4byte	gOamSlotsUsed
.size RenderVortexCutsceneOam, .-RenderVortexCutsceneOam
