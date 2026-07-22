.include "macros.s.inc"


thumb_func_start func_8045C94
func_8045C94:
	push	{r4, lr}
	ldr	r4, .L_45cf4
	ldr	r2, .L_45cf8
	ldrb	r1, [r4, #24]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, #64	@ 0x40
	strh	r0, [r4, #8]
	mov	r0, #39	@ 0x27
	strb	r0, [r4, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r4, #30]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r4, #10]
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_45cfc
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_45cf4:
	.4byte	gCurrentSprite
.L_45cf8:
	.4byte	gUnk_3000964
.L_45cfc:
	.4byte	0xFDFF


thumb_func_start func_8045D00
func_8045D00:
	ldr	r3, .L_45d44
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bx	lr
.L_45d44:
	.4byte	gCurrentSprite


thumb_func_start func_8045D48
func_8045D48:
	ldr	r1, .L_45d68
	ldr	r0, .L_45d6c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_45d68:
	.4byte	gCurrentSprite
.L_45d6c:
	.4byte	sUnk_83C99E0


thumb_func_start func_8045D70
func_8045D70:
	push	{r4, r5, r6, lr}
	mov	r5, #0
	mov	r6, #0
	ldr	r0, .L_45d8c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_45d90
	mov	r1, #130	@ 0x82
	lsl	r1, r1, #2
	mov	r0, #70	@ 0x46
	bl	SpriteUtilCheckWarioNearbyLeftRight
	add	r5, r0, #0
	b	.L_45d9c
.L_45d8c:
	.4byte	gWarioData
.L_45d90:
	mov	r0, #130	@ 0x82
	lsl	r0, r0, #2
	mov	r1, #70	@ 0x46
	bl	SpriteUtilCheckWarioNearbyAboveBelow
	add	r6, r0, #0
.L_45d9c:
	ldr	r4, .L_45db8
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	sub	r0, r1, #1
	strb	r0, [r2, #0]
	cmp	r1, #0
	beq	.L_45e1e
	cmp	r6, #1
	bne	.L_45dbc
	mov	r0, #112	@ 0x70
	strb	r0, [r4, #28]
	b	.L_45e2e
	.align	2, 0
.L_45db8:
	.4byte	gCurrentSprite
.L_45dbc:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_45df4
	cmp	r5, #8
	beq	.L_45df8
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #110	@ 0x6e
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_45df0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_45e1e
	ldrh	r0, [r4, #10]
	add	r0, #3
	b	.L_45e2c
.L_45df0:
	.4byte	gUnk_3000A51
.L_45df4:
	cmp	r5, #4
	bne	.L_45dfe
.L_45df8:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_45e2e
.L_45dfe:
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #110	@ 0x6e
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_45e24
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_45e28
.L_45e1e:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_45e2e
.L_45e24:
	.4byte	gUnk_3000A51
.L_45e28:
	ldrh	r0, [r4, #10]
	sub	r0, #3
.L_45e2c:
	strh	r0, [r4, #10]
.L_45e2e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8045E34
func_8045E34:
	ldr	r1, .L_45e54
	ldr	r0, .L_45e58
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #5
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_45e54:
	.4byte	gCurrentSprite
.L_45e58:
	.4byte	sUnk_83C9A08


thumb_func_start func_8045E5C
func_8045E5C:
	ldr	r2, .L_45e98
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
	bne	.L_45eaa
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_45ea0
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_45e9c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #3
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_45eaa
.L_45e98:
	.4byte	gCurrentSprite
.L_45e9c:
	.4byte	sUnk_83C9A08
.L_45ea0:
	mov	r0, #120	@ 0x78
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r0, #15
	strb	r0, [r2, #28]
.L_45eaa:
	bx	lr


thumb_func_start func_8045EAC
func_8045EAC:
	ldr	r1, .L_45ecc
	ldr	r0, .L_45ed0
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #54	@ 0x36
	strb	r0, [r2, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	mov	r0, #79	@ 0x4f
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_45ecc:
	.4byte	gCurrentSprite
.L_45ed0:
	.4byte	sUnk_83C9A20


thumb_func_start func_8045ED4
func_8045ED4:
	push	{r4, lr}
	ldr	r4, .L_45ef4
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_45ef8
	mov	r0, #15
	strb	r0, [r4, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	b	.L_45f5e
	.align	2, 0
.L_45ef4:
	.4byte	gCurrentSprite
.L_45ef8:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_45f2c
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #110	@ 0x6e
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_45f28
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_45f4c
	ldrh	r0, [r4, #10]
	add	r0, #6
	b	.L_45f5c
.L_45f28:
	.4byte	gUnk_3000A51
.L_45f2c:
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #110	@ 0x6e
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_45f54
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_45f58
.L_45f4c:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_45f5e
	.align	2, 0
.L_45f54:
	.4byte	gUnk_3000A51
.L_45f58:
	ldrh	r0, [r4, #10]
	sub	r0, #6
.L_45f5c:
	strh	r0, [r4, #10]
.L_45f5e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8045F64
func_8045F64:
	push	{lr}
	ldr	r3, .L_45fb0
	ldr	r0, .L_45fb4
	str	r0, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	mov	r2, #0
	strh	r0, [r3, #20]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r3, #28]
	mov	r0, #55	@ 0x37
	strb	r0, [r3, #30]
	ldrh	r1, [r3, #0]
	ldr	r0, .L_45fb8
	and	r0, r1
	strh	r0, [r3, #0]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #15
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_45fb0:
	.4byte	gCurrentSprite
.L_45fb4:
	.4byte	sUnk_83C9A78
.L_45fb8:
	.4byte	0xFBFF


thumb_func_start func_8045FBC
func_8045FBC:
	push	{r4, r5, lr}
	ldr	r2, .L_45fe0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r1, .L_45fe4
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_45fe8
	cmp	r1, r0
	bne	.L_45fec
	mov	r0, #114	@ 0x72
	strb	r0, [r2, #28]
	b	.L_45ff8
.L_45fe0:
	.4byte	gCurrentSprite
.L_45fe4:
	.4byte	sUnk_83C9B28
.L_45fe8:
	.4byte	0x7FFF
.L_45fec:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
.L_45ff8:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046000
func_8046000:
	ldr	r1, .L_4601c
	ldr	r0, .L_46020
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #115	@ 0x73
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_4601c:
	.4byte	gCurrentSprite
.L_46020:
	.4byte	sUnk_83C9AA0


thumb_func_start func_8046024
func_8046024:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_46040
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	ldr	r0, .L_46044
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_46048
	bl	func_8045C94
	b	.L_46084
	.align	2, 0
.L_46040:
	.4byte	gCurrentSprite
.L_46044:
	.4byte	gUnk_30000A0
.L_46048:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_46070
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_46074
	cmp	r1, r0
	bne	.L_46078
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_46082
.L_46070:
	.4byte	sUnk_83C9B56
.L_46074:
	.4byte	0x7FFF
.L_46078:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_46082:
	strh	r0, [r4, #8]
.L_46084:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804608C
func_804608C:
	ldr	r1, .L_460a8
	ldr	r0, .L_460ac
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r2, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_460a8:
	.4byte	gCurrentSprite
.L_460ac:
	.4byte	sUnk_83C9A50


thumb_func_start func_80460B0
func_80460B0:
	push	{r4, r5, lr}
	ldr	r5, .L_46114
	ldr	r0, .L_46118
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
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_4611c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_46120
	ldr	r0, .L_46124
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
.L_46114:
	.4byte	gCurrentSprite
.L_46118:
	.4byte	sUnk_83C9AE8
.L_4611c:
	.4byte	0xFEFF
.L_46120:
	.4byte	gPersistentSpriteData
.L_46124:
	.4byte	gCurrentRoom


thumb_func_start func_8046128
func_8046128:
	push	{lr}
	ldr	r1, .L_46138
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80460B0
	pop	{r0}
	bx	r0
.L_46138:
	.4byte	gCurrentSprite


thumb_func_start func_804613C
func_804613C:
	push	{lr}
	ldr	r1, .L_4614c
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80460B0
	pop	{r0}
	bx	r0
.L_4614c:
	.4byte	gCurrentSprite


thumb_func_start func_8046150
func_8046150:
	ldr	r1, .L_46164
	ldr	r0, .L_46168
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
.L_46164:
	.4byte	gCurrentSprite
.L_46168:
	.4byte	sUnk_83C9AA0


thumb_func_start func_804616C
func_804616C:
	push	{lr}
	ldr	r1, .L_4617c
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8046150
	pop	{r0}
	bx	r0
.L_4617c:
	.4byte	gCurrentSprite


thumb_func_start func_8046180
func_8046180:
	push	{lr}
	ldr	r1, .L_46190
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8046150
	pop	{r0}
	bx	r0
.L_46190:
	.4byte	gCurrentSprite


thumb_func_start func_8046194
func_8046194:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_461b0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	ldr	r0, .L_461b4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_461b8
	bl	func_8045C94
	b	.L_46218
	.align	2, 0
.L_461b0:
	.4byte	gCurrentSprite
.L_461b4:
	.4byte	gUnk_30000A0
.L_461b8:
	ldr	r0, .L_461d0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_461da
	ldrb	r0, [r4, #28]
	cmp	r0, #52	@ 0x34
	bne	.L_461d4
	mov	r0, #31
	strb	r0, [r4, #28]
	b	.L_46218
.L_461d0:
	.4byte	gSpriteCollisionResult
.L_461d4:
	mov	r0, #33	@ 0x21
	strb	r0, [r4, #28]
	b	.L_46218
.L_461da:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_46204
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_46208
	cmp	r1, r0
	bne	.L_4620c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_46216
	.align	2, 0
.L_46204:
	.4byte	sUnk_83C9B96
.L_46208:
	.4byte	0x7FFF
.L_4620c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_46216:
	strh	r0, [r4, #8]
.L_46218:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046220
func_8046220:
	push	{r4, lr}
	ldr	r4, .L_46260
	ldrh	r1, [r4, #10]
	add	r1, #2
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_46264
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_46254
	mov	r0, #54	@ 0x36
	strb	r0, [r4, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
.L_46254:
	bl	func_8046194
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46260:
	.4byte	gCurrentSprite
.L_46264:
	.4byte	gUnk_3000A51


thumb_func_start func_8046268
func_8046268:
	push	{r4, lr}
	ldr	r4, .L_462a8
	ldrh	r1, [r4, #10]
	sub	r1, #2
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_462ac
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_4629c
	mov	r0, #52	@ 0x34
	strb	r0, [r4, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
.L_4629c:
	bl	func_8046194
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_462a8:
	.4byte	gCurrentSprite
.L_462ac:
	.4byte	gUnk_3000A51


thumb_func_start func_80462B0
func_80462B0:
	push	{r4, lr}
	ldr	r4, .L_462dc
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #1
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_462e0
	ldr	r0, .L_462e4
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
.L_462dc:
	.4byte	gCurrentSprite
.L_462e0:
	.4byte	gPersistentSpriteData
.L_462e4:
	.4byte	gCurrentRoom


thumb_func_start SpriteTobawani
SpriteTobawani:
	push	{lr}
	ldr	r0, .L_46300
	ldrb	r0, [r0, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_462f4
	b	.L_46540
.L_462f4:
	lsl	r0, r0, #2
	ldr	r1, .L_46304
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_46300:
	.4byte	gCurrentSprite
.L_46304:
	.4byte	.L_46308
.L_46308:
	.4byte	.L_464d8
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_464dc
	.4byte	.L_464e0
	.4byte	.L_464e6
	.4byte	.L_464ea
	.4byte	.L_46540
	.4byte	.L_464ea
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46514
	.4byte	.L_46518
	.4byte	.L_4651e
	.4byte	.L_46522
	.4byte	.L_46528
	.4byte	.L_46540
	.4byte	.L_46534
	.4byte	.L_46540
	.4byte	.L_4650e
	.4byte	.L_46540
	.4byte	.L_4650e
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46528
	.4byte	.L_4652e
	.4byte	.L_46534
	.4byte	.L_4653a
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46514
	.4byte	.L_4651e
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_4651e
	.4byte	.L_46514
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_46540
	.4byte	.L_464f0
	.4byte	.L_464f4
	.4byte	.L_464fa
	.4byte	.L_464fe
	.4byte	.L_46504
	.4byte	.L_46508
.L_464d8:
	bl	func_8045D00
.L_464dc:
	bl	func_8045D48
.L_464e0:
	bl	func_8045D70
	b	.L_46544
.L_464e6:
	bl	func_8045E34
.L_464ea:
	bl	func_8045E5C
	b	.L_46544
.L_464f0:
	bl	func_8045EAC
.L_464f4:
	bl	func_8045ED4
	b	.L_46544
.L_464fa:
	bl	func_8045F64
.L_464fe:
	bl	func_8045FBC
	b	.L_46544
.L_46504:
	bl	func_8046000
.L_46508:
	bl	func_8046024
	b	.L_46544
.L_4650e:
	bl	func_804608C
	b	.L_46544
.L_46514:
	bl	func_8046128
.L_46518:
	bl	SpriteUtilFallOffscreenRight
	b	.L_46544
.L_4651e:
	bl	func_804613C
.L_46522:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_46544
.L_46528:
	bl	func_804616C
	b	.L_46544
.L_4652e:
	bl	func_8046220
	b	.L_46544
.L_46534:
	bl	func_8046180
	b	.L_46544
.L_4653a:
	bl	func_8046268
	b	.L_46544
.L_46540:
	bl	func_80462B0
.L_46544:
	pop	{r0}
	bx	r0
