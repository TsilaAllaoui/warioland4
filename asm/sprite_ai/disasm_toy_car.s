.include "macros.s.inc"


thumb_func_start func_805EF40
func_805EF40:
	ldr	r2, .L_5ef5c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ef60
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	b	.L_5ef6c
	.align	2, 0
.L_5ef5c:
	.4byte	gCurrentSprite
.L_5ef60:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
.L_5ef6c:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_805EF70
func_805EF70:
	push	{lr}
	ldr	r3, .L_5ef9c
	add	r0, r3, #0
	add	r0, #32
	mov	r2, #0
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
.L_5ef9c:
	.4byte	gCurrentSprite


thumb_func_start func_805EFA0
func_805EFA0:
	push	{lr}
	ldr	r1, .L_5efc0
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldr	r0, .L_5efc4
	str	r0, [r1, #4]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_805EF40
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5efc0:
	.4byte	gCurrentSprite
.L_5efc4:
	.4byte	sUnk_83E1650


thumb_func_start func_805EFC8
func_805EFC8:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5effc
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5f030
	ldr	r3, .L_5f000
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f004
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_5f018
.L_5effc:
	.4byte	gSpriteCollisionResult
.L_5f000:
	.4byte	gCurrentSprite
.L_5f004:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_5f018:
	ldr	r0, .L_5f028
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5f0e4
	ldr	r1, .L_5f02c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5f0e8
.L_5f028:
	.4byte	gSpriteCollisionTileType
.L_5f02c:
	.4byte	gCurrentSprite
.L_5f030:
	ldr	r4, .L_5f080
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f088
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5f0e4
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_5f0e4
	ldrh	r0, [r4, #8]
	add	r1, #44	@ 0x2c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5f084
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f0da
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_5f0c8
.L_5f080:
	.4byte	gCurrentSprite
.L_5f084:
	.4byte	gSpriteCollisionTileType
.L_5f088:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5f0e4
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_5f0e4
	ldrh	r0, [r4, #8]
	sub	r1, #48	@ 0x30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5f0e0
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f0da
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_5f0c8:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f0e4
.L_5f0da:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_5f0e8
.L_5f0e0:
	.4byte	gSpriteCollisionTileType
.L_5f0e4:
	bl	SpriteUtilMoveForward1HalfPixel
.L_5f0e8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805F0F0
func_805F0F0:
	push	{lr}
	ldr	r1, .L_5f118
	ldr	r0, .L_5f11c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #19
	strb	r0, [r2, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_805EF40
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5f118:
	.4byte	gCurrentSprite
.L_5f11c:
	.4byte	sUnk_83E16D8


thumb_func_start func_805F120
func_805F120:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5f13c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5f144
	ldr	r1, .L_5f140
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5f1b4
	.align	2, 0
.L_5f13c:
	.4byte	gSpriteCollisionResult
.L_5f140:
	.4byte	gCurrentSprite
.L_5f144:
	ldr	r5, .L_5f164
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	cmp	r6, #0
	beq	.L_5f180
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_5f168
	cmp	r0, #20
	beq	.L_5f174
	b	.L_5f1b4
.L_5f164:
	.4byte	gCurrentSprite
.L_5f168:
	ldrh	r0, [r5, #20]
	cmp	r0, #2
	bls	.L_5f1b4
	mov	r0, #1
	strb	r0, [r5, #30]
	b	.L_5f1b4
.L_5f174:
	ldrh	r0, [r5, #20]
	cmp	r0, #1
	bls	.L_5f1b4
	mov	r0, #3
	strb	r0, [r5, #30]
	b	.L_5f1b4
.L_5f180:
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_5f18c
	cmp	r0, #20
	beq	.L_5f1b0
	b	.L_5f1b4
.L_5f18c:
	ldrh	r0, [r5, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r4, #0
	strh	r0, [r5, #0]
	bl	func_805EF40
	ldr	r0, .L_5f1ac
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r6, [r5, #20]
	mov	r0, #20
	strb	r0, [r5, #28]
	mov	r0, #14
	strb	r0, [r7, #0]
	b	.L_5f1b4
.L_5f1ac:
	.4byte	sUnk_83E1708
.L_5f1b0:
	mov	r0, #15
	strb	r0, [r5, #28]
.L_5f1b4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805F1BC
func_805F1BC:
	ldr	r1, .L_5f1e8
	ldr	r0, .L_5f1ec
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #16
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
.L_5f1e8:
	.4byte	gCurrentSprite
.L_5f1ec:
	.4byte	sUnk_83E1900


thumb_func_start func_805F1F0
func_805F1F0:
	ldr	r0, .L_5f20c
	ldr	r1, .L_5f210
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #25
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_5f20c:
	.4byte	gCurrentSprite
.L_5f210:
	.4byte	sUnk_83E17B0


thumb_func_start func_805F214
func_805F214:
	ldr	r0, .L_5f22c
	ldr	r1, .L_5f230
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #28
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_5f22c:
	.4byte	gCurrentSprite
.L_5f230:
	.4byte	sUnk_83E16A8


thumb_func_start func_805F234
func_805F234:
	ldr	r2, .L_5f260
	ldr	r0, .L_5f264
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
.L_5f260:
	.4byte	gCurrentSprite
.L_5f264:
	.4byte	sUnk_83E1790


thumb_func_start func_805F268
func_805F268:
	push	{r4, r5, lr}
	ldr	r1, .L_5f278
	ldrb	r0, [r1, #30]
	add	r5, r1, #0
	cmp	r0, #5
	bne	.L_5f280
	ldr	r0, .L_5f27c
	b	.L_5f282
.L_5f278:
	.4byte	gCurrentSprite
.L_5f27c:
	.4byte	sUnk_83E18E8
.L_5f280:
	ldr	r0, .L_5f2e0
.L_5f282:
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
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r0, #120	@ 0x78
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_5f2e4
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_5f2e8
	ldr	r0, .L_5f2ec
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
.L_5f2e0:
	.4byte	sUnk_83E18D0
.L_5f2e4:
	.4byte	0xFEFF
.L_5f2e8:
	.4byte	gPersistentSpriteData
.L_5f2ec:
	.4byte	gCurrentRoom


thumb_func_start func_805F2F0
func_805F2F0:
	push	{lr}
	ldr	r1, .L_5f300
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805F268
	pop	{r0}
	bx	r0
.L_5f300:
	.4byte	gCurrentSprite


thumb_func_start func_805F304
func_805F304:
	push	{lr}
	ldr	r1, .L_5f314
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805F268
	pop	{r0}
	bx	r0
.L_5f314:
	.4byte	gCurrentSprite


thumb_func_start func_805F318
func_805F318:
	push	{r4, lr}
	ldr	r1, .L_5f328
	ldrb	r0, [r1, #30]
	add	r4, r1, #0
	cmp	r0, #5
	bne	.L_5f330
	ldr	r0, .L_5f32c
	b	.L_5f332
.L_5f328:
	.4byte	gCurrentSprite
.L_5f32c:
	.4byte	sUnk_83E18E8
.L_5f330:
	ldr	r0, .L_5f380
.L_5f332:
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
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r0, #120	@ 0x78
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_5f384
	ldr	r0, .L_5f388
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
.L_5f380:
	.4byte	sUnk_83E18D0
.L_5f384:
	.4byte	gPersistentSpriteData
.L_5f388:
	.4byte	gCurrentRoom


thumb_func_start func_805F38C
func_805F38C:
	push	{lr}
	ldr	r1, .L_5f39c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805F318
	pop	{r0}
	bx	r0
.L_5f39c:
	.4byte	gCurrentSprite


thumb_func_start func_805F3A0
func_805F3A0:
	push	{lr}
	ldr	r1, .L_5f3b0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805F318
	pop	{r0}
	bx	r0
.L_5f3b0:
	.4byte	gCurrentSprite


thumb_func_start func_805F3B4
func_805F3B4:
	ldr	r2, .L_5f3ec
	ldr	r0, .L_5f3f0
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
.L_5f3ec:
	.4byte	gCurrentSprite
.L_5f3f0:
	.4byte	sUnk_83E1850


thumb_func_start func_805F3F4
func_805F3F4:
	push	{lr}
	ldr	r1, .L_5f404
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_805F3B4
	pop	{r0}
	bx	r0
.L_5f404:
	.4byte	gCurrentSprite


thumb_func_start func_805F408
func_805F408:
	push	{lr}
	ldr	r1, .L_5f418
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_805F3B4
	pop	{r0}
	bx	r0
.L_5f418:
	.4byte	gCurrentSprite


thumb_func_start func_805F41C
func_805F41C:
	ldr	r2, .L_5f444
	ldr	r0, .L_5f448
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
.L_5f444:
	.4byte	gCurrentSprite
.L_5f448:
	.4byte	sUnk_83E1830


thumb_func_start func_805F44C
func_805F44C:
	push	{lr}
	ldr	r1, .L_5f45c
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_805F41C
	pop	{r0}
	bx	r0
.L_5f45c:
	.4byte	gCurrentSprite


thumb_func_start func_805F460
func_805F460:
	push	{lr}
	ldr	r1, .L_5f470
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_805F41C
	pop	{r0}
	bx	r0
.L_5f470:
	.4byte	gCurrentSprite


thumb_func_start func_805F474
func_805F474:
	ldr	r2, .L_5f49c
	ldr	r0, .L_5f4a0
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
.L_5f49c:
	.4byte	gCurrentSprite
.L_5f4a0:
	.4byte	sUnk_83E1790


thumb_func_start func_805F4A4
func_805F4A4:
	push	{lr}
	ldr	r1, .L_5f4b4
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_805F474
	pop	{r0}
	bx	r0
.L_5f4b4:
	.4byte	gCurrentSprite


thumb_func_start func_805F4B8
func_805F4B8:
	push	{lr}
	ldr	r1, .L_5f4c8
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_805F474
	pop	{r0}
	bx	r0
.L_5f4c8:
	.4byte	gCurrentSprite


thumb_func_start func_805F4CC
func_805F4CC:
	push	{r4, lr}
	ldr	r0, .L_5f4dc
	ldrb	r1, [r0, #30]
	add	r4, r0, #0
	cmp	r1, #5
	bne	.L_5f4e4
	ldr	r0, .L_5f4e0
	b	.L_5f4e6
.L_5f4dc:
	.4byte	gCurrentSprite
.L_5f4e0:
	.4byte	sUnk_83E18A0
.L_5f4e4:
	ldr	r0, .L_5f530
.L_5f4e6:
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #11
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_5f534
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r0, #120	@ 0x78
	mov	r3, #1
	bl	func_807687C
	ldr	r1, .L_5f538
	ldr	r0, .L_5f53c
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
.L_5f530:
	.4byte	sUnk_83E1870
.L_5f534:
	.4byte	0xFEFF
.L_5f538:
	.4byte	gPersistentSpriteData
.L_5f53c:
	.4byte	gCurrentRoom


thumb_func_start func_805F540
func_805F540:
	push	{r4, lr}
	ldr	r4, .L_5f56c
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r0, #120	@ 0x78
	mov	r3, #1
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_5f570
	ldr	r0, .L_5f574
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
.L_5f56c:
	.4byte	gCurrentSprite
.L_5f570:
	.4byte	gPersistentSpriteData
.L_5f574:
	.4byte	gCurrentRoom


thumb_func_start func_805F578
func_805F578:
	ldr	r1, .L_5f588
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_5f590
	ldr	r0, .L_5f58c
	b	.L_5f592
	.align	2, 0
.L_5f588:
	.4byte	gCurrentSprite
.L_5f58c:
	.4byte	sUnk_83E1790
.L_5f590:
	ldr	r0, .L_5f5cc
.L_5f592:
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
	beq	.L_5f5c8
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
.L_5f5c8:
	bx	lr
	.align	2, 0
.L_5f5cc:
	.4byte	sUnk_83E1738


thumb_func_start func_805F5D0
func_805F5D0:
	push	{lr}
	ldr	r1, .L_5f5e0
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_805F578
	pop	{r0}
	bx	r0
.L_5f5e0:
	.4byte	gCurrentSprite


thumb_func_start func_805F5E4
func_805F5E4:
	push	{lr}
	ldr	r1, .L_5f5f4
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_805F578
	pop	{r0}
	bx	r0
.L_5f5f4:
	.4byte	gCurrentSprite


thumb_func_start func_805F5F8
func_805F5F8:
	ldr	r2, .L_5f628
	ldr	r0, .L_5f62c
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
.L_5f628:
	.4byte	gCurrentSprite
.L_5f62c:
	.4byte	sUnk_83E1790


thumb_func_start func_805F630
func_805F630:
	push	{lr}
	ldr	r1, .L_5f640
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_805F5F8
	pop	{r0}
	bx	r0
.L_5f640:
	.4byte	gCurrentSprite


thumb_func_start func_805F644
func_805F644:
	push	{lr}
	ldr	r1, .L_5f654
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_805F5F8
	pop	{r0}
	bx	r0
.L_5f654:
	.4byte	gCurrentSprite


thumb_func_start func_805F658
func_805F658:
	ldr	r2, .L_5f68c
	ldr	r0, .L_5f690
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
.L_5f68c:
	.4byte	gCurrentSprite
.L_5f690:
	.4byte	sUnk_83E16A8


thumb_func_start func_805F694
func_805F694:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_5f6cc
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_5f716
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_5f6d0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f6d4
	mov	r0, #29
	b	.L_5f718
.L_5f6cc:
	.4byte	gCurrentSprite
.L_5f6d0:
	.4byte	gSpriteCollisionTileType
.L_5f6d4:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5f700
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5f704
	cmp	r1, r0
	bne	.L_5f708
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_5f71a
	.align	2, 0
.L_5f700:
	.4byte	sUnk_8352B18
.L_5f704:
	.4byte	0x7FFF
.L_5f708:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_5f71a
.L_5f716:
	mov	r0, #27
.L_5f718:
	strb	r0, [r4, #28]
.L_5f71a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805F720
func_805F720:
	ldr	r1, .L_5f730
	ldr	r0, .L_5f734
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_5f730:
	.4byte	gCurrentSprite
.L_5f734:
	.4byte	sUnk_83E1818


thumb_func_start func_805F738
func_805F738:
	push	{lr}
	ldr	r1, .L_5f748
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_805F720
	pop	{r0}
	bx	r0
.L_5f748:
	.4byte	gCurrentSprite


thumb_func_start func_805F74C
func_805F74C:
	push	{lr}
	ldr	r1, .L_5f75c
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_805F720
	pop	{r0}
	bx	r0
.L_5f75c:
	.4byte	gCurrentSprite


thumb_func_start func_805F760
func_805F760:
	ldr	r1, .L_5f774
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_5f778
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_5f774:
	.4byte	gCurrentSprite
.L_5f778:
	.4byte	sUnk_83E1818


thumb_func_start func_805F77C
func_805F77C:
	push	{lr}
	ldr	r1, .L_5f78c
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_805F760
	pop	{r0}
	bx	r0
.L_5f78c:
	.4byte	gCurrentSprite


thumb_func_start func_805F790
func_805F790:
	push	{lr}
	ldr	r1, .L_5f7a0
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_805F760
	pop	{r0}
	bx	r0
.L_5f7a0:
	.4byte	gCurrentSprite


thumb_func_start SpriteToyCar
SpriteToyCar:
	push	{lr}
	ldr	r2, .L_5f7cc
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_5f7b8
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_5f7b8:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_5f7c0
	b	.L_5fb1a
.L_5f7c0:
	lsl	r0, r0, #2
	ldr	r1, .L_5f7d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5f7cc:
	.4byte	gCurrentSprite
.L_5f7d0:
	.4byte	.L_5f7d4
.L_5f7d4:
	.4byte	.L_5f980
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5f984
	.4byte	.L_5f988
	.4byte	.L_5f98e
	.4byte	.L_5f992
	.4byte	.L_5fb1a
	.4byte	.L_5f992
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5f998
	.4byte	.L_5f99c
	.4byte	.L_5f9a2
	.4byte	.L_5f9a6
	.4byte	.L_5f9ac
	.4byte	.L_5f9b0
	.4byte	.L_5f9b6
	.4byte	.L_5f9ba
	.4byte	.L_5f9c0
	.4byte	.L_5f9c4
	.4byte	.L_5f9ca
	.4byte	.L_5f9ce
	.4byte	.L_5f9d4
	.4byte	.L_5f9e4
	.4byte	.L_5f9da
	.4byte	.L_5f9ee
	.4byte	.L_5f9e0
	.4byte	.L_5f9e4
	.4byte	.L_5f9ea
	.4byte	.L_5f9ee
	.4byte	.L_5f9f4
	.4byte	.L_5f9f8
	.4byte	.L_5f9fe
	.4byte	.L_5fa02
	.4byte	.L_5fa08
	.4byte	.L_5fa0c
	.4byte	.L_5fa12
	.4byte	.L_5fa16
	.4byte	.L_5fa1c
	.4byte	.L_5fa54
	.4byte	.L_5fa22
	.4byte	.L_5fa36
	.4byte	.L_5fa28
	.4byte	.L_5fa2c
	.4byte	.L_5fa32
	.4byte	.L_5fa36
	.4byte	.L_5fa3c
	.4byte	.L_5fa40
	.4byte	.L_5fa46
	.4byte	.L_5fa4a
	.4byte	.L_5fa50
	.4byte	.L_5fa54
	.4byte	.L_5fa5a
	.4byte	.L_5fa5e
	.4byte	.L_5fa64
	.4byte	.L_5fa74
	.4byte	.L_5fa6a
	.4byte	.L_5fa7e
	.4byte	.L_5fa70
	.4byte	.L_5fa74
	.4byte	.L_5fa7a
	.4byte	.L_5fa7e
	.4byte	.L_5fa84
	.4byte	.L_5fa88
	.4byte	.L_5fb1a
	.4byte	.L_5fb1a
	.4byte	.L_5f9c0
	.4byte	.L_5f9ca
	.4byte	.L_5fa8e
	.4byte	.L_5fa94
	.4byte	.L_5fa9a
	.4byte	.L_5faa0
	.4byte	.L_5fab2
	.4byte	.L_5fab8
	.4byte	.L_5faa6
	.4byte	.L_5faac
	.4byte	.L_5fabe
	.4byte	.L_5fac2
	.4byte	.L_5fae6
	.4byte	.L_5faea
	.4byte	.L_5fac8
	.4byte	.L_5facc
	.4byte	.L_5faf0
	.4byte	.L_5faf4
	.4byte	.L_5fad2
	.4byte	.L_5fad6
	.4byte	.L_5fafa
	.4byte	.L_5fafe
	.4byte	.L_5fadc
	.4byte	.L_5fae0
	.4byte	.L_5fb04
	.4byte	.L_5fb08
	.4byte	.L_5fb0e
	.4byte	.L_5fb14
.L_5f980:
	bl	func_805EF70
.L_5f984:
	bl	func_805EFA0
.L_5f988:
	bl	func_805EFC8
	b	.L_5fb1e
.L_5f98e:
	bl	func_805F0F0
.L_5f992:
	bl	func_805F120
	b	.L_5fb1e
.L_5f998:
	bl	func_805F1BC
.L_5f99c:
	bl	func_8023C94
	b	.L_5fb1e
.L_5f9a2:
	bl	func_805F1F0
.L_5f9a6:
	bl	func_8023CD8
	b	.L_5fb1e
.L_5f9ac:
	bl	func_805F214
.L_5f9b0:
	bl	func_8023D48
	b	.L_5fb1e
.L_5f9b6:
	bl	func_805F234
.L_5f9ba:
	bl	func_8023EE0
	b	.L_5fb1e
.L_5f9c0:
	bl	func_805F2F0
.L_5f9c4:
	bl	SpriteUtilFallOffscreenRight
	b	.L_5fb1e
.L_5f9ca:
	bl	func_805F304
.L_5f9ce:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_5fb1e
.L_5f9d4:
	bl	func_805F3F4
	b	.L_5f9e4
.L_5f9da:
	bl	func_805F408
	b	.L_5f9ee
.L_5f9e0:
	bl	func_805F44C
.L_5f9e4:
	bl	SpriteUtilPushedRight
	b	.L_5fb1e
.L_5f9ea:
	bl	func_805F460
.L_5f9ee:
	bl	SpriteUtilPushedLeft
	b	.L_5fb1e
.L_5f9f4:
	bl	func_805F4A4
.L_5f9f8:
	bl	func_8024478
	b	.L_5fb1e
.L_5f9fe:
	bl	func_805F4B8
.L_5fa02:
	bl	func_802449C
	b	.L_5fb1e
.L_5fa08:
	bl	func_80244C0
.L_5fa0c:
	bl	func_80244E0
	b	.L_5fb1e
.L_5fa12:
	bl	func_805F4CC
.L_5fa16:
	bl	SpriteUtilDieAfterDelay
	b	.L_5fb1e
.L_5fa1c:
	bl	func_805F5D0
	b	.L_5fa54
.L_5fa22:
	bl	func_805F5E4
	b	.L_5fa36
.L_5fa28:
	bl	func_8024688
.L_5fa2c:
	bl	func_80246B8
	b	.L_5fb1e
.L_5fa32:
	bl	func_802473C
.L_5fa36:
	bl	func_802476C
	b	.L_5fb1e
.L_5fa3c:
	bl	func_80247F0
.L_5fa40:
	bl	func_8024820
	b	.L_5fb1e
.L_5fa46:
	bl	func_80248A4
.L_5fa4a:
	bl	func_80248D4
	b	.L_5fb1e
.L_5fa50:
	bl	func_8024958
.L_5fa54:
	bl	func_8024988
	b	.L_5fb1e
.L_5fa5a:
	bl	func_8024A0C
.L_5fa5e:
	bl	func_8024A3C
	b	.L_5fb1e
.L_5fa64:
	bl	func_8024AC0
	b	.L_5fa74
.L_5fa6a:
	bl	func_8024BEC
	b	.L_5fa7e
.L_5fa70:
	bl	func_805F630
.L_5fa74:
	bl	func_8024AD4
	b	.L_5fb1e
.L_5fa7a:
	bl	func_805F644
.L_5fa7e:
	bl	func_8024C00
	b	.L_5fb1e
.L_5fa84:
	bl	func_805F658
.L_5fa88:
	bl	func_805F694
	b	.L_5fb1e
.L_5fa8e:
	bl	func_805F738
	b	.L_5fb1e
.L_5fa94:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_5fb1e
.L_5fa9a:
	bl	func_805F74C
	b	.L_5fb1e
.L_5faa0:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_5fb1e
.L_5faa6:
	bl	func_805F77C
	b	.L_5fb1e
.L_5faac:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_5fb1e
.L_5fab2:
	bl	func_805F790
	b	.L_5fb1e
.L_5fab8:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_5fb1e
.L_5fabe:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_5fac2:
	bl	SpriteUtilThrownLeftSoft
	b	.L_5fb1e
.L_5fac8:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_5facc:
	bl	SpriteUtilThrownLeftHard
	b	.L_5fb1e
.L_5fad2:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_5fad6:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_5fb1e
.L_5fadc:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_5fae0:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_5fb1e
.L_5fae6:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_5faea:
	bl	SpriteUtilThrownRightSoft
	b	.L_5fb1e
.L_5faf0:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_5faf4:
	bl	SpriteUtilThrownRightHard
	b	.L_5fb1e
.L_5fafa:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_5fafe:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_5fb1e
.L_5fb04:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_5fb08:
	bl	SpriteUtilThrownUpRightHard
	b	.L_5fb1e
.L_5fb0e:
	bl	func_805F3A0
	b	.L_5fb1e
.L_5fb14:
	bl	func_805F38C
	b	.L_5fb1e
.L_5fb1a:
	bl	func_805F540
.L_5fb1e:
	pop	{r0}
	bx	r0
	.align	2, 0
