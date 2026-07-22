.include "macros.s.inc"


thumb_func_start func_805E3E4
func_805E3E4:
	ldr	r2, .L_5e400
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e404
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	b	.L_5e410
	.align	2, 0
.L_5e400:
	.4byte	gCurrentSprite
.L_5e404:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
.L_5e410:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_805E414
func_805E414:
	push	{lr}
	ldr	r3, .L_5e448
	ldrh	r1, [r3, #0]
	ldr	r0, .L_5e44c
	and	r0, r1
	mov	r2, #0
	strh	r0, [r3, #0]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
.L_5e448:
	.4byte	gCurrentSprite
.L_5e44c:
	.4byte	0xFFFB


thumb_func_start func_805E450
func_805E450:
	push	{lr}
	ldr	r1, .L_5e470
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldr	r0, .L_5e474
	str	r0, [r1, #4]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_805E3E4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5e470:
	.4byte	gCurrentSprite
.L_5e474:
	.4byte	sUnk_83E0D68


thumb_func_start func_805E478
func_805E478:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5e4ac
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5e4e0
	ldr	r3, .L_5e4b0
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e4b4
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_5e4c8
.L_5e4ac:
	.4byte	gSpriteCollisionResult
.L_5e4b0:
	.4byte	gCurrentSprite
.L_5e4b4:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_5e4c8:
	ldr	r0, .L_5e4d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5e594
	ldr	r1, .L_5e4dc
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5e598
.L_5e4d8:
	.4byte	gUnk_3000A51
.L_5e4dc:
	.4byte	gCurrentSprite
.L_5e4e0:
	ldr	r4, .L_5e530
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e538
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5e594
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_5e594
	ldrh	r0, [r4, #8]
	add	r1, #48	@ 0x30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5e534
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e58a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_5e578
.L_5e530:
	.4byte	gCurrentSprite
.L_5e534:
	.4byte	gUnk_3000A51
.L_5e538:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5e594
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_5e594
	ldrh	r0, [r4, #8]
	sub	r1, #52	@ 0x34
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5e590
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e58a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_5e578:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5e594
.L_5e58a:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_5e598
.L_5e590:
	.4byte	gUnk_3000A51
.L_5e594:
	bl	SpriteUtilMoveForward1HalfPixel
.L_5e598:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805E5A0
func_805E5A0:
	push	{lr}
	ldr	r1, .L_5e5c8
	ldr	r0, .L_5e5cc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #13
	strb	r0, [r2, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_805E3E4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5e5c8:
	.4byte	gCurrentSprite
.L_5e5cc:
	.4byte	sUnk_83E0E18


thumb_func_start func_805E5D0
func_805E5D0:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5e5ec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5e5f4
	ldr	r1, .L_5e5f0
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5e664
	.align	2, 0
.L_5e5ec:
	.4byte	gSpriteCollisionResult
.L_5e5f0:
	.4byte	gCurrentSprite
.L_5e5f4:
	ldr	r5, .L_5e614
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	cmp	r6, #0
	beq	.L_5e630
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_5e618
	cmp	r0, #20
	beq	.L_5e624
	b	.L_5e664
.L_5e614:
	.4byte	gCurrentSprite
.L_5e618:
	ldrh	r0, [r5, #20]
	cmp	r0, #0
	bne	.L_5e664
	mov	r0, #1
	strb	r0, [r5, #30]
	b	.L_5e664
.L_5e624:
	ldrh	r0, [r5, #20]
	cmp	r0, #0
	bne	.L_5e664
	mov	r0, #3
	strb	r0, [r5, #30]
	b	.L_5e664
.L_5e630:
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_5e63c
	cmp	r0, #20
	beq	.L_5e660
	b	.L_5e664
.L_5e63c:
	ldrh	r0, [r5, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r4, #0
	strh	r0, [r5, #0]
	bl	func_805E3E4
	ldr	r0, .L_5e65c
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r6, [r5, #20]
	mov	r0, #20
	strb	r0, [r5, #28]
	mov	r0, #7
	strb	r0, [r7, #0]
	b	.L_5e664
.L_5e65c:
	.4byte	sUnk_83E0E38
.L_5e660:
	mov	r0, #15
	strb	r0, [r5, #28]
.L_5e664:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805E66C
func_805E66C:
	ldr	r1, .L_5e698
	ldr	r0, .L_5e69c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #28
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	sub	r2, #2
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #0]
	add	r1, #38	@ 0x26
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_5e698:
	.4byte	gCurrentSprite
.L_5e69c:
	.4byte	sUnk_83E1010


thumb_func_start func_805E6A0
func_805E6A0:
	ldr	r0, .L_5e6bc
	ldr	r1, .L_5e6c0
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #17
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_5e6bc:
	.4byte	gCurrentSprite
.L_5e6c0:
	.4byte	sUnk_83E0ED8


thumb_func_start func_805E6C4
func_805E6C4:
	ldr	r2, .L_5e6f0
	ldr	r0, .L_5e6f4
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	mov	r0, #28
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
.L_5e6f0:
	.4byte	gCurrentSprite
.L_5e6f4:
	.4byte	sUnk_83E0DC0


thumb_func_start func_805E6F8
func_805E6F8:
	ldr	r2, .L_5e724
	ldr	r0, .L_5e728
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
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
.L_5e724:
	.4byte	gCurrentSprite
.L_5e728:
	.4byte	sUnk_83E0F08


thumb_func_start func_805E72C
func_805E72C:
	push	{r4, r5, lr}
	ldr	r1, .L_5e73c
	ldrb	r0, [r1, #30]
	add	r5, r1, #0
	cmp	r0, #5
	bne	.L_5e744
	ldr	r0, .L_5e740
	b	.L_5e746
.L_5e73c:
	.4byte	gCurrentSprite
.L_5e740:
	.4byte	sUnk_83E0FF8
.L_5e744:
	ldr	r0, .L_5e784
.L_5e746:
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
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_5e788
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_5e784:
	.4byte	sUnk_83E0FE0
.L_5e788:
	.4byte	0xFEFF


thumb_func_start func_805E78C
func_805E78C:
	push	{lr}
	ldr	r1, .L_5e79c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805E72C
	pop	{r0}
	bx	r0
.L_5e79c:
	.4byte	gCurrentSprite


thumb_func_start func_805E7A0
func_805E7A0:
	push	{lr}
	ldr	r1, .L_5e7b0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805E72C
	pop	{r0}
	bx	r0
.L_5e7b0:
	.4byte	gCurrentSprite


thumb_func_start func_805E7B4
func_805E7B4:
	push	{lr}
	ldr	r1, .L_5e7c4
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_5e7cc
	ldr	r0, .L_5e7c8
	b	.L_5e7ce
.L_5e7c4:
	.4byte	gCurrentSprite
.L_5e7c8:
	.4byte	sUnk_83E0FF8
.L_5e7cc:
	ldr	r0, .L_5e7fc
.L_5e7ce:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5e7fc:
	.4byte	sUnk_83E0FE0


thumb_func_start func_805E800
func_805E800:
	push	{lr}
	ldr	r1, .L_5e810
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805E7B4
	pop	{r0}
	bx	r0
.L_5e810:
	.4byte	gCurrentSprite


thumb_func_start func_805E814
func_805E814:
	push	{lr}
	ldr	r1, .L_5e824
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805E7B4
	pop	{r0}
	bx	r0
.L_5e824:
	.4byte	gCurrentSprite


thumb_func_start func_805E828
func_805E828:
	ldr	r2, .L_5e860
	ldr	r0, .L_5e864
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
	mov	r0, #1
	strb	r0, [r2, #30]
	sub	r1, #4
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_5e860:
	.4byte	gCurrentSprite
.L_5e864:
	.4byte	sUnk_83E0F80


thumb_func_start func_805E868
func_805E868:
	push	{lr}
	ldr	r1, .L_5e878
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_805E828
	pop	{r0}
	bx	r0
.L_5e878:
	.4byte	gCurrentSprite


thumb_func_start func_805E87C
func_805E87C:
	push	{lr}
	ldr	r1, .L_5e88c
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_805E828
	pop	{r0}
	bx	r0
.L_5e88c:
	.4byte	gCurrentSprite


thumb_func_start func_805E890
func_805E890:
	ldr	r2, .L_5e8b8
	ldr	r0, .L_5e8bc
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
.L_5e8b8:
	.4byte	gCurrentSprite
.L_5e8bc:
	.4byte	sUnk_83E0F60


thumb_func_start func_805E8C0
func_805E8C0:
	push	{lr}
	ldr	r1, .L_5e8d0
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_805E890
	pop	{r0}
	bx	r0
.L_5e8d0:
	.4byte	gCurrentSprite


thumb_func_start func_805E8D4
func_805E8D4:
	push	{lr}
	ldr	r1, .L_5e8e4
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_805E890
	pop	{r0}
	bx	r0
.L_5e8e4:
	.4byte	gCurrentSprite


thumb_func_start func_805E8E8
func_805E8E8:
	ldr	r2, .L_5e910
	ldr	r0, .L_5e914
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
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
.L_5e910:
	.4byte	gCurrentSprite
.L_5e914:
	.4byte	sUnk_83E0F08


thumb_func_start func_805E918
func_805E918:
	push	{lr}
	ldr	r1, .L_5e928
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_805E8E8
	pop	{r0}
	bx	r0
.L_5e928:
	.4byte	gCurrentSprite


thumb_func_start func_805E92C
func_805E92C:
	push	{lr}
	ldr	r1, .L_5e93c
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_805E8E8
	pop	{r0}
	bx	r0
.L_5e93c:
	.4byte	gCurrentSprite


thumb_func_start func_805E940
func_805E940:
	ldr	r0, .L_5e950
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #5
	bne	.L_5e958
	ldr	r0, .L_5e954
	b	.L_5e95a
	.align	2, 0
.L_5e950:
	.4byte	gCurrentSprite
.L_5e954:
	.4byte	sUnk_83E0FC0
.L_5e958:
	ldr	r0, .L_5e980
.L_5e95a:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_5e984
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_5e980:
	.4byte	sUnk_83E0FA0
.L_5e984:
	.4byte	0xFEFF


thumb_func_start func_805E988
func_805E988:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805E994
func_805E994:
	ldr	r1, .L_5e9a4
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_5e9ac
	ldr	r0, .L_5e9a8
	b	.L_5e9ae
	.align	2, 0
.L_5e9a4:
	.4byte	gCurrentSprite
.L_5e9a8:
	.4byte	sUnk_83E0F08
.L_5e9ac:
	ldr	r0, .L_5e9e8
.L_5e9ae:
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
	beq	.L_5e9e4
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
.L_5e9e4:
	bx	lr
	.align	2, 0
.L_5e9e8:
	.4byte	sUnk_83E0E50


thumb_func_start func_805E9EC
func_805E9EC:
	push	{lr}
	ldr	r1, .L_5e9fc
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_805E994
	pop	{r0}
	bx	r0
.L_5e9fc:
	.4byte	gCurrentSprite


thumb_func_start func_805EA00
func_805EA00:
	push	{lr}
	ldr	r1, .L_5ea10
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_805E994
	pop	{r0}
	bx	r0
.L_5ea10:
	.4byte	gCurrentSprite


thumb_func_start func_805EA14
func_805EA14:
	ldr	r2, .L_5ea44
	ldr	r0, .L_5ea48
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
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
.L_5ea44:
	.4byte	gCurrentSprite
.L_5ea48:
	.4byte	sUnk_83E0F08


thumb_func_start func_805EA4C
func_805EA4C:
	push	{lr}
	ldr	r1, .L_5ea5c
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_805EA14
	pop	{r0}
	bx	r0
.L_5ea5c:
	.4byte	gCurrentSprite


thumb_func_start func_805EA60
func_805EA60:
	push	{lr}
	ldr	r1, .L_5ea70
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_805EA14
	pop	{r0}
	bx	r0
.L_5ea70:
	.4byte	gCurrentSprite


thumb_func_start func_805EA74
func_805EA74:
	ldr	r2, .L_5eaa8
	ldr	r0, .L_5eaac
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
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bx	lr
.L_5eaa8:
	.4byte	gCurrentSprite
.L_5eaac:
	.4byte	sUnk_83E0DC0


thumb_func_start func_805EAB0
func_805EAB0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_5eae8
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_5eb32
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_5eaec
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5eaf0
	mov	r0, #29
	b	.L_5eb34
.L_5eae8:
	.4byte	gCurrentSprite
.L_5eaec:
	.4byte	gUnk_3000A51
.L_5eaf0:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5eb1c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5eb20
	cmp	r1, r0
	bne	.L_5eb24
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_5eb36
	.align	2, 0
.L_5eb1c:
	.4byte	sUnk_8352B18
.L_5eb20:
	.4byte	0x7FFF
.L_5eb24:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_5eb36
.L_5eb32:
	mov	r0, #27
.L_5eb34:
	strb	r0, [r4, #28]
.L_5eb36:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805EB3C
func_805EB3C:
	ldr	r1, .L_5eb4c
	ldr	r0, .L_5eb50
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_5eb4c:
	.4byte	gCurrentSprite
.L_5eb50:
	.4byte	sUnk_83E0F08


thumb_func_start func_805EB54
func_805EB54:
	push	{lr}
	ldr	r1, .L_5eb64
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_805EB3C
	pop	{r0}
	bx	r0
.L_5eb64:
	.4byte	gCurrentSprite


thumb_func_start func_805EB68
func_805EB68:
	push	{lr}
	ldr	r1, .L_5eb78
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_805EB3C
	pop	{r0}
	bx	r0
.L_5eb78:
	.4byte	gCurrentSprite


thumb_func_start func_805EB7C
func_805EB7C:
	ldr	r1, .L_5eb90
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_5eb94
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_5eb90:
	.4byte	gCurrentSprite
.L_5eb94:
	.4byte	sUnk_83E0F08


thumb_func_start func_805EB98
func_805EB98:
	push	{lr}
	ldr	r1, .L_5eba8
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_805EB7C
	pop	{r0}
	bx	r0
.L_5eba8:
	.4byte	gCurrentSprite


thumb_func_start func_805EBAC
func_805EBAC:
	push	{lr}
	ldr	r1, .L_5ebbc
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_805EB7C
	pop	{r0}
	bx	r0
.L_5ebbc:
	.4byte	gCurrentSprite


thumb_func_start SpriteDice
SpriteDice:
	push	{lr}
	ldr	r2, .L_5ebe8
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ebd4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_5ebd4:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_5ebdc
	b	.L_5ef36
.L_5ebdc:
	lsl	r0, r0, #2
	ldr	r1, .L_5ebec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5ebe8:
	.4byte	gCurrentSprite
.L_5ebec:
	.4byte	.L_5ebf0
.L_5ebf0:
	.4byte	.L_5ed9c
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5eda0
	.4byte	.L_5eda4
	.4byte	.L_5edaa
	.4byte	.L_5edae
	.4byte	.L_5ef36
	.4byte	.L_5edae
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5edb4
	.4byte	.L_5edb8
	.4byte	.L_5edbe
	.4byte	.L_5edc2
	.4byte	.L_5edc8
	.4byte	.L_5edcc
	.4byte	.L_5edd2
	.4byte	.L_5edd6
	.4byte	.L_5eddc
	.4byte	.L_5ede0
	.4byte	.L_5ede6
	.4byte	.L_5edea
	.4byte	.L_5edf0
	.4byte	.L_5ee00
	.4byte	.L_5edf6
	.4byte	.L_5ee0a
	.4byte	.L_5edfc
	.4byte	.L_5ee00
	.4byte	.L_5ee06
	.4byte	.L_5ee0a
	.4byte	.L_5ee10
	.4byte	.L_5ee14
	.4byte	.L_5ee1a
	.4byte	.L_5ee1e
	.4byte	.L_5ee24
	.4byte	.L_5ee28
	.4byte	.L_5ee2e
	.4byte	.L_5ee32
	.4byte	.L_5ee38
	.4byte	.L_5ee70
	.4byte	.L_5ee3e
	.4byte	.L_5ee52
	.4byte	.L_5ee44
	.4byte	.L_5ee48
	.4byte	.L_5ee4e
	.4byte	.L_5ee52
	.4byte	.L_5ee58
	.4byte	.L_5ee5c
	.4byte	.L_5ee62
	.4byte	.L_5ee66
	.4byte	.L_5ee6c
	.4byte	.L_5ee70
	.4byte	.L_5ee76
	.4byte	.L_5ee7a
	.4byte	.L_5ee80
	.4byte	.L_5ee90
	.4byte	.L_5ee86
	.4byte	.L_5ee9a
	.4byte	.L_5ee8c
	.4byte	.L_5ee90
	.4byte	.L_5ee96
	.4byte	.L_5ee9a
	.4byte	.L_5eea0
	.4byte	.L_5eea4
	.4byte	.L_5ef36
	.4byte	.L_5ef36
	.4byte	.L_5eddc
	.4byte	.L_5ede6
	.4byte	.L_5eeaa
	.4byte	.L_5eeb0
	.4byte	.L_5eeb6
	.4byte	.L_5eebc
	.4byte	.L_5eece
	.4byte	.L_5eed4
	.4byte	.L_5eec2
	.4byte	.L_5eec8
	.4byte	.L_5eeda
	.4byte	.L_5eede
	.4byte	.L_5ef02
	.4byte	.L_5ef06
	.4byte	.L_5eee4
	.4byte	.L_5eee8
	.4byte	.L_5ef0c
	.4byte	.L_5ef10
	.4byte	.L_5eeee
	.4byte	.L_5eef2
	.4byte	.L_5ef16
	.4byte	.L_5ef1a
	.4byte	.L_5eef8
	.4byte	.L_5eefc
	.4byte	.L_5ef20
	.4byte	.L_5ef24
	.4byte	.L_5ef2a
	.4byte	.L_5ef30
.L_5ed9c:
	bl	func_805E414
.L_5eda0:
	bl	func_805E450
.L_5eda4:
	bl	func_805E478
	b	.L_5ef3a
.L_5edaa:
	bl	func_805E5A0
.L_5edae:
	bl	func_805E5D0
	b	.L_5ef3a
.L_5edb4:
	bl	func_805E66C
.L_5edb8:
	bl	func_8023C94
	b	.L_5ef3a
.L_5edbe:
	bl	func_805E6A0
.L_5edc2:
	bl	func_8023CD8
	b	.L_5ef3a
.L_5edc8:
	bl	func_805E6C4
.L_5edcc:
	bl	func_8023D48
	b	.L_5ef3a
.L_5edd2:
	bl	func_805E6F8
.L_5edd6:
	bl	func_8023EE0
	b	.L_5ef3a
.L_5eddc:
	bl	func_805E78C
.L_5ede0:
	bl	SpriteUtilFallOffscreenRight
	b	.L_5ef3a
.L_5ede6:
	bl	func_805E7A0
.L_5edea:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_5ef3a
.L_5edf0:
	bl	func_805E868
	b	.L_5ee00
.L_5edf6:
	bl	func_805E87C
	b	.L_5ee0a
.L_5edfc:
	bl	func_805E8C0
.L_5ee00:
	bl	SpriteUtilPushedRight
	b	.L_5ef3a
.L_5ee06:
	bl	func_805E8D4
.L_5ee0a:
	bl	SpriteUtilPushedLeft
	b	.L_5ef3a
.L_5ee10:
	bl	func_805E918
.L_5ee14:
	bl	func_8024478
	b	.L_5ef3a
.L_5ee1a:
	bl	func_805E92C
.L_5ee1e:
	bl	func_802449C
	b	.L_5ef3a
.L_5ee24:
	bl	func_80244C0
.L_5ee28:
	bl	func_80244E0
	b	.L_5ef3a
.L_5ee2e:
	bl	func_805E940
.L_5ee32:
	bl	SpriteUtilDieAfterDelay
	b	.L_5ef3a
.L_5ee38:
	bl	func_805E9EC
	b	.L_5ee70
.L_5ee3e:
	bl	func_805EA00
	b	.L_5ee52
.L_5ee44:
	bl	func_8024688
.L_5ee48:
	bl	func_80246B8
	b	.L_5ef3a
.L_5ee4e:
	bl	func_802473C
.L_5ee52:
	bl	func_802476C
	b	.L_5ef3a
.L_5ee58:
	bl	func_80247F0
.L_5ee5c:
	bl	func_8024820
	b	.L_5ef3a
.L_5ee62:
	bl	func_80248A4
.L_5ee66:
	bl	func_80248D4
	b	.L_5ef3a
.L_5ee6c:
	bl	func_8024958
.L_5ee70:
	bl	func_8024988
	b	.L_5ef3a
.L_5ee76:
	bl	func_8024A0C
.L_5ee7a:
	bl	func_8024A3C
	b	.L_5ef3a
.L_5ee80:
	bl	func_8024AC0
	b	.L_5ee90
.L_5ee86:
	bl	func_8024BEC
	b	.L_5ee9a
.L_5ee8c:
	bl	func_805EA4C
.L_5ee90:
	bl	func_8024AD4
	b	.L_5ef3a
.L_5ee96:
	bl	func_805EA60
.L_5ee9a:
	bl	func_8024C00
	b	.L_5ef3a
.L_5eea0:
	bl	func_805EA74
.L_5eea4:
	bl	func_805EAB0
	b	.L_5ef3a
.L_5eeaa:
	bl	func_805EB54
	b	.L_5ef3a
.L_5eeb0:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_5ef3a
.L_5eeb6:
	bl	func_805EB68
	b	.L_5ef3a
.L_5eebc:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_5ef3a
.L_5eec2:
	bl	func_805EB98
	b	.L_5ef3a
.L_5eec8:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_5ef3a
.L_5eece:
	bl	func_805EBAC
	b	.L_5ef3a
.L_5eed4:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_5ef3a
.L_5eeda:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_5eede:
	bl	SpriteUtilThrownLeftSoft
	b	.L_5ef3a
.L_5eee4:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_5eee8:
	bl	SpriteUtilThrownLeftHard
	b	.L_5ef3a
.L_5eeee:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_5eef2:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_5ef3a
.L_5eef8:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_5eefc:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_5ef3a
.L_5ef02:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_5ef06:
	bl	SpriteUtilThrownRightSoft
	b	.L_5ef3a
.L_5ef0c:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_5ef10:
	bl	SpriteUtilThrownRightHard
	b	.L_5ef3a
.L_5ef16:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_5ef1a:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_5ef3a
.L_5ef20:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_5ef24:
	bl	SpriteUtilThrownUpRightHard
	b	.L_5ef3a
.L_5ef2a:
	bl	func_805E814
	b	.L_5ef3a
.L_5ef30:
	bl	func_805E800
	b	.L_5ef3a
.L_5ef36:
	bl	func_805E988
.L_5ef3a:
	pop	{r0}
	bx	r0
	.align	2, 0
