.include "macros.s.inc"


thumb_func_start func_8053BBC
func_8053BBC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_53ca0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r0, [r3, #8]
	add	r1, r2, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	ldrh	r0, [r3, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
	add	r3, #36	@ 0x24
	add	r1, #34	@ 0x22
	ldrb	r3, [r3, #0]
	add	r1, r1, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r1
	ldr	r1, .L_53ca4
	add	r0, r2, r1
	lsr	r0, r0, #16
	mov	r9, r0
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #13
	add	r2, r2, r0
	lsr	r2, r2, #16
	mov	r8, r2
	mov	r6, #0
	ldr	r7, .L_53ca8
.L_53c10:
	ldr	r1, .L_53cac
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, r7
	bne	.L_53cb4
	ldrb	r0, [r5, #23]
	cmp	r0, #205	@ 0xcd
	bne	.L_53cb4
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_53cb4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r2, r1, #0
	ldrh	r0, [r5, #8]
	add	r3, r2, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r1, [r5, #10]
	add	r2, r2, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r5, #0
	add	r0, #35	@ 0x23
	ldrb	r4, [r0, #0]
	sub	r4, r3, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r3, r3, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, r5, #0
	add	r0, #37	@ 0x25
	ldrb	r1, [r0, #0]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r4, [sp, #0]
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r0, [sp, #16]
	mov	r1, sl
	mov	r2, r9
	mov	r3, r8
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_53cb4
	mov	r0, #110	@ 0x6e
	strb	r0, [r5, #28]
	ldrh	r0, [r5, #0]
	ldr	r2, .L_53cb0
	add	r1, r2, #0
	and	r0, r1
	strh	r0, [r5, #0]
	mov	r0, #1
	b	.L_53cbc
	.align	2, 0
.L_53ca0:
	.4byte	gCurrentSprite
.L_53ca4:
	.4byte	0xFFBA0000
.L_53ca8:
	.4byte	0x101
.L_53cac:
	.4byte	gSpriteData
.L_53cb0:
	.4byte	0xFEFF
.L_53cb4:
	add	r6, #1
	cmp	r6, #23
	ble	.L_53c10
	mov	r0, #0
.L_53cbc:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8053CCC
func_8053CCC:
	push	{r4, lr}
	ldr	r0, .L_53cf0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r1, r2, #0
	ldrh	r0, [r0, #0]
	add	r0, r1, r0
	lsl	r0, r0, #16
	ldr	r3, .L_53cf4
	ldrh	r2, [r3, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	ldr	r4, .L_53cf8
	add	r0, r0, r4
	cmp	r1, r0
	bhi	.L_53cfc
	mov	r0, #1
	b	.L_53d02
.L_53cf0:
	.4byte	gBg1YPosition
.L_53cf4:
	.4byte	gCurrentSprite
.L_53cf8:
	.4byte	0xFF200000
.L_53cfc:
	.2byte	0x1e50
	strh	r0, [r3, #8]
	mov	r0, #0
.L_53d02:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8053D08
func_8053D08:
	push	{r4, lr}
	ldr	r2, .L_53d28
	mov	r0, #0
	strb	r0, [r2, #30]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	add	r3, r2, #0
	cmp	r0, #13
	bls	.L_53d1e
	b	.L_53e5c
.L_53d1e:
	lsl	r0, r0, #2
	ldr	r1, .L_53d2c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_53d28:
	.4byte	gCurrentSprite
.L_53d2c:
	.4byte	.L_53d30
.L_53d30:
	.4byte	.L_53d68
	.4byte	.L_53d68
	.4byte	.L_53d68
	.4byte	.L_53d82
	.4byte	.L_53d82
	.4byte	.L_53d9c
	.4byte	.L_53d9c
	.4byte	.L_53e06
	.4byte	.L_53db8
	.4byte	.L_53e20
	.4byte	.L_53e20
	.4byte	.L_53e3e
	.4byte	.L_53e3e
	.4byte	.L_53e3e
.L_53d68:
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #92	@ 0x5c
	b	.L_53e78
.L_53d82:
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #108	@ 0x6c
	b	.L_53e78
.L_53d9c:
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r2, #128	@ 0x80
	strb	r2, [r0, #0]
	add	r1, r3, #0
	add	r1, #36	@ 0x24
	mov	r0, #20
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #124	@ 0x7c
	b	.L_53e78
.L_53db8:
	ldr	r1, .L_53df0
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mov	r4, #44	@ 0x2c
	mul	r0, r4
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_53df4
	mov	r1, #0
	strb	r4, [r3, #30]
	add	r2, r3, #0
	add	r2, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	b	.L_53e78
.L_53df0:
	.4byte	gSpriteData
.L_53df4:
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_53e02
	strb	r4, [r3, #30]
	b	.L_53e06
.L_53e02:
	mov	r0, #45	@ 0x2d
	strb	r0, [r3, #30]
.L_53e06:
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	b	.L_53e78
.L_53e20:
	mov	r0, #44	@ 0x2c
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #156	@ 0x9c
	b	.L_53e78
.L_53e3e:
	mov	r0, #44	@ 0x2c
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #176	@ 0xb0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #172	@ 0xac
	b	.L_53e78
.L_53e5c:
	mov	r0, #44	@ 0x2c
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #192	@ 0xc0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #188	@ 0xbc
.L_53e78:
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8053E80
func_8053E80:
	ldr	r0, .L_53ea4
	ldr	r2, .L_53ea8
	str	r2, [r0, #0]
	ldr	r1, .L_53eac
	str	r1, [r0, #4]
	ldr	r3, .L_53eb0
	str	r3, [r0, #8]
	ldr	r1, [r0, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r2, r2, r1
	str	r2, [r0, #0]
	ldr	r1, .L_53eb4
	str	r1, [r0, #4]
	str	r3, [r0, #8]
	ldr	r0, [r0, #8]
	bx	lr
	.align	2, 0
.L_53ea4:
	.4byte	0x40000D4
.L_53ea8:
	.4byte	sUnk_83DB610
.L_53eac:
	.4byte	0x6015800
.L_53eb0:
	.4byte	0x80000080
.L_53eb4:
	.4byte	0x6015C00


thumb_func_start func_8053EB8
func_8053EB8:
	ldr	r0, .L_53edc
	ldr	r2, .L_53ee0
	str	r2, [r0, #0]
	ldr	r1, .L_53ee4
	str	r1, [r0, #4]
	ldr	r3, .L_53ee8
	str	r3, [r0, #8]
	ldr	r1, [r0, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r2, r2, r1
	str	r2, [r0, #0]
	ldr	r1, .L_53eec
	str	r1, [r0, #4]
	str	r3, [r0, #8]
	ldr	r0, [r0, #8]
	bx	lr
	.align	2, 0
.L_53edc:
	.4byte	0x40000D4
.L_53ee0:
	.4byte	sUnk_83DB810
.L_53ee4:
	.4byte	0x6015800
.L_53ee8:
	.4byte	0x80000080
.L_53eec:
	.4byte	0x6015C00


thumb_func_start func_8053EF0
func_8053EF0:
	push	{lr}
	ldr	r2, .L_53f10
	ldr	r1, [r2, #4]
	ldr	r0, .L_53f14
	cmp	r1, r0
	bne	.L_53f1c
	ldrb	r0, [r2, #22]
	cmp	r0, #1
	bne	.L_53f1c
	ldrh	r0, [r2, #20]
	cmp	r0, #0
	bne	.L_53f18
	bl	func_8053EB8
	b	.L_53f1c
	.align	2, 0
.L_53f10:
	.4byte	gCurrentSprite
.L_53f14:
	.4byte	sUnk_83DABB0
.L_53f18:
	bl	func_8053E80
.L_53f1c:
	pop	{r0}
	bx	r0


thumb_func_start func_8053F20
func_8053F20:
	push	{r4, r5, r6, lr}
	bl	func_8053EF0
	ldr	r4, .L_53f5c
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r1, [r5, #0]
	cmp	r1, #0
	beq	.L_53fcc
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_53f80
	ldrh	r0, [r4, #8]
	add	r0, #2
	mov	r6, #0
	strh	r0, [r4, #8]
	sub	r0, r1, #1
	strb	r0, [r5, #0]
	mov	r2, #127	@ 0x7f
	and	r2, r0
	cmp	r2, #0
	bne	.L_53fcc
	add	r3, r4, #0
	add	r3, #40	@ 0x28
	ldrb	r1, [r3, #0]
	cmp	r1, #8
	bhi	.L_53f60
	strb	r6, [r5, #0]
	b	.L_53fcc
.L_53f5c:
	.4byte	gCurrentSprite
.L_53f60:
	mov	r0, #148	@ 0x94
	strb	r0, [r5, #0]
	sub	r0, r1, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #8
	bne	.L_53fcc
	strb	r6, [r5, #0]
	ldr	r0, .L_53f7c
	str	r0, [r4, #4]
	strb	r6, [r4, #22]
	strh	r2, [r4, #20]
	b	.L_53fcc
.L_53f7c:
	.4byte	sUnk_83DABB0
.L_53f80:
	bl	func_8053CCC
	add	r3, r0, #0
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_53fb6
	mov	r0, #20
	strb	r0, [r5, #0]
	add	r2, r4, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	cmp	r0, #15
	bhi	.L_53fc0
	add	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #16
	bne	.L_53fb6
	ldr	r0, .L_53fd4
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
.L_53fb6:
	ldr	r0, .L_53fd8
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #15
	bls	.L_53fcc
.L_53fc0:
	cmp	r3, #0
	beq	.L_53fcc
	ldr	r0, .L_53fd8
	add	r0, #41	@ 0x29
	mov	r1, #0
	strb	r1, [r0, #0]
.L_53fcc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_53fd4:
	.4byte	sUnk_83DABA0
.L_53fd8:
	.4byte	gCurrentSprite


thumb_func_start func_8053FDC
func_8053FDC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_54094
	ldrb	r1, [r4, #26]
	mov	r0, #128	@ 0x80
	mov	r3, #0
	orr	r0, r1
	strb	r0, [r4, #26]
	ldrh	r1, [r4, #0]
	ldr	r2, .L_54098
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5409c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	strb	r2, [r4, #30]
	mov	r0, #1
	strb	r0, [r4, #28]
	ldr	r1, .L_540a0
	add	r0, r1, #0
	ldrh	r2, [r4, #8]
	add	r0, r0, r2
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r4, #10]
	bl	SpriteUtilTurnTowardWario
	mov	r0, #16
	strb	r0, [r4, #29]
	bl	UpdateBossHealthGauge
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #224	@ 0xe0
	str	r0, [sp, #0]
	mov	r0, #203	@ 0xcb
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #240	@ 0xf0
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #204	@ 0xcc
	bl	func_801E430
	mov	r0, #131	@ 0x83
	mov	r1, #8
	mov	r2, #4
	bl	LoadBossSpriteGraphics
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54094:
	.4byte	gCurrentSprite
.L_54098:
	.4byte	0xC488
.L_5409c:
	.4byte	sUnk_83DABA0
.L_540a0:
	.4byte	0xFFFFFF00


thumb_func_start func_80540A4
func_80540A4:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_540d8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_540dc
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_540e0
	cmp	r1, r0
	bne	.L_540c6
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_540c6:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_540d8:
	.4byte	gCurrentSprite
.L_540dc:
	.4byte	sUnk_83DBA70
.L_540e0:
	.4byte	0x7FFF


thumb_func_start func_80540E4
func_80540E4:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_54138
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5414a
	ldrb	r1, [r2, #26]
	mov	r0, #127	@ 0x7f
	and	r0, r1
	strb	r0, [r2, #26]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_5413c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_54140
	cmp	r1, r0
	bne	.L_54118
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_54118:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_54144
	ldrh	r0, [r2, #10]
	add	r0, #1
	b	.L_54148
	.align	2, 0
.L_54138:
	.4byte	gCurrentSprite
.L_5413c:
	.4byte	sUnk_83DBA70
.L_54140:
	.4byte	0x7FFF
.L_54144:
	ldrh	r0, [r2, #10]
	sub	r0, #1
.L_54148:
	strh	r0, [r2, #10]
.L_5414a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8054150
func_8054150:
	push	{lr}
	ldr	r1, .L_54178
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #0]
	ldrh	r2, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r0, r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #146	@ 0x92
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54178:
	.4byte	gCurrentSprite


thumb_func_start func_805417C
func_805417C:
	push	{r4, lr}
	ldr	r4, .L_54190
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	bne	.L_54194
	mov	r0, #37	@ 0x25
	b	.L_541b0
.L_54190:
	.4byte	gCurrentSprite
.L_54194:
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	bl	func_8053CCC
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_541b2
	mov	r0, #16
.L_541b0:
	strb	r0, [r4, #28]
.L_541b2:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80541B8
func_80541B8:
	push	{lr}
	ldr	r1, .L_541dc
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #0]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_541e0
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #146	@ 0x92
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_541dc:
	.4byte	gCurrentSprite
.L_541e0:
	.4byte	0xEFFF


thumb_func_start func_80541E4
func_80541E4:
	push	{r4, lr}
	ldr	r4, .L_541f8
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_541fc
	mov	r0, #35	@ 0x23
	b	.L_54218
.L_541f8:
	.4byte	gCurrentSprite
.L_541fc:
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	bl	func_8053CCC
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5421a
	mov	r0, #16
.L_54218:
	strb	r0, [r4, #28]
.L_5421a:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8054220
func_8054220:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_54258
	mov	r6, #0
	mov	r0, #32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	mov	r5, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #145	@ 0x91
	bl	m4aSongNumStart
	ldr	r0, .L_5425c
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r6, [r4, #20]
	bl	func_8053E80
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_54258:
	.4byte	gCurrentSprite
.L_5425c:
	.4byte	sUnk_83DABA0


thumb_func_start func_8054260
func_8054260:
	ldr	r2, .L_54274
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_54278
	ldrh	r0, [r2, #10]
	add	r0, #2
	b	.L_5427c
.L_54274:
	.4byte	gCurrentSprite
.L_54278:
	ldrh	r0, [r2, #10]
	sub	r0, #2
.L_5427c:
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #128	@ 0x80
	bhi	.L_54296
	ldrh	r0, [r2, #0]
	mov	r1, #32
	orr	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	b	.L_5429a
.L_54296:
	sub	r0, #2
	strb	r0, [r1, #0]
.L_5429a:
	bx	lr


thumb_func_start func_805429C
func_805429C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_542d0
	mov	r6, #0
	mov	r0, #34	@ 0x22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #1
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_542d4
	and	r0, r1
	mov	r5, #0
	strh	r0, [r4, #0]
	mov	r0, #145	@ 0x91
	bl	m4aSongNumStart
	ldr	r0, .L_542d8
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r6, [r4, #20]
	bl	func_8053E80
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_542d0:
	.4byte	gCurrentSprite
.L_542d4:
	.4byte	0xEFFF
.L_542d8:
	.4byte	sUnk_83DABA0


thumb_func_start func_80542DC
func_80542DC:
	ldr	r2, .L_542f0
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_542f4
	ldrh	r0, [r2, #10]
	add	r0, #2
	b	.L_542f8
.L_542f0:
	.4byte	gCurrentSprite
.L_542f4:
	ldrh	r0, [r2, #10]
	sub	r0, #2
.L_542f8:
	strh	r0, [r2, #10]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r3, [r1, #0]
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	bge	.L_54316
	ldrh	r0, [r2, #0]
	mov	r1, #32
	orr	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	b	.L_5431a
.L_54316:
	add	r0, r3, #2
	strb	r0, [r1, #0]
.L_5431a:
	bx	lr


thumb_func_start func_805431C
func_805431C:
	ldr	r3, .L_54358
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_54360
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #2
	mov	r2, ip
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_54392
	ldr	r0, .L_5435c
	and	r0, r1
	mov	r2, #0
	strh	r0, [r3, #0]
	mov	r1, #16
	strb	r1, [r3, #28]
	mov	r0, ip
	strb	r2, [r0, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	b	.L_54392
.L_54358:
	.4byte	gCurrentSprite
.L_5435c:
	.4byte	0xFFDF
.L_54360:
	mov	r2, #39	@ 0x27
	add	r2, r2, r3
	mov	ip, r2
	ldrb	r0, [r2, #0]
	add	r0, #2
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #253	@ 0xfd
	bls	.L_54392
	ldr	r0, .L_54394
	and	r0, r1
	mov	r1, #0
	strh	r0, [r3, #0]
	mov	r2, #16
	strb	r2, [r3, #28]
	mov	r0, ip
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #9
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
.L_54392:
	bx	lr
.L_54394:
	.4byte	0xFFDF


thumb_func_start func_8054398
func_8054398:
	ldr	r0, .L_543b8
	mov	r2, #0
	mov	r1, #48	@ 0x30
	strb	r1, [r0, #28]
	ldr	r1, .L_543bc
	str	r1, [r0, #4]
	strb	r2, [r0, #22]
	mov	r3, #0
	strh	r2, [r0, #20]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #100	@ 0x64
	strb	r1, [r2, #0]
	add	r0, #41	@ 0x29
	strb	r3, [r0, #0]
	bx	lr
.L_543b8:
	.4byte	gCurrentSprite
.L_543bc:
	.4byte	sUnk_83DABC8


thumb_func_start func_80543C0
func_80543C0:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_54410
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	add	r5, r4, #0
	cmp	r0, #0
	beq	.L_5444e
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #49	@ 0x31
	bhi	.L_54478
	mov	r0, #4
	and	r1, r0
	cmp	r1, #0
	beq	.L_543f8
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_543f8
	sub	r0, #1
	strb	r0, [r1, #0]
.L_543f8:
	add	r2, r5, #0
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #20
	bne	.L_54414
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	add	r3, #160	@ 0xa0
	ldrh	r0, [r2, #10]
	add	r0, #120	@ 0x78
	b	.L_54442
.L_54410:
	.4byte	gCurrentSprite
.L_54414:
	cmp	r0, #15
	bne	.L_54424
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	add	r3, #200	@ 0xc8
	ldrh	r0, [r2, #10]
	add	r0, #80	@ 0x50
	b	.L_54442
.L_54424:
	cmp	r0, #10
	bne	.L_54434
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	add	r3, #130	@ 0x82
	ldrh	r0, [r2, #10]
	add	r0, #120	@ 0x78
	b	.L_54442
.L_54434:
	cmp	r0, #5
	bne	.L_54478
	ldrb	r1, [r5, #24]
	ldrh	r3, [r5, #8]
	add	r3, #170	@ 0xaa
	ldrh	r0, [r5, #10]
	add	r0, #90	@ 0x5a
.L_54442:
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	b	.L_54478
.L_5444e:
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #210	@ 0xd2
	ldrh	r0, [r4, #10]
	add	r0, #110	@ 0x6e
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #110	@ 0x6e
	ldrh	r0, [r4, #10]
	add	r0, #110	@ 0x6e
	str	r0, [sp, #0]
	mov	r0, #207	@ 0xcf
	mov	r2, #0
	bl	func_801E430
.L_54478:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8054480
func_8054480:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r4, .L_544ac
	ldrh	r1, [r4, #0]
	mov	r5, #64	@ 0x40
	add	r0, r5, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L_544b0
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #56	@ 0x38
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_544c4
.L_544ac:
	.4byte	gCurrentSprite
.L_544b0:
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #56	@ 0x38
	str	r0, [sp, #0]
	str	r1, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #0
	bl	SpawnPrimarySpriteWithStatus
.L_544c4:
	mov	r0, #144	@ 0x90
	bl	m4aSongNumStart
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80544D4
func_80544D4:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_54544
	ldrb	r1, [r7, #26]
	mov	r0, #128	@ 0x80
	mov	r6, #0
	orr	r0, r1
	strb	r0, [r7, #26]
	ldrh	r1, [r7, #0]
	ldr	r0, .L_54548
	and	r0, r1
	ldr	r2, .L_5454c
	add	r1, r2, #0
	mov	r5, #0
	orr	r0, r1
	strh	r0, [r7, #0]
	add	r0, r7, #0
	add	r0, #32
	mov	r4, #16
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r1, r7, #0
	add	r1, #36	@ 0x24
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r7, #0
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	strb	r5, [r7, #30]
	bl	SpriteUtilTurnTowardWario
	mov	r0, #105	@ 0x69
	bl	SpriteUtilFindSpriteSlotWork3
	strb	r4, [r7, #29]
	ldr	r0, .L_54550
	str	r0, [r7, #4]
	strb	r5, [r7, #22]
	strh	r6, [r7, #20]
	mov	r0, #15
	strb	r0, [r7, #28]
	add	r1, r7, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_54544:
	.4byte	gCurrentSprite
.L_54548:
	.4byte	0xFFFB
.L_5454c:
	.4byte	0x8408
.L_54550:
	.4byte	sUnk_83DB0B0


thumb_func_start func_8054554
func_8054554:
	push	{lr}
	ldr	r1, .L_54574
	mov	r2, #0
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r3, #0]
	add	r1, #40	@ 0x28
	strb	r2, [r1, #0]
	mov	r0, #207	@ 0xcf
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_54574:
	.4byte	gCurrentSprite


thumb_func_start func_8054578
func_8054578:
	push	{lr}
	ldr	r0, .L_545b0
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_54596
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_545aa
	ldr	r1, .L_545b4
	mov	r0, #7
	strb	r0, [r1, #0]
.L_54596:
	ldr	r0, .L_545b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_545aa
	ldr	r0, .L_545b8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_545aa
	bl	func_8054554
.L_545aa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_545b0:
	.4byte	gCurrentSprite
.L_545b4:
	.4byte	gColorFadingState
.L_545b8:
	.4byte	gCurrentShopItem


thumb_func_start func_80545BC
func_80545BC:
	ldr	r2, .L_545e8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #40	@ 0x28
	bhi	.L_545e4
	ldrh	r0, [r2, #10]
	sub	r0, #2
	strh	r0, [r2, #10]
	ldrh	r0, [r2, #8]
	add	r0, #2
	strh	r0, [r2, #8]
	cmp	r1, #0
	bne	.L_545e4
	mov	r0, #17
	strb	r0, [r2, #28]
.L_545e4:
	bx	lr
	.align	2, 0
.L_545e8:
	.4byte	gCurrentSprite


thumb_func_start func_80545EC
func_80545EC:
	ldr	r1, .L_5460c
	ldr	r0, .L_54610
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_54614
	and	r0, r2
	strh	r0, [r1, #0]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	bx	lr
.L_5460c:
	.4byte	gCurrentSprite
.L_54610:
	.4byte	sUnk_83DADA8
.L_54614:
	.4byte	0xFFF7


thumb_func_start func_8054618
func_8054618:
	push	{r4, lr}
	ldr	r3, .L_54658
	ldr	r2, .L_5465c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #140	@ 0x8c
	strh	r0, [r3, #10]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54652
	mov	r0, #23
	strb	r0, [r3, #28]
.L_54652:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_54658:
	.4byte	gCurrentSprite
.L_5465c:
	.4byte	gSpriteData


thumb_func_start func_8054660
func_8054660:
	ldr	r0, .L_54678
	ldr	r1, .L_5467c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	bx	lr
.L_54678:
	.4byte	gCurrentSprite
.L_5467c:
	.4byte	sUnk_83DACC0


thumb_func_start func_8054680
func_8054680:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_54704
	ldr	r7, .L_54708
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r0, [r6, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r7
	ldrh	r0, [r0, #10]
	add	r0, #140	@ 0x8c
	strh	r0, [r4, #10]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r0, r0, r7
	ldrh	r0, [r0, #8]
	strh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	bne	.L_546f8
	bl	SpriteUtilStartBossTimer
	mov	r0, #19
	strb	r0, [r4, #28]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r0, r0, r7
	mov	r1, #16
	strb	r1, [r0, #28]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r1, r7, #4
	add	r0, r0, r1
	ldr	r1, .L_5470c
	str	r1, [r0, #0]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r0, r0, r7
	mov	r1, #0
	strb	r1, [r0, #22]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r0, r0, r7
	mov	r1, r8
	strh	r1, [r0, #20]
	ldrb	r0, [r6, #0]
	mul	r0, r5
	add	r0, r0, r7
	add	r0, #41	@ 0x29
	mov	r1, #20
	strb	r1, [r0, #0]
.L_546f8:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54704:
	.4byte	gCurrentSprite
.L_54708:
	.4byte	gSpriteData
.L_5470c:
	.4byte	sUnk_83DAB28


thumb_func_start func_8054710
func_8054710:
	ldr	r0, .L_54728
	ldr	r1, .L_5472c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #20
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_54728:
	.4byte	gCurrentSprite
.L_5472c:
	.4byte	sUnk_83DAD28


thumb_func_start func_8054730
func_8054730:
	push	{r4, lr}
	ldr	r4, .L_547ac
	ldr	r0, [r4, #20]
	ldr	r1, .L_547b0
	and	r0, r1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #10
	cmp	r0, r1
	bne	.L_54748
	mov	r0, #141	@ 0x8d
	bl	m4aSongNumStart
.L_54748:
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54776
	mov	r0, #20
	strb	r0, [r2, #0]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #15
	bls	.L_54776
	mov	r0, #21
	strb	r0, [r4, #28]
	mov	r0, #4
	strb	r0, [r2, #0]
.L_54776:
	ldr	r3, .L_547ac
	ldr	r2, .L_547b4
	add	r4, r3, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #140	@ 0x8c
	strh	r0, [r3, #10]
	ldrb	r0, [r4, #0]
	mul	r1, r0
	add	r1, r1, r2
	ldr	r2, .L_547b8
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r1, [r1, #8]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r3, #8]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_547ac:
	.4byte	gCurrentSprite
.L_547b0:
	.4byte	0xFFFFFF
.L_547b4:
	.4byte	gSpriteData
.L_547b8:
	.4byte	sUnk_83DBA34


thumb_func_start func_80547BC
func_80547BC:
	ldr	r1, .L_547d8
	ldrb	r2, [r1, #26]
	mov	r0, #127	@ 0x7f
	and	r0, r2
	mov	r2, #0
	strb	r0, [r1, #26]
	ldr	r0, .L_547dc
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #22
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_547d8:
	.4byte	gCurrentSprite
.L_547dc:
	.4byte	sUnk_83DACC0


thumb_func_start func_80547E0
func_80547E0:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L_548b0
	ldr	r6, .L_548b4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r5
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r4, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r6
	ldrh	r0, [r0, #10]
	add	r0, #140	@ 0x8c
	mov	r7, #0
	strh	r0, [r5, #10]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	mul	r0, r4
	add	r0, r0, r6
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	add	r3, r5, #0
	add	r3, #40	@ 0x28
	strb	r0, [r3, #0]
	ldrb	r0, [r1, #0]
	add	r1, r0, #0
	mul	r1, r4
	add	r1, r1, r6
	ldr	r2, .L_548b8
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r1, [r1, #8]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r5, #8]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	mul	r0, r4
	add	r0, r0, r6
	ldrb	r0, [r0, #28]
	cmp	r0, #32
	beq	.L_54838
	cmp	r0, #34	@ 0x22
	bne	.L_54854
.L_54838:
	ldr	r0, .L_548bc
	str	r0, [r5, #4]
	strb	r7, [r5, #22]
	mov	r0, #0
	strh	r0, [r5, #20]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r7, [r0, #0]
	mov	r0, #115	@ 0x73
	strb	r0, [r5, #28]
.L_54854:
	add	r4, r5, #0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r3, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r6
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_54938
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	beq	.L_54900
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_548c4
	ldrb	r0, [r4, #29]
	cmp	r0, #12
	bhi	.L_54938
	mov	r2, #63	@ 0x3f
	and	r2, r1
	cmp	r2, #0
	bne	.L_54938
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r4, #0]
	ldr	r0, .L_548c0
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	bl	func_8054480
	b	.L_54938
	.align	2, 0
.L_548b0:
	.4byte	gCurrentSprite
.L_548b4:
	.4byte	gSpriteData
.L_548b8:
	.4byte	sUnk_83DBA34
.L_548bc:
	.4byte	sUnk_83DAD68
.L_548c0:
	.4byte	sUnk_83DAF00
.L_548c4:
	mov	r1, ip
	ldrb	r0, [r1, #0]
	mul	r0, r3
	add	r1, r6, #4
	add	r0, r0, r1
	ldr	r1, .L_548fc
	str	r1, [r0, #0]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	mul	r0, r3
	add	r0, r0, r6
	strb	r2, [r0, #22]
	ldrb	r0, [r1, #0]
	mul	r0, r3
	add	r0, r0, r6
	strh	r2, [r0, #20]
	ldrb	r0, [r1, #0]
	mul	r0, r3
	add	r0, r0, r6
	add	r0, #41	@ 0x29
	mov	r1, #20
	strb	r1, [r0, #0]
	mov	r0, #19
	strb	r0, [r4, #28]
	bl	func_8053E80
	b	.L_54938
	.align	2, 0
.L_548fc:
	.4byte	sUnk_83DAB28
.L_54900:
	mov	r0, #205	@ 0xcd
	bl	SpriteUtilCountSpriteType
	add	r1, r0, #0
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_54918
	sub	r0, #1
	strb	r0, [r2, #0]
	b	.L_54938
.L_54918:
	cmp	r1, #0
	ble	.L_54934
	ldrb	r0, [r4, #29]
	cmp	r0, #4
	bhi	.L_54938
	ldr	r0, .L_54930
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_54938
	bl	func_8054480
	b	.L_54938
.L_54930:
	.4byte	gUnk_3000BEC
.L_54934:
	mov	r0, #112	@ 0x70
	strb	r0, [r5, #28]
.L_54938:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8054940
func_8054940:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_54988
	ldr	r0, .L_5498c
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_54990
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #40	@ 0x28
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #205	@ 0xcd
	bl	SpawnPrimarySpriteWithStatus
	b	.L_549a6
.L_54988:
	.4byte	gCurrentSprite
.L_5498c:
	.4byte	sUnk_83DAD48
.L_54990:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #40	@ 0x28
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #205	@ 0xcd
	bl	SpawnPrimarySpriteWithStatus
.L_549a6:
	mov	r0, #143	@ 0x8f
	bl	m4aSongNumStart
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80549B4
func_80549B4:
	push	{r4, lr}
	ldr	r3, .L_54a08
	ldr	r2, .L_54a0c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #140	@ 0x8c
	strh	r0, [r3, #10]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r1, r0
	add	r1, r1, r2
	ldr	r2, .L_54a10
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r1, [r1, #8]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54a02
	mov	r0, #21
	strb	r0, [r3, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
.L_54a02:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_54a08:
	.4byte	gCurrentSprite
.L_54a0c:
	.4byte	gSpriteData
.L_54a10:
	.4byte	sUnk_83DBA34


thumb_func_start func_8054A14
func_8054A14:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_54a44
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r3, r1, #0
	cmp	r0, #0
	bne	.L_54a4c
	ldr	r2, .L_54a48
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_54ace
	mov	r0, #116	@ 0x74
	strb	r0, [r3, #28]
	b	.L_54ace
	.align	2, 0
.L_54a44:
	.4byte	gCurrentSprite
.L_54a48:
	.4byte	gSpriteData
.L_54a4c:
	ldr	r2, .L_54a70
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #32
	bne	.L_54a78
	ldrh	r0, [r3, #10]
	add	r0, #1
	strh	r0, [r3, #10]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	ldrb	r2, [r0, #0]
	ldr	r5, .L_54a74
	b	.L_54a86
.L_54a70:
	.4byte	gSpriteData
.L_54a74:
	.4byte	sUnk_83DBB62
.L_54a78:
	ldrh	r0, [r3, #10]
	sub	r0, #1
	strh	r0, [r3, #10]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	ldrb	r2, [r0, #0]
	ldr	r5, .L_54ad4
.L_54a86:
	lsl	r0, r2, #2
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_54ad8
	cmp	r1, r0
	bne	.L_54a9a
	mov	r2, #0
	ldrh	r4, [r5, #0]
.L_54a9a:
	lsl	r0, r2, #2
	add	r1, r5, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r2, #1
	add	r2, r3, #0
	add	r2, #41	@ 0x29
	strb	r0, [r2, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #10]
	add	r0, r0, r1
	strh	r0, [r3, #10]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54ace
	ldrh	r0, [r3, #0]
	mov	r1, #4
	orr	r0, r1
	strh	r0, [r3, #0]
.L_54ace:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_54ad4:
	.4byte	sUnk_83DBAE2
.L_54ad8:
	.4byte	0x7FFF


thumb_func_start func_8054ADC
func_8054ADC:
	ldr	r1, .L_54b00
	ldr	r0, .L_54b04
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #117	@ 0x75
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r2, #0]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_54b08
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_54b00:
	.4byte	gCurrentSprite
.L_54b04:
	.4byte	sUnk_83DADF0
.L_54b08:
	.4byte	0xFFFB


thumb_func_start func_8054B0C
func_8054B0C:
	push	{r4, lr}
	ldr	r3, .L_54b68
	ldr	r2, .L_54b6c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #112	@ 0x70
	strh	r0, [r3, #10]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r1, r0
	add	r1, r1, r2
	mov	r2, #156	@ 0x9c
	lsl	r2, r2, #1
	add	r0, r2, #0
	ldrh	r1, [r1, #8]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #14
	bne	.L_54b48
	mov	r0, #45	@ 0x2d
	strb	r0, [r3, #30]
.L_54b48:
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54b60
	mov	r0, #118	@ 0x76
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #29]
	lsl	r0, r0, #2
	add	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
.L_54b60:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54b68:
	.4byte	gCurrentSprite
.L_54b6c:
	.4byte	gSpriteData


thumb_func_start func_8054B70
func_8054B70:
	ldr	r1, .L_54b88
	ldr	r0, .L_54b8c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #119	@ 0x77
	strb	r0, [r1, #28]
	mov	r0, #45	@ 0x2d
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_54b88:
	.4byte	gCurrentSprite
.L_54b8c:
	.4byte	sUnk_83DAE78


thumb_func_start func_8054B90
func_8054B90:
	push	{r4, lr}
	ldr	r3, .L_54bf0
	ldr	r2, .L_54bf4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #112	@ 0x70
	strh	r0, [r3, #10]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r0, r1
	add	r0, r0, r2
	mov	r2, #156	@ 0x9c
	lsl	r2, r2, #1
	add	r1, r2, #0
	ldrh	r0, [r0, #8]
	add	r1, r1, r0
	strh	r1, [r3, #8]
	lsl	r1, r1, #16
	lsr	r1, r1, #18
	ldr	r0, .L_54bf8
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	cmp	r1, #64	@ 0x40
	bls	.L_54be2
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54bea
.L_54be2:
	mov	r0, #120	@ 0x78
	strb	r0, [r3, #28]
	mov	r0, #0
	strb	r0, [r3, #30]
.L_54bea:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_54bf0:
	.4byte	gCurrentSprite
.L_54bf4:
	.4byte	gSpriteData
.L_54bf8:
	.4byte	gBg1YPosition


thumb_func_start func_8054BFC
func_8054BFC:
	ldr	r0, .L_54c14
	ldr	r1, .L_54c18
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #121	@ 0x79
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #16
	strb	r1, [r0, #0]
	bx	lr
.L_54c14:
	.4byte	gCurrentSprite
.L_54c18:
	.4byte	sUnk_83DAE50


thumb_func_start func_8054C1C
func_8054C1C:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_54c80
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r6, [r0, #0]
	cmp	r6, #0
	bne	.L_54c90
	ldr	r5, .L_54c84
	mov	r1, #42	@ 0x2a
	add	r1, r1, r3
	mov	ip, r1
	ldrb	r0, [r1, #0]
	mov	r6, #44	@ 0x2c
	add	r4, r0, #0
	mul	r4, r6
	add	r0, r4, r5
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_54cec
	add	r0, r5, #4
	add	r0, r4, r0
	ldr	r1, .L_54c88
	str	r1, [r0, #0]
	mov	r7, ip
	ldrb	r0, [r7, #0]
	mul	r0, r6
	add	r0, r0, r5
	strb	r2, [r0, #22]
	ldrb	r0, [r7, #0]
	mul	r0, r6
	add	r0, r0, r5
	strh	r2, [r0, #20]
	ldrb	r0, [r7, #0]
	mul	r0, r6
	add	r0, r0, r5
	add	r0, #41	@ 0x29
	mov	r1, #20
	strb	r1, [r0, #0]
	mov	r0, #19
	strb	r0, [r3, #28]
	ldrh	r1, [r3, #0]
	ldr	r0, .L_54c8c
	and	r0, r1
	strh	r0, [r3, #0]
	b	.L_54cec
.L_54c80:
	.4byte	gCurrentSprite
.L_54c84:
	.4byte	gSpriteData
.L_54c88:
	.4byte	sUnk_83DAB28
.L_54c8c:
	.4byte	0xFFFB
.L_54c90:
	ldr	r5, .L_54cf4
	add	r4, r3, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r5
	ldrh	r0, [r0, #10]
	add	r0, #112	@ 0x70
	strh	r0, [r3, #10]
	ldrb	r0, [r4, #0]
	add	r1, r0, #0
	mul	r1, r2
	add	r1, r1, r5
	mov	r7, #156	@ 0x9c
	lsl	r7, r7, #1
	add	r0, r7, #0
	ldrh	r1, [r1, #8]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	sub	r0, r6, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54cec
	ldrh	r0, [r3, #0]
	mov	r1, #4
	orr	r0, r1
	strh	r0, [r3, #0]
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r5
	mov	r1, #18
	strb	r1, [r0, #28]
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r5
	add	r0, #39	@ 0x27
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r5
	mov	r1, #2
	strb	r1, [r0, #31]
.L_54cec:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54cf4:
	.4byte	gSpriteData


thumb_func_start func_8054CF8
func_8054CF8:
	push	{lr}
	ldr	r1, .L_54d20
	mov	r2, #0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	ldr	r0, .L_54d24
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	mov	r3, #0
	strh	r2, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #16
	strb	r0, [r2, #0]
	strb	r3, [r1, #30]
	mov	r0, #146	@ 0x92
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_54d20:
	.4byte	gCurrentSprite
.L_54d24:
	.4byte	sUnk_83DAE38


thumb_func_start func_8054D28
func_8054D28:
	push	{r4, lr}
	ldr	r3, .L_54d78
	ldr	r2, .L_54d7c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #112	@ 0x70
	strh	r0, [r3, #10]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r1, r0
	add	r1, r1, r2
	mov	r2, #156	@ 0x9c
	lsl	r2, r2, #1
	add	r0, r2, #0
	ldrh	r1, [r1, #8]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54d72
	mov	r0, #118	@ 0x76
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #29]
	lsl	r0, r0, #2
	add	r0, #50	@ 0x32
	strb	r0, [r1, #0]
.L_54d72:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_54d78:
	.4byte	gCurrentSprite
.L_54d7c:
	.4byte	gSpriteData


thumb_func_start func_8054D80
func_8054D80:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_54d94
	ldrb	r1, [r0, #28]
	add	r5, r0, #0
	cmp	r1, #31
	bne	.L_54d9c
	ldrh	r1, [r5, #0]
	ldr	r0, .L_54d98
	and	r0, r1
	b	.L_54da2
.L_54d94:
	.4byte	gCurrentSprite
.L_54d98:
	.4byte	0xFFBF
.L_54d9c:
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
.L_54da2:
	strh	r0, [r5, #0]
	mov	r1, #0
	mov	r2, #32
	strb	r2, [r5, #28]
	ldr	r0, .L_54e28
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	mov	r0, #0
	strh	r1, [r5, #20]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	strb	r2, [r1, #0]
	strb	r0, [r5, #30]
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrb	r0, [r5, #29]
	cmp	r0, #0
	beq	.L_54e1a
	sub	r0, #1
	strb	r0, [r5, #29]
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r7, #0
	bne	.L_54e16
	ldrb	r0, [r5, #26]
	mov	r2, #128	@ 0x80
	orr	r0, r2
	strb	r0, [r5, #26]
	ldr	r6, .L_54e2c
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	mov	r4, #44	@ 0x2c
	add	r1, r0, #0
	mul	r1, r4
	add	r1, r1, r6
	ldrb	r0, [r1, #26]
	orr	r0, r2
	strb	r0, [r1, #26]
	ldrb	r0, [r5, #0]
	mul	r0, r4
	add	r0, r0, r6
	mov	r1, #47	@ 0x2f
	strb	r1, [r0, #28]
	mov	r0, #204	@ 0xcc
	bl	SpriteUtilFindSpriteSlotWork3
	ldrb	r0, [r5, #0]
	mul	r0, r4
	add	r0, r0, r6
	strh	r7, [r0, #0]
	ldr	r1, .L_54e30
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
.L_54e16:
	bl	UpdateBossHealthGauge
.L_54e1a:
	mov	r0, #12
	bl	VoiceSetPlay
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_54e28:
	.4byte	sUnk_83DB110
.L_54e2c:
	.4byte	gSpriteData
.L_54e30:
	.4byte	gTimerState


thumb_func_start func_8054E34
func_8054E34:
	push	{lr}
	ldr	r2, .L_54e74
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_54e7c
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54e9c
	ldrb	r1, [r2, #29]
	cmp	r1, #0
	bne	.L_54e9c
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	strb	r0, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_54e78
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #140	@ 0x8c
	bl	m4aSongNumStart
	b	.L_54e9c
.L_54e74:
	.4byte	gCurrentSprite
.L_54e78:
	.4byte	0x7FFF
.L_54e7c:
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_54e88
	mov	r0, #47	@ 0x2f
	strb	r0, [r2, #28]
	b	.L_54e9c
.L_54e88:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_54e98
	bl	SpriteUtilFallOffscreenLeft
	b	.L_54e9c
.L_54e98:
	bl	SpriteUtilFallOffscreenRight
.L_54e9c:
	ldr	r2, .L_54ecc
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_54ed2
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_54ed0
	mov	r0, #4
	strb	r0, [r2, #27]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #24
	bne	.L_54ed2
	mov	r0, #1
	bl	VoiceSetPlay
	b	.L_54ed2
.L_54ecc:
	.4byte	gCurrentSprite
.L_54ed0:
	strb	r0, [r2, #27]
.L_54ed2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8054ED8
func_8054ED8:
	ldr	r1, .L_54ef4
	ldr	r0, .L_54ef8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_54ef4:
	.4byte	gCurrentSprite
.L_54ef8:
	.4byte	sUnk_83DB0E8


thumb_func_start func_8054EFC
func_8054EFC:
	push	{r4, r5, lr}
	ldr	r3, .L_54f20
	ldrh	r4, [r3, #10]
	ldr	r2, .L_54f24
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #112	@ 0x70
	add	r5, r2, #0
	cmp	r4, r0
	ble	.L_54f28
	sub	r0, r4, #2
	b	.L_54f2a
	.align	2, 0
.L_54f20:
	.4byte	gCurrentSprite
.L_54f24:
	.4byte	gSpriteData
.L_54f28:
	add	r0, r4, #2
.L_54f2a:
	strh	r0, [r3, #10]
	ldrh	r2, [r3, #8]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r5
	ldrh	r0, [r0, #8]
	mov	r1, #142	@ 0x8e
	lsl	r1, r1, #1
	add	r0, r0, r1
	cmp	r2, r0
	ble	.L_54f4a
	sub	r0, r2, #3
	b	.L_54f4c
.L_54f4a:
	add	r0, r2, #3
.L_54f4c:
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_54f6a
	mov	r0, #118	@ 0x76
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #29]
	lsl	r0, r0, #2
	add	r0, #30
	strb	r0, [r1, #0]
.L_54f6a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8054F70
func_8054F70:
	push	{lr}
	ldr	r0, .L_54f88
	ldrb	r0, [r0, #0]
	sub	r0, #2
	cmp	r0, #6
	bhi	.L_54fc8
	lsl	r0, r0, #2
	ldr	r1, .L_54f8c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_54f88:
	.4byte	gCurrentShopItem
.L_54f8c:
	.4byte	.L_54f90
.L_54f90:
	.4byte	.L_54fac
	.4byte	.L_54fb0
	.4byte	.L_54fb4
	.4byte	.L_54fb8
	.4byte	.L_54fbc
	.4byte	.L_54fc0
	.4byte	.L_54fc4
.L_54fac:
	mov	r0, #14
	b	.L_54fca
.L_54fb0:
	mov	r0, #13
	b	.L_54fca
.L_54fb4:
	mov	r0, #12
	b	.L_54fca
.L_54fb8:
	mov	r0, #8
	b	.L_54fca
.L_54fbc:
	mov	r0, #2
	b	.L_54fca
.L_54fc0:
	mov	r0, #9
	b	.L_54fca
.L_54fc4:
	mov	r0, #7
	b	.L_54fca
.L_54fc8:
	mov	r0, #15
.L_54fca:
	ldr	r3, .L_55008
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r2, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_5500c
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	mov	r1, #0
	strh	r2, [r3, #20]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #123	@ 0x7b
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #29]
	cmp	r0, #0
	beq	.L_54ffc
	sub	r0, #1
	strb	r0, [r3, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_54ffc:
	mov	r0, #12
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
	.align	2, 0
.L_55008:
	.4byte	gCurrentSprite
.L_5500c:
	.4byte	sUnk_83DB110


thumb_func_start func_8055010
func_8055010:
	push	{r4, r5, lr}
	ldr	r4, .L_55048
	add	r3, r4, #0
	add	r3, #40	@ 0x28
	ldrb	r0, [r3, #0]
	add	r1, r0, #1
	strb	r1, [r3, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #32
	bne	.L_55066
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r2, [r4, #29]
	add	r1, r2, #0
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_55050
	bl	func_8054554
	ldr	r0, .L_5504c
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	b	.L_55066
.L_55048:
	.4byte	gCurrentSprite
.L_5504c:
	.4byte	sUnk_83DB0E8
.L_55050:
	mov	r0, #0
	strb	r0, [r3, #0]
	cmp	r1, #0
	beq	.L_55066
	sub	r0, r2, #1
	strb	r0, [r4, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_55066:
	mov	r1, #7
	and	r1, r5
	cmp	r1, #0
	bne	.L_55086
	mov	r0, #8
	and	r0, r5
	cmp	r0, #0
	beq	.L_55080
	ldr	r0, .L_5507c
	strb	r1, [r0, #27]
	b	.L_55086
.L_5507c:
	.4byte	gCurrentSprite
.L_55080:
	ldr	r1, .L_5508c
	mov	r0, #4
	strb	r0, [r1, #27]
.L_55086:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_5508c:
	.4byte	gCurrentSprite


thumb_func_start func_8055090
func_8055090:
	push	{r4, lr}
	ldr	r0, .L_550f4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r0, .L_550f8
	and	r0, r1
	mov	r3, #0
	mov	r4, #0
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r1, #33	@ 0x21
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #34	@ 0x22
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_550fc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #106	@ 0x6a
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_550f4:
	.4byte	gCurrentSprite
.L_550f8:
	.4byte	0xFFFB
.L_550fc:
	.4byte	sUnk_83DB48C


thumb_func_start func_8055100
func_8055100:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_55140
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_55152
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
	ldr	r0, .L_55144
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_5514c
	ldrh	r1, [r4, #0]
	ldr	r0, .L_55148
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_5518e
	.align	2, 0
.L_55140:
	.4byte	gCurrentSprite
.L_55144:
	.4byte	gSpriteCollisionTileType
.L_55148:
	.4byte	0xFFBF
.L_5514c:
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_5518c
.L_55152:
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
	ldr	r0, .L_55184
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55188
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_5518e
	.align	2, 0
.L_55184:
	.4byte	gSpriteCollisionTileType
.L_55188:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_5518c:
	strh	r0, [r4, #10]
.L_5518e:
	ldr	r2, .L_551b8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_551bc
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_551c0
	cmp	r1, r0
	bne	.L_551c4
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_551ce
.L_551b8:
	.4byte	gCurrentSprite
.L_551bc:
	.4byte	sUnk_83DBBE2
.L_551c0:
	.4byte	0x7FFF
.L_551c4:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_551ce:
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	cmp	r0, #40	@ 0x28
	bne	.L_551e6
	ldr	r0, .L_55210
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
.L_551e6:
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_55208
	mov	r0, #20
	strb	r0, [r2, #28]
	ldr	r0, .L_55214
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
.L_55208:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_55210:
	.4byte	sUnk_83DB3FC
.L_55214:
	.4byte	sUnk_83DB43C


thumb_func_start func_8055218
func_8055218:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_55258
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5526a
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
	ldr	r0, .L_5525c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55264
	ldrh	r1, [r4, #0]
	ldr	r0, .L_55260
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_552a6
	.align	2, 0
.L_55258:
	.4byte	gCurrentSprite
.L_5525c:
	.4byte	gSpriteCollisionTileType
.L_55260:
	.4byte	0xFFBF
.L_55264:
	ldrh	r0, [r4, #10]
	add	r0, #1
	b	.L_552a4
.L_5526a:
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
	ldr	r0, .L_5529c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_552a0
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_552a6
	.align	2, 0
.L_5529c:
	.4byte	gSpriteCollisionTileType
.L_552a0:
	ldrh	r0, [r4, #10]
	sub	r0, #1
.L_552a4:
	strh	r0, [r4, #10]
.L_552a6:
	ldr	r4, .L_55304
	ldrh	r0, [r4, #8]
	add	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_55308
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_552d2
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
.L_552d2:
	ldr	r0, .L_5530c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_55314
	mov	r1, #0
	mov	r2, #0
	strh	r5, [r4, #8]
	ldr	r0, .L_55310
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #24
	strb	r0, [r4, #28]
	sub	r1, #4
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	b	.L_55350
	.align	2, 0
.L_55304:
	.4byte	gCurrentSprite
.L_55308:
	.4byte	gUnk_30000A0
.L_5530c:
	.4byte	gSpriteCollisionResult
.L_55310:
	.4byte	sUnk_83DB4AC
.L_55314:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5533c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_55340
	cmp	r1, r0
	bne	.L_55344
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_5534e
.L_5533c:
	.4byte	sUnk_83DBC08
.L_55340:
	.4byte	0x7FFF
.L_55344:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_5534e:
	strh	r0, [r4, #8]
.L_55350:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8055358
func_8055358:
	push	{lr}
	ldr	r2, .L_55398
	ldr	r0, .L_5539c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	mov	r0, #184	@ 0xb8
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_55398:
	.4byte	gCurrentSprite
.L_5539c:
	.4byte	sUnk_83DB4BC


thumb_func_start func_80553A0
func_80553A0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_553e0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_553f2
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
	ldr	r0, .L_553e4
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_553ec
	ldrh	r1, [r4, #0]
	ldr	r0, .L_553e8
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_5542e
	.align	2, 0
.L_553e0:
	.4byte	gCurrentSprite
.L_553e4:
	.4byte	gSpriteCollisionTileType
.L_553e8:
	.4byte	0xFFBF
.L_553ec:
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_5542c
.L_553f2:
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
	ldr	r0, .L_55424
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55428
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_5542e
	.align	2, 0
.L_55424:
	.4byte	gSpriteCollisionTileType
.L_55428:
	ldrh	r0, [r4, #10]
	sub	r0, #4
.L_5542c:
	strh	r0, [r4, #10]
.L_5542e:
	ldr	r2, .L_55458
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_5545c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_55460
	cmp	r1, r0
	bne	.L_55464
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r2, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_5546e
.L_55458:
	.4byte	gCurrentSprite
.L_5545c:
	.4byte	sUnk_83DBC32
.L_55460:
	.4byte	0x7FFF
.L_55464:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
.L_5546e:
	strh	r0, [r2, #8]
	add	r3, r2, #0
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #20
	bne	.L_55480
	mov	r0, #46	@ 0x2e
	strb	r0, [r3, #30]
.L_55480:
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_554a2
	mov	r0, #22
	strb	r0, [r2, #28]
	ldr	r0, .L_554a8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
.L_554a2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_554a8:
	.4byte	sUnk_83DB3A4


thumb_func_start func_80554AC
func_80554AC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_554ec
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_554fe
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
	ldr	r0, .L_554f0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_554f8
	ldrh	r1, [r4, #0]
	ldr	r0, .L_554f4
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_5553a
	.align	2, 0
.L_554ec:
	.4byte	gCurrentSprite
.L_554f0:
	.4byte	gSpriteCollisionTileType
.L_554f4:
	.4byte	0xFFBF
.L_554f8:
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_55538
.L_554fe:
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
	ldr	r0, .L_55530
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55534
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_5553a
	.align	2, 0
.L_55530:
	.4byte	gSpriteCollisionTileType
.L_55534:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_55538:
	strh	r0, [r4, #10]
.L_5553a:
	ldr	r4, .L_5558c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_55590
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_55560
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
.L_55560:
	ldr	r0, .L_55594
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5559c
	mov	r1, #0
	mov	r2, #0
	strh	r5, [r4, #8]
	ldr	r0, .L_55598
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #24
	strb	r0, [r4, #28]
	mov	r0, #5
	bl	m4aSongNumStart
	b	.L_555d8
	.align	2, 0
.L_5558c:
	.4byte	gCurrentSprite
.L_55590:
	.4byte	gUnk_30000A0
.L_55594:
	.4byte	gSpriteCollisionResult
.L_55598:
	.4byte	sUnk_83DB4AC
.L_5559c:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_555c4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_555c8
	cmp	r1, r0
	bne	.L_555cc
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_555d6
.L_555c4:
	.4byte	sUnk_83DBC52
.L_555c8:
	.4byte	0x7FFF
.L_555cc:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_555d6:
	strh	r0, [r4, #8]
.L_555d8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80555E0
func_80555E0:
	ldr	r2, .L_55608
	ldr	r0, .L_5560c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #28]
	add	r1, #3
	mov	r0, #10
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_55608:
	.4byte	gCurrentSprite
.L_5560c:
	.4byte	sUnk_83DB4D4


thumb_func_start func_8055610
func_8055610:
	ldr	r2, .L_55628
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_55626
	mov	r0, #15
	strb	r0, [r2, #28]
.L_55626:
	bx	lr
.L_55628:
	.4byte	gCurrentSprite


thumb_func_start func_805562C
func_805562C:
	ldr	r0, .L_55644
	ldr	r1, .L_55648
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
.L_55644:
	.4byte	gCurrentSprite
.L_55648:
	.4byte	sUnk_83DB3A4


thumb_func_start func_805564C
func_805564C:
	ldr	r2, .L_55688
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r3, #0
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	beq	.L_55686
	mov	r0, #59	@ 0x3b
	strb	r0, [r2, #30]
	ldr	r0, .L_5568c
	str	r0, [r2, #4]
	mov	r1, #0
	strh	r3, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
.L_55686:
	bx	lr
.L_55688:
	.4byte	gCurrentSprite
.L_5568c:
	.4byte	sUnk_83DB3B4


thumb_func_start func_8055690
func_8055690:
	push	{lr}
	ldr	r1, .L_556a0
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_805564C
	pop	{r0}
	bx	r0
.L_556a0:
	.4byte	gCurrentSprite


thumb_func_start func_80556A4
func_80556A4:
	push	{lr}
	ldr	r1, .L_556b4
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_805564C
	pop	{r0}
	bx	r0
.L_556b4:
	.4byte	gCurrentSprite


thumb_func_start func_80556B8
func_80556B8:
	ldr	r0, .L_556d0
	ldr	r1, .L_556d4
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #15
	strb	r1, [r0, #0]
	bx	lr
.L_556d0:
	.4byte	gCurrentSprite
.L_556d4:
	.4byte	sUnk_83DB4AC


thumb_func_start func_80556D8
func_80556D8:
	push	{lr}
	bl	func_80238A4
	ldr	r2, .L_556f8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_556f4
	mov	r0, #15
	strb	r0, [r2, #28]
.L_556f4:
	pop	{r0}
	bx	r0
.L_556f8:
	.4byte	gCurrentSprite


thumb_func_start func_80556FC
func_80556FC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_55750
	ldrh	r1, [r4, #0]
	mov	r0, #8
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_55754
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #105	@ 0x69
	bl	SpriteUtilFindSpriteSlotWork3
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r2, #0
	bl	func_801E430
	mov	r0, #142	@ 0x8e
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_55750:
	.4byte	gCurrentSprite
.L_55754:
	.4byte	sUnk_83DB4E4


thumb_func_start func_8055758
func_8055758:
	push	{lr}
	sub	sp, #4
	ldr	r0, .L_557b4
	mov	ip, r0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #31]
	ldr	r2, .L_557b8
	mov	r0, ip
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_55784
	mov	r2, ip
	ldrh	r0, [r2, #8]
	add	r0, #2
	strh	r0, [r2, #8]
.L_55784:
	mov	r2, ip
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_557bc
	mov	r0, #7
	and	r1, r0
	cmp	r1, #0
	bne	.L_557d2
	mov	r0, ip
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #12
	mov	r2, #0
	bl	func_801E430
	b	.L_557d2
.L_557b4:
	.4byte	gCurrentSprite
.L_557b8:
	.4byte	gSpriteData
.L_557bc:
	mov	r1, ip
	strh	r0, [r1, #0]
	ldrb	r1, [r1, #24]
	mov	r2, ip
	ldrh	r3, [r2, #8]
	ldrh	r0, [r2, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
.L_557d2:
	add	sp, #4
	pop	{r0}
	bx	r0


thumb_func_start func_80557D8
func_80557D8:
	ldr	r2, .L_55804
	ldr	r0, .L_55808
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
	mov	r0, #59	@ 0x3b
	strb	r0, [r2, #30]
	add	r3, r2, #0
	add	r3, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	bx	lr
.L_55804:
	.4byte	gCurrentSprite
.L_55808:
	.4byte	sUnk_83DB3B4


thumb_func_start func_805580C
func_805580C:
	ldr	r1, .L_5581c
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_55820
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_5581c:
	.4byte	gCurrentSprite
.L_55820:
	.4byte	0xFEFF


thumb_func_start func_8055824
func_8055824:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_55840
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5583c
	ldr	r1, .L_55844
	mov	r0, #29
	strb	r0, [r1, #28]
.L_5583c:
	pop	{r0}
	bx	r0
.L_55840:
	.4byte	gSpriteCollisionResult
.L_55844:
	.4byte	gCurrentSprite


thumb_func_start func_8055848
func_8055848:
	push	{r4, r5, lr}
	ldr	r5, .L_5588c
	ldr	r0, .L_55890
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
	ldr	r0, .L_55894
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_5588c:
	.4byte	gCurrentSprite
.L_55890:
	.4byte	sUnk_83DB3EC
.L_55894:
	.4byte	0xFEFF


thumb_func_start func_8055898
func_8055898:
	push	{lr}
	ldr	r1, .L_558b0
	mov	r0, #32
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_558b4
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_8055848
	pop	{r0}
	bx	r0
.L_558b0:
	.4byte	gCurrentSprite
.L_558b4:
	.4byte	0xFFBF


thumb_func_start func_80558B8
func_80558B8:
	push	{lr}
	ldr	r1, .L_558d0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_8055848
	pop	{r0}
	bx	r0
.L_558d0:
	.4byte	gCurrentSprite


thumb_func_start func_80558D4
func_80558D4:
	push	{lr}
	ldr	r2, .L_55908
	ldr	r0, .L_5590c
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
.L_55908:
	.4byte	gCurrentSprite
.L_5590c:
	.4byte	sUnk_83DB3EC


thumb_func_start func_8055910
func_8055910:
	push	{lr}
	ldr	r1, .L_55928
	mov	r0, #32
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_5592c
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_80558D4
	pop	{r0}
	bx	r0
.L_55928:
	.4byte	gCurrentSprite
.L_5592c:
	.4byte	0xFFBF


thumb_func_start func_8055930
func_8055930:
	push	{lr}
	ldr	r1, .L_55948
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_80558D4
	pop	{r0}
	bx	r0
.L_55948:
	.4byte	gCurrentSprite


thumb_func_start func_805594C
func_805594C:
	ldr	r2, .L_55974
	ldr	r0, .L_55978
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #59	@ 0x3b
	strb	r0, [r2, #30]
	add	r3, r2, #0
	add	r3, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	bx	lr
.L_55974:
	.4byte	gCurrentSprite
.L_55978:
	.4byte	sUnk_83DB3B4


thumb_func_start func_805597C
func_805597C:
	push	{lr}
	ldr	r1, .L_5598c
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_805594C
	pop	{r0}
	bx	r0
.L_5598c:
	.4byte	gCurrentSprite


thumb_func_start func_8055990
func_8055990:
	push	{lr}
	ldr	r1, .L_559a0
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_805594C
	pop	{r0}
	bx	r0
.L_559a0:
	.4byte	gCurrentSprite


thumb_func_start func_80559A4
func_80559A4:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80559B0
func_80559B0:
	ldr	r2, .L_559e0
	ldr	r0, .L_559e4
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
	mov	r0, #59	@ 0x3b
	strb	r0, [r2, #30]
	sub	r3, #6
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_559e0:
	.4byte	gCurrentSprite
.L_559e4:
	.4byte	sUnk_83DB3B4


thumb_func_start func_80559E8
func_80559E8:
	push	{lr}
	ldr	r1, .L_559f8
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80559B0
	pop	{r0}
	bx	r0
.L_559f8:
	.4byte	gCurrentSprite


thumb_func_start func_80559FC
func_80559FC:
	push	{lr}
	ldr	r1, .L_55a0c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80559B0
	pop	{r0}
	bx	r0
.L_55a0c:
	.4byte	gCurrentSprite


thumb_func_start func_8055A10
func_8055A10:
	ldr	r1, .L_55a18
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_55a18:
	.4byte	gCurrentSprite


thumb_func_start func_8055A1C
func_8055A1C:
	ldr	r1, .L_55a24
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_55a24:
	.4byte	gCurrentSprite


thumb_func_start func_8055A28
func_8055A28:
	ldr	r0, .L_55a34
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_55a34:
	.4byte	gCurrentSprite


thumb_func_start func_8055A38
func_8055A38:
	ldr	r0, .L_55a44
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_55a44:
	.4byte	gCurrentSprite


thumb_func_start func_8055A48
func_8055A48:
	ldr	r1, .L_55a58
	ldr	r0, .L_55a5c
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_55a58:
	.4byte	gCurrentSprite
.L_55a5c:
	.4byte	sUnk_83DB49C


thumb_func_start func_8055A60
func_8055A60:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_55ad0
	ldrb	r1, [r6, #26]
	mov	r0, #128	@ 0x80
	mov	r5, #0
	orr	r0, r1
	strb	r0, [r6, #26]
	ldrh	r1, [r6, #0]
	ldr	r0, .L_55ad4
	and	r0, r1
	mov	r4, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r6, #0]
	add	r0, r6, #0
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #32
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_55ad8
	str	r0, [r6, #4]
	strh	r5, [r6, #20]
	strb	r4, [r6, #22]
	mov	r0, #14
	strb	r0, [r6, #30]
	mov	r0, #15
	strb	r0, [r6, #28]
	mov	r0, #203	@ 0xcb
	bl	SpriteUtilFindSpriteSlotWork3
	ldrb	r0, [r6, #24]
	cmp	r0, #0
	beq	.L_55ac8
	bl	func_8055C64
.L_55ac8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_55ad0:
	.4byte	gCurrentSprite
.L_55ad4:
	.4byte	0xFFFB
.L_55ad8:
	.4byte	sUnk_83DB5C8


thumb_func_start func_8055ADC
func_8055ADC:
	ldr	r2, .L_55b00
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	add	r3, r2, #0
	cmp	r0, #0
	beq	.L_55b08
	ldr	r2, .L_55b04
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #56	@ 0x38
	b	.L_55b1a
	.align	2, 0
.L_55b00:
	.4byte	gCurrentSprite
.L_55b04:
	.4byte	gSpriteData
.L_55b08:
	ldr	r2, .L_55b54
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	sub	r0, #56	@ 0x38
.L_55b1a:
	strh	r0, [r3, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	mov	r2, #0
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_55b52
	mov	r0, #16
	strb	r0, [r3, #28]
	mov	r0, ip
	strb	r2, [r0, #0]
	ldr	r0, .L_55b58
	str	r0, [r3, #4]
	strh	r1, [r3, #20]
	strb	r2, [r3, #22]
.L_55b52:
	bx	lr
.L_55b54:
	.4byte	gSpriteData
.L_55b58:
	.4byte	sUnk_83DB5E8


thumb_func_start func_8055B5C
func_8055B5C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_55b9c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_55bae
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
	ldr	r0, .L_55ba0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55ba8
	ldrh	r1, [r4, #0]
	ldr	r0, .L_55ba4
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_55bea
	.align	2, 0
.L_55b9c:
	.4byte	gCurrentSprite
.L_55ba0:
	.4byte	gSpriteCollisionTileType
.L_55ba4:
	.4byte	0xFFBF
.L_55ba8:
	ldrh	r0, [r4, #10]
	add	r0, #1
	b	.L_55be8
.L_55bae:
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
	ldr	r0, .L_55be0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_55be4
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_55bea
	.align	2, 0
.L_55be0:
	.4byte	gSpriteCollisionTileType
.L_55be4:
	ldrh	r0, [r4, #10]
	sub	r0, #1
.L_55be8:
	strh	r0, [r4, #10]
.L_55bea:
	ldr	r4, .L_55c14
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_55c18
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_55c02
	mov	r0, #107	@ 0x6b
	strb	r0, [r4, #28]
.L_55c02:
	ldr	r0, .L_55c1c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_55c20
	strh	r1, [r4, #8]
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_55c5c
	.align	2, 0
.L_55c14:
	.4byte	gCurrentSprite
.L_55c18:
	.4byte	gUnk_30000A0
.L_55c1c:
	.4byte	gSpriteCollisionResult
.L_55c20:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_55c48
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_55c4c
	cmp	r1, r0
	bne	.L_55c50
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_55c5a
.L_55c48:
	.4byte	sUnk_83DBC68
.L_55c4c:
	.4byte	0x7FFF
.L_55c50:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_55c5a:
	strh	r0, [r4, #8]
.L_55c5c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8055C64
func_8055C64:
	ldr	r2, .L_55c90
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #25
	strb	r0, [r3, #0]
	sub	r3, #4
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #24]
	cmp	r0, #2
	bne	.L_55c98
	ldr	r0, .L_55c94
	str	r0, [r2, #4]
	mov	r0, #48	@ 0x30
	b	.L_55cae
.L_55c90:
	.4byte	gCurrentSprite
.L_55c94:
	.4byte	sUnk_83DB588
.L_55c98:
	cmp	r0, #1
	bne	.L_55ca8
	ldr	r0, .L_55ca4
	str	r0, [r2, #4]
	mov	r0, #48	@ 0x30
	b	.L_55cae
.L_55ca4:
	.4byte	sUnk_83DB5A8
.L_55ca8:
	ldr	r0, .L_55cb4
	str	r0, [r2, #4]
	mov	r0, #24
.L_55cae:
	strb	r0, [r2, #28]
	bx	lr
	.align	2, 0
.L_55cb4:
	.4byte	sUnk_83DB5A8


thumb_func_start func_8055CB8
func_8055CB8:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #8
	ldr	r5, .L_55d5c
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r6, [r7, #0]
	cmp	r6, #10
	bls	.L_55d60
	cmp	r6, #25
	bne	.L_55cf6
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	sub	r0, #28
	str	r0, [sp, #0]
	mov	r4, #0
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #1
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, #28
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #1
	bl	SpawnPrimarySpriteWithStatus
.L_55cf6:
	cmp	r6, #20
	bne	.L_55d24
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	sub	r0, #56	@ 0x38
	str	r0, [sp, #0]
	mov	r4, #0
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #2
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, #56	@ 0x38
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #2
	bl	SpawnPrimarySpriteWithStatus
.L_55d24:
	cmp	r6, #15
	bne	.L_55d52
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	sub	r0, #84	@ 0x54
	str	r0, [sp, #0]
	mov	r4, #0
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #2
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, #84	@ 0x54
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #206	@ 0xce
	mov	r1, #2
	bl	SpawnPrimarySpriteWithStatus
.L_55d52:
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	b	.L_55d82
	.align	2, 0
.L_55d5c:
	.4byte	gCurrentSprite
.L_55d60:
	mov	r0, #1
	strb	r0, [r5, #31]
	and	r6, r0
	cmp	r6, #0
	bne	.L_55d72
	ldrh	r0, [r5, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r5, #0]
.L_55d72:
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_55d82
	strh	r0, [r5, #0]
.L_55d82:
	add	sp, #8
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8055D8C
func_8055D8C:
	ldr	r3, .L_55da0
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	cmp	r1, #10
	bls	.L_55da4
	sub	r0, r1, #1
	strb	r0, [r2, #0]
	b	.L_55dc6
	.align	2, 0
.L_55da0:
	.4byte	gCurrentSprite
.L_55da4:
	mov	r0, #1
	strb	r0, [r3, #31]
	and	r1, r0
	cmp	r1, #0
	bne	.L_55db6
	ldrh	r0, [r3, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r3, #0]
.L_55db6:
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_55dc6
	strh	r0, [r3, #0]
.L_55dc6:
	bx	lr


thumb_func_start SpriteUnknownCC
SpriteUnknownCC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_55df0
	ldrh	r0, [r0, #0]
	ldr	r3, .L_55df4
	cmp	r0, #0
	beq	.L_55dde
	mov	r0, #1
	strb	r0, [r3, #31]
.L_55dde:
	ldrb	r0, [r3, #28]
	cmp	r0, #37	@ 0x25
	bls	.L_55de6
	b	.L_55f04
.L_55de6:
	lsl	r0, r0, #2
	ldr	r1, .L_55df8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_55df0:
	.4byte	gWarioPauseTimer
.L_55df4:
	.4byte	gCurrentSprite
.L_55df8:
	.4byte	.L_55dfc
.L_55dfc:
	.4byte	.L_55e94
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55f04
	.4byte	.L_55ee4
	.4byte	.L_55f04
	.4byte	.L_55ee4
	.4byte	.L_55f04
	.4byte	.L_55ee4
	.4byte	.L_55f04
	.4byte	.L_55ee4
.L_55e94:
	ldr	r4, .L_55ed8
	ldrb	r1, [r4, #26]
	mov	r0, #128	@ 0x80
	mov	r3, #0
	orr	r0, r1
	strb	r0, [r4, #26]
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_55edc
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_55ee0
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #32
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #105	@ 0x69
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_55f12
	.align	2, 0
.L_55ed8:
	.4byte	gCurrentSprite
.L_55edc:
	.4byte	0xFFFB
.L_55ee0:
	.4byte	sUnk_83DBA60
.L_55ee4:
	ldr	r2, .L_55f48
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r1, r0, r2
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_55f04
	cmp	r0, #32
	beq	.L_55f04
	cmp	r0, #34	@ 0x22
	beq	.L_55f04
	ldrb	r0, [r3, #28]
	strb	r0, [r1, #28]
.L_55f04:
	ldr	r1, .L_55f4c
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_55f50
	and	r0, r2
	strh	r0, [r1, #0]
.L_55f12:
	bl	func_8053BBC
	cmp	r0, #0
	beq	.L_55f60
	ldr	r6, .L_55f48
	ldr	r4, .L_55f4c
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r6
	add	r0, #41	@ 0x29
	mov	r1, #129	@ 0x81
	strb	r1, [r0, #0]
	mov	r0, #203	@ 0xcb
	bl	SpriteUtilFindSpriteSlotWork3
	ldrb	r0, [r4, #0]
	mul	r0, r5
	add	r1, r0, r6
	ldrb	r0, [r1, #29]
	cmp	r0, #8
	bhi	.L_55f54
	add	r1, #39	@ 0x27
	mov	r0, #160	@ 0xa0
	b	.L_55f58
	.align	2, 0
.L_55f48:
	.4byte	gSpriteData
.L_55f4c:
	.4byte	gCurrentSprite
.L_55f50:
	.4byte	0xFDFF
.L_55f54:
	add	r1, #39	@ 0x27
	mov	r0, #190	@ 0xbe
.L_55f58:
	strb	r0, [r1, #0]
	mov	r0, #105	@ 0x69
	bl	SpriteUtilFindSpriteSlotWork3
.L_55f60:
	ldr	r5, .L_55fd4
	ldr	r3, .L_55fd8
	mov	r8, r3
	add	r6, r5, #0
	add	r6, #42	@ 0x2a
	ldrb	r0, [r6, #0]
	mov	r7, #44	@ 0x2c
	mul	r0, r7
	add	r0, r8
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	add	r4, r5, #0
	add	r4, #40	@ 0x28
	strb	r0, [r4, #0]
	bl	func_8053D08
	ldrb	r0, [r6, #0]
	mul	r0, r7
	add	r0, r8
	ldrh	r1, [r0, #10]
	add	r1, #128	@ 0x80
	strh	r1, [r5, #10]
	ldrb	r0, [r6, #0]
	add	r2, r0, #0
	mul	r2, r7
	add	r2, r8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, #240	@ 0xf0
	ldrh	r2, [r2, #8]
	add	r0, r0, r2
	strh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r5, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r4, .L_55fdc
	ldrb	r1, [r4, #0]
	mov	r0, #15
	mov	r9, r0
	and	r0, r1
	cmp	r0, #0
	beq	.L_55fe4
	ldrb	r0, [r6, #0]
	add	r1, r0, #0
	mul	r1, r7
	add	r1, r8
	ldrh	r2, [r1, #0]
	ldr	r0, .L_55fe0
	and	r0, r2
	b	.L_5601a
.L_55fd4:
	.4byte	gCurrentSprite
.L_55fd8:
	.4byte	gSpriteData
.L_55fdc:
	.4byte	gSpriteCollisionTileType
.L_55fe0:
	.4byte	0xEFFF
.L_55fe4:
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r5, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r5, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r4, #0]
	mov	r0, r9
	and	r0, r1
	cmp	r0, #0
	beq	.L_5601c
	ldrb	r0, [r6, #0]
	add	r1, r0, #0
	mul	r1, r7
	add	r1, r8
	ldrh	r0, [r1, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #5
	add	r2, r3, #0
	orr	r0, r2
.L_5601a:
	strh	r0, [r1, #0]
.L_5601c:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteAerodent
SpriteAerodent:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_56058
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	neg	r0, r0
	asr	r7, r0, #31
	mov	r0, #128	@ 0x80
	and	r7, r0
	mov	r0, #1
	strb	r0, [r2, #31]
	ldrb	r0, [r2, #28]
	cmp	r0, #48	@ 0x30
	bls	.L_5604e
	b	.L_56178
.L_5604e:
	lsl	r0, r0, #2
	ldr	r1, .L_5605c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_56058:
	.4byte	gCurrentSprite
.L_5605c:
	.4byte	.L_56060
.L_56060:
	.4byte	.L_56124
	.4byte	.L_5612a
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56130
	.4byte	.L_56178
	.4byte	.L_5615e
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_5614a
	.4byte	.L_5614e
	.4byte	.L_56154
	.4byte	.L_56158
	.4byte	.L_56136
	.4byte	.L_5613a
	.4byte	.L_56140
	.4byte	.L_56144
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56178
	.4byte	.L_56170
	.4byte	.L_56174
.L_56124:
	bl	func_8053FDC
	b	.L_56178
.L_5612a:
	bl	func_80540A4
	b	.L_56178
.L_56130:
	bl	func_80540E4
	b	.L_56178
.L_56136:
	bl	func_8054150
.L_5613a:
	bl	func_805417C
	b	.L_56178
.L_56140:
	bl	func_80541B8
.L_56144:
	bl	func_80541E4
	b	.L_56178
.L_5614a:
	bl	func_8054220
.L_5614e:
	bl	func_8054260
	b	.L_56162
.L_56154:
	bl	func_805429C
.L_56158:
	bl	func_80542DC
	b	.L_56162
.L_5615e:
	bl	func_805431C
.L_56162:
	ldr	r0, .L_5616c
	add	r0, #39	@ 0x27
	ldrb	r7, [r0, #0]
	b	.L_56178
	.align	2, 0
.L_5616c:
	.4byte	gCurrentSprite
.L_56170:
	bl	func_8054398
.L_56174:
	bl	func_80543C0
.L_56178:
	bl	func_8053F20
	ldr	r2, .L_561f4
	ldr	r6, .L_561f8
	add	r0, r6, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #1
	add	r1, r1, r2
	ldr	r4, .L_561fc
	add	r0, r7, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r8, r2
	mov	r0, #0
	ldrsh	r5, [r1, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #12]
	lsl	r0, r7, #1
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_561f4:
	.4byte	sUnk_83DBA10
.L_561f8:
	.4byte	gCurrentSprite
.L_561fc:
	.4byte	sSinCosTable


thumb_func_start SpriteUnknownCB
SpriteUnknownCB:
	push	{lr}
	ldr	r0, .L_56218
	ldrb	r0, [r0, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_5620c
	b	.L_5649c
.L_5620c:
	lsl	r0, r0, #2
	ldr	r1, .L_5621c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_56218:
	.4byte	gCurrentSprite
.L_5621c:
	.4byte	.L_56220
.L_56220:
	.4byte	.L_56410
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_56414
	.4byte	.L_5641a
	.4byte	.L_56420
	.4byte	.L_56424
	.4byte	.L_56434
	.4byte	.L_56438
	.4byte	.L_5643e
	.4byte	.L_56442
	.4byte	.L_5642a
	.4byte	.L_5642e
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_56480
	.4byte	.L_56484
	.4byte	.L_56480
	.4byte	.L_5649c
	.4byte	.L_56476
	.4byte	.L_5647a
	.4byte	.L_56476
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5648a
	.4byte	.L_5648e
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_5649c
	.4byte	.L_56448
	.4byte	.L_5644c
	.4byte	.L_5649c
	.4byte	.L_56452
	.4byte	.L_56458
	.4byte	.L_5645c
	.4byte	.L_56462
	.4byte	.L_56466
	.4byte	.L_5646c
	.4byte	.L_56470
	.4byte	.L_56494
	.4byte	.L_56498
.L_56410:
	bl	func_80544D4
.L_56414:
	bl	func_8054578
	b	.L_5649c
.L_5641a:
	bl	func_80545BC
	b	.L_5649c
.L_56420:
	bl	func_80545EC
.L_56424:
	bl	func_8054618
	b	.L_5649c
.L_5642a:
	bl	func_8054660
.L_5642e:
	bl	func_8054680
	b	.L_5649c
.L_56434:
	bl	func_8054710
.L_56438:
	bl	func_8054730
	b	.L_5649c
.L_5643e:
	bl	func_80547BC
.L_56442:
	bl	func_80547E0
	b	.L_5649c
.L_56448:
	bl	func_8054940
.L_5644c:
	bl	func_80549B4
	b	.L_5649c
.L_56452:
	bl	func_8054A14
	b	.L_5649c
.L_56458:
	bl	func_8054ADC
.L_5645c:
	bl	func_8054B0C
	b	.L_5649c
.L_56462:
	bl	func_8054B70
.L_56466:
	bl	func_8054B90
	b	.L_5649c
.L_5646c:
	bl	func_8054BFC
.L_56470:
	bl	func_8054C1C
	b	.L_5649c
.L_56476:
	bl	func_8054CF8
.L_5647a:
	bl	func_8054D28
	b	.L_5649c
.L_56480:
	bl	func_8054D80
.L_56484:
	bl	func_8054E34
	b	.L_5649c
.L_5648a:
	bl	func_8054ED8
.L_5648e:
	bl	func_8054EFC
	b	.L_5649c
.L_56494:
	bl	func_8054F70
.L_56498:
	bl	func_8055010
.L_5649c:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownCD
SpriteUnknownCD:
	push	{lr}
	ldr	r2, .L_564c8
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_564b4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_564b4:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_564bc
	b	.L_5684c
.L_564bc:
	lsl	r0, r0, #2
	ldr	r1, .L_564cc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_564c8:
	.4byte	gCurrentSprite
.L_564cc:
	.4byte	.L_564d0
.L_564d0:
	.4byte	.L_56690
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_566e6
	.4byte	.L_566d6
	.4byte	.L_5684c
	.4byte	.L_56696
	.4byte	.L_5684c
	.4byte	.L_5669c
	.4byte	.L_5684c
	.4byte	.L_566ec
	.4byte	.L_566f2
	.4byte	.L_566f6
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_56706
	.4byte	.L_5670a
	.4byte	.L_56710
	.4byte	.L_56714
	.4byte	.L_5671a
	.4byte	.L_5671e
	.4byte	.L_56724
	.4byte	.L_56728
	.4byte	.L_566cc
	.4byte	.L_5684c
	.4byte	.L_566aa
	.4byte	.L_5684c
	.4byte	.L_566ba
	.4byte	.L_566c6
	.4byte	.L_566a2
	.4byte	.L_5684c
	.4byte	.L_5672e
	.4byte	.L_56732
	.4byte	.L_56738
	.4byte	.L_5673c
	.4byte	.L_56742
	.4byte	.L_56746
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_566dc
	.4byte	.L_566e0
	.4byte	.L_566b0
	.4byte	.L_566b4
	.4byte	.L_5674c
	.4byte	.L_56750
	.4byte	.L_56756
	.4byte	.L_566b4
	.4byte	.L_5675c
	.4byte	.L_56760
	.4byte	.L_56766
	.4byte	.L_5676a
	.4byte	.L_56770
	.4byte	.L_566e0
	.4byte	.L_56776
	.4byte	.L_5677a
	.4byte	.L_56780
	.4byte	.L_56790
	.4byte	.L_56786
	.4byte	.L_5679a
	.4byte	.L_5678c
	.4byte	.L_56790
	.4byte	.L_56796
	.4byte	.L_5679a
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5671a
	.4byte	.L_56724
	.4byte	.L_567a0
	.4byte	.L_567a6
	.4byte	.L_567ac
	.4byte	.L_567b2
	.4byte	.L_567c4
	.4byte	.L_567ca
	.4byte	.L_567b8
	.4byte	.L_567be
	.4byte	.L_567d0
	.4byte	.L_567d8
	.4byte	.L_56808
	.4byte	.L_56810
	.4byte	.L_567de
	.4byte	.L_567e6
	.4byte	.L_56816
	.4byte	.L_5681e
	.4byte	.L_567ec
	.4byte	.L_567f4
	.4byte	.L_56824
	.4byte	.L_5682c
	.4byte	.L_567fa
	.4byte	.L_56802
	.4byte	.L_56832
	.4byte	.L_5683a
	.4byte	.L_56840
	.4byte	.L_56846
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_5684c
	.4byte	.L_566fc
	.4byte	.L_56700
.L_56690:
	bl	func_8055090
	b	.L_56850
.L_56696:
	bl	func_8055100
	b	.L_56850
.L_5669c:
	bl	func_8055218
	b	.L_56850
.L_566a2:
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	bne	.L_566c0
	b	.L_566b0
.L_566aa:
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	bne	.L_566d2
.L_566b0:
	bl	func_80556A4
.L_566b4:
	bl	func_802476C
	b	.L_56850
.L_566ba:
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	beq	.L_566dc
.L_566c0:
	bl	func_80555E0
	b	.L_56850
.L_566c6:
	bl	func_8055610
	b	.L_56850
.L_566cc:
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	beq	.L_566dc
.L_566d2:
	bl	func_8055358
.L_566d6:
	bl	func_80553A0
	b	.L_56850
.L_566dc:
	bl	func_8055690
.L_566e0:
	bl	func_8024988
	b	.L_56850
.L_566e6:
	bl	func_8055358
	b	.L_566d6
.L_566ec:
	bl	func_80554AC
	b	.L_56850
.L_566f2:
	bl	func_80556B8
.L_566f6:
	bl	func_80556D8
	b	.L_56850
.L_566fc:
	bl	func_80556FC
.L_56700:
	bl	func_8055758
	b	.L_56850
.L_56706:
	bl	func_805562C
.L_5670a:
	bl	func_8023D48
	b	.L_56850
.L_56710:
	bl	func_80557D8
.L_56714:
	bl	func_8023EE0
	b	.L_56850
.L_5671a:
	bl	func_8055898
.L_5671e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_56850
.L_56724:
	bl	func_80558B8
.L_56728:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_56850
.L_5672e:
	bl	func_805597C
.L_56732:
	bl	func_8024478
	b	.L_56850
.L_56738:
	bl	func_8055990
.L_5673c:
	bl	func_802449C
	b	.L_56850
.L_56742:
	bl	func_805580C
.L_56746:
	bl	func_8055824
	b	.L_56850
.L_5674c:
	bl	func_8024688
.L_56750:
	bl	func_80246B8
	b	.L_56850
.L_56756:
	bl	func_802473C
	b	.L_566b4
.L_5675c:
	bl	func_80247F0
.L_56760:
	bl	func_8024820
	b	.L_56850
.L_56766:
	bl	func_80248A4
.L_5676a:
	bl	func_80248D4
	b	.L_56850
.L_56770:
	bl	func_8024958
	b	.L_566e0
.L_56776:
	bl	func_8024A0C
.L_5677a:
	bl	func_8024A3C
	b	.L_56850
.L_56780:
	bl	func_8024AC0
	b	.L_56790
.L_56786:
	bl	func_8024BEC
	b	.L_5679a
.L_5678c:
	bl	func_80559E8
.L_56790:
	bl	func_8024AD4
	b	.L_56850
.L_56796:
	bl	func_80559FC
.L_5679a:
	bl	func_8024C00
	b	.L_56850
.L_567a0:
	bl	func_8055A10
	b	.L_56850
.L_567a6:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_56850
.L_567ac:
	bl	func_8055A1C
	b	.L_56850
.L_567b2:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_56850
.L_567b8:
	bl	func_8055A28
	b	.L_56850
.L_567be:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_56850
.L_567c4:
	bl	func_8055A38
	b	.L_56850
.L_567ca:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_56850
.L_567d0:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_567d8:
	bl	SpriteUtilThrownLeftSoft
	b	.L_56850
.L_567de:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_567e6:
	bl	SpriteUtilThrownLeftHard
	b	.L_56850
.L_567ec:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_567f4:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_56850
.L_567fa:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_56802:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_56850
.L_56808:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_56810:
	bl	SpriteUtilThrownRightSoft
	b	.L_56850
.L_56816:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_5681e:
	bl	SpriteUtilThrownRightHard
	b	.L_56850
.L_56824:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_5682c:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_56850
.L_56832:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	bl	func_8055A48
.L_5683a:
	bl	SpriteUtilThrownUpRightHard
	b	.L_56850
.L_56840:
	bl	func_8055930
	b	.L_56850
.L_56846:
	bl	func_8055910
	b	.L_56850
.L_5684c:
	bl	func_80559A4
.L_56850:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownCE
SpriteUnknownCE:
	push	{lr}
	ldr	r0, .L_56868
	ldrb	r0, [r0, #28]
	cmp	r0, #48	@ 0x30
	bhi	.L_56956
	lsl	r0, r0, #2
	ldr	r1, .L_5686c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_56868:
	.4byte	gCurrentSprite
.L_5686c:
	.4byte	.L_56870
.L_56870:
	.4byte	.L_56934
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_5693a
	.4byte	.L_56940
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56946
	.4byte	.L_5694a
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56956
	.4byte	.L_56950
.L_56934:
	bl	func_8055A60
	b	.L_5695a
.L_5693a:
	bl	func_8055ADC
	b	.L_5695a
.L_56940:
	bl	func_8055B5C
	b	.L_5695a
.L_56946:
	bl	func_8055C64
.L_5694a:
	bl	func_8055CB8
	b	.L_5695a
.L_56950:
	bl	func_8055D8C
	b	.L_5695a
.L_56956:
	bl	SpriteUtilDie
.L_5695a:
	pop	{r0}
	bx	r0
	.align	2, 0
