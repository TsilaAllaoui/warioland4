.include "macros.s.inc"


thumb_func_start func_806194C
func_806194C:
	ldr	r2, .L_61968
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_6196c
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	b	.L_61978
	.align	2, 0
.L_61968:
	.4byte	gCurrentSprite
.L_6196c:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
.L_61978:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_806197C
func_806197C:
	push	{lr}
	ldr	r3, .L_619ac
	add	r1, r3, #0
	add	r1, #32
	mov	r2, #0
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_619ac:
	.4byte	gCurrentSprite


thumb_func_start func_80619B0
func_80619B0:
	push	{lr}
	ldr	r1, .L_619d0
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldr	r0, .L_619d4
	str	r0, [r1, #4]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_806194C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_619d0:
	.4byte	gCurrentSprite
.L_619d4:
	.4byte	sUnk_83E3878


thumb_func_start func_80619D8
func_80619D8:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_61a0c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_61a40
	ldr	r3, .L_61a10
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_61a14
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_61a28
.L_61a0c:
	.4byte	gSpriteAiCollisionResult
.L_61a10:
	.4byte	gCurrentSprite
.L_61a14:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_61a28:
	ldr	r0, .L_61a38
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_61af4
	ldr	r1, .L_61a3c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_61af8
.L_61a38:
	.4byte	gSpriteAiCollisionFlags
.L_61a3c:
	.4byte	gCurrentSprite
.L_61a40:
	ldr	r4, .L_61a90
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_61a98
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_61af4
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_61af4
	ldrh	r0, [r4, #8]
	add	r1, #40	@ 0x28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_61a94
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_61aea
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_61ad8
.L_61a90:
	.4byte	gCurrentSprite
.L_61a94:
	.4byte	gSpriteAiCollisionFlags
.L_61a98:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_61af4
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_61af4
	ldrh	r0, [r4, #8]
	sub	r1, #44	@ 0x2c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_61af0
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_61aea
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_61ad8:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_61af4
.L_61aea:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_61af8
.L_61af0:
	.4byte	gSpriteAiCollisionFlags
.L_61af4:
	bl	SpriteUtilMoveForward1HalfPixel
.L_61af8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8061B00
func_8061B00:
	push	{lr}
	ldr	r1, .L_61b28
	ldr	r0, .L_61b2c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #17
	strb	r0, [r2, #0]
	mov	r0, #3
	strb	r0, [r1, #30]
	bl	func_806194C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_61b28:
	.4byte	gCurrentSprite
.L_61b2c:
	.4byte	sUnk_83E3948


thumb_func_start func_8061B30
func_8061B30:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_61b4c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_61b54
	ldr	r1, .L_61b50
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_61bc4
	.align	2, 0
.L_61b4c:
	.4byte	gSpriteAiCollisionResult
.L_61b50:
	.4byte	gCurrentSprite
.L_61b54:
	ldr	r5, .L_61b74
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	cmp	r6, #0
	beq	.L_61b90
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_61b78
	cmp	r0, #20
	beq	.L_61b84
	b	.L_61bc4
.L_61b74:
	.4byte	gCurrentSprite
.L_61b78:
	ldrh	r0, [r5, #20]
	cmp	r0, #1
	bls	.L_61bc4
	mov	r0, #1
	strb	r0, [r5, #30]
	b	.L_61bc4
.L_61b84:
	ldrh	r0, [r5, #20]
	cmp	r0, #1
	bls	.L_61bc4
	mov	r0, #3
	strb	r0, [r5, #30]
	b	.L_61bc4
.L_61b90:
	ldrb	r0, [r5, #28]
	cmp	r0, #18
	beq	.L_61b9c
	cmp	r0, #20
	beq	.L_61bc0
	b	.L_61bc4
.L_61b9c:
	ldrh	r0, [r5, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r4, #0
	strh	r0, [r5, #0]
	bl	func_806194C
	ldr	r0, .L_61bbc
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r6, [r5, #20]
	mov	r0, #20
	strb	r0, [r5, #28]
	mov	r0, #19
	strb	r0, [r7, #0]
	b	.L_61bc4
.L_61bbc:
	.4byte	sUnk_83E3970
.L_61bc0:
	mov	r0, #15
	strb	r0, [r5, #28]
.L_61bc4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8061BCC
func_8061BCC:
	ldr	r1, .L_61bf8
	ldr	r0, .L_61bfc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	sub	r2, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	add	r1, #38	@ 0x26
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_61bf8:
	.4byte	gCurrentSprite
.L_61bfc:
	.4byte	sUnk_83E3B78


thumb_func_start func_8061C00
func_8061C00:
	ldr	r0, .L_61c1c
	ldr	r1, .L_61c20
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_61c1c:
	.4byte	gCurrentSprite
.L_61c20:
	.4byte	sUnk_83E39F8


thumb_func_start func_8061C24
func_8061C24:
	ldr	r1, .L_61c44
	ldr	r0, .L_61c48
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
.L_61c44:
	.4byte	gCurrentSprite
.L_61c48:
	.4byte	sUnk_83E38E0


thumb_func_start func_8061C4C
func_8061C4C:
	ldr	r2, .L_61c78
	ldr	r0, .L_61c7c
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_61c78:
	.4byte	gCurrentSprite
.L_61c7c:
	.4byte	sUnk_83E3A58


thumb_func_start func_8061C80
func_8061C80:
	push	{r4, r5, lr}
	ldr	r5, .L_61ce4
	ldr	r0, .L_61ce8
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
	mov	r0, #123	@ 0x7b
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_61cec
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_61cf0
	ldr	r0, .L_61cf4
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
.L_61ce4:
	.4byte	gCurrentSprite
.L_61ce8:
	.4byte	sUnk_83E3B40
.L_61cec:
	.4byte	0xFEFF
.L_61cf0:
	.4byte	gPersistentSpriteData
.L_61cf4:
	.4byte	gCurrentRoom


thumb_func_start func_8061CF8
func_8061CF8:
	push	{lr}
	ldr	r1, .L_61d08
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8061C80
	pop	{r0}
	bx	r0
.L_61d08:
	.4byte	gCurrentSprite


thumb_func_start func_8061D0C
func_8061D0C:
	push	{lr}
	ldr	r1, .L_61d1c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8061C80
	pop	{r0}
	bx	r0
.L_61d1c:
	.4byte	gCurrentSprite


thumb_func_start func_8061D20
func_8061D20:
	push	{r4, lr}
	ldr	r4, .L_61d74
	ldr	r0, .L_61d78
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
	mov	r0, #123	@ 0x7b
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_61d7c
	ldr	r0, .L_61d80
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
.L_61d74:
	.4byte	gCurrentSprite
.L_61d78:
	.4byte	sUnk_83E3B40
.L_61d7c:
	.4byte	gPersistentSpriteData
.L_61d80:
	.4byte	gCurrentRoom


thumb_func_start func_8061D84
func_8061D84:
	push	{lr}
	ldr	r1, .L_61d94
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8061D20
	pop	{r0}
	bx	r0
.L_61d94:
	.4byte	gCurrentSprite


thumb_func_start func_8061D98
func_8061D98:
	push	{lr}
	ldr	r1, .L_61da8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8061D20
	pop	{r0}
	bx	r0
.L_61da8:
	.4byte	gCurrentSprite


thumb_func_start func_8061DAC
func_8061DAC:
	ldr	r2, .L_61de4
	ldr	r0, .L_61de8
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_61de4:
	.4byte	gCurrentSprite
.L_61de8:
	.4byte	sUnk_83E3AE8


thumb_func_start func_8061DEC
func_8061DEC:
	push	{lr}
	ldr	r1, .L_61dfc
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8061DAC
	pop	{r0}
	bx	r0
.L_61dfc:
	.4byte	gCurrentSprite


thumb_func_start func_8061E00
func_8061E00:
	push	{lr}
	ldr	r1, .L_61e10
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8061DAC
	pop	{r0}
	bx	r0
.L_61e10:
	.4byte	gCurrentSprite


thumb_func_start func_8061E14
func_8061E14:
	ldr	r2, .L_61e3c
	ldr	r0, .L_61e40
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
.L_61e3c:
	.4byte	gCurrentSprite
.L_61e40:
	.4byte	sUnk_83E3AC0


thumb_func_start func_8061E44
func_8061E44:
	push	{lr}
	ldr	r1, .L_61e54
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8061E14
	pop	{r0}
	bx	r0
.L_61e54:
	.4byte	gCurrentSprite


thumb_func_start func_8061E58
func_8061E58:
	push	{lr}
	ldr	r1, .L_61e68
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8061E14
	pop	{r0}
	bx	r0
.L_61e68:
	.4byte	gCurrentSprite


thumb_func_start func_8061E6C
func_8061E6C:
	ldr	r2, .L_61e94
	ldr	r0, .L_61e98
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_61e94:
	.4byte	gCurrentSprite
.L_61e98:
	.4byte	sUnk_83E3A58


thumb_func_start func_8061E9C
func_8061E9C:
	push	{lr}
	ldr	r1, .L_61eac
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8061E6C
	pop	{r0}
	bx	r0
.L_61eac:
	.4byte	gCurrentSprite


thumb_func_start func_8061EB0
func_8061EB0:
	push	{lr}
	ldr	r1, .L_61ec0
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8061E6C
	pop	{r0}
	bx	r0
.L_61ec0:
	.4byte	gCurrentSprite


thumb_func_start func_8061EC4
func_8061EC4:
	push	{r4, lr}
	ldr	r4, .L_61f14
	ldr	r0, .L_61f18
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
	ldr	r0, .L_61f1c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r0, #123	@ 0x7b
	mov	r3, #5
	bl	func_807687C
	ldr	r1, .L_61f20
	ldr	r0, .L_61f24
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
.L_61f14:
	.4byte	gCurrentSprite
.L_61f18:
	.4byte	sUnk_83E3B20
.L_61f1c:
	.4byte	0xFEFF
.L_61f20:
	.4byte	gPersistentSpriteData
.L_61f24:
	.4byte	gCurrentRoom


thumb_func_start func_8061F28
func_8061F28:
	push	{r4, lr}
	ldr	r4, .L_61f54
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r0, #123	@ 0x7b
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_61f58
	ldr	r0, .L_61f5c
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
.L_61f54:
	.4byte	gCurrentSprite
.L_61f58:
	.4byte	gPersistentSpriteData
.L_61f5c:
	.4byte	gCurrentRoom


thumb_func_start func_8061F60
func_8061F60:
	ldr	r1, .L_61f70
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_61f78
	ldr	r0, .L_61f74
	b	.L_61f7a
	.align	2, 0
.L_61f70:
	.4byte	gCurrentSprite
.L_61f74:
	.4byte	sUnk_83E3A58
.L_61f78:
	ldr	r0, .L_61fb4
.L_61f7a:
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
	beq	.L_61fb0
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
.L_61fb0:
	bx	lr
	.align	2, 0
.L_61fb4:
	.4byte	sUnk_83E39A0


thumb_func_start func_8061FB8
func_8061FB8:
	push	{lr}
	ldr	r1, .L_61fc8
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8061F60
	pop	{r0}
	bx	r0
.L_61fc8:
	.4byte	gCurrentSprite


thumb_func_start func_8061FCC
func_8061FCC:
	push	{lr}
	ldr	r1, .L_61fdc
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8061F60
	pop	{r0}
	bx	r0
.L_61fdc:
	.4byte	gCurrentSprite


thumb_func_start func_8061FE0
func_8061FE0:
	ldr	r2, .L_62010
	ldr	r0, .L_62014
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_62010:
	.4byte	gCurrentSprite
.L_62014:
	.4byte	sUnk_83E3A58


thumb_func_start func_8062018
func_8062018:
	push	{lr}
	ldr	r1, .L_62028
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8061FE0
	pop	{r0}
	bx	r0
.L_62028:
	.4byte	gCurrentSprite


thumb_func_start func_806202C
func_806202C:
	push	{lr}
	ldr	r1, .L_6203c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8061FE0
	pop	{r0}
	bx	r0
.L_6203c:
	.4byte	gCurrentSprite


thumb_func_start func_8062040
func_8062040:
	ldr	r2, .L_62074
	ldr	r0, .L_62078
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_62074:
	.4byte	gCurrentSprite
.L_62078:
	.4byte	sUnk_83E38E0


thumb_func_start func_806207C
func_806207C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_620b4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_620fe
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_620b8
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_620bc
	mov	r0, #29
	b	.L_62100
.L_620b4:
	.4byte	gCurrentSprite
.L_620b8:
	.4byte	gSpriteAiCollisionFlags
.L_620bc:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_620e8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_620ec
	cmp	r1, r0
	bne	.L_620f0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_62102
	.align	2, 0
.L_620e8:
	.4byte	sUnk_8352B18
.L_620ec:
	.4byte	0x7FFF
.L_620f0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_62102
.L_620fe:
	mov	r0, #27
.L_62100:
	strb	r0, [r4, #28]
.L_62102:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8062108
func_8062108:
	ldr	r2, .L_62118
	ldr	r1, .L_6211c
	str	r1, [r2, #4]
	mov	r3, #0
	mov	r1, #0
	strh	r1, [r2, #20]
	strb	r3, [r2, #22]
	bx	lr
.L_62118:
	.4byte	gCurrentSprite
.L_6211c:
	.4byte	sUnk_83E3A58


thumb_func_start func_8062120
func_8062120:
	push	{lr}
	ldr	r1, .L_62130
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8062108
	pop	{r0}
	bx	r0
.L_62130:
	.4byte	gCurrentSprite


thumb_func_start func_8062134
func_8062134:
	push	{lr}
	ldr	r1, .L_62144
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8062108
	pop	{r0}
	bx	r0
.L_62144:
	.4byte	gCurrentSprite


thumb_func_start func_8062148
func_8062148:
	push	{lr}
	ldr	r0, .L_6215c
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bl	func_8062108
	pop	{r0}
	bx	r0
.L_6215c:
	.4byte	gCurrentSprite


thumb_func_start func_8062160
func_8062160:
	push	{lr}
	ldr	r0, .L_62174
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bl	func_8062108
	pop	{r0}
	bx	r0
.L_62174:
	.4byte	gCurrentSprite


thumb_func_start SpritePetbottom
SpritePetbottom:
	push	{lr}
	ldr	r2, .L_621a0
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_6218c
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_6218c:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_62194
	b	.L_624ee
.L_62194:
	lsl	r0, r0, #2
	ldr	r1, .L_621a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_621a0:
	.4byte	gCurrentSprite
.L_621a4:
	.4byte	.L_621a8
.L_621a8:
	.4byte	.L_62354
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_62358
	.4byte	.L_6235c
	.4byte	.L_62362
	.4byte	.L_62366
	.4byte	.L_624ee
	.4byte	.L_62366
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_6236c
	.4byte	.L_62370
	.4byte	.L_62376
	.4byte	.L_6237a
	.4byte	.L_62380
	.4byte	.L_62384
	.4byte	.L_6238a
	.4byte	.L_6238e
	.4byte	.L_62394
	.4byte	.L_62398
	.4byte	.L_6239e
	.4byte	.L_623a2
	.4byte	.L_623a8
	.4byte	.L_623b8
	.4byte	.L_623ae
	.4byte	.L_623c2
	.4byte	.L_623b4
	.4byte	.L_623b8
	.4byte	.L_623be
	.4byte	.L_623c2
	.4byte	.L_623c8
	.4byte	.L_623cc
	.4byte	.L_623d2
	.4byte	.L_623d6
	.4byte	.L_623dc
	.4byte	.L_623e0
	.4byte	.L_623e6
	.4byte	.L_623ea
	.4byte	.L_623f0
	.4byte	.L_62428
	.4byte	.L_623f6
	.4byte	.L_6240a
	.4byte	.L_623fc
	.4byte	.L_62400
	.4byte	.L_62406
	.4byte	.L_6240a
	.4byte	.L_62410
	.4byte	.L_62414
	.4byte	.L_6241a
	.4byte	.L_6241e
	.4byte	.L_62424
	.4byte	.L_62428
	.4byte	.L_6242e
	.4byte	.L_62432
	.4byte	.L_62438
	.4byte	.L_62448
	.4byte	.L_6243e
	.4byte	.L_62452
	.4byte	.L_62444
	.4byte	.L_62448
	.4byte	.L_6244e
	.4byte	.L_62452
	.4byte	.L_62458
	.4byte	.L_6245c
	.4byte	.L_624ee
	.4byte	.L_624ee
	.4byte	.L_62394
	.4byte	.L_6239e
	.4byte	.L_62462
	.4byte	.L_62468
	.4byte	.L_6246e
	.4byte	.L_62474
	.4byte	.L_62486
	.4byte	.L_6248c
	.4byte	.L_6247a
	.4byte	.L_62480
	.4byte	.L_62492
	.4byte	.L_62496
	.4byte	.L_624ba
	.4byte	.L_624be
	.4byte	.L_6249c
	.4byte	.L_624a0
	.4byte	.L_624c4
	.4byte	.L_624c8
	.4byte	.L_624a6
	.4byte	.L_624aa
	.4byte	.L_624ce
	.4byte	.L_624d2
	.4byte	.L_624b0
	.4byte	.L_624b4
	.4byte	.L_624d8
	.4byte	.L_624dc
	.4byte	.L_624e2
	.4byte	.L_624e8
.L_62354:
	bl	func_806197C
.L_62358:
	bl	func_80619B0
.L_6235c:
	bl	func_80619D8
	b	.L_624f2
.L_62362:
	bl	func_8061B00
.L_62366:
	bl	func_8061B30
	b	.L_624f2
.L_6236c:
	bl	func_8061BCC
.L_62370:
	bl	func_8023C94
	b	.L_624f2
.L_62376:
	bl	func_8061C00
.L_6237a:
	bl	func_8023CD8
	b	.L_624f2
.L_62380:
	bl	func_8061C24
.L_62384:
	bl	func_8023D48
	b	.L_624f2
.L_6238a:
	bl	func_8061C4C
.L_6238e:
	bl	func_8023EE0
	b	.L_624f2
.L_62394:
	bl	func_8061CF8
.L_62398:
	bl	SpriteUtilFallOffscreenRight
	b	.L_624f2
.L_6239e:
	bl	func_8061D0C
.L_623a2:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_624f2
.L_623a8:
	bl	func_8061DEC
	b	.L_623b8
.L_623ae:
	bl	func_8061E00
	b	.L_623c2
.L_623b4:
	bl	func_8061E44
.L_623b8:
	bl	SpriteUtilPushedRight
	b	.L_624f2
.L_623be:
	bl	func_8061E58
.L_623c2:
	bl	SpriteUtilPushedLeft
	b	.L_624f2
.L_623c8:
	bl	func_8061E9C
.L_623cc:
	bl	func_8024478
	b	.L_624f2
.L_623d2:
	bl	func_8061EB0
.L_623d6:
	bl	func_802449C
	b	.L_624f2
.L_623dc:
	bl	func_80244C0
.L_623e0:
	bl	func_80244E0
	b	.L_624f2
.L_623e6:
	bl	func_8061EC4
.L_623ea:
	bl	SpriteUtilDieAfterDelay
	b	.L_624f2
.L_623f0:
	bl	func_8061FB8
	b	.L_62428
.L_623f6:
	bl	func_8061FCC
	b	.L_6240a
.L_623fc:
	bl	func_8024688
.L_62400:
	bl	func_80246B8
	b	.L_624f2
.L_62406:
	bl	func_802473C
.L_6240a:
	bl	func_802476C
	b	.L_624f2
.L_62410:
	bl	func_80247F0
.L_62414:
	bl	func_8024820
	b	.L_624f2
.L_6241a:
	bl	func_80248A4
.L_6241e:
	bl	func_80248D4
	b	.L_624f2
.L_62424:
	bl	func_8024958
.L_62428:
	bl	func_8024988
	b	.L_624f2
.L_6242e:
	bl	func_8024A0C
.L_62432:
	bl	func_8024A3C
	b	.L_624f2
.L_62438:
	bl	func_8024AC0
	b	.L_62448
.L_6243e:
	bl	func_8024BEC
	b	.L_62452
.L_62444:
	bl	func_8062018
.L_62448:
	bl	func_8024AD4
	b	.L_624f2
.L_6244e:
	bl	func_806202C
.L_62452:
	bl	func_8024C00
	b	.L_624f2
.L_62458:
	bl	func_8062040
.L_6245c:
	bl	func_806207C
	b	.L_624f2
.L_62462:
	bl	func_8062120
	b	.L_624f2
.L_62468:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_624f2
.L_6246e:
	bl	func_8062134
	b	.L_624f2
.L_62474:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_624f2
.L_6247a:
	bl	func_8062148
	b	.L_624f2
.L_62480:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_624f2
.L_62486:
	bl	func_8062160
	b	.L_624f2
.L_6248c:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_624f2
.L_62492:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_62496:
	bl	SpriteUtilThrownLeftSoft
	b	.L_624f2
.L_6249c:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_624a0:
	bl	SpriteUtilThrownLeftHard
	b	.L_624f2
.L_624a6:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_624aa:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_624f2
.L_624b0:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_624b4:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_624f2
.L_624ba:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_624be:
	bl	SpriteUtilThrownRightSoft
	b	.L_624f2
.L_624c4:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_624c8:
	bl	SpriteUtilThrownRightHard
	b	.L_624f2
.L_624ce:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_624d2:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_624f2
.L_624d8:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_624dc:
	bl	SpriteUtilThrownUpRightHard
	b	.L_624f2
.L_624e2:
	bl	func_8061D98
	b	.L_624f2
.L_624e8:
	bl	func_8061D84
	b	.L_624f2
.L_624ee:
	bl	func_8061F28
.L_624f2:
	pop	{r0}
	bx	r0
	.align	2, 0
