.include "macros.s.inc"


thumb_func_start func_80374AC
func_80374AC:
	ldr	r0, .L_374fc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_37500
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
	ldr	r0, .L_37504
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #6
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #200	@ 0xc8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_374fc:
	.4byte	gCurrentSprite
.L_37500:
	.4byte	0x40C
.L_37504:
	.4byte	sUnk_83BDAF0


thumb_func_start func_8037508
func_8037508:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r5, .L_37550
	add	r6, r5, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0
	bne	.L_37546
	ldrb	r1, [r5, #24]
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #159	@ 0x9f
	bl	SpawnPrimarySpriteWithStatus
	mov	r0, #200	@ 0xc8
	strb	r0, [r6, #0]
	ldrh	r1, [r5, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_37546
	mov	r0, #91	@ 0x5b
	bl	m4aSongNumStart
.L_37546:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_37550:
	.4byte	gCurrentSprite


thumb_func_start func_8037554
func_8037554:
	push	{r4, r5, lr}
	ldr	r0, .L_375b8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_375bc
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #2
	mov	r1, #20
	strb	r1, [r0, #0]
	mov	r5, ip
	add	r5, #37	@ 0x25
	mov	r0, #24
	strb	r0, [r5, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_375c0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #9
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_375b8:
	.4byte	gCurrentSprite
.L_375bc:
	.4byte	0xFFFB
.L_375c0:
	.4byte	sUnk_83BDA30


thumb_func_start func_80375C4
func_80375C4:
	ldr	r2, .L_375fc
	mov	r3, #1
	strb	r3, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_37608
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r3, [r2, #26]
	mov	r0, #18
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_37604
	ldr	r0, .L_37600
	b	.L_37606
	.align	2, 0
.L_375fc:
	.4byte	gCurrentSprite
.L_37600:
	.4byte	sUnk_83BD9E8
.L_37604:
	ldr	r0, .L_3760c
.L_37606:
	str	r0, [r2, #4]
.L_37608:
	bx	lr
	.align	2, 0
.L_3760c:
	.4byte	sUnk_83BD9A0


thumb_func_start func_8037610
func_8037610:
	ldr	r2, .L_3762c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_3762c:
	.4byte	gCurrentSprite


thumb_func_start func_8037630
func_8037630:
	push	{lr}
	ldr	r1, .L_37648
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_8037610
	pop	{r0}
	bx	r0
.L_37648:
	.4byte	gCurrentSprite


thumb_func_start func_803764C
func_803764C:
	push	{lr}
	ldr	r1, .L_37664
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_37668
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_8037610
	pop	{r0}
	bx	r0
.L_37664:
	.4byte	gCurrentSprite
.L_37668:
	.4byte	0xFFBF


thumb_func_start func_803766C
func_803766C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_376a8
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_376ac
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_3768e
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_3768e:
	ldr	r0, .L_376b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_376d0
	strh	r2, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_376b4
	bl	func_8037630
	b	.L_376b8
.L_376a8:
	.4byte	gCurrentSprite
.L_376ac:
	.4byte	gUnk_30000A0
.L_376b0:
	.4byte	gSpriteCollisionResult
.L_376b4:
	bl	func_803764C
.L_376b8:
	ldr	r0, .L_376cc
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_3770c
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
	b	.L_3770c
.L_376cc:
	.4byte	gCurrentSprite
.L_376d0:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_376f8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_376fc
	cmp	r1, r0
	bne	.L_37700
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3770a
.L_376f8:
	.4byte	sSharedDebrisYVelocity
.L_376fc:
	.4byte	0x7FFF
.L_37700:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_3770a:
	strh	r0, [r4, #8]
.L_3770c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8037714
func_8037714:
	ldr	r1, .L_37740
	ldr	r0, .L_37744
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #19
	strb	r0, [r2, #0]
	mov	r0, #8
	strb	r0, [r1, #30]
	ldrh	r2, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_37740:
	.4byte	gCurrentSprite
.L_37744:
	.4byte	sUnk_83BDAB8


thumb_func_start func_8037748
func_8037748:
	ldr	r3, .L_3776c
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_37770
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #7
	bhi	.L_37772
	mov	r0, #1
	strb	r0, [r3, #31]
	b	.L_37772
	.align	2, 0
.L_3776c:
	.4byte	gCurrentSprite
.L_37770:
	strh	r0, [r3, #0]
.L_37772:
	bx	lr


thumb_func_start func_8037774
func_8037774:
	ldr	r0, .L_377d8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_377dc
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #10
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
	ldr	r0, .L_377e0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #9
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #13
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #16
	mov	r2, ip
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #26]
	bx	lr
	.align	2, 0
.L_377d8:
	.4byte	gCurrentSprite
.L_377dc:
	.4byte	0xFFFB
.L_377e0:
	.4byte	sUnk_83BDA90


thumb_func_start func_80377E4
func_80377E4:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_37824
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r4, r3, #0
	cmp	r0, #0
	beq	.L_37856
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r6, .L_37828
	lsl	r0, r2, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_3782c
	cmp	r1, r0
	bne	.L_37830
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3783a
.L_37824:
	.4byte	gCurrentSprite
.L_37828:
	.4byte	sUnk_83BDB00
.L_3782c:
	.4byte	0x7FFF
.L_37830:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r5
.L_3783a:
	strh	r0, [r3, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3784e
	ldrh	r0, [r4, #10]
	add	r0, #6
	strh	r0, [r4, #10]
	b	.L_37858
.L_3784e:
	ldrh	r0, [r4, #10]
	sub	r0, #6
	strh	r0, [r4, #10]
	b	.L_37858
.L_37856:
	strh	r0, [r3, #0]
.L_37858:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteBallLightning
SpriteBallLightning:
	push	{lr}
	ldr	r0, .L_37870
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_37874
	cmp	r0, #16
	beq	.L_3787a
	b	.L_3787e
.L_37870:
	.4byte	gCurrentSprite
.L_37874:
	bl	func_80374AC
	b	.L_3787e
.L_3787a:
	bl	func_8037508
.L_3787e:
	ldr	r1, .L_37888
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_37888:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknown9F
SpriteUnknown9F:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_378dc
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	mov	r6, #64	@ 0x40
	strb	r6, [r0, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_378aa
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #28]
.L_378aa:
	ldr	r0, .L_378e0
	ldrb	r0, [r0, #0]
	mov	r5, #31
	and	r5, r0
	cmp	r5, #0
	bne	.L_378f8
	ldrb	r0, [r4, #28]
	cmp	r0, #18
	bls	.L_378f8
	ldrh	r1, [r4, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_378e4
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #160	@ 0xa0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_378f8
.L_378dc:
	.4byte	gCurrentSprite
.L_378e0:
	.4byte	gMainTimer
.L_378e4:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #16
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #160	@ 0xa0
	bl	SpawnPrimarySpriteWithStatus
.L_378f8:
	ldr	r0, .L_3790c
	ldrb	r0, [r0, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_37902
	b	.L_37bb6
.L_37902:
	lsl	r0, r0, #2
	ldr	r1, .L_37910
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3790c:
	.4byte	gCurrentSprite
.L_37910:
	.4byte	.L_37914
.L_37914:
	.4byte	.L_37ac4
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37aca
	.4byte	.L_37bb6
	.4byte	.L_37ad0
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37ad6
	.4byte	.L_37ad6
	.4byte	.L_37ae8
	.4byte	.L_37ae8
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb0
	.4byte	.L_37afc
	.4byte	.L_37b52
	.4byte	.L_37b02
	.4byte	.L_37b22
	.4byte	.L_37b08
	.4byte	.L_37b12
	.4byte	.L_37b18
	.4byte	.L_37b22
	.4byte	.L_37b28
	.4byte	.L_37b32
	.4byte	.L_37b38
	.4byte	.L_37b42
	.4byte	.L_37b48
	.4byte	.L_37b52
	.4byte	.L_37b58
	.4byte	.L_37b62
	.4byte	.L_37b68
	.4byte	.L_37b84
	.4byte	.L_37b8a
	.4byte	.L_37ba4
	.4byte	.L_37b68
	.4byte	.L_37bb6
	.4byte	.L_37b8a
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37bb6
	.4byte	.L_37baa
.L_37ac4:
	bl	func_8037554
	b	.L_37bba
.L_37aca:
	bl	func_80375C4
	b	.L_37bba
.L_37ad0:
	bl	func_803766C
	b	.L_37bba
.L_37ad6:
	ldr	r0, .L_37ae4
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_8025D34
	b	.L_37bba
.L_37ae4:
	.4byte	gCurrentSprite
.L_37ae8:
	ldr	r0, .L_37af8
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_8025C80
	b	.L_37bba
	.align	2, 0
.L_37af8:
	.4byte	gCurrentSprite
.L_37afc:
	bl	func_8037630
	b	.L_37b52
.L_37b02:
	bl	func_803764C
	b	.L_37b22
.L_37b08:
	bl	func_8024688
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b12:
	bl	func_80246B8
	b	.L_37bba
.L_37b18:
	bl	func_802473C
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b22:
	bl	func_802476C
	b	.L_37bba
.L_37b28:
	bl	func_80247F0
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b32:
	bl	func_8024820
	b	.L_37bba
.L_37b38:
	bl	func_80248A4
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b42:
	bl	func_80248D4
	b	.L_37bba
.L_37b48:
	bl	func_8024958
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b52:
	bl	func_8024988
	b	.L_37bba
.L_37b58:
	bl	func_8024A0C
	mov	r0, #92	@ 0x5c
	bl	m4aSongNumStart
.L_37b62:
	bl	func_8024A3C
	b	.L_37bba
.L_37b68:
	ldr	r2, .L_37b7c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_37b80
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	b	.L_37b84
	.align	2, 0
.L_37b7c:
	.4byte	gCurrentSprite
.L_37b80:
	bl	func_8024AC0
.L_37b84:
	bl	func_8024AD4
	b	.L_37bba
.L_37b8a:
	ldr	r2, .L_37b9c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_37ba0
	bl	func_8024BEC
	b	.L_37ba4
.L_37b9c:
	.4byte	gCurrentSprite
.L_37ba0:
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
.L_37ba4:
	bl	func_8024C00
	b	.L_37bba
.L_37baa:
	bl	SpriteUtilDie
	b	.L_37bba
.L_37bb0:
	bl	func_8037748
	b	.L_37bba
.L_37bb6:
	bl	func_8037714
.L_37bba:
	ldr	r0, .L_37bcc
	add	r0, #35	@ 0x23
	mov	r1, #24
	strb	r1, [r0, #0]
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_37bcc:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownA0
SpriteUnknownA0:
	push	{lr}
	ldr	r0, .L_37be0
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_37be4
	bl	func_8037774
	b	.L_37be8
.L_37be0:
	.4byte	gCurrentSprite
.L_37be4:
	bl	func_80377E4
.L_37be8:
	ldr	r1, .L_37bf4
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_37bf4:
	.4byte	gCurrentSprite
