.include "macros.s.inc"


thumb_func_start func_8060A24
func_8060A24:
	ldr	r2, .L_60a40
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_60a44
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	b	.L_60a50
	.align	2, 0
.L_60a40:
	.4byte	gCurrentSprite
.L_60a44:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
.L_60a50:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8060A54
func_8060A54:
	push	{lr}
	ldr	r3, .L_60a94
	mov	r2, #0
	mov	r0, #3
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #40	@ 0x28
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
	ldr	r0, .L_60a98
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #16
	strb	r0, [r3, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_60a94:
	.4byte	gCurrentSprite
.L_60a98:
	.4byte	sUnk_83E269C


thumb_func_start func_8060A9C
func_8060A9C:
	push	{lr}
	ldr	r1, .L_60ac4
	ldr	r0, .L_60ac8
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
	bl	func_8060A24
	pop	{r0}
	bx	r0
	.align	2, 0
.L_60ac4:
	.4byte	gCurrentSprite
.L_60ac8:
	.4byte	sUnk_83E269C


thumb_func_start func_8060ACC
func_8060ACC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_60ae4
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_60ae8
	mov	r1, #200	@ 0xc8
	lsl	r1, r1, #1
	mov	r0, #127	@ 0x7f
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	b	.L_60aea
.L_60ae4:
	.4byte	gCurrentSprite
.L_60ae8:
	mov	r5, #0
.L_60aea:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_60b1c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_60b50
	ldr	r3, .L_60b20
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_60b24
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_60b38
.L_60b1c:
	.4byte	gSpriteCollisionResult
.L_60b20:
	.4byte	gCurrentSprite
.L_60b24:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_60b38:
	ldr	r0, .L_60b48
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_60c10
	ldr	r1, .L_60b4c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_60c28
.L_60b48:
	.4byte	gSpriteCollisionTileType
.L_60b4c:
	.4byte	gCurrentSprite
.L_60b50:
	ldr	r4, .L_60ba4
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_60bac
	cmp	r5, #8
	beq	.L_60bb0
	cmp	r5, #4
	beq	.L_60be6
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_60c10
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_60c10
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_60ba8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_60be6
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_60bfe
	.align	2, 0
.L_60ba4:
	.4byte	gCurrentSprite
.L_60ba8:
	.4byte	gSpriteCollisionTileType
.L_60bac:
	cmp	r5, #4
	bne	.L_60bb6
.L_60bb0:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_60c28
.L_60bb6:
	cmp	r5, #8
	beq	.L_60be6
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_60c10
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_60c10
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_60bec
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_60bf0
.L_60be6:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_60c28
.L_60bec:
	.4byte	gSpriteCollisionTileType
.L_60bf0:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_60bfe:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_60c10
	strb	r0, [r4, #28]
	b	.L_60c28
.L_60c10:
	ldr	r0, .L_60c20
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	bne	.L_60c24
	bl	func_8026374
	b	.L_60c28
	.align	2, 0
.L_60c20:
	.4byte	gCurrentSprite
.L_60c24:
	bl	func_8026418
.L_60c28:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8060C30
func_8060C30:
	push	{lr}
	ldr	r0, .L_60c54
	ldr	r1, .L_60c58
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
.L_60c54:
	.4byte	gCurrentSprite
.L_60c58:
	.4byte	sUnk_83E2674


thumb_func_start func_8060C5C
func_8060C5C:
	push	{lr}
	ldr	r2, .L_60c78
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_60c7c
	bl	func_8060ACC
	b	.L_60c92
.L_60c78:
	.4byte	gCurrentSprite
.L_60c7c:
	mov	r0, #24
	strb	r0, [r2, #28]
	ldr	r0, .L_60c98
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #13
	strb	r0, [r3, #0]
	mov	r0, #77	@ 0x4d
	bl	m4aSongNumStart
.L_60c92:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_60c98:
	.4byte	sUnk_83E26E4


thumb_func_start func_8060C9C
func_8060C9C:
	push	{lr}
	ldr	r0, .L_60cc0
	ldr	r1, .L_60cc4
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
	bl	func_8060A24
	pop	{r0}
	bx	r0
.L_60cc0:
	.4byte	gCurrentSprite
.L_60cc4:
	.4byte	sUnk_83E265C


thumb_func_start func_8060CC8
func_8060CC8:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_60ce4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_60cec
	ldr	r1, .L_60ce8
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_60d44
	.align	2, 0
.L_60ce4:
	.4byte	gSpriteCollisionResult
.L_60ce8:
	.4byte	gCurrentSprite
.L_60cec:
	ldr	r2, .L_60d2c
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
	bne	.L_60d44
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_60d34
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_60d30
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #14
	mov	r1, ip
	strb	r0, [r1, #0]
	bl	func_8060A24
	b	.L_60d44
.L_60d2c:
	.4byte	gCurrentSprite
.L_60d30:
	.4byte	sUnk_83E279C
.L_60d34:
	ldr	r0, .L_60d48
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #3
	strb	r0, [r2, #30]
.L_60d44:
	pop	{r0}
	bx	r0
.L_60d48:
	.4byte	sUnk_83E269C


thumb_func_start func_8060D4C
func_8060D4C:
	ldr	r2, .L_60d88
	ldr	r0, .L_60d8c
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
	beq	.L_60d86
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
.L_60d86:
	bx	lr
.L_60d88:
	.4byte	gCurrentSprite
.L_60d8c:
	.4byte	sUnk_83E2714


thumb_func_start func_8060D90
func_8060D90:
	push	{lr}
	ldr	r1, .L_60da0
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8060D4C
	pop	{r0}
	bx	r0
.L_60da0:
	.4byte	gCurrentSprite


thumb_func_start func_8060DA4
func_8060DA4:
	push	{lr}
	ldr	r1, .L_60db4
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8060D4C
	pop	{r0}
	bx	r0
.L_60db4:
	.4byte	gCurrentSprite


thumb_func_start func_8060DB8
func_8060DB8:
	ldr	r0, .L_60dd0
	ldr	r1, .L_60dd4
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
.L_60dd0:
	.4byte	gCurrentSprite
.L_60dd4:
	.4byte	sUnk_83E264C


thumb_func_start func_8060DD8
func_8060DD8:
	push	{lr}
	ldr	r0, .L_60e04
	ldr	r1, .L_60e08
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
	bl	func_8060A24
	pop	{r0}
	bx	r0
.L_60e04:
	.4byte	gCurrentSprite
.L_60e08:
	.4byte	sUnk_83E278C


thumb_func_start func_8060E0C
func_8060E0C:
	ldr	r1, .L_60e2c
	ldr	r0, .L_60e30
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
.L_60e2c:
	.4byte	gCurrentSprite
.L_60e30:
	.4byte	sUnk_83E2734


thumb_func_start func_8060E34
func_8060E34:
	ldr	r2, .L_60e60
	ldr	r0, .L_60e64
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
.L_60e60:
	.4byte	gCurrentSprite
.L_60e64:
	.4byte	sUnk_83E2714


thumb_func_start func_8060E68
func_8060E68:
	push	{r4, r5, lr}
	ldr	r5, .L_60ecc
	ldr	r0, .L_60ed0
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
	ldr	r0, .L_60ed4
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_60ed8
	ldr	r0, .L_60edc
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
.L_60ecc:
	.4byte	gCurrentSprite
.L_60ed0:
	.4byte	sUnk_83E2754
.L_60ed4:
	.4byte	0xFEFF
.L_60ed8:
	.4byte	gPersistentSpriteData
.L_60edc:
	.4byte	gCurrentRoom


thumb_func_start func_8060EE0
func_8060EE0:
	push	{lr}
	ldr	r1, .L_60ef0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8060E68
	pop	{r0}
	bx	r0
.L_60ef0:
	.4byte	gCurrentSprite


thumb_func_start func_8060EF4
func_8060EF4:
	push	{lr}
	ldr	r1, .L_60f04
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8060E68
	pop	{r0}
	bx	r0
.L_60f04:
	.4byte	gCurrentSprite


thumb_func_start func_8060F08
func_8060F08:
	push	{r4, lr}
	ldr	r4, .L_60f5c
	ldr	r0, .L_60f60
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
	ldr	r1, .L_60f64
	ldr	r0, .L_60f68
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
.L_60f5c:
	.4byte	gCurrentSprite
.L_60f60:
	.4byte	sUnk_83E2754
.L_60f64:
	.4byte	gPersistentSpriteData
.L_60f68:
	.4byte	gCurrentRoom


thumb_func_start func_8060F6C
func_8060F6C:
	push	{lr}
	ldr	r1, .L_60f7c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8060F08
	pop	{r0}
	bx	r0
.L_60f7c:
	.4byte	gCurrentSprite


thumb_func_start func_8060F80
func_8060F80:
	push	{lr}
	ldr	r1, .L_60f90
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8060F08
	pop	{r0}
	bx	r0
.L_60f90:
	.4byte	gCurrentSprite


thumb_func_start func_8060F94
func_8060F94:
	ldr	r2, .L_60fbc
	ldr	r0, .L_60fc0
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
.L_60fbc:
	.4byte	gCurrentSprite
.L_60fc0:
	.4byte	sUnk_83E264C


thumb_func_start func_8060FC4
func_8060FC4:
	push	{lr}
	ldr	r1, .L_60fd4
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8060F94
	pop	{r0}
	bx	r0
.L_60fd4:
	.4byte	gCurrentSprite


thumb_func_start func_8060FD8
func_8060FD8:
	push	{lr}
	ldr	r1, .L_60fe8
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8060F94
	pop	{r0}
	bx	r0
.L_60fe8:
	.4byte	gCurrentSprite


thumb_func_start func_8060FEC
func_8060FEC:
	ldr	r2, .L_61014
	ldr	r0, .L_61018
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
.L_61014:
	.4byte	gCurrentSprite
.L_61018:
	.4byte	sUnk_83E2714


thumb_func_start func_806101C
func_806101C:
	push	{lr}
	ldr	r1, .L_6102c
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8060FEC
	pop	{r0}
	bx	r0
.L_6102c:
	.4byte	gCurrentSprite


thumb_func_start func_8061030
func_8061030:
	push	{lr}
	ldr	r1, .L_61040
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8060FEC
	pop	{r0}
	bx	r0
.L_61040:
	.4byte	gCurrentSprite


thumb_func_start func_8061044
func_8061044:
	push	{r4, lr}
	ldr	r0, .L_61054
	ldrb	r1, [r0, #30]
	add	r4, r0, #0
	cmp	r1, #5
	bne	.L_6105c
	ldr	r0, .L_61058
	b	.L_6105e
.L_61054:
	.4byte	gCurrentSprite
.L_61058:
	.4byte	sUnk_83E27B4
.L_6105c:
	ldr	r0, .L_610a8
.L_6105e:
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
	ldr	r0, .L_610ac
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
	ldr	r1, .L_610b0
	ldr	r0, .L_610b4
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
.L_610a8:
	.4byte	sUnk_83E276C
.L_610ac:
	.4byte	0xFEFF
.L_610b0:
	.4byte	gPersistentSpriteData
.L_610b4:
	.4byte	gCurrentRoom


thumb_func_start func_80610B8
func_80610B8:
	push	{r4, lr}
	ldr	r4, .L_610e4
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_610e8
	ldr	r0, .L_610ec
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
.L_610e4:
	.4byte	gCurrentSprite
.L_610e8:
	.4byte	gPersistentSpriteData
.L_610ec:
	.4byte	gCurrentRoom


thumb_func_start func_80610F0
func_80610F0:
	ldr	r2, .L_61120
	ldr	r0, .L_61124
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
.L_61120:
	.4byte	gCurrentSprite
.L_61124:
	.4byte	sUnk_83E2714


thumb_func_start func_8061128
func_8061128:
	push	{lr}
	ldr	r1, .L_61138
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80610F0
	pop	{r0}
	bx	r0
.L_61138:
	.4byte	gCurrentSprite


thumb_func_start func_806113C
func_806113C:
	push	{lr}
	ldr	r1, .L_6114c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80610F0
	pop	{r0}
	bx	r0
.L_6114c:
	.4byte	gCurrentSprite


thumb_func_start func_8061150
func_8061150:
	ldr	r2, .L_61178
	ldr	r0, .L_6117c
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
.L_61178:
	.4byte	gCurrentSprite
.L_6117c:
	.4byte	sUnk_83E264C


thumb_func_start func_8061180
func_8061180:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_611b8
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_61202
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_611bc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_611c0
	mov	r0, #29
	b	.L_61204
.L_611b8:
	.4byte	gCurrentSprite
.L_611bc:
	.4byte	gSpriteCollisionTileType
.L_611c0:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_611ec
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_611f0
	cmp	r1, r0
	bne	.L_611f4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_61206
	.align	2, 0
.L_611ec:
	.4byte	sUnk_8352B18
.L_611f0:
	.4byte	0x7FFF
.L_611f4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_61206
.L_61202:
	mov	r0, #27
.L_61204:
	strb	r0, [r4, #28]
.L_61206:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_806120C
func_806120C:
	ldr	r1, .L_61214
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_61214:
	.4byte	gCurrentSprite


thumb_func_start func_8061218
func_8061218:
	ldr	r1, .L_61220
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_61220:
	.4byte	gCurrentSprite


thumb_func_start func_8061224
func_8061224:
	ldr	r0, .L_61230
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_61230:
	.4byte	gCurrentSprite


thumb_func_start func_8061234
func_8061234:
	ldr	r0, .L_61240
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_61240:
	.4byte	gCurrentSprite


thumb_func_start SpriteOnomi
SpriteOnomi:
	push	{lr}
	ldr	r2, .L_6126c
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_61258
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_61258:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_61260
	b	.L_615c8
.L_61260:
	lsl	r0, r0, #2
	ldr	r1, .L_61270
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6126c:
	.4byte	gCurrentSprite
.L_61270:
	.4byte	.L_61274
.L_61274:
	.4byte	.L_61434
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_61438
	.4byte	.L_6143c
	.4byte	.L_6144c
	.4byte	.L_61450
	.4byte	.L_615c8
	.4byte	.L_61450
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_61456
	.4byte	.L_6145a
	.4byte	.L_61460
	.4byte	.L_61536
	.4byte	.L_61466
	.4byte	.L_6146a
	.4byte	.L_61470
	.4byte	.L_61474
	.4byte	.L_6147a
	.4byte	.L_6147e
	.4byte	.L_61484
	.4byte	.L_61488
	.4byte	.L_6148e
	.4byte	.L_61492
	.4byte	.L_61498
	.4byte	.L_6149c
	.4byte	.L_6148e
	.4byte	.L_615c8
	.4byte	.L_61498
	.4byte	.L_615c8
	.4byte	.L_614a2
	.4byte	.L_614a6
	.4byte	.L_614ac
	.4byte	.L_614b0
	.4byte	.L_614b6
	.4byte	.L_614ba
	.4byte	.L_614c0
	.4byte	.L_614c4
	.4byte	.L_614ca
	.4byte	.L_61502
	.4byte	.L_614d0
	.4byte	.L_614e4
	.4byte	.L_614d6
	.4byte	.L_614da
	.4byte	.L_614e0
	.4byte	.L_614e4
	.4byte	.L_614ea
	.4byte	.L_614ee
	.4byte	.L_614f4
	.4byte	.L_614f8
	.4byte	.L_614fe
	.4byte	.L_61502
	.4byte	.L_61508
	.4byte	.L_6150c
	.4byte	.L_61512
	.4byte	.L_61522
	.4byte	.L_61518
	.4byte	.L_6152c
	.4byte	.L_6151e
	.4byte	.L_61522
	.4byte	.L_61528
	.4byte	.L_6152c
	.4byte	.L_61532
	.4byte	.L_61536
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_6147a
	.4byte	.L_61484
	.4byte	.L_6153c
	.4byte	.L_61542
	.4byte	.L_61548
	.4byte	.L_6154e
	.4byte	.L_61560
	.4byte	.L_61566
	.4byte	.L_61554
	.4byte	.L_6155a
	.4byte	.L_6156c
	.4byte	.L_61570
	.4byte	.L_61594
	.4byte	.L_61598
	.4byte	.L_61576
	.4byte	.L_6157a
	.4byte	.L_6159e
	.4byte	.L_615a2
	.4byte	.L_61580
	.4byte	.L_61584
	.4byte	.L_615a8
	.4byte	.L_615ac
	.4byte	.L_6158a
	.4byte	.L_6158e
	.4byte	.L_615b2
	.4byte	.L_615b6
	.4byte	.L_615bc
	.4byte	.L_615c2
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_615c8
	.4byte	.L_61442
	.4byte	.L_61446
.L_61434:
	bl	func_8060A54
.L_61438:
	bl	func_8060A9C
.L_6143c:
	bl	func_8060ACC
	b	.L_615cc
.L_61442:
	bl	func_8060C30
.L_61446:
	bl	func_8060C5C
	b	.L_615cc
.L_6144c:
	bl	func_8060C9C
.L_61450:
	bl	func_8060CC8
	b	.L_615cc
.L_61456:
	bl	func_8060DB8
.L_6145a:
	bl	func_8023C94
	b	.L_615cc
.L_61460:
	bl	func_8060DD8
	b	.L_615cc
.L_61466:
	bl	func_8060E0C
.L_6146a:
	bl	func_8023E00
	b	.L_615cc
.L_61470:
	bl	func_8060E34
.L_61474:
	bl	func_8023EE0
	b	.L_615cc
.L_6147a:
	bl	func_8060EE0
.L_6147e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_615cc
.L_61484:
	bl	func_8060EF4
.L_61488:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_615cc
.L_6148e:
	bl	func_8060FC4
.L_61492:
	bl	SpriteUtilPushedRight
	b	.L_615cc
.L_61498:
	bl	func_8060FD8
.L_6149c:
	bl	SpriteUtilPushedLeft
	b	.L_615cc
.L_614a2:
	bl	func_806101C
.L_614a6:
	bl	func_8024478
	b	.L_615cc
.L_614ac:
	bl	func_8061030
.L_614b0:
	bl	func_802449C
	b	.L_615cc
.L_614b6:
	bl	func_80244C0
.L_614ba:
	bl	func_80244E0
	b	.L_615cc
.L_614c0:
	bl	func_8061044
.L_614c4:
	bl	SpriteUtilDieAfterDelay
	b	.L_615cc
.L_614ca:
	bl	func_8060D90
	b	.L_61502
.L_614d0:
	bl	func_8060DA4
	b	.L_614e4
.L_614d6:
	bl	func_8024688
.L_614da:
	bl	func_80246B8
	b	.L_615cc
.L_614e0:
	bl	func_802473C
.L_614e4:
	bl	func_802476C
	b	.L_615cc
.L_614ea:
	bl	func_80247F0
.L_614ee:
	bl	func_8024820
	b	.L_615cc
.L_614f4:
	bl	func_80248A4
.L_614f8:
	bl	func_80248D4
	b	.L_615cc
.L_614fe:
	bl	func_8024958
.L_61502:
	bl	func_8024988
	b	.L_615cc
.L_61508:
	bl	func_8024A0C
.L_6150c:
	bl	func_8024A3C
	b	.L_615cc
.L_61512:
	bl	func_8024AC0
	b	.L_61522
.L_61518:
	bl	func_8024BEC
	b	.L_6152c
.L_6151e:
	bl	func_8061128
.L_61522:
	bl	func_8024AD4
	b	.L_615cc
.L_61528:
	bl	func_806113C
.L_6152c:
	bl	func_8024C00
	b	.L_615cc
.L_61532:
	bl	func_8061150
.L_61536:
	bl	func_8061180
	b	.L_615cc
.L_6153c:
	bl	func_806120C
	b	.L_615cc
.L_61542:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_615cc
.L_61548:
	bl	func_8061218
	b	.L_615cc
.L_6154e:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_615cc
.L_61554:
	bl	func_8061224
	b	.L_615cc
.L_6155a:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_615cc
.L_61560:
	bl	func_8061234
	b	.L_615cc
.L_61566:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_615cc
.L_6156c:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_61570:
	bl	SpriteUtilThrownLeftSoft
	b	.L_615cc
.L_61576:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_6157a:
	bl	SpriteUtilThrownLeftHard
	b	.L_615cc
.L_61580:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_61584:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_615cc
.L_6158a:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_6158e:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_615cc
.L_61594:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_61598:
	bl	SpriteUtilThrownRightSoft
	b	.L_615cc
.L_6159e:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_615a2:
	bl	SpriteUtilThrownRightHard
	b	.L_615cc
.L_615a8:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_615ac:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_615cc
.L_615b2:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_615b6:
	bl	SpriteUtilThrownUpRightHard
	b	.L_615cc
.L_615bc:
	bl	func_8060F80
	b	.L_615cc
.L_615c2:
	bl	func_8060F6C
	b	.L_615cc
.L_615c8:
	bl	func_80610B8
.L_615cc:
	pop	{r0}
	bx	r0
