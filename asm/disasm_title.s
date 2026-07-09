.include "macros.s.inc"


thumb_func_start func_80033BC
func_80033BC:
	ldr	r0, .L_33f8
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_33fc
	strh	r1, [r0, #0]
	ldr	r0, .L_3400
	strh	r1, [r0, #0]
	ldr	r0, .L_3404
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r2, r3, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_3408
	strh	r2, [r0, #0]
	ldr	r0, .L_340c
	strh	r1, [r0, #0]
	ldr	r0, .L_3410
	strh	r1, [r0, #0]
	ldr	r0, .L_3414
	strh	r1, [r0, #0]
	ldr	r0, .L_3418
	strh	r1, [r0, #0]
	ldr	r0, .L_341c
	mov	r2, #8
	strh	r2, [r0, #0]
	ldr	r0, .L_3420
	strh	r2, [r0, #0]
	ldr	r0, .L_3424
	strh	r1, [r0, #0]
	bx	lr
.L_33f8:
	.4byte	gUnk_3002C28
.L_33fc:
	.4byte	gUnk_3002C2A
.L_3400:
	.4byte	gUnk_3002C2C
.L_3404:
	.4byte	gUnk_3002C2E
.L_3408:
	.4byte	gUnk_3002C30
.L_340c:
	.4byte	gUnk_3002C42
.L_3410:
	.4byte	gUnk_3002C44
.L_3414:
	.4byte	gUnk_3002C46
.L_3418:
	.4byte	gUnk_3002C48
.L_341c:
	.4byte	gUnk_3002C5A
.L_3420:
	.4byte	gUnk_3002C5C
.L_3424:
	.4byte	gUnk_3002C5E


thumb_func_start func_8003428
func_8003428:
	ldr	r0, .L_3454
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_3458
	strh	r2, [r0, #0]
	ldr	r0, .L_345c
	strh	r2, [r0, #0]
	ldr	r0, .L_3460
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r1, r3, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_3464
	strh	r1, [r0, #0]
	ldr	r0, .L_3468
	strh	r2, [r0, #0]
	ldr	r1, .L_346c
	mov	r0, #12
	strh	r0, [r1, #0]
	ldr	r0, .L_3470
	strh	r2, [r0, #0]
	bx	lr
.L_3454:
	.4byte	gUnk_3002C4A
.L_3458:
	.4byte	gUnk_3002C4C
.L_345c:
	.4byte	gUnk_3002C4E
.L_3460:
	.4byte	gUnk_3002C50
.L_3464:
	.4byte	gUnk_3002C52
.L_3468:
	.4byte	gUnk_3002C54
.L_346c:
	.4byte	gUnk_3002C56
.L_3470:
	.4byte	gUnk_3002C58


thumb_func_start CutsceneSubroutine
CutsceneSubroutine:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #8
	mov	r6, #0
	mov	r5, #0
	ldr	r0, .L_3494
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	mov	r1, #1
	neg	r1, r1
	add	r3, r0, #0
	cmp	r2, r1
	bne	.L_3498
	mov	r5, #1
	strh	r6, [r3, #0]
	b	.L_34bc
	.align	2, 0
.L_3494:
	.4byte	gSubGameMode
.L_3498:
	mov	r0, #2
	neg	r0, r0
	cmp	r2, r0
	bne	.L_34a4
	mov	r0, #19
	b	.L_34ba
.L_34a4:
	mov	r0, #3
	neg	r0, r0
	cmp	r2, r0
	bne	.L_34b0
	mov	r0, #26
	b	.L_34ba
.L_34b0:
	mov	r0, #4
	neg	r0, r0
	cmp	r2, r0
	bne	.L_34bc
	mov	r0, #35	@ 0x23
.L_34ba:
	strh	r0, [r3, #0]
.L_34bc:
	mov	r7, #0
	ldrsh	r0, [r3, r7]
	cmp	r0, #46	@ 0x2e
	bls	.L_34c6
	b	.L_3906
.L_34c6:
	lsl	r0, r0, #2
	ldr	r1, .L_34d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_34d0:
	.4byte	.L_34d4
.L_34d4:
	.4byte	.L_3590
	.4byte	.L_35f6
	.4byte	.L_360c
	.4byte	.L_3614
	.4byte	.L_3838
	.4byte	.L_3854
	.4byte	.L_362c
	.4byte	.L_3634
	.4byte	.L_364c
	.4byte	.L_3654
	.4byte	.L_386c
	.4byte	.L_3874
	.4byte	.L_388c
	.4byte	.L_3894
	.4byte	.L_366c
	.4byte	.L_3674
	.4byte	.L_368c
	.4byte	.L_3694
	.4byte	.L_36ac
	.4byte	.L_36b4
	.4byte	.L_36e4
	.4byte	.L_36fc
	.4byte	.L_3704
	.4byte	.L_371c
	.4byte	.L_3724
	.4byte	.L_373c
	.4byte	.L_3744
	.4byte	.L_3788
	.4byte	.L_37a0
	.4byte	.L_37a8
	.4byte	.L_37c0
	.4byte	.L_37c8
	.4byte	.L_37e0
	.4byte	.L_37e8
	.4byte	.L_3800
	.4byte	.L_3808
	.4byte	.L_3854
	.4byte	.L_386c
	.4byte	.L_3874
	.4byte	.L_388c
	.4byte	.L_3894
	.4byte	.L_38ac
	.4byte	.L_38b4
	.4byte	.L_38cc
	.4byte	.L_38d4
	.4byte	.L_38ec
	.4byte	.L_3900
.L_3590:
	ldr	r4, .L_35d4
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_35d8
	bl	InterruptCallbackSetVBlank
	ldrh	r0, [r4, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r4, #0]
	bl	func_800B280
	mov	r0, #0
	bl	SubGameInitAndDispatch
	ldr	r0, .L_35dc
	mov	r2, #0
	str	r2, [r0, #0]
	ldr	r1, .L_35e0
	ldr	r0, .L_35e4
	ldrb	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_35e8
	str	r2, [r0, #0]
	ldr	r1, .L_35ec
	cmp	r5, #0
	beq	.L_35f0
	mov	r0, #46	@ 0x2e
	strh	r0, [r1, #0]
	b	.L_3906
	.align	2, 0
.L_35d4:
	.4byte	0x4000200
.L_35d8:
	.4byte	func_8003980
.L_35dc:
	.4byte	gUnk_3002C74
.L_35e0:
	.4byte	gUnk_3002C78
.L_35e4:
	.4byte	gLanguage
.L_35e8:
	.4byte	gUnk_3002C7C
.L_35ec:
	.4byte	gSubGameMode
.L_35f0:
	mov	r0, #2
	strh	r0, [r1, #0]
	b	.L_3906
.L_35f6:
	ldr	r1, .L_3608
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	SubGameWaitAndAdvance
	b	.L_3906
.L_3608:
	.4byte	gUnk_300188E
.L_360c:
	mov	r0, #2
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3614:
	ldr	r1, .L_3628
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8003DC4
	b	.L_3906
	.align	2, 0
.L_3628:
	.4byte	gUnk_300188E
.L_362c:
	mov	r0, #6
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3634:
	ldr	r1, .L_3648
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_80042F0
	b	.L_3906
	.align	2, 0
.L_3648:
	.4byte	gUnk_300188E
.L_364c:
	mov	r0, #8
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3654:
	ldr	r1, .L_3668
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_800450C
	b	.L_3906
	.align	2, 0
.L_3668:
	.4byte	gUnk_300188E
.L_366c:
	mov	r0, #14
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3674:
	ldr	r1, .L_3688
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8005500
	b	.L_3906
	.align	2, 0
.L_3688:
	.4byte	gUnk_300188E
.L_368c:
	mov	r0, #16
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3694:
	ldr	r1, .L_36a8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8005F1C
	b	.L_3906
	.align	2, 0
.L_36a8:
	.4byte	gUnk_300188E
.L_36ac:
	bl	SubGameClearGraphicsMemory
	mov	r6, #1
	b	.L_3906
.L_36b4:
	ldr	r4, .L_36dc
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_36e0
	bl	InterruptCallbackSetVBlank
	ldrh	r0, [r4, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r4, #0]
	bl	SubGameClearGraphicsMemory
	mov	r0, #19
	bl	SubGameInitAndDispatch
	b	.L_3906
	.align	2, 0
.L_36dc:
	.4byte	0x4000200
.L_36e0:
	.4byte	func_8003980
.L_36e4:
	ldr	r1, .L_36f8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_80067BC
	b	.L_3906
	.align	2, 0
.L_36f8:
	.4byte	gUnk_300188E
.L_36fc:
	mov	r0, #21
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3704:
	ldr	r1, .L_3718
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8006FA0
	b	.L_3906
	.align	2, 0
.L_3718:
	.4byte	gUnk_300188E
.L_371c:
	mov	r0, #23
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3724:
	ldr	r1, .L_3738
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8007890
	b	.L_3906
	.align	2, 0
.L_3738:
	.4byte	gUnk_300188E
.L_373c:
	bl	SubGameClearGraphicsMemory
	mov	r6, #2
	b	.L_3906
.L_3744:
	ldr	r4, .L_3778
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_377c
	bl	InterruptCallbackSetVBlank
	ldrh	r0, [r4, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r1, .L_3780
	ldr	r0, .L_3784
	ldrb	r0, [r0, #0]
	str	r0, [r1, #0]
	bl	func_800B280
	bl	SubGameClearGraphicsMemory
	mov	r0, #26
	bl	SubGameInitAndDispatch
	b	.L_3906
	.align	2, 0
.L_3778:
	.4byte	0x4000200
.L_377c:
	.4byte	func_8003980
.L_3780:
	.4byte	gUnk_3002C78
.L_3784:
	.4byte	gLanguage
.L_3788:
	ldr	r1, .L_379c
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8007C30
	b	.L_3906
	.align	2, 0
.L_379c:
	.4byte	gUnk_300188E
.L_37a0:
	mov	r0, #28
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_37a8:
	ldr	r1, .L_37bc
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8008B20
	b	.L_3906
	.align	2, 0
.L_37bc:
	.4byte	gUnk_300188E
.L_37c0:
	mov	r0, #30
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_37c8:
	ldr	r1, .L_37dc
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8009DD8
	b	.L_3906
	.align	2, 0
.L_37dc:
	.4byte	gUnk_300188E
.L_37e0:
	mov	r0, #32
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_37e8:
	ldr	r1, .L_37fc
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_800A43C
	b	.L_3906
	.align	2, 0
.L_37fc:
	.4byte	gUnk_300188E
.L_3800:
	bl	SubGameClearGraphicsMemory
	mov	r6, #3
	b	.L_3906
.L_3808:
	ldr	r4, .L_3840
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_3844
	bl	InterruptCallbackSetVBlank
	ldrh	r0, [r4, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r1, .L_3848
	ldr	r0, .L_384c
	ldrb	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r1, .L_3850
	mov	r0, #1
	str	r0, [r1, #0]
	bl	func_800B280
	bl	SubGameClearGraphicsMemory
.L_3838:
	mov	r0, #4
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3840:
	.4byte	0x4000200
.L_3844:
	.4byte	func_8003980
.L_3848:
	.4byte	gUnk_3002C78
.L_384c:
	.4byte	gLanguage
.L_3850:
	.4byte	gUnk_3002C7C
.L_3854:
	ldr	r1, .L_3868
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8004070
	b	.L_3906
	.align	2, 0
.L_3868:
	.4byte	gUnk_300188E
.L_386c:
	mov	r0, #10
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3874:
	ldr	r1, .L_3888
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_80047B8
	b	.L_3906
	.align	2, 0
.L_3888:
	.4byte	gUnk_300188E
.L_388c:
	mov	r0, #12
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_3894:
	ldr	r1, .L_38a8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_8004BFC
	b	.L_3906
	.align	2, 0
.L_38a8:
	.4byte	gUnk_300188E
.L_38ac:
	mov	r0, #41	@ 0x29
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_38b4:
	ldr	r1, .L_38c8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_80058AC
	b	.L_3906
	.align	2, 0
.L_38c8:
	.4byte	gUnk_300188E
.L_38cc:
	mov	r0, #43	@ 0x2b
	bl	SubGameInitAndDispatch
	b	.L_3906
.L_38d4:
	ldr	r1, .L_38e8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	bl	func_800B15C
	b	.L_3906
	.align	2, 0
.L_38e8:
	.4byte	gUnk_300188E
.L_38ec:
	ldr	r1, .L_38fc
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	SubGameClearGraphicsMemory
	mov	r6, #4
	b	.L_3906
	.align	2, 0
.L_38fc:
	.4byte	gDisableSoftReset
.L_3900:
	mov	r0, #46	@ 0x2e
	bl	SubGameInitAndDispatch
.L_3906:
	ldr	r0, .L_3960
	ldr	r1, .L_3964
	ldrh	r1, [r1, #0]
	ldr	r2, .L_3968
	ldrh	r2, [r2, #0]
	ldr	r3, .L_396c
	ldrh	r3, [r3, #0]
	ldr	r4, .L_3970
	mov	r7, #0
	ldrsh	r5, [r4, r7]
	mov	r4, #120	@ 0x78
	sub	r4, r4, r5
	str	r4, [sp, #0]
	ldr	r4, .L_3974
	mov	r7, #0
	ldrsh	r5, [r4, r7]
	mov	r4, #80	@ 0x50
	sub	r4, r4, r5
	str	r4, [sp, #4]
	bl	func_800B398
	ldr	r4, .L_3978
	ldrh	r0, [r4, #0]
	sub	r0, #3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #13
	bhi	.L_3956
	ldr	r0, .L_397c
	ldrh	r1, [r0, #0]
	mov	r0, #9
	and	r0, r1
	cmp	r0, #0
	beq	.L_3956
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	mov	r0, #46	@ 0x2e
	strh	r0, [r4, #0]
.L_3956:
	add	r0, r6, #0
	add	sp, #8
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_3960:
	.4byte	gUnk_3002C32
.L_3964:
	.4byte	gUnk_3002C2C
.L_3968:
	.4byte	gUnk_3002C2E
.L_396c:
	.4byte	gUnk_3002C30
.L_3970:
	.4byte	gUnk_3002C28
.L_3974:
	.4byte	gUnk_3002C2A
.L_3978:
	.4byte	gSubGameMode
.L_397c:
	.4byte	gButtonsPressed


thumb_func_start func_8003980
func_8003980:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r0, .L_39fc
	ldr	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_39a6
	ldr	r2, .L_3a00
	ldr	r0, .L_3a04
	str	r0, [r2, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r2, #4]
	lsr	r0, r1, #2
	mov	r1, #132	@ 0x84
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_39a6:
	ldr	r0, .L_3a08
	ldr	r2, .L_3a0c
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	add	r2, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	ldr	r1, .L_3a10
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #0]
	ldr	r0, .L_3a14
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #22
	bne	.L_39f2
	bl	func_800C82C
.L_39f2:
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0
.L_39fc:
	.4byte	gUnk_3002C6C
.L_3a00:
	.4byte	0x40000D4
.L_3a04:
	.4byte	gOamBuffer
.L_3a08:
	.4byte	gUnk_3002C32
.L_3a0c:
	.4byte	0x4000020
.L_3a10:
	.4byte	0x400002E
.L_3a14:
	.4byte	gSubGameMode
