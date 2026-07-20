.include "macros.s.inc"


thumb_func_start func_8042D70
func_8042D70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	ldr	r2, .L_42e4c
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r0, r1, #0
	ldrh	r3, [r2, #8]
	add	r1, r0, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	ldrh	r3, [r2, #10]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	add	r0, r2, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r1, [sp, #20]
	add	r0, r2, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	add	r0, r2, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r0, r7, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	mov	r6, #0
	ldr	r0, .L_42e50
	mov	r8, r0
.L_42dd2:
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	mov	r1, r8
	add	r4, r0, r1
	ldrh	r0, [r4, #0]
	ldr	r3, .L_42e54
	and	r0, r3
	cmp	r0, #3
	bne	.L_42e7a
	ldrb	r0, [r4, #23]
	cmp	r0, #69	@ 0x45
	beq	.L_42e7a
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r0, r1, #0
	ldrh	r3, [r4, #8]
	add	r2, r0, r3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldrh	r1, [r4, #10]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r3, [r0, #0]
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r4, #0
	add	r0, #37	@ 0x25
	ldrb	r1, [r0, #0]
	sub	r1, r5, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r0, r5, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mov	r2, sl
	mov	r3, r9
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_42e7a
	cmp	r5, r7
	bls	.L_42e58
	mov	r0, #106	@ 0x6a
	b	.L_42e5a
.L_42e4c:
	.4byte	gCurrentSprite
.L_42e50:
	.4byte	gSpriteData
.L_42e54:
	.4byte	0x217
.L_42e58:
	mov	r0, #105	@ 0x69
.L_42e5a:
	strb	r0, [r4, #28]
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r8
	mov	r0, #15
	strb	r0, [r1, #31]
	ldrh	r2, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r0, r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #59	@ 0x3b
	bl	m4aSongNumStart
.L_42e7a:
	add	r6, #1
	cmp	r6, #23
	ble	.L_42dd2
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8042E90
func_8042E90:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_42f04
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_42f08
	mov	sl, r0
	mov	r1, #2
	mov	r9, r1
	strb	r1, [r0, #0]
	sub	r5, r6, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	sub	r0, r4, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	sub	r6, #68	@ 0x44
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r6, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r6, #0
	mov	r1, r8
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_42f04:
	.4byte	gCurrentSprite
.L_42f08:
	.4byte	gUnk_3000028


thumb_func_start func_8042F0C
func_8042F0C:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_42f80
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_42f84
	mov	sl, r0
	mov	r1, #3
	mov	r9, r1
	strb	r1, [r0, #0]
	sub	r5, r6, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	sub	r0, r4, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	sub	r6, #68	@ 0x44
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r6, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r6, #0
	mov	r1, r8
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_42f80:
	.4byte	gCurrentSprite
.L_42f84:
	.4byte	gUnk_3000028


thumb_func_start func_8042F88
func_8042F88:
	push	{r4, lr}
	ldr	r0, .L_42ff8
	mov	ip, r0
	ldrh	r0, [r0, #10]
	add	r0, #32
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	add	r1, r2, #0
	orr	r0, r1
	mov	r2, #0
	mov	r1, #32
	orr	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, #1
	strb	r0, [r4, #26]
	mov	r0, ip
	add	r0, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r4, #35	@ 0x23
	mov	r0, #120	@ 0x78
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r4, #0]
	ldr	r0, .L_42ffc
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #22
	strb	r0, [r4, #30]
	strb	r1, [r4, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bl	func_8042F0C
	pop	{r4}
	pop	{r0}
	bx	r0
.L_42ff8:
	.4byte	gCurrentSprite
.L_42ffc:
	.4byte	sUnk_83C799C


thumb_func_start func_8043000
func_8043000:
	push	{r4, lr}
	ldr	r4, .L_43034
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_8023B88
	ldr	r0, .L_43038
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4305e
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4303c
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_43050
.L_43034:
	.4byte	gCurrentSprite
.L_43038:
	.4byte	gSpriteCollisionResult
.L_4303c:
	ldrh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_43050:
	ldr	r0, .L_43064
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4305e
	ldr	r1, .L_43068
	mov	r0, #27
	strb	r0, [r1, #28]
.L_4305e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_43064:
	.4byte	gSpriteCollisionTileType
.L_43068:
	.4byte	gCurrentSprite


thumb_func_start func_804306C
func_804306C:
	push	{lr}
	ldr	r1, .L_43088
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #30
	strb	r0, [r1, #28]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bl	func_8042E90
	pop	{r0}
	bx	r0
	.align	2, 0
.L_43088:
	.4byte	gCurrentSprite


thumb_func_start func_804308C
func_804308C:
	push	{r4, r5, r6, r7, lr}
	bl	func_8042D70
	ldr	r2, .L_430ac
	mov	r1, #0
	strb	r1, [r2, #6]
	ldr	r4, .L_430b0
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r0, [r6, #0]
	cmp	r0, #255	@ 0xff
	bne	.L_430b4
	strb	r1, [r6, #0]
	mov	r0, #1
	strb	r0, [r2, #6]
	b	.L_43132
.L_430ac:
	.4byte	gWarioData
.L_430b0:
	.4byte	gCurrentSprite
.L_430b4:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_430f4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_430d8
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
.L_430d8:
	ldr	r0, .L_430f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_430fc
	strh	r5, [r4, #8]
	mov	r0, #16
	strb	r0, [r4, #28]
	bl	func_8042F0C
	mov	r0, #249	@ 0xf9
	bl	m4aSongNumStart
	b	.L_43132
	.align	2, 0
.L_430f4:
	.4byte	gUnk_30000A0
.L_430f8:
	.4byte	gSpriteCollisionResult
.L_430fc:
	ldrb	r2, [r6, #0]
	ldr	r5, .L_43120
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_43124
	cmp	r1, r0
	bne	.L_43128
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_43130
	.align	2, 0
.L_43120:
	.4byte	sUnk_83C7A6C
.L_43124:
	.4byte	0x7FFF
.L_43128:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_43130:
	strh	r0, [r4, #8]
.L_43132:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteToyBlockSquare
SpriteToyBlockSquare:
	push	{lr}
	ldr	r0, .L_43150
	ldrb	r2, [r0, #28]
	add	r3, r0, #0
	cmp	r2, #16
	beq	.L_43162
	cmp	r2, #16
	bgt	.L_43154
	cmp	r2, #0
	beq	.L_4315e
	b	.L_43172
	.align	2, 0
.L_43150:
	.4byte	gCurrentSprite
.L_43154:
	cmp	r2, #27
	beq	.L_43168
	cmp	r2, #30
	beq	.L_4316c
	b	.L_43172
.L_4315e:
	bl	func_8042F88
.L_43162:
	bl	func_8043000
	b	.L_4317e
.L_43168:
	bl	func_804306C
.L_4316c:
	bl	func_804308C
	b	.L_4317e
.L_43172:
	mov	r0, #16
	strb	r0, [r3, #28]
	ldrh	r1, [r3, #0]
	ldr	r0, .L_43188
	and	r0, r1
	strh	r0, [r3, #0]
.L_4317e:
	bl	func_8026838
	pop	{r0}
	bx	r0
	.align	2, 0
.L_43188:
	.4byte	0xFCFF
