.include "macros.s.inc"


thumb_func_start func_805FB24
func_805FB24:
	push	{r4, lr}
	ldr	r0, .L_5fb88
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r0, .L_5fb8c
	and	r0, r1
	mov	r2, #0
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #32
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #28
	strb	r0, [r4, #0]
	ldr	r0, .L_5fb90
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	strb	r1, [r4, #28]
	mov	r1, ip
	add	r1, #40	@ 0x28
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5fb88:
	.4byte	gCurrentSprite
.L_5fb8c:
	.4byte	0xFFFB
.L_5fb90:
	.4byte	sUnk_83E1F30


thumb_func_start func_805FB94
func_805FB94:
	ldr	r0, .L_5fbb0
	ldr	r1, .L_5fbb4
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #30]
	add	r0, #40	@ 0x28
	mov	r1, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
.L_5fbb0:
	.4byte	gCurrentSprite
.L_5fbb4:
	.4byte	sUnk_83E1F30


thumb_func_start func_805FBB8
func_805FBB8:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	mov	r0, #56	@ 0x38
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5fbf8
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5fc2c
	ldr	r3, .L_5fbfc
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5fc00
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_5fc14
.L_5fbf8:
	.4byte	gSpriteCollisionResult
.L_5fbfc:
	.4byte	gCurrentSprite
.L_5fc00:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_5fc14:
	ldr	r0, .L_5fc24
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5fcf8
	ldr	r1, .L_5fc28
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5fcfc
.L_5fc24:
	.4byte	gSpriteCollisionTileType
.L_5fc28:
	.4byte	gCurrentSprite
.L_5fc2c:
	ldr	r4, .L_5fc84
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5fc8c
	cmp	r5, #8
	beq	.L_5fc90
	cmp	r5, #4
	beq	.L_5fcec
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5fcf8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_5fcf8
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5fc88
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5fcec
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_5fcda
.L_5fc84:
	.4byte	gCurrentSprite
.L_5fc88:
	.4byte	gSpriteCollisionTileType
.L_5fc8c:
	cmp	r5, #4
	bne	.L_5fc96
.L_5fc90:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_5fcfc
.L_5fc96:
	cmp	r5, #8
	beq	.L_5fcec
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_5fcf8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_5fcf8
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_5fcf4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_5fcec
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_5fcda:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5fcf8
.L_5fcec:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_5fcfc
	.align	2, 0
.L_5fcf4:
	.4byte	gSpriteCollisionTileType
.L_5fcf8:
	bl	func_8026374
.L_5fcfc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805FD04
func_805FD04:
	ldr	r1, .L_5fd24
	ldr	r0, .L_5fd28
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
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_5fd24:
	.4byte	gCurrentSprite
.L_5fd28:
	.4byte	sUnk_83E2130


thumb_func_start func_805FD2C
func_805FD2C:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5fd48
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5fd50
	ldr	r1, .L_5fd4c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_5fda4
	.align	2, 0
.L_5fd48:
	.4byte	gSpriteCollisionResult
.L_5fd4c:
	.4byte	gCurrentSprite
.L_5fd50:
	ldr	r2, .L_5fd8c
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
	bne	.L_5fda4
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_5fd94
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_5fd90
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_5fda4
.L_5fd8c:
	.4byte	gCurrentSprite
.L_5fd90:
	.4byte	sUnk_83E2150
.L_5fd94:
	ldr	r0, .L_5fda8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
.L_5fda4:
	pop	{r0}
	bx	r0
.L_5fda8:
	.4byte	sUnk_83E1F30


thumb_func_start func_805FDAC
func_805FDAC:
	ldr	r2, .L_5fddc
	ldr	r0, .L_5fde0
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
	beq	.L_5fdd8
	mov	r0, #5
	strb	r0, [r2, #30]
.L_5fdd8:
	bx	lr
	.align	2, 0
.L_5fddc:
	.4byte	gCurrentSprite
.L_5fde0:
	.4byte	sUnk_83E2088


thumb_func_start func_805FDE4
func_805FDE4:
	push	{lr}
	ldr	r1, .L_5fdf4
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_805FDAC
	pop	{r0}
	bx	r0
.L_5fdf4:
	.4byte	gCurrentSprite


thumb_func_start func_805FDF8
func_805FDF8:
	push	{lr}
	ldr	r1, .L_5fe08
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_805FDAC
	pop	{r0}
	bx	r0
.L_5fe08:
	.4byte	gCurrentSprite


thumb_func_start func_805FE0C
func_805FE0C:
	ldr	r1, .L_5fe2c
	ldr	r0, .L_5fe30
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #57	@ 0x39
	strb	r0, [r2, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_5fe2c:
	.4byte	gCurrentSprite
.L_5fe30:
	.4byte	sUnk_83E1FA0


thumb_func_start func_805FE34
func_805FE34:
	push	{r4, lr}
	ldr	r4, .L_5fe6c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5fe74
	add	r0, r1, #0
	cmp	r0, #42	@ 0x2a
	bne	.L_5fe54
	mov	r0, #3
	strb	r0, [r4, #30]
.L_5fe54:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5fe70
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5fe86
	mov	r0, #27
	strb	r0, [r4, #28]
	b	.L_5fe86
	.align	2, 0
.L_5fe6c:
	.4byte	gCurrentSprite
.L_5fe70:
	.4byte	gSpriteCollisionResult
.L_5fe74:
	ldr	r0, .L_5fe8c
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
	mov	r0, #87	@ 0x57
	bl	m4aSongNumStart
.L_5fe86:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5fe8c:
	.4byte	sUnk_83E1FE8


thumb_func_start func_805FE90
func_805FE90:
	push	{r4, lr}
	ldr	r4, .L_5fee4
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ff32
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5fee8
	ldrb	r1, [r0, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	bne	.L_5fef0
	bl	func_8023B88
	ldr	r0, .L_5feec
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5fef0
	mov	r0, #70	@ 0x46
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrh	r0, [r4, #10]
	add	r0, #8
	b	.L_5ffca
	.align	2, 0
.L_5fee4:
	.4byte	gCurrentSprite
.L_5fee8:
	.4byte	gSpriteCollisionTileType
.L_5feec:
	.4byte	gSpriteCollisionResult
.L_5fef0:
	ldr	r4, .L_5ff24
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5ff28
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ff2c
	cmp	r1, #17
	beq	.L_5ffac
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	b	.L_5ffcc
	.align	2, 0
.L_5ff24:
	.4byte	gCurrentSprite
.L_5ff28:
	.4byte	gSpriteCollisionTileType
.L_5ff2c:
	ldrh	r0, [r4, #10]
	add	r0, #12
	b	.L_5ffca
.L_5ff32:
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5ff78
	ldrb	r1, [r0, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	bne	.L_5ff80
	bl	func_8023B88
	ldr	r0, .L_5ff7c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5ff80
	mov	r0, #68	@ 0x44
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, #8
	b	.L_5ffca
	.align	2, 0
.L_5ff78:
	.4byte	gSpriteCollisionTileType
.L_5ff7c:
	.4byte	gSpriteCollisionResult
.L_5ff80:
	ldr	r4, .L_5ffb8
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5ffbc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ffc6
	cmp	r1, #17
	bne	.L_5ffc0
.L_5ffac:
	mov	r0, #114	@ 0x72
	strb	r0, [r4, #28]
	mov	r0, #88	@ 0x58
	bl	m4aSongNumStart
	b	.L_5ffcc
.L_5ffb8:
	.4byte	gCurrentSprite
.L_5ffbc:
	.4byte	gSpriteCollisionTileType
.L_5ffc0:
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	b	.L_5ffcc
.L_5ffc6:
	ldrh	r0, [r4, #10]
	sub	r0, #12
.L_5ffca:
	strh	r0, [r4, #10]
.L_5ffcc:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805FFD4
func_805FFD4:
	push	{lr}
	ldr	r1, .L_5fff8
	ldrb	r0, [r1, #30]
	cmp	r0, #3
	bne	.L_5ffec
	ldr	r0, .L_5fffc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #5
	strb	r0, [r1, #30]
.L_5ffec:
	mov	r0, #89	@ 0x59
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5fff8:
	.4byte	gCurrentSprite
.L_5fffc:
	.4byte	sUnk_83E2088


thumb_func_start func_8060000
func_8060000:
	ldr	r0, .L_60024
	ldr	r1, .L_60028
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #115	@ 0x73
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	strb	r2, [r1, #0]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_60024:
	.4byte	gCurrentSprite
.L_60028:
	.4byte	sUnk_83E2020


thumb_func_start func_806002C
func_806002C:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_60064
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_60068
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_6006c
	cmp	r1, r0
	bne	.L_60070
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_6007a
	.align	2, 0
.L_60064:
	.4byte	gCurrentSprite
.L_60068:
	.4byte	sUnk_83E22C8
.L_6006c:
	.4byte	0x7FFF
.L_60070:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_6007a:
	strh	r0, [r3, #8]
	ldr	r4, .L_600c0
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	bls	.L_6010c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_600c4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_600a6
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_600a6:
	ldr	r0, .L_600c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_60144
	strh	r2, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_600cc
	mov	r0, #54	@ 0x36
	b	.L_600ce
	.align	2, 0
.L_600c0:
	.4byte	gCurrentSprite
.L_600c4:
	.4byte	gUnk_30000A0
.L_600c8:
	.4byte	gSpriteCollisionResult
.L_600cc:
	mov	r0, #52	@ 0x34
.L_600ce:
	strb	r0, [r4, #28]
	ldr	r2, .L_60104
	ldr	r0, .L_60108
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
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #89	@ 0x59
	bl	m4aSongNumStart
	b	.L_60162
	.align	2, 0
.L_60104:
	.4byte	gCurrentSprite
.L_60108:
	.4byte	sUnk_83E2088
.L_6010c:
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_6013c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_60144
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_60140
	mov	r0, #67	@ 0x43
	b	.L_60142
	.align	2, 0
.L_6013c:
	.4byte	gSpriteCollisionTileType
.L_60140:
	mov	r0, #69	@ 0x45
.L_60142:
	strb	r0, [r4, #28]
.L_60144:
	ldr	r2, .L_60158
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_6015c
	ldrh	r0, [r2, #10]
	sub	r0, #8
	b	.L_60160
	.align	2, 0
.L_60158:
	.4byte	gCurrentSprite
.L_6015c:
	ldrh	r0, [r2, #10]
	add	r0, #8
.L_60160:
	strh	r0, [r2, #10]
.L_60162:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8060168
func_8060168:
	ldr	r1, .L_60188
	ldr	r0, .L_6018c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r2, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_60188:
	.4byte	gCurrentSprite
.L_6018c:
	.4byte	sUnk_83E21C0


thumb_func_start func_8060190
func_8060190:
	ldr	r0, .L_601ac
	ldr	r1, .L_601b0
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #84	@ 0x54
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_601ac:
	.4byte	gCurrentSprite
.L_601b0:
	.4byte	sUnk_83E20C0


thumb_func_start func_80601B4
func_80601B4:
	push	{r4, lr}
	ldr	r1, .L_601d4
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r2, [r0, #0]
	add	r3, r2, #0
	add	r0, r2, #0
	sub	r0, #28
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r4, r1, #0
	cmp	r0, #28
	bls	.L_601d8
	bl	func_8023CD8
	b	.L_60226
.L_601d4:
	.4byte	gCurrentSprite
.L_601d8:
	cmp	r2, #56	@ 0x38
	beq	.L_601e0
	cmp	r2, #49	@ 0x31
	bne	.L_601e8
.L_601e0:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	strh	r0, [r4, #8]
	b	.L_6021c
.L_601e8:
	cmp	r2, #42	@ 0x2a
	bne	.L_60208
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	eor	r1, r0
	mov	r3, #0
	mov	r2, #0
	strh	r1, [r4, #0]
	ldr	r0, .L_60204
	str	r0, [r4, #4]
	strh	r2, [r4, #20]
	strb	r3, [r4, #22]
	b	.L_6020c
	.align	2, 0
.L_60204:
	.4byte	sUnk_83E20F8
.L_60208:
	cmp	r2, #35	@ 0x23
	bne	.L_60214
.L_6020c:
	ldrh	r0, [r4, #8]
	add	r0, #32
	strh	r0, [r4, #8]
	b	.L_6021c
.L_60214:
	cmp	r3, #28
	bne	.L_6021c
	mov	r0, #33	@ 0x21
	strb	r0, [r4, #30]
.L_6021c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_60226:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_806022C
func_806022C:
	ldr	r0, .L_60244
	ldr	r1, .L_60248
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
.L_60244:
	.4byte	gCurrentSprite
.L_60248:
	.4byte	sUnk_83E1F68


thumb_func_start func_806024C
func_806024C:
	ldr	r1, .L_6026c
	ldr	r0, .L_60270
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
.L_6026c:
	.4byte	gCurrentSprite
.L_60270:
	.4byte	sUnk_83E2088


thumb_func_start func_8060274
func_8060274:
	push	{r4, r5, lr}
	ldr	r5, .L_602b8
	ldr	r0, .L_602bc
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
	ldr	r0, .L_602c0
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_602b8:
	.4byte	gCurrentSprite
.L_602bc:
	.4byte	sUnk_83E2238
.L_602c0:
	.4byte	0xFEFF


thumb_func_start func_80602C4
func_80602C4:
	push	{lr}
	ldr	r1, .L_602d4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8060274
	pop	{r0}
	bx	r0
.L_602d4:
	.4byte	gCurrentSprite


thumb_func_start func_80602D8
func_80602D8:
	push	{lr}
	ldr	r1, .L_602e8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8060274
	pop	{r0}
	bx	r0
.L_602e8:
	.4byte	gCurrentSprite


thumb_func_start func_80602EC
func_80602EC:
	push	{lr}
	ldr	r2, .L_60320
	ldr	r0, .L_60324
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
.L_60320:
	.4byte	gCurrentSprite
.L_60324:
	.4byte	sUnk_83E2238


thumb_func_start func_8060328
func_8060328:
	push	{lr}
	ldr	r1, .L_60338
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80602EC
	pop	{r0}
	bx	r0
.L_60338:
	.4byte	gCurrentSprite


thumb_func_start func_806033C
func_806033C:
	push	{lr}
	ldr	r1, .L_6034c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80602EC
	pop	{r0}
	bx	r0
.L_6034c:
	.4byte	gCurrentSprite


thumb_func_start func_8060350
func_8060350:
	ldr	r2, .L_6037c
	ldr	r0, .L_60380
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
.L_6037c:
	.4byte	gCurrentSprite
.L_60380:
	.4byte	sUnk_83E21A8


thumb_func_start func_8060384
func_8060384:
	push	{lr}
	ldr	r1, .L_60394
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8060350
	pop	{r0}
	bx	r0
.L_60394:
	.4byte	gCurrentSprite


thumb_func_start func_8060398
func_8060398:
	push	{lr}
	ldr	r1, .L_603a8
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8060350
	pop	{r0}
	bx	r0
.L_603a8:
	.4byte	gCurrentSprite


thumb_func_start func_80603AC
func_80603AC:
	ldr	r2, .L_603d4
	ldr	r0, .L_603d8
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
.L_603d4:
	.4byte	gCurrentSprite
.L_603d8:
	.4byte	sUnk_83E2208


thumb_func_start func_80603DC
func_80603DC:
	push	{lr}
	ldr	r1, .L_603ec
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_80603AC
	pop	{r0}
	bx	r0
.L_603ec:
	.4byte	gCurrentSprite


thumb_func_start func_80603F0
func_80603F0:
	push	{lr}
	ldr	r1, .L_60400
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_80603AC
	pop	{r0}
	bx	r0
.L_60400:
	.4byte	gCurrentSprite


thumb_func_start func_8060404
func_8060404:
	ldr	r1, .L_60420
	ldr	r0, .L_60424
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
.L_60420:
	.4byte	gCurrentSprite
.L_60424:
	.4byte	sUnk_83E2088


thumb_func_start func_8060428
func_8060428:
	push	{lr}
	ldr	r1, .L_60438
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8060404
	pop	{r0}
	bx	r0
.L_60438:
	.4byte	gCurrentSprite


thumb_func_start func_806043C
func_806043C:
	push	{lr}
	ldr	r1, .L_6044c
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8060404
	pop	{r0}
	bx	r0
.L_6044c:
	.4byte	gCurrentSprite


thumb_func_start func_8060450
func_8060450:
	ldr	r1, .L_60464
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_6046c
	ldr	r0, .L_60468
	str	r0, [r2, #4]
	add	r1, #39	@ 0x27
	mov	r0, #7
	b	.L_60476
.L_60464:
	.4byte	gCurrentSprite
.L_60468:
	.4byte	sUnk_83E21F0
.L_6046c:
	ldr	r0, .L_60494
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #8
.L_60476:
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_60498
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_60494:
	.4byte	sUnk_83E21D0
.L_60498:
	.4byte	0xFEFF


thumb_func_start func_806049C
func_806049C:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80604A8
func_80604A8:
	ldr	r2, .L_604cc
	ldr	r0, .L_604d0
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
.L_604cc:
	.4byte	gCurrentSprite
.L_604d0:
	.4byte	sUnk_83E2088


thumb_func_start func_80604D4
func_80604D4:
	push	{lr}
	ldr	r1, .L_604e4
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80604A8
	pop	{r0}
	bx	r0
.L_604e4:
	.4byte	gCurrentSprite


thumb_func_start func_80604E8
func_80604E8:
	push	{lr}
	ldr	r1, .L_604f8
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80604A8
	pop	{r0}
	bx	r0
.L_604f8:
	.4byte	gCurrentSprite


thumb_func_start func_80604FC
func_80604FC:
	ldr	r2, .L_60524
	ldr	r0, .L_60528
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #19
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_60524:
	.4byte	gCurrentSprite
.L_60528:
	.4byte	sUnk_83E2068


thumb_func_start func_806052C
func_806052C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_60564
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_605ae
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_60568
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6056c
	mov	r0, #29
	b	.L_605b0
.L_60564:
	.4byte	gCurrentSprite
.L_60568:
	.4byte	gSpriteCollisionTileType
.L_6056c:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_60598
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_6059c
	cmp	r1, r0
	bne	.L_605a0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_605b2
	.align	2, 0
.L_60598:
	.4byte	sUnk_8352B18
.L_6059c:
	.4byte	0x7FFF
.L_605a0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_605b2
.L_605ae:
	mov	r0, #27
.L_605b0:
	strb	r0, [r4, #28]
.L_605b2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80605B8
func_80605B8:
	ldr	r1, .L_605c8
	ldr	r0, .L_605cc
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_605c8:
	.4byte	gCurrentSprite
.L_605cc:
	.4byte	sUnk_83E2088


thumb_func_start func_80605D0
func_80605D0:
	push	{lr}
	ldr	r1, .L_605e0
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_80605B8
	pop	{r0}
	bx	r0
.L_605e0:
	.4byte	gCurrentSprite


thumb_func_start func_80605E4
func_80605E4:
	push	{lr}
	ldr	r1, .L_605f4
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_80605B8
	pop	{r0}
	bx	r0
.L_605f4:
	.4byte	gCurrentSprite


thumb_func_start func_80605F8
func_80605F8:
	ldr	r1, .L_6060c
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_60610
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_6060c:
	.4byte	gCurrentSprite
.L_60610:
	.4byte	sUnk_83E2088


thumb_func_start func_8060614
func_8060614:
	push	{lr}
	ldr	r1, .L_60624
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_80605F8
	pop	{r0}
	bx	r0
.L_60624:
	.4byte	gCurrentSprite


thumb_func_start func_8060628
func_8060628:
	push	{lr}
	ldr	r1, .L_60638
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_80605F8
	pop	{r0}
	bx	r0
.L_60638:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownA9
SpriteUnknownA9:
	push	{lr}
	ldr	r2, .L_60664
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_60650
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_60650:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_60658
	b	.L_60a1a
.L_60658:
	lsl	r0, r0, #2
	ldr	r1, .L_60668
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_60664:
	.4byte	gCurrentSprite
.L_60668:
	.4byte	.L_6066c
.L_6066c:
	.4byte	.L_6083c
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60842
	.4byte	.L_60846
	.4byte	.L_6084c
	.4byte	.L_60850
	.4byte	.L_60a1a
	.4byte	.L_60850
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60870
	.4byte	.L_60874
	.4byte	.L_6087a
	.4byte	.L_6087e
	.4byte	.L_60884
	.4byte	.L_60888
	.4byte	.L_6088e
	.4byte	.L_60892
	.4byte	.L_60898
	.4byte	.L_6089c
	.4byte	.L_608a2
	.4byte	.L_608a6
	.4byte	.L_608ac
	.4byte	.L_608b0
	.4byte	.L_608b6
	.4byte	.L_608ba
	.4byte	.L_608c0
	.4byte	.L_608c4
	.4byte	.L_608ce
	.4byte	.L_608d2
	.4byte	.L_608dc
	.4byte	.L_608e0
	.4byte	.L_608e6
	.4byte	.L_608ea
	.4byte	.L_608f0
	.4byte	.L_608f4
	.4byte	.L_608fa
	.4byte	.L_608fe
	.4byte	.L_60904
	.4byte	.L_60950
	.4byte	.L_6090a
	.4byte	.L_60926
	.4byte	.L_60910
	.4byte	.L_60918
	.4byte	.L_6091e
	.4byte	.L_60926
	.4byte	.L_6092c
	.4byte	.L_60934
	.4byte	.L_6093a
	.4byte	.L_60942
	.4byte	.L_60948
	.4byte	.L_60950
	.4byte	.L_60956
	.4byte	.L_6095e
	.4byte	.L_60964
	.4byte	.L_60974
	.4byte	.L_6096a
	.4byte	.L_6097e
	.4byte	.L_60970
	.4byte	.L_60974
	.4byte	.L_6097a
	.4byte	.L_6097e
	.4byte	.L_60984
	.4byte	.L_60988
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60898
	.4byte	.L_608a2
	.4byte	.L_6098e
	.4byte	.L_60994
	.4byte	.L_6099a
	.4byte	.L_609a0
	.4byte	.L_609b2
	.4byte	.L_609b8
	.4byte	.L_609a6
	.4byte	.L_609ac
	.4byte	.L_609be
	.4byte	.L_609c2
	.4byte	.L_609e6
	.4byte	.L_609ea
	.4byte	.L_609c8
	.4byte	.L_609cc
	.4byte	.L_609f0
	.4byte	.L_609f4
	.4byte	.L_609d2
	.4byte	.L_609d6
	.4byte	.L_609fa
	.4byte	.L_609fe
	.4byte	.L_609dc
	.4byte	.L_609e0
	.4byte	.L_60a04
	.4byte	.L_60a08
	.4byte	.L_60a0e
	.4byte	.L_60a14
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60a1a
	.4byte	.L_60856
	.4byte	.L_6085a
	.4byte	.L_60a1a
	.4byte	.L_60860
	.4byte	.L_60866
	.4byte	.L_6086a
.L_6083c:
	bl	func_805FB24
	b	.L_60a1e
.L_60842:
	bl	func_805FB94
.L_60846:
	bl	func_805FBB8
	b	.L_60a1e
.L_6084c:
	bl	func_805FD04
.L_60850:
	bl	func_805FD2C
	b	.L_60a1e
.L_60856:
	bl	func_805FE0C
.L_6085a:
	bl	func_805FE34
	b	.L_60a1e
.L_60860:
	bl	func_805FE90
	b	.L_60a1e
.L_60866:
	bl	func_8060000
.L_6086a:
	bl	func_806002C
	b	.L_60a1e
.L_60870:
	bl	func_8060168
.L_60874:
	bl	func_8023C94
	b	.L_60a1e
.L_6087a:
	bl	func_8060190
.L_6087e:
	bl	func_80601B4
	b	.L_60a1e
.L_60884:
	bl	func_806022C
.L_60888:
	bl	func_8023D48
	b	.L_60a1e
.L_6088e:
	bl	func_806024C
.L_60892:
	bl	func_8023EE0
	b	.L_60a1e
.L_60898:
	bl	func_80602C4
.L_6089c:
	bl	SpriteUtilFallOffscreenRight
	b	.L_60a1e
.L_608a2:
	bl	func_80602D8
.L_608a6:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_60a1e
.L_608ac:
	bl	func_8060384
.L_608b0:
	bl	SpriteUtilPushedRight
	b	.L_60a1e
.L_608b6:
	bl	func_8060398
.L_608ba:
	bl	SpriteUtilPushedLeft
	b	.L_60a1e
.L_608c0:
	bl	func_80603DC
.L_608c4:
	bl	SpriteUtilPushedRight
	bl	func_80238E8
	b	.L_60a1e
.L_608ce:
	bl	func_80603F0
.L_608d2:
	bl	SpriteUtilPushedLeft
	bl	func_80238E8
	b	.L_60a1e
.L_608dc:
	bl	func_8060428
.L_608e0:
	bl	func_8024478
	b	.L_60a1e
.L_608e6:
	bl	func_806043C
.L_608ea:
	bl	func_802449C
	b	.L_60a1e
.L_608f0:
	bl	func_80244C0
.L_608f4:
	bl	func_80244E0
	b	.L_60a1e
.L_608fa:
	bl	func_8060450
.L_608fe:
	bl	SpriteUtilDieAfterDelay
	b	.L_60a1e
.L_60904:
	bl	func_805FDE4
	b	.L_60950
.L_6090a:
	bl	func_805FDF8
	b	.L_60926
.L_60910:
	bl	func_805FFD4
	bl	func_8024688
.L_60918:
	bl	func_80246B8
	b	.L_60a1e
.L_6091e:
	bl	func_805FFD4
	bl	func_802473C
.L_60926:
	bl	func_802476C
	b	.L_60a1e
.L_6092c:
	bl	func_805FFD4
	bl	func_80247F0
.L_60934:
	bl	func_8024820
	b	.L_60a1e
.L_6093a:
	bl	func_805FFD4
	bl	func_80248A4
.L_60942:
	bl	func_80248D4
	b	.L_60a1e
.L_60948:
	bl	func_805FFD4
	bl	func_8024958
.L_60950:
	bl	func_8024988
	b	.L_60a1e
.L_60956:
	bl	func_805FFD4
	bl	func_8024A0C
.L_6095e:
	bl	func_8024A3C
	b	.L_60a1e
.L_60964:
	bl	func_8024AC0
	b	.L_60974
.L_6096a:
	bl	func_8024BEC
	b	.L_6097e
.L_60970:
	bl	func_80604D4
.L_60974:
	bl	func_8024AD4
	b	.L_60a1e
.L_6097a:
	bl	func_80604E8
.L_6097e:
	bl	func_8024C00
	b	.L_60a1e
.L_60984:
	bl	func_80604FC
.L_60988:
	bl	func_806052C
	b	.L_60a1e
.L_6098e:
	bl	func_80605D0
	b	.L_60a1e
.L_60994:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_60a1e
.L_6099a:
	bl	func_80605E4
	b	.L_60a1e
.L_609a0:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_60a1e
.L_609a6:
	bl	func_8060614
	b	.L_60a1e
.L_609ac:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_60a1e
.L_609b2:
	bl	func_8060628
	b	.L_60a1e
.L_609b8:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_60a1e
.L_609be:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_609c2:
	bl	SpriteUtilThrownLeftSoft
	b	.L_60a1e
.L_609c8:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_609cc:
	bl	SpriteUtilThrownLeftHard
	b	.L_60a1e
.L_609d2:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_609d6:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_60a1e
.L_609dc:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_609e0:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_60a1e
.L_609e6:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_609ea:
	bl	SpriteUtilThrownRightSoft
	b	.L_60a1e
.L_609f0:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_609f4:
	bl	SpriteUtilThrownRightHard
	b	.L_60a1e
.L_609fa:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_609fe:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_60a1e
.L_60a04:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_60a08:
	bl	SpriteUtilThrownUpRightHard
	b	.L_60a1e
.L_60a0e:
	bl	func_806033C
	b	.L_60a1e
.L_60a14:
	bl	func_8060328
	b	.L_60a1e
.L_60a1a:
	bl	func_806049C
.L_60a1e:
	pop	{r0}
	bx	r0
	.align	2, 0
