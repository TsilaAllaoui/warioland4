.include "macros.s.inc"


thumb_func_start func_804C600
func_804C600:
	push	{r4, lr}
	ldr	r0, .L_4c654
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_4c658
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
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
	ldr	r0, .L_4c65c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #15
	strb	r0, [r4, #28]
	strb	r2, [r4, #30]
	mov	r2, ip
	add	r2, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r2, #0]
	strb	r1, [r4, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4c654:
	.4byte	gCurrentSprite
.L_4c658:
	.4byte	0x404
.L_4c65c:
	.4byte	sUnk_83D0DB4


thumb_func_start func_804C660
func_804C660:
	push	{lr}
	mov	r0, #70	@ 0x46
	mov	r1, #96	@ 0x60
	bl	SpriteUtilCheckWarioNearbyAboveBelow
	cmp	r0, #1
	beq	.L_4c69e
	ldr	r2, .L_4c6a4
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
	bne	.L_4c69e
	ldrh	r1, [r2, #0]
	ldr	r0, .L_4c6a8
	and	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #72	@ 0x48
	mov	r1, ip
	strb	r0, [r1, #0]
.L_4c69e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4c6a4:
	.4byte	gCurrentSprite
.L_4c6a8:
	.4byte	0xFFFB


thumb_func_start func_804C6AC
func_804C6AC:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_4c70c
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4c704
	ldrh	r1, [r4, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #184	@ 0xb8
	bl	func_801E3A8
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #184	@ 0xb8
	bl	func_801E3A8
	mov	r0, #220	@ 0xdc
	strb	r0, [r6, #0]
	mov	r0, #15
	strb	r0, [r4, #28]
	mov	r0, #99	@ 0x63
	bl	m4aSongNumStart
.L_4c704:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_4c70c:
	.4byte	gCurrentSprite


thumb_func_start func_804C710
func_804C710:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_4c780
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r3, #40	@ 0x28
	mov	r5, #0
	mov	r6, #0
	orr	r3, r0
	ldr	r0, .L_4c784
	and	r3, r0
	mov	r1, ip
	strh	r3, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r4, #16
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r5, [r0, #22]
	strh	r6, [r0, #20]
	mov	r0, #9
	mov	r1, ip
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	mov	r0, ip
	strb	r4, [r0, #28]
	mov	r0, #64	@ 0x40
	and	r0, r3
	ldr	r0, .L_4c788
	mov	r1, ip
	str	r0, [r1, #4]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4c780:
	.4byte	gCurrentSprite
.L_4c784:
	.4byte	0xFFFB
.L_4c788:
	.4byte	sUnk_83D0D3C


thumb_func_start func_804C78C
func_804C78C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_4c7ac
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_4c7b0
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r4, #22]
	sub	r0, #1
	strb	r0, [r4, #22]
	ldrh	r0, [r4, #8]
	sub	r0, #2
	strh	r0, [r4, #8]
	b	.L_4c840
.L_4c7ac:
	.4byte	gCurrentSprite
.L_4c7b0:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	ldr	r0, .L_4c7d4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_4c7cc
	ldr	r0, .L_4c7d8
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4c7dc
.L_4c7cc:
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
	b	.L_4c840
	.align	2, 0
.L_4c7d4:
	.4byte	gUnk_30000A0
.L_4c7d8:
	.4byte	gSpriteCollisionResult
.L_4c7dc:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_4c804
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4c808
	cmp	r1, r0
	bne	.L_4c80c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_4c816
.L_4c804:
	.4byte	sUnk_83D0DDC
.L_4c808:
	.4byte	0x7FFF
.L_4c80c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_4c816:
	strh	r0, [r4, #8]
	ldr	r2, .L_4c830
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4c834
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r2, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_4c83e
.L_4c830:
	.4byte	gCurrentSprite
.L_4c834:
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r2, #10]
	sub	r0, r0, r1
.L_4c83e:
	strh	r0, [r2, #10]
.L_4c840:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804C848
func_804C848:
	ldr	r1, .L_4c874
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_4c878
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #27
	strb	r0, [r2, #0]
	ldrh	r2, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_4c874:
	.4byte	gCurrentSprite
.L_4c878:
	.4byte	sUnk_83D0D64


thumb_func_start func_804C87C
func_804C87C:
	ldr	r2, .L_4c898
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_4c896
	strh	r0, [r2, #0]
.L_4c896:
	bx	lr
.L_4c898:
	.4byte	gCurrentSprite


thumb_func_start SpriteSpikeCannon
SpriteSpikeCannon:
	push	{lr}
	ldr	r0, .L_4c8b0
	ldrb	r0, [r0, #28]
	cmp	r0, #15
	beq	.L_4c8c0
	cmp	r0, #15
	bgt	.L_4c8b4
	cmp	r0, #0
	beq	.L_4c8ba
	b	.L_4c8ca
.L_4c8b0:
	.4byte	gCurrentSprite
.L_4c8b4:
	cmp	r0, #16
	beq	.L_4c8c6
	b	.L_4c8ca
.L_4c8ba:
	bl	func_804C600
	b	.L_4c8ca
.L_4c8c0:
	bl	func_804C660
	b	.L_4c8ca
.L_4c8c6:
	bl	func_804C6AC
.L_4c8ca:
	ldr	r1, .L_4c8d4
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_4c8d4:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownB8
SpriteUnknownB8:
	push	{lr}
	ldr	r0, .L_4c8ec
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_4c8fc
	cmp	r0, #16
	bgt	.L_4c8f0
	cmp	r0, #0
	beq	.L_4c8f6
	b	.L_4c908
.L_4c8ec:
	.4byte	gCurrentSprite
.L_4c8f0:
	cmp	r0, #50	@ 0x32
	beq	.L_4c902
	b	.L_4c908
.L_4c8f6:
	bl	func_804C710
	b	.L_4c90c
.L_4c8fc:
	bl	func_804C78C
	b	.L_4c90c
.L_4c902:
	bl	func_804C87C
	b	.L_4c90c
.L_4c908:
	bl	func_804C848
.L_4c90c:
	pop	{r0}
	bx	r0
