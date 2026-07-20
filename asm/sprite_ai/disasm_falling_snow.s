.include "macros.s.inc"


thumb_func_start func_8036C94
func_8036C94:
	ldr	r0, .L_36cf0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #148	@ 0x94
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	ldr	r0, .L_36cf4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #16
	mov	r2, ip
	strb	r0, [r2, #28]
	mov	r0, #18
	strb	r0, [r2, #30]
	mov	r0, #1
	strb	r0, [r2, #26]
	bx	lr
.L_36cf0:
	.4byte	gCurrentSprite
.L_36cf4:
	.4byte	sUnk_83BD42C


thumb_func_start func_8036CF8
func_8036CF8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_36d3c
	mov	r0, #1
	strb	r0, [r4, #31]
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_36d34
	ldr	r0, .L_36d40
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #68	@ 0x44
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r4, #28]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #157	@ 0x9d
	bl	SpriteSpawnAsChild
.L_36d34:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_36d3c:
	.4byte	gCurrentSprite
.L_36d40:
	.4byte	sUnk_83BD574


thumb_func_start func_8036D44
func_8036D44:
	ldr	r2, .L_36d78
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_36d76
	ldr	r0, .L_36d7c
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	mov	r0, #28
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r0, [r2, #8]
	add	r0, #12
	strh	r0, [r2, #8]
.L_36d76:
	bx	lr
.L_36d78:
	.4byte	gCurrentSprite
.L_36d7c:
	.4byte	sUnk_83BD4AC


thumb_func_start func_8036D80
func_8036D80:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_36db4
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_36db8
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_36da2
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_36da2:
	ldr	r0, .L_36dbc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_36dc0
	strh	r2, [r4, #8]
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_36dfc
	.align	2, 0
.L_36db4:
	.4byte	gCurrentSprite
.L_36db8:
	.4byte	gUnk_30000A0
.L_36dbc:
	.4byte	gSpriteCollisionResult
.L_36dc0:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_36de8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_36dec
	cmp	r1, r0
	bne	.L_36df0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_36dfa
.L_36de8:
	.4byte	sSharedDebrisYVelocity
.L_36dec:
	.4byte	0x7FFF
.L_36df0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_36dfa:
	strh	r0, [r4, #8]
.L_36dfc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8036E04
func_8036E04:
	ldr	r1, .L_36e20
	ldr	r0, .L_36e24
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #17
	strb	r0, [r2, #0]
	mov	r0, #24
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_36e20:
	.4byte	gCurrentSprite
.L_36e24:
	.4byte	sUnk_83BD4BC


thumb_func_start func_8036E28
func_8036E28:
	ldr	r2, .L_36e44
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_36e42
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
.L_36e42:
	bx	lr
.L_36e44:
	.4byte	gCurrentSprite


thumb_func_start func_8036E48
func_8036E48:
	ldr	r3, .L_36e78
	ldr	r2, .L_36e7c
	ldrb	r1, [r2, #24]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, #64	@ 0x40
	strh	r0, [r2, #8]
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	ldr	r0, .L_36e80
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_36e78:
	.4byte	gUnk_3000964
.L_36e7c:
	.4byte	gCurrentSprite
.L_36e80:
	.4byte	sUnk_83BD42C


thumb_func_start func_8036E84
func_8036E84:
	ldr	r2, .L_36eb4
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_36eb0
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_36eb8
	and	r0, r1
	strh	r0, [r2, #0]
.L_36eb0:
	bx	lr
	.align	2, 0
.L_36eb4:
	.4byte	gCurrentSprite
.L_36eb8:
	.4byte	0xFFFB


thumb_func_start func_8036EBC
func_8036EBC:
	push	{r4, lr}
	sub	sp, #8
	ldr	r4, .L_36ee0
	ldr	r1, .L_36ee4
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_36ee8
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #158	@ 0x9e
	bl	SpawnPrimarySpriteWithStatus
	b	.L_36efc
.L_36ee0:
	.4byte	gCurrentSprite
.L_36ee4:
	.4byte	gWarioData
.L_36ee8:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #158	@ 0x9e
	bl	SpawnPrimarySpriteWithStatus
.L_36efc:
	add	sp, #8
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8036F04
func_8036F04:
	ldr	r1, .L_36f20
	ldr	r0, .L_36f24
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r2, #0]
	mov	r0, #24
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_36f20:
	.4byte	gCurrentSprite
.L_36f24:
	.4byte	sUnk_83BD58C


thumb_func_start func_8036F28
func_8036F28:
	push	{r4, lr}
	ldr	r0, .L_36f88
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_36f8c
	and	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r1, ip
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_36f90
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r2, ip
	add	r2, #39	@ 0x27
	mov	r0, #68	@ 0x44
	strb	r0, [r2, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	mov	r0, #18
	strb	r0, [r4, #30]
	strb	r1, [r4, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_36f88:
	.4byte	gCurrentSprite
.L_36f8c:
	.4byte	0xFFFB
.L_36f90:
	.4byte	sUnk_83BD504


thumb_func_start func_8036F94
func_8036F94:
	ldr	r2, .L_36fac
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_36faa
	strh	r0, [r2, #0]
.L_36faa:
	bx	lr
.L_36fac:
	.4byte	gCurrentSprite


thumb_func_start func_8036FB0
func_8036FB0:
	push	{r4, lr}
	ldr	r0, .L_37020
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	add	r4, r0, #0
	orr	r4, r1
	ldr	r0, .L_37024
	and	r4, r0
	mov	r0, ip
	strh	r4, [r0, #0]
	mov	r1, ip
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #18
	mov	r3, ip
	strb	r0, [r3, #30]
	strb	r1, [r3, #26]
	mov	r0, #28
	strb	r0, [r3, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r4
	cmp	r0, #0
	beq	.L_37030
	ldr	r0, .L_37028
	str	r0, [r3, #4]
	ldr	r0, .L_3702c
	and	r0, r4
	strh	r0, [r3, #0]
	b	.L_37036
	.align	2, 0
.L_37020:
	.4byte	gCurrentSprite
.L_37024:
	.4byte	0xFFFB
.L_37028:
	.4byte	sUnk_83BD5D4
.L_3702c:
	.4byte	0xFFBF
.L_37030:
	ldr	r0, .L_3703c
	mov	r1, ip
	str	r0, [r1, #4]
.L_37036:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3703c:
	.4byte	sUnk_83BD5C4


thumb_func_start SpriteFallingSnow
SpriteFallingSnow:
	push	{lr}
	ldr	r2, .L_3706c
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_37054
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_37054:
	ldrb	r1, [r2, #28]
	cmp	r1, #24
	beq	.L_370ae
	cmp	r1, #24
	bgt	.L_3707a
	cmp	r1, #16
	beq	.L_37098
	cmp	r1, #16
	bgt	.L_37070
	cmp	r1, #0
	beq	.L_37092
	b	.L_370c2
.L_3706c:
	.4byte	gCurrentSprite
.L_37070:
	cmp	r1, #18
	beq	.L_3709e
	cmp	r1, #23
	beq	.L_370aa
	b	.L_370c2
.L_3707a:
	cmp	r1, #49	@ 0x31
	beq	.L_370be
	cmp	r1, #49	@ 0x31
	bgt	.L_37088
	cmp	r1, #28
	beq	.L_370a4
	b	.L_370c2
.L_37088:
	cmp	r1, #110	@ 0x6e
	beq	.L_370b4
	cmp	r1, #111	@ 0x6f
	beq	.L_370b8
	b	.L_370c2
.L_37092:
	bl	func_8036C94
	b	.L_370c6
.L_37098:
	bl	func_8036CF8
	b	.L_370c6
.L_3709e:
	bl	func_8036D44
	b	.L_370c6
.L_370a4:
	bl	func_8036D80
	b	.L_370c6
.L_370aa:
	bl	func_8036E04
.L_370ae:
	bl	func_8036E28
	b	.L_370c6
.L_370b4:
	bl	func_8036E48
.L_370b8:
	bl	func_8036E84
	b	.L_370c6
.L_370be:
	bl	func_8036EBC
.L_370c2:
	bl	func_8036F04
.L_370c6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown9D
SpriteUnknown9D:
	push	{lr}
	ldr	r0, .L_370dc
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_370e0
	cmp	r0, #16
	beq	.L_370e6
	b	.L_370ea
.L_370dc:
	.4byte	gCurrentSprite
.L_370e0:
	bl	func_8036F28
	b	.L_370ea
.L_370e6:
	bl	func_8036F94
.L_370ea:
	ldr	r1, .L_370f4
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_370f4:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknown9E
SpriteUnknown9E:
	push	{lr}
	ldr	r1, .L_3710c
	ldrb	r0, [r1, #28]
	cmp	r0, #0
	beq	.L_37110
	cmp	r0, #28
	beq	.L_37116
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_3711a
.L_3710c:
	.4byte	gCurrentSprite
.L_37110:
	bl	func_8036FB0
	b	.L_3711a
.L_37116:
	bl	func_8036D80
.L_3711a:
	ldr	r1, .L_37124
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_37124:
	.4byte	gCurrentSprite
