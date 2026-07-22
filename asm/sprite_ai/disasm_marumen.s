.include "macros.s.inc"


thumb_func_start func_8039F3C
func_8039F3C:
	push	{r4, lr}
	ldr	r4, .L_39f84
	add	r0, r4, #0
	add	r0, #32
	mov	r2, #0
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r4, #0
	add	r1, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	ldrb	r0, [r4, #23]
	cmp	r0, #43	@ 0x2b
	bne	.L_39f7c
	ldrb	r0, [r4, #27]
	add	r0, #1
	strb	r0, [r4, #27]
.L_39f7c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_39f84:
	.4byte	gCurrentSprite


thumb_func_start func_8039F88
func_8039F88:
	ldr	r1, .L_39fa0
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	ldr	r0, .L_39fa4
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_39fa0:
	.4byte	gCurrentSprite
.L_39fa4:
	.4byte	sUnk_83C1270


thumb_func_start func_8039FA8
func_8039FA8:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_39fdc
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_3a010
	ldr	r3, .L_39fe0
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_39fe4
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_39ff8
.L_39fdc:
	.4byte	gSpriteCollisionResult
.L_39fe0:
	.4byte	gCurrentSprite
.L_39fe4:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_39ff8:
	ldr	r0, .L_3a008
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3a0c4
	ldr	r1, .L_3a00c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_3a0c8
.L_3a008:
	.4byte	gUnk_3000A51
.L_3a00c:
	.4byte	gCurrentSprite
.L_3a010:
	ldr	r4, .L_3a060
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a068
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_3a0c4
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_3a0c4
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_3a064
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a0ba
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_3a0a8
.L_3a060:
	.4byte	gCurrentSprite
.L_3a064:
	.4byte	gUnk_3000A51
.L_3a068:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_3a0c4
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_3a0c4
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_3a0c0
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a0ba
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_3a0a8:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a0c4
.L_3a0ba:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_3a0c8
.L_3a0c0:
	.4byte	gUnk_3000A51
.L_3a0c4:
	bl	func_80263AC
.L_3a0c8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803A0D0
func_803A0D0:
	ldr	r0, .L_3a0e8
	ldr	r1, .L_3a0ec
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #17
	strb	r1, [r0, #0]
	bx	lr
.L_3a0e8:
	.4byte	gCurrentSprite
.L_3a0ec:
	.4byte	sUnk_83C12E0


thumb_func_start func_803A0F0
func_803A0F0:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_3a10c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3a114
	ldr	r1, .L_3a110
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_3a154
	.align	2, 0
.L_3a10c:
	.4byte	gSpriteCollisionResult
.L_3a110:
	.4byte	gCurrentSprite
.L_3a114:
	ldr	r2, .L_3a148
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3a154
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_3a150
	ldr	r0, .L_3a14c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #32
	strb	r0, [r3, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	b	.L_3a154
.L_3a148:
	.4byte	gCurrentSprite
.L_3a14c:
	.4byte	sUnk_83C1308
.L_3a150:
	mov	r0, #15
	strb	r0, [r2, #28]
.L_3a154:
	pop	{r0}
	bx	r0


thumb_func_start func_803A158
func_803A158:
	ldr	r1, .L_3a178
	ldr	r0, .L_3a17c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_3a178:
	.4byte	gCurrentSprite
.L_3a17c:
	.4byte	sUnk_83C1518


thumb_func_start func_803A180
func_803A180:
	ldr	r0, .L_3a1a0
	ldr	r1, .L_3a1a4
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #75	@ 0x4b
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_3a1a0:
	.4byte	gCurrentSprite
.L_3a1a4:
	.4byte	sUnk_83C1410


thumb_func_start func_803A1A8
func_803A1A8:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_3a1d4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_3a1d8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3a1dc
	cmp	r1, r0
	bne	.L_3a1e0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3a1ea
.L_3a1d4:
	.4byte	gCurrentSprite
.L_3a1d8:
	.4byte	sUnk_83C1540
.L_3a1dc:
	.4byte	0x7FFF
.L_3a1e0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_3a1ea:
	strh	r0, [r3, #8]
	ldr	r4, .L_3a210
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #63	@ 0x3f
	bls	.L_3a218
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_3a214
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3a234
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_3a234
	.align	2, 0
.L_3a210:
	.4byte	gCurrentSprite
.L_3a214:
	.4byte	gSpriteCollisionResult
.L_3a218:
	cmp	r0, #33	@ 0x21
	bhi	.L_3a234
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_3a260
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3a230
	mov	r0, #27
	strb	r0, [r4, #28]
.L_3a230:
	mov	r0, #1
	strb	r0, [r4, #30]
.L_3a234:
	ldr	r2, .L_3a264
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3a27e
	ldr	r1, .L_3a268
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_3a26c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3a27a
	mov	r0, #23
	b	.L_3a27c
	.align	2, 0
.L_3a260:
	.4byte	gSpriteCollisionResult
.L_3a264:
	.4byte	gCurrentSprite
.L_3a268:
	.4byte	gWarioData
.L_3a26c:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a27a
	mov	r0, #23
	b	.L_3a27c
.L_3a27a:
	mov	r0, #17
.L_3a27c:
	strb	r0, [r2, #28]
.L_3a27e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_803A284
func_803A284:
	ldr	r1, .L_3a2a4
	ldr	r0, .L_3a2a8
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
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_3a2a4:
	.4byte	gCurrentSprite
.L_3a2a8:
	.4byte	sUnk_83C12A8


thumb_func_start func_803A2AC
func_803A2AC:
	ldr	r1, .L_3a2cc
	ldr	r0, .L_3a2d0
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #30
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_3a2cc:
	.4byte	gCurrentSprite
.L_3a2d0:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A2D4
func_803A2D4:
	push	{r4, r5, lr}
	ldr	r4, .L_3a33c
	ldr	r0, .L_3a340
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r5, #0
	strh	r0, [r4, #20]
	strb	r5, [r4, #29]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	strb	r5, [r4, #26]
	ldrb	r0, [r4, #23]
	mov	r3, #2
	cmp	r0, #43	@ 0x2b
	bne	.L_3a300
	mov	r3, #5
.L_3a300:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_3a344
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r1, .L_3a348
	ldr	r0, .L_3a34c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3a33c:
	.4byte	gCurrentSprite
.L_3a340:
	.4byte	sUnk_83C1490
.L_3a344:
	.4byte	0xFEFF
.L_3a348:
	.4byte	gPersistentSpriteData
.L_3a34c:
	.4byte	gCurrentRoom


thumb_func_start func_803A350
func_803A350:
	push	{lr}
	ldr	r1, .L_3a360
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_803A2D4
	pop	{r0}
	bx	r0
.L_3a360:
	.4byte	gCurrentSprite


thumb_func_start func_803A364
func_803A364:
	push	{lr}
	ldr	r1, .L_3a374
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_803A2D4
	pop	{r0}
	bx	r0
.L_3a374:
	.4byte	gCurrentSprite


thumb_func_start func_803A378
func_803A378:
	push	{r4, lr}
	ldr	r4, .L_3a3d0
	ldr	r0, .L_3a3d4
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
	mov	r3, #2
	cmp	r0, #43	@ 0x2b
	bne	.L_3a3a4
	mov	r3, #5
.L_3a3a4:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_3a3d8
	ldr	r0, .L_3a3dc
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
.L_3a3d0:
	.4byte	gCurrentSprite
.L_3a3d4:
	.4byte	sUnk_83C1490
.L_3a3d8:
	.4byte	gPersistentSpriteData
.L_3a3dc:
	.4byte	gCurrentRoom


thumb_func_start func_803A3E0
func_803A3E0:
	push	{lr}
	ldr	r1, .L_3a3f0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_803A378
	pop	{r0}
	bx	r0
.L_3a3f0:
	.4byte	gCurrentSprite


thumb_func_start func_803A3F4
func_803A3F4:
	push	{lr}
	ldr	r1, .L_3a404
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_803A378
	pop	{r0}
	bx	r0
.L_3a404:
	.4byte	gCurrentSprite


thumb_func_start func_803A408
func_803A408:
	ldr	r2, .L_3a434
	ldr	r0, .L_3a438
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
	bx	lr
	.align	2, 0
.L_3a434:
	.4byte	gCurrentSprite
.L_3a438:
	.4byte	sUnk_83C1528


thumb_func_start func_803A43C
func_803A43C:
	push	{lr}
	ldr	r1, .L_3a44c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_803A408
	pop	{r0}
	bx	r0
.L_3a44c:
	.4byte	gCurrentSprite


thumb_func_start func_803A450
func_803A450:
	push	{lr}
	ldr	r1, .L_3a460
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_803A408
	pop	{r0}
	bx	r0
.L_3a460:
	.4byte	gCurrentSprite


thumb_func_start func_803A464
func_803A464:
	ldr	r1, .L_3a480
	ldr	r0, .L_3a484
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_3a480:
	.4byte	gCurrentSprite
.L_3a484:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A488
func_803A488:
	push	{lr}
	ldr	r1, .L_3a498
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_803A464
	pop	{r0}
	bx	r0
.L_3a498:
	.4byte	gCurrentSprite


thumb_func_start func_803A49C
func_803A49C:
	push	{lr}
	ldr	r1, .L_3a4ac
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_803A464
	pop	{r0}
	bx	r0
.L_3a4ac:
	.4byte	gCurrentSprite


thumb_func_start func_803A4B0
func_803A4B0:
	push	{r4, lr}
	ldr	r0, .L_3a4c0
	ldrb	r1, [r0, #30]
	add	r4, r0, #0
	cmp	r1, #5
	bne	.L_3a4c8
	ldr	r0, .L_3a4c4
	b	.L_3a4ca
.L_3a4c0:
	.4byte	gCurrentSprite
.L_3a4c4:
	.4byte	sUnk_83C14F0
.L_3a4c8:
	ldr	r0, .L_3a51c
.L_3a4ca:
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	add	r2, r4, #0
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_3a520
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #23]
	mov	r3, #2
	cmp	r0, #43	@ 0x2b
	bne	.L_3a4fa
	mov	r3, #5
.L_3a4fa:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldr	r1, .L_3a524
	ldr	r0, .L_3a528
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
.L_3a51c:
	.4byte	sUnk_83C14C8
.L_3a520:
	.4byte	0xFEFF
.L_3a524:
	.4byte	gPersistentSpriteData
.L_3a528:
	.4byte	gCurrentRoom


thumb_func_start func_803A52C
func_803A52C:
	push	{r4, lr}
	ldr	r4, .L_3a560
	ldrb	r0, [r4, #23]
	mov	r3, #2
	cmp	r0, #43	@ 0x2b
	bne	.L_3a53a
	mov	r3, #5
.L_3a53a:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_3a564
	ldr	r0, .L_3a568
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
.L_3a560:
	.4byte	gCurrentSprite
.L_3a564:
	.4byte	gPersistentSpriteData
.L_3a568:
	.4byte	gCurrentRoom


thumb_func_start func_803A56C
func_803A56C:
	ldr	r2, .L_3a59c
	ldr	r0, .L_3a5a0
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
	beq	.L_3a598
	mov	r0, #5
	strb	r0, [r2, #30]
.L_3a598:
	bx	lr
	.align	2, 0
.L_3a59c:
	.4byte	gCurrentSprite
.L_3a5a0:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A5A4
func_803A5A4:
	push	{lr}
	ldr	r1, .L_3a5b4
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_803A56C
	pop	{r0}
	bx	r0
.L_3a5b4:
	.4byte	gCurrentSprite


thumb_func_start func_803A5B8
func_803A5B8:
	push	{lr}
	ldr	r1, .L_3a5c8
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_803A56C
	pop	{r0}
	bx	r0
.L_3a5c8:
	.4byte	gCurrentSprite


thumb_func_start func_803A5CC
func_803A5CC:
	ldr	r2, .L_3a5f0
	ldr	r0, .L_3a5f4
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
	bx	lr
	.align	2, 0
.L_3a5f0:
	.4byte	gCurrentSprite
.L_3a5f4:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A5F8
func_803A5F8:
	push	{lr}
	ldr	r1, .L_3a608
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_803A5CC
	pop	{r0}
	bx	r0
.L_3a608:
	.4byte	gCurrentSprite


thumb_func_start func_803A60C
func_803A60C:
	push	{lr}
	ldr	r1, .L_3a61c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_803A5CC
	pop	{r0}
	bx	r0
.L_3a61c:
	.4byte	gCurrentSprite


thumb_func_start func_803A620
func_803A620:
	push	{r4, r5, lr}
	ldr	r4, .L_3a660
	ldr	r0, .L_3a664
	str	r0, [r4, #4]
	mov	r5, #0
	mov	r0, #0
	strh	r0, [r4, #20]
	strb	r5, [r4, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #71	@ 0x47
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	mov	r0, #1
	strb	r0, [r4, #30]
	mov	r0, #98	@ 0x62
	bl	m4aSongNumStart
	ldrb	r0, [r4, #23]
	cmp	r0, #42	@ 0x2a
	bne	.L_3a668
	mov	r0, #43	@ 0x2b
	strb	r0, [r4, #23]
	ldrb	r0, [r4, #27]
	add	r0, #1
	strb	r0, [r4, #27]
	b	.L_3a66e
	.align	2, 0
.L_3a660:
	.4byte	gCurrentSprite
.L_3a664:
	.4byte	sUnk_83C1330
.L_3a668:
	mov	r0, #42	@ 0x2a
	strb	r0, [r4, #23]
	strb	r5, [r4, #27]
.L_3a66e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_803A674
func_803A674:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_3a6a0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_3a6a4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3a6a8
	cmp	r1, r0
	bne	.L_3a6ac
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3a6b6
.L_3a6a0:
	.4byte	gCurrentSprite
.L_3a6a4:
	.4byte	sUnk_83C1596
.L_3a6a8:
	.4byte	0x7FFF
.L_3a6ac:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_3a6b6:
	strh	r0, [r3, #8]
	ldr	r4, .L_3a6e8
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #67	@ 0x43
	bls	.L_3a6f0
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_3a6ec
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a704
	mov	r0, #29
	b	.L_3a702
.L_3a6e8:
	.4byte	gCurrentSprite
.L_3a6ec:
	.4byte	gUnk_3000A51
.L_3a6f0:
	cmp	r0, #27
	bhi	.L_3a704
	bl	func_8023B88
	ldr	r0, .L_3a730
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3a704
	mov	r0, #27
.L_3a702:
	strb	r0, [r4, #28]
.L_3a704:
	ldr	r2, .L_3a734
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3a74e
	ldr	r1, .L_3a738
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_3a73c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3a74a
	mov	r0, #23
	b	.L_3a74c
	.align	2, 0
.L_3a730:
	.4byte	gSpriteCollisionResult
.L_3a734:
	.4byte	gCurrentSprite
.L_3a738:
	.4byte	gWarioData
.L_3a73c:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a74a
	mov	r0, #23
	b	.L_3a74c
.L_3a74a:
	mov	r0, #17
.L_3a74c:
	strb	r0, [r2, #28]
.L_3a74e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_803A754
func_803A754:
	ldr	r1, .L_3a764
	ldr	r0, .L_3a768
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_3a764:
	.4byte	gCurrentSprite
.L_3a768:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A76C
func_803A76C:
	push	{lr}
	ldr	r1, .L_3a77c
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_803A754
	pop	{r0}
	bx	r0
.L_3a77c:
	.4byte	gCurrentSprite


thumb_func_start func_803A780
func_803A780:
	push	{lr}
	ldr	r1, .L_3a790
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_803A754
	pop	{r0}
	bx	r0
.L_3a790:
	.4byte	gCurrentSprite


thumb_func_start func_803A794
func_803A794:
	ldr	r1, .L_3a7a8
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_3a7ac
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_3a7a8:
	.4byte	gCurrentSprite
.L_3a7ac:
	.4byte	sUnk_83C13D8


thumb_func_start func_803A7B0
func_803A7B0:
	push	{lr}
	ldr	r1, .L_3a7c0
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_803A794
	pop	{r0}
	bx	r0
.L_3a7c0:
	.4byte	gCurrentSprite


thumb_func_start func_803A7C4
func_803A7C4:
	push	{lr}
	ldr	r1, .L_3a7d4
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_803A794
	pop	{r0}
	bx	r0
.L_3a7d4:
	.4byte	gCurrentSprite


thumb_func_start SpriteMarumen
SpriteMarumen:
	push	{lr}
	ldr	r2, .L_3a800
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_3a7ec
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_3a7ec:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_3a7f4
	b	.L_3ab42
.L_3a7f4:
	lsl	r0, r0, #2
	ldr	r1, .L_3a804
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3a800:
	.4byte	gCurrentSprite
.L_3a804:
	.4byte	.L_3a808
.L_3a808:
	.4byte	.L_3a9b4
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3a9b8
	.4byte	.L_3a9bc
	.4byte	.L_3a9c2
	.4byte	.L_3a9c6
	.4byte	.L_3ab42
	.4byte	.L_3a9c6
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3a9cc
	.4byte	.L_3a9d0
	.4byte	.L_3a9d6
	.4byte	.L_3a9da
	.4byte	.L_3a9e0
	.4byte	.L_3a9e4
	.4byte	.L_3a9ea
	.4byte	.L_3a9ee
	.4byte	.L_3a9f4
	.4byte	.L_3a9f8
	.4byte	.L_3a9fe
	.4byte	.L_3aa02
	.4byte	.L_3aa08
	.4byte	.L_3aa0c
	.4byte	.L_3aa12
	.4byte	.L_3aa16
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3aa1c
	.4byte	.L_3aa20
	.4byte	.L_3aa26
	.4byte	.L_3aa2a
	.4byte	.L_3aa30
	.4byte	.L_3aa34
	.4byte	.L_3aa3a
	.4byte	.L_3aa3e
	.4byte	.L_3aa44
	.4byte	.L_3aa7c
	.4byte	.L_3aa4a
	.4byte	.L_3aa5e
	.4byte	.L_3aa50
	.4byte	.L_3aa54
	.4byte	.L_3aa5a
	.4byte	.L_3aa5e
	.4byte	.L_3aa64
	.4byte	.L_3aa68
	.4byte	.L_3aa6e
	.4byte	.L_3aa72
	.4byte	.L_3aa78
	.4byte	.L_3aa7c
	.4byte	.L_3aa82
	.4byte	.L_3aa86
	.4byte	.L_3aa8c
	.4byte	.L_3aa9c
	.4byte	.L_3aa92
	.4byte	.L_3aaa6
	.4byte	.L_3aa98
	.4byte	.L_3aa9c
	.4byte	.L_3aaa2
	.4byte	.L_3aaa6
	.4byte	.L_3aaac
	.4byte	.L_3aab0
	.4byte	.L_3ab42
	.4byte	.L_3ab42
	.4byte	.L_3a9f4
	.4byte	.L_3a9fe
	.4byte	.L_3aab6
	.4byte	.L_3aabc
	.4byte	.L_3aac2
	.4byte	.L_3aac8
	.4byte	.L_3aada
	.4byte	.L_3aae0
	.4byte	.L_3aace
	.4byte	.L_3aad4
	.4byte	.L_3aae6
	.4byte	.L_3aaea
	.4byte	.L_3ab0e
	.4byte	.L_3ab12
	.4byte	.L_3aaf0
	.4byte	.L_3aaf4
	.4byte	.L_3ab18
	.4byte	.L_3ab1c
	.4byte	.L_3aafa
	.4byte	.L_3aafe
	.4byte	.L_3ab22
	.4byte	.L_3ab26
	.4byte	.L_3ab04
	.4byte	.L_3ab08
	.4byte	.L_3ab2c
	.4byte	.L_3ab30
	.4byte	.L_3ab36
	.4byte	.L_3ab3c
.L_3a9b4:
	bl	func_8039F3C
.L_3a9b8:
	bl	func_8039F88
.L_3a9bc:
	bl	func_8039FA8
	b	.L_3ab46
.L_3a9c2:
	bl	func_803A0D0
.L_3a9c6:
	bl	func_803A0F0
	b	.L_3ab46
.L_3a9cc:
	bl	func_803A158
.L_3a9d0:
	bl	func_8023C94
	b	.L_3ab46
.L_3a9d6:
	bl	func_803A180
.L_3a9da:
	bl	func_803A1A8
	b	.L_3ab46
.L_3a9e0:
	bl	func_803A284
.L_3a9e4:
	bl	func_8023D48
	b	.L_3ab46
.L_3a9ea:
	bl	func_803A2AC
.L_3a9ee:
	bl	func_8023EE0
	b	.L_3ab46
.L_3a9f4:
	bl	func_803A350
.L_3a9f8:
	bl	SpriteUtilFallOffscreenRight
	b	.L_3ab46
.L_3a9fe:
	bl	func_803A364
.L_3aa02:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_3ab46
.L_3aa08:
	bl	func_803A43C
.L_3aa0c:
	bl	SpriteUtilPushedRight
	b	.L_3ab46
.L_3aa12:
	bl	func_803A450
.L_3aa16:
	bl	SpriteUtilPushedLeft
	b	.L_3ab46
.L_3aa1c:
	bl	func_803A488
.L_3aa20:
	bl	func_8024478
	b	.L_3ab46
.L_3aa26:
	bl	func_803A49C
.L_3aa2a:
	bl	func_802449C
	b	.L_3ab46
.L_3aa30:
	bl	func_80244C0
.L_3aa34:
	bl	func_80244E0
	b	.L_3ab46
.L_3aa3a:
	bl	func_803A4B0
.L_3aa3e:
	bl	SpriteUtilDieAfterDelay
	b	.L_3ab46
.L_3aa44:
	bl	func_803A5A4
	b	.L_3aa7c
.L_3aa4a:
	bl	func_803A5B8
	b	.L_3aa5e
.L_3aa50:
	bl	func_8024688
.L_3aa54:
	bl	func_80246B8
	b	.L_3ab46
.L_3aa5a:
	bl	func_802473C
.L_3aa5e:
	bl	func_802476C
	b	.L_3ab46
.L_3aa64:
	bl	func_80247F0
.L_3aa68:
	bl	func_8024820
	b	.L_3ab46
.L_3aa6e:
	bl	func_80248A4
.L_3aa72:
	bl	func_80248D4
	b	.L_3ab46
.L_3aa78:
	bl	func_8024958
.L_3aa7c:
	bl	func_8024988
	b	.L_3ab46
.L_3aa82:
	bl	func_8024A0C
.L_3aa86:
	bl	func_8024A3C
	b	.L_3ab46
.L_3aa8c:
	bl	func_8024AC0
	b	.L_3aa9c
.L_3aa92:
	bl	func_8024BEC
	b	.L_3aaa6
.L_3aa98:
	bl	func_803A5F8
.L_3aa9c:
	bl	func_8024AD4
	b	.L_3ab46
.L_3aaa2:
	bl	func_803A60C
.L_3aaa6:
	bl	func_8024C00
	b	.L_3ab46
.L_3aaac:
	bl	func_803A620
.L_3aab0:
	bl	func_803A674
	b	.L_3ab46
.L_3aab6:
	bl	func_803A76C
	b	.L_3ab46
.L_3aabc:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_3ab46
.L_3aac2:
	bl	func_803A780
	b	.L_3ab46
.L_3aac8:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_3ab46
.L_3aace:
	bl	func_803A7B0
	b	.L_3ab46
.L_3aad4:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_3ab46
.L_3aada:
	bl	func_803A7C4
	b	.L_3ab46
.L_3aae0:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_3ab46
.L_3aae6:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_3aaea:
	bl	SpriteUtilThrownLeftSoft
	b	.L_3ab46
.L_3aaf0:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_3aaf4:
	bl	SpriteUtilThrownLeftHard
	b	.L_3ab46
.L_3aafa:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_3aafe:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_3ab46
.L_3ab04:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_3ab08:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_3ab46
.L_3ab0e:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_3ab12:
	bl	SpriteUtilThrownRightSoft
	b	.L_3ab46
.L_3ab18:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_3ab1c:
	bl	SpriteUtilThrownRightHard
	b	.L_3ab46
.L_3ab22:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_3ab26:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_3ab46
.L_3ab2c:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_3ab30:
	bl	SpriteUtilThrownUpRightHard
	b	.L_3ab46
.L_3ab36:
	bl	func_803A3F4
	b	.L_3ab46
.L_3ab3c:
	bl	func_803A3E0
	b	.L_3ab46
.L_3ab42:
	bl	func_803A52C
.L_3ab46:
	pop	{r0}
	bx	r0
	.align	2, 0
