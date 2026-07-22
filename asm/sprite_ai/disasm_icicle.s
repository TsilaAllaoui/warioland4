.include "macros.s.inc"


thumb_func_start func_805A96C
func_805A96C:
	push	{r4, lr}
	ldr	r0, .L_5a9d4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
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
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	mov	r1, #16
	strb	r1, [r0, #0]
	ldr	r0, .L_5a9d8
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r2, ip
	add	r2, #39	@ 0x27
	mov	r0, #62	@ 0x3e
	strb	r0, [r2, #0]
	strb	r1, [r4, #28]
	mov	r0, #8
	strb	r0, [r4, #30]
	mov	r0, #1
	strb	r0, [r4, #26]
	mov	r0, #115	@ 0x73
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5a9d4:
	.4byte	gCurrentSprite
.L_5a9d8:
	.4byte	sUnk_83DE498


thumb_func_start func_805A9DC
func_805A9DC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_5aa14
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_5aa18
	add	r1, r2, #0
	cmp	r1, #32
	bls	.L_5aa32
	mov	r0, #1
	strb	r0, [r4, #31]
	cmp	r1, #52	@ 0x34
	bne	.L_5aa32
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #215	@ 0xd7
	bl	SpriteSpawnAsChild
	b	.L_5aa32
.L_5aa14:
	.4byte	gCurrentSprite
.L_5aa18:
	ldr	r0, .L_5aa3c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	mov	r0, #28
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #116	@ 0x74
	bl	m4aSongNumStart
.L_5aa32:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5aa3c:
	.4byte	sUnk_83DE580


thumb_func_start func_805AA40
func_805AA40:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_5aa74
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_5aa78
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_5aa62
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_5aa62:
	ldr	r0, .L_5aa7c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5aa80
	strh	r2, [r4, #8]
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_5aabc
	.align	2, 0
.L_5aa74:
	.4byte	gCurrentSprite
.L_5aa78:
	.4byte	gUnk_30000A0
.L_5aa7c:
	.4byte	gSpriteAiCollisionResult
.L_5aa80:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5aaa8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5aaac
	cmp	r1, r0
	bne	.L_5aab0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_5aaba
.L_5aaa8:
	.4byte	sUnk_8352ADC
.L_5aaac:
	.4byte	0x7FFF
.L_5aab0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_5aaba:
	strh	r0, [r4, #8]
.L_5aabc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805AAC4
func_805AAC4:
	ldr	r1, .L_5aae0
	ldr	r0, .L_5aae4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r2, #0]
	mov	r0, #24
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_5aae0:
	.4byte	gCurrentSprite
.L_5aae4:
	.4byte	sUnk_83DE590


thumb_func_start func_805AAE8
func_805AAE8:
	ldr	r2, .L_5ab04
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5ab02
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
.L_5ab02:
	bx	lr
.L_5ab04:
	.4byte	gCurrentSprite


thumb_func_start func_805AB08
func_805AB08:
	ldr	r3, .L_5ab38
	ldr	r2, .L_5ab3c
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
	ldr	r0, .L_5ab40
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
.L_5ab38:
	.4byte	gUnk_3000964
.L_5ab3c:
	.4byte	gCurrentSprite
.L_5ab40:
	.4byte	sUnk_83DE498


thumb_func_start func_805AB44
func_805AB44:
	push	{lr}
	ldr	r2, .L_5ab64
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_5ab68
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_5ab86
	.align	2, 0
.L_5ab64:
	.4byte	gCurrentSprite
.L_5ab68:
	ldr	r0, .L_5ab8c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5ab86
	mov	r0, #62	@ 0x3e
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_5ab90
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #115	@ 0x73
	bl	m4aSongNumStart
.L_5ab86:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5ab8c:
	.4byte	gWarioData
.L_5ab90:
	.4byte	0xFFFB


thumb_func_start func_805AB94
func_805AB94:
	push	{r4, lr}
	ldr	r0, .L_5abf4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5abf8
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
	ldr	r0, .L_5abfc
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r3, ip
	add	r3, #39	@ 0x27
	mov	r0, #32
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	strb	r2, [r4, #30]
	strb	r1, [r4, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5abf4:
	.4byte	gCurrentSprite
.L_5abf8:
	.4byte	0xFFFB
.L_5abfc:
	.4byte	sUnk_83DE528


thumb_func_start func_805AC00
func_805AC00:
	ldr	r2, .L_5ac18
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5ac16
	strh	r0, [r2, #0]
.L_5ac16:
	bx	lr
.L_5ac18:
	.4byte	gCurrentSprite


thumb_func_start SpriteIcicle
SpriteIcicle:
	push	{lr}
	ldr	r2, .L_5ac48
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_5ac30
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_5ac30:
	ldrb	r0, [r2, #28]
	cmp	r0, #24
	beq	.L_5ac7c
	cmp	r0, #24
	bgt	.L_5ac52
	cmp	r0, #16
	beq	.L_5ac6c
	cmp	r0, #16
	bgt	.L_5ac4c
	cmp	r0, #0
	beq	.L_5ac66
	b	.L_5ac8c
.L_5ac48:
	.4byte	gCurrentSprite
.L_5ac4c:
	cmp	r0, #23
	beq	.L_5ac78
	b	.L_5ac8c
.L_5ac52:
	cmp	r0, #110	@ 0x6e
	beq	.L_5ac82
	cmp	r0, #110	@ 0x6e
	bgt	.L_5ac60
	cmp	r0, #28
	beq	.L_5ac72
	b	.L_5ac8c
.L_5ac60:
	cmp	r0, #111	@ 0x6f
	beq	.L_5ac86
	b	.L_5ac8c
.L_5ac66:
	bl	func_805A96C
	b	.L_5ac94
.L_5ac6c:
	bl	func_805A9DC
	b	.L_5ac94
.L_5ac72:
	bl	func_805AA40
	b	.L_5ac94
.L_5ac78:
	bl	func_805AAC4
.L_5ac7c:
	bl	func_805AAE8
	b	.L_5ac94
.L_5ac82:
	bl	func_805AB08
.L_5ac86:
	bl	func_805AB44
	b	.L_5ac94
.L_5ac8c:
	mov	r0, #1
	strb	r0, [r2, #31]
	bl	func_805AAC4
.L_5ac94:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownD7
SpriteUnknownD7:
	push	{lr}
	ldr	r0, .L_5aca8
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_5acac
	cmp	r0, #16
	beq	.L_5acb2
	b	.L_5acb6
.L_5aca8:
	.4byte	gCurrentSprite
.L_5acac:
	bl	func_805AB94
	b	.L_5acb6
.L_5acb2:
	bl	func_805AC00
.L_5acb6:
	ldr	r1, .L_5acc0
	mov	r0, #1
	strb	r0, [r1, #31]
	pop	{r0}
	bx	r0
.L_5acc0:
	.4byte	gCurrentSprite
