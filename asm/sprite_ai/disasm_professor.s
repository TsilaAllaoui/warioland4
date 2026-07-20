.include "macros.s.inc"


thumb_func_start func_8069D54
func_8069D54:
	push	{r4, lr}
	ldr	r2, .L_69dc0
	add	r1, r2, #0
	add	r1, #32
	mov	r3, #0
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r4, #16
	strb	r4, [r0, #0]
	add	r1, #3
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	ldr	r0, .L_69dc4
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_69dd0
	mov	r0, #255	@ 0xff
	strb	r0, [r2, #31]
	ldr	r0, .L_69dc8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	mov	r0, #30
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #30]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_69dcc
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #13
	strb	r0, [r2, #27]
	b	.L_69e1c
	.align	2, 0
.L_69dc0:
	.4byte	gCurrentSprite
.L_69dc4:
	.4byte	gUnk_300001B
.L_69dc8:
	.4byte	sUnk_83F1AF0
.L_69dcc:
	.4byte	0xFFFB
.L_69dd0:
	strb	r4, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #30]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_69df0
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #4
	beq	.L_69e08
	cmp	r0, #4
	bgt	.L_69df4
	cmp	r0, #2
	beq	.L_69dfe
	b	.L_69e14
.L_69df0:
	.4byte	gScoreDigits
.L_69df4:
	cmp	r0, #7
	beq	.L_69dfe
	cmp	r0, #9
	beq	.L_69e08
	b	.L_69e14
.L_69dfe:
	ldr	r0, .L_69e04
	str	r0, [r2, #4]
	b	.L_69e1c
.L_69e04:
	.4byte	sUnk_83F1D10
.L_69e08:
	ldr	r0, .L_69e10
	str	r0, [r2, #4]
	b	.L_69e1c
	.align	2, 0
.L_69e10:
	.4byte	sUnk_83F1D60
.L_69e14:
	ldr	r0, .L_69e24
	str	r0, [r2, #4]
	bl	SpriteUtilTurnTowardWario
.L_69e1c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_69e24:
	.4byte	sUnk_83F1AA0


thumb_func_start func_8069E28
func_8069E28:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_69e64
	ldrh	r1, [r4, #0]
	mov	r5, #64	@ 0x40
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_69e98
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #48	@ 0x30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_69e68
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_69e70
	ldrh	r1, [r4, #0]
	ldr	r0, .L_69e6c
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_69f50
.L_69e64:
	.4byte	gCurrentSprite
.L_69e68:
	.4byte	gSpriteCollisionTileType
.L_69e6c:
	.4byte	0xFFBF
.L_69e70:
	ldr	r0, .L_69e94
	ldrb	r0, [r0, #0]
	mov	r1, #63	@ 0x3f
	and	r1, r0
	cmp	r1, #0
	bne	.L_69eea
	ldrh	r3, [r4, #8]
	sub	r3, #60	@ 0x3c
	ldrh	r0, [r4, #10]
	add	r0, #16
	str	r0, [sp, #0]
	str	r1, [sp, #4]
	mov	r0, #250	@ 0xfa
	mov	r1, #0
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_69eea
.L_69e94:
	.4byte	gMainTimer
.L_69e98:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #48	@ 0x30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_69ec4
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_69ec8
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_69f50
	.align	2, 0
.L_69ec4:
	.4byte	gSpriteCollisionTileType
.L_69ec8:
	ldr	r0, .L_69f2c
	ldrb	r1, [r0, #0]
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #0
	bne	.L_69eea
	ldrh	r3, [r4, #8]
	sub	r3, #60	@ 0x3c
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #250	@ 0xfa
	mov	r1, #0
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
.L_69eea:
	ldr	r2, .L_69f30
	ldr	r0, [r2, #20]
	ldr	r1, .L_69f34
	and	r0, r1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #9
	cmp	r0, r1
	bne	.L_69f02
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
.L_69f02:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_69f38
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_69f3c
	cmp	r1, r0
	bne	.L_69f40
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_69f4a
	.align	2, 0
.L_69f2c:
	.4byte	gMainTimer
.L_69f30:
	.4byte	gCurrentSprite
.L_69f34:
	.4byte	0xFFFFFF
.L_69f38:
	.4byte	sUnk_83F1E28
.L_69f3c:
	.4byte	0x7FFF
.L_69f40:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_69f4a:
	strh	r0, [r2, #8]
	bl	SpriteUtilMoveForward1Subpixel
.L_69f50:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8069F58
func_8069F58:
	ldr	r1, .L_69f70
	ldr	r0, .L_69f74
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_69f70:
	.4byte	gCurrentSprite
.L_69f74:
	.4byte	sUnk_83F1AA0


thumb_func_start func_8069F78
func_8069F78:
	push	{r4, r5, r6, lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_69fac
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_69fe0
	ldr	r3, .L_69fb0
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_69fb4
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_69fc8
.L_69fac:
	.4byte	gSpriteCollisionResult
.L_69fb0:
	.4byte	gCurrentSprite
.L_69fb4:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_69fc8:
	ldr	r0, .L_69fd8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6a094
	ldr	r1, .L_69fdc
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_6a0a2
.L_69fd8:
	.4byte	gSpriteCollisionTileType
.L_69fdc:
	.4byte	gCurrentSprite
.L_69fe0:
	ldr	r4, .L_6a030
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a038
	mov	r6, #240	@ 0xf0
	add	r0, r6, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_6a094
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r2, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_6a094
	ldrh	r0, [r4, #8]
	add	r1, #70	@ 0x46
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_6a034
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a088
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #70	@ 0x46
	b	.L_6a076
	.align	2, 0
.L_6a030:
	.4byte	gCurrentSprite
.L_6a034:
	.4byte	gSpriteCollisionTileType
.L_6a038:
	mov	r6, #240	@ 0xf0
	add	r0, r6, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_6a094
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r2, #0]
	cmp	r0, r2
	bcs	.L_6a094
	ldrh	r0, [r4, #8]
	sub	r1, #70	@ 0x46
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_6a090
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a088
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #70	@ 0x46
.L_6a076:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a094
.L_6a088:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_6a0a2
	.align	2, 0
.L_6a090:
	.4byte	gSpriteCollisionTileType
.L_6a094:
	ldr	r0, .L_6a0a8
	ldr	r1, [r0, #4]
	ldr	r0, .L_6a0ac
	cmp	r1, r0
	bne	.L_6a0a2
	bl	SpriteUtilMoveForward1Subpixel
.L_6a0a2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_6a0a8:
	.4byte	gCurrentSprite
.L_6a0ac:
	.4byte	sUnk_83F1AA0


thumb_func_start func_806A0B0
func_806A0B0:
	ldr	r0, .L_6a0c8
	ldr	r1, .L_6a0cc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #22
	strb	r1, [r0, #0]
	bx	lr
.L_6a0c8:
	.4byte	gCurrentSprite
.L_6a0cc:
	.4byte	sUnk_83F1AD8


thumb_func_start func_806A0D0
func_806A0D0:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_6a0ec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6a0f4
	ldr	r1, .L_6a0f0
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_6a144
	.align	2, 0
.L_6a0ec:
	.4byte	gSpriteCollisionResult
.L_6a0f0:
	.4byte	gCurrentSprite
.L_6a0f4:
	ldr	r2, .L_6a130
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
	bne	.L_6a144
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_6a138
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_6a134
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #21
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_6a144
.L_6a130:
	.4byte	gCurrentSprite
.L_6a134:
	.4byte	sUnk_83F1AD8
.L_6a138:
	ldr	r0, .L_6a148
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_6a144:
	pop	{r0}
	bx	r0
.L_6a148:
	.4byte	sUnk_83F1AA0


thumb_func_start func_806A14C
func_806A14C:
	ldr	r2, .L_6a174
	ldr	r0, .L_6a178
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	beq	.L_6a172
	mov	r0, #5
	strb	r0, [r2, #30]
.L_6a172:
	bx	lr
.L_6a174:
	.4byte	gCurrentSprite
.L_6a178:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A17C
func_806A17C:
	push	{lr}
	ldr	r0, .L_6a194
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	mov	r1, #8
	strb	r1, [r2, #0]
	mov	r1, #52	@ 0x34
	strb	r1, [r0, #28]
	bl	func_806A14C
	pop	{r0}
	bx	r0
.L_6a194:
	.4byte	gCurrentSprite


thumb_func_start func_806A198
func_806A198:
	push	{lr}
	ldr	r0, .L_6a1b0
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	mov	r1, #8
	strb	r1, [r2, #0]
	mov	r1, #54	@ 0x36
	strb	r1, [r0, #28]
	bl	func_806A14C
	pop	{r0}
	bx	r0
.L_6a1b0:
	.4byte	gCurrentSprite


thumb_func_start func_806A1B4
func_806A1B4:
	push	{r4, lr}
	ldr	r4, .L_6a1dc
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r0, [r4, #28]
	cmp	r0, #106	@ 0x6a
	bne	.L_6a1e0
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	b	.L_6a1e6
	.align	2, 0
.L_6a1dc:
	.4byte	gCurrentSprite
.L_6a1e0:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
.L_6a1e6:
	strb	r0, [r1, #0]
	ldr	r1, .L_6a1f8
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_806A14C
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6a1f8:
	.4byte	gCurrentSprite


thumb_func_start func_806A1FC
func_806A1FC:
	push	{r4, lr}
	ldr	r4, .L_6a224
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r0, [r4, #28]
	cmp	r0, #105	@ 0x69
	bne	.L_6a228
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	b	.L_6a22e
	.align	2, 0
.L_6a224:
	.4byte	gCurrentSprite
.L_6a228:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #12
.L_6a22e:
	strb	r0, [r1, #0]
	ldr	r1, .L_6a240
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_806A14C
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6a240:
	.4byte	gCurrentSprite


thumb_func_start func_806A244
func_806A244:
	ldr	r0, .L_6a25c
	ldr	r1, .L_6a260
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	bx	lr
.L_6a25c:
	.4byte	gCurrentSprite
.L_6a260:
	.4byte	sUnk_83F1BC0


thumb_func_start func_806A264
func_806A264:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_6a280
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6a288
	ldr	r1, .L_6a284
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_6a29e
	.align	2, 0
.L_6a280:
	.4byte	gSpriteCollisionResult
.L_6a284:
	.4byte	gCurrentSprite
.L_6a288:
	ldr	r2, .L_6a2a4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_6a29e
	mov	r0, #15
	strb	r0, [r2, #28]
.L_6a29e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6a2a4:
	.4byte	gCurrentSprite


thumb_func_start func_806A2A8
func_806A2A8:
	ldr	r2, .L_6a2d0
	ldr	r0, .L_6a2d4
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #26
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_6a2d0:
	.4byte	gCurrentSprite
.L_6a2d4:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A2D8
func_806A2D8:
	ldr	r0, .L_6a2f0
	ldr	r1, .L_6a2f4
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
.L_6a2f0:
	.4byte	gCurrentSprite
.L_6a2f4:
	.4byte	sUnk_83F1BD8


thumb_func_start func_806A2F8
func_806A2F8:
	ldr	r1, .L_6a318
	ldr	r0, .L_6a31c
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
.L_6a318:
	.4byte	gCurrentSprite
.L_6a31c:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A320
func_806A320:
	ldr	r2, .L_6a348
	ldr	r0, .L_6a34c
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
.L_6a348:
	.4byte	gCurrentSprite
.L_6a34c:
	.4byte	sUnk_83F1AD8


thumb_func_start func_806A350
func_806A350:
	push	{lr}
	ldr	r1, .L_6a360
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_806A320
	pop	{r0}
	bx	r0
.L_6a360:
	.4byte	gCurrentSprite


thumb_func_start func_806A364
func_806A364:
	push	{lr}
	ldr	r1, .L_6a374
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_806A320
	pop	{r0}
	bx	r0
.L_6a374:
	.4byte	gCurrentSprite


thumb_func_start func_806A378
func_806A378:
	ldr	r1, .L_6a394
	ldr	r0, .L_6a398
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
.L_6a394:
	.4byte	gCurrentSprite
.L_6a398:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A39C
func_806A39C:
	push	{lr}
	ldr	r1, .L_6a3ac
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_806A378
	pop	{r0}
	bx	r0
.L_6a3ac:
	.4byte	gCurrentSprite


thumb_func_start func_806A3B0
func_806A3B0:
	push	{lr}
	ldr	r1, .L_6a3c0
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_806A378
	pop	{r0}
	bx	r0
.L_6a3c0:
	.4byte	gCurrentSprite


thumb_func_start func_806A3C4
func_806A3C4:
	push	{lr}
	mov	r0, #26
	bl	m4aSongNumStart
	ldr	r0, .L_6a3e0
	ldr	r1, .L_6a3e4
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_6a3e8
	bl	func_806A17C
	b	.L_6a3ec
	.align	2, 0
.L_6a3e0:
	.4byte	gCurrentSprite
.L_6a3e4:
	.4byte	gWarioData
.L_6a3e8:
	bl	func_806A198
.L_6a3ec:
	pop	{r0}
	bx	r0


thumb_func_start func_806A3F0
func_806A3F0:
	ldr	r2, .L_6a414
	ldr	r0, .L_6a418
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
.L_6a414:
	.4byte	gCurrentSprite
.L_6a418:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A41C
func_806A41C:
	push	{lr}
	ldr	r1, .L_6a42c
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_806A3F0
	pop	{r0}
	bx	r0
.L_6a42c:
	.4byte	gCurrentSprite


thumb_func_start func_806A430
func_806A430:
	push	{lr}
	ldr	r1, .L_6a440
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_806A3F0
	pop	{r0}
	bx	r0
.L_6a440:
	.4byte	gCurrentSprite


thumb_func_start func_806A444
func_806A444:
	ldr	r0, .L_6a464
	ldr	r1, .L_6a468
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_6a464:
	.4byte	gCurrentSprite
.L_6a468:
	.4byte	sUnk_83F1BC0


thumb_func_start func_806A46C
func_806A46C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_6a4a4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_6a4ee
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_6a4a8
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a4ac
	mov	r0, #29
	b	.L_6a4f0
.L_6a4a4:
	.4byte	gCurrentSprite
.L_6a4a8:
	.4byte	gSpriteCollisionTileType
.L_6a4ac:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_6a4d8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_6a4dc
	cmp	r1, r0
	bne	.L_6a4e0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_6a4f2
	.align	2, 0
.L_6a4d8:
	.4byte	sUnk_8352B18
.L_6a4dc:
	.4byte	0x7FFF
.L_6a4e0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_6a4f2
.L_6a4ee:
	mov	r0, #27
.L_6a4f0:
	strb	r0, [r4, #28]
.L_6a4f2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_806A4F8
func_806A4F8:
	ldr	r1, .L_6a508
	ldr	r0, .L_6a50c
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_6a508:
	.4byte	gCurrentSprite
.L_6a50c:
	.4byte	sUnk_83F1AF0


thumb_func_start func_806A510
func_806A510:
	push	{lr}
	ldr	r1, .L_6a520
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_806A4F8
	pop	{r0}
	bx	r0
.L_6a520:
	.4byte	gCurrentSprite


thumb_func_start func_806A524
func_806A524:
	push	{lr}
	ldr	r1, .L_6a534
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_806A4F8
	pop	{r0}
	bx	r0
.L_6a534:
	.4byte	gCurrentSprite


thumb_func_start func_806A538
func_806A538:
	ldr	r2, .L_6a560
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r0, .L_6a564
	str	r0, [r2, #4]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #22]
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r0, r3, #0
	orr	r0, r1
	cmp	r0, #0
	beq	.L_6a55e
	ldr	r0, .L_6a568
	and	r0, r1
	strh	r0, [r2, #0]
.L_6a55e:
	bx	lr
.L_6a560:
	.4byte	gCurrentSprite
.L_6a564:
	.4byte	sUnk_83F1AF0
.L_6a568:
	.4byte	0xFDFF


thumb_func_start func_806A56C
func_806A56C:
	push	{lr}
	ldr	r1, .L_6a57c
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_806A538
	pop	{r0}
	bx	r0
.L_6a57c:
	.4byte	gCurrentSprite


thumb_func_start func_806A580
func_806A580:
	push	{lr}
	ldr	r1, .L_6a590
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_806A538
	pop	{r0}
	bx	r0
.L_6a590:
	.4byte	gCurrentSprite


thumb_func_start SpriteProfessor
SpriteProfessor:
	push	{r4, r5, lr}
	ldr	r2, .L_6a5b0
	ldrb	r1, [r2, #29]
	mov	r0, #15
	and	r0, r1
	add	r3, r2, #0
	cmp	r0, #2
	bne	.L_6a5b4
	ldrb	r0, [r3, #28]
	cmp	r0, #48	@ 0x30
	bne	.L_6a5b4
	bl	func_8069E28
	b	.L_6ac00
.L_6a5b0:
	.4byte	gCurrentSprite
.L_6a5b4:
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a5ce
	ldr	r0, .L_6a5e0
	ldr	r0, [r0, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_6a5ce
	b	.L_6ac00
.L_6a5ce:
	ldrb	r0, [r3, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_6a5d6
	b	.L_6ab44
.L_6a5d6:
	lsl	r0, r0, #2
	ldr	r1, .L_6a5e4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_6a5e0:
	.4byte	gUnk_3000BEC
.L_6a5e4:
	.4byte	.L_6a5e8
.L_6a5e8:
	.4byte	.L_6a798
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6a79e
	.4byte	.L_6a7a2
	.4byte	.L_6a7a8
	.4byte	.L_6a7ac
	.4byte	.L_6ab44
	.4byte	.L_6a7ac
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6a7b2
	.4byte	.L_6a7b6
	.4byte	.L_6a7bc
	.4byte	.L_6a904
	.4byte	.L_6a7c2
	.4byte	.L_6a7c6
	.4byte	.L_6a7e0
	.4byte	.L_6a7e4
	.4byte	.L_6a866
	.4byte	.L_6ab44
	.4byte	.L_6a870
	.4byte	.L_6ab44
	.4byte	.L_6a7fc
	.4byte	.L_6a800
	.4byte	.L_6a806
	.4byte	.L_6a80a
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6a810
	.4byte	.L_6a814
	.4byte	.L_6a81a
	.4byte	.L_6a81e
	.4byte	.L_6a824
	.4byte	.L_6a846
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6a87a
	.4byte	.L_6a86a
	.4byte	.L_6a880
	.4byte	.L_6a874
	.4byte	.L_6a886
	.4byte	.L_6a88a
	.4byte	.L_6a890
	.4byte	.L_6a894
	.4byte	.L_6a89a
	.4byte	.L_6a874
	.4byte	.L_6a8a0
	.4byte	.L_6a8a4
	.4byte	.L_6a8aa
	.4byte	.L_6a8ae
	.4byte	.L_6a8b4
	.4byte	.L_6a86a
	.4byte	.L_6a8ba
	.4byte	.L_6a8ca
	.4byte	.L_6a8c0
	.4byte	.L_6a8e8
	.4byte	.L_6a8c6
	.4byte	.L_6a8ca
	.4byte	.L_6a8e4
	.4byte	.L_6a8e8
	.4byte	.L_6a900
	.4byte	.L_6a904
	.4byte	.L_6ab44
	.4byte	.L_6ab44
	.4byte	.L_6a866
	.4byte	.L_6a870
	.4byte	.L_6a90a
	.4byte	.L_6a910
	.4byte	.L_6a916
	.4byte	.L_6a91c
	.4byte	.L_6a940
	.4byte	.L_6a946
	.4byte	.L_6a922
	.4byte	.L_6a928
	.4byte	.L_6a960
	.4byte	.L_6a964
	.4byte	.L_6aa08
	.4byte	.L_6aa0c
	.4byte	.L_6a97c
	.4byte	.L_6a998
	.4byte	.L_6aa24
	.4byte	.L_6aa40
	.4byte	.L_6a9b4
	.4byte	.L_6a9b8
	.4byte	.L_6aa5c
	.4byte	.L_6aa60
	.4byte	.L_6a9d0
	.4byte	.L_6a9ec
	.4byte	.L_6aa78
	.4byte	.L_6aa94
	.4byte	.L_6a870
	.4byte	.L_6a866
	.4byte	.L_6aab0
.L_6a798:
	bl	func_8069D54
	b	.L_6ab48
.L_6a79e:
	bl	func_8069F58
.L_6a7a2:
	bl	func_8069F78
	b	.L_6ab48
.L_6a7a8:
	bl	func_806A0B0
.L_6a7ac:
	bl	func_806A0D0
	b	.L_6ab48
.L_6a7b2:
	bl	func_806A244
.L_6a7b6:
	bl	func_806A264
	b	.L_6ab48
.L_6a7bc:
	bl	func_806A2A8
	b	.L_6ab48
.L_6a7c2:
	bl	func_806A2D8
.L_6a7c6:
	ldr	r2, .L_6a7d8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a7dc
	and	r0, r1
	strh	r0, [r2, #0]
	bl	func_8023D48
	b	.L_6ab48
	.align	2, 0
.L_6a7d8:
	.4byte	gCurrentSprite
.L_6a7dc:
	.4byte	0xF7FF
.L_6a7e0:
	bl	func_806A2F8
.L_6a7e4:
	ldr	r2, .L_6a7f4
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a7f8
	and	r0, r1
	strh	r0, [r2, #0]
	bl	func_8023EE0
	b	.L_6ab48
.L_6a7f4:
	.4byte	gCurrentSprite
.L_6a7f8:
	.4byte	0xF7FF
.L_6a7fc:
	bl	func_806A350
.L_6a800:
	bl	SpriteUtilPushedRight
	b	.L_6ab48
.L_6a806:
	bl	func_806A364
.L_6a80a:
	bl	SpriteUtilPushedLeft
	b	.L_6ab48
.L_6a810:
	bl	func_806A39C
.L_6a814:
	bl	func_8024478
	b	.L_6ab48
.L_6a81a:
	bl	func_806A3B0
.L_6a81e:
	bl	func_802449C
	b	.L_6ab48
.L_6a824:
	bl	func_80244C0
	ldr	r2, .L_6a858
	ldrb	r1, [r2, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_6a860
	ldr	r0, .L_6a85c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
.L_6a846:
	ldr	r0, .L_6a858
	ldrb	r1, [r0, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_6a860
	bl	func_8069E28
	b	.L_6ab48
.L_6a858:
	.4byte	gCurrentSprite
.L_6a85c:
	.4byte	sUnk_83F1D38
.L_6a860:
	bl	func_80244E0
	b	.L_6ab48
.L_6a866:
	bl	func_806A1B4
.L_6a86a:
	bl	func_8024A3C
	b	.L_6ab48
.L_6a870:
	bl	func_806A1FC
.L_6a874:
	bl	func_8024820
	b	.L_6ab48
.L_6a87a:
	bl	func_806A17C
	b	.L_6a86a
.L_6a880:
	bl	func_806A198
	b	.L_6a874
.L_6a886:
	bl	func_8024688
.L_6a88a:
	bl	func_80246B8
	b	.L_6ab48
.L_6a890:
	bl	func_802473C
.L_6a894:
	bl	func_802476C
	b	.L_6ab48
.L_6a89a:
	bl	func_80247F0
	b	.L_6a874
.L_6a8a0:
	bl	func_80248A4
.L_6a8a4:
	bl	func_80248D4
	b	.L_6ab48
.L_6a8aa:
	bl	func_8024958
.L_6a8ae:
	bl	func_8024988
	b	.L_6ab48
.L_6a8b4:
	bl	func_8024A0C
	b	.L_6a86a
.L_6a8ba:
	bl	func_8024AC0
	b	.L_6a8ca
.L_6a8c0:
	bl	func_8024BEC
	b	.L_6a8e8
.L_6a8c6:
	bl	func_806A41C
.L_6a8ca:
	ldr	r2, .L_6a8dc
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a8e0
	and	r0, r1
	strh	r0, [r2, #0]
	bl	func_8024AD4
	b	.L_6ab48
	.align	2, 0
.L_6a8dc:
	.4byte	gCurrentSprite
.L_6a8e0:
	.4byte	0xF7FF
.L_6a8e4:
	bl	func_806A430
.L_6a8e8:
	ldr	r2, .L_6a8f8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a8fc
	and	r0, r1
	strh	r0, [r2, #0]
	bl	func_8024C00
	b	.L_6ab48
.L_6a8f8:
	.4byte	gCurrentSprite
.L_6a8fc:
	.4byte	0xF7FF
.L_6a900:
	bl	func_806A444
.L_6a904:
	bl	func_806A46C
	b	.L_6ab48
.L_6a90a:
	bl	func_806A510
	b	.L_6ab48
.L_6a910:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_6ab48
.L_6a916:
	bl	func_806A524
	b	.L_6ab48
.L_6a91c:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_6ab48
.L_6a922:
	bl	func_806A56C
	b	.L_6ab48
.L_6a928:
	ldr	r2, .L_6a938
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a93c
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilCarryingSpriteRight
	b	.L_6ab48
.L_6a938:
	.4byte	gCurrentSprite
.L_6a93c:
	.4byte	0xF7FF
.L_6a940:
	bl	func_806A580
	b	.L_6ab48
.L_6a946:
	ldr	r2, .L_6a958
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a95c
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_6ab48
	.align	2, 0
.L_6a958:
	.4byte	gCurrentSprite
.L_6a95c:
	.4byte	0xF7FF
.L_6a960:
	mov	r0, #90	@ 0x5a
	strb	r0, [r3, #28]
.L_6a964:
	ldr	r2, .L_6a974
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a978
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownLeftSoft
	b	.L_6ab48
.L_6a974:
	.4byte	gCurrentSprite
.L_6a978:
	.4byte	0xF7FF
.L_6a97c:
	mov	r2, #0
	mov	r0, #94	@ 0x5e
	strb	r0, [r3, #28]
	ldrb	r1, [r3, #29]
	mov	r0, #15
	and	r0, r1
	mov	r1, #16
	orr	r0, r1
	strb	r0, [r3, #29]
	ldr	r0, .L_6a9a8
	str	r0, [r3, #4]
	mov	r0, #0
	strh	r2, [r3, #20]
	strb	r0, [r3, #22]
.L_6a998:
	ldr	r2, .L_6a9ac
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a9b0
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownLeftHard
	b	.L_6ab48
.L_6a9a8:
	.4byte	sUnk_83F1B78
.L_6a9ac:
	.4byte	gCurrentSprite
.L_6a9b0:
	.4byte	0xF7FF
.L_6a9b4:
	mov	r0, #98	@ 0x62
	strb	r0, [r3, #28]
.L_6a9b8:
	ldr	r2, .L_6a9c8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6a9cc
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_6ab48
.L_6a9c8:
	.4byte	gCurrentSprite
.L_6a9cc:
	.4byte	0xF7FF
.L_6a9d0:
	mov	r2, #0
	mov	r0, #102	@ 0x66
	strb	r0, [r3, #28]
	ldrb	r1, [r3, #29]
	mov	r0, #15
	and	r0, r1
	mov	r1, #32
	orr	r0, r1
	strb	r0, [r3, #29]
	ldr	r0, .L_6a9fc
	str	r0, [r3, #4]
	mov	r0, #0
	strh	r2, [r3, #20]
	strb	r0, [r3, #22]
.L_6a9ec:
	ldr	r2, .L_6aa00
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6aa04
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownUpLeftHard
	b	.L_6ab48
.L_6a9fc:
	.4byte	sUnk_83F1B78
.L_6aa00:
	.4byte	gCurrentSprite
.L_6aa04:
	.4byte	0xF7FF
.L_6aa08:
	mov	r0, #92	@ 0x5c
	strb	r0, [r3, #28]
.L_6aa0c:
	ldr	r2, .L_6aa1c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6aa20
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownRightSoft
	b	.L_6ab48
.L_6aa1c:
	.4byte	gCurrentSprite
.L_6aa20:
	.4byte	0xF7FF
.L_6aa24:
	mov	r2, #0
	mov	r0, #96	@ 0x60
	strb	r0, [r3, #28]
	ldrb	r1, [r3, #29]
	mov	r0, #15
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r3, #29]
	ldr	r0, .L_6aa50
	str	r0, [r3, #4]
	mov	r0, #0
	strh	r2, [r3, #20]
	strb	r0, [r3, #22]
.L_6aa40:
	ldr	r2, .L_6aa54
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6aa58
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownRightHard
	b	.L_6ab48
.L_6aa50:
	.4byte	sUnk_83F1B30
.L_6aa54:
	.4byte	gCurrentSprite
.L_6aa58:
	.4byte	0xF7FF
.L_6aa5c:
	mov	r0, #100	@ 0x64
	strb	r0, [r3, #28]
.L_6aa60:
	ldr	r2, .L_6aa70
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6aa74
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownUpRightSoft
	b	.L_6ab48
.L_6aa70:
	.4byte	gCurrentSprite
.L_6aa74:
	.4byte	0xF7FF
.L_6aa78:
	mov	r2, #0
	mov	r0, #104	@ 0x68
	strb	r0, [r3, #28]
	ldrb	r1, [r3, #29]
	mov	r0, #15
	and	r0, r1
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r3, #29]
	ldr	r0, .L_6aaa4
	str	r0, [r3, #4]
	mov	r0, #0
	strh	r2, [r3, #20]
	strb	r0, [r3, #22]
.L_6aa94:
	ldr	r2, .L_6aaa8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6aaac
	and	r0, r1
	strh	r0, [r2, #0]
	bl	SpriteUtilThrownUpRightHard
	b	.L_6ab48
.L_6aaa4:
	.4byte	sUnk_83F1B30
.L_6aaa8:
	.4byte	gCurrentSprite
.L_6aaac:
	.4byte	0xF7FF
.L_6aab0:
	ldr	r4, .L_6aad4
	ldrb	r1, [r4, #29]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_6aad8
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r1, [r4, #29]
	mov	r0, #15
	and	r0, r1
	strb	r0, [r4, #29]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	b	.L_6ab36
	.align	2, 0
.L_6aad4:
	.4byte	gCurrentSprite
.L_6aad8:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_6aaf6
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r1, [r4, #29]
	mov	r0, #15
	and	r0, r1
	strb	r0, [r4, #29]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_6ab12
.L_6aaf6:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_6ab1a
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r1, [r4, #29]
	mov	r0, #15
	and	r0, r1
	strb	r0, [r4, #29]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_6ab12:
	strb	r0, [r1, #0]
	bl	func_8024AC0
	b	.L_6ab48
.L_6ab1a:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_6ab3e
	mov	r0, #26
	bl	m4aSongNumStart
	ldrb	r1, [r4, #29]
	mov	r0, #15
	and	r0, r1
	strb	r0, [r4, #29]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
.L_6ab36:
	strb	r0, [r1, #0]
	bl	func_8024BEC
	b	.L_6ab48
.L_6ab3e:
	bl	func_806A3C4
	b	.L_6ab48
.L_6ab44:
	bl	func_806A3C4
.L_6ab48:
	ldr	r5, .L_6aba0
	ldrb	r2, [r5, #29]
	mov	r0, #15
	and	r0, r2
	cmp	r0, #1
	bne	.L_6aba8
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_6ac00
	add	r0, r2, #1
	mov	r4, #0
	strb	r0, [r5, #29]
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	mov	r2, #7
	bl	SpriteSpawnSecondary
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
	ldr	r0, .L_6aba4
	str	r0, [r5, #4]
	strb	r4, [r5, #22]
	strh	r4, [r5, #20]
	ldrh	r0, [r5, #0]
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r5, #0]
	ldrb	r0, [r5, #28]
	cmp	r0, #28
	bne	.L_6ac00
	mov	r0, #30
	strb	r0, [r5, #28]
	add	r1, r5, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #5
	strb	r0, [r5, #30]
	b	.L_6ac00
	.align	2, 0
.L_6aba0:
	.4byte	gCurrentSprite
.L_6aba4:
	.4byte	sUnk_83F1C00
.L_6aba8:
	cmp	r0, #2
	bne	.L_6ac00
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_6ac08
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_6abc8
	ldrh	r1, [r5, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
.L_6abc8:
	ldrh	r3, [r5, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r3
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L_6ac00
	ldrb	r0, [r5, #29]
	sub	r0, #1
	strb	r0, [r5, #29]
	ldr	r0, .L_6ac0c
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
	ldr	r2, .L_6ac10
	and	r2, r3
	strh	r2, [r5, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r1, r0, #0
	add	r0, r2, #0
	orr	r0, r1
	cmp	r0, #0
	beq	.L_6ac00
	ldr	r0, .L_6ac14
	and	r0, r2
	strh	r0, [r5, #0]
.L_6ac00:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6ac08:
	.4byte	gUnk_30000A0
.L_6ac0c:
	.4byte	sUnk_83F1AF0
.L_6ac10:
	.4byte	0xFFF7
.L_6ac14:
	.4byte	0xFEFF


thumb_func_start SpriteUnknownFA
SpriteUnknownFA:
	push	{r4, lr}
	ldr	r0, .L_6ac94
	mov	ip, r0
	mov	r0, #100	@ 0x64
	mov	r1, ip
	strb	r0, [r1, #31]
	ldrb	r4, [r1, #28]
	cmp	r4, #0
	bne	.L_6ac78
	ldrh	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_6ac98
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_6ac9c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #28]
.L_6ac78:
	mov	r1, ip
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_6ac8e
	mov	r1, ip
	strh	r0, [r1, #0]
.L_6ac8e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6ac94:
	.4byte	gCurrentSprite
.L_6ac98:
	.4byte	0xFFFB
.L_6ac9c:
	.4byte	sUnk_840FFAC
