.include "macros.s.inc"


thumb_func_start func_8046A6C
func_8046A6C:
	push	{r4, lr}
	ldr	r0, .L_46acc
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r3, #32
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r1, #3
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	ldr	r0, .L_46ad0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r1, #40	@ 0x28
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46acc:
	.4byte	gCurrentSprite
.L_46ad0:
	.4byte	sUnk_83CA178


thumb_func_start func_8046AD4
func_8046AD4:
	ldr	r0, .L_46aec
	ldr	r1, .L_46af0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	mov	r1, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
.L_46aec:
	.4byte	gCurrentSprite
.L_46af0:
	.4byte	sUnk_83CA178


thumb_func_start func_8046AF4
func_8046AF4:
	push	{r4, r5, r6, lr}
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_46b34
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_46b6c
	ldr	r3, .L_46b38
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_46b3c
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_46b50
.L_46b34:
	.4byte	gSpriteCollisionResult
.L_46b38:
	.4byte	gCurrentSprite
.L_46b3c:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_46b50:
	ldr	r0, .L_46b64
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_46b5a
	b	.L_46c50
.L_46b5a:
	ldr	r1, .L_46b68
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_46c54
	.align	2, 0
.L_46b64:
	.4byte	gSpriteCollisionTileType
.L_46b68:
	.4byte	gCurrentSprite
.L_46b6c:
	ldr	r4, .L_46b88
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_46bd8
	cmp	r5, #8
	bne	.L_46b90
	ldr	r0, .L_46b8c
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_46be4
	b	.L_46bf0
	.align	2, 0
.L_46b88:
	.4byte	gCurrentSprite
.L_46b8c:
	.4byte	gWarioData
.L_46b90:
	cmp	r5, #4
	beq	.L_46c26
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_46c50
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_46c50
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_46bd4
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_46c26
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_46c3e
	.align	2, 0
.L_46bd4:
	.4byte	gSpriteCollisionTileType
