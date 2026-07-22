.include "macros.s.inc"


thumb_func_start func_8039510
func_8039510:
	push	{r4, lr}
	ldr	r2, .L_39538
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r4, r2, r0
	mov	r3, #1
.L_3951c:
	ldrh	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_39544
	ldrb	r0, [r2, #23]
	cmp	r0, #133	@ 0x85
	bgt	.L_3953c
	cmp	r0, #129	@ 0x81
	bge	.L_39540
	cmp	r0, #119	@ 0x77
	beq	.L_39540
	b	.L_39544
	.align	2, 0
.L_39538:
	.4byte	gSpriteData
.L_3953c:
	cmp	r0, #183	@ 0xb7
	bne	.L_39544
.L_39540:
	mov	r0, #0
	strh	r0, [r2, #0]
.L_39544:
	add	r2, #44	@ 0x2c
	cmp	r2, r4
	ble	.L_3951c
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8039550
func_8039550:
	push	{lr}
	ldr	r0, .L_39568
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bhi	.L_395a6
	lsl	r0, r0, #2
	ldr	r1, .L_3956c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_39568:
	.4byte	gCurrentRoom
.L_3956c:
	.4byte	.L_39570
.L_39570:
	.4byte	.L_39590
	.4byte	.L_39596
	.4byte	.L_39596
	.4byte	.L_3959c
	.4byte	.L_395a2
	.4byte	.L_395a6
	.4byte	.L_39590
	.4byte	.L_39590
.L_39590:
	bl	SpriteCollisionTransformWarioFlaming
	b	.L_395a6
.L_39596:
	bl	SpriteCollisionTransformWarioFat
	b	.L_395a6
.L_3959c:
	bl	SpriteCollisionTransformWarioFlat
	b	.L_395a6
.L_395a2:
	bl	SpriteCollisionTransformWarioBouncy
.L_395a6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80395AC
func_80395AC:
	push	{r4, r5, lr}
	mov	r5, #0
	mov	r3, #0
	ldr	r1, .L_395e0
	add	r4, r1, #0
.L_395b6:
	add	r2, r4, #0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_395c4
	ldrb	r0, [r1, #2]
	cmp	r0, #81	@ 0x51
	beq	.L_39604
.L_395c4:
	add	r1, #12
	add	r4, r2, #0
	add	r4, #12
	add	r3, #1
	cmp	r3, #7
	ble	.L_395b6
.L_395d0:
	sub	r0, r5, #1
	cmp	r0, #6
	bhi	.L_39626
	lsl	r0, r0, #2
	ldr	r1, .L_395e4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_395e0:
	.4byte	gSecondarySpriteData
.L_395e4:
	.4byte	.L_395e8
.L_395e8:
	.4byte	.L_39620
	.4byte	.L_39626
	.4byte	.L_39626
	.4byte	.L_39614
	.4byte	.L_39626
	.4byte	.L_39626
	.4byte	.L_39626
.L_39604:
	ldr	r1, .L_39610
	ldrh	r0, [r4, #6]
	add	r0, r0, r1
	ldrb	r5, [r0, #0]
	b	.L_395d0
	.align	2, 0
.L_39610:
	.4byte	sBigBoardSpaces
.L_39614:
	ldr	r0, .L_3961c
	bl	m4aSongNumStart
	b	.L_39626
.L_3961c:
	.4byte	0x115
.L_39620:
	mov	r0, #234	@ 0xea
	bl	m4aSongNumStart
.L_39626:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_803962C
func_803962C:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r0, .L_3966c
	ldrh	r6, [r0, #8]
	ldrh	r5, [r0, #10]
	mov	r7, #0
	mov	r3, #0
	ldr	r1, .L_39670
	add	r4, r1, #0
.L_3963e:
	add	r2, r4, #0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3964c
	ldrb	r0, [r1, #2]
	cmp	r0, #81	@ 0x51
	beq	.L_39694
.L_3964c:
	add	r1, #12
	add	r4, r2, #0
	add	r4, #12
	add	r3, #1
	cmp	r3, #7
	ble	.L_3963e
.L_39658:
	sub	r0, r7, #1
	cmp	r0, #6
	bls	.L_39660
	b	.L_397ae
.L_39660:
	lsl	r0, r0, #2
	ldr	r1, .L_39674
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3966c:
	.4byte	gCurrentSprite
.L_39670:
	.4byte	gSecondarySpriteData
.L_39674:
	.4byte	.L_39678
.L_39678:
	.4byte	.L_397a4
	.4byte	.L_396a4
	.4byte	.L_39704
	.4byte	.L_39752
	.4byte	.L_39780
	.4byte	.L_396d2
	.4byte	.L_39798
.L_39694:
	ldr	r1, .L_396a0
	ldrh	r0, [r4, #6]
	add	r0, r0, r1
	ldrb	r7, [r0, #0]
	b	.L_39658
	.align	2, 0
.L_396a0:
	.4byte	sBigBoardSpaces
.L_396a4:
	mov	r0, #229	@ 0xe5
	bl	m4aSongNumStart
	ldr	r0, .L_396c4
	ldrb	r0, [r0, #23]
	cmp	r0, #93	@ 0x5d
	bne	.L_396c8
	add	r3, r6, #0
	sub	r3, #64	@ 0x40
	str	r5, [sp, #0]
	mov	r0, #183	@ 0xb7
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_397ae
.L_396c4:
	.4byte	gCurrentSprite
.L_396c8:
	str	r5, [sp, #0]
	mov	r0, #183	@ 0xb7
	mov	r1, #0
	mov	r2, #0
	b	.L_3974a
.L_396d2:
	ldr	r1, .L_39700
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrb	r2, [r1, #0]
	ldrb	r0, [r1, #1]
	add	r0, r2, r0
	cmp	r0, #8
	ble	.L_396ea
	mov	r0, #8
	sub	r0, r0, r2
	strb	r0, [r1, #1]
.L_396ea:
	ldrb	r0, [r1, #1]
	lsl	r0, r0, #3
	strb	r0, [r1, #2]
	mov	r0, #0
	strb	r0, [r1, #3]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_397ae
	.align	2, 0
.L_39700:
	.4byte	gHeartMeter
.L_39704:
	mov	r0, #233	@ 0xe9
	bl	m4aSongNumStart
	ldr	r0, .L_39718
	ldrb	r0, [r0, #23]
	cmp	r0, #93	@ 0x5d
	bne	.L_3971c
	add	r3, r6, #0
	add	r3, #72	@ 0x48
	b	.L_39720
.L_39718:
	.4byte	gCurrentSprite
.L_3971c:
	add	r3, r6, #0
	add	r3, #64	@ 0x40
.L_39720:
	str	r5, [sp, #0]
	mov	r0, #119	@ 0x77
	mov	r1, #0
	mov	r2, #6
	bl	SpriteSpawnAsChild
	add	r0, r5, #0
	add	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #119	@ 0x77
	mov	r1, #0
	mov	r2, #6
	add	r3, r6, #0
	bl	SpriteSpawnAsChild
	add	r0, r5, #0
	sub	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #119	@ 0x77
	mov	r1, #0
	mov	r2, #6
.L_3974a:
	add	r3, r6, #0
	bl	SpriteSpawnAsChild
	b	.L_397ae
.L_39752:
	ldr	r1, .L_39774
	mov	r0, #5
	strb	r0, [r1, #0]
	ldr	r1, .L_39778
	ldr	r0, .L_3977c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #19
	bl	_call_via_r1
	mov	r0, #40	@ 0x28
	neg	r0, r0
	bl	ScoreGiveOrDropCoins
	b	.L_397ae
.L_39774:
	.4byte	gGoldenDivaShopItemState
.L_39778:
	.4byte	sWarioPoseRequestFuncTable
.L_3977c:
	.4byte	gWarioData
.L_39780:
	mov	r0, #230	@ 0xe6
	bl	m4aSongNumStart
	ldr	r2, .L_39794
	ldrb	r1, [r2, #1]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #1]
	b	.L_397ae
	.align	2, 0
.L_39794:
	.4byte	gSwitchStates
.L_39798:
	mov	r0, #232	@ 0xe8
	bl	m4aSongNumStart
	bl	func_8039550
	b	.L_397ae
.L_397a4:
	ldr	r2, .L_397b8
	ldrb	r1, [r2, #2]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #2]
.L_397ae:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_397b8:
	.4byte	gSwitchStates


thumb_func_start func_80397BC
func_80397BC:
	mov	r2, #0
	ldr	r1, .L_397d8
.L_397c0:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_397dc
	ldrb	r0, [r1, #2]
	cmp	r0, #81	@ 0x51
	bne	.L_397dc
	ldrb	r0, [r1, #3]
	cmp	r0, #5
	bne	.L_397dc
	mov	r0, #1
	b	.L_397e6
	.align	2, 0
.L_397d8:
	.4byte	gSecondarySpriteData
.L_397dc:
	add	r1, #12
	add	r2, #1
	cmp	r2, #7
	ble	.L_397c0
	mov	r0, #0
.L_397e6:
	bx	lr


thumb_func_start func_80397E8
func_80397E8:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	mov	r2, #0
	mov	r4, #40	@ 0x28
	ldr	r1, .L_39808
.L_397f4:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3980c
	ldrb	r0, [r1, #2]
	cmp	r0, #81	@ 0x51
	bne	.L_3980c
	strb	r3, [r1, #1]
	strb	r4, [r1, #4]
	b	.L_39814
	.align	2, 0
.L_39808:
	.4byte	gSecondarySpriteData
.L_3980c:
	add	r1, #12
	add	r2, #1
	cmp	r2, #7
	ble	.L_397f4
.L_39814:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803981C
func_803981C:
	push	{r4, lr}
	ldr	r1, .L_39860
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_39858
	ldrh	r4, [r1, #20]
	ldrh	r2, [r1, #18]
	ldr	r0, .L_39864
	ldrh	r3, [r0, #8]
	ldrh	r1, [r0, #10]
	add	r0, r1, #0
	sub	r0, #130	@ 0x82
	cmp	r0, r2
	bge	.L_39858
	add	r0, r1, #0
	add	r0, #130	@ 0x82
	cmp	r0, r2
	ble	.L_39858
	mov	r1, #165	@ 0xa5
	lsl	r1, r1, #1
	add	r0, r3, r1
	cmp	r0, r4
	ble	.L_39858
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	cmp	r0, r4
	bge	.L_39858
	ldr	r1, .L_39868
	mov	r0, #1
	strb	r0, [r1, #0]
.L_39858:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_39860:
	.4byte	gWarioData
.L_39864:
	.4byte	gCurrentSprite
.L_39868:
	.4byte	gUnk_3000038


thumb_func_start func_803986C
func_803986C:
	push	{lr}
	ldr	r0, .L_398c8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrb	r1, [r1, #26]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	mov	r1, ip
	strb	r0, [r1, #26]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	ldrb	r0, [r0, #23]
	mov	r1, ip
	cmp	r0, #40	@ 0x28
	bne	.L_398d0
	ldr	r0, .L_398cc
	b	.L_398d2
	.align	2, 0
.L_398c8:
	.4byte	gCurrentSprite
.L_398cc:
	.4byte	sUnk_83BFB8C
.L_398d0:
	ldr	r0, .L_398f0
.L_398d2:
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	bl	func_80269EC
	pop	{r0}
	bx	r0
.L_398f0:
	.4byte	sUnk_83C0A28


thumb_func_start func_80398F4
func_80398F4:
	push	{r4, r5, lr}
	ldr	r5, .L_39934
	mov	r4, #0
	mov	r0, #109	@ 0x6d
	strb	r0, [r5, #28]
	strb	r4, [r5, #30]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	ldrh	r0, [r5, #20]
	mov	r1, #6
	bl	__udivsi3
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	strb	r0, [r1, #0]
	strb	r4, [r5, #22]
	strh	r4, [r5, #20]
	ldrb	r0, [r1, #0]
	add	r2, r5, #0
	cmp	r0, #4
	bhi	.L_399dc
	lsl	r0, r0, #2
	ldr	r1, .L_39938
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_39934:
	.4byte	gCurrentSprite
.L_39938:
	.4byte	.L_3993c
.L_3993c:
	.4byte	.L_39950
	.4byte	.L_3996c
	.4byte	.L_39988
	.4byte	.L_399a4
	.4byte	.L_399c0
.L_39950:
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_39960
	ldr	r0, .L_3995c
	b	.L_39962
	.align	2, 0
.L_3995c:
	.4byte	sUnk_83BFCE4
.L_39960:
	ldr	r0, .L_39968
.L_39962:
	str	r0, [r2, #4]
	mov	r0, #2
	b	.L_399f2
.L_39968:
	.4byte	sUnk_83C0B80
.L_3996c:
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_3997c
	ldr	r0, .L_39978
	b	.L_3997e
	.align	2, 0
.L_39978:
	.4byte	sUnk_83BFD14
.L_3997c:
	ldr	r0, .L_39984
.L_3997e:
	str	r0, [r2, #4]
	mov	r0, #3
	b	.L_399f2
.L_39984:
	.4byte	sUnk_83C0BB0
.L_39988:
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_39998
	ldr	r0, .L_39994
	b	.L_3999a
	.align	2, 0
.L_39994:
	.4byte	sUnk_83BFD44
.L_39998:
	ldr	r0, .L_399a0
.L_3999a:
	str	r0, [r2, #4]
	mov	r0, #4
	b	.L_399f2
.L_399a0:
	.4byte	sUnk_83C0BE0
.L_399a4:
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_399b4
	ldr	r0, .L_399b0
	b	.L_399b6
	.align	2, 0
.L_399b0:
	.4byte	sUnk_83BFD74
.L_399b4:
	ldr	r0, .L_399bc
.L_399b6:
	str	r0, [r2, #4]
	mov	r0, #5
	b	.L_399f2
.L_399bc:
	.4byte	sUnk_83C0C10
.L_399c0:
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_399d0
	ldr	r0, .L_399cc
	b	.L_399d2
	.align	2, 0
.L_399cc:
	.4byte	sUnk_83BFDA4
.L_399d0:
	ldr	r0, .L_399d8
.L_399d2:
	str	r0, [r2, #4]
	mov	r0, #6
	b	.L_399f2
.L_399d8:
	.4byte	sUnk_83C0C40
.L_399dc:
	ldrb	r0, [r5, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_399ec
	ldr	r0, .L_399e8
	b	.L_399ee
	.align	2, 0
.L_399e8:
	.4byte	sUnk_83BFCB4
.L_399ec:
	ldr	r0, .L_39a20
.L_399ee:
	str	r0, [r5, #4]
	mov	r0, #1
.L_399f2:
	bl	func_80397E8
	mov	r0, #223	@ 0xdf
	bl	m4aSongNumStart
	ldr	r2, .L_39a24
	ldrb	r0, [r2, #23]
	cmp	r0, #40	@ 0x28
	bne	.L_39a30
	mov	r0, #0
	strb	r0, [r2, #29]
	ldr	r1, .L_39a28
	ldr	r0, .L_39a2c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	bl	func_8026A54
	b	.L_39a34
.L_39a20:
	.4byte	sUnk_83C0B50
.L_39a24:
	.4byte	gCurrentSprite
.L_39a28:
	.4byte	gPersistentSpriteData
.L_39a2c:
	.4byte	gCurrentRoom
.L_39a30:
	bl	func_8039510
.L_39a34:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8039A3C
func_8039A3C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_39a80
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_39a9a
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_39a84
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_39a88
	cmp	r1, r0
	bne	.L_39a8c
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r2, #8]
	b	.L_39aa8
	.align	2, 0
.L_39a80:
	.4byte	gCurrentSprite
.L_39a84:
	.4byte	sUnk_83C0D50
.L_39a88:
	.4byte	0x7FFF
.L_39a8c:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	b	.L_39aa8
.L_39a9a:
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	ldr	r1, .L_39ab0
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_39aa8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_39ab0:
	.4byte	gWarioPauseTimer


thumb_func_start func_8039AB4
func_8039AB4:
	push	{r4, r5, lr}
	ldr	r1, .L_39b20
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #22]
	sub	r0, #1
	strb	r0, [r1, #22]
	mov	r5, #1
	add	r4, r1, #0
	ldr	r1, .L_39b24
	mov	r2, #7
.L_39aca:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_39ad8
	ldrb	r0, [r1, #2]
	cmp	r0, #81	@ 0x51
	bne	.L_39ad8
	ldrb	r5, [r1, #1]
.L_39ad8:
	add	r1, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_39aca
	cmp	r5, #0
	bne	.L_39b38
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	ldrb	r0, [r4, #23]
	cmp	r0, #93	@ 0x5d
	bne	.L_39b34
	bl	func_80397BC
	cmp	r0, #0
	beq	.L_39b30
	mov	r0, #117	@ 0x75
	strb	r0, [r4, #28]
	strb	r5, [r4, #29]
	ldr	r1, .L_39b28
	ldr	r0, .L_39b2c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	bl	func_8026A54
	b	.L_39b38
	.align	2, 0
.L_39b20:
	.4byte	gCurrentSprite
.L_39b24:
	.4byte	gSecondarySpriteData
.L_39b28:
	.4byte	gPersistentSpriteData
.L_39b2c:
	.4byte	gCurrentRoom
.L_39b30:
	mov	r0, #115	@ 0x73
	b	.L_39b36
.L_39b34:
	mov	r0, #113	@ 0x71
.L_39b36:
	strb	r0, [r4, #28]
.L_39b38:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8039B40
func_8039B40:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #4
	ldr	r4, .L_39b70
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #22]
	sub	r0, #1
	strb	r0, [r4, #22]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	add	r1, r0, #0
	cmp	r0, #60	@ 0x3c
	bls	.L_39b74
	cmp	r0, #62	@ 0x3e
	bne	.L_39c0c
	bl	func_80395AC
	b	.L_39c0c
.L_39b70:
	.4byte	gCurrentSprite
.L_39b74:
	cmp	r0, #0
	bne	.L_39b7c
	strh	r0, [r4, #0]
	b	.L_39c0c
.L_39b7c:
	cmp	r0, #19
	bne	.L_39b9c
	ldr	r1, .L_39b98
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #162	@ 0xa2
	bl	SpriteSpawnAsChild
	b	.L_39ba4
.L_39b98:
	.4byte	gWarioPauseTimer
.L_39b9c:
	cmp	r1, #16
	bne	.L_39ba4
	bl	func_803962C
.L_39ba4:
	ldr	r5, .L_39c18
	add	r1, r5, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	sub	r0, #4
	strb	r0, [r1, #0]
	ldrb	r6, [r1, #0]
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r4, .L_39c1c
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
.L_39c0c:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_39c18:
	.4byte	gCurrentSprite
.L_39c1c:
	.4byte	sSinCosTable


thumb_func_start func_8039C20
func_8039C20:
	push	{lr}
	ldr	r1, .L_39c4c
	ldrb	r0, [r1, #22]
	sub	r0, #1
	strb	r0, [r1, #22]
	mov	r0, #1
	strb	r0, [r1, #31]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrb	r0, [r2, #0]
	add	r3, r0, #0
	add	r2, r1, #0
	cmp	r0, #60	@ 0x3c
	bls	.L_39c50
	cmp	r0, #62	@ 0x3e
	bne	.L_39cc8
	bl	func_80395AC
	b	.L_39cc8
.L_39c4c:
	.4byte	gCurrentSprite
.L_39c50:
	cmp	r0, #0
	bne	.L_39cb0
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bhi	.L_39c94
	lsl	r0, r0, #2
	ldr	r1, .L_39c68
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_39c68:
	.4byte	.L_39c6c
.L_39c6c:
	.4byte	.L_39c80
	.4byte	.L_39c84
	.4byte	.L_39c88
	.4byte	.L_39c8c
	.4byte	.L_39c90
.L_39c80:
	mov	r0, #5
	b	.L_39c96
.L_39c84:
	mov	r0, #11
	b	.L_39c96
.L_39c88:
	mov	r0, #17
	b	.L_39c96
.L_39c8c:
	mov	r0, #23
	b	.L_39c96
.L_39c90:
	mov	r0, #29
	b	.L_39c96
.L_39c94:
	mov	r0, #35	@ 0x23
.L_39c96:
	strh	r0, [r2, #20]
	mov	r0, #0
	strb	r0, [r2, #22]
	ldr	r0, .L_39cac
	str	r0, [r2, #4]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #54	@ 0x36
	strb	r0, [r2, #30]
	b	.L_39cc8
	.align	2, 0
.L_39cac:
	.4byte	sUnk_83C0A28
.L_39cb0:
	cmp	r0, #19
	bne	.L_39cc0
	ldr	r1, .L_39cbc
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_39cc8
.L_39cbc:
	.4byte	gWarioPauseTimer
.L_39cc0:
	cmp	r3, #16
	bne	.L_39cc8
	bl	func_803962C
.L_39cc8:
	pop	{r0}
	bx	r0


thumb_func_start func_8039CCC
func_8039CCC:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r7, .L_39cfc
	ldrb	r0, [r7, #22]
	sub	r0, #1
	mov	r2, #0
	strb	r0, [r7, #22]
	mov	r0, #1
	strb	r0, [r7, #31]
	add	r1, r7, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	add	r1, r0, #0
	cmp	r0, #60	@ 0x3c
	bls	.L_39d00
	cmp	r0, #62	@ 0x3e
	bne	.L_39d88
	bl	func_80395AC
	b	.L_39d88
	.align	2, 0
.L_39cfc:
	.4byte	gCurrentSprite
.L_39d00:
	cmp	r0, #0
	bne	.L_39d08
	strh	r2, [r7, #0]
	b	.L_39d88
.L_39d08:
	cmp	r1, #20
	bne	.L_39d24
	ldr	r0, .L_39d90
	strh	r2, [r0, #0]
	ldrb	r1, [r7, #24]
	ldrb	r2, [r7, #25]
	ldrh	r3, [r7, #8]
	ldrh	r0, [r7, #10]
	str	r0, [sp, #0]
	mov	r0, #162	@ 0xa2
	bl	SpriteSpawnAsChild
	bl	func_803962C
.L_39d24:
	add	r1, r7, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	sub	r0, #4
	strb	r0, [r1, #0]
	ldrb	r5, [r1, #0]
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	ldr	r4, .L_39d94
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #18]
.L_39d88:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_39d90:
	.4byte	gWarioPauseTimer
.L_39d94:
	.4byte	sSinCosTable


thumb_func_start func_8039D98
func_8039D98:
	ldr	r0, .L_39df0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_39df4
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_39df8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #6
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #16
	mov	r2, ip
	strb	r0, [r2, #28]
	bx	lr
.L_39df0:
	.4byte	gCurrentSprite
.L_39df4:
	.4byte	0xFFFB
.L_39df8:
	.4byte	sUnk_83BFDD4


thumb_func_start func_8039DFC
func_8039DFC:
	ldr	r2, .L_39e14
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_39e12
	strh	r0, [r2, #0]
.L_39e12:
	bx	lr
.L_39e14:
	.4byte	gCurrentSprite


thumb_func_start SpriteChanceWheel
SpriteChanceWheel:
	push	{r4, r5, lr}
	ldr	r5, .L_39e34
	ldrb	r4, [r5, #28]
	cmp	r4, #111	@ 0x6f
	beq	.L_39ea0
	cmp	r4, #111	@ 0x6f
	bgt	.L_39e3e
	cmp	r4, #108	@ 0x6c
	beq	.L_39e7e
	cmp	r4, #108	@ 0x6c
	bgt	.L_39e38
	cmp	r4, #0
	beq	.L_39e52
	b	.L_39ee0
.L_39e34:
	.4byte	gCurrentSprite
.L_39e38:
	cmp	r4, #109	@ 0x6d
	beq	.L_39e90
	b	.L_39ee0
.L_39e3e:
	cmp	r4, #115	@ 0x73
	beq	.L_39ec0
	cmp	r4, #115	@ 0x73
	bgt	.L_39e4c
	cmp	r4, #113	@ 0x71
	beq	.L_39eb0
	b	.L_39ee0
.L_39e4c:
	cmp	r4, #117	@ 0x75
	beq	.L_39ed0
	b	.L_39ee0
.L_39e52:
	bl	func_80397BC
	cmp	r0, #0
	beq	.L_39e78
	strh	r4, [r5, #0]
	ldr	r1, .L_39e70
	ldr	r0, .L_39e74
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	b	.L_39f08
.L_39e70:
	.4byte	gPersistentSpriteData
.L_39e74:
	.4byte	gCurrentRoom
.L_39e78:
	bl	func_803986C
	b	.L_39f08
.L_39e7e:
	ldr	r1, .L_39e8c
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_80398F4
	b	.L_39f08
	.align	2, 0
.L_39e8c:
	.4byte	gUnk_3000038
.L_39e90:
	ldr	r1, .L_39e9c
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8039A3C
	b	.L_39f08
.L_39e9c:
	.4byte	gUnk_3000038
.L_39ea0:
	ldr	r1, .L_39eac
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8039AB4
	b	.L_39f08
.L_39eac:
	.4byte	gUnk_3000038
.L_39eb0:
	ldr	r1, .L_39ebc
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8039B40
	b	.L_39f08
.L_39ebc:
	.4byte	gUnk_3000038
.L_39ec0:
	ldr	r1, .L_39ecc
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8039C20
	b	.L_39f08
.L_39ecc:
	.4byte	gUnk_3000038
.L_39ed0:
	ldr	r1, .L_39edc
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8039CCC
	b	.L_39f08
.L_39edc:
	.4byte	gUnk_3000038
.L_39ee0:
	bl	func_803981C
	bl	func_80397BC
	cmp	r0, #0
	beq	.L_39f08
	bl	func_8026A54
	ldr	r2, .L_39f10
	ldr	r1, .L_39f14
	ldr	r0, .L_39f18
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r1, #24]
	add	r0, r0, r1
	add	r0, r0, r2
	mov	r1, #2
	strb	r1, [r0, #0]
	bl	SpriteUtilDie
.L_39f08:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_39f10:
	.4byte	gPersistentSpriteData
.L_39f14:
	.4byte	gCurrentSprite
.L_39f18:
	.4byte	gCurrentRoom


thumb_func_start SpriteUnknownA2
SpriteUnknownA2:
	push	{lr}
	ldr	r0, .L_39f30
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_39f34
	bl	func_8039D98
	b	.L_39f38
.L_39f30:
	.4byte	gCurrentSprite
.L_39f34:
	bl	func_8039DFC
.L_39f38:
	pop	{r0}
	bx	r0
