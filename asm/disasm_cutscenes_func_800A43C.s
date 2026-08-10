.align 2, 0
.global func_800A43C
.thumb
.type func_800A43C, %function
func_800A43C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	mov	sl, r0
	mov	r0, #0
	str	r0, [sp, #24]
	str	r0, [sp, #4]
	str	r0, [sp, #8]
	str	r0, [sp, #20]
	str	r0, [sp, #12]
	ldr	r0, .L_a46c
	ldrh	r0, [r0, #0]
	cmp	r0, #10
	bls	.L_a460
	b	.L_a90e
.L_a460:
	lsl	r0, r0, #2
	ldr	r1, .L_a470
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_a46c:
	.4byte	gUnk_3002C60
.L_a470:
	.4byte	.L_a474
.L_a474:
	.4byte	.L_a4a0
	.4byte	.L_a510
	.4byte	.L_a588
	.4byte	.L_a5d8
	.4byte	.L_a670
	.4byte	.L_a6d0
	.4byte	.L_a6f8
	.4byte	.L_a77c
	.4byte	.L_a7ee
	.4byte	.L_a878
	.4byte	.L_a8fc
.L_a4a0:
	mov	r0, #7
	bl	DecreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_a4e0
	ldr	r1, .L_a4f0
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #121	@ 0x79
	bne	.L_a4e0
	ldr	r2, .L_a4f4
	ldr	r0, .L_a4f8
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_a4fc
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_a500
	ldr	r2, .L_a504
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #80	@ 0x50
	mov	r3, #184	@ 0xb8
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_a508
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a4e0:
	add	r1, sp, #4
	mov	r0, sl
	bl	SelectEndingCutsceneTreasureOam
	ldr	r1, .L_a50c
	mov	r0, #1
	strh	r0, [r1, #0]
	b	.L_a568
.L_a4f0:
	.4byte	gUnk_3002C64
.L_a4f4:
	.4byte	0x4000052
.L_a4f8:
	.4byte	gUnk_3002C5C
.L_a4fc:
	.4byte	gUnk_3002C5A
.L_a500:
	.4byte	0x4000050
.L_a504:
	.4byte	0x1641
.L_a508:
	.4byte	gUnk_3002C60
.L_a50c:
	.4byte	gUnk_3002CA4
.L_a510:
	mov	r0, #15
	mov	r4, sl
	and	r0, r4
	cmp	r0, #15
	bne	.L_a560
	ldr	r4, .L_a574
	ldrh	r0, [r4, #0]
	cmp	r0, #9
	bhi	.L_a526
	add	r0, #1
	strh	r0, [r4, #0]
.L_a526:
	ldr	r1, .L_a578
	ldrh	r0, [r1, #0]
	cmp	r0, #10
	bls	.L_a532
	sub	r0, #1
	strh	r0, [r1, #0]
.L_a532:
	ldr	r0, .L_a57c
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldrh	r2, [r4, #0]
	orr	r1, r2
	strh	r1, [r0, #0]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #2
	bne	.L_a54c
	mov	r0, #151	@ 0x97
	bl	m4aSongNumStartOrChange
.L_a54c:
	ldrh	r0, [r4, #0]
	cmp	r0, #10
	bne	.L_a560
	ldr	r1, .L_a580
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a584
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a560:
	add	r1, sp, #4
	mov	r0, sl
	bl	SelectEndingCutsceneTreasureOam
.L_a568:
	add	r1, sp, #8
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence10
	b	.L_a90e
	.align	2, 0
.L_a574:
	.4byte	gUnk_3002C5A
.L_a578:
	.4byte	gUnk_3002C5C
.L_a57c:
	.4byte	0x4000052
.L_a580:
	.4byte	gUnk_3002C64
.L_a584:
	.4byte	gUnk_3002C60
.L_a588:
	add	r1, sp, #8
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence10
	add	r1, sp, #4
	mov	r0, sl
	bl	SelectEndingCutsceneTreasureOam
	ldr	r0, .L_a5c0
	ldrh	r0, [r0, #0]
	ldr	r4, .L_a5c4
	ldr	r1, [r4, #0]
	ldr	r2, .L_a5c8
	ldr	r3, .L_a5cc
	bl	ReadEndingCutsceneIndexedPathPair
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	cmp	r0, #232	@ 0xe8
	beq	.L_a5b4
	b	.L_a90e
.L_a5b4:
	ldr	r1, .L_a5d0
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a5d4
	b	.L_a908
	.align	2, 0
.L_a5c0:
	.4byte	gUnk_3002C84
.L_a5c4:
	.4byte	gUnk_3002C64
.L_a5c8:
	.4byte	gCutsceneAnimationFinished
.L_a5cc:
	.4byte	gUnk_3002C9A
.L_a5d0:
	.4byte	gUnk_3002C68
.L_a5d4:
	.4byte	gUnk_3002C60
.L_a5d8:
	mov	r5, #1
	str	r5, [sp, #24]
	ldr	r0, .L_a5f4
	ldr	r2, [r0, #0]
	mov	r0, #179	@ 0xb3
	lsl	r0, r0, #1
	cmp	r2, r0
	bhi	.L_a5f8
	add	r1, sp, #4
	mov	r0, sl
	bl	SelectEndingCutsceneTreasureOam
	b	.L_a600
	.align	2, 0
.L_a5f4:
	.4byte	gUnk_3002C64
.L_a5f8:
	add	r1, sp, #4
	add	r0, r2, #0
	bl	SelectEndingCutsceneTreasureFlashOam
.L_a600:
	ldr	r0, .L_a634
	ldrh	r0, [r0, #0]
	ldr	r4, .L_a638
	ldr	r1, [r4, #0]
	ldr	r2, .L_a63c
	ldr	r3, .L_a640
	bl	ReadEndingCutsceneIndexedPathPair
	cmp	r0, #0
	beq	.L_a620
	mov	r0, #0
	str	r0, [sp, #24]
	ldr	r1, .L_a644
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a620:
	ldr	r2, [r4, #0]
	ldr	r0, .L_a648
	cmp	r2, r0
	bhi	.L_a64c
	add	r1, sp, #8
	add	r0, r2, #0
	bl	SelectEndingCutsceneOamSequence10
	b	.L_a656
	.align	2, 0
.L_a634:
	.4byte	gUnk_3002C84
.L_a638:
	.4byte	gUnk_3002C64
.L_a63c:
	.4byte	gCutsceneAnimationFinished
.L_a640:
	.4byte	gUnk_3002C9A
.L_a644:
	.4byte	gUnk_3002C60
.L_a648:
	.4byte	0x1DF
.L_a64c:
	ldr	r1, .L_a664
	add	r0, r2, r1
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence16
.L_a656:
	ldr	r1, .L_a668
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	ldr	r1, .L_a66c
	b	.L_a8e4
	.align	2, 0
.L_a664:
	.4byte	0xFFFFFE20
.L_a668:
	.4byte	gUnk_3002C64
.L_a66c:
	.4byte	gUnk_3002C68
.L_a670:
	mov	r0, #15
	mov	r2, sl
	and	r0, r2
	cmp	r0, #15
	bne	.L_a6b2
	ldr	r2, .L_a6bc
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_a686
	sub	r0, #1
	strh	r0, [r2, #0]
.L_a686:
	ldr	r1, .L_a6c0
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_a692
	add	r0, #1
	strh	r0, [r1, #0]
.L_a692:
	ldr	r0, .L_a6c4
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r0, #0]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #0
	bne	.L_a6b2
	ldr	r0, .L_a6c8
	str	r2, [r0, #0]
	ldr	r1, .L_a6cc
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a6b2:
	add	r1, sp, #8
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence15
	b	.L_a90e
.L_a6bc:
	.4byte	gUnk_3002C5A
.L_a6c0:
	.4byte	gUnk_3002C5C
.L_a6c4:
	.4byte	0x4000052
.L_a6c8:
	.4byte	gUnk_3002C64
.L_a6cc:
	.4byte	gUnk_3002C60
.L_a6d0:
	add	r1, sp, #8
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence15
	ldr	r1, .L_a6f0
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #121	@ 0x79
	beq	.L_a6e6
	b	.L_a90e
.L_a6e6:
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a6f4
	b	.L_a908
	.align	2, 0
.L_a6f0:
	.4byte	gUnk_3002C64
.L_a6f4:
	.4byte	gUnk_3002C60
.L_a6f8:
	ldr	r4, .L_a70c
	ldr	r1, [r4, #0]
	cmp	r1, #64	@ 0x40
	bhi	.L_a710
	add	r1, sp, #8
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence14
	b	.L_a8e2
	.align	2, 0
.L_a70c:
	.4byte	gUnk_3002C64
.L_a710:
	cmp	r1, #119	@ 0x77
	bhi	.L_a734
	add	r0, r1, #0
	sub	r0, #65	@ 0x41
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence11
	ldr	r0, [r4, #0]
	cmp	r0, #65	@ 0x41
	beq	.L_a726
	b	.L_a8e2
.L_a726:
	ldr	r0, .L_a730
	bl	m4aSongNumStartOrChange
	b	.L_a8e2
	.align	2, 0
.L_a730:
	.4byte	0x1A5
.L_a734:
	ldr	r0, .L_a748
	cmp	r1, r0
	bhi	.L_a74c
	add	r0, r1, #0
	sub	r0, #120	@ 0x78
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence12
	b	.L_a8e2
	.align	2, 0
.L_a748:
	.4byte	0x137
.L_a74c:
	mov	r0, #156	@ 0x9c
	lsl	r0, r0, #1
	cmp	r1, r0
	bne	.L_a75a
	add	r0, #110	@ 0x6e
	bl	m4aSongNumStartOrChange
.L_a75a:
	ldr	r0, [r4, #0]
	ldr	r3, .L_a774
	add	r0, r0, r3
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence13
	cmp	r0, #0
	bne	.L_a76c
	b	.L_a8e2
.L_a76c:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a778
	b	.L_a908
.L_a774:
	.4byte	0xFFFFFEC8
.L_a778:
	.4byte	gUnk_3002C60
.L_a77c:
	ldr	r4, .L_a798
	mov	r5, #0
	ldrsh	r0, [r4, r5]
	cmp	r0, #183	@ 0xb7
	bgt	.L_a7a0
	ldr	r0, .L_a79c
	ldr	r0, [r0, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence42
	ldrh	r0, [r4, #0]
	add	r0, #2
	strh	r0, [r4, #0]
	b	.L_a8e2
.L_a798:
	.4byte	gCutscenePrimaryObjectX
.L_a79c:
	.4byte	gUnk_3002C64
.L_a7a0:
	ldr	r4, .L_a7d4
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence43
	ldr	r0, .L_a7d8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, sl
	and	r0, r1
	cmp	r0, r1
	beq	.L_a7ba
	b	.L_a8e2
.L_a7ba:
	ldr	r2, .L_a7dc
	ldr	r0, .L_a7e0
	ldrh	r3, [r2, #0]
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	cmp	r1, r0
	bgt	.L_a7e8
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a7e4
	b	.L_a908
.L_a7d4:
	.4byte	gUnk_3002C64
.L_a7d8:
	.4byte	gLayeredCutsceneOamOffsetY
.L_a7dc:
	.4byte	gUnk_3002C9E
.L_a7e0:
	.4byte	gLayeredCutsceneOamOffsetX
.L_a7e4:
	.4byte	gUnk_3002C60
.L_a7e8:
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	b	.L_a8e2
.L_a7ee:
	ldr	r0, .L_a80c
	ldrh	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_a818
	ldr	r5, .L_a810
	ldr	r0, [r5, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence45
	cmp	r0, #0
	beq	.L_a8e2
	str	r4, [r5, #0]
	ldr	r1, .L_a814
	b	.L_a908
	.align	2, 0
.L_a80c:
	.4byte	gEndingCutsceneCollectedTreasureCount
.L_a810:
	.4byte	gUnk_3002C64
.L_a814:
	.4byte	gUnk_3002C60
.L_a818:
	ldr	r4, .L_a85c
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_a83e
	ldr	r3, .L_a860
	ldr	r1, .L_a864
	ldr	r2, .L_a868
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r3, .L_a86c
	ldr	r1, .L_a870
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
.L_a83e:
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence49
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence48
	cmp	r0, #0
	beq	.L_a8e2
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a874
	b	.L_a908
	.align	2, 0
.L_a85c:
	.4byte	gUnk_3002C64
.L_a860:
	.4byte	gUnk_3002C9C
.L_a864:
	.4byte	sUnk_878E770
.L_a868:
	.4byte	gUnk_3002C84
.L_a86c:
	.4byte	gUnk_3002C9E
.L_a870:
	.4byte	sUnk_878E778
.L_a874:
	.4byte	gUnk_3002C60
.L_a878:
	ldr	r0, .L_a894
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_a89c
	ldr	r4, .L_a898
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence46
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence47
	b	.L_a8a6
.L_a894:
	.4byte	gEndingCutsceneCollectedTreasureCount
.L_a898:
	.4byte	gUnk_3002C64
.L_a89c:
	ldr	r0, .L_a8ec
	ldr	r0, [r0, #0]
	add	r1, sp, #8
	bl	SelectEndingCutsceneOamSequence44
.L_a8a6:
	ldr	r0, .L_a8f0
	ldrh	r1, [r0, #0]
	sub	r1, #2
	strh	r1, [r0, #0]
	ldr	r2, .L_a8f4
	ldrh	r0, [r2, #0]
	sub	r0, #2
	strh	r0, [r2, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, #64	@ 0x40
	neg	r0, r0
	cmp	r1, r0
	bge	.L_a8e2
	mov	r0, #22
	bl	InitCutsceneDarkenBlend
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_a8ec
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a8f8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a8e2:
	ldr	r1, .L_a8ec
.L_a8e4:
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	b	.L_a90e
.L_a8ec:
	.4byte	gUnk_3002C64
.L_a8f0:
	.4byte	gCutscenePrimaryObjectX
.L_a8f4:
	.4byte	gUnk_3002C9C
.L_a8f8:
	.4byte	gUnk_3002C60
.L_a8fc:
	mov	r0, #7
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_a90e
	ldr	r1, .L_aca8
.L_a908:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a90e:
	ldr	r6, .L_acac
	ldr	r0, .L_acb0
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_a950
	ldr	r0, .L_acb4
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_a950
	ldr	r0, .L_acb8
	ldr	r0, [r0, #0]
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence25
	ldr	r0, [sp, #12]
	ldr	r1, .L_acbc
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_acc0
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, .L_acc4
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	WriteCutsceneOamAffineMatrix
.L_a950:
	ldr	r0, .L_acc8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_a95a
	b	.L_acee
.L_a95a:
	ldr	r0, .L_accc
	mov	r8, r0
	ldr	r1, .L_acd0
	mov	r9, r1
	bl	UpdateEndingCutsceneParticlePositions
	add	r4, sp, #16
	mov	r0, sl
	add	r1, r4, #0
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_a9b6
	ldr	r7, .L_acd4
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r3, r9
	strh	r0, [r3, #0]
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_a9a2
	ldr	r3, .L_acdc
	add	r0, r2, r3
.L_a9a2:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r4, #0
	ldrsh	r0, [r7, r4]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r5, r8
	strh	r0, [r5, #0]
.L_a9b6:
	ldr	r0, [sp, #16]
	mov	r1, r8
	ldrh	r2, [r1, #0]
	lsr	r2, r2, #8
	mov	r3, #2
	add	r8, r3
	mov	r4, r9
	ldrh	r3, [r4, #0]
	mov	r5, #2
	add	r9, r5
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #9
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_aa22
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aa0e
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aa0e:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aa22:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #18
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_aa8c
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aa78
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aa78:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aa8c:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #27
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_aaf6
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aae2
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aae2:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aaf6:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #36	@ 0x24
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_ab60
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ab4c
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ab4c:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ab60:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #45	@ 0x2d
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_abca
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_abb6
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_abb6:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_abca:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #54	@ 0x36
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_ac34
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ac20
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ac20:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ac34:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #63	@ 0x3f
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence27
	cmp	r0, #0
	beq	.L_ac9e
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ac8a
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ac8a:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ac9e:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	b	.L_ace0
	.align	2, 0
.L_aca8:
	.4byte	gSubGameMode
.L_acac:
	.4byte	gOamBuffer
.L_acb0:
	.4byte	gUnk_3002C60
.L_acb4:
	.4byte	gEndingCutsceneCollectedTreasureCount
.L_acb8:
	.4byte	gUnk_3002C64
.L_acbc:
	.4byte	gUnk_3002C9C
.L_acc0:
	.4byte	gUnk_3002C9E
.L_acc4:
	.4byte	gEndingCutsceneTreasureScale
.L_acc8:
	.4byte	gUnk_3002C5A
.L_accc:
	.4byte	gCutsceneObjectXPositions
.L_acd0:
	.4byte	gCutsceneObjectYPositions
.L_acd4:
	.4byte	gUnk_3002CA6
.L_acd8:
	.4byte	0x3FD
.L_acdc:
	.4byte	0x43C
.L_ace0:
	lsr	r2, r2, #8
	mov	r4, r9
	ldrh	r3, [r4, #0]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
.L_acee:
	ldr	r5, [sp, #24]
	cmp	r5, #0
	bne	.L_acf6
	b	.L_af24
.L_acf6:
	ldr	r0, .L_afb0
	mov	r9, r0
	ldr	r0, [r0, #0]
	mov	r7, #0
	cmp	r0, #115	@ 0x73
	bls	.L_ad04
	add	r7, r0, #0
.L_ad04:
	add	r1, sp, #20
	mov	r8, r1
	add	r0, r7, #0
	bl	SelectEndingCutsceneOamSequence38
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r5, sp
	add	r5, #2
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath36
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	add	r4, r7, #7
	add	r0, r4, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence37
	mov	r1, r9
	ldr	r0, [r1, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath37
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence39
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath38
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	add	r0, r4, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence40
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath39
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	cmp	r7, #216	@ 0xd8
	bgt	.L_adb2
	b	.L_af24
.L_adb2:
	sub	r7, #216	@ 0xd8
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath40
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath41
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath42
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath43
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath44
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath45
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath46
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
	add	r0, r7, #0
	mov	r1, r8
	bl	SelectEndingCutsceneOamSequence26
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	ReadEndingCutscenePath47
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
.L_af24:
	ldr	r0, [sp, #4]
	ldr	r1, .L_afb4
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	ldr	r1, .L_afb8
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, .L_afbc
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	cmp	r0, #0
	beq	.L_af4c
	ldr	r0, [sp, #4]
	add	r1, r6, #0
	bl	SetCutsceneOamSemiTransparentPriority
.L_af4c:
	ldr	r0, [sp, #8]
	ldr	r1, .L_afc0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_afc4
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, .L_afc8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_af98
	ldr	r0, .L_afcc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_af98
	ldr	r0, [sp, #12]
	ldr	r1, .L_afd0
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	ldr	r1, .L_afd4
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	AppendCutsceneOamTemplate
	add	r6, r0, #0
	ldr	r0, .L_afd8
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	WriteCutsceneOamAffineMatrix
.L_af98:
	add	r0, r6, #0
	bl	FinalizeCutsceneOamBuffer
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_afb0:
	.4byte	gUnk_3002C68
.L_afb4:
	.4byte	gCutsceneAnimationFinished
.L_afb8:
	.4byte	gUnk_3002C9A
.L_afbc:
	.4byte	gUnk_3002CA4
.L_afc0:
	.4byte	gCutscenePrimaryObjectX
.L_afc4:
	.4byte	gCutscenePrimaryObjectY
.L_afc8:
	.4byte	gUnk_3002C60
.L_afcc:
	.4byte	gEndingCutsceneCollectedTreasureCount
.L_afd0:
	.4byte	gUnk_3002C9C
.L_afd4:
	.4byte	gUnk_3002C9E
.L_afd8:
	.4byte	gEndingCutsceneTreasureScale