.L_46bd8:
	cmp	r5, #4
	bne	.L_46bf6
	ldr	r0, .L_46bec
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_46bf0
.L_46be4:
	mov	r0, #114	@ 0x72
	strb	r0, [r4, #28]
	b	.L_46c54
	.align	2, 0
.L_46bec:
	.4byte	gWarioData
.L_46bf0:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_46c54
.L_46bf6:
	cmp	r5, #8
	beq	.L_46c26
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_46c50
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_46c50
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_46c2c
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_46c30
.L_46c26:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_46c54
.L_46c2c:
	.4byte	gSpriteCollisionTileType
.L_46c30:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_46c3e:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_46c50
	strb	r0, [r4, #28]
	b	.L_46c54
.L_46c50:
	bl	func_80263AC
.L_46c54:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046C5C
func_8046C5C:
	ldr	r0, .L_46c74
	ldr	r1, .L_46c78
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #9
	strb	r1, [r0, #0]
	bx	lr
.L_46c74:
	.4byte	gCurrentSprite
.L_46c78:
	.4byte	sUnk_83CA1A0


thumb_func_start func_8046C7C
func_8046C7C:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_46c98
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_46ca0
	ldr	r1, .L_46c9c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_46ce8
	.align	2, 0
.L_46c98:
	.4byte	gSpriteCollisionResult
.L_46c9c:
	.4byte	gCurrentSprite
.L_46ca0:
	ldr	r2, .L_46cdc
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
	bne	.L_46ce8
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_46ce4
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_46ce0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #7
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_46ce8
.L_46cdc:
	.4byte	gCurrentSprite
.L_46ce0:
	.4byte	sUnk_83CA1B8
.L_46ce4:
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
.L_46ce8:
	pop	{r0}
	bx	r0


thumb_func_start func_8046CEC
func_8046CEC:
	ldr	r2, .L_46d1c
	ldr	r0, .L_46d20
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
	beq	.L_46d18
	mov	r0, #5
	strb	r0, [r2, #30]
.L_46d18:
	bx	lr
	.align	2, 0
.L_46d1c:
	.4byte	gCurrentSprite
.L_46d20:
	.4byte	sUnk_83CA270


thumb_func_start func_8046D24
func_8046D24:
	push	{lr}
	ldr	r1, .L_46d34
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8046CEC
	pop	{r0}
	bx	r0
.L_46d34:
	.4byte	gCurrentSprite


thumb_func_start func_8046D38
func_8046D38:
	push	{lr}
	ldr	r1, .L_46d48
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8046CEC
	pop	{r0}
	bx	r0
.L_46d48:
	.4byte	gCurrentSprite


thumb_func_start func_8046D4C
func_8046D4C:
	ldr	r0, .L_46d64
	ldr	r1, .L_46d68
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #61	@ 0x3d
	strb	r1, [r0, #0]
	bx	lr
.L_46d64:
	.4byte	gCurrentSprite
.L_46d68:
	.4byte	sUnk_83CA1D0


thumb_func_start func_8046D6C
func_8046D6C:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_46db0
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_46df0
	lsr	r0, r0, #24
	cmp	r0, #48	@ 0x30
	bne	.L_46dd0
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_46db4
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #110	@ 0x6e
	ldrh	r0, [r4, #10]
	add	r0, #92	@ 0x5c
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #178	@ 0xb2
	bl	SpawnPrimarySpriteWithStatus
	b	.L_46dca
.L_46db0:
	.4byte	gCurrentSprite
.L_46db4:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #110	@ 0x6e
	ldrh	r0, [r4, #10]
	sub	r0, #92	@ 0x5c
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #178	@ 0xb2
	bl	SpawnPrimarySpriteWithStatus
.L_46dca:
	mov	r0, #70	@ 0x46
	bl	m4aSongNumStart
.L_46dd0:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_46de8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_46df4
	ldr	r1, .L_46dec
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_46df4
.L_46de8:
	.4byte	gSpriteCollisionResult
.L_46dec:
	.4byte	gCurrentSprite
.L_46df0:
	mov	r0, #17
	strb	r0, [r4, #28]
.L_46df4:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8046DFC
func_8046DFC:
	ldr	r0, .L_46e1c
	ldr	r1, .L_46e20
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #16
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_46e1c:
	.4byte	gCurrentSprite
.L_46e20:
	.4byte	sUnk_83CA400


thumb_func_start func_8046E24
func_8046E24:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_46e50
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_46e54
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_46e58
	cmp	r1, r0
	bne	.L_46e5c
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_46e66
.L_46e50:
	.4byte	gCurrentSprite
.L_46e54:
	.4byte	sUnk_83CA440
.L_46e58:
	.4byte	0x7FFF
.L_46e5c:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_46e66:
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_46e7c
	mov	r0, #15
	strb	r0, [r2, #28]
.L_46e7c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046E84
func_8046E84:
	ldr	r0, .L_46ea0
	ldr	r1, .L_46ea4
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #115	@ 0x73
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #58	@ 0x3a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_46ea0:
	.4byte	gCurrentSprite
.L_46ea4:
	.4byte	sUnk_83CA358


thumb_func_start func_8046EA8
func_8046EA8:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_46edc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_46ec0
	ldr	r1, .L_46ee0
	mov	r0, #27
	strb	r0, [r1, #28]
.L_46ec0:
	ldr	r2, .L_46ee0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_46ed6
	mov	r0, #17
	strb	r0, [r2, #28]
.L_46ed6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46edc:
	.4byte	gSpriteCollisionResult
.L_46ee0:
	.4byte	gCurrentSprite


thumb_func_start func_8046EE4
func_8046EE4:
	ldr	r0, .L_46efc
	ldr	r1, .L_46f00
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #14
	strb	r1, [r0, #0]
	bx	lr
.L_46efc:
	.4byte	gCurrentSprite
.L_46f00:
	.4byte	sUnk_83CA328


thumb_func_start func_8046F04
func_8046F04:
	ldr	r0, .L_46f24
	ldr	r1, .L_46f28
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #30
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_46f24:
	.4byte	gCurrentSprite
.L_46f28:
	.4byte	sUnk_83CA2C0


thumb_func_start func_8046F2C
func_8046F2C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_46f5c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_46f60
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_46f64
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_46f68
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_46f72
	.align	2, 0
.L_46f5c:
	.4byte	gCurrentSprite
.L_46f60:
	.4byte	sUnk_83CA462
.L_46f64:
	.4byte	0x7FFF
.L_46f68:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
.L_46f72:
	strh	r0, [r4, #8]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bhi	.L_46f96
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_46fc4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_46f92
	mov	r0, #27
	strb	r0, [r4, #28]
.L_46f92:
	mov	r0, #1
	strb	r0, [r4, #30]
.L_46f96:
	add	r2, r4, #0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_46fe0
	ldr	r1, .L_46fc8
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_46fcc
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_46fd6
	mov	r0, #17
	strb	r0, [r2, #28]
	b	.L_46fe0
	.align	2, 0
.L_46fc4:
	.4byte	gSpriteCollisionResult
.L_46fc8:
	.4byte	gWarioData
.L_46fcc:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_46fdc
.L_46fd6:
	mov	r0, #23
	strb	r0, [r2, #28]
	b	.L_46fe0
.L_46fdc:
	mov	r0, #17
	strb	r0, [r4, #28]
.L_46fe0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046FE8
func_8046FE8:
	ldr	r0, .L_47000
	ldr	r1, .L_47004
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
.L_47000:
	.4byte	gCurrentSprite
.L_47004:
	.4byte	sUnk_83CA298


thumb_func_start func_8047008
func_8047008:
	ldr	r1, .L_47028
	ldr	r0, .L_4702c
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
.L_47028:
	.4byte	gCurrentSprite
.L_4702c:
	.4byte	sUnk_83CA270


thumb_func_start func_8047030
func_8047030:
	push	{r4, r5, lr}
	ldr	r5, .L_47074
	ldr	r0, .L_47078
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
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_4707c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_47074:
	.4byte	gCurrentSprite
.L_47078:
	.4byte	sUnk_83CA3F0
.L_4707c:
	.4byte	0xFEFF


thumb_func_start func_8047080
func_8047080:
	push	{lr}
	ldr	r1, .L_47090
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8047030
	pop	{r0}
	bx	r0
.L_47090:
	.4byte	gCurrentSprite


thumb_func_start func_8047094
func_8047094:
	push	{lr}
	ldr	r1, .L_470a4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8047030
	pop	{r0}
	bx	r0
.L_470a4:
	.4byte	gCurrentSprite


thumb_func_start func_80470A8
func_80470A8:
	push	{lr}
	ldr	r2, .L_470dc
	ldr	r0, .L_470e0
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #3
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
.L_470dc:
	.4byte	gCurrentSprite
.L_470e0:
	.4byte	sUnk_83CA3F0


thumb_func_start func_80470E4
func_80470E4:
	push	{lr}
	ldr	r1, .L_470f4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80470A8
	pop	{r0}
	bx	r0
.L_470f4:
	.4byte	gCurrentSprite


thumb_func_start func_80470F8
func_80470F8:
	push	{lr}
	ldr	r1, .L_47108
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80470A8
	pop	{r0}
	bx	r0
.L_47108:
	.4byte	gCurrentSprite


thumb_func_start func_804710C
func_804710C:
	ldr	r2, .L_47134
	ldr	r0, .L_47138
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
.L_47134:
	.4byte	gCurrentSprite
.L_47138:
	.4byte	sUnk_83CA318


thumb_func_start func_804713C
func_804713C:
	push	{lr}
	ldr	r1, .L_4714c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_804710C
	pop	{r0}
	bx	r0
.L_4714c:
	.4byte	gCurrentSprite


thumb_func_start func_8047150
func_8047150:
	push	{lr}
	ldr	r1, .L_47160
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_804710C
	pop	{r0}
	bx	r0
.L_47160:
	.4byte	gCurrentSprite


thumb_func_start func_8047164
func_8047164:
	ldr	r1, .L_47180
	ldr	r0, .L_47184
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
.L_47180:
	.4byte	gCurrentSprite
.L_47184:
	.4byte	sUnk_83CA270


thumb_func_start func_8047188
func_8047188:
	push	{lr}
	ldr	r1, .L_47198
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8047164
	pop	{r0}
	bx	r0
.L_47198:
	.4byte	gCurrentSprite


thumb_func_start func_804719C
func_804719C:
	push	{lr}
	ldr	r1, .L_471ac
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8047164
	pop	{r0}
	bx	r0
.L_471ac:
	.4byte	gCurrentSprite


thumb_func_start func_80471B0
func_80471B0:
	ldr	r1, .L_471c0
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_471c8
	ldr	r0, .L_471c4
	str	r0, [r2, #4]
	b	.L_471ce
.L_471c0:
	.4byte	gCurrentSprite
.L_471c4:
	.4byte	sUnk_83CA300
.L_471c8:
	ldr	r0, .L_471f0
	str	r0, [r2, #4]
	add	r1, r2, #0
.L_471ce:
	add	r1, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_471f4
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_471f0:
	.4byte	sUnk_83CA2E8
.L_471f4:
	.4byte	0xFEFF


thumb_func_start func_80471F8
func_80471F8:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8047204
func_8047204:
	ldr	r2, .L_47228
	ldr	r0, .L_4722c
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
	bx	lr
	.align	2, 0
.L_47228:
	.4byte	gCurrentSprite
.L_4722c:
	.4byte	sUnk_83CA270


thumb_func_start func_8047230
func_8047230:
	push	{lr}
	ldr	r1, .L_47240
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8047204
	pop	{r0}
	bx	r0
.L_47240:
	.4byte	gCurrentSprite


thumb_func_start func_8047244
func_8047244:
	push	{lr}
	ldr	r1, .L_47254
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8047204
	pop	{r0}
	bx	r0
.L_47254:
	.4byte	gCurrentSprite


thumb_func_start func_8047258
func_8047258:
	ldr	r0, .L_47278
	ldr	r1, .L_4727c
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #15
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_47278:
	.4byte	gCurrentSprite
.L_4727c:
	.4byte	sUnk_83CA318


thumb_func_start func_8047280
func_8047280:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_472b8
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_47302
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_472bc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_472c0
	mov	r0, #29
	b	.L_47304
.L_472b8:
	.4byte	gCurrentSprite
.L_472bc:
	.4byte	gSpriteCollisionTileType
.L_472c0:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_472ec
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_472f0
	cmp	r1, r0
	bne	.L_472f4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_47306
	.align	2, 0
.L_472ec:
	.4byte	sUnk_8352B18
.L_472f0:
	.4byte	0x7FFF
.L_472f4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_47306
.L_47302:
	mov	r0, #27
.L_47304:
	strb	r0, [r4, #28]
.L_47306:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804730C
func_804730C:
	ldr	r1, .L_4731c
	ldr	r0, .L_47320
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_4731c:
	.4byte	gCurrentSprite
.L_47320:
	.4byte	sUnk_83CA270


thumb_func_start func_8047324
func_8047324:
	push	{lr}
	ldr	r1, .L_47334
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_804730C
	pop	{r0}
	bx	r0
.L_47334:
	.4byte	gCurrentSprite


thumb_func_start func_8047338
func_8047338:
	push	{lr}
	ldr	r1, .L_47348
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_804730C
	pop	{r0}
	bx	r0
.L_47348:
	.4byte	gCurrentSprite


thumb_func_start func_804734C
func_804734C:
	ldr	r1, .L_47360
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_47364
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_47360:
	.4byte	gCurrentSprite
.L_47364:
	.4byte	sUnk_83CA270


thumb_func_start func_8047368
func_8047368:
	push	{lr}
	ldr	r1, .L_47378
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_804734C
	pop	{r0}
	bx	r0
.L_47378:
	.4byte	gCurrentSprite


thumb_func_start func_804737C
func_804737C:
	push	{lr}
	ldr	r1, .L_4738c
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_804734C
	pop	{r0}
	bx	r0
.L_4738c:
	.4byte	gCurrentSprite


thumb_func_start func_8047390
func_8047390:
	push	{r4, lr}
	ldr	r0, .L_473f8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_473fc
	and	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r4, #34	@ 0x22
	mov	r0, #8
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #24
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #20
	strb	r0, [r4, #0]
	ldr	r0, .L_47400
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #15
	strb	r0, [r4, #30]
	mov	r0, #1
	strb	r0, [r4, #26]
	strb	r1, [r4, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_473f8:
	.4byte	gCurrentSprite
.L_473fc:
	.4byte	0xFFFB
.L_47400:
	.4byte	sUnk_83CA430


thumb_func_start func_8047404
func_8047404:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_47478
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	ldr	r0, .L_4747c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_474f4
	ldr	r0, .L_47480
	ldrb	r1, [r0, #0]
	mov	r5, #15
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_474f4
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_4744a
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_47484
	ldrb	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_474f4
.L_4744a:
	ldr	r2, .L_47478
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_47488
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_4748c
	add	r5, r2, #0
	cmp	r1, r0
	bne	.L_47490
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r5, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_4749a
	.align	2, 0
.L_47478:
	.4byte	gCurrentSprite
.L_4747c:
	.4byte	gUnk_30000A0
.L_47480:
	.4byte	gSpriteCollisionResult
.L_47484:
	.4byte	gSpriteCollisionTileType
.L_47488:
	.4byte	sUnk_83CA47E
.L_4748c:
	.4byte	0x7FFF
.L_47490:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r4
.L_4749a:
	strh	r0, [r5, #8]
	add	r4, r5, #0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_474d4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_474d0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_474f4
	ldrh	r0, [r4, #10]
	add	r0, #8
	strh	r0, [r4, #10]
	b	.L_47506
.L_474d0:
	.4byte	gSpriteCollisionTileType
.L_474d4:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_474fc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_47500
.L_474f4:
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #28]
	b	.L_47506
	.align	2, 0
.L_474fc:
	.4byte	gSpriteCollisionTileType
.L_47500:
	ldrh	r0, [r5, #10]
	sub	r0, #8
	strh	r0, [r5, #10]
.L_47506:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804750C
func_804750C:
	ldr	r0, .L_4751c
	mov	r2, #0
	mov	r1, #52	@ 0x34
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4751c:
	.4byte	gCurrentSprite


thumb_func_start func_8047520
func_8047520:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_4754c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_47550
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_47554
	cmp	r1, r0
	bne	.L_47558
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_47562
.L_4754c:
	.4byte	gCurrentSprite
.L_47550:
	.4byte	sSpriteFallingOffscreenYVelocity
.L_47554:
	.4byte	0x7FFF
.L_47558:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_47562:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #8
	strh	r0, [r2, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8047570
func_8047570:
	ldr	r0, .L_47580
	mov	r2, #0
	mov	r1, #54	@ 0x36
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_47580:
	.4byte	gCurrentSprite


thumb_func_start func_8047584
func_8047584:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_475b0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_475b4
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_475b8
	cmp	r1, r0
	bne	.L_475bc
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_475c6
.L_475b0:
	.4byte	gCurrentSprite
.L_475b4:
	.4byte	sSpriteFallingOffscreenYVelocity
.L_475b8:
	.4byte	0x7FFF
.L_475bc:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_475c6:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	sub	r0, #8
	strh	r0, [r2, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80475D4
func_80475D4:
	ldr	r1, .L_475dc
	mov	r0, #0
	strh	r0, [r1, #0]
	bx	lr
.L_475dc:
	.4byte	gCurrentSprite


thumb_func_start SpriteRingosuki
SpriteRingosuki:
	push	{lr}
	ldr	r2, .L_47608
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_475f4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_475f4:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_475fc
	b	.L_4798e
.L_475fc:
	lsl	r0, r0, #2
	ldr	r1, .L_4760c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_47608:
	.4byte	gCurrentSprite
.L_4760c:
	.4byte	.L_47610
.L_47610:
	.4byte	.L_477e0
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_477e6
	.4byte	.L_477ea
	.4byte	.L_477f0
	.4byte	.L_477f4
	.4byte	.L_4798e
	.4byte	.L_477f4
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_47818
	.4byte	.L_4781c
	.4byte	.L_47822
	.4byte	.L_47826
	.4byte	.L_4782c
	.4byte	.L_47830
	.4byte	.L_47836
	.4byte	.L_4783a
	.4byte	.L_47840
	.4byte	.L_47844
	.4byte	.L_4784a
	.4byte	.L_4784e
	.4byte	.L_47854
	.4byte	.L_47858
	.4byte	.L_4785e
	.4byte	.L_47862
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_47868
	.4byte	.L_4786c
	.4byte	.L_47872
	.4byte	.L_47876
	.4byte	.L_4787c
	.4byte	.L_47880
	.4byte	.L_47886
	.4byte	.L_4788a
	.4byte	.L_47890
	.4byte	.L_478c8
	.4byte	.L_47896
	.4byte	.L_478aa
	.4byte	.L_4789c
	.4byte	.L_478a0
	.4byte	.L_478a6
	.4byte	.L_478aa
	.4byte	.L_478b0
	.4byte	.L_478b4
	.4byte	.L_478ba
	.4byte	.L_478be
	.4byte	.L_478c4
	.4byte	.L_478c8
	.4byte	.L_478ce
	.4byte	.L_478d2
	.4byte	.L_478d8
	.4byte	.L_478e8
	.4byte	.L_478de
	.4byte	.L_478f2
	.4byte	.L_478e4
	.4byte	.L_478e8
	.4byte	.L_478ee
	.4byte	.L_478f2
	.4byte	.L_478f8
	.4byte	.L_478fc
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_47840
	.4byte	.L_4784a
	.4byte	.L_47902
	.4byte	.L_47908
	.4byte	.L_4790e
	.4byte	.L_47914
	.4byte	.L_47926
	.4byte	.L_4792c
	.4byte	.L_4791a
	.4byte	.L_47920
	.4byte	.L_47932
	.4byte	.L_47936
	.4byte	.L_4795a
	.4byte	.L_4795e
	.4byte	.L_4793c
	.4byte	.L_47940
	.4byte	.L_47964
	.4byte	.L_47968
	.4byte	.L_47946
	.4byte	.L_4794a
	.4byte	.L_4796e
	.4byte	.L_47972
	.4byte	.L_47950
	.4byte	.L_47954
	.4byte	.L_47978
	.4byte	.L_4797c
	.4byte	.L_47982
	.4byte	.L_47988
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_4798e
	.4byte	.L_477fa
	.4byte	.L_477fe
	.4byte	.L_47804
	.4byte	.L_47808
	.4byte	.L_4780e
	.4byte	.L_47812
.L_477e0:
	bl	func_8046A6C
	b	.L_47992
.L_477e6:
	bl	func_8046AD4
.L_477ea:
	bl	func_8046AF4
	b	.L_47992
.L_477f0:
	bl	func_8046C5C
.L_477f4:
	bl	func_8046C7C
	b	.L_47992
.L_477fa:
	bl	func_8046D4C
.L_477fe:
	bl	func_8046D6C
	b	.L_47992
.L_47804:
	bl	func_8046DFC
.L_47808:
	bl	func_8046E24
	b	.L_47992
.L_4780e:
	bl	func_8046E84
.L_47812:
	bl	func_8046EA8
	b	.L_47992
.L_47818:
	bl	func_8046EE4
.L_4781c:
	bl	func_8023C94
	b	.L_47992
.L_47822:
	bl	func_8046F04
.L_47826:
	bl	func_8046F2C
	b	.L_47992
.L_4782c:
	bl	func_8046FE8
.L_47830:
	bl	func_8023D48
	b	.L_47992
.L_47836:
	bl	func_8047008
.L_4783a:
	bl	func_8023EE0
	b	.L_47992
.L_47840:
	bl	func_8047080
.L_47844:
	bl	SpriteUtilFallOffscreenRight
	b	.L_47992
.L_4784a:
	bl	func_8047094
.L_4784e:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_47992
.L_47854:
	bl	func_804713C
.L_47858:
	bl	SpriteUtilPushedRight
	b	.L_47992
.L_4785e:
	bl	func_8047150
.L_47862:
	bl	SpriteUtilPushedLeft
	b	.L_47992
.L_47868:
	bl	func_8047188
.L_4786c:
	bl	func_8024478
	b	.L_47992
.L_47872:
	bl	func_804719C
.L_47876:
	bl	func_802449C
	b	.L_47992
.L_4787c:
	bl	func_80244C0
.L_47880:
	bl	func_80244E0
	b	.L_47992
.L_47886:
	bl	func_80471B0
.L_4788a:
	bl	SpriteUtilDieAfterDelay
	b	.L_47992
.L_47890:
	bl	func_8046D24
	b	.L_478c8
.L_47896:
	bl	func_8046D38
	b	.L_478aa
.L_4789c:
	bl	func_8024688
.L_478a0:
	bl	func_80246B8
	b	.L_47992
.L_478a6:
	bl	func_802473C
.L_478aa:
	bl	func_802476C
	b	.L_47992
.L_478b0:
	bl	func_80247F0
.L_478b4:
	bl	func_8024820
	b	.L_47992
.L_478ba:
	bl	func_80248A4
.L_478be:
	bl	func_80248D4
	b	.L_47992
.L_478c4:
	bl	func_8024958
.L_478c8:
	bl	func_8024988
	b	.L_47992
.L_478ce:
	bl	func_8024A0C
.L_478d2:
	bl	func_8024A3C
	b	.L_47992
.L_478d8:
	bl	func_8024AC0
	b	.L_478e8
.L_478de:
	bl	func_8024BEC
	b	.L_478f2
.L_478e4:
	bl	func_8047230
.L_478e8:
	bl	func_8024AD4
	b	.L_47992
.L_478ee:
	bl	func_8047244
.L_478f2:
	bl	func_8024C00
	b	.L_47992
.L_478f8:
	bl	func_8047258
.L_478fc:
	bl	func_8047280
	b	.L_47992
.L_47902:
	bl	func_8047324
	b	.L_47992
.L_47908:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_47992
.L_4790e:
	bl	func_8047338
	b	.L_47992
.L_47914:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_47992
.L_4791a:
	bl	func_8047368
	b	.L_47992
.L_47920:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_47992
.L_47926:
	bl	func_804737C
	b	.L_47992
.L_4792c:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_47992
.L_47932:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_47936:
	bl	SpriteUtilThrownLeftSoft
	b	.L_47992
.L_4793c:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_47940:
	bl	SpriteUtilThrownLeftHard
	b	.L_47992
.L_47946:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_4794a:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_47992
.L_47950:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_47954:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_47992
.L_4795a:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_4795e:
	bl	SpriteUtilThrownRightSoft
	b	.L_47992
.L_47964:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_47968:
	bl	SpriteUtilThrownRightHard
	b	.L_47992
.L_4796e:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_47972:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_47992
.L_47978:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_4797c:
	bl	SpriteUtilThrownUpRightHard
	b	.L_47992
.L_47982:
	bl	func_80470F8
	b	.L_47992
.L_47988:
	bl	func_80470E4
	b	.L_47992
.L_4798e:
	bl	func_80471F8
.L_47992:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownB2
SpriteUnknownB2:
	push	{lr}
	ldr	r0, .L_479b0
	ldrb	r0, [r0, #28]
	cmp	r0, #54	@ 0x36
	bls	.L_479a4
	b	.L_47ace
.L_479a4:
	lsl	r0, r0, #2
	ldr	r1, .L_479b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_479b0:
	.4byte	gCurrentSprite
.L_479b4:
	.4byte	.L_479b8
.L_479b8:
	.4byte	.L_47a94
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47a9a
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47aa0
	.4byte	.L_47ace
	.4byte	.L_47ab4
	.4byte	.L_47ace
	.4byte	.L_47aa0
	.4byte	.L_47ace
	.4byte	.L_47ab4
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ace
	.4byte	.L_47ac8
	.4byte	.L_47ace
	.4byte	.L_47aa0
	.4byte	.L_47aa4
	.4byte	.L_47ab4
	.4byte	.L_47ab8
.L_47a94:
	bl	func_8047390
	b	.L_47ad2
.L_47a9a:
	bl	func_8047404
	b	.L_47ad2
.L_47aa0:
	bl	func_804750C
.L_47aa4:
	ldr	r1, .L_47ab0
	mov	r0, #1
	strb	r0, [r1, #31]
	bl	func_8047520
	b	.L_47ad2
.L_47ab0:
	.4byte	gCurrentSprite
.L_47ab4:
	bl	func_8047570
.L_47ab8:
	ldr	r1, .L_47ac4
	mov	r0, #1
	strb	r0, [r1, #31]
	bl	func_8047584
	b	.L_47ad2
.L_47ac4:
	.4byte	gCurrentSprite
.L_47ac8:
	bl	func_80475D4
	b	.L_47ad2
.L_47ace:
	bl	SpriteUtilDie
.L_47ad2:
	pop	{r0}
	bx	r0
	.align	2, 0
