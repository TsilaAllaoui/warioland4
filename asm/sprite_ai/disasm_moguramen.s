.include "macros.s.inc"


thumb_func_start func_8033684
func_8033684:
	ldr	r2, .L_336a0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_336a4
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	b	.L_336b0
	.align	2, 0
.L_336a0:
	.4byte	gCurrentSprite
.L_336a4:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
.L_336b0:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80336B4
func_80336B4:
	push	{lr}
	ldr	r0, .L_336d8
	ldr	r1, .L_336dc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	mov	r1, #3
	strb	r1, [r0, #30]
	add	r0, #40	@ 0x28
	mov	r1, #96	@ 0x60
	strb	r1, [r0, #0]
	bl	func_8033684
	pop	{r0}
	bx	r0
.L_336d8:
	.4byte	gCurrentSprite
.L_336dc:
	.4byte	sUnk_83BBE1C


thumb_func_start func_80336E0
func_80336E0:
	push	{lr}
	ldr	r1, .L_33700
	ldr	r0, .L_33704
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_8033684
	pop	{r0}
	bx	r0
	.align	2, 0
.L_33700:
	.4byte	gCurrentSprite
.L_33704:
	.4byte	sUnk_83BBDF4


thumb_func_start func_8033708
func_8033708:
	push	{r4, lr}
	ldr	r4, .L_3375c
	ldrh	r1, [r4, #0]
	mov	r0, #32
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #20
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	ldr	r1, .L_33760
	ldrb	r2, [r4, #24]
	lsl	r0, r2, #1
	add	r0, r0, r2
	add	r1, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_33764
	mov	r0, #2
	strb	r0, [r4, #29]
	mov	r0, #1
	strb	r0, [r4, #26]
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_3376c
	.align	2, 0
.L_3375c:
	.4byte	gCurrentSprite
.L_33760:
	.4byte	gUnk_3000964
.L_33764:
	mov	r0, #1
	strb	r0, [r4, #29]
	bl	func_80336E0
.L_3376c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8033774
func_8033774:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r4, .L_33790
	ldr	r1, [r4, #20]
	ldr	r0, .L_33794
	and	r1, r0
	ldr	r0, .L_33798
	cmp	r1, r0
	bne	.L_3379c
	mov	r0, #113	@ 0x71
	bl	m4aSongNumStart
	b	.L_337e8
	.align	2, 0
.L_33790:
	.4byte	gCurrentSprite
.L_33794:
	.4byte	0xFFFFFF
.L_33798:
	.4byte	0x10002
.L_3379c:
	ldr	r0, .L_337c8
	cmp	r1, r0
	bne	.L_337e8
	ldrh	r1, [r4, #0]
	mov	r5, #64	@ 0x40
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_337cc
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #154	@ 0x9a
	bl	SpawnPrimarySpriteWithStatus
	b	.L_337e2
.L_337c8:
	.4byte	0x10004
.L_337cc:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #154	@ 0x9a
	bl	SpawnPrimarySpriteWithStatus
.L_337e2:
	mov	r0, #114	@ 0x72
	bl	m4aSongNumStart
.L_337e8:
	bl	func_80238A4
	ldr	r4, .L_3380c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_33810
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_33822
.L_3380c:
	.4byte	gCurrentSprite
.L_33810:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_33822:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_3383c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_33840
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_3385a
.L_3383c:
	.4byte	gSpriteCollisionTileType
.L_33840:
	bl	func_8026374
	ldr	r2, .L_33864
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3385a
	mov	r0, #23
	strb	r0, [r2, #28]
.L_3385a:
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_33864:
	.4byte	gCurrentSprite


thumb_func_start func_8033868
func_8033868:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_3389c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_338d0
	ldr	r3, .L_338a0
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_338a4
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_338b8
.L_3389c:
	.4byte	gSpriteCollisionResult
.L_338a0:
	.4byte	gCurrentSprite
.L_338a4:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_338b8:
	ldr	r0, .L_338c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_33984
	ldr	r1, .L_338cc
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_33988
.L_338c8:
	.4byte	gSpriteCollisionTileType
.L_338cc:
	.4byte	gCurrentSprite
.L_338d0:
	ldr	r4, .L_33920
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_33928
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_33984
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_33984
	ldrh	r0, [r4, #8]
	add	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_33924
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3397a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_33968
.L_33920:
	.4byte	gCurrentSprite
.L_33924:
	.4byte	gSpriteCollisionTileType
.L_33928:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_33984
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_33984
	ldrh	r0, [r4, #8]
	sub	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_33980
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3397a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_33968:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_33984
.L_3397a:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_33988
.L_33980:
	.4byte	gSpriteCollisionTileType
.L_33984:
	bl	func_8026374
.L_33988:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8033990
func_8033990:
	push	{lr}
	ldr	r1, .L_339b8
	ldr	r0, .L_339bc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #15
	strb	r0, [r2, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_8033684
	pop	{r0}
	bx	r0
	.align	2, 0
.L_339b8:
	.4byte	gCurrentSprite
.L_339bc:
	.4byte	sUnk_83BBEDC


thumb_func_start func_80339C0
func_80339C0:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_339dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_339e4
	ldr	r1, .L_339e0
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_33a64
	.align	2, 0
.L_339dc:
	.4byte	gSpriteCollisionResult
.L_339e0:
	.4byte	gCurrentSprite
.L_339e4:
	ldr	r2, .L_33a0c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_33a64
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	beq	.L_33a10
	cmp	r0, #20
	beq	.L_33a38
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_33a60
	mov	r0, #110	@ 0x6e
	b	.L_33a62
.L_33a0c:
	.4byte	gCurrentSprite
.L_33a10:
	ldr	r0, .L_33a34
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #14
	strb	r0, [r3, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	b	.L_33a64
.L_33a34:
	.4byte	sUnk_83BBF04
.L_33a38:
	ldr	r0, .L_33a5c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #22
	strb	r0, [r2, #28]
	mov	r0, #7
	strb	r0, [r3, #0]
	mov	r0, #3
	strb	r0, [r2, #30]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	bl	func_8033684
	b	.L_33a64
	.align	2, 0
.L_33a5c:
	.4byte	sUnk_83BBF2C
.L_33a60:
	mov	r0, #15
.L_33a62:
	strb	r0, [r2, #28]
.L_33a64:
	pop	{r0}
	bx	r0


thumb_func_start func_8033A68
func_8033A68:
	ldr	r2, .L_33aa4
	ldr	r0, .L_33aa8
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
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	beq	.L_33aa2
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
.L_33aa2:
	bx	lr
.L_33aa4:
	.4byte	gCurrentSprite
.L_33aa8:
	.4byte	sUnk_83BBF54


thumb_func_start func_8033AAC
func_8033AAC:
	push	{lr}
	ldr	r1, .L_33abc
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8033A68
	pop	{r0}
	bx	r0
.L_33abc:
	.4byte	gCurrentSprite


thumb_func_start func_8033AC0
func_8033AC0:
	push	{lr}
	ldr	r1, .L_33ad0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8033A68
	pop	{r0}
	bx	r0
.L_33ad0:
	.4byte	gCurrentSprite


thumb_func_start func_8033AD4
func_8033AD4:
	push	{lr}
	ldr	r1, .L_33afc
	ldr	r0, .L_33b00
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #72	@ 0x48
	strb	r0, [r2, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_8033684
	pop	{r0}
	bx	r0
	.align	2, 0
.L_33afc:
	.4byte	gCurrentSprite
.L_33b00:
	.4byte	sUnk_83BBD6C


thumb_func_start func_8033B04
func_8033B04:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_33b20
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_33b28
	ldr	r1, .L_33b24
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_33b4c
	.align	2, 0
.L_33b20:
	.4byte	gSpriteCollisionResult
.L_33b24:
	.4byte	gCurrentSprite
.L_33b28:
	ldr	r2, .L_33b44
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_33b4c
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_33b48
	mov	r0, #110	@ 0x6e
	b	.L_33b4a
.L_33b44:
	.4byte	gCurrentSprite
.L_33b48:
	mov	r0, #15
.L_33b4a:
	strb	r0, [r2, #28]
.L_33b4c:
	pop	{r0}
	bx	r0


thumb_func_start func_8033B50
func_8033B50:
	ldr	r0, .L_33b6c
	ldr	r1, .L_33b70
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #35	@ 0x23
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_33b6c:
	.4byte	gCurrentSprite
.L_33b70:
	.4byte	sUnk_83BBF7C


thumb_func_start func_8033B74
func_8033B74:
	push	{lr}
	ldr	r1, .L_33b94
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r2, [r0, #0]
	add	r3, r2, #0
	add	r0, r2, #0
	sub	r0, #12
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #16
	bls	.L_33b98
	bl	func_8023CD8
	b	.L_33bc2
	.align	2, 0
.L_33b94:
	.4byte	gCurrentSprite
.L_33b98:
	cmp	r2, #28
	bne	.L_33ba2
	ldrh	r0, [r1, #8]
	sub	r0, #32
	b	.L_33bb8
.L_33ba2:
	cmp	r2, #24
	bne	.L_33bac
	ldrh	r0, [r1, #8]
	sub	r0, #32
	b	.L_33bb8
.L_33bac:
	cmp	r2, #20
	beq	.L_33bb4
	cmp	r3, #16
	bne	.L_33bba
.L_33bb4:
	ldrh	r0, [r1, #8]
	add	r0, #32
.L_33bb8:
	strh	r0, [r1, #8]
.L_33bba:
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_33bc2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8033BC8
func_8033BC8:
	push	{lr}
	ldr	r1, .L_33bf0
	ldr	r0, .L_33bf4
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
	bl	func_8033684
	pop	{r0}
	bx	r0
	.align	2, 0
.L_33bf0:
	.4byte	gCurrentSprite
.L_33bf4:
	.4byte	sUnk_83BBE64


thumb_func_start func_8033BF8
func_8033BF8:
	ldr	r2, .L_33c24
	ldr	r0, .L_33c28
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
.L_33c24:
	.4byte	gCurrentSprite
.L_33c28:
	.4byte	sUnk_83BBF54


thumb_func_start func_8033C2C
func_8033C2C:
	push	{r4, r5, lr}
	ldr	r5, .L_33c90
	ldr	r0, .L_33c94
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
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
	ldr	r0, .L_33c98
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_33c9c
	ldr	r0, .L_33ca0
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
.L_33c90:
	.4byte	gCurrentSprite
.L_33c94:
	.4byte	sUnk_83BBFE4
.L_33c98:
	.4byte	0xFEFF
.L_33c9c:
	.4byte	gPersistentSpriteData
.L_33ca0:
	.4byte	gCurrentRoom


thumb_func_start func_8033CA4
func_8033CA4:
	push	{lr}
	ldr	r1, .L_33cb4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8033C2C
	pop	{r0}
	bx	r0
.L_33cb4:
	.4byte	gCurrentSprite


thumb_func_start func_8033CB8
func_8033CB8:
	push	{lr}
	ldr	r1, .L_33cc8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8033C2C
	pop	{r0}
	bx	r0
.L_33cc8:
	.4byte	gCurrentSprite


thumb_func_start func_8033CCC
func_8033CCC:
	push	{r4, lr}
	ldr	r4, .L_33d20
	ldr	r0, .L_33d24
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r1, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #3
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
	ldr	r1, .L_33d28
	ldr	r0, .L_33d2c
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
.L_33d20:
	.4byte	gCurrentSprite
.L_33d24:
	.4byte	sUnk_83BBFE4
.L_33d28:
	.4byte	gPersistentSpriteData
.L_33d2c:
	.4byte	gCurrentRoom


thumb_func_start func_8033D30
func_8033D30:
	push	{lr}
	ldr	r1, .L_33d40
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8033CCC
	pop	{r0}
	bx	r0
.L_33d40:
	.4byte	gCurrentSprite


thumb_func_start func_8033D44
func_8033D44:
	push	{lr}
	ldr	r1, .L_33d54
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8033CCC
	pop	{r0}
	bx	r0
.L_33d54:
	.4byte	gCurrentSprite


thumb_func_start func_8033D58
func_8033D58:
	ldr	r2, .L_33d84
	ldr	r0, .L_33d88
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
	mov	r0, #6
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_33d84:
	.4byte	gCurrentSprite
.L_33d88:
	.4byte	sUnk_83BBFC4


thumb_func_start func_8033D8C
func_8033D8C:
	push	{lr}
	ldr	r1, .L_33d9c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8033D58
	pop	{r0}
	bx	r0
.L_33d9c:
	.4byte	gCurrentSprite


thumb_func_start func_8033DA0
func_8033DA0:
	push	{lr}
	ldr	r1, .L_33db0
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8033D58
	pop	{r0}
	bx	r0
.L_33db0:
	.4byte	gCurrentSprite


thumb_func_start func_8033DB4
func_8033DB4:
	ldr	r2, .L_33ddc
	ldr	r0, .L_33de0
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
	mov	r0, #6
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_33ddc:
	.4byte	gCurrentSprite
.L_33de0:
	.4byte	sUnk_83BC024


thumb_func_start func_8033DE4
func_8033DE4:
	push	{lr}
	ldr	r1, .L_33df4
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8033DB4
	pop	{r0}
	bx	r0
.L_33df4:
	.4byte	gCurrentSprite


thumb_func_start func_8033DF8
func_8033DF8:
	push	{lr}
	ldr	r1, .L_33e08
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8033DB4
	pop	{r0}
	bx	r0
.L_33e08:
	.4byte	gCurrentSprite


thumb_func_start func_8033E0C
func_8033E0C:
	ldr	r2, .L_33e34
	ldr	r0, .L_33e38
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
.L_33e34:
	.4byte	gCurrentSprite
.L_33e38:
	.4byte	sUnk_83BBF54


thumb_func_start func_8033E3C
func_8033E3C:
	push	{lr}
	ldr	r1, .L_33e4c
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8033E0C
	pop	{r0}
	bx	r0
.L_33e4c:
	.4byte	gCurrentSprite


thumb_func_start func_8033E50
func_8033E50:
	push	{lr}
	ldr	r1, .L_33e60
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8033E0C
	pop	{r0}
	bx	r0
.L_33e60:
	.4byte	gCurrentSprite


thumb_func_start func_8033E64
func_8033E64:
	push	{r4, lr}
	ldr	r4, .L_33eb4
	ldr	r0, .L_33eb8
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #7
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_33ebc
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
	ldr	r1, .L_33ec0
	ldr	r0, .L_33ec4
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
.L_33eb4:
	.4byte	gCurrentSprite
.L_33eb8:
	.4byte	sUnk_83BC004
.L_33ebc:
	.4byte	0xFEFF
.L_33ec0:
	.4byte	gPersistentSpriteData
.L_33ec4:
	.4byte	gCurrentRoom


thumb_func_start func_8033EC8
func_8033EC8:
	push	{r4, lr}
	ldr	r4, .L_33ef4
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_33ef8
	ldr	r0, .L_33efc
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
.L_33ef4:
	.4byte	gCurrentSprite
.L_33ef8:
	.4byte	gPersistentSpriteData
.L_33efc:
	.4byte	gCurrentRoom


thumb_func_start func_8033F00
func_8033F00:
	ldr	r2, .L_33f30
	ldr	r0, .L_33f34
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #6
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
.L_33f30:
	.4byte	gCurrentSprite
.L_33f34:
	.4byte	sUnk_83BBF54


thumb_func_start func_8033F38
func_8033F38:
	push	{lr}
	ldr	r1, .L_33f48
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8033F00
	pop	{r0}
	bx	r0
.L_33f48:
	.4byte	gCurrentSprite


thumb_func_start func_8033F4C
func_8033F4C:
	push	{lr}
	ldr	r1, .L_33f5c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8033F00
	pop	{r0}
	bx	r0
.L_33f5c:
	.4byte	gCurrentSprite


thumb_func_start func_8033F60
func_8033F60:
	ldr	r2, .L_33f90
	ldr	r0, .L_33f94
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r3, #1
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_33f98
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	strb	r3, [r2, #29]
	b	.L_33fa4
	.align	2, 0
.L_33f90:
	.4byte	gCurrentSprite
.L_33f94:
	.4byte	sUnk_83BBE8C
.L_33f98:
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
.L_33fa4:
	bx	lr
	.align	2, 0


thumb_func_start func_8033FA8
func_8033FA8:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_33fe0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_3402a
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_33fe4
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_33fe8
	mov	r0, #29
	b	.L_3402c
.L_33fe0:
	.4byte	gCurrentSprite
.L_33fe4:
	.4byte	gSpriteCollisionTileType
.L_33fe8:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_34014
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_34018
	cmp	r1, r0
	bne	.L_3401c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_3402e
	.align	2, 0
.L_34014:
	.4byte	sUnk_8352B18
.L_34018:
	.4byte	0x7FFF
.L_3401c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_3402e
.L_3402a:
	mov	r0, #27
.L_3402c:
	strb	r0, [r4, #28]
.L_3402e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8034034
func_8034034:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_34078
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	add	r6, r3, #0
	cmp	r0, #0
	beq	.L_340a0
	mov	r0, #1
	strb	r0, [r3, #31]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_3407c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_34080
	cmp	r1, r0
	bne	.L_34084
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3408e
	.align	2, 0
.L_34078:
	.4byte	gCurrentSprite
.L_3407c:
	.4byte	sUnk_83BC0AE
.L_34080:
	.4byte	0x7FFF
.L_34084:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_3408e:
	strh	r0, [r3, #8]
	add	r0, r6, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #14
	bne	.L_340a4
	mov	r0, #2
	strb	r0, [r6, #26]
	b	.L_340a4
.L_340a0:
	mov	r0, #27
	strb	r0, [r3, #28]
.L_340a4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80340AC
func_80340AC:
	ldr	r1, .L_340bc
	ldr	r0, .L_340c0
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_340bc:
	.4byte	gCurrentSprite
.L_340c0:
	.4byte	sUnk_83BBF54


thumb_func_start func_80340C4
func_80340C4:
	push	{lr}
	ldr	r1, .L_340d4
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_80340AC
	pop	{r0}
	bx	r0
.L_340d4:
	.4byte	gCurrentSprite


thumb_func_start func_80340D8
func_80340D8:
	push	{lr}
	ldr	r1, .L_340e8
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_80340AC
	pop	{r0}
	bx	r0
.L_340e8:
	.4byte	gCurrentSprite


thumb_func_start func_80340EC
func_80340EC:
	ldr	r1, .L_34100
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_34104
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_34100:
	.4byte	gCurrentSprite
.L_34104:
	.4byte	sUnk_83BBF54


thumb_func_start func_8034108
func_8034108:
	push	{lr}
	ldr	r1, .L_34118
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_80340EC
	pop	{r0}
	bx	r0
.L_34118:
	.4byte	gCurrentSprite


thumb_func_start func_803411C
func_803411C:
	push	{lr}
	ldr	r1, .L_3412c
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_80340EC
	pop	{r0}
	bx	r0
.L_3412c:
	.4byte	gCurrentSprite


thumb_func_start func_8034130
func_8034130:
	push	{r4, lr}
	ldr	r0, .L_34198
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_3419c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r1, #33	@ 0x21
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #34	@ 0x22
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #20
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_341a0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #9
	strb	r0, [r1, #30]
	mov	r0, #1
	strb	r0, [r1, #26]
	strb	r2, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	sub	r0, #3
	strb	r3, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_34198:
	.4byte	gCurrentSprite
.L_3419c:
	.4byte	0xFFFB
.L_341a0:
	.4byte	sUnk_83BBFD4


thumb_func_start func_80341A4
func_80341A4:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_341c4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_341c8
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #4
	b	.L_341d6
	.align	2, 0
.L_341c4:
	.4byte	gCurrentSprite
.L_341c8:
	ldrh	r0, [r2, #10]
	sub	r0, #4
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #4
.L_341d6:
	strb	r0, [r1, #0]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_34200
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_34204
	cmp	r1, r0
	bne	.L_34208
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_34212
.L_34200:
	.4byte	sUnk_83BC04C
.L_34204:
	.4byte	0x7FFF
.L_34208:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_34212:
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #25
	bne	.L_34226
	mov	r0, #2
	strb	r0, [r1, #26]
	b	.L_3422e
.L_34226:
	cmp	r0, #41	@ 0x29
	bls	.L_3422e
	mov	r0, #0
	strh	r0, [r2, #0]
.L_3422e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8034234
func_8034234:
	push	{lr}
	sub	sp, #4
	ldr	r2, .L_3425c
	mov	r3, #0
	strh	r3, [r2, #0]
	ldr	r1, .L_34260
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_34264
	ldrh	r0, [r2, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r2, #10]
	str	r3, [sp, #0]
	mov	r2, #0
	mov	r3, #1
	bl	func_8076998
	b	.L_34274
	.align	2, 0
.L_3425c:
	.4byte	gCurrentSprite
.L_34260:
	.4byte	gWarioData
.L_34264:
	ldrh	r0, [r2, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r2, #10]
	str	r3, [sp, #0]
	mov	r2, #0
	mov	r3, #2
	bl	func_8076998
.L_34274:
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteMoguramen
SpriteMoguramen:
	push	{lr}
	ldr	r2, .L_342a4
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_34290
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_34290:
	ldrb	r0, [r2, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_34298
	b	.L_34622
.L_34298:
	lsl	r0, r0, #2
	ldr	r1, .L_342a8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_342a4:
	.4byte	gCurrentSprite
.L_342a8:
	.4byte	.L_342ac
.L_342ac:
	.4byte	.L_34474
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_3447a
	.4byte	.L_3447e
	.4byte	.L_3448e
	.4byte	.L_34492
	.4byte	.L_34622
	.4byte	.L_34492
	.4byte	.L_34622
	.4byte	.L_34492
	.4byte	.L_34498
	.4byte	.L_3449c
	.4byte	.L_344a2
	.4byte	.L_344a6
	.4byte	.L_344ac
	.4byte	.L_344b0
	.4byte	.L_344b6
	.4byte	.L_344ba
	.4byte	.L_344c0
	.4byte	.L_344c4
	.4byte	.L_344ca
	.4byte	.L_344ce
	.4byte	.L_344d4
	.4byte	.L_344e4
	.4byte	.L_344da
	.4byte	.L_344ee
	.4byte	.L_344e0
	.4byte	.L_344e4
	.4byte	.L_344ea
	.4byte	.L_344ee
	.4byte	.L_344f4
	.4byte	.L_344f8
	.4byte	.L_344fe
	.4byte	.L_34502
	.4byte	.L_34508
	.4byte	.L_3450c
	.4byte	.L_34512
	.4byte	.L_34516
	.4byte	.L_3451c
	.4byte	.L_34554
	.4byte	.L_34522
	.4byte	.L_34536
	.4byte	.L_34528
	.4byte	.L_3452c
	.4byte	.L_34532
	.4byte	.L_34536
	.4byte	.L_3453c
	.4byte	.L_34540
	.4byte	.L_34546
	.4byte	.L_3454a
	.4byte	.L_34550
	.4byte	.L_34554
	.4byte	.L_3455a
	.4byte	.L_3455e
	.4byte	.L_34564
	.4byte	.L_34574
	.4byte	.L_3456a
	.4byte	.L_3457e
	.4byte	.L_34570
	.4byte	.L_34574
	.4byte	.L_3457a
	.4byte	.L_3457e
	.4byte	.L_34584
	.4byte	.L_3458a
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_344c0
	.4byte	.L_344ca
	.4byte	.L_34596
	.4byte	.L_3459c
	.4byte	.L_345a2
	.4byte	.L_345a8
	.4byte	.L_345ba
	.4byte	.L_345c0
	.4byte	.L_345ae
	.4byte	.L_345b4
	.4byte	.L_345c6
	.4byte	.L_345ca
	.4byte	.L_345ee
	.4byte	.L_345f2
	.4byte	.L_345d0
	.4byte	.L_345d4
	.4byte	.L_345f8
	.4byte	.L_345fc
	.4byte	.L_345da
	.4byte	.L_345de
	.4byte	.L_34602
	.4byte	.L_34606
	.4byte	.L_345e4
	.4byte	.L_345e8
	.4byte	.L_3460c
	.4byte	.L_34610
	.4byte	.L_34616
	.4byte	.L_3461c
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34622
	.4byte	.L_34484
	.4byte	.L_34488
	.4byte	.L_34622
	.4byte	.L_34590
.L_34474:
	bl	func_8033708
	b	.L_34626
.L_3447a:
	bl	func_80336E0
.L_3447e:
	bl	func_8033868
	b	.L_34626
.L_34484:
	bl	func_80336B4
.L_34488:
	bl	func_8033774
	b	.L_34626
.L_3448e:
	bl	func_8033990
.L_34492:
	bl	func_80339C0
	b	.L_34626
.L_34498:
	bl	func_8033AD4
.L_3449c:
	bl	func_8033B04
	b	.L_34626
.L_344a2:
	bl	func_8033B50
.L_344a6:
	bl	func_8033B74
	b	.L_34626
.L_344ac:
	bl	func_8033BC8
.L_344b0:
	bl	func_8023D48
	b	.L_34626
.L_344b6:
	bl	func_8033BF8
.L_344ba:
	bl	func_8023EE0
	b	.L_34626
.L_344c0:
	bl	func_8033CA4
.L_344c4:
	bl	SpriteUtilFallOffscreenRight
	b	.L_34626
.L_344ca:
	bl	func_8033CB8
.L_344ce:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_34626
.L_344d4:
	bl	func_8033D8C
	b	.L_344e4
.L_344da:
	bl	func_8033DA0
	b	.L_344ee
.L_344e0:
	bl	func_8033DE4
.L_344e4:
	bl	SpriteUtilPushedRight
	b	.L_34626
.L_344ea:
	bl	func_8033DF8
.L_344ee:
	bl	SpriteUtilPushedLeft
	b	.L_34626
.L_344f4:
	bl	func_8033E3C
.L_344f8:
	bl	func_8024478
	b	.L_34626
.L_344fe:
	bl	func_8033E50
.L_34502:
	bl	func_802449C
	b	.L_34626
.L_34508:
	bl	func_80244C0
.L_3450c:
	bl	func_80244E0
	b	.L_34626
.L_34512:
	bl	func_8033E64
.L_34516:
	bl	SpriteUtilDieAfterDelay
	b	.L_34626
.L_3451c:
	bl	func_8033AAC
	b	.L_34554
.L_34522:
	bl	func_8033AC0
	b	.L_34536
.L_34528:
	bl	func_8024688
.L_3452c:
	bl	func_80246B8
	b	.L_34626
.L_34532:
	bl	func_802473C
.L_34536:
	bl	func_802476C
	b	.L_34626
.L_3453c:
	bl	func_80247F0
.L_34540:
	bl	func_8024820
	b	.L_34626
.L_34546:
	bl	func_80248A4
.L_3454a:
	bl	func_80248D4
	b	.L_34626
.L_34550:
	bl	func_8024958
.L_34554:
	bl	func_8024988
	b	.L_34626
.L_3455a:
	bl	func_8024A0C
.L_3455e:
	bl	func_8024A3C
	b	.L_34626
.L_34564:
	bl	func_8024AC0
	b	.L_34574
.L_3456a:
	bl	func_8024BEC
	b	.L_3457e
.L_34570:
	bl	func_8033F38
.L_34574:
	bl	func_8024AD4
	b	.L_34626
.L_3457a:
	bl	func_8033F4C
.L_3457e:
	bl	func_8024C00
	b	.L_34626
.L_34584:
	bl	func_8033F60
	b	.L_34626
.L_3458a:
	bl	func_8033FA8
	b	.L_34626
.L_34590:
	bl	func_8034034
	b	.L_34626
.L_34596:
	bl	func_80340C4
	b	.L_34626
.L_3459c:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_34626
.L_345a2:
	bl	func_80340D8
	b	.L_34626
.L_345a8:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_34626
.L_345ae:
	bl	func_8034108
	b	.L_34626
.L_345b4:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_34626
.L_345ba:
	bl	func_803411C
	b	.L_34626
.L_345c0:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_34626
.L_345c6:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_345ca:
	bl	SpriteUtilThrownLeftSoft
	b	.L_34626
.L_345d0:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_345d4:
	bl	SpriteUtilThrownLeftHard
	b	.L_34626
.L_345da:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_345de:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_34626
.L_345e4:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_345e8:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_34626
.L_345ee:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_345f2:
	bl	SpriteUtilThrownRightSoft
	b	.L_34626
.L_345f8:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_345fc:
	bl	SpriteUtilThrownRightHard
	b	.L_34626
.L_34602:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_34606:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_34626
.L_3460c:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_34610:
	bl	SpriteUtilThrownUpRightHard
	b	.L_34626
.L_34616:
	bl	func_8033D44
	b	.L_34626
.L_3461c:
	bl	func_8033D30
	b	.L_34626
.L_34622:
	bl	func_8033EC8
.L_34626:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown9A
SpriteUnknown9A:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_34644
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_34654
	cmp	r0, #16
	bgt	.L_34648
	cmp	r0, #0
	beq	.L_3464e
	b	.L_34660
.L_34644:
	.4byte	gCurrentSprite
.L_34648:
	cmp	r0, #107	@ 0x6b
	beq	.L_3465a
	b	.L_34660
.L_3464e:
	bl	func_8034130
	b	.L_34664
.L_34654:
	bl	func_80341A4
	b	.L_34664
.L_3465a:
	bl	SpriteUtilDie
	b	.L_34664
.L_34660:
	bl	func_8034234
.L_34664:
	ldr	r0, .L_346ec
	mov	r8, r0
	ldr	r6, .L_346f0
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_346ec:
	.4byte	sSinCosTable
.L_346f0:
	.4byte	gCurrentSprite
