.include "macros.s.inc"


thumb_func_start func_804CBC0
func_804CBC0:
	push	{r4, lr}
	ldr	r0, .L_4cc24
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
	mov	r0, #104	@ 0x68
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
	ldr	r0, .L_4cc28
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrb	r1, [r1, #26]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cc2c
	mov	r0, #127	@ 0x7f
	and	r0, r1
	mov	r1, ip
	strb	r0, [r1, #26]
	b	.L_4cc30
	.align	2, 0
.L_4cc24:
	.4byte	gCurrentSprite
.L_4cc28:
	.4byte	sUnk_83D155C
.L_4cc2c:
	bl	SpriteUtilTurnTowardWario
.L_4cc30:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804CC38
func_804CC38:
	ldr	r0, .L_4cc50
	ldr	r1, .L_4cc54
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	bx	lr
.L_4cc50:
	.4byte	gCurrentSprite
.L_4cc54:
	.4byte	sUnk_83D155C


thumb_func_start func_804CC58
func_804CC58:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #2
	mov	r0, #80	@ 0x50
	bl	SpriteUtilCheckWarioNearbyLeftRight
	add	r5, r0, #0
	ldr	r4, .L_4ccac
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4cc7a
	b	.L_4cd9c
.L_4cc7a:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_4ccb0
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_4cce0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4ccb4
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_4ccc8
	.align	2, 0
.L_4ccac:
	.4byte	gCurrentSprite
.L_4ccb0:
	.4byte	gSpriteAiCollisionResult
.L_4ccb4:
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_4ccc8:
	ldr	r0, .L_4ccd8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4cda8
	ldr	r1, .L_4ccdc
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_4cdac
.L_4ccd8:
	.4byte	gSpriteAiCollisionFlags
.L_4ccdc:
	.4byte	gCurrentSprite
.L_4cce0:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cd3c
	cmp	r5, #8
	beq	.L_4cd40
	cmp	r5, #4
	beq	.L_4cd9c
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_4cda8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_4cda8
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_4cd38
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cd9c
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_4cd8a
	.align	2, 0
.L_4cd38:
	.4byte	gSpriteAiCollisionFlags
.L_4cd3c:
	cmp	r5, #4
	bne	.L_4cd46
.L_4cd40:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_4cdac
.L_4cd46:
	cmp	r5, #8
	beq	.L_4cd9c
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_4cda8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_4cda8
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_4cda4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cd9c
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_4cd8a:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cda8
.L_4cd9c:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_4cdac
	.align	2, 0
.L_4cda4:
	.4byte	gSpriteAiCollisionFlags
.L_4cda8:
	bl	func_80263AC
.L_4cdac:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804CDB4
func_804CDB4:
	ldr	r0, .L_4cdcc
	ldr	r1, .L_4cdd0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #7
	strb	r1, [r0, #0]
	bx	lr
.L_4cdcc:
	.4byte	gCurrentSprite
.L_4cdd0:
	.4byte	sUnk_83D1594


thumb_func_start func_804CDD4
func_804CDD4:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_4cdf0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4cdf8
	ldr	r1, .L_4cdf4
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_4ce40
	.align	2, 0
.L_4cdf0:
	.4byte	gSpriteAiCollisionResult
.L_4cdf4:
	.4byte	gCurrentSprite
.L_4cdf8:
	ldr	r2, .L_4ce34
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
	bne	.L_4ce40
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_4ce3c
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_4ce38
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #5
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_4ce40
.L_4ce34:
	.4byte	gCurrentSprite
.L_4ce38:
	.4byte	sUnk_83D15B4
.L_4ce3c:
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
.L_4ce40:
	pop	{r0}
	bx	r0


thumb_func_start func_804CE44
func_804CE44:
	ldr	r2, .L_4ce74
	ldr	r0, .L_4ce78
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
	beq	.L_4ce70
	mov	r0, #5
	strb	r0, [r2, #30]
.L_4ce70:
	bx	lr
	.align	2, 0
.L_4ce74:
	.4byte	gCurrentSprite
.L_4ce78:
	.4byte	sUnk_83D162C


thumb_func_start func_804CE7C
func_804CE7C:
	push	{lr}
	ldr	r1, .L_4ce8c
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_804CE44
	pop	{r0}
	bx	r0
.L_4ce8c:
	.4byte	gCurrentSprite


thumb_func_start func_804CE90
func_804CE90:
	push	{lr}
	ldr	r1, .L_4cea0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_804CE44
	pop	{r0}
	bx	r0
.L_4cea0:
	.4byte	gCurrentSprite


thumb_func_start func_804CEA4
func_804CEA4:
	ldr	r0, .L_4cebc
	ldr	r1, .L_4cec0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	bx	lr
.L_4cebc:
	.4byte	gCurrentSprite
.L_4cec0:
	.4byte	sUnk_83D1404


thumb_func_start func_804CEC4
func_804CEC4:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_4cf08
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4cf44
	lsr	r0, r0, #24
	cmp	r0, #50	@ 0x32
	bne	.L_4cf22
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_4cf0c
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #16
	ldrh	r0, [r4, #10]
	add	r0, #24
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #187	@ 0xbb
	bl	func_801E3A8
	b	.L_4cf22
.L_4cf08:
	.4byte	gCurrentSprite
.L_4cf0c:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #16
	ldrh	r0, [r4, #10]
	sub	r0, #24
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #187	@ 0xbb
	bl	func_801E3A8
.L_4cf22:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_4cf3c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4cf48
	ldr	r1, .L_4cf40
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_4cf48
	.align	2, 0
.L_4cf3c:
	.4byte	gSpriteAiCollisionResult
.L_4cf40:
	.4byte	gCurrentSprite
.L_4cf44:
	mov	r0, #17
	strb	r0, [r4, #28]
.L_4cf48:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804CF50
func_804CF50:
	ldr	r0, .L_4cf6c
	ldr	r1, .L_4cf70
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4cf6c:
	.4byte	gCurrentSprite
.L_4cf70:
	.4byte	sUnk_83D150C


thumb_func_start func_804CF74
func_804CF74:
	push	{lr}
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #2
	mov	r0, #80	@ 0x50
	bl	SpriteUtilCheckWarioNearbyLeftRight
	add	r2, r0, #0
	ldr	r3, .L_4cf94
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4cf98
	cmp	r2, #8
	bne	.L_4cfa2
	b	.L_4cf9c
.L_4cf94:
	.4byte	gCurrentSprite
.L_4cf98:
	cmp	r2, #4
	bne	.L_4cfa2
.L_4cf9c:
	mov	r0, #110	@ 0x6e
	strb	r0, [r3, #28]
	b	.L_4cfce
.L_4cfa2:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_4cfd4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4cfb8
	ldr	r1, .L_4cfd8
	mov	r0, #27
	strb	r0, [r1, #28]
.L_4cfb8:
	ldr	r2, .L_4cfd8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4cfce
	mov	r0, #15
	strb	r0, [r2, #28]
.L_4cfce:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4cfd4:
	.4byte	gSpriteAiCollisionResult
.L_4cfd8:
	.4byte	gCurrentSprite


thumb_func_start func_804CFDC
func_804CFDC:
	ldr	r0, .L_4cff4
	ldr	r1, .L_4cff8
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #12
	strb	r1, [r0, #0]
	bx	lr
.L_4cff4:
	.4byte	gCurrentSprite
.L_4cff8:
	.4byte	sUnk_83D1674


thumb_func_start func_804CFFC
func_804CFFC:
	ldr	r0, .L_4d014
	ldr	r1, .L_4d018
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
.L_4d014:
	.4byte	gCurrentSprite
.L_4d018:
	.4byte	sUnk_83D15D4


thumb_func_start func_804D01C
func_804D01C:
	ldr	r1, .L_4d03c
	ldr	r0, .L_4d040
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
.L_4d03c:
	.4byte	gCurrentSprite
.L_4d040:
	.4byte	sUnk_83D162C


thumb_func_start func_804D044
func_804D044:
	push	{r4, r5, lr}
	ldr	r5, .L_4d0a8
	ldr	r0, .L_4d0ac
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
	ldr	r0, .L_4d0b0
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_4d0b4
	ldr	r0, .L_4d0b8
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
.L_4d0a8:
	.4byte	gCurrentSprite
.L_4d0ac:
	.4byte	sUnk_83D172C
.L_4d0b0:
	.4byte	0xFEFF
.L_4d0b4:
	.4byte	gPersistentSpriteData
.L_4d0b8:
	.4byte	gCurrentRoom


thumb_func_start func_804D0BC
func_804D0BC:
	push	{lr}
	ldr	r1, .L_4d0cc
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_804D044
	pop	{r0}
	bx	r0
.L_4d0cc:
	.4byte	gCurrentSprite


thumb_func_start func_804D0D0
func_804D0D0:
	push	{lr}
	ldr	r1, .L_4d0e0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_804D044
	pop	{r0}
	bx	r0
.L_4d0e0:
	.4byte	gCurrentSprite


thumb_func_start func_804D0E4
func_804D0E4:
	push	{r4, lr}
	ldr	r4, .L_4d138
	ldr	r0, .L_4d13c
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
	ldr	r1, .L_4d140
	ldr	r0, .L_4d144
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
.L_4d138:
	.4byte	gCurrentSprite
.L_4d13c:
	.4byte	sUnk_83D172C
.L_4d140:
	.4byte	gPersistentSpriteData
.L_4d144:
	.4byte	gCurrentRoom


thumb_func_start func_804D148
func_804D148:
	push	{lr}
	ldr	r1, .L_4d158
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_804D0E4
	pop	{r0}
	bx	r0
.L_4d158:
	.4byte	gCurrentSprite


thumb_func_start func_804D15C
func_804D15C:
	push	{lr}
	ldr	r1, .L_4d16c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_804D0E4
	pop	{r0}
	bx	r0
.L_4d16c:
	.4byte	gCurrentSprite


thumb_func_start func_804D170
func_804D170:
	ldr	r2, .L_4d198
	ldr	r0, .L_4d19c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #30
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
.L_4d198:
	.4byte	gCurrentSprite
.L_4d19c:
	.4byte	sUnk_83D1494


thumb_func_start func_804D1A0
func_804D1A0:
	push	{lr}
	ldr	r1, .L_4d1b0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_804D170
	pop	{r0}
	bx	r0
.L_4d1b0:
	.4byte	gCurrentSprite


thumb_func_start func_804D1B4
func_804D1B4:
	push	{lr}
	ldr	r1, .L_4d1c4
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_804D170
	pop	{r0}
	bx	r0
.L_4d1c4:
	.4byte	gCurrentSprite


thumb_func_start func_804D1C8
func_804D1C8:
	ldr	r1, .L_4d1e4
	ldr	r0, .L_4d1e8
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
.L_4d1e4:
	.4byte	gCurrentSprite
.L_4d1e8:
	.4byte	sUnk_83D162C


thumb_func_start func_804D1EC
func_804D1EC:
	push	{lr}
	ldr	r1, .L_4d1fc
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_804D1C8
	pop	{r0}
	bx	r0
.L_4d1fc:
	.4byte	gCurrentSprite


thumb_func_start func_804D200
func_804D200:
	push	{lr}
	ldr	r1, .L_4d210
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_804D1C8
	pop	{r0}
	bx	r0
.L_4d210:
	.4byte	gCurrentSprite


thumb_func_start func_804D214
func_804D214:
	push	{r4, lr}
	ldr	r1, .L_4d228
	ldrb	r0, [r1, #30]
	add	r4, r1, #0
	cmp	r0, #5
	bne	.L_4d230
	ldr	r0, .L_4d22c
	str	r0, [r4, #4]
	b	.L_4d236
	.align	2, 0
.L_4d228:
	.4byte	gCurrentSprite
.L_4d22c:
	.4byte	sUnk_83D1614
.L_4d230:
	ldr	r0, .L_4d27c
	str	r0, [r4, #4]
	add	r1, r4, #0
.L_4d236:
	add	r1, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_4d280
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
	ldr	r1, .L_4d284
	ldr	r0, .L_4d288
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
.L_4d27c:
	.4byte	sUnk_83D15FC
.L_4d280:
	.4byte	0xFEFF
.L_4d284:
	.4byte	gPersistentSpriteData
.L_4d288:
	.4byte	gCurrentRoom


thumb_func_start func_804D28C
func_804D28C:
	push	{r4, lr}
	ldr	r4, .L_4d2b8
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_4d2bc
	ldr	r0, .L_4d2c0
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
.L_4d2b8:
	.4byte	gCurrentSprite
.L_4d2bc:
	.4byte	gPersistentSpriteData
.L_4d2c0:
	.4byte	gCurrentRoom


thumb_func_start func_804D2C4
func_804D2C4:
	ldr	r2, .L_4d2e8
	ldr	r0, .L_4d2ec
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
.L_4d2e8:
	.4byte	gCurrentSprite
.L_4d2ec:
	.4byte	sUnk_83D162C


thumb_func_start func_804D2F0
func_804D2F0:
	push	{lr}
	ldr	r1, .L_4d300
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_804D2C4
	pop	{r0}
	bx	r0
.L_4d300:
	.4byte	gCurrentSprite


thumb_func_start func_804D304
func_804D304:
	push	{lr}
	ldr	r1, .L_4d314
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_804D2C4
	pop	{r0}
	bx	r0
.L_4d314:
	.4byte	gCurrentSprite


thumb_func_start func_804D318
func_804D318:
	ldr	r0, .L_4d338
	ldr	r1, .L_4d33c
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
.L_4d338:
	.4byte	gCurrentSprite
.L_4d33c:
	.4byte	sUnk_83D1664


thumb_func_start func_804D340
func_804D340:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_4d37c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_4d3c6
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_4d380
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4d384
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_4d3ce
	.align	2, 0
.L_4d37c:
	.4byte	gCurrentSprite
.L_4d380:
	.4byte	gSpriteAiCollisionFlags
.L_4d384:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_4d3b0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4d3b4
	cmp	r1, r0
	bne	.L_4d3b8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_4d3ce
	.align	2, 0
.L_4d3b0:
	.4byte	sUnk_8352B2C
.L_4d3b4:
	.4byte	0x7FFF
.L_4d3b8:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_4d3ce
.L_4d3c6:
	mov	r0, #27
	strb	r0, [r4, #28]
	mov	r0, #1
	strb	r0, [r4, #30]
.L_4d3ce:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804D3D4
func_804D3D4:
	ldr	r1, .L_4d3e4
	ldr	r0, .L_4d3e8
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_4d3e4:
	.4byte	gCurrentSprite
.L_4d3e8:
	.4byte	sUnk_83D162C


thumb_func_start func_804D3EC
func_804D3EC:
	push	{lr}
	ldr	r1, .L_4d3fc
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_804D3D4
	pop	{r0}
	bx	r0
.L_4d3fc:
	.4byte	gCurrentSprite


thumb_func_start func_804D400
func_804D400:
	push	{lr}
	ldr	r1, .L_4d410
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_804D3D4
	pop	{r0}
	bx	r0
.L_4d410:
	.4byte	gCurrentSprite


thumb_func_start func_804D414
func_804D414:
	ldr	r1, .L_4d428
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_4d42c
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_4d428:
	.4byte	gCurrentSprite
.L_4d42c:
	.4byte	sUnk_83D162C


thumb_func_start func_804D430
func_804D430:
	push	{lr}
	ldr	r1, .L_4d440
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_804D414
	pop	{r0}
	bx	r0
.L_4d440:
	.4byte	gCurrentSprite


thumb_func_start func_804D444
func_804D444:
	push	{lr}
	ldr	r1, .L_4d454
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_804D414
	pop	{r0}
	bx	r0
.L_4d454:
	.4byte	gCurrentSprite


thumb_func_start func_804D458
func_804D458:
	push	{r4, lr}
	ldr	r0, .L_4d4c4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_4d4c8
	and	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r1, ip
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r4, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	add	r4, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldr	r0, .L_4d4cc
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #20
	strb	r0, [r4, #30]
	strb	r1, [r4, #28]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #18
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r4, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4d4c4:
	.4byte	gCurrentSprite
.L_4d4c8:
	.4byte	0xFFFB
.L_4d4cc:
	.4byte	sUnk_83D16AC


thumb_func_start func_804D4D0
func_804D4D0:
	push	{r4, r5, lr}
	ldr	r0, .L_4d520
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	add	r5, r0, #0
	cmp	r1, #0
	beq	.L_4d4f4
	sub	r0, r1, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4d4f4
	ldr	r0, .L_4d524
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
.L_4d4f4:
	add	r4, r5, #0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_4d528
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4d50e
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
.L_4d50e:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4d52c
	ldrh	r0, [r4, #10]
	add	r0, #8
	strh	r0, [r4, #10]
	b	.L_4d532
.L_4d520:
	.4byte	gCurrentSprite
.L_4d524:
	.4byte	sUnk_83D168C
.L_4d528:
	.4byte	gSpriteAiCollisionFlags
.L_4d52c:
	ldrh	r0, [r5, #10]
	sub	r0, #8
	strh	r0, [r5, #10]
.L_4d532:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_804D538
func_804D538:
	ldr	r0, .L_4d554
	mov	r2, #0
	mov	r1, #1
	strb	r1, [r0, #31]
	ldr	r1, .L_4d558
	str	r1, [r0, #4]
	strb	r2, [r0, #22]
	strh	r2, [r0, #20]
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #8
	strb	r1, [r0, #0]
	bx	lr
.L_4d554:
	.4byte	gCurrentSprite
.L_4d558:
	.4byte	sUnk_83D1704


thumb_func_start func_804D55C
func_804D55C:
	ldr	r2, .L_4d578
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
	bne	.L_4d576
	strh	r0, [r2, #0]
.L_4d576:
	bx	lr
.L_4d578:
	.4byte	gCurrentSprite


thumb_func_start SpriteYeti
SpriteYeti:
	push	{lr}
	ldr	r2, .L_4d5a4
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_4d590
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_4d590:
	ldrb	r0, [r2, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_4d598
	b	.L_4d952
.L_4d598:
	lsl	r0, r0, #2
	ldr	r1, .L_4d5a8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4d5a4:
	.4byte	gCurrentSprite
.L_4d5a8:
	.4byte	.L_4d5ac
.L_4d5ac:
	.4byte	.L_4d774
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d77a
	.4byte	.L_4d77e
	.4byte	.L_4d784
	.4byte	.L_4d788
	.4byte	.L_4d952
	.4byte	.L_4d788
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d7a2
	.4byte	.L_4d7a6
	.4byte	.L_4d8bc
	.4byte	.L_4d952
	.4byte	.L_4d7ac
	.4byte	.L_4d7b0
	.4byte	.L_4d7b6
	.4byte	.L_4d7ba
	.4byte	.L_4d7c0
	.4byte	.L_4d7c4
	.4byte	.L_4d7ca
	.4byte	.L_4d7ce
	.4byte	.L_4d7d4
	.4byte	.L_4d7d8
	.4byte	.L_4d7f4
	.4byte	.L_4d7f8
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d82c
	.4byte	.L_4d830
	.4byte	.L_4d836
	.4byte	.L_4d83a
	.4byte	.L_4d840
	.4byte	.L_4d844
	.4byte	.L_4d84a
	.4byte	.L_4d84e
	.4byte	.L_4d854
	.4byte	.L_4d88c
	.4byte	.L_4d85a
	.4byte	.L_4d86e
	.4byte	.L_4d860
	.4byte	.L_4d864
	.4byte	.L_4d86a
	.4byte	.L_4d86e
	.4byte	.L_4d874
	.4byte	.L_4d878
	.4byte	.L_4d87e
	.4byte	.L_4d882
	.4byte	.L_4d888
	.4byte	.L_4d88c
	.4byte	.L_4d892
	.4byte	.L_4d896
	.4byte	.L_4d89c
	.4byte	.L_4d8ac
	.4byte	.L_4d8a2
	.4byte	.L_4d8b6
	.4byte	.L_4d8a8
	.4byte	.L_4d8ac
	.4byte	.L_4d8b2
	.4byte	.L_4d8b6
	.4byte	.L_4d8bc
	.4byte	.L_4d8c0
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d7c0
	.4byte	.L_4d7ca
	.4byte	.L_4d8c6
	.4byte	.L_4d8cc
	.4byte	.L_4d8d2
	.4byte	.L_4d8d8
	.4byte	.L_4d8ea
	.4byte	.L_4d8f0
	.4byte	.L_4d8de
	.4byte	.L_4d8e4
	.4byte	.L_4d8f6
	.4byte	.L_4d8fa
	.4byte	.L_4d91e
	.4byte	.L_4d922
	.4byte	.L_4d900
	.4byte	.L_4d904
	.4byte	.L_4d928
	.4byte	.L_4d92c
	.4byte	.L_4d90a
	.4byte	.L_4d90e
	.4byte	.L_4d932
	.4byte	.L_4d936
	.4byte	.L_4d914
	.4byte	.L_4d918
	.4byte	.L_4d93c
	.4byte	.L_4d940
	.4byte	.L_4d946
	.4byte	.L_4d94c
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d952
	.4byte	.L_4d78e
	.4byte	.L_4d792
	.4byte	.L_4d798
	.4byte	.L_4d79c
.L_4d774:
	bl	func_804CBC0
	b	.L_4d956
.L_4d77a:
	bl	func_804CC38
.L_4d77e:
	bl	func_804CC58
	b	.L_4d956
.L_4d784:
	bl	func_804CDB4
.L_4d788:
	bl	func_804CDD4
	b	.L_4d956
.L_4d78e:
	bl	func_804CEA4
.L_4d792:
	bl	func_804CEC4
	b	.L_4d956
.L_4d798:
	bl	func_804CF50
.L_4d79c:
	bl	func_804CF74
	b	.L_4d956
.L_4d7a2:
	bl	func_804CFDC
.L_4d7a6:
	bl	func_8023C94
	b	.L_4d956
.L_4d7ac:
	bl	func_804CFFC
.L_4d7b0:
	bl	func_8023D48
	b	.L_4d956
.L_4d7b6:
	bl	func_804D01C
.L_4d7ba:
	bl	func_8023EE0
	b	.L_4d956
.L_4d7c0:
	bl	func_804D0BC
.L_4d7c4:
	bl	SpriteUtilFallOffscreenRight
	b	.L_4d956
.L_4d7ca:
	bl	func_804D0D0
.L_4d7ce:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_4d956
.L_4d7d4:
	bl	func_804D1A0
.L_4d7d8:
	bl	func_80238A4
	ldr	r1, .L_4d7f0
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_4d814
	bl	func_80242C8
	b	.L_4d956
	.align	2, 0
.L_4d7f0:
	.4byte	gCurrentSprite
.L_4d7f4:
	bl	func_804D1B4
.L_4d7f8:
	bl	func_80238A4
	ldr	r1, .L_4d810
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_4d814
	bl	func_8024180
	b	.L_4d956
	.align	2, 0
.L_4d810:
	.4byte	gCurrentSprite
.L_4d814:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_4d826
	b	.L_4d956
.L_4d826:
	mov	r0, #17
	strb	r0, [r1, #28]
	b	.L_4d956
.L_4d82c:
	bl	func_804D1EC
.L_4d830:
	bl	func_8024478
	b	.L_4d956
.L_4d836:
	bl	func_804D200
.L_4d83a:
	bl	func_802449C
	b	.L_4d956
.L_4d840:
	bl	func_80244C0
.L_4d844:
	bl	func_80244E0
	b	.L_4d956
.L_4d84a:
	bl	func_804D214
.L_4d84e:
	bl	SpriteUtilDieAfterDelay
	b	.L_4d956
.L_4d854:
	bl	func_804CE7C
	b	.L_4d88c
.L_4d85a:
	bl	func_804CE90
	b	.L_4d86e
.L_4d860:
	bl	func_8024688
.L_4d864:
	bl	func_80246B8
	b	.L_4d956
.L_4d86a:
	bl	func_802473C
.L_4d86e:
	bl	func_802476C
	b	.L_4d956
.L_4d874:
	bl	func_80247F0
.L_4d878:
	bl	func_8024820
	b	.L_4d956
.L_4d87e:
	bl	func_80248A4
.L_4d882:
	bl	func_80248D4
	b	.L_4d956
.L_4d888:
	bl	func_8024958
.L_4d88c:
	bl	func_8024988
	b	.L_4d956
.L_4d892:
	bl	func_8024A0C
.L_4d896:
	bl	func_8024A3C
	b	.L_4d956
.L_4d89c:
	bl	func_8024AC0
	b	.L_4d8ac
.L_4d8a2:
	bl	func_8024BEC
	b	.L_4d8b6
.L_4d8a8:
	bl	func_804D2F0
.L_4d8ac:
	bl	func_8024AD4
	b	.L_4d956
.L_4d8b2:
	bl	func_804D304
.L_4d8b6:
	bl	func_8024C00
	b	.L_4d956
.L_4d8bc:
	bl	func_804D318
.L_4d8c0:
	bl	func_804D340
	b	.L_4d956
.L_4d8c6:
	bl	func_804D3EC
	b	.L_4d956
.L_4d8cc:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_4d956
.L_4d8d2:
	bl	func_804D400
	b	.L_4d956
.L_4d8d8:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_4d956
.L_4d8de:
	bl	func_804D430
	b	.L_4d956
.L_4d8e4:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_4d956
.L_4d8ea:
	bl	func_804D444
	b	.L_4d956
.L_4d8f0:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_4d956
.L_4d8f6:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_4d8fa:
	bl	SpriteUtilThrownLeftSoft
	b	.L_4d956
.L_4d900:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_4d904:
	bl	SpriteUtilThrownLeftHard
	b	.L_4d956
.L_4d90a:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_4d90e:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_4d956
.L_4d914:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_4d918:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_4d956
.L_4d91e:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_4d922:
	bl	SpriteUtilThrownRightSoft
	b	.L_4d956
.L_4d928:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_4d92c:
	bl	SpriteUtilThrownRightHard
	b	.L_4d956
.L_4d932:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_4d936:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_4d956
.L_4d93c:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_4d940:
	bl	SpriteUtilThrownUpRightHard
	b	.L_4d956
.L_4d946:
	bl	func_804D15C
	b	.L_4d956
.L_4d94c:
	bl	func_804D148
	b	.L_4d956
.L_4d952:
	bl	func_804D28C
.L_4d956:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownBB
SpriteUnknownBB:
	push	{lr}
	ldr	r0, .L_4d970
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_4d980
	cmp	r0, #16
	bgt	.L_4d974
	cmp	r0, #0
	beq	.L_4d97a
	b	.L_4d98c
.L_4d970:
	.4byte	gCurrentSprite
.L_4d974:
	cmp	r0, #50	@ 0x32
	beq	.L_4d986
	b	.L_4d98c
.L_4d97a:
	bl	func_804D458
	b	.L_4d990
.L_4d980:
	bl	func_804D4D0
	b	.L_4d990
.L_4d986:
	bl	func_804D55C
	b	.L_4d990
.L_4d98c:
	bl	func_804D538
.L_4d990:
	pop	{r0}
	bx	r0
