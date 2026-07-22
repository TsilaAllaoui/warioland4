.include "macros.s.inc"


thumb_func_start func_8047AD8
func_8047AD8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r0, .L_47b3c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #124	@ 0x7c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #30
	strb	r0, [r4, #30]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #185	@ 0xb9
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_47b3c:
	.4byte	gCurrentSprite


thumb_func_start func_8047B40
func_8047B40:
	ldr	r1, .L_47b5c
	ldr	r0, .L_47b60
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #23]
	cmp	r0, #79	@ 0x4f
	bne	.L_47b64
	add	r1, #39	@ 0x27
	mov	r0, #75	@ 0x4b
	b	.L_47b68
.L_47b5c:
	.4byte	gCurrentSprite
.L_47b60:
	.4byte	sUnk_83CA898
.L_47b64:
	add	r1, #39	@ 0x27
	mov	r0, #30
.L_47b68:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8047B6C
func_8047B6C:
	ldr	r0, .L_47b9c
	ldrb	r0, [r0, #0]
	cmp	r0, #10
	beq	.L_47b98
	ldr	r2, .L_47ba0
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_47b98
	mov	r0, #27
	strb	r0, [r2, #28]
	mov	r0, #30
	strb	r0, [r3, #0]
	ldr	r0, .L_47ba4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
.L_47b98:
	bx	lr
	.align	2, 0
.L_47b9c:
	.4byte	gWarioData
.L_47ba0:
	.4byte	gCurrentSprite
.L_47ba4:
	.4byte	sUnk_83CA8E0


thumb_func_start func_8047BA8
func_8047BA8:
	push	{lr}
	ldr	r2, .L_47be4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_47be0
	ldr	r0, .L_47be8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	mov	r0, #28
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #2
	strb	r1, [r0, #0]
	mov	r0, #31
	strb	r0, [r2, #30]
	mov	r0, #82	@ 0x52
	bl	m4aSongNumStart
.L_47be0:
	pop	{r0}
	bx	r0
.L_47be4:
	.4byte	gCurrentSprite
.L_47be8:
	.4byte	sUnk_83CA910


thumb_func_start func_8047BEC
func_8047BEC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_47c40
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_47c44
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_47c14
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_47c14:
	ldr	r0, .L_47c48
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_47c50
	add	r0, r2, #0
	sub	r0, #128	@ 0x80
	strh	r0, [r4, #8]
	mov	r0, #23
	strb	r0, [r4, #28]
	mov	r0, #83	@ 0x53
	bl	m4aSongNumStart
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_47c9a
	ldr	r1, .L_47c4c
	ldrh	r0, [r4, #8]
	add	r0, #116	@ 0x74
	b	.L_47c98
	.align	2, 0
.L_47c40:
	.4byte	gCurrentSprite
.L_47c44:
	.4byte	gUnk_30000A0
.L_47c48:
	.4byte	gSpriteAiCollisionResult
.L_47c4c:
	.4byte	gWarioData
.L_47c50:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_47c74
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_47c78
	cmp	r1, r0
	bne	.L_47c7c
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	b	.L_47c82
.L_47c74:
	.4byte	sUnk_83CA980
.L_47c78:
	.4byte	0x7FFF
.L_47c7c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_47c82:
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldr	r0, .L_47ca0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_47c9a
	ldr	r1, .L_47ca4
	ldrh	r0, [r1, #20]
	add	r0, r0, r3
.L_47c98:
	strh	r0, [r1, #20]
.L_47c9a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_47ca0:
	.4byte	gCurrentSprite
.L_47ca4:
	.4byte	gWarioData


thumb_func_start func_8047CA8
func_8047CA8:
	push	{lr}
	ldr	r1, .L_47cd4
	ldr	r0, .L_47cd8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	mov	r0, #30
	strb	r0, [r1, #30]
	mov	r0, #48	@ 0x30
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	pop	{r0}
	bx	r0
	.align	2, 0
.L_47cd4:
	.4byte	gCurrentSprite
.L_47cd8:
	.4byte	sUnk_83CA920


thumb_func_start func_8047CDC
func_8047CDC:
	ldr	r2, .L_47d00
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_47cfc
	mov	r0, #18
	strb	r0, [r2, #28]
	ldr	r0, .L_47d04
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
.L_47cfc:
	bx	lr
	.align	2, 0
.L_47d00:
	.4byte	gCurrentSprite
.L_47d04:
	.4byte	sUnk_83CA8F8


thumb_func_start func_8047D08
func_8047D08:
	ldr	r2, .L_47d28
	ldr	r3, .L_47d2c
	ldrb	r1, [r3, #24]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	ldrh	r1, [r3, #8]
	lsl	r0, r0, #6
	add	r0, #64	@ 0x40
	cmp	r1, r0
	bgt	.L_47d30
	mov	r0, #15
	strb	r0, [r3, #28]
	b	.L_47d36
	.align	2, 0
.L_47d28:
	.4byte	gUnk_3000964
.L_47d2c:
	.4byte	gCurrentSprite
.L_47d30:
	add	r0, r1, #0
	sub	r0, #8
	strh	r0, [r3, #8]
.L_47d36:
	bx	lr


thumb_func_start func_8047D38
func_8047D38:
	push	{r4, lr}
	ldr	r0, .L_47d90
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_47d94
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #16
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #30]
	ldr	r0, .L_47d98
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	strb	r3, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_47d90:
	.4byte	gCurrentSprite
.L_47d94:
	.4byte	0xFFFB
.L_47d98:
	.4byte	sUnk_83CA850


thumb_func_start SpritePiston
SpritePiston:
	push	{lr}
	ldr	r0, .L_47dbc
	ldrb	r0, [r0, #0]
	ldr	r1, .L_47dc0
	cmp	r0, #10
	bne	.L_47dac
	mov	r0, #1
	strb	r0, [r1, #31]
.L_47dac:
	ldrb	r0, [r1, #28]
	cmp	r0, #28
	bhi	.L_47e66
	lsl	r0, r0, #2
	ldr	r1, .L_47dc4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_47dbc:
	.4byte	gWarioData
.L_47dc0:
	.4byte	gCurrentSprite
.L_47dc4:
	.4byte	.L_47dc8
.L_47dc8:
	.4byte	.L_47e3c
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e40
	.4byte	.L_47e44
	.4byte	.L_47e66
	.4byte	.L_47e60
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e56
	.4byte	.L_47e5a
	.4byte	.L_47e66
	.4byte	.L_47e66
	.4byte	.L_47e4a
	.4byte	.L_47e50
.L_47e3c:
	bl	func_8047AD8
.L_47e40:
	bl	func_8047B40
.L_47e44:
	bl	func_8047B6C
	b	.L_47e6a
.L_47e4a:
	bl	func_8047BA8
	b	.L_47e6a
.L_47e50:
	bl	func_8047BEC
	b	.L_47e6a
.L_47e56:
	bl	func_8047CA8
.L_47e5a:
	bl	func_8047CDC
	b	.L_47e6a
.L_47e60:
	bl	func_8047D08
	b	.L_47e6a
.L_47e66:
	bl	SpriteUtilDie
.L_47e6a:
	ldr	r1, .L_47e84
	ldrb	r0, [r1, #0]
	cmp	r0, #10
	beq	.L_47e80
	cmp	r0, #0
	bne	.L_47e7c
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_47e80
.L_47e7c:
	bl	func_8026838
.L_47e80:
	pop	{r0}
	bx	r0
.L_47e84:
	.4byte	gWarioData


thumb_func_start SpriteUnknownB9
SpriteUnknownB9:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #0
	ldr	r0, .L_47ec8
	ldrb	r5, [r0, #24]
	add	r4, r0, #0
	ldr	r2, .L_47ecc
	add	r3, r2, #0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r6, r2, r0
.L_47e9c:
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_47eb8
	ldrb	r0, [r2, #23]
	sub	r0, #79	@ 0x4f
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_47eb8
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_47ed0
.L_47eb8:
	add	r2, #44	@ 0x2c
	add	r3, #44	@ 0x2c
	cmp	r2, r6
	ble	.L_47e9c
	cmp	r7, #0
	bne	.L_47ed4
	strh	r7, [r4, #0]
	b	.L_47ee2
.L_47ec8:
	.4byte	gCurrentSprite
.L_47ecc:
	.4byte	gSpriteData
.L_47ed0:
	ldrh	r0, [r3, #8]
	strh	r0, [r4, #8]
.L_47ed4:
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_47ede
	bl	func_8047D38
.L_47ede:
	mov	r0, #1
	strb	r0, [r4, #31]
.L_47ee2:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
