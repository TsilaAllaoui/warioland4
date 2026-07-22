.include "macros.s.inc"


thumb_func_start func_8044430
func_8044430:
	ldr	r2, .L_4444c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_44450
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	b	.L_4445c
	.align	2, 0
.L_4444c:
	.4byte	gCurrentSprite
.L_44450:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
.L_4445c:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8044460
func_8044460:
	push	{lr}
	ldr	r3, .L_444a0
	mov	r2, #0
	mov	r0, #3
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	ldr	r0, .L_444a4
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #16
	strb	r0, [r3, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_444a0:
	.4byte	gCurrentSprite
.L_444a4:
	.4byte	sUnk_83C82A0


thumb_func_start func_80444A8
func_80444A8:
	push	{lr}
	ldr	r1, .L_444d0
	ldr	r0, .L_444d4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	mov	r0, #20
	strb	r0, [r2, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_8044430
	pop	{r0}
	bx	r0
	.align	2, 0
.L_444d0:
	.4byte	gCurrentSprite
.L_444d4:
	.4byte	sUnk_83C82A0


thumb_func_start func_80444D8
func_80444D8:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_444f0
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_444f4
	mov	r1, #200	@ 0xc8
	lsl	r1, r1, #1
	mov	r0, #127	@ 0x7f
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	b	.L_444f6
.L_444f0:
	.4byte	gCurrentSprite
.L_444f4:
	mov	r5, #0
.L_444f6:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_44528
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_4455c
	ldr	r3, .L_4452c
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_44530
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_44544
.L_44528:
	.4byte	gSpriteAiCollisionResult
.L_4452c:
	.4byte	gCurrentSprite
.L_44530:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_44544:
	ldr	r0, .L_44554
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4461c
	ldr	r1, .L_44558
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_44634
.L_44554:
	.4byte	gSpriteAiCollisionFlags
.L_44558:
	.4byte	gCurrentSprite
.L_4455c:
	ldr	r4, .L_445b0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_445b8
	cmp	r5, #8
	beq	.L_445bc
	cmp	r5, #4
	beq	.L_445f2
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_4461c
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_4461c
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_445b4
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_445f2
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_4460a
	.align	2, 0
.L_445b0:
	.4byte	gCurrentSprite
.L_445b4:
	.4byte	gSpriteAiCollisionFlags
.L_445b8:
	cmp	r5, #4
	bne	.L_445c2
.L_445bc:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_44634
.L_445c2:
	cmp	r5, #8
	beq	.L_445f2
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_4461c
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_4461c
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_445f8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_445fc
.L_445f2:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_44634
.L_445f8:
	.4byte	gSpriteAiCollisionFlags
.L_445fc:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_4460a:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_4461c
	strb	r0, [r4, #28]
	b	.L_44634
.L_4461c:
	ldr	r0, .L_4462c
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_44630
	bl	func_8026374
	b	.L_44634
	.align	2, 0
.L_4462c:
	.4byte	gCurrentSprite
.L_44630:
	bl	func_8026418
.L_44634:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804463C
func_804463C:
	push	{lr}
	ldr	r0, .L_44660
	ldr	r1, .L_44664
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #76	@ 0x4c
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_44660:
	.4byte	gCurrentSprite
.L_44664:
	.4byte	sUnk_83C8278


thumb_func_start func_8044668
func_8044668:
	push	{lr}
	ldr	r2, .L_44684
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_44688
	bl	func_80444D8
	b	.L_4469e
.L_44684:
	.4byte	gCurrentSprite
.L_44688:
	mov	r0, #24
	strb	r0, [r2, #28]
	ldr	r0, .L_446a4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #13
	strb	r0, [r3, #0]
	mov	r0, #77	@ 0x4d
	bl	m4aSongNumStart
.L_4469e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_446a4:
	.4byte	sUnk_83C82E8


thumb_func_start func_80446A8
func_80446A8:
	push	{lr}
	ldr	r0, .L_446cc
	ldr	r1, .L_446d0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #39	@ 0x27
	mov	r1, #9
	strb	r1, [r0, #0]
	bl	func_8044430
	pop	{r0}
	bx	r0
.L_446cc:
	.4byte	gCurrentSprite
.L_446d0:
	.4byte	sUnk_83C8260


thumb_func_start func_80446D4
func_80446D4:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_446f0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_446f8
	ldr	r1, .L_446f4
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_44750
	.align	2, 0
.L_446f0:
	.4byte	gSpriteAiCollisionResult
.L_446f4:
	.4byte	gCurrentSprite
.L_446f8:
	ldr	r2, .L_44738
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_44750
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_44740
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_4473c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #14
	mov	r1, ip
	strb	r0, [r1, #0]
	bl	func_8044430
	b	.L_44750
.L_44738:
	.4byte	gCurrentSprite
.L_4473c:
	.4byte	sUnk_83C83A0
.L_44740:
	ldr	r0, .L_44754
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #3
	strb	r0, [r2, #30]
.L_44750:
	pop	{r0}
	bx	r0
.L_44754:
	.4byte	sUnk_83C82A0


thumb_func_start func_8044758
func_8044758:
	ldr	r2, .L_44794
	ldr	r0, .L_44798
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	beq	.L_44792
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
.L_44792:
	bx	lr
.L_44794:
	.4byte	gCurrentSprite
.L_44798:
	.4byte	sUnk_83C8318


thumb_func_start func_804479C
func_804479C:
	push	{lr}
	ldr	r1, .L_447ac
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8044758
	pop	{r0}
	bx	r0
.L_447ac:
	.4byte	gCurrentSprite


thumb_func_start func_80447B0
func_80447B0:
	push	{lr}
	ldr	r1, .L_447c0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8044758
	pop	{r0}
	bx	r0
.L_447c0:
	.4byte	gCurrentSprite


thumb_func_start func_80447C4
func_80447C4:
	ldr	r0, .L_447dc
	ldr	r1, .L_447e0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r0, #0]
	bx	lr
.L_447dc:
	.4byte	gCurrentSprite
.L_447e0:
	.4byte	sUnk_83C8250


thumb_func_start func_80447E4
func_80447E4:
	push	{lr}
	ldr	r0, .L_44810
	ldr	r1, .L_44814
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #16
	strb	r1, [r3, #0]
	mov	r1, #3
	strb	r1, [r0, #30]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bl	func_8044430
	pop	{r0}
	bx	r0
.L_44810:
	.4byte	gCurrentSprite
.L_44814:
	.4byte	sUnk_83C8390


thumb_func_start func_8044818
func_8044818:
	ldr	r1, .L_44838
	ldr	r0, .L_4483c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #28
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_44838:
	.4byte	gCurrentSprite
.L_4483c:
	.4byte	sUnk_83C8338


thumb_func_start func_8044840
func_8044840:
	ldr	r2, .L_4486c
	ldr	r0, .L_44870
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	mov	r0, #30
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	bx	lr
.L_4486c:
	.4byte	gCurrentSprite
.L_44870:
	.4byte	sUnk_83C8318


thumb_func_start func_8044874
func_8044874:
	push	{r4, r5, lr}
	ldr	r5, .L_448d8
	ldr	r0, .L_448dc
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
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_448e0
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_448e4
	ldr	r0, .L_448e8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_448d8:
	.4byte	gCurrentSprite
.L_448dc:
	.4byte	sUnk_83C8358
.L_448e0:
	.4byte	0xFEFF
.L_448e4:
	.4byte	gPersistentSpriteData
.L_448e8:
	.4byte	gCurrentRoom


thumb_func_start func_80448EC
func_80448EC:
	push	{lr}
	ldr	r1, .L_448fc
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8044874
	pop	{r0}
	bx	r0
.L_448fc:
	.4byte	gCurrentSprite


thumb_func_start func_8044900
func_8044900:
	push	{lr}
	ldr	r1, .L_44910
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8044874
	pop	{r0}
	bx	r0
.L_44910:
	.4byte	gCurrentSprite


thumb_func_start func_8044914
func_8044914:
	push	{r4, lr}
	ldr	r4, .L_44968
	ldr	r0, .L_4496c
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r1, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_44970
	ldr	r0, .L_44974
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_44968:
	.4byte	gCurrentSprite
.L_4496c:
	.4byte	sUnk_83C8358
.L_44970:
	.4byte	gPersistentSpriteData
.L_44974:
	.4byte	gCurrentRoom


thumb_func_start func_8044978
func_8044978:
	push	{lr}
	ldr	r1, .L_44988
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8044914
	pop	{r0}
	bx	r0
.L_44988:
	.4byte	gCurrentSprite


thumb_func_start func_804498C
func_804498C:
	push	{lr}
	ldr	r1, .L_4499c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8044914
	pop	{r0}
	bx	r0
.L_4499c:
	.4byte	gCurrentSprite


thumb_func_start func_80449A0
func_80449A0:
	ldr	r2, .L_449c8
	ldr	r0, .L_449cc
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_449c8:
	.4byte	gCurrentSprite
.L_449cc:
	.4byte	sUnk_83C8250


thumb_func_start func_80449D0
func_80449D0:
	push	{lr}
	ldr	r1, .L_449e0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_80449A0
	pop	{r0}
	bx	r0
.L_449e0:
	.4byte	gCurrentSprite


thumb_func_start func_80449E4
func_80449E4:
	push	{lr}
	ldr	r1, .L_449f4
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_80449A0
	pop	{r0}
	bx	r0
.L_449f4:
	.4byte	gCurrentSprite


thumb_func_start func_80449F8
func_80449F8:
	ldr	r2, .L_44a20
	ldr	r0, .L_44a24
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	bx	lr
.L_44a20:
	.4byte	gCurrentSprite
.L_44a24:
	.4byte	sUnk_83C8318


thumb_func_start func_8044A28
func_8044A28:
	push	{lr}
	ldr	r1, .L_44a38
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_80449F8
	pop	{r0}
	bx	r0
.L_44a38:
	.4byte	gCurrentSprite


thumb_func_start func_8044A3C
func_8044A3C:
	push	{lr}
	ldr	r1, .L_44a4c
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_80449F8
	pop	{r0}
	bx	r0
.L_44a4c:
	.4byte	gCurrentSprite


thumb_func_start func_8044A50
func_8044A50:
	push	{r4, lr}
	ldr	r0, .L_44a60
	ldrb	r1, [r0, #30]
	add	r4, r0, #0
	cmp	r1, #5
	bne	.L_44a68
	ldr	r0, .L_44a64
	b	.L_44a6a
.L_44a60:
	.4byte	gCurrentSprite
.L_44a64:
	.4byte	sUnk_83C83B8
.L_44a68:
	ldr	r0, .L_44ab4
.L_44a6a:
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_44ab8
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	ldr	r1, .L_44abc
	ldr	r0, .L_44ac0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_44ab4:
	.4byte	sUnk_83C8370
.L_44ab8:
	.4byte	0xFEFF
.L_44abc:
	.4byte	gPersistentSpriteData
.L_44ac0:
	.4byte	gCurrentRoom


thumb_func_start func_8044AC4
func_8044AC4:
	push	{r4, lr}
	ldr	r4, .L_44af0
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_44af4
	ldr	r0, .L_44af8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_44af0:
	.4byte	gCurrentSprite
.L_44af4:
	.4byte	gPersistentSpriteData
.L_44af8:
	.4byte	gCurrentRoom


thumb_func_start func_8044AFC
func_8044AFC:
	ldr	r2, .L_44b2c
	ldr	r0, .L_44b30
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	bx	lr
.L_44b2c:
	.4byte	gCurrentSprite
.L_44b30:
	.4byte	sUnk_83C8318


thumb_func_start func_8044B34
func_8044B34:
	push	{lr}
	ldr	r1, .L_44b44
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8044AFC
	pop	{r0}
	bx	r0
.L_44b44:
	.4byte	gCurrentSprite


thumb_func_start func_8044B48
func_8044B48:
	push	{lr}
	ldr	r1, .L_44b58
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8044AFC
	pop	{r0}
	bx	r0
.L_44b58:
	.4byte	gCurrentSprite


thumb_func_start func_8044B5C
func_8044B5C:
	ldr	r2, .L_44b84
	ldr	r0, .L_44b88
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #3
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_44b84:
	.4byte	gCurrentSprite
.L_44b88:
	.4byte	sUnk_83C8250


thumb_func_start func_8044B8C
func_8044B8C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_44bc4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_44c0e
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_44bc8
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_44bcc
	mov	r0, #29
	b	.L_44c10
.L_44bc4:
	.4byte	gCurrentSprite
.L_44bc8:
	.4byte	gSpriteAiCollisionFlags
.L_44bcc:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_44bf8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_44bfc
	cmp	r1, r0
	bne	.L_44c00
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_44c12
	.align	2, 0
.L_44bf8:
	.4byte	sUnk_8352B18
.L_44bfc:
	.4byte	0x7FFF
.L_44c00:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_44c12
.L_44c0e:
	mov	r0, #27
.L_44c10:
	strb	r0, [r4, #28]
.L_44c12:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8044C18
func_8044C18:
	ldr	r1, .L_44c20
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_44c20:
	.4byte	gCurrentSprite


thumb_func_start func_8044C24
func_8044C24:
	ldr	r1, .L_44c2c
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_44c2c:
	.4byte	gCurrentSprite


thumb_func_start func_8044C30
func_8044C30:
	ldr	r0, .L_44c3c
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_44c3c:
	.4byte	gCurrentSprite


thumb_func_start func_8044C40
func_8044C40:
	ldr	r0, .L_44c4c
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_44c4c:
	.4byte	gCurrentSprite


thumb_func_start SpriteMenono
SpriteMenono:
	push	{lr}
	ldr	r2, .L_44c78
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_44c64
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_44c64:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_44c6c
	b	.L_44fd4
.L_44c6c:
	lsl	r0, r0, #2
	ldr	r1, .L_44c7c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_44c78:
	.4byte	gCurrentSprite
.L_44c7c:
	.4byte	.L_44c80
.L_44c80:
	.4byte	.L_44e40
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44e44
	.4byte	.L_44e48
	.4byte	.L_44e58
	.4byte	.L_44e5c
	.4byte	.L_44fd4
	.4byte	.L_44e5c
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44e62
	.4byte	.L_44e66
	.4byte	.L_44e6c
	.4byte	.L_44f42
	.4byte	.L_44e72
	.4byte	.L_44e76
	.4byte	.L_44e7c
	.4byte	.L_44e80
	.4byte	.L_44e86
	.4byte	.L_44e8a
	.4byte	.L_44e90
	.4byte	.L_44e94
	.4byte	.L_44e9a
	.4byte	.L_44e9e
	.4byte	.L_44ea4
	.4byte	.L_44ea8
	.4byte	.L_44e9a
	.4byte	.L_44fd4
	.4byte	.L_44ea4
	.4byte	.L_44fd4
	.4byte	.L_44eae
	.4byte	.L_44eb2
	.4byte	.L_44eb8
	.4byte	.L_44ebc
	.4byte	.L_44ec2
	.4byte	.L_44ec6
	.4byte	.L_44ecc
	.4byte	.L_44ed0
	.4byte	.L_44ed6
	.4byte	.L_44f0e
	.4byte	.L_44edc
	.4byte	.L_44ef0
	.4byte	.L_44ee2
	.4byte	.L_44ee6
	.4byte	.L_44eec
	.4byte	.L_44ef0
	.4byte	.L_44ef6
	.4byte	.L_44efa
	.4byte	.L_44f00
	.4byte	.L_44f04
	.4byte	.L_44f0a
	.4byte	.L_44f0e
	.4byte	.L_44f14
	.4byte	.L_44f18
	.4byte	.L_44f1e
	.4byte	.L_44f2e
	.4byte	.L_44f24
	.4byte	.L_44f38
	.4byte	.L_44f2a
	.4byte	.L_44f2e
	.4byte	.L_44f34
	.4byte	.L_44f38
	.4byte	.L_44f3e
	.4byte	.L_44f42
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44e86
	.4byte	.L_44e90
	.4byte	.L_44f48
	.4byte	.L_44f4e
	.4byte	.L_44f54
	.4byte	.L_44f5a
	.4byte	.L_44f6c
	.4byte	.L_44f72
	.4byte	.L_44f60
	.4byte	.L_44f66
	.4byte	.L_44f78
	.4byte	.L_44f7c
	.4byte	.L_44fa0
	.4byte	.L_44fa4
	.4byte	.L_44f82
	.4byte	.L_44f86
	.4byte	.L_44faa
	.4byte	.L_44fae
	.4byte	.L_44f8c
	.4byte	.L_44f90
	.4byte	.L_44fb4
	.4byte	.L_44fb8
	.4byte	.L_44f96
	.4byte	.L_44f9a
	.4byte	.L_44fbe
	.4byte	.L_44fc2
	.4byte	.L_44fc8
	.4byte	.L_44fce
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44fd4
	.4byte	.L_44e4e
	.4byte	.L_44e52
.L_44e40:
	bl	func_8044460
.L_44e44:
	bl	func_80444A8
.L_44e48:
	bl	func_80444D8
	b	.L_44fd8
.L_44e4e:
	bl	func_804463C
.L_44e52:
	bl	func_8044668
	b	.L_44fd8
.L_44e58:
	bl	func_80446A8
.L_44e5c:
	bl	func_80446D4
	b	.L_44fd8
.L_44e62:
	bl	func_80447C4
.L_44e66:
	bl	func_8023C94
	b	.L_44fd8
.L_44e6c:
	bl	func_80447E4
	b	.L_44fd8
.L_44e72:
	bl	func_8044818
.L_44e76:
	bl	func_8023E00
	b	.L_44fd8
.L_44e7c:
	bl	func_8044840
.L_44e80:
	bl	func_8023EE0
	b	.L_44fd8
.L_44e86:
	bl	func_80448EC
.L_44e8a:
	bl	SpriteUtilFallOffscreenRight
	b	.L_44fd8
.L_44e90:
	bl	func_8044900
.L_44e94:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_44fd8
.L_44e9a:
	bl	func_80449D0
.L_44e9e:
	bl	SpriteUtilPushedRight
	b	.L_44fd8
.L_44ea4:
	bl	func_80449E4
.L_44ea8:
	bl	SpriteUtilPushedLeft
	b	.L_44fd8
.L_44eae:
	bl	func_8044A28
.L_44eb2:
	bl	func_8024478
	b	.L_44fd8
.L_44eb8:
	bl	func_8044A3C
.L_44ebc:
	bl	func_802449C
	b	.L_44fd8
.L_44ec2:
	bl	func_80244C0
.L_44ec6:
	bl	func_80244E0
	b	.L_44fd8
.L_44ecc:
	bl	func_8044A50
.L_44ed0:
	bl	SpriteUtilDieAfterDelay
	b	.L_44fd8
.L_44ed6:
	bl	func_804479C
	b	.L_44f0e
.L_44edc:
	bl	func_80447B0
	b	.L_44ef0
.L_44ee2:
	bl	func_8024688
.L_44ee6:
	bl	func_80246B8
	b	.L_44fd8
.L_44eec:
	bl	func_802473C
.L_44ef0:
	bl	func_802476C
	b	.L_44fd8
.L_44ef6:
	bl	func_80247F0
.L_44efa:
	bl	func_8024820
	b	.L_44fd8
.L_44f00:
	bl	func_80248A4
.L_44f04:
	bl	func_80248D4
	b	.L_44fd8
.L_44f0a:
	bl	func_8024958
.L_44f0e:
	bl	func_8024988
	b	.L_44fd8
.L_44f14:
	bl	func_8024A0C
.L_44f18:
	bl	func_8024A3C
	b	.L_44fd8
.L_44f1e:
	bl	func_8024AC0
	b	.L_44f2e
.L_44f24:
	bl	func_8024BEC
	b	.L_44f38
.L_44f2a:
	bl	func_8044B34
.L_44f2e:
	bl	func_8024AD4
	b	.L_44fd8
.L_44f34:
	bl	func_8044B48
.L_44f38:
	bl	func_8024C00
	b	.L_44fd8
.L_44f3e:
	bl	func_8044B5C
.L_44f42:
	bl	func_8044B8C
	b	.L_44fd8
.L_44f48:
	bl	func_8044C18
	b	.L_44fd8
.L_44f4e:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_44fd8
.L_44f54:
	bl	func_8044C24
	b	.L_44fd8
.L_44f5a:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_44fd8
.L_44f60:
	bl	func_8044C30
	b	.L_44fd8
.L_44f66:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_44fd8
.L_44f6c:
	bl	func_8044C40
	b	.L_44fd8
.L_44f72:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_44fd8
.L_44f78:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_44f7c:
	bl	SpriteUtilThrownLeftSoft
	b	.L_44fd8
.L_44f82:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_44f86:
	bl	SpriteUtilThrownLeftHard
	b	.L_44fd8
.L_44f8c:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_44f90:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_44fd8
.L_44f96:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_44f9a:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_44fd8
.L_44fa0:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_44fa4:
	bl	SpriteUtilThrownRightSoft
	b	.L_44fd8
.L_44faa:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_44fae:
	bl	SpriteUtilThrownRightHard
	b	.L_44fd8
.L_44fb4:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_44fb8:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_44fd8
.L_44fbe:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_44fc2:
	bl	SpriteUtilThrownUpRightHard
	b	.L_44fd8
.L_44fc8:
	bl	func_804498C
	b	.L_44fd8
.L_44fce:
	bl	func_8044978
	b	.L_44fd8
.L_44fd4:
	bl	func_8044AC4
.L_44fd8:
	pop	{r0}
	bx	r0
