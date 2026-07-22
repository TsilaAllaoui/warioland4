.include "macros.s.inc"


thumb_func_start func_8062AC8
func_8062AC8:
	push	{r4, lr}
	ldr	r0, .L_62af8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_62af2
	ldr	r4, .L_62afc
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	SpriteSpawnSecondary
	ldrb	r0, [r4, #28]
	cmp	r0, #88	@ 0x58
	bgt	.L_62af2
	cmp	r0, #81	@ 0x51
	blt	.L_62af2
	ldr	r1, .L_62b00
	mov	r0, #0
	strb	r0, [r1, #0]
.L_62af2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_62af8:
	.4byte	gUnk_3000A5A
.L_62afc:
	.4byte	gCurrentSprite
.L_62b00:
	.4byte	gCurrentCarriedSprite


thumb_func_start func_8062B04
func_8062B04:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	ldr	r1, .L_62b44
	ldrb	r0, [r1, #0]
	ldr	r6, .L_62b48
	cmp	r0, #0
	beq	.L_62b5e
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_62b58
	ldr	r0, .L_62b4c
	ldrb	r0, [r0, #28]
	cmp	r0, #32
	beq	.L_62b5e
	cmp	r0, #50	@ 0x32
	beq	.L_62b5e
	ldr	r4, .L_62b50
	ldr	r1, .L_62b54
	ldrb	r0, [r1, #0]
	cmp	r0, #9
	bls	.L_62b38
	mov	r0, #10
	strb	r0, [r1, #0]
.L_62b38:
	ldrb	r0, [r6, #0]
	cmp	r0, #8
	bls	.L_62b5e
	mov	r0, #0
	strb	r0, [r6, #0]
	b	.L_62b5e
.L_62b44:
	.4byte	gUnk_3000A5C
.L_62b48:
	.4byte	gUnk_3000A60
.L_62b4c:
	.4byte	gCurrentSprite
.L_62b50:
	.4byte	sUnk_83F03E0
.L_62b54:
	.4byte	gUnk_3000A5F
.L_62b58:
	ldr	r0, .L_62b70
	strb	r1, [r0, #0]
	strb	r1, [r6, #0]
.L_62b5e:
	mov	r5, #0
	add	r1, r6, #0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_62b74
	sub	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #0
	b	.L_62be4
.L_62b70:
	.4byte	gUnk_3000A5F
.L_62b74:
	ldr	r2, .L_62bec
	ldrb	r0, [r2, #0]
	add	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	lsl	r0, r1, #2
	add	r0, r0, r4
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	bne	.L_62b94
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r2, #0]
	ldrb	r3, [r4, #0]
	mov	r5, #1
.L_62b94:
	lsl	r0, r1, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #1]
	strb	r0, [r6, #0]
	ldr	r1, .L_62bf0
	ldr	r2, .L_62bf4
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_62bf8
	str	r0, [r1, #4]
	ldr	r3, .L_62bfc
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r0, .L_62c00
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #4
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r0, .L_62c04
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #4
	add	r2, r2, r0
	str	r2, [r1, #0]
	ldr	r0, .L_62c08
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	add	r0, r5, #0
.L_62be4:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_62bec:
	.4byte	gUnk_3000A5F
.L_62bf0:
	.4byte	0x40000D4
.L_62bf4:
	.4byte	sUnk_878F1D4
.L_62bf8:
	.4byte	0x6014000
.L_62bfc:
	.4byte	0x80000080
.L_62c00:
	.4byte	0x6014400
.L_62c04:
	.4byte	0x6014800
.L_62c08:
	.4byte	0x6014C00


thumb_func_start func_8062C0C
func_8062C0C:
	push	{r4, lr}
	lsl	r0, r0, #24
	ldr	r1, .L_62c5c
	ldr	r2, .L_62c60
	lsr	r0, r0, #22
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_62c64
	str	r0, [r1, #4]
	ldr	r3, .L_62c68
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r0, .L_62c6c
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #4
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r0, .L_62c70
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #4
	add	r2, r2, r0
	str	r2, [r1, #0]
	ldr	r0, .L_62c74
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_62c5c:
	.4byte	0x40000D4
.L_62c60:
	.4byte	sUnk_878F188
.L_62c64:
	.4byte	0x6017380
.L_62c68:
	.4byte	0x80000040
.L_62c6c:
	.4byte	0x6017780
.L_62c70:
	.4byte	0x6017B80
.L_62c74:
	.4byte	0x6017F80


thumb_func_start func_8062C78
func_8062C78:
	push	{lr}
	ldr	r3, .L_62ca0
	ldrb	r2, [r3, #0]
	cmp	r2, #0
	beq	.L_62d3a
	ldr	r0, .L_62ca4
	ldrb	r1, [r0, #0]
	sub	r1, #1
	strb	r1, [r0, #0]
	sub	r0, r2, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #11
	bhi	.L_62d3a
	lsl	r0, r0, #2
	ldr	r1, .L_62ca8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_62ca0:
	.4byte	gUnk_3000A5A
.L_62ca4:
	.4byte	gUnk_3000A5B
.L_62ca8:
	.4byte	.L_62cac
.L_62cac:
	.4byte	.L_62d34
	.4byte	.L_62d2c
	.4byte	.L_62d24
	.4byte	.L_62d1c
	.4byte	.L_62d14
	.4byte	.L_62d0c
	.4byte	.L_62d04
	.4byte	.L_62cfc
	.4byte	.L_62cf4
	.4byte	.L_62cec
	.4byte	.L_62ce4
	.4byte	.L_62cdc
.L_62cdc:
	mov	r0, #0
	bl	func_8062C0C
	b	.L_62d3a
.L_62ce4:
	mov	r0, #1
	bl	func_8062C0C
	b	.L_62d3a
.L_62cec:
	mov	r0, #2
	bl	func_8062C0C
	b	.L_62d3a
.L_62cf4:
	mov	r0, #3
	bl	func_8062C0C
	b	.L_62d3a
.L_62cfc:
	mov	r0, #4
	bl	func_8062C0C
	b	.L_62d3a
.L_62d04:
	mov	r0, #5
	bl	func_8062C0C
	b	.L_62d3a
.L_62d0c:
	mov	r0, #6
	bl	func_8062C0C
	b	.L_62d3a
.L_62d14:
	mov	r0, #7
	bl	func_8062C0C
	b	.L_62d3a
.L_62d1c:
	mov	r0, #8
	bl	func_8062C0C
	b	.L_62d3a
.L_62d24:
	mov	r0, #9
	bl	func_8062C0C
	b	.L_62d3a
.L_62d2c:
	mov	r0, #10
	bl	func_8062C0C
	b	.L_62d3a
.L_62d34:
	mov	r0, #11
	bl	func_8062C0C
.L_62d3a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8062D40
func_8062D40:
	push	{r4, lr}
	lsl	r0, r0, #24
	ldr	r1, .L_62d80
	ldr	r2, .L_62d84
	lsr	r0, r0, #22
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_62d88
	str	r0, [r1, #4]
	ldr	r3, .L_62d8c
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r0, .L_62d90
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	add	r2, r2, r0
	str	r2, [r1, #0]
	ldr	r0, .L_62d94
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_62d80:
	.4byte	0x40000D4
.L_62d84:
	.4byte	sUnk_878F1BC
.L_62d88:
	.4byte	0x6014240
.L_62d8c:
	.4byte	0x800000E0
.L_62d90:
	.4byte	0x6014640
.L_62d94:
	.4byte	0x6014A40


thumb_func_start func_8062D98
func_8062D98:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_62e98
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
	lsr	r2, r2, #16
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r1
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	r8, r2
	mov	r7, #0
	add	r6, r3, #0
.L_62df8:
	ldr	r1, .L_62e9c
	mov	r0, #44	@ 0x2c
	mul	r0, r7
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_62e0c
	b	.L_62f44
.L_62e0c:
	ldrb	r0, [r5, #23]
	cmp	r0, #241	@ 0xf1
	beq	.L_62e14
	b	.L_62f44
.L_62e14:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r0, [r5, #8]
	add	r3, r2, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r0, [r5, #10]
	add	r2, r2, r0
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
	beq	.L_62f44
	ldr	r1, .L_62e98
	ldrb	r2, [r1, #29]
	cmp	r2, #0
	beq	.L_62f0c
	ldr	r1, .L_62ea0
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_62ea4
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	beq	.L_62eb8
	cmp	r0, #1
	bgt	.L_62ea8
	cmp	r0, #0
	beq	.L_62ec6
	b	.L_62ed8
.L_62e98:
	.4byte	gCurrentSprite
.L_62e9c:
	.4byte	gSpriteData
.L_62ea0:
	.4byte	gUnk_3000A5B
.L_62ea4:
	.4byte	gUnk_3000A59
.L_62ea8:
	cmp	r0, #2
	beq	.L_62eb4
	cmp	r0, #3
	bne	.L_62ed8
	mov	r0, #2
	b	.L_62eba
.L_62eb4:
	mov	r0, #3
	b	.L_62eba
.L_62eb8:
	mov	r0, #4
.L_62eba:
	bl	func_8062D40
	mov	r0, #17
	bl	VoiceSetPlay
	b	.L_62ed8
.L_62ec6:
	mov	r0, #5
	bl	func_8062D40
	mov	r0, #17
	strb	r0, [r5, #28]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
.L_62ed8:
	mov	r0, #0
	strh	r0, [r6, #0]
	ldrh	r0, [r6, #8]
	sub	r0, #32
	ldrh	r1, [r6, #10]
	mov	r2, #5
	bl	SpriteSpawnSecondary
	ldrh	r0, [r6, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r6, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #1
	bl	VoiceSetPlay
	b	.L_62f4c
.L_62f0c:
	ldr	r3, .L_62f34
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_62f16
	strb	r2, [r3, #0]
.L_62f16:
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #15
	strb	r0, [r1, #31]
	ldrh	r0, [r1, #10]
	ldrh	r5, [r5, #10]
	cmp	r0, r5
	bls	.L_62f38
	mov	r0, #70	@ 0x46
	b	.L_62f3a
.L_62f34:
	.4byte	gCurrentCarriedSprite
.L_62f38:
	mov	r0, #68	@ 0x44
.L_62f3a:
	strb	r0, [r1, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_62f4c
.L_62f44:
	add	r7, #1
	cmp	r7, #23
	bgt	.L_62f4c
	b	.L_62df8
.L_62f4c:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8062F5C
func_8062F5C:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_62f74
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r5, [r0, #0]
	cmp	r5, #128	@ 0x80
	ble	.L_62f78
	ldrh	r1, [r2, #0]
	mov	r0, #8
	orr	r0, r1
	b	.L_62f7e
	.align	2, 0
.L_62f74:
	.4byte	gCurrentSprite
.L_62f78:
	ldrh	r1, [r2, #0]
	ldr	r0, .L_62fd0
	and	r0, r1
.L_62f7e:
	strh	r0, [r2, #0]
	mov	r0, #236	@ 0xec
	bl	SpriteUtilFindSpriteSlot
	ldr	r1, .L_62fd4
	ldrh	r3, [r1, #0]
	ldr	r2, .L_62fd8
	mov	r1, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #56	@ 0x38
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r6, r4, #0
	ldrh	r7, [r1, #10]
	ldr	r2, .L_62fdc
	lsl	r1, r5, #16
	lsr	r0, r1, #15
	add	r0, r0, r2
	mov	r5, #0
	ldrsh	r2, [r0, r5]
	add	r5, r1, #0
	cmp	r2, #0
	bge	.L_62fe8
	neg	r2, r2
	lsl	r1, r3, #16
	asr	r0, r1, #16
	mul	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	bge	.L_62fc2
	ldr	r1, .L_62fe0
	add	r0, r0, r1
.L_62fc2:
	lsl	r0, r0, #7
	ldr	r2, .L_62fe4
	lsl	r1, r4, #16
	asr	r1, r1, #16
	asr	r0, r0, #16
	sub	r1, r1, r0
	b	.L_63004
.L_62fd0:
	.4byte	0xFFF7
.L_62fd4:
	.4byte	gUnk_3000A64
.L_62fd8:
	.4byte	gSpriteData
.L_62fdc:
	.4byte	sSinCosTable
.L_62fe0:
	.4byte	0x1FF
.L_62fe4:
	.4byte	gCurrentSprite
.L_62fe8:
	lsl	r1, r3, #16
	asr	r0, r1, #16
	mul	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	bge	.L_62ff8
	ldr	r4, .L_63030
	add	r0, r0, r4
.L_62ff8:
	lsl	r0, r0, #7
	ldr	r2, .L_63034
	lsl	r1, r6, #16
	asr	r1, r1, #16
	asr	r0, r0, #16
	add	r1, r1, r0
.L_63004:
	strh	r1, [r2, #8]
	ldr	r1, .L_63038
	lsr	r0, r5, #15
	add	r0, #128	@ 0x80
	add	r0, r0, r1
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	cmp	r1, #0
	bge	.L_6303c
	neg	r1, r1
	asr	r0, r3, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_63022
	add	r0, #255	@ 0xff
.L_63022:
	lsl	r1, r0, #8
	lsl	r0, r7, #16
	asr	r0, r0, #16
	asr	r1, r1, #16
	sub	r0, r0, r1
	b	.L_63050
	.align	2, 0
.L_63030:
	.4byte	0x1FF
.L_63034:
	.4byte	gCurrentSprite
.L_63038:
	.4byte	sSinCosTable
.L_6303c:
	asr	r0, r3, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_63046
	add	r0, #255	@ 0xff
.L_63046:
	lsl	r1, r0, #8
	lsl	r0, r7, #16
	asr	r0, r0, #16
	asr	r1, r1, #16
	add	r0, r0, r1
.L_63050:
	strh	r0, [r2, #10]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8063058
func_8063058:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #8
	mov	r7, #1
	ldr	r0, .L_63070
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	beq	.L_6311a
	cmp	r0, #9
	bgt	.L_63074
	cmp	r0, #8
	beq	.L_63082
	b	.L_632fa
.L_63070:
	.4byte	gBossInteractionState
.L_63074:
	cmp	r0, #10
	bne	.L_6307a
	b	.L_631bc
.L_6307a:
	cmp	r0, #11
	bne	.L_63080
	b	.L_6326a
.L_63080:
	b	.L_632fa
.L_63082:
	mov	r0, #242	@ 0xf2
	bl	SpriteUtilCountSpriteType
	add	r7, r0, #0
	cmp	r7, #0
	bne	.L_63126
	mov	r0, #243	@ 0xf3
	bl	SpriteUtilCountSpriteType
	add	r6, r0, #0
	mov	r0, #244	@ 0xf4
	bl	SpriteUtilCountSpriteType
	add	r5, r0, #0
	mov	r0, #245	@ 0xf5
	bl	SpriteUtilCountSpriteType
	add	r4, r0, #0
	mov	r0, #246	@ 0xf6
	bl	SpriteUtilCountSpriteType
	add	r1, r0, #0
	add	r0, r6, r5
	add	r0, r0, r4
	add	r0, r0, r1
	cmp	r0, #1
	ble	.L_630ba
	b	.L_632a0
.L_630ba:
	ldr	r4, .L_630f4
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #248	@ 0xf8
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldr	r1, .L_630f8
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_630fc
	ldrh	r3, [r4, #8]
	add	r3, #224	@ 0xe0
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #242	@ 0xf2
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_63112
	.align	2, 0
.L_630f4:
	.4byte	gCurrentSprite
.L_630f8:
	.4byte	gWarioData
.L_630fc:
	ldrh	r3, [r4, #8]
	add	r3, #224	@ 0xe0
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	str	r7, [sp, #4]
	mov	r0, #242	@ 0xf2
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
.L_63112:
	mov	r0, #128	@ 0x80
	bl	m4aSongNumStart
	b	.L_632fa
.L_6311a:
	mov	r0, #243	@ 0xf3
	bl	SpriteUtilCountSpriteType
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L_63138
.L_63126:
	ldr	r0, .L_63134
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_63130
	b	.L_632fa
.L_63130:
	mov	r7, #0
	b	.L_632fa
.L_63134:
	.4byte	gUnk_3000A5A
.L_63138:
	mov	r0, #242	@ 0xf2
	bl	SpriteUtilCountSpriteType
	add	r6, r0, #0
	mov	r0, #244	@ 0xf4
	bl	SpriteUtilCountSpriteType
	add	r5, r0, #0
	mov	r0, #245	@ 0xf5
	bl	SpriteUtilCountSpriteType
	add	r4, r0, #0
	mov	r0, #246	@ 0xf6
	bl	SpriteUtilCountSpriteType
	add	r1, r0, #0
	add	r0, r6, r5
	add	r0, r0, r4
	add	r0, r0, r1
	cmp	r0, #1
	ble	.L_63164
	b	.L_632a0
.L_63164:
	ldr	r4, .L_63198
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #248	@ 0xf8
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldr	r1, .L_6319c
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_631a0
	ldrh	r3, [r4, #8]
	sub	r3, #32
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #243	@ 0xf3
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_631b4
.L_63198:
	.4byte	gCurrentSprite
.L_6319c:
	.4byte	gWarioData
.L_631a0:
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r7, [sp, #4]
	mov	r0, #243	@ 0xf3
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
.L_631b4:
	mov	r0, #125	@ 0x7d
	bl	m4aSongNumStart
	b	.L_632fa
.L_631bc:
	mov	r0, #244	@ 0xf4
	bl	SpriteUtilCountSpriteType
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L_631ca
	b	.L_632fa
.L_631ca:
	mov	r0, #245	@ 0xf5
	bl	SpriteUtilCountSpriteType
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L_631d8
	b	.L_632fa
.L_631d8:
	mov	r0, #243	@ 0xf3
	bl	SpriteUtilCountSpriteType
	add	r6, r0, #0
	mov	r0, #242	@ 0xf2
	bl	SpriteUtilCountSpriteType
	add	r5, r0, #0
	mov	r0, #246	@ 0xf6
	bl	SpriteUtilCountSpriteType
	add	r4, r0, #0
	add	r0, r6, r5
	add	r0, r0, r4
	cmp	r0, #1
	bgt	.L_632a0
	ldr	r4, .L_63230
	ldr	r1, .L_63234
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_63238
	ldrh	r3, [r4, #8]
	add	r3, #92	@ 0x5c
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #248	@ 0xf8
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #244	@ 0xf4
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_63262
.L_63230:
	.4byte	gCurrentSprite
.L_63234:
	.4byte	gWarioData
.L_63238:
	ldrh	r3, [r4, #8]
	add	r3, #92	@ 0x5c
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #248	@ 0xf8
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	str	r7, [sp, #4]
	mov	r0, #244	@ 0xf4
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
.L_63262:
	mov	r0, #127	@ 0x7f
	bl	m4aSongNumStart
	b	.L_632fa
.L_6326a:
	mov	r0, #246	@ 0xf6
	bl	SpriteUtilCountSpriteType
	add	r7, r0, #0
	cmp	r7, #0
	bne	.L_632fa
	mov	r0, #243	@ 0xf3
	bl	SpriteUtilCountSpriteType
	add	r6, r0, #0
	mov	r0, #244	@ 0xf4
	bl	SpriteUtilCountSpriteType
	add	r5, r0, #0
	mov	r0, #245	@ 0xf5
	bl	SpriteUtilCountSpriteType
	add	r4, r0, #0
	mov	r0, #242	@ 0xf2
	bl	SpriteUtilCountSpriteType
	add	r1, r0, #0
	add	r0, r6, r5
	add	r0, r0, r4
	add	r0, r0, r1
	cmp	r0, #1
	ble	.L_632a4
.L_632a0:
	mov	r7, #1
	b	.L_632fa
.L_632a4:
	ldr	r4, .L_632d8
	ldrh	r3, [r4, #8]
	add	r3, #160	@ 0xa0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #248	@ 0xf8
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldr	r1, .L_632dc
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_632e0
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #246	@ 0xf6
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_632f4
.L_632d8:
	.4byte	gCurrentSprite
.L_632dc:
	.4byte	gWarioData
.L_632e0:
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r7, [sp, #4]
	mov	r0, #246	@ 0xf6
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
.L_632f4:
	mov	r0, #126	@ 0x7e
	bl	m4aSongNumStart
.L_632fa:
	add	r0, r7, #0
	add	sp, #8
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8063304
func_8063304:
	push	{r4, r5, lr}
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldr	r2, .L_6333c
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r5, [r0, #0]
	ldr	r1, .L_63340
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_63344
	ldrh	r1, [r2, #10]
	add	r1, r3, r1
	strh	r1, [r2, #10]
	ldrh	r0, [r2, #8]
	add	r1, r4, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_63356
.L_6333c:
	.4byte	gCurrentSprite
.L_63340:
	.4byte	gSpriteData
.L_63344:
	ldrh	r1, [r2, #10]
	sub	r1, r1, r3
	strh	r1, [r2, #10]
	ldrh	r0, [r2, #8]
	sub	r1, r1, r4
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_63356:
	ldr	r0, .L_6337c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_63374
	ldr	r2, .L_63380
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	mov	r2, #64	@ 0x40
	eor	r0, r2
	strh	r0, [r1, #0]
.L_63374:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6337c:
	.4byte	gUnk_3000A51
.L_63380:
	.4byte	gSpriteData


thumb_func_start func_8063384
func_8063384:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	mov	r0, #0
	bl	func_8062D40
	ldr	r4, .L_63480
	mov	r6, #0
	mov	r5, #20
	strb	r5, [r4, #29]
	bl	func_80747D8
	ldr	r0, .L_63484
	mov	r1, #0
	strh	r6, [r0, #0]
	ldr	r0, .L_63488
	strb	r1, [r0, #0]
	ldr	r2, .L_6348c
	mov	r0, #4
	strb	r0, [r2, #0]
	ldr	r2, .L_63490
	mov	r0, #12
	strb	r0, [r2, #0]
	ldr	r0, .L_63494
	strb	r5, [r0, #0]
	ldr	r0, .L_63498
	strb	r1, [r0, #0]
	ldr	r0, .L_6349c
	strb	r1, [r0, #0]
	ldr	r0, .L_634a0
	strb	r1, [r0, #0]
	ldr	r0, .L_634a4
	strb	r1, [r0, #0]
	ldr	r0, .L_634a8
	strb	r1, [r0, #0]
	ldr	r0, .L_634ac
	strb	r1, [r0, #0]
	ldr	r1, .L_634b0
	add	r0, r1, #0
	ldrh	r1, [r4, #8]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #238	@ 0xee
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #241	@ 0xf1
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #239	@ 0xef
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #236	@ 0xec
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #237	@ 0xed
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	strh	r6, [r4, #0]
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_63480:
	.4byte	gCurrentSprite
.L_63484:
	.4byte	gUnk_3000A64
.L_63488:
	.4byte	gBossInteractionState
.L_6348c:
	.4byte	gUnk_3000A59
.L_63490:
	.4byte	gUnk_3000A5A
.L_63494:
	.4byte	gUnk_3000A5B
.L_63498:
	.4byte	gUnk_3000A5C
.L_6349c:
	.4byte	gBossDefeatState
.L_634a0:
	.4byte	gUnk_3000A5E
.L_634a4:
	.4byte	gUnk_3000A61
.L_634a8:
	.4byte	gUnk_3000A5F
.L_634ac:
	.4byte	gUnk_3000A60
.L_634b0:
	.4byte	0xFFFFFC60


thumb_func_start func_80634B4
func_80634B4:
	push	{r4, r5, lr}
	ldr	r5, .L_63550
	ldrh	r1, [r5, #0]
	ldr	r2, .L_63554
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_63558
	and	r0, r1
	strh	r0, [r5, #0]
	strb	r2, [r5, #30]
	add	r0, r5, #0
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r5, #0
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #38	@ 0x26
	mov	r4, #44	@ 0x2c
	strb	r4, [r0, #0]
	ldr	r0, .L_6355c
	str	r0, [r5, #4]
	strb	r2, [r5, #22]
	strh	r3, [r5, #20]
	ldr	r0, .L_63560
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #29]
	mov	r0, #110	@ 0x6e
	strb	r0, [r5, #28]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	sub	r0, #3
	strb	r2, [r0, #0]
	ldr	r0, .L_63564
	bl	func_8062B04
	ldr	r1, .L_63568
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #239	@ 0xef
	bl	SpriteUtilFindSpriteSlot
	add	r3, r5, #0
	add	r3, #41	@ 0x29
	strb	r0, [r3, #0]
	ldr	r2, .L_6356c
	ldrb	r0, [r3, #0]
	add	r1, r0, #0
	mul	r1, r4
	add	r1, r1, r2
	ldrh	r0, [r5, #8]
	add	r0, #56	@ 0x38
	strh	r0, [r1, #8]
	ldrb	r0, [r3, #0]
	mul	r0, r4
	add	r0, r0, r2
	ldrh	r1, [r5, #10]
	strh	r1, [r0, #10]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_63550:
	.4byte	gCurrentSprite
.L_63554:
	.4byte	0x8408
.L_63558:
	.4byte	0xFFFB
.L_6355c:
	.4byte	sUnk_83EED74
.L_63560:
	.4byte	gUnk_3000A5B
.L_63564:
	.4byte	sUnk_83F040C
.L_63568:
	.4byte	gUnk_3000045
.L_6356c:
	.4byte	gSpriteData


thumb_func_start func_8063570
func_8063570:
	push	{r4, r5, lr}
	ldr	r0, .L_63588
	ldrb	r0, [r0, #0]
	sub	r0, #2
	cmp	r0, #6
	bhi	.L_635c4
	lsl	r0, r0, #2
	ldr	r1, .L_6358c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_63588:
	.4byte	gCurrentShopItem
.L_6358c:
	.4byte	.L_63590
.L_63590:
	.4byte	.L_635c4
	.4byte	.L_635ac
	.4byte	.L_635b0
	.4byte	.L_635b4
	.4byte	.L_635b8
	.4byte	.L_635bc
	.4byte	.L_635c0
.L_635ac:
	mov	r1, #18
	b	.L_635c6
.L_635b0:
	mov	r1, #17
	b	.L_635c6
.L_635b4:
	mov	r1, #12
	b	.L_635c6
.L_635b8:
	mov	r1, #15
	b	.L_635c6
.L_635bc:
	mov	r1, #14
	b	.L_635c6
.L_635c0:
	mov	r1, #13
	b	.L_635c6
.L_635c4:
	mov	r1, #19
.L_635c6:
	ldr	r0, .L_635fc
	strb	r1, [r0, #0]
	ldr	r1, .L_63600
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r5, .L_63604
	mov	r0, #117	@ 0x75
	strb	r0, [r5, #28]
	ldr	r4, .L_63608
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_635f0
	bl	func_8062C78
	ldrb	r0, [r4, #0]
	strb	r0, [r5, #29]
	bl	func_80747D8
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_635f0:
	mov	r0, #17
	bl	VoiceSetPlay
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_635fc:
	.4byte	gUnk_3000A61
.L_63600:
	.4byte	gUnk_3000A5E
.L_63604:
	.4byte	gCurrentSprite
.L_63608:
	.4byte	gUnk_3000A5B


thumb_func_start func_806360C
func_806360C:
	push	{r4, r5, lr}
	ldr	r3, .L_6364c
	ldrb	r0, [r3, #0]
	add	r5, r0, #0
	cmp	r5, #0
	beq	.L_63674
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	beq	.L_6362a
	b	.L_63728
.L_6362a:
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	beq	.L_63658
	ldr	r2, .L_63650
	ldr	r0, .L_63654
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #4
	strb	r1, [r0, #27]
	b	.L_63728
	.align	2, 0
.L_6364c:
	.4byte	gUnk_3000A5E
.L_63650:
	.4byte	gSpriteData
.L_63654:
	.4byte	gCurrentSprite
.L_63658:
	ldr	r2, .L_6366c
	ldr	r0, .L_63670
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	strb	r3, [r0, #27]
	b	.L_63728
	.align	2, 0
.L_6366c:
	.4byte	gSpriteData
.L_63670:
	.4byte	gCurrentSprite
.L_63674:
	ldr	r4, .L_636a0
	ldr	r1, .L_636a4
	ldrb	r0, [r4, #29]
	add	r2, r4, #0
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bne	.L_6370a
	mov	r0, #118	@ 0x76
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r5, [r0, #0]
	ldr	r0, .L_636a8
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bhi	.L_63700
	lsl	r0, r0, #2
	ldr	r1, .L_636ac
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_636a0:
	.4byte	gCurrentSprite
.L_636a4:
	.4byte	gUnk_3000A61
.L_636a8:
	.4byte	gCurrentShopItem
.L_636ac:
	.4byte	.L_636b0
.L_636b0:
	.4byte	.L_636d0
	.4byte	.L_636d0
	.4byte	.L_636f2
	.4byte	.L_636da
	.4byte	.L_636e4
	.4byte	.L_636e8
	.4byte	.L_636fc
	.4byte	.L_636f2
.L_636d0:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #110	@ 0x6e
	strb	r0, [r1, #0]
	b	.L_63728
.L_636da:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #0]
	b	.L_63728
.L_636e4:
	add	r1, r2, #0
	b	.L_63702
.L_636e8:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	b	.L_63728
.L_636f2:
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #180	@ 0xb4
	strb	r0, [r1, #0]
	b	.L_63728
.L_636fc:
	add	r1, r2, #0
	b	.L_63702
.L_63700:
	add	r1, r4, #0
.L_63702:
	add	r1, #40	@ 0x28
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	b	.L_63728
.L_6370a:
	mov	r0, #32
	strb	r0, [r3, #0]
	ldr	r5, .L_63730
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_63728
	bl	func_8062C78
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #29]
	bl	func_80747D8
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_63728:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_63730:
	.4byte	gUnk_3000A5B


thumb_func_start func_8063734
func_8063734:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r0, .L_63750
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bls	.L_63744
	b	.L_6387c
.L_63744:
	lsl	r0, r0, #2
	ldr	r1, .L_63754
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_63750:
	.4byte	gCurrentShopItem
.L_63754:
	.4byte	.L_63758
.L_63758:
	.4byte	.L_63778
	.4byte	.L_63790
	.4byte	.L_637b0
	.4byte	.L_637d0
	.4byte	.L_63810
	.4byte	.L_6382c
	.4byte	.L_63848
	.4byte	.L_63864
.L_63778:
	mov	r0, #9
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r1, .L_6378c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #63	@ 0x3f
	b	.L_6387a
.L_6378c:
	.4byte	gSpriteData
.L_63790:
	mov	r0, #9
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r5, .L_637ac
	mov	r4, #44	@ 0x2c
	add	r0, r2, #0
	mul	r0, r4
	add	r0, r0, r5
	mov	r6, #0
	mov	r1, #63	@ 0x3f
	strb	r1, [r0, #28]
	mov	r0, #190	@ 0xbe
	b	.L_637ea
.L_637ac:
	.4byte	gSpriteData
.L_637b0:
	mov	r0, #9
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r5, .L_637cc
	mov	r4, #44	@ 0x2c
	add	r0, r2, #0
	mul	r0, r4
	add	r0, r0, r5
	mov	r6, #0
	mov	r1, #63	@ 0x3f
	strb	r1, [r0, #28]
	mov	r0, #191	@ 0xbf
	b	.L_637ea
.L_637cc:
	.4byte	gSpriteData
.L_637d0:
	mov	r0, #9
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r5, .L_6380c
	mov	r4, #44	@ 0x2c
	add	r0, r2, #0
	mul	r0, r4
	add	r0, r0, r5
	mov	r6, #0
	mov	r1, #63	@ 0x3f
	strb	r1, [r0, #28]
	mov	r0, #192	@ 0xc0
.L_637ea:
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	add	r0, r2, #0
	mul	r0, r4
	add	r0, r0, r5
	strh	r6, [r0, #0]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_6387c
	.align	2, 0
.L_6380c:
	.4byte	gSpriteData
.L_63810:
	mov	r0, #193	@ 0xc1
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r1, .L_63828
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #9
	strb	r1, [r0, #23]
	mov	r1, #63	@ 0x3f
	b	.L_6387a
.L_63828:
	.4byte	gSpriteData
.L_6382c:
	mov	r0, #194	@ 0xc2
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r1, .L_63844
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #9
	strb	r1, [r0, #23]
	mov	r1, #63	@ 0x3f
	b	.L_6387a
.L_63844:
	.4byte	gSpriteData
.L_63848:
	mov	r0, #195	@ 0xc3
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r1, .L_63860
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #9
	strb	r1, [r0, #23]
	mov	r1, #63	@ 0x3f
	b	.L_6387a
.L_63860:
	.4byte	gSpriteData
.L_63864:
	mov	r0, #196	@ 0xc4
	bl	SpriteUtilFindSpriteSlot
	add	r2, r0, #0
	ldr	r1, .L_63884
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #9
	strb	r1, [r0, #23]
	mov	r1, #65	@ 0x41
.L_6387a:
	strb	r1, [r0, #28]
.L_6387c:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_63884:
	.4byte	gSpriteData


thumb_func_start func_8063888
func_8063888:
	push	{r4, lr}
	ldr	r4, .L_638ac
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_638b0
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_63938
	mov	r0, #4
	mov	r1, #0
	mov	r2, #16
	bl	func_8070A84
	b	.L_63938
.L_638ac:
	.4byte	gCurrentSprite
.L_638b0:
	ldr	r0, .L_638d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_63938
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	cmp	r0, #80	@ 0x50
	beq	.L_63918
	cmp	r0, #80	@ 0x50
	bgt	.L_638dc
	cmp	r0, #60	@ 0x3c
	beq	.L_638e2
	cmp	r0, #70	@ 0x46
	beq	.L_63906
	b	.L_63938
	.align	2, 0
.L_638d8:
	.4byte	gUnk_30000FC
.L_638dc:
	cmp	r0, #100	@ 0x64
	beq	.L_63924
	b	.L_63938
.L_638e2:
	ldrh	r0, [r4, #8]
	add	r0, #48	@ 0x30
	ldrh	r1, [r4, #10]
	add	r1, #20
	mov	r2, #67	@ 0x43
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #48	@ 0x30
	ldrh	r1, [r4, #10]
	sub	r1, #16
	mov	r2, #67	@ 0x43
	bl	SpriteSpawnSecondary
	mov	r0, #194	@ 0xc2
	bl	m4aSongNumStart
	b	.L_63938
.L_63906:
	ldr	r1, .L_63914
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #195	@ 0xc3
	bl	m4aSongNumStart
	b	.L_63938
.L_63914:
	.4byte	gShopkeeperItemState
.L_63918:
	bl	func_8063734
	mov	r0, #196	@ 0xc4
	bl	m4aSongNumStart
	b	.L_63938
.L_63924:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #16
	bl	func_8070A84
	mov	r0, #119	@ 0x77
	strb	r0, [r4, #28]
	mov	r0, #124	@ 0x7c
	bl	m4aSongNumStart
.L_63938:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8063940
func_8063940:
	ldr	r0, .L_6395c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_63958
	ldr	r0, .L_63960
	mov	r1, #112	@ 0x70
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	strb	r2, [r1, #0]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
.L_63958:
	bx	lr
	.align	2, 0
.L_6395c:
	.4byte	gUnk_30000FC
.L_63960:
	.4byte	gCurrentSprite


thumb_func_start func_8063964
func_8063964:
	push	{r4, lr}
	ldr	r0, .L_639d8
	add	r4, r0, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_63986
	ldr	r0, .L_639dc
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_639f8
	mov	r0, #193	@ 0xc1
	bl	m4aSongNumStart
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_63986:
	ldrb	r2, [r4, #0]
	cmp	r2, #254	@ 0xfe
	bhi	.L_639a8
	ldr	r0, .L_639e0
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_6399c
	add	r0, r2, #1
	strb	r0, [r4, #0]
.L_6399c:
	ldrb	r0, [r4, #0]
	cmp	r0, #180	@ 0xb4
	bne	.L_639a8
	mov	r0, #120	@ 0x78
	bl	m4aSongNumStart
.L_639a8:
	ldr	r4, .L_639d8
	ldrh	r3, [r4, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_639e4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #56	@ 0x38
	beq	.L_639ec
	add	r0, r3, #1
	strh	r0, [r4, #8]
	ldr	r2, .L_639e8
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	add	r1, r3, #0
	add	r1, #57	@ 0x39
	strh	r1, [r0, #8]
	b	.L_639f8
.L_639d8:
	.4byte	gCurrentSprite
.L_639dc:
	.4byte	gUnk_3000045
.L_639e0:
	.4byte	gMainTimer
.L_639e4:
	.4byte	gBg1YPosition
.L_639e8:
	.4byte	gSpriteData
.L_639ec:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
.L_639f8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8063A00
func_8063A00:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_63a24
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_63a2c
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_63a7e
	ldr	r1, .L_63a28
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_63a7e
.L_63a24:
	.4byte	gCurrentSprite
.L_63a28:
	.4byte	gUnk_3000045
.L_63a2c:
	ldr	r0, .L_63a60
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_63a7e
	ldr	r1, .L_63a64
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #112	@ 0x70
	strb	r0, [r3, #28]
	mov	r6, ip
	strb	r2, [r6, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	ldr	r0, .L_63a68
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_63a78
	cmp	r0, #1
	bne	.L_63a6c
	mov	r0, #171	@ 0xab
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_63a7e
	.align	2, 0
.L_63a60:
	.4byte	gUnk_3000045
.L_63a64:
	.4byte	gBossInteractionState
.L_63a68:
	.4byte	gCurrentShopItem
.L_63a6c:
	ldr	r0, .L_63a74
	bl	m4aSongNumStart
	b	.L_63a7e
.L_63a74:
	.4byte	0x2AB
.L_63a78:
	mov	r0, #124	@ 0x7c
	bl	m4aSongNumStart
.L_63a7e:
	ldr	r4, .L_63ab0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_63ab4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_63ab8
	cmp	r1, r0
	bne	.L_63a9e
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63a9e:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_63ab0:
	.4byte	gCurrentSprite
.L_63ab4:
	.4byte	sUnk_83F06E6
.L_63ab8:
	.4byte	0x7FFF


thumb_func_start func_8063ABC
func_8063ABC:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r5, .L_63ad4
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	beq	.L_63ae2
	cmp	r0, #3
	bgt	.L_63ad8
	cmp	r0, #2
	beq	.L_63b84
	b	.L_63b58
	.align	2, 0
.L_63ad4:
	.4byte	gBossInteractionState
.L_63ad8:
	cmp	r0, #4
	beq	.L_63b84
	cmp	r0, #5
	beq	.L_63b44
	b	.L_63b58
.L_63ae2:
	ldr	r0, .L_63b40
	mov	ip, r0
	mov	r4, ip
	add	r4, #40	@ 0x28
	ldrb	r0, [r4, #0]
	cmp	r0, #11
	bhi	.L_63b84
	mov	r2, ip
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r0, #7
	and	r0, r2
	cmp	r0, #0
	bne	.L_63b84
	lsl	r1, r2, #1
	add	r1, r1, r2
	mov	r2, ip
	ldrh	r3, [r2, #8]
	add	r3, r3, r1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r0, [r2, #10]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r1, [r4, #0]
	add	r3, #56	@ 0x38
	str	r0, [sp, #0]
	mov	r0, #171	@ 0xab
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #12
	bne	.L_63b84
	mov	r0, #4
	strb	r0, [r5, #0]
	b	.L_63b84
	.align	2, 0
.L_63b40:
	.4byte	gCurrentSprite
.L_63b44:
	ldr	r0, .L_63b54
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #120	@ 0x78
	strb	r1, [r0, #0]
	b	.L_63b84
	.align	2, 0
.L_63b54:
	.4byte	gCurrentSprite
.L_63b58:
	ldr	r4, .L_63b8c
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_63b90
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_63b94
	cmp	r1, r0
	bne	.L_63b78
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63b78:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
.L_63b84:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_63b8c:
	.4byte	gCurrentSprite
.L_63b90:
	.4byte	sUnk_83F06E6
.L_63b94:
	.4byte	0x7FFF


thumb_func_start func_8063B98
func_8063B98:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_63bf4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	cmp	r6, #0
	bne	.L_63bec
	mov	r0, #114	@ 0x72
	strb	r0, [r2, #28]
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	ldr	r4, .L_63bf8
	mov	r5, #44	@ 0x2c
	add	r2, r0, #0
	mul	r2, r5
	add	r0, r4, #4
	add	r0, r2, r0
	ldr	r1, .L_63bfc
	str	r1, [r0, #0]
	add	r2, r2, r4
	strb	r6, [r2, #22]
	strh	r6, [r2, #20]
	mov	r0, #241	@ 0xf1
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	mul	r1, r5
	add	r1, r1, r4
	ldrh	r2, [r1, #0]
	ldr	r0, .L_63c00
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #130	@ 0x82
	bl	m4aSongNumStart
.L_63bec:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_63bf4:
	.4byte	gCurrentSprite
.L_63bf8:
	.4byte	gSpriteData
.L_63bfc:
	.4byte	sUnk_83EF2F4
.L_63c00:
	.4byte	0xFFFB


thumb_func_start func_8063C04
func_8063C04:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_63c74
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_63c80
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_63cb6
	ldr	r1, .L_63c78
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #6
	add	r4, r1, #0
	orr	r0, r4
	strh	r0, [r3, #0]
	mov	r0, #237	@ 0xed
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	ldr	r6, .L_63c7c
	mov	r5, #44	@ 0x2c
	mul	r1, r5
	add	r1, r1, r6
	ldrh	r0, [r1, #0]
	orr	r0, r4
	strh	r0, [r1, #0]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	mul	r1, r5
	add	r1, r1, r6
	ldrh	r0, [r1, #0]
	orr	r0, r4
	strh	r0, [r1, #0]
	mov	r0, #239	@ 0xef
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	add	r0, r1, #0
	mul	r0, r5
	add	r0, r0, r6
	ldrh	r1, [r0, #0]
	orr	r4, r1
	strh	r4, [r0, #0]
	mov	r0, #183	@ 0xb7
	bl	m4aSongNumStart
	b	.L_63cb6
	.align	2, 0
.L_63c74:
	.4byte	gCurrentSprite
.L_63c78:
	.4byte	gBossInteractionState
.L_63c7c:
	.4byte	gSpriteData
.L_63c80:
	ldr	r1, .L_63ce4
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #191	@ 0xbf
	ble	.L_63cb6
	mov	r0, #120	@ 0x78
	strb	r0, [r3, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #0]
	mov	r0, #1
	bl	func_8062D40
	mov	r0, #241	@ 0xf1
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	ldr	r2, .L_63ce8
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	mov	r0, #8
	orr	r0, r2
	strh	r0, [r1, #0]
.L_63cb6:
	ldr	r4, .L_63cec
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r2, [r6, #0]
	ldr	r5, .L_63cf0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_63cf4
	cmp	r1, r0
	bne	.L_63cd4
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63cd4:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_63ce4:
	.4byte	gUnk_3000A64
.L_63ce8:
	.4byte	gSpriteData
.L_63cec:
	.4byte	gCurrentSprite
.L_63cf0:
	.4byte	sUnk_83F06E6
.L_63cf4:
	.4byte	0x7FFF


thumb_func_start func_8063CF8
func_8063CF8:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_63d0c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_63d10
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_63d18
.L_63d0c:
	.4byte	gCurrentSprite
.L_63d10:
	mov	r0, #115	@ 0x73
	strb	r0, [r2, #28]
	bl	SpriteUtilStartBossTimer
.L_63d18:
	ldr	r4, .L_63d4c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_63d50
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_63d54
	cmp	r1, r0
	bne	.L_63d38
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63d38:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_63d4c:
	.4byte	gCurrentSprite
.L_63d50:
	.4byte	sUnk_83F06E6
.L_63d54:
	.4byte	0x7FFF


thumb_func_start func_8063D58
func_8063D58:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_63da4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_63da8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_63dac
	cmp	r1, r0
	bne	.L_63d7a
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63d7a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldr	r0, .L_63db0
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_63d9e
	ldr	r0, .L_63db4
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_63d9e
	bl	SpriteUtilUnsetAllSpritesHighPriority
	mov	r0, #15
	strb	r0, [r4, #28]
.L_63d9e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_63da4:
	.4byte	gCurrentSprite
.L_63da8:
	.4byte	sUnk_83F06E6
.L_63dac:
	.4byte	0x7FFF
.L_63db0:
	.4byte	gWarioPauseTimer
.L_63db4:
	.4byte	gTimerState


thumb_func_start func_8063DB8
func_8063DB8:
	push	{r4, lr}
	ldr	r4, .L_63dd8
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_63ddc
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #32
	bls	.L_63de0
	sub	r0, r2, #4
	strh	r0, [r4, #8]
	b	.L_63df6
	.align	2, 0
.L_63dd8:
	.4byte	gCurrentSprite
.L_63ddc:
	.4byte	gBg1YPosition
.L_63de0:
	mov	r0, #16
	strb	r0, [r4, #28]
	mov	r0, #237	@ 0xed
	bl	SpriteUtilFindSpriteSlot
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	strb	r0, [r1, #0]
	ldr	r1, .L_63dfc
	mov	r0, #7
	strb	r0, [r1, #0]
.L_63df6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_63dfc:
	.4byte	gBossInteractionState


thumb_func_start func_8063E00
func_8063E00:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_63e5c
	ldr	r0, .L_63e60
	ldrb	r1, [r0, #0]
	ldrb	r0, [r4, #29]
	cmp	r0, r1
	beq	.L_63e20
	strb	r1, [r4, #29]
	bl	func_80747D8
	ldr	r0, .L_63e64
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_63e20
	mov	r0, #17
	strb	r0, [r4, #28]
.L_63e20:
	mov	r0, #2
	mov	r1, #192	@ 0xc0
	bl	func_8063304
	ldr	r4, .L_63e5c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_63e68
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_63e6c
	cmp	r1, r0
	bne	.L_63e48
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_63e48:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_63e5c:
	.4byte	gCurrentSprite
.L_63e60:
	.4byte	gUnk_3000A5B
.L_63e64:
	.4byte	gUnk_3000A59
.L_63e68:
	.4byte	sUnk_83F06E6
.L_63e6c:
	.4byte	0x7FFF


thumb_func_start func_8063E70
func_8063E70:
	push	{lr}
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	ldr	r3, .L_63ea0
	mov	r1, #44	@ 0x2c
	add	r2, r0, #0
	mul	r2, r1
	add	r0, r3, #4
	add	r0, r2, r0
	ldr	r1, .L_63ea4
	str	r1, [r0, #0]
	add	r2, r2, r3
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	ldr	r0, .L_63ea8
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	pop	{r0}
	bx	r0
.L_63ea0:
	.4byte	gSpriteData
.L_63ea4:
	.4byte	sUnk_83EF2CC
.L_63ea8:
	.4byte	gCurrentSprite


thumb_func_start func_8063EAC
func_8063EAC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_63ef0
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_63ed2
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #30
	bne	.L_63ed2
	mov	r0, #17
	bl	VoiceSetPlay
.L_63ed2:
	ldr	r5, .L_63ef0
	ldrh	r2, [r5, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_63ef4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #32
	bls	.L_63ef8
	sub	r0, r2, #4
	strh	r0, [r5, #8]
	b	.L_63fe8
	.align	2, 0
.L_63ef0:
	.4byte	gCurrentSprite
.L_63ef4:
	.4byte	gBg1YPosition
.L_63ef8:
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_63fe8
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	ldr	r7, .L_63f90
	mov	r1, #44	@ 0x2c
	mov	r8, r1
	mov	r1, r8
	mul	r1, r0
	add	r0, r1, r7
	strb	r4, [r0, #22]
	mov	r6, #0
	strh	r4, [r0, #20]
	add	r0, r7, #4
	add	r1, r1, r0
	ldr	r0, .L_63f94
	str	r0, [r1, #0]
	ldr	r0, .L_63f98
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_63fb0
	ldr	r0, .L_63f9c
	strb	r6, [r0, #0]
	ldr	r0, .L_63fa0
	strb	r6, [r0, #0]
	ldr	r0, .L_63fa4
	bl	func_8062B04
	mov	r0, #73	@ 0x49
	strb	r0, [r5, #30]
	mov	r0, #90	@ 0x5a
	mov	r1, r9
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r6, [r0, #0]
	mov	r0, #21
	strb	r0, [r5, #28]
	ldr	r1, .L_63fa8
	mov	r0, #12
	strb	r0, [r1, #0]
	ldrh	r1, [r5, #0]
	ldr	r4, .L_63fac
	add	r0, r4, #0
	and	r0, r1
	strh	r0, [r5, #0]
	mov	r0, #237	@ 0xed
	bl	SpriteUtilFindSpriteSlot
	mov	r1, r8
	mul	r1, r0
	add	r1, r1, r7
	ldrh	r2, [r1, #0]
	add	r0, r4, #0
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	mov	r1, r8
	mul	r1, r0
	add	r0, r1, #0
	add	r0, r0, r7
	ldrh	r1, [r0, #0]
	and	r4, r1
	strh	r4, [r0, #0]
	mov	r0, #48	@ 0x30
	bl	m4aSongNumStart
	b	.L_63fe8
	.align	2, 0
.L_63f90:
	.4byte	gSpriteData
.L_63f94:
	.4byte	sUnk_83EF33C
.L_63f98:
	.4byte	gUnk_3000A5A
.L_63f9c:
	.4byte	gUnk_3000A5F
.L_63fa0:
	.4byte	gUnk_3000A60
.L_63fa4:
	.4byte	sUnk_83F037C
.L_63fa8:
	.4byte	gBossInteractionState
.L_63fac:
	.4byte	0xDFFF
.L_63fb0:
	mov	r0, #19
	strb	r0, [r5, #28]
	add	r1, r5, #0
	add	r1, #42	@ 0x2a
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	ldr	r1, .L_63fcc
	ldrb	r0, [r1, #0]
	cmp	r0, #7
	beq	.L_63fe4
	cmp	r0, #9
	bne	.L_63fd0
	mov	r0, #11
	b	.L_63fe6
.L_63fcc:
	.4byte	gBossInteractionState
.L_63fd0:
	cmp	r0, #11
	bne	.L_63fd8
	mov	r0, #10
	b	.L_63fe6
.L_63fd8:
	cmp	r0, #10
	bne	.L_63fe0
	mov	r0, #8
	b	.L_63fe6
.L_63fe0:
	cmp	r0, #8
	bne	.L_63fe8
.L_63fe4:
	mov	r0, #9
.L_63fe6:
	strb	r0, [r1, #0]
.L_63fe8:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8063FF4
func_8063FF4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r5, .L_64018
	ldr	r0, .L_6401c
	ldrb	r1, [r0, #0]
	ldrb	r0, [r5, #29]
	cmp	r0, r1
	beq	.L_64020
	strb	r1, [r5, #29]
	bl	func_80747D8
	mov	r0, #17
	strb	r0, [r5, #28]
	b	.L_640c0
	.align	2, 0
.L_64018:
	.4byte	gCurrentSprite
.L_6401c:
	.4byte	gUnk_3000A5B
.L_64020:
	add	r7, r5, #0
	add	r7, #42	@ 0x2a
	ldrb	r2, [r7, #0]
	ldr	r3, .L_64080
	lsr	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r6, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_64084
	cmp	r1, r0
	bne	.L_64042
	mov	r0, #1
	mov	r8, r0
	mov	r2, #0
	ldrh	r6, [r3, #0]
.L_64042:
	ldr	r1, .L_64088
	lsr	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	add	r1, r2, #1
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	strb	r1, [r7, #0]
	cmp	r2, #48	@ 0x30
	bne	.L_6405e
	mov	r0, #123	@ 0x7b
	bl	m4aSongNumStart
.L_6405e:
	ldrh	r0, [r5, #8]
	add	r0, r0, r4
	strh	r0, [r5, #8]
	add	r0, r6, #0
	mov	r1, #128	@ 0x80
	bl	func_8063304
	mov	r4, r8
	cmp	r4, #0
	beq	.L_640c0
	bl	func_8063058
	cmp	r0, #0
	beq	.L_6408c
	mov	r0, #48	@ 0x30
	strb	r0, [r7, #0]
	b	.L_640c0
.L_64080:
	.4byte	sUnk_83F07D4
.L_64084:
	.4byte	0x7FFF
.L_64088:
	.4byte	sUnk_83F0886
.L_6408c:
	ldr	r0, .L_640a0
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bhi	.L_640c0
	ldr	r1, .L_640a4
	ldrb	r0, [r1, #0]
	cmp	r0, #9
	bne	.L_640a8
	mov	r0, #11
	b	.L_640be
.L_640a0:
	.4byte	gUnk_3000A5A
.L_640a4:
	.4byte	gBossInteractionState
.L_640a8:
	cmp	r0, #11
	bne	.L_640b0
	mov	r0, #10
	b	.L_640be
.L_640b0:
	cmp	r0, #10
	bne	.L_640b8
	mov	r0, #8
	b	.L_640be
.L_640b8:
	cmp	r0, #8
	bne	.L_640c0
	mov	r0, #9
.L_640be:
	strb	r0, [r1, #0]
.L_640c0:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80640CC
func_80640CC:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_640f0
	bl	func_8062B04
	ldr	r6, .L_640f4
	ldrh	r2, [r6, #8]
	lsr	r1, r2, #2
	ldr	r0, .L_640f8
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #10
	bls	.L_640fc
	sub	r0, r2, #2
	strh	r0, [r6, #8]
	b	.L_6414c
.L_640f0:
	.4byte	sUnk_83F037C
.L_640f4:
	.4byte	gCurrentSprite
.L_640f8:
	.4byte	gBg1YPosition
.L_640fc:
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	sub	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_6414c
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	ldr	r2, .L_64154
	mov	r1, #44	@ 0x2c
	mul	r1, r0
	add	r0, r1, r2
	strb	r5, [r0, #22]
	mov	r4, #0
	strh	r5, [r0, #20]
	add	r2, #4
	add	r1, r1, r2
	ldr	r0, .L_64158
	str	r0, [r1, #0]
	ldr	r0, .L_6415c
	strb	r4, [r0, #0]
	ldr	r0, .L_64160
	strb	r4, [r0, #0]
	ldr	r0, .L_64164
	bl	func_8062B04
	mov	r0, #22
	strb	r0, [r6, #28]
	strb	r4, [r7, #0]
	add	r1, r6, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	add	r0, r6, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
.L_6414c:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_64154:
	.4byte	gSpriteData
.L_64158:
	.4byte	sUnk_83EF374
.L_6415c:
	.4byte	gUnk_3000A5F
.L_64160:
	.4byte	gUnk_3000A60
.L_64164:
	.4byte	sUnk_83F0414


thumb_func_start func_8064168
func_8064168:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_6417c
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bne	.L_64184
	ldr	r0, .L_64180
	bl	func_8062B04
	b	.L_6418a
	.align	2, 0
.L_6417c:
	.4byte	gCurrentSprite
.L_64180:
	.4byte	sUnk_83F03D4
.L_64184:
	ldr	r0, .L_641f4
	bl	func_8062B04
.L_6418a:
	ldr	r3, .L_641f8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_641fc
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_64200
	cmp	r1, r0
	bne	.L_641aa
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_641aa:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #31
	bhi	.L_641c4
	add	r0, #1
	strb	r0, [r1, #0]
.L_641c4:
	ldrb	r0, [r1, #0]
	lsr	r4, r0, #2
	ldr	r2, .L_64204
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_64208
	ldrh	r1, [r3, #10]
	add	r1, r4, r1
	strh	r1, [r3, #10]
	ldrh	r0, [r3, #8]
	add	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_6421a
.L_641f4:
	.4byte	sUnk_83F0414
.L_641f8:
	.4byte	gCurrentSprite
.L_641fc:
	.4byte	sUnk_83F0738
.L_64200:
	.4byte	0x7FFF
.L_64204:
	.4byte	gSpriteData
.L_64208:
	ldrh	r1, [r3, #10]
	sub	r1, r1, r4
	strh	r1, [r3, #10]
	ldrh	r0, [r3, #8]
	sub	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_6421a:
	ldr	r0, .L_64258
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	ldr	r3, .L_6425c
	cmp	r0, #0
	beq	.L_64246
	ldr	r2, .L_64260
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	mov	r2, #64	@ 0x40
	eor	r0, r2
	strh	r0, [r1, #0]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
.L_64246:
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L_64264
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_642c0
.L_64258:
	.4byte	gUnk_3000A51
.L_6425c:
	.4byte	gCurrentSprite
.L_64260:
	.4byte	gSpriteData
.L_64264:
	ldr	r0, .L_642a0
	ldrh	r1, [r0, #18]
	ldrh	r2, [r3, #10]
	add	r0, r1, #0
	add	r0, #32
	cmp	r0, r2
	ble	.L_642c0
	sub	r0, #64	@ 0x40
	cmp	r0, r2
	bge	.L_642c0
	mov	r0, #28
	strb	r0, [r3, #28]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	ldr	r0, .L_642a4
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_642c0
	ldr	r0, .L_642a8
	strb	r1, [r0, #0]
	ldr	r0, .L_642ac
	strb	r1, [r0, #0]
	ldrb	r0, [r3, #29]
	cmp	r0, #2
	bne	.L_642b4
	ldr	r0, .L_642b0
	bl	func_8062B04
	b	.L_642ba
.L_642a0:
	.4byte	gWarioData
.L_642a4:
	.4byte	gUnk_3000A5C
.L_642a8:
	.4byte	gUnk_3000A5F
.L_642ac:
	.4byte	gUnk_3000A60
.L_642b0:
	.4byte	sUnk_83F03D4
.L_642b4:
	ldr	r0, .L_642c8
	bl	func_8062B04
.L_642ba:
	mov	r0, #189	@ 0xbd
	bl	m4aSongNumStart
.L_642c0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_642c8:
	.4byte	sUnk_83F03BC


thumb_func_start func_80642CC
func_80642CC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_642e0
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bne	.L_642e8
	ldr	r0, .L_642e4
	bl	func_8062B04
	b	.L_642ee
	.align	2, 0
.L_642e0:
	.4byte	gCurrentSprite
.L_642e4:
	.4byte	sUnk_83F03D4
.L_642e8:
	ldr	r0, .L_6433c
	bl	func_8062B04
.L_642ee:
	ldr	r4, .L_64340
	mov	r1, #144	@ 0x90
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r2, [r4, #8]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_64344
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_64374
	lsl	r0, r5, #16
	ldrh	r1, [r4, #10]
	ldr	r3, .L_64348
	mov	r2, #4
	strb	r2, [r3, #0]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #11
	add	r0, r0, r6
	lsr	r0, r0, #16
	bl	func_806D5C0
	ldr	r1, .L_6434c
	add	r0, r5, r1
	strh	r0, [r4, #8]
	mov	r0, #24
	strb	r0, [r4, #28]
	ldrb	r0, [r4, #29]
	cmp	r0, #2
	bne	.L_64350
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	b	.L_64362
.L_6433c:
	.4byte	sUnk_83F03BC
.L_64340:
	.4byte	gCurrentSprite
.L_64344:
	.4byte	gSpriteCollisionResult
.L_64348:
	.4byte	gUnk_3000028
.L_6434c:
	.4byte	0xFFFFFEE0
.L_64350:
	cmp	r0, #3
	bne	.L_6435c
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #20
	b	.L_64362
.L_6435c:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
.L_64362:
	strb	r0, [r1, #0]
	mov	r0, #48	@ 0x30
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	mov	r0, #62	@ 0x3e
	bl	m4aSongNumStart
	b	.L_643b0
.L_64374:
	mov	r2, #42	@ 0x2a
	add	r2, r2, r4
	mov	ip, r2
	ldrb	r2, [r2, #0]
	ldr	r5, .L_6439c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_643a0
	cmp	r1, r0
	bne	.L_643a4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_643ae
.L_6439c:
	.4byte	sUnk_83F04A0
.L_643a0:
	.4byte	0x7FFF
.L_643a4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_643ae:
	strh	r0, [r4, #8]
.L_643b0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80643B8
func_80643B8:
	push	{lr}
	ldr	r0, .L_643cc
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bne	.L_643d4
	ldr	r0, .L_643d0
	bl	func_8062B04
	b	.L_643da
	.align	2, 0
.L_643cc:
	.4byte	gCurrentSprite
.L_643d0:
	.4byte	sUnk_83F03D4
.L_643d4:
	ldr	r0, .L_64410
	bl	func_8062B04
.L_643da:
	ldr	r2, .L_64414
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_6442e
	mov	r0, #26
	strb	r0, [r2, #28]
	ldr	r0, .L_64418
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_6442e
	ldr	r0, .L_6441c
	strb	r1, [r0, #0]
	ldr	r0, .L_64420
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_64428
	ldr	r0, .L_64424
	bl	func_8062B04
	b	.L_6442e
	.align	2, 0
.L_64410:
	.4byte	sUnk_83F03BC
.L_64414:
	.4byte	gCurrentSprite
.L_64418:
	.4byte	gUnk_3000A5C
.L_6441c:
	.4byte	gUnk_3000A5F
.L_64420:
	.4byte	gUnk_3000A60
.L_64424:
	.4byte	sUnk_83F03D4
.L_64428:
	ldr	r0, .L_64434
	bl	func_8062B04
.L_6442e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_64434:
	.4byte	sUnk_83F0388


thumb_func_start func_8064438
func_8064438:
	push	{lr}
	ldr	r2, .L_64474
	mov	r1, #0
	mov	r0, #22
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #1
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldr	r0, .L_64478
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_6448e
	ldr	r0, .L_6447c
	strb	r1, [r0, #0]
	ldr	r0, .L_64480
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_64488
	ldr	r0, .L_64484
	bl	func_8062B04
	b	.L_6448e
.L_64474:
	.4byte	gCurrentSprite
.L_64478:
	.4byte	gUnk_3000A5C
.L_6447c:
	.4byte	gUnk_3000A5F
.L_64480:
	.4byte	gUnk_3000A60
.L_64484:
	.4byte	sUnk_83F03D4
.L_64488:
	ldr	r0, .L_64494
	bl	func_8062B04
.L_6448e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_64494:
	.4byte	sUnk_83F0414


thumb_func_start func_8064498
func_8064498:
	push	{lr}
	ldr	r0, .L_644ac
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bne	.L_644b4
	ldr	r0, .L_644b0
	bl	func_8062B04
	b	.L_644ba
	.align	2, 0
.L_644ac:
	.4byte	gCurrentSprite
.L_644b0:
	.4byte	sUnk_83F03D4
.L_644b4:
	ldr	r0, .L_644d8
	bl	func_8062B04
.L_644ba:
	ldr	r3, .L_644dc
	ldrh	r2, [r3, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_644e0
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bls	.L_644e4
	sub	r0, r2, #4
	strh	r0, [r3, #8]
	b	.L_644e8
	.align	2, 0
.L_644d8:
	.4byte	sUnk_83F0388
.L_644dc:
	.4byte	gCurrentSprite
.L_644e0:
	.4byte	gBg1YPosition
.L_644e4:
	bl	func_8064438
.L_644e8:
	pop	{r0}
	bx	r0


thumb_func_start func_80644EC
func_80644EC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_64558
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r6, #0
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r0, .L_6455c
	strb	r6, [r0, #0]
	ldr	r0, .L_64560
	strb	r6, [r0, #0]
	ldr	r1, .L_64564
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	ldrb	r1, [r4, #29]
	lsl	r0, r2, #24
	lsr	r0, r0, #24
	cmp	r1, r0
	beq	.L_6451a
	strb	r2, [r4, #29]
	bl	func_80747D8
.L_6451a:
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	ldr	r4, .L_64568
	mov	r5, #44	@ 0x2c
	add	r2, r0, #0
	mul	r2, r5
	add	r0, r4, #4
	add	r0, r2, r0
	ldr	r1, .L_6456c
	str	r1, [r0, #0]
	add	r2, r2, r4
	strb	r6, [r2, #22]
	strh	r6, [r2, #20]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	add	r1, r0, #0
	mul	r1, r5
	add	r1, r1, r4
	ldrh	r2, [r1, #0]
	mov	r0, #4
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #1
	bl	VoiceSetPlay
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_64558:
	.4byte	gCurrentSprite
.L_6455c:
	.4byte	gUnk_3000A5F
.L_64560:
	.4byte	gUnk_3000A60
.L_64564:
	.4byte	gUnk_3000A5B
.L_64568:
	.4byte	gSpriteData
.L_6456c:
	.4byte	sUnk_83EFF08


thumb_func_start func_8064570
func_8064570:
	push	{lr}
	ldr	r0, .L_64594
	mov	r1, #32
	strb	r1, [r0, #28]
	ldr	r2, .L_64598
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_80644EC
	pop	{r0}
	bx	r0
.L_64594:
	.4byte	gCurrentSprite
.L_64598:
	.4byte	gSpriteData


thumb_func_start func_806459C
func_806459C:
	push	{lr}
	ldr	r0, .L_645c0
	mov	r1, #34	@ 0x22
	strb	r1, [r0, #28]
	ldr	r2, .L_645c4
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	ldr	r0, .L_645c8
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_80644EC
	pop	{r0}
	bx	r0
.L_645c0:
	.4byte	gCurrentSprite
.L_645c4:
	.4byte	gSpriteData
.L_645c8:
	.4byte	0xFFBF


thumb_func_start func_80645CC
func_80645CC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_6462c
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r7, [r0, #0]
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_64630
	bl	func_8062B04
	ldrh	r2, [r4, #8]
	lsr	r1, r2, #2
	ldr	r0, .L_64634
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #32
	bls	.L_645fc
	sub	r0, r2, #4
	strh	r0, [r4, #8]
.L_645fc:
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	lsr	r0, r0, #1
	mov	r1, #64	@ 0x40
	bl	func_8063304
	ldrb	r0, [r6, #0]
	sub	r1, r0, #1
	strb	r1, [r6, #0]
	lsl	r0, r1, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	beq	.L_646b4
	add	r0, r3, #0
	cmp	r0, #26
	bne	.L_6463e
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bne	.L_64638
	mov	r0, #121	@ 0x79
	bl	m4aSongNumStart
	b	.L_6463e
.L_6462c:
	.4byte	gCurrentSprite
.L_64630:
	.4byte	sUnk_83F03C8
.L_64634:
	.4byte	gBg1YPosition
.L_64638:
	mov	r0, #17
	bl	VoiceSetPlay
.L_6463e:
	ldr	r4, .L_6467c
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	beq	.L_64650
	b	.L_6476a
.L_64650:
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	beq	.L_6468c
	mov	r0, #4
	strb	r0, [r4, #27]
	ldr	r1, .L_64680
	mov	r0, #44	@ 0x2c
	add	r2, r7, #0
	mul	r2, r0
	add	r3, r2, r1
	mov	r0, #3
	strb	r0, [r3, #27]
	ldr	r0, .L_64684
	str	r0, [r4, #4]
	add	r1, #4
	add	r2, r2, r1
	ldr	r0, .L_64688
	str	r0, [r2, #0]
	b	.L_6476a
.L_6467c:
	.4byte	gCurrentSprite
.L_64680:
	.4byte	gSpriteData
.L_64684:
	.4byte	sUnk_83EED64
.L_64688:
	.4byte	sUnk_83EFF40
.L_6468c:
	strb	r3, [r4, #27]
	ldr	r1, .L_646a8
	mov	r0, #44	@ 0x2c
	add	r2, r7, #0
	mul	r2, r0
	add	r0, r2, r1
	strb	r3, [r0, #27]
	ldr	r0, .L_646ac
	str	r0, [r4, #4]
	add	r1, #4
	add	r2, r2, r1
	ldr	r0, .L_646b0
	str	r0, [r2, #0]
	b	.L_6476a
.L_646a8:
	.4byte	gSpriteData
.L_646ac:
	.4byte	sUnk_83EED74
.L_646b0:
	.4byte	sUnk_83EFF08
.L_646b4:
	strb	r3, [r4, #27]
	ldr	r5, .L_646f4
	mov	r0, #44	@ 0x2c
	mov	r8, r0
	mov	r1, r8
	mul	r1, r7
	add	r2, r1, r5
	strb	r3, [r2, #27]
	ldr	r0, .L_646f8
	str	r0, [r4, #4]
	add	r0, r5, #4
	add	r1, r1, r0
	ldr	r0, .L_646fc
	str	r0, [r1, #0]
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bne	.L_6470c
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r6, #0]
	ldr	r1, .L_64700
	mov	r0, #13
	strb	r0, [r1, #0]
	ldr	r1, .L_64704
	mov	r0, #2
	strb	r0, [r1, #2]
	ldr	r0, .L_64708
	bl	m4aSongNumStart
	b	.L_6476a
	.align	2, 0
.L_646f4:
	.4byte	gSpriteData
.L_646f8:
	.4byte	sUnk_83EED74
.L_646fc:
	.4byte	sUnk_83EFF08
.L_64700:
	.4byte	gBossInteractionState
.L_64704:
	.4byte	gSwitchStates
.L_64708:
	.4byte	0x2B1
.L_6470c:
	ldr	r0, .L_6474c
	str	r0, [r1, #0]
	strb	r3, [r2, #22]
	mov	r6, #0
	strh	r3, [r2, #20]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	mov	r1, r8
	mul	r1, r0
	add	r1, r1, r5
	ldrh	r2, [r1, #0]
	ldr	r0, .L_64750
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #26
	strb	r0, [r4, #28]
	ldr	r0, .L_64754
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6476a
	ldr	r0, .L_64758
	strb	r6, [r0, #0]
	ldr	r0, .L_6475c
	strb	r6, [r0, #0]
	ldrb	r0, [r4, #29]
	cmp	r0, #2
	bne	.L_64764
	ldr	r0, .L_64760
	bl	func_8062B04
	b	.L_6476a
.L_6474c:
	.4byte	sUnk_83EF520
.L_64750:
	.4byte	0xFFFB
.L_64754:
	.4byte	gUnk_3000A5C
.L_64758:
	.4byte	gUnk_3000A5F
.L_6475c:
	.4byte	gUnk_3000A60
.L_64760:
	.4byte	sUnk_83F03D4
.L_64764:
	ldr	r0, .L_64774
	bl	func_8062B04
.L_6476a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_64774:
	.4byte	sUnk_83F0388


thumb_func_start func_8064778
func_8064778:
	push	{lr}
	ldr	r1, .L_647b0
	mov	r2, #0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
	ldr	r0, .L_647b4
	strb	r2, [r0, #0]
	ldr	r0, .L_647b8
	strb	r2, [r0, #0]
	ldr	r2, .L_647bc
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #189	@ 0xbd
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_647b0:
	.4byte	gCurrentSprite
.L_647b4:
	.4byte	gUnk_3000A5F
.L_647b8:
	.4byte	gUnk_3000A60
.L_647bc:
	.4byte	gSpriteData


thumb_func_start func_80647C0
func_80647C0:
	push	{lr}
	ldr	r1, .L_647f8
	mov	r2, #0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
	ldr	r0, .L_647fc
	strb	r2, [r0, #0]
	ldr	r0, .L_64800
	strb	r2, [r0, #0]
	ldr	r2, .L_64804
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r2, [r1, #0]
	ldr	r0, .L_64808
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #189	@ 0xbd
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_647f8:
	.4byte	gCurrentSprite
.L_647fc:
	.4byte	gUnk_3000A5F
.L_64800:
	.4byte	gUnk_3000A60
.L_64804:
	.4byte	gSpriteData
.L_64808:
	.4byte	0xFFBF


thumb_func_start func_806480C
func_806480C:
	push	{r4, lr}
	ldr	r0, .L_64820
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bne	.L_64828
	ldr	r0, .L_64824
	bl	func_8062B04
	b	.L_6482e
	.align	2, 0
.L_64820:
	.4byte	gCurrentSprite
.L_64824:
	.4byte	sUnk_83F03D4
.L_64828:
	ldr	r0, .L_64860
	bl	func_8062B04
.L_6482e:
	mov	r0, #6
	mov	r1, #64	@ 0x40
	bl	func_8063304
	ldr	r4, .L_64864
	add	r3, r4, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_64846
	sub	r0, #1
	strb	r0, [r3, #0]
.L_64846:
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_64868
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bls	.L_6486c
	sub	r0, r2, #4
	strh	r0, [r4, #8]
	b	.L_64876
.L_64860:
	.4byte	sUnk_83F03BC
.L_64864:
	.4byte	gCurrentSprite
.L_64868:
	.4byte	gBg1YPosition
.L_6486c:
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_64876
	bl	func_8064438
.L_64876:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_806487C
func_806487C:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #4
	ldr	r4, .L_648ac
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_648b0
	bl	func_8062B04
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	cmp	r0, #57	@ 0x39
	bls	.L_648a0
	b	.L_64adc
.L_648a0:
	lsl	r0, r0, #2
	ldr	r1, .L_648b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_648ac:
	.4byte	gCurrentSprite
.L_648b0:
	.4byte	sUnk_83F03C8
.L_648b4:
	.4byte	.L_648b8
.L_648b8:
	.4byte	.L_64a50
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64a30
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64a1c
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64a0c
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_649fc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_649e8
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_649c0
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_64adc
	.4byte	.L_649a0
.L_649a0:
	ldr	r0, .L_649bc
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #181	@ 0xb5
	bl	m4aSongNumStart
	b	.L_64adc
	.align	2, 0
.L_649bc:
	.4byte	gCurrentSprite
.L_649c0:
	ldr	r4, .L_649e4
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_64a42
.L_649e4:
	.4byte	gCurrentSprite
.L_649e8:
	ldr	r0, .L_649f8
	ldrh	r3, [r0, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_64a42
	.align	2, 0
.L_649f8:
	.4byte	gCurrentSprite
.L_649fc:
	ldr	r0, .L_64a08
	ldrh	r3, [r0, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r0, #10]
	b	.L_64a3e
	.align	2, 0
.L_64a08:
	.4byte	gCurrentSprite
.L_64a0c:
	ldr	r0, .L_64a18
	ldrh	r3, [r0, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r0, #10]
	b	.L_64a3e
	.align	2, 0
.L_64a18:
	.4byte	gCurrentSprite
.L_64a1c:
	ldr	r0, .L_64a2c
	ldrh	r3, [r0, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r3, r3, r1
	ldrh	r0, [r0, #10]
	add	r0, #64	@ 0x40
	b	.L_64a3e
.L_64a2c:
	.4byte	gCurrentSprite
.L_64a30:
	ldr	r0, .L_64a4c
	ldrh	r3, [r0, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r3, r3, r1
	ldrh	r0, [r0, #10]
	sub	r0, #92	@ 0x5c
.L_64a3e:
	str	r0, [sp, #0]
	mov	r0, #10
.L_64a42:
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_64adc
.L_64a4c:
	.4byte	gCurrentSprite
.L_64a50:
	ldr	r4, .L_64ae8
	mov	r0, #0
	mov	r8, r0
	mov	r0, #109	@ 0x6d
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r6, .L_64aec
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r6
	mov	r1, r8
	strh	r1, [r0, #0]
	mov	r0, #238	@ 0xee
	bl	SpriteUtilFindSpriteSlot
	mul	r0, r5
	add	r0, r0, r6
	mov	r1, r8
	strh	r1, [r0, #0]
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #1
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #2
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #240	@ 0xf0
	mov	r1, #3
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	add	r3, #56	@ 0x38
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #247	@ 0xf7
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_64adc:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_64ae8:
	.4byte	gCurrentSprite
.L_64aec:
	.4byte	gSpriteData


thumb_func_start func_8064AF0
func_8064AF0:
	push	{r4, r5, lr}
	ldr	r4, .L_64b24
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_64b28
	ldrb	r1, [r0, #0]
	ldrb	r0, [r4, #29]
	cmp	r0, r1
	beq	.L_64b12
	strb	r1, [r4, #29]
	bl	func_80747D8
	ldr	r1, .L_64b2c
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
.L_64b12:
	ldr	r1, .L_64b30
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #159	@ 0x9f
	bgt	.L_64b34
	add	r0, r2, #1
	strh	r0, [r1, #0]
	b	.L_64ba2
.L_64b24:
	.4byte	gCurrentSprite
.L_64b28:
	.4byte	gUnk_3000A5B
.L_64b2c:
	.4byte	gTimerState
.L_64b30:
	.4byte	gUnk_3000A64
.L_64b34:
	mov	r5, #0
	ldrh	r2, [r4, #8]
	lsr	r1, r2, #2
	ldr	r0, .L_64b60
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_64b64
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r3, #32
	bls	.L_64b68
	sub	r0, r2, #2
	strh	r0, [r4, #8]
	b	.L_64b74
.L_64b60:
	.4byte	gBg1YPosition
.L_64b64:
	.4byte	gBg1XPosition
.L_64b68:
	cmp	r3, #29
	bhi	.L_64b72
	add	r0, r2, #2
	strh	r0, [r4, #8]
	b	.L_64b74
.L_64b72:
	mov	r5, #1
.L_64b74:
	cmp	r1, #122	@ 0x7a
	bls	.L_64b88
	ldr	r1, .L_64b84
	ldrh	r0, [r1, #10]
	sub	r0, #2
	strh	r0, [r1, #10]
	b	.L_64b9e
	.align	2, 0
.L_64b84:
	.4byte	gCurrentSprite
.L_64b88:
	cmp	r1, #119	@ 0x77
	bhi	.L_64b9c
	ldr	r1, .L_64b98
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	b	.L_64b9e
	.align	2, 0
.L_64b98:
	.4byte	gCurrentSprite
.L_64b9c:
	add	r5, #1
.L_64b9e:
	cmp	r5, #2
	bne	.L_64bb4
.L_64ba2:
	ldr	r1, .L_64bbc
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	bne	.L_64bb4
	mov	r0, #122	@ 0x7a
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
.L_64bb4:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_64bbc:
	.4byte	gCurrentSprite


thumb_func_start func_8064BC0
func_8064BC0:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r1, .L_64be4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_64be8
	ldrb	r3, [r0, #0]
	add	r2, r1, #0
	add	r4, r0, #0
	cmp	r3, #18
	bls	.L_64bd8
	b	.L_65284
.L_64bd8:
	lsl	r0, r3, #2
	ldr	r1, .L_64bec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_64be4:
	.4byte	gCurrentSprite
.L_64be8:
	.4byte	gBossDefeatState
.L_64bec:
	.4byte	.L_64bf0
.L_64bf0:
	.4byte	.L_64c3c
	.4byte	.L_64c68
	.4byte	.L_64c94
	.4byte	.L_64cc0
	.4byte	.L_64cec
	.4byte	.L_64d18
	.4byte	.L_64d44
	.4byte	.L_64d6c
	.4byte	.L_64d94
	.4byte	.L_64dbc
	.4byte	.L_64de4
	.4byte	.L_64e0c
	.4byte	.L_64e46
	.4byte	.L_64e8c
	.4byte	.L_64eb2
	.4byte	.L_64f18
	.4byte	.L_64f74
	.4byte	.L_6501c
	.4byte	.L_65240
.L_64c3c:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64c4e
	b	.L_65284
.L_64c4e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64c64
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64c5e
	b	.L_64e40
.L_64c5e:
	mov	r0, #0
	b	.L_64e2e
	.align	2, 0
.L_64c64:
	.4byte	gCollectedNEJewelPiece
.L_64c68:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64c7a
	b	.L_65284
.L_64c7a:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64c90
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64c8a
	b	.L_64e40
.L_64c8a:
	mov	r0, #3
	b	.L_64e2e
	.align	2, 0
.L_64c90:
	.4byte	gCollectedNWJewelPiece
.L_64c94:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64ca6
	b	.L_65284
.L_64ca6:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64cbc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64cb6
	b	.L_64e40
.L_64cb6:
	mov	r0, #6
	b	.L_64e2e
	.align	2, 0
.L_64cbc:
	.4byte	gHasBossTreasure7
.L_64cc0:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64cd2
	b	.L_65284
.L_64cd2:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64ce8
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64ce2
	b	.L_64e40
.L_64ce2:
	mov	r0, #9
	b	.L_64e2e
	.align	2, 0
.L_64ce8:
	.4byte	gHasBossTreasure10
.L_64cec:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64cfe
	b	.L_65284
.L_64cfe:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64d14
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64d0e
	b	.L_64e40
.L_64d0e:
	mov	r0, #1
	b	.L_64e2e
	.align	2, 0
.L_64d14:
	.4byte	gCollectedSEJewelPiece
.L_64d18:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64d2a
	b	.L_65284
.L_64d2a:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64d40
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_64d3a
	b	.L_64e40
.L_64d3a:
	mov	r0, #4
	b	.L_64e2e
	.align	2, 0
.L_64d40:
	.4byte	gHasBossTreasure5
.L_64d44:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64d56
	b	.L_65284
.L_64d56:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64d68
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #7
	b	.L_64e2e
.L_64d68:
	.4byte	gHasBossTreasure8
.L_64d6c:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64d7e
	b	.L_65284
.L_64d7e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64d90
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #10
	b	.L_64e2e
.L_64d90:
	.4byte	gHasBossTreasure11
.L_64d94:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64da6
	b	.L_65284
.L_64da6:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64db8
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #2
	b	.L_64e2e
.L_64db8:
	.4byte	gCollectedSWJewelPiece
.L_64dbc:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64dce
	b	.L_65284
.L_64dce:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64de0
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #5
	b	.L_64e2e
.L_64de0:
	.4byte	gHasBossTreasure6
.L_64de4:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64df6
	b	.L_65284
.L_64df6:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64e08
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #8
	b	.L_64e2e
.L_64e08:
	.4byte	gHasBossTreasure9
.L_64e0c:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64e1e
	b	.L_65284
.L_64e1e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r4, .L_64e3c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_64e40
	mov	r0, #11
.L_64e2e:
	bl	func_806F650
	mov	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #80	@ 0x50
	strb	r0, [r5, #0]
	b	.L_65284
.L_64e3c:
	.4byte	gHasBossTreasure12
.L_64e40:
	mov	r0, #1
	strb	r0, [r5, #0]
	b	.L_65284
.L_64e46:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_64e54
	sub	r0, #1
	b	.L_65282
.L_64e54:
	ldr	r2, .L_64e84
	ldrb	r0, [r2, #1]
	cmp	r0, #65	@ 0x41
	beq	.L_64e5e
	b	.L_65284
.L_64e5e:
	ldrb	r0, [r2, #31]
	cmp	r0, #21
	bhi	.L_64e66
	b	.L_65284
.L_64e66:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #0]
	ldr	r1, .L_64e88
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #66	@ 0x42
	bl	_call_via_r1
	b	.L_65284
	.align	2, 0
.L_64e84:
	.4byte	gWarioData
.L_64e88:
	.4byte	sWarioPoseRequestFuncTable
.L_64e8c:
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_64ea0
	b	.L_65284
.L_64ea0:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #1
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	b	.L_65284
.L_64eb2:
	add	r4, r2, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_64ec4
	b	.L_65284
.L_64ec4:
	ldr	r1, .L_64ee0
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	bl	SpriteUtilFindBossTreasureChest
	add	r2, r0, #0
	cmp	r2, #255	@ 0xff
	bne	.L_64ee4
	mov	r0, #1
	strb	r0, [r4, #0]
	b	.L_64ef4
.L_64ee0:
	.4byte	sUnk_83F096A
.L_64ee4:
	mov	r0, #60	@ 0x3c
	strb	r0, [r4, #0]
	ldr	r1, .L_64f08
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	mov	r1, #110	@ 0x6e
	strb	r1, [r0, #28]
.L_64ef4:
	ldr	r0, .L_64f0c
	add	r1, r0, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #10
	bls	.L_64f14
	ldr	r1, .L_64f10
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_65282
.L_64f08:
	.4byte	gSpriteData
.L_64f0c:
	.4byte	gCurrentSprite
.L_64f10:
	.4byte	gBossDefeatState
.L_64f14:
	add	r0, #1
	b	.L_65282
.L_64f18:
	add	r4, r2, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_64f28
	sub	r0, #1
	strb	r0, [r4, #0]
	b	.L_65284
.L_64f28:
	ldrh	r3, [r2, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_64f44
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #99	@ 0x63
	bhi	.L_64f48
	add	r0, r3, #2
	strh	r0, [r2, #8]
	b	.L_65284
	.align	2, 0
.L_64f44:
	.4byte	gBg1YPosition
.L_64f48:
	ldr	r1, .L_64f68
	ldr	r0, .L_64f6c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #67	@ 0x43
	bl	_call_via_r1
	mov	r0, #160	@ 0xa0
	strb	r0, [r4, #0]
	ldr	r1, .L_64f70
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_65282
	.align	2, 0
.L_64f68:
	.4byte	sWarioPoseRequestFuncTable
.L_64f6c:
	.4byte	gWarioData
.L_64f70:
	.4byte	gBossDefeatState
.L_64f74:
	add	r4, r2, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	sub	r1, r0, #1
	strb	r1, [r4, #0]
	mov	r5, #255	@ 0xff
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_64f98
	lsr	r0, r0, #24
	cmp	r0, #32
	beq	.L_64f8e
	b	.L_65284
.L_64f8e:
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	b	.L_65284
.L_64f98:
	ldr	r1, .L_64ff0
	ldr	r0, .L_64ff4
	str	r0, [r1, #0]
	ldr	r0, .L_64ff8
	str	r0, [r1, #4]
	ldr	r0, .L_64ffc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_65000
	str	r0, [r1, #0]
	ldr	r0, .L_65004
	str	r0, [r1, #4]
	ldr	r0, .L_65008
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r1, .L_6500c
	ldr	r0, .L_65010
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #68	@ 0x44
	bl	_call_via_r1
	ldrb	r0, [r4, #0]
	orr	r0, r5
	strb	r0, [r4, #0]
	ldr	r1, .L_65014
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	mov	r0, #200	@ 0xc8
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	ldr	r0, .L_65018
	bl	m4aSongNumStart
	b	.L_65284
	.align	2, 0
.L_64ff0:
	.4byte	0x40000D4
.L_64ff4:
	.4byte	sUnk_83B0CF0
.L_64ff8:
	.4byte	0x6017800
.L_64ffc:
	.4byte	0x80000400
.L_65000:
	.4byte	sUnk_83B2C70
.L_65004:
	.4byte	0x5000380
.L_65008:
	.4byte	0x80000010
.L_6500c:
	.4byte	sWarioPoseRequestFuncTable
.L_65010:
	.4byte	gWarioData
.L_65014:
	.4byte	gBossDefeatState
.L_65018:
	.4byte	0x1A7
.L_6501c:
	add	r5, r2, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r1, r0, #1
	strb	r1, [r5, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	bne	.L_6502e
	b	.L_65224
.L_6502e:
	mov	r0, #31
	and	r1, r0
	cmp	r1, #0
	bne	.L_6503e
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
.L_6503e:
	ldrb	r0, [r5, #0]
	sub	r0, #160	@ 0xa0
	cmp	r0, #75	@ 0x4b
	bls	.L_65048
	b	.L_65284
.L_65048:
	lsl	r0, r0, #2
	ldr	r1, .L_65054
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_65054:
	.4byte	.L_65058
.L_65058:
	.4byte	.L_651fe
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_651f0
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_651e2
	.4byte	.L_65284
	.4byte	.L_651d6
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_651c6
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_651b6
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_651a8
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65198
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65284
	.4byte	.L_65188
.L_65188:
	mov	r0, #220	@ 0xdc
	lsl	r0, r0, #2
	mov	r1, #180	@ 0xb4
	lsl	r1, r1, #1
	mov	r2, #87	@ 0x57
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_65198:
	mov	r0, #205	@ 0xcd
	lsl	r0, r0, #2
	mov	r1, #180	@ 0xb4
	lsl	r1, r1, #2
	mov	r2, #89	@ 0x59
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651a8:
	mov	r0, #210	@ 0xd2
	lsl	r0, r0, #2
	mov	r1, #240	@ 0xf0
	mov	r2, #83	@ 0x53
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651b6:
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #2
	mov	r1, #155	@ 0x9b
	lsl	r1, r1, #2
	mov	r2, #85	@ 0x55
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651c6:
	mov	r0, #215	@ 0xd7
	lsl	r0, r0, #2
	mov	r1, #135	@ 0x87
	lsl	r1, r1, #2
	mov	r2, #88	@ 0x58
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651d6:
	mov	r0, #0
	mov	r1, #120	@ 0x78
	mov	r2, #82	@ 0x52
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651e2:
	mov	r1, #220	@ 0xdc
	lsl	r1, r1, #1
	mov	r0, #0
	mov	r2, #84	@ 0x54
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651f0:
	mov	r1, #210	@ 0xd2
	lsl	r1, r1, #2
	mov	r0, #0
	mov	r2, #86	@ 0x56
	bl	SpriteSpawnSecondary
	b	.L_65284
.L_651fe:
	ldr	r0, .L_6521c
	ldrh	r3, [r0, #8]
	ldr	r1, .L_65220
	add	r3, r3, r1
	ldrh	r0, [r0, #10]
	add	r1, #90	@ 0x5a
	add	r0, r0, r1
	str	r0, [sp, #0]
	mov	r0, #128	@ 0x80
	mov	r1, #0
	mov	r2, #7
	bl	SpriteSpawnAsChild
	b	.L_65284
	.align	2, 0
.L_6521c:
	.4byte	gCurrentSprite
.L_65220:
	.4byte	0xFFFFFE3E
.L_65224:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #8
	mov	r1, #2
	mov	r2, #14
	bl	func_8070964
	mov	r0, #8
	mov	r1, #0
	mov	r2, #16
	bl	func_8070A84
	b	.L_65284
.L_65240:
	add	r4, r2, #0
	add	r4, #39	@ 0x27
	ldrb	r1, [r4, #0]
	mov	r0, #31
	and	r0, r1
	cmp	r0, #0
	bne	.L_65256
	mov	r0, #32
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
.L_65256:
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	ldr	r0, .L_6528c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_65284
	ldr	r0, .L_65290
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_65284
	ldr	r1, .L_65294
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_65298
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_6529c
	strb	r2, [r0, #0]
	ldr	r1, .L_652a0
	mov	r0, #5
.L_65282:
	strb	r0, [r1, #0]
.L_65284:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_6528c:
	.4byte	gUnk_30000FC
.L_65290:
	.4byte	gBossDefeatTimer
.L_65294:
	.4byte	gBossDefeatState
.L_65298:
	.4byte	gSubGameMode
.L_6529c:
	.4byte	gUnk_3000021
.L_652a0:
	.4byte	gStageExitType


thumb_func_start func_80652A4
func_80652A4:
	push	{r4, lr}
	ldr	r0, .L_65304
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_65308
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_6530c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r2, #96	@ 0x60
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #104	@ 0x68
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #92	@ 0x5c
	strb	r0, [r1, #0]
	ldr	r0, .L_65310
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #236	@ 0xec
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65304:
	.4byte	gCurrentSprite
.L_65308:
	.4byte	0x8408
.L_6530c:
	.4byte	0xFFFB
.L_65310:
	.4byte	sUnk_83EF520


thumb_func_start func_8065314
func_8065314:
	push	{lr}
	ldr	r0, .L_65370
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_65374
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_65378
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_6537c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #1
	strb	r0, [r1, #28]
	mov	r0, #236	@ 0xec
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65370:
	.4byte	gCurrentSprite
.L_65374:
	.4byte	0x8408
.L_65378:
	.4byte	0xFFFB
.L_6537c:
	.4byte	sUnk_83EF314


thumb_func_start func_8065380
func_8065380:
	push	{lr}
	mov	r0, #236	@ 0xec
	bl	SpriteUtilFindSpriteSlotWork3
	ldr	r1, .L_65394
	mov	r0, #16
	strb	r0, [r1, #28]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65394:
	.4byte	gCurrentSprite


thumb_func_start func_8065398
func_8065398:
	push	{r4, lr}
	ldr	r0, .L_653f0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_653f4
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_653f8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #35	@ 0x23
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	ldr	r0, .L_653fc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_653f0:
	.4byte	gCurrentSprite
.L_653f4:
	.4byte	0x8428
.L_653f8:
	.4byte	0xFFFB
.L_653fc:
	.4byte	sUnk_83EECA8


thumb_func_start func_8065400
func_8065400:
	ldr	r1, .L_65424
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_65430
	ldr	r0, .L_65428
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_65474
	ldr	r0, .L_6542c
	and	r0, r2
	strh	r0, [r3, #0]
	mov	r0, #72	@ 0x48
	strb	r0, [r3, #30]
	b	.L_65474
.L_65424:
	.4byte	gCurrentSprite
.L_65428:
	.4byte	gUnk_3000A59
.L_6542c:
	.4byte	0xDBFF
.L_65430:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_65450
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_65450
	ldr	r0, .L_65478
	and	r0, r2
	strh	r0, [r3, #0]
.L_65450:
	ldr	r0, .L_6547c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_65474
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	strb	r2, [r3, #30]
	mov	r0, #18
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
.L_65474:
	bx	lr
	.align	2, 0
.L_65478:
	.4byte	0xFDFF
.L_6547c:
	.4byte	gUnk_3000A5A


thumb_func_start func_8065480
func_8065480:
	ldr	r1, .L_65490
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #16
	strb	r0, [r2, #0]
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_65490:
	.4byte	gCurrentSprite


thumb_func_start func_8065494
func_8065494:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_654cc
	mov	r0, #1
	strb	r0, [r4, #31]
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	beq	.L_654f2
	add	r0, r5, #0
	cmp	r0, #15
	bne	.L_654d0
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	mov	r0, #49	@ 0x31
	bl	m4aSongNumStart
	b	.L_65506
	.align	2, 0
.L_654cc:
	.4byte	gCurrentSprite
.L_654d0:
	cmp	r0, #10
	bne	.L_654de
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	b	.L_654ea
.L_654de:
	cmp	r0, #5
	bne	.L_65506
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
.L_654ea:
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_65506
.L_654f2:
	ldrh	r3, [r4, #8]
	add	r3, #72	@ 0x48
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	strh	r5, [r4, #0]
.L_65506:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8065510
func_8065510:
	push	{r4, lr}
	ldr	r0, .L_6556c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #32
	strb	r2, [r0, #0]
	mov	r1, ip
	add	r1, #35	@ 0x23
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r2, [r0, #0]
	ldr	r0, .L_65570
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #1
	strb	r0, [r2, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6556c:
	.4byte	gCurrentSprite
.L_65570:
	.4byte	sUnk_83EF364


thumb_func_start func_8065574
func_8065574:
	push	{lr}
	mov	r0, #236	@ 0xec
	bl	SpriteUtilFindSpriteSlotWork3
	ldr	r1, .L_65588
	mov	r0, #16
	strb	r0, [r1, #28]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65588:
	.4byte	gCurrentSprite


thumb_func_start func_806558C
func_806558C:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_655c4
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	beq	.L_6563c
	add	r0, r5, #0
	cmp	r0, #15
	bne	.L_655d8
	ldr	r1, .L_655c8
	ldr	r0, .L_655cc
	str	r0, [r1, #0]
	ldr	r0, .L_655d0
	str	r0, [r1, #4]
	ldr	r0, .L_655d4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #80	@ 0x50
	b	.L_65624
.L_655c4:
	.4byte	gCurrentSprite
.L_655c8:
	.4byte	0x40000D4
.L_655cc:
	.4byte	sUnk_83EDC88
.L_655d0:
	.4byte	0x6013000
.L_655d4:
	.4byte	0x80000200
.L_655d8:
	cmp	r0, #10
	bne	.L_65608
	ldr	r1, .L_655f8
	ldr	r0, .L_655fc
	str	r0, [r1, #0]
	ldr	r0, .L_65600
	str	r0, [r1, #4]
	ldr	r0, .L_65604
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r4, #10]
	sub	r1, #16
	b	.L_65624
	.align	2, 0
.L_655f8:
	.4byte	0x40000D4
.L_655fc:
	.4byte	sUnk_83EE088
.L_65600:
	.4byte	0x6013400
.L_65604:
	.4byte	0x80000200
.L_65608:
	cmp	r0, #5
	bne	.L_65686
	ldr	r1, .L_6562c
	ldr	r0, .L_65630
	str	r0, [r1, #0]
	ldr	r0, .L_65634
	str	r0, [r1, #4]
	ldr	r0, .L_65638
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #48	@ 0x30
.L_65624:
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_65686
.L_6562c:
	.4byte	0x40000D4
.L_65630:
	.4byte	sUnk_83EE488
.L_65634:
	.4byte	0x6013800
.L_65638:
	.4byte	0x80000200
.L_6563c:
	ldr	r1, .L_65690
	ldr	r0, .L_65694
	str	r0, [r1, #0]
	ldr	r0, .L_65698
	str	r0, [r1, #4]
	ldr	r0, .L_6569c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldrh	r3, [r4, #8]
	add	r3, #96	@ 0x60
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #48	@ 0x30
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	strh	r5, [r4, #0]
.L_65686:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65690:
	.4byte	0x40000D4
.L_65694:
	.4byte	sUnk_83EE888
.L_65698:
	.4byte	0x6013C00
.L_6569c:
	.4byte	0x80000200


thumb_func_start func_80656A0
func_80656A0:
	push	{r4, lr}
	ldr	r0, .L_656fc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #164	@ 0xa4
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_65700
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #24]
	cmp	r0, #2
	beq	.L_65712
	cmp	r0, #2
	bgt	.L_65704
	cmp	r0, #1
	beq	.L_6570a
	b	.L_65722
.L_656fc:
	.4byte	gCurrentSprite
.L_65700:
	.4byte	sUnk_83EECA8
.L_65704:
	cmp	r0, #3
	beq	.L_6571a
	b	.L_65722
.L_6570a:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #96	@ 0x60
	b	.L_65728
.L_65712:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #160	@ 0xa0
	b	.L_65728
.L_6571a:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #224	@ 0xe0
	b	.L_65728
.L_65722:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #32
.L_65728:
	strb	r0, [r1, #0]
	ldr	r0, .L_6574c
	ldrb	r0, [r0, #0]
	cmp	r0, #13
	bne	.L_65778
	ldrh	r1, [r2, #0]
	ldr	r0, .L_65750
	and	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #24]
	cmp	r0, #2
	beq	.L_65764
	cmp	r0, #2
	bgt	.L_65754
	cmp	r0, #1
	beq	.L_6575a
	b	.L_65774
	.align	2, 0
.L_6574c:
	.4byte	gBossInteractionState
.L_65750:
	.4byte	0xDFFB
.L_65754:
	cmp	r0, #3
	beq	.L_6576c
	b	.L_65774
.L_6575a:
	ldr	r0, .L_65760
	b	.L_65776
	.align	2, 0
.L_65760:
	.4byte	sUnk_83F02BC
.L_65764:
	ldr	r0, .L_65768
	b	.L_65776
.L_65768:
	.4byte	sUnk_83F02EC
.L_6576c:
	ldr	r0, .L_65770
	b	.L_65776
.L_65770:
	.4byte	sUnk_83F031C
.L_65774:
	ldr	r0, .L_65780
.L_65776:
	str	r0, [r2, #4]
.L_65778:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65780:
	.4byte	sUnk_83F034C


thumb_func_start func_8065784
func_8065784:
	push	{lr}
	ldr	r3, .L_657b4
	ldrb	r0, [r3, #0]
	cmp	r0, #6
	bne	.L_65798
	ldr	r2, .L_657b8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_657bc
	and	r0, r1
	strh	r0, [r2, #0]
.L_65798:
	ldrb	r0, [r3, #0]
	cmp	r0, #13
	bne	.L_657c4
	ldr	r0, .L_657c0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #160	@ 0xa0
	ble	.L_657d8
	ldr	r1, .L_657b8
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	b	.L_657d6
	.align	2, 0
.L_657b4:
	.4byte	gBossInteractionState
.L_657b8:
	.4byte	gCurrentSprite
.L_657bc:
	.4byte	0xFFFB
.L_657c0:
	.4byte	gUnk_3000A64
.L_657c4:
	ldr	r0, .L_657f0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #191	@ 0xbf
	ble	.L_657d8
	ldr	r1, .L_657f4
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
.L_657d6:
	strb	r0, [r1, #0]
.L_657d8:
	bl	func_8062F5C
	ldr	r0, .L_657f8
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bne	.L_657ea
	ldr	r1, .L_657f4
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
.L_657ea:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_657f0:
	.4byte	gUnk_3000A64
.L_657f4:
	.4byte	gCurrentSprite
.L_657f8:
	.4byte	gBossInteractionState


thumb_func_start func_80657FC
func_80657FC:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_65830
	add	r4, r6, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	add	r0, #5
	ldr	r5, .L_65834
	ldrb	r1, [r5, #0]
	sub	r0, r0, r1
	strb	r0, [r4, #0]
	bl	func_8062F5C
	ldrb	r1, [r4, #0]
	mov	r0, #248	@ 0xf8
	and	r0, r1
	cmp	r0, #64	@ 0x40
	bne	.L_65864
	ldrb	r0, [r6, #24]
	cmp	r0, #1
	beq	.L_6584a
	cmp	r0, #1
	bgt	.L_65838
	cmp	r0, #0
	beq	.L_65842
	b	.L_65864
	.align	2, 0
.L_65830:
	.4byte	gCurrentSprite
.L_65834:
	.4byte	gUnk_3000A59
.L_65838:
	cmp	r0, #2
	beq	.L_65852
	cmp	r0, #3
	beq	.L_6585a
	b	.L_65864
.L_65842:
	ldrb	r0, [r5, #0]
	cmp	r0, #4
	bne	.L_65864
	b	.L_65860
.L_6584a:
	ldrb	r0, [r5, #0]
	cmp	r0, #3
	bne	.L_65864
	b	.L_65860
.L_65852:
	ldrb	r0, [r5, #0]
	cmp	r0, #2
	bne	.L_65864
	b	.L_65860
.L_6585a:
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bne	.L_65864
.L_65860:
	mov	r0, #116	@ 0x74
	strb	r0, [r6, #28]
.L_65864:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806586C
func_806586C:
	push	{lr}
	ldr	r3, .L_658bc
	ldrh	r1, [r3, #0]
	ldr	r0, .L_658c0
	and	r0, r1
	mov	r1, #0
	mov	r2, #0
	strh	r0, [r3, #0]
	mov	r0, #117	@ 0x75
	strb	r0, [r3, #28]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #21
	strb	r0, [r3, #30]
	strb	r1, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_658c4
	str	r0, [r3, #4]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, #56	@ 0x38
	strh	r0, [r3, #8]
	mov	r0, #182	@ 0xb6
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_658bc:
	.4byte	gCurrentSprite
.L_658c0:
	.4byte	0xDFF7
.L_658c4:
	.4byte	sUnk_83EECB8


thumb_func_start func_80658C8
func_80658C8:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_658f4
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #1
	bne	.L_65900
	ldr	r3, .L_658f8
	ldr	r1, .L_658fc
	add	r4, r1, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsr	r0, r0, #27
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r3, [r0, #0]
	add	r5, r1, #0
	cmp	r2, #110	@ 0x6e
	bls	.L_6594c
	b	.L_65948
	.align	2, 0
.L_658f4:
	.4byte	gUnk_3000A59
.L_658f8:
	.4byte	sUnk_83F06CA
.L_658fc:
	.4byte	gCurrentSprite
.L_65900:
	cmp	r1, #2
	bne	.L_6592c
	ldr	r3, .L_65924
	ldr	r1, .L_65928
	add	r4, r1, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsr	r0, r0, #27
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r3, [r0, #0]
	add	r5, r1, #0
	cmp	r2, #254	@ 0xfe
	bls	.L_6594c
	b	.L_65948
	.align	2, 0
.L_65924:
	.4byte	sUnk_83F068A
.L_65928:
	.4byte	gCurrentSprite
.L_6592c:
	ldr	r3, .L_6599c
	ldr	r1, .L_659a0
	add	r4, r1, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsr	r0, r0, #27
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r3, [r0, #0]
	add	r5, r1, #0
	cmp	r2, #190	@ 0xbe
	bls	.L_6594c
.L_65948:
	mov	r0, #0
	strb	r0, [r4, #0]
.L_6594c:
	add	r4, r5, #0
	ldrh	r0, [r4, #8]
	add	r2, r0, r3
	strh	r2, [r4, #8]
	add	r1, r4, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_659ac
	ldrb	r0, [r6, #0]
	mov	r1, #4
	sub	r1, r1, r0
	lsl	r1, r1, #1
	add	r1, #6
	ldrh	r0, [r4, #10]
	add	r1, r1, r0
	strh	r1, [r4, #10]
	add	r0, r2, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_659a4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_659de
	ldrh	r1, [r4, #0]
	ldr	r0, .L_659a8
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_659de
.L_6599c:
	.4byte	sUnk_83F065A
.L_659a0:
	.4byte	gCurrentSprite
.L_659a4:
	.4byte	gUnk_3000A51
.L_659a8:
	.4byte	0xFFBF
.L_659ac:
	ldrb	r1, [r6, #0]
	mov	r0, #4
	sub	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, #6
	ldrh	r1, [r5, #10]
	sub	r1, r1, r0
	strh	r1, [r5, #10]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_659e4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_659de
	ldrh	r0, [r5, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r5, #0]
.L_659de:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_659e4:
	.4byte	gUnk_3000A51


thumb_func_start func_80659E8
func_80659E8:
	ldr	r1, .L_65a0c
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	ldr	r0, .L_65a10
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #5
	strb	r0, [r1, #30]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_65a14
	and	r0, r2
	strh	r0, [r1, #0]
	add	r1, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r1, #0]
	bx	lr
.L_65a0c:
	.4byte	gCurrentSprite
.L_65a10:
	.4byte	sUnk_83EECD8
.L_65a14:
	.4byte	0xFCFF


thumb_func_start func_8065A18
func_8065A18:
	push	{r4, lr}
	ldr	r4, .L_65a30
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_65a34
	mov	r0, #17
	b	.L_65a46
.L_65a30:
	.4byte	gCurrentSprite
.L_65a34:
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_65a50
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_65a48
	mov	r0, #27
.L_65a46:
	strb	r0, [r4, #28]
.L_65a48:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65a50:
	.4byte	gSpriteCollisionResult


thumb_func_start func_8065A54
func_8065A54:
	ldr	r1, .L_65a6c
	mov	r2, #0
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_65a6c:
	.4byte	gCurrentSprite


thumb_func_start func_8065A70
func_8065A70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_65ad0
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	r8, r0
	ldrb	r6, [r0, #0]
	add	r4, r6, #0
	cmp	r4, #0
	beq	.L_65ae0
	mov	r1, #42	@ 0x2a
	add	r1, r1, r2
	mov	ip, r1
	ldrb	r3, [r1, #0]
	ldr	r5, .L_65ad4
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_65ad8
	cmp	r1, r0
	bne	.L_65aa4
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_65aa4:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	sub	r0, r6, #1
	mov	r7, r8
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_65b0a
	mov	r0, #21
	strb	r0, [r2, #30]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_65adc
	str	r0, [r2, #4]
	b	.L_65b0a
	.align	2, 0
.L_65ad0:
	.4byte	gCurrentSprite
.L_65ad4:
	.4byte	sUnk_83F07B2
.L_65ad8:
	.4byte	0x7FFF
.L_65adc:
	.4byte	sUnk_83EECB8
.L_65ae0:
	ldrh	r3, [r2, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_65afc
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #80	@ 0x50
	bls	.L_65b00
	sub	r0, r3, #4
	strh	r0, [r2, #8]
	b	.L_65b0a
	.align	2, 0
.L_65afc:
	.4byte	gBg1YPosition
.L_65b00:
	mov	r0, #117	@ 0x75
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
.L_65b0a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8065B14
func_8065B14:
	ldr	r1, .L_65b38
	ldrh	r2, [r1, #0]
	mov	r0, #4
	mov	r3, #0
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #21
	strb	r0, [r1, #30]
	mov	r0, #20
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #0]
	add	r1, #42	@ 0x2a
	strb	r3, [r1, #0]
	bx	lr
	.align	2, 0
.L_65b38:
	.4byte	gCurrentSprite


thumb_func_start func_8065B3C
func_8065B3C:
	ldr	r2, .L_65b6c
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r1, .L_65b70
	ldrh	r0, [r1, #20]
	strh	r0, [r2, #8]
	ldrh	r0, [r1, #18]
	strh	r0, [r2, #10]
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	bne	.L_65b58
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_65b68
.L_65b58:
	mov	r0, #15
	strb	r0, [r2, #31]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_65b74
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #22
	strb	r0, [r2, #28]
.L_65b68:
	bx	lr
	.align	2, 0
.L_65b6c:
	.4byte	gCurrentSprite
.L_65b70:
	.4byte	gWarioData
.L_65b74:
	.4byte	0xFFFB


thumb_func_start func_8065B78
func_8065B78:
	ldr	r2, .L_65b98
	ldrh	r3, [r2, #8]
	lsr	r0, r3, #2
	ldr	r1, .L_65b9c
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_65ba0
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #79	@ 0x4f
	bls	.L_65ba4
	add	r0, r3, #4
	strh	r0, [r2, #8]
	b	.L_65bb0
.L_65b98:
	.4byte	gCurrentSprite
.L_65b9c:
	.4byte	gBg1YPosition
.L_65ba0:
	.4byte	0xFFAF0000
.L_65ba4:
	.2byte	0x2000
	mov	r1, #117	@ 0x75
	strb	r1, [r2, #28]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
.L_65bb0:
	bx	lr
	.align	2, 0


thumb_func_start func_8065BB4
func_8065BB4:
	ldr	r0, .L_65bc4
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65bc4:
	.4byte	gCurrentSprite


thumb_func_start func_8065BC8
func_8065BC8:
	ldr	r0, .L_65bd8
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65bd8:
	.4byte	gCurrentSprite


thumb_func_start func_8065BDC
func_8065BDC:
	ldr	r0, .L_65bec
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65bec:
	.4byte	gCurrentSprite


thumb_func_start func_8065BF0
func_8065BF0:
	ldr	r1, .L_65c08
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_65c08:
	.4byte	gCurrentSprite


thumb_func_start func_8065C0C
func_8065C0C:
	ldr	r1, .L_65c24
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_65c24:
	.4byte	gCurrentSprite


thumb_func_start func_8065C28
func_8065C28:
	ldr	r2, .L_65c4c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_65c50
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_65c4c:
	.4byte	gCurrentSprite
.L_65c50:
	.4byte	sUnk_83EECD8


thumb_func_start func_8065C54
func_8065C54:
	push	{lr}
	ldr	r1, .L_65c64
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8065C28
	pop	{r0}
	bx	r0
.L_65c64:
	.4byte	gCurrentSprite


thumb_func_start func_8065C68
func_8065C68:
	push	{lr}
	ldr	r1, .L_65c78
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8065C28
	pop	{r0}
	bx	r0
.L_65c78:
	.4byte	gCurrentSprite


thumb_func_start func_8065C7C
func_8065C7C:
	push	{lr}
	ldr	r0, .L_65c90
	ldr	r1, .L_65c94
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_65c98
	bl	func_8065C54
	b	.L_65c9c
.L_65c90:
	.4byte	gCurrentSprite
.L_65c94:
	.4byte	gWarioData
.L_65c98:
	bl	func_8065C68
.L_65c9c:
	pop	{r0}
	bx	r0


thumb_func_start func_8065CA0
func_8065CA0:
	ldr	r1, .L_65ca8
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_65ca8:
	.4byte	gCurrentSprite


thumb_func_start func_8065CAC
func_8065CAC:
	ldr	r1, .L_65cb4
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_65cb4:
	.4byte	gCurrentSprite


thumb_func_start func_8065CB8
func_8065CB8:
	ldr	r0, .L_65cc4
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_65cc4:
	.4byte	gCurrentSprite


thumb_func_start func_8065CC8
func_8065CC8:
	ldr	r0, .L_65cd4
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_65cd4:
	.4byte	gCurrentSprite


thumb_func_start func_8065CD8
func_8065CD8:
	ldr	r0, .L_65ce4
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_65ce4:
	.4byte	gCurrentSprite


thumb_func_start func_8065CE8
func_8065CE8:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r5, .L_65d74
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r5, #0]
	add	r1, r5, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #32
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	ldr	r0, .L_65d78
	mov	r8, r0
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r5, #12]
	lsl	r4, r4, #1
	add	r4, r8
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r5, #18]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65d74:
	.4byte	gCurrentSprite
.L_65d78:
	.4byte	sSinCosTable


thumb_func_start func_8065D7C
func_8065D7C:
	push	{r4, r5, lr}
	ldr	r0, .L_65dec
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	add	r1, r2, #0
	mov	r2, #0
	mov	r4, #0
	orr	r1, r0
	ldr	r0, .L_65df0
	and	r1, r0
	mov	r3, ip
	strh	r1, [r3, #0]
	mov	r0, #69	@ 0x45
	strb	r0, [r3, #30]
	mov	r0, ip
	add	r0, #32
	mov	r3, #24
	strb	r3, [r0, #0]
	mov	r5, ip
	add	r5, #33	@ 0x21
	mov	r0, #8
	strb	r0, [r5, #0]
	add	r5, #1
	mov	r0, #16
	strb	r0, [r5, #0]
	add	r5, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r5, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	ldr	r0, .L_65df4
	mov	r5, ip
	str	r0, [r5, #4]
	strb	r2, [r5, #22]
	strh	r4, [r5, #20]
	mov	r0, ip
	add	r0, #39	@ 0x27
	strb	r3, [r0, #0]
	mov	r3, ip
	add	r3, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r3, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_65df8
	mov	r0, #113	@ 0x71
	strb	r0, [r5, #28]
	b	.L_65dfe
	.align	2, 0
.L_65dec:
	.4byte	gCurrentSprite
.L_65df0:
	.4byte	0xFFFB
.L_65df4:
	.4byte	sUnk_83EF780
.L_65df8:
	mov	r0, #111	@ 0x6f
	mov	r1, ip
	strb	r0, [r1, #28]
.L_65dfe:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8065E04
func_8065E04:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_65e30
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_65e34
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_65e38
	cmp	r1, r0
	bne	.L_65e3c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_65e46
.L_65e30:
	.4byte	gCurrentSprite
.L_65e34:
	.4byte	sUnk_83F0938
.L_65e38:
	.4byte	0x7FFF
.L_65e3c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_65e46:
	strh	r0, [r3, #8]
	bl	func_8024570
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8065E54
func_8065E54:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_65e80
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_65e84
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_65e88
	cmp	r1, r0
	bne	.L_65e8c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_65e96
.L_65e80:
	.4byte	gCurrentSprite
.L_65e84:
	.4byte	sUnk_83F0938
.L_65e88:
	.4byte	0x7FFF
.L_65e8c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_65e96:
	strh	r0, [r3, #8]
	bl	func_80245FC
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8065EA4
func_8065EA4:
	ldr	r1, .L_65ec0
	mov	r2, #0
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #44	@ 0x2c
	strb	r0, [r3, #0]
	ldr	r0, .L_65ec4
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	bx	lr
	.align	2, 0
.L_65ec0:
	.4byte	gCurrentSprite
.L_65ec4:
	.4byte	sUnk_83EF790


thumb_func_start func_8065EC8
func_8065EC8:
	ldr	r2, .L_65ee0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_65ede
	mov	r0, #15
	strb	r0, [r2, #28]
.L_65ede:
	bx	lr
.L_65ee0:
	.4byte	gCurrentSprite


thumb_func_start func_8065EE4
func_8065EE4:
	ldr	r2, .L_65ef4
	ldr	r1, [r2, #4]
	ldr	r0, .L_65ef8
	cmp	r1, r0
	bne	.L_65efc
	mov	r0, #17
	strb	r0, [r2, #28]
	b	.L_65f1e
.L_65ef4:
	.4byte	gCurrentSprite
.L_65ef8:
	.4byte	sUnk_83EF780
.L_65efc:
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	ldr	r0, .L_65f20
	str	r0, [r2, #4]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #5
	strb	r0, [r2, #30]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_65f24
	and	r0, r1
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #150	@ 0x96
	strb	r0, [r1, #0]
.L_65f1e:
	bx	lr
.L_65f20:
	.4byte	sUnk_83EF770
.L_65f24:
	.4byte	0xFCFF


thumb_func_start func_8065F28
func_8065F28:
	push	{lr}
	ldr	r2, .L_65f58
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	add	r3, r1, #0
	cmp	r1, #49	@ 0x31
	bhi	.L_65f5c
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_65f50
	ldrh	r0, [r2, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r2, #0]
.L_65f50:
	cmp	r3, #0
	bne	.L_65f5c
	strh	r3, [r2, #0]
	b	.L_65f72
.L_65f58:
	.4byte	gCurrentSprite
.L_65f5c:
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_65f78
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_65f72
	ldr	r1, .L_65f7c
	mov	r0, #27
	strb	r0, [r1, #28]
.L_65f72:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_65f78:
	.4byte	gSpriteCollisionResult
.L_65f7c:
	.4byte	gCurrentSprite


thumb_func_start func_8065F80
func_8065F80:
	ldr	r0, .L_65f90
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65f90:
	.4byte	gCurrentSprite


thumb_func_start func_8065F94
func_8065F94:
	ldr	r0, .L_65fa4
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65fa4:
	.4byte	gCurrentSprite


thumb_func_start func_8065FA8
func_8065FA8:
	ldr	r0, .L_65fb8
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_65fb8:
	.4byte	gCurrentSprite


thumb_func_start func_8065FBC
func_8065FBC:
	ldr	r1, .L_65fd4
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_65fd4:
	.4byte	gCurrentSprite


thumb_func_start func_8065FD8
func_8065FD8:
	ldr	r1, .L_65ff0
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_65ff0:
	.4byte	gCurrentSprite


thumb_func_start func_8065FF4
func_8065FF4:
	ldr	r2, .L_66018
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6601c
	and	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_66018:
	.4byte	gCurrentSprite
.L_6601c:
	.4byte	0xFFFB


thumb_func_start func_8066020
func_8066020:
	push	{lr}
	ldr	r1, .L_66030
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8065FF4
	pop	{r0}
	bx	r0
.L_66030:
	.4byte	gCurrentSprite


thumb_func_start func_8066034
func_8066034:
	push	{lr}
	ldr	r1, .L_66044
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8065FF4
	pop	{r0}
	bx	r0
.L_66044:
	.4byte	gCurrentSprite


thumb_func_start func_8066048
func_8066048:
	push	{lr}
	ldr	r0, .L_6605c
	ldr	r1, .L_66060
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_66064
	bl	func_8066020
	b	.L_66068
.L_6605c:
	.4byte	gCurrentSprite
.L_66060:
	.4byte	gWarioData
.L_66064:
	bl	func_8066034
.L_66068:
	pop	{r0}
	bx	r0


thumb_func_start func_806606C
func_806606C:
	ldr	r1, .L_6607c
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_66080
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_6607c:
	.4byte	gCurrentSprite
.L_66080:
	.4byte	0xFFFB


thumb_func_start func_8066084
func_8066084:
	ldr	r1, .L_66094
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_66098
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_66094:
	.4byte	gCurrentSprite
.L_66098:
	.4byte	0xFFFB


thumb_func_start func_806609C
func_806609C:
	ldr	r1, .L_660b0
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_660b4
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_660b0:
	.4byte	gCurrentSprite
.L_660b4:
	.4byte	0xFFFB


thumb_func_start func_80660B8
func_80660B8:
	ldr	r1, .L_660cc
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_660d0
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_660cc:
	.4byte	gCurrentSprite
.L_660d0:
	.4byte	0xFFFB


thumb_func_start func_80660D4
func_80660D4:
	ldr	r0, .L_660e0
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_660e0:
	.4byte	gCurrentSprite


thumb_func_start func_80660E4
func_80660E4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, .L_66118
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r7, r1, #0
	cmp	r0, #2
	bne	.L_6618a
	mov	r0, #51	@ 0x33
	strb	r0, [r7, #30]
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	mov	r1, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_6611c
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #16
	b	.L_66124
	.align	2, 0
.L_66118:
	.4byte	gCurrentSprite
.L_6611c:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #16
.L_66124:
	strb	r0, [r1, #0]
	add	r0, r7, #0
	add	r0, #40	@ 0x28
	ldrb	r4, [r0, #0]
	ldr	r6, .L_66194
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r7, #12]
	lsl	r4, r4, #1
	add	r4, r4, r6
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r7, #18]
.L_6618a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_66194:
	.4byte	sSinCosTable


thumb_func_start func_8066198
func_8066198:
	push	{r4, lr}
	ldr	r0, .L_661f0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r0, .L_661f4
	and	r0, r1
	mov	r2, #0
	mov	r3, #0
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #24
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #35	@ 0x23
	mov	r0, #48	@ 0x30
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #28
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_661f8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #17
	strb	r0, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_661f0:
	.4byte	gCurrentSprite
.L_661f4:
	.4byte	0xFFFB
.L_661f8:
	.4byte	sUnk_83EF7E0


thumb_func_start func_80661FC
func_80661FC:
	ldr	r0, .L_66210
	mov	r2, #0
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	bx	lr
.L_66210:
	.4byte	gCurrentSprite


thumb_func_start func_8066214
func_8066214:
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L_66248
	add	r7, r6, #0
	add	r7, #42	@ 0x2a
	ldrb	r4, [r7, #0]
	cmp	r4, #1
	bne	.L_66228
	mov	r0, #109	@ 0x6d
	bl	m4aSongNumStart
.L_66228:
	ldr	r2, .L_6624c
	lsl	r0, r4, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r3, #0
	ldrsh	r1, [r0, r3]
	ldr	r0, .L_66250
	cmp	r1, r0
	bne	.L_66254
	sub	r1, r4, #1
	lsl	r1, r1, #1
	add	r1, r1, r2
	ldrh	r0, [r6, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_6625c
.L_66248:
	.4byte	gCurrentSprite
.L_6624c:
	.4byte	sUnk_83F0598
.L_66250:
	.4byte	0x7FFF
.L_66254:
	add	r0, r4, #1
	strb	r0, [r7, #0]
	ldrh	r0, [r6, #8]
	add	r0, r0, r5
.L_6625c:
	strh	r0, [r6, #8]
	ldr	r2, .L_66294
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	ldrb	r4, [r3, #0]
	ldr	r7, .L_66298
	lsr	r0, r4, #1
	lsl	r0, r0, #1
	add	r0, r0, r7
	ldrh	r5, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_6629c
	add	r6, r2, #0
	cmp	r1, r0
	bne	.L_662a0
	ldrh	r0, [r6, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r6, #0]
	mov	r0, #1
	strb	r0, [r3, #0]
	add	r1, r6, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	ldrh	r5, [r7, #0]
	b	.L_662a4
	.align	2, 0
.L_66294:
	.4byte	gCurrentSprite
.L_66298:
	.4byte	sUnk_83F0536
.L_6629c:
	.4byte	0x7FFF
.L_662a0:
	add	r0, r4, #1
	strb	r0, [r3, #0]
.L_662a4:
	add	r4, r6, #0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_662cc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_662f4
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_662d0
	strh	r0, [r4, #0]
	b	.L_66368
.L_662cc:
	.4byte	gUnk_3000A51
.L_662d0:
	mov	r0, #1
	strb	r0, [r4, #26]
	strb	r0, [r4, #31]
	mov	r0, #4
	eor	r0, r1
	strh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_662ec
	ldrh	r0, [r4, #10]
	add	r0, r0, r5
	strh	r0, [r4, #10]
	b	.L_66368
.L_662ec:
	ldrh	r0, [r4, #10]
	sub	r0, r0, r5
	strh	r0, [r4, #10]
	b	.L_66368
.L_662f4:
	ldrh	r0, [r4, #0]
	ldr	r1, .L_66324
	and	r1, r0
	strh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_66328
	ldrh	r1, [r4, #10]
	add	r1, r1, r5
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
	b	.L_66346
.L_66324:
	.4byte	0xFFFB
.L_66328:
	ldrh	r1, [r6, #10]
	sub	r1, r1, r5
	strh	r1, [r6, #10]
	ldrh	r0, [r6, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r6, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_66346:
	ldr	r0, .L_66370
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_66368
	ldr	r2, .L_66374
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	add	r2, #42	@ 0x2a
	strb	r0, [r2, #0]
.L_66368:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66370:
	.4byte	gUnk_3000A51
.L_66374:
	.4byte	gCurrentSprite


thumb_func_start func_8066378
func_8066378:
	ldr	r1, .L_6639c
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	ldr	r0, .L_663a0
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #5
	strb	r0, [r1, #30]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_663a4
	and	r0, r2
	strh	r0, [r1, #0]
	add	r1, #39	@ 0x27
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	bx	lr
.L_6639c:
	.4byte	gCurrentSprite
.L_663a0:
	.4byte	sUnk_83EFA18
.L_663a4:
	.4byte	0xFCFF


thumb_func_start func_80663A8
func_80663A8:
	push	{lr}
	ldr	r2, .L_663d8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	add	r3, r1, #0
	cmp	r1, #59	@ 0x3b
	bhi	.L_663dc
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_663d0
	ldrh	r0, [r2, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r2, #0]
.L_663d0:
	cmp	r3, #0
	bne	.L_663dc
	strh	r3, [r2, #0]
	b	.L_663f2
.L_663d8:
	.4byte	gCurrentSprite
.L_663dc:
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_663f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_663f2
	ldr	r1, .L_663fc
	mov	r0, #27
	strb	r0, [r1, #28]
.L_663f2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_663f8:
	.4byte	gSpriteCollisionResult
.L_663fc:
	.4byte	gCurrentSprite


thumb_func_start func_8066400
func_8066400:
	ldr	r0, .L_66410
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_66410:
	.4byte	gCurrentSprite


thumb_func_start func_8066414
func_8066414:
	ldr	r0, .L_66424
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_66424:
	.4byte	gCurrentSprite


thumb_func_start func_8066428
func_8066428:
	ldr	r0, .L_66438
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_66438:
	.4byte	gCurrentSprite


thumb_func_start func_806643C
func_806643C:
	ldr	r1, .L_66454
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_66454:
	.4byte	gCurrentSprite


thumb_func_start func_8066458
func_8066458:
	ldr	r1, .L_66470
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_66470:
	.4byte	gCurrentSprite


thumb_func_start func_8066474
func_8066474:
	ldr	r2, .L_664ac
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
	ldrh	r1, [r2, #0]
	ldr	r0, .L_664b0
	and	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #47	@ 0x2f
	bne	.L_664a8
	ldr	r0, .L_664b4
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #5
	strb	r0, [r2, #30]
.L_664a8:
	bx	lr
	.align	2, 0
.L_664ac:
	.4byte	gCurrentSprite
.L_664b0:
	.4byte	0xFFFB
.L_664b4:
	.4byte	sUnk_83EF850


thumb_func_start func_80664B8
func_80664B8:
	push	{lr}
	ldr	r1, .L_664c8
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8066474
	pop	{r0}
	bx	r0
.L_664c8:
	.4byte	gCurrentSprite


thumb_func_start func_80664CC
func_80664CC:
	push	{lr}
	ldr	r1, .L_664dc
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8066474
	pop	{r0}
	bx	r0
.L_664dc:
	.4byte	gCurrentSprite


thumb_func_start func_80664E0
func_80664E0:
	ldr	r2, .L_66514
	ldr	r0, .L_66518
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6651c
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_66514:
	.4byte	gCurrentSprite
.L_66518:
	.4byte	sUnk_83EF830
.L_6651c:
	.4byte	0xFEFB


thumb_func_start func_8066520
func_8066520:
	push	{lr}
	ldr	r1, .L_66540
	ldrb	r0, [r1, #28]
	cmp	r0, #106	@ 0x6a
	bne	.L_66544
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_66544
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_66558
.L_66540:
	.4byte	gCurrentSprite
.L_66544:
	ldr	r1, .L_66568
	ldrb	r0, [r1, #28]
	cmp	r0, #106	@ 0x6a
	beq	.L_66558
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_66558:
	ldr	r1, .L_66568
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80664E0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66568:
	.4byte	gCurrentSprite


thumb_func_start func_806656C
func_806656C:
	push	{lr}
	ldr	r1, .L_6658c
	ldrb	r0, [r1, #28]
	cmp	r0, #105	@ 0x69
	bne	.L_66590
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_66590
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	add	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_665a4
.L_6658c:
	.4byte	gCurrentSprite
.L_66590:
	ldr	r1, .L_665b4
	ldrb	r0, [r1, #28]
	cmp	r0, #105	@ 0x69
	beq	.L_665a4
	ldrh	r0, [r1, #8]
	sub	r0, #32
	ldrh	r1, [r1, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_665a4:
	ldr	r1, .L_665b4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80664E0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_665b4:
	.4byte	gCurrentSprite


thumb_func_start func_80665B8
func_80665B8:
	ldr	r1, .L_665d8
	mov	r2, #0
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	mov	r3, #0
	strh	r2, [r1, #20]
	ldr	r0, .L_665dc
	str	r0, [r1, #4]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_665e0
	and	r0, r2
	strh	r0, [r1, #0]
	strb	r3, [r1, #29]
	bx	lr
	.align	2, 0
.L_665d8:
	.4byte	gCurrentSprite
.L_665dc:
	.4byte	sUnk_83EF8F0
.L_665e0:
	.4byte	0xFFFB


thumb_func_start func_80665E4
func_80665E4:
	ldr	r1, .L_66604
	mov	r2, #0
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	mov	r3, #0
	strh	r2, [r1, #20]
	ldr	r0, .L_66608
	str	r0, [r1, #4]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_6660c
	and	r0, r2
	strh	r0, [r1, #0]
	strb	r3, [r1, #29]
	bx	lr
	.align	2, 0
.L_66604:
	.4byte	gCurrentSprite
.L_66608:
	.4byte	sUnk_83EF8F0
.L_6660c:
	.4byte	0xFFFB


thumb_func_start func_8066610
func_8066610:
	ldr	r1, .L_66634
	mov	r2, #0
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	strb	r2, [r1, #22]
	mov	r3, #0
	strh	r2, [r1, #20]
	ldr	r0, .L_66638
	str	r0, [r1, #4]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_6663c
	and	r0, r2
	strh	r0, [r1, #0]
	strb	r3, [r1, #29]
	bx	lr
	.align	2, 0
.L_66634:
	.4byte	gCurrentSprite
.L_66638:
	.4byte	sUnk_83EF8F0
.L_6663c:
	.4byte	0xFFFB


thumb_func_start func_8066640
func_8066640:
	ldr	r1, .L_66664
	mov	r2, #0
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #31]
	strb	r2, [r1, #22]
	mov	r3, #0
	strh	r2, [r1, #20]
	ldr	r0, .L_66668
	str	r0, [r1, #4]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_6666c
	and	r0, r2
	strh	r0, [r1, #0]
	strb	r3, [r1, #29]
	bx	lr
	.align	2, 0
.L_66664:
	.4byte	gCurrentSprite
.L_66668:
	.4byte	sUnk_83EF8F0
.L_6666c:
	.4byte	0xFFFB


thumb_func_start func_8066670
func_8066670:
	ldr	r0, .L_6667c
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_6667c:
	.4byte	gCurrentSprite


thumb_func_start func_8066680
func_8066680:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_666a8
	ldrh	r1, [r2, #0]
	mov	r0, #160	@ 0xa0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #29]
	add	r7, r2, #0
	cmp	r0, #2
	beq	.L_6669c
	cmp	r0, #17
	bne	.L_666ac
.L_6669c:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #32
	b	.L_666b4
	.align	2, 0
.L_666a8:
	.4byte	gCurrentSprite
.L_666ac:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #32
.L_666b4:
	strb	r0, [r1, #0]
	add	r0, r7, #0
	add	r0, #40	@ 0x28
	ldrb	r4, [r0, #0]
	ldr	r6, .L_66724
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r7, #12]
	lsl	r4, r4, #1
	add	r4, r4, r6
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r7, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_66724:
	.4byte	sSinCosTable


thumb_func_start func_8066728
func_8066728:
	push	{r4, lr}
	ldr	r0, .L_66780
	mov	ip, r0
	ldrh	r0, [r0, #0]
	ldr	r2, .L_66784
	and	r2, r0
	mov	r3, #0
	mov	r4, #0
	mov	r1, ip
	strh	r2, [r1, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_66788
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #64	@ 0x40
	and	r0, r2
	mov	r2, ip
	cmp	r0, #0
	beq	.L_6678c
	mov	r0, #52	@ 0x34
	b	.L_6678e
.L_66780:
	.4byte	gCurrentSprite
.L_66784:
	.4byte	0xFFFB
.L_66788:
	.4byte	sUnk_83EF900
.L_6678c:
	mov	r0, #54	@ 0x36
.L_6678e:
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #10
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #5
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80667AC
func_80667AC:
	push	{r4, lr}
	ldr	r2, .L_667e0
	mov	r4, #0
	mov	r0, #1
	strb	r0, [r2, #31]
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_667e4
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_667e8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #123	@ 0x7b
	strb	r0, [r2, #28]
	add	r2, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_667e0:
	.4byte	gCurrentSprite
.L_667e4:
	.4byte	0xFEFF
.L_667e8:
	.4byte	sUnk_83EF918


thumb_func_start func_80667EC
func_80667EC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_66824
	mov	r0, #1
	strb	r0, [r4, #31]
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_66828
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #28
	bne	.L_6682a
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #245	@ 0xf5
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_6682a
	.align	2, 0
.L_66824:
	.4byte	gCurrentSprite
.L_66828:
	strh	r0, [r4, #0]
.L_6682a:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8066834
func_8066834:
	ldr	r2, .L_66850
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_66850:
	.4byte	gCurrentSprite


thumb_func_start func_8066854
func_8066854:
	push	{lr}
	ldr	r1, .L_66864
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8066834
	pop	{r0}
	bx	r0
.L_66864:
	.4byte	gCurrentSprite


thumb_func_start func_8066868
func_8066868:
	push	{lr}
	ldr	r1, .L_66878
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8066834
	pop	{r0}
	bx	r0
.L_66878:
	.4byte	gCurrentSprite


thumb_func_start func_806687C
func_806687C:
	ldr	r0, .L_6688c
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_6688c:
	.4byte	gCurrentSprite


thumb_func_start func_8066890
func_8066890:
	push	{r4, lr}
	ldr	r4, .L_668c8
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r1, #0
	mov	r0, #8
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_668cc
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_668c8:
	.4byte	gCurrentSprite
.L_668cc:
	.4byte	0xFEFF


thumb_func_start func_80668D0
func_80668D0:
	push	{lr}
	ldr	r1, .L_668e0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8066890
	pop	{r0}
	bx	r0
.L_668e0:
	.4byte	gCurrentSprite


thumb_func_start func_80668E4
func_80668E4:
	push	{lr}
	ldr	r1, .L_668f4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8066890
	pop	{r0}
	bx	r0
.L_668f4:
	.4byte	gCurrentSprite


thumb_func_start func_80668F8
func_80668F8:
	ldr	r0, .L_6690c
	add	r3, r0, #0
	add	r3, #41	@ 0x29
	mov	r2, #0
	mov	r1, #8
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_6690c:
	.4byte	gCurrentSprite


thumb_func_start func_8066910
func_8066910:
	push	{lr}
	ldr	r1, .L_66920
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80668F8
	pop	{r0}
	bx	r0
.L_66920:
	.4byte	gCurrentSprite


thumb_func_start func_8066924
func_8066924:
	push	{lr}
	ldr	r1, .L_66934
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80668F8
	pop	{r0}
	bx	r0
.L_66934:
	.4byte	gCurrentSprite


thumb_func_start func_8066938
func_8066938:
	ldr	r1, .L_66940
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_66940:
	.4byte	gCurrentSprite


thumb_func_start func_8066944
func_8066944:
	ldr	r1, .L_6694c
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_6694c:
	.4byte	gCurrentSprite


thumb_func_start func_8066950
func_8066950:
	push	{r4, lr}
	ldr	r3, .L_669dc
	ldr	r0, [r3, #4]
	ldr	r1, .L_669e0
	cmp	r0, r1
	beq	.L_6696c
	str	r1, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r0, [r3, #20]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #70	@ 0x46
	strb	r0, [r1, #0]
.L_6696c:
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_669d4
	ldrh	r1, [r3, #0]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r0, r4, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_669e4
	and	r0, r1
	strh	r0, [r3, #0]
	ldr	r0, .L_669e8
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #69	@ 0x45
	strb	r0, [r3, #30]
	mov	r0, #121	@ 0x79
	strb	r0, [r3, #28]
	mov	r2, #36	@ 0x24
	mov	r0, ip
	strb	r2, [r0, #0]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	strb	r2, [r0, #0]
	ldrh	r0, [r3, #8]
	sub	r0, #16
	ldrh	r1, [r3, #10]
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	ldr	r0, .L_669ec
	strb	r4, [r0, #0]
.L_669d4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_669dc:
	.4byte	gCurrentSprite
.L_669e0:
	.4byte	sUnk_83EF808
.L_669e4:
	.4byte	0xFEFF
.L_669e8:
	.4byte	sUnk_83EF918
.L_669ec:
	.4byte	gCurrentCarriedSprite


thumb_func_start func_80669F0
func_80669F0:
	ldr	r0, .L_66a08
	ldr	r1, .L_66a0c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #1
	strb	r1, [r0, #31]
	add	r0, #39	@ 0x27
	mov	r1, #70	@ 0x46
	strb	r1, [r0, #0]
	bx	lr
.L_66a08:
	.4byte	gCurrentSprite
.L_66a0c:
	.4byte	sUnk_83EF808


thumb_func_start func_8066A10
func_8066A10:
	push	{lr}
	ldr	r1, .L_66a20
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_80669F0
	pop	{r0}
	bx	r0
.L_66a20:
	.4byte	gCurrentSprite


thumb_func_start func_8066A24
func_8066A24:
	push	{lr}
	bl	SpriteUtilCarryingSpriteRight
	bl	func_8066950
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8066A34
func_8066A34:
	push	{lr}
	ldr	r1, .L_66a44
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_80669F0
	pop	{r0}
	bx	r0
.L_66a44:
	.4byte	gCurrentSprite


thumb_func_start func_8066A48
func_8066A48:
	push	{lr}
	bl	SpriteUtilCarryingSpriteLeft
	bl	func_8066950
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8066A58
func_8066A58:
	ldr	r3, .L_66a7c
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_66a80
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #28
	bne	.L_66a82
	mov	r0, #0
	strb	r0, [r3, #30]
	b	.L_66a82
	.align	2, 0
.L_66a7c:
	.4byte	gCurrentSprite
.L_66a80:
	strh	r0, [r3, #0]
.L_66a82:
	bx	lr


thumb_func_start func_8066A84
func_8066A84:
	push	{r4, lr}
	ldr	r4, .L_66aa0
	ldrh	r0, [r4, #8]
	sub	r0, #16
	ldrh	r1, [r4, #10]
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	mov	r0, #0
	strh	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66aa0:
	.4byte	gCurrentSprite


thumb_func_start func_8066AA4
func_8066AA4:
	push	{r4, r5, lr}
	ldr	r3, .L_66b14
	ldrh	r0, [r3, #0]
	ldr	r5, .L_66b18
	and	r5, r0
	mov	r4, #0
	mov	r2, #0
	strh	r5, [r3, #0]
	mov	r0, #2
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	ldr	r0, .L_66b1c
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #28
	strb	r0, [r3, #28]
	add	r1, #1
	mov	r0, #10
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #170	@ 0xaa
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	ldr	r1, .L_66b20
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_66b28
	ldr	r0, .L_66b24
	and	r0, r5
	b	.L_66b2e
	.align	2, 0
.L_66b14:
	.4byte	gCurrentSprite
.L_66b18:
	.4byte	0xFFFB
.L_66b1c:
	.4byte	sUnk_83EF968
.L_66b20:
	.4byte	gWarioData
.L_66b24:
	.4byte	0xFFBF
.L_66b28:
	mov	r1, #64	@ 0x40
	add	r0, r5, #0
	orr	r0, r1
.L_66b2e:
	strh	r0, [r3, #0]
	mov	r0, #210	@ 0xd2
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8066B3C
func_8066B3C:
	ldr	r2, .L_66b60
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_66b5e
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #30
	strb	r0, [r3, #0]
.L_66b5e:
	bx	lr
.L_66b60:
	.4byte	gCurrentSprite


thumb_func_start func_8066B64
func_8066B64:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_66b94
	add	r5, r4, #0
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bne	.L_66b9c
	ldrh	r0, [r4, #8]
	add	r0, #8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_66b98
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_66b9c
	mov	r1, #0
	mov	r0, #28
	strb	r0, [r4, #28]
	strb	r1, [r5, #0]
	b	.L_66c68
	.align	2, 0
.L_66b94:
	.4byte	gCurrentSprite
.L_66b98:
	.4byte	gUnk_3000A51
.L_66b9c:
	ldr	r0, .L_66bf0
	mov	r1, #39	@ 0x27
	add	r1, r1, r0
	mov	ip, r1
	ldrb	r2, [r1, #0]
	add	r4, r0, #0
	cmp	r2, #0
	beq	.L_66bb0
	sub	r0, r2, #1
	strb	r0, [r1, #0]
.L_66bb0:
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r2, [r6, #0]
	ldr	r5, .L_66bf4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_66bf8
	cmp	r1, r0
	bne	.L_66bcc
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_66bcc:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_66c30
	mov	r1, ip
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_66bfc
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_66c00
	.align	2, 0
.L_66bf0:
	.4byte	gCurrentSprite
.L_66bf4:
	.4byte	sUnk_83F0514
.L_66bf8:
	.4byte	0x7FFF
.L_66bfc:
	ldrh	r0, [r4, #10]
	add	r0, #2
.L_66c00:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66c28
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66c68
	ldrh	r1, [r4, #0]
	ldr	r0, .L_66c2c
	and	r0, r1
	b	.L_66c66
	.align	2, 0
.L_66c28:
	.4byte	gUnk_3000A51
.L_66c2c:
	.4byte	0xFFBF
.L_66c30:
	mov	r7, ip
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_66c3e
	ldrh	r0, [r4, #10]
	sub	r0, #4
	b	.L_66c42
.L_66c3e:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_66c42:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66c70
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66c68
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
.L_66c66:
	strh	r0, [r4, #0]
.L_66c68:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66c70:
	.4byte	gUnk_3000A51


thumb_func_start func_8066C74
func_8066C74:
	ldr	r2, .L_66ca8
	ldr	r0, .L_66cac
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	sub	r0, #2
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_66cb0
	and	r0, r1
	mov	r3, #160	@ 0xa0
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_66ca8:
	.4byte	gCurrentSprite
.L_66cac:
	.4byte	sUnk_83EF968
.L_66cb0:
	.4byte	0xFEFF


thumb_func_start func_8066CB4
func_8066CB4:
	push	{r4, lr}
	ldr	r4, .L_66cdc
	mov	r0, #32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bl	func_8066C74
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66cdc:
	.4byte	gCurrentSprite


thumb_func_start func_8066CE0
func_8066CE0:
	push	{r4, lr}
	ldr	r4, .L_66d08
	mov	r0, #34	@ 0x22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bl	func_8066C74
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66d08:
	.4byte	gCurrentSprite


thumb_func_start func_8066D0C
func_8066D0C:
	push	{lr}
	ldr	r1, .L_66d28
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #32
	strb	r0, [r1, #28]
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	bl	func_8066C74
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66d28:
	.4byte	gCurrentSprite


thumb_func_start func_8066D2C
func_8066D2C:
	push	{lr}
	ldr	r1, .L_66d48
	mov	r0, #1
	strb	r0, [r1, #31]
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	bl	func_8066C74
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66d48:
	.4byte	gCurrentSprite


thumb_func_start func_8066D4C
func_8066D4C:
	ldr	r0, .L_66d68
	ldr	r1, .L_66d6c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #32
	strb	r1, [r2, #0]
	add	r0, #40	@ 0x28
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	bx	lr
.L_66d68:
	.4byte	gCurrentSprite
.L_66d6c:
	.4byte	sUnk_83EF980


thumb_func_start func_8066D70
func_8066D70:
	push	{lr}
	ldr	r1, .L_66d88
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8066D4C
	pop	{r0}
	bx	r0
.L_66d88:
	.4byte	gCurrentSprite


thumb_func_start func_8066D8C
func_8066D8C:
	push	{r4, lr}
	ldr	r1, .L_66dbc
	ldrh	r0, [r1, #10]
	add	r0, #4
	strh	r0, [r1, #10]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #0
	beq	.L_66dc4
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_66dca
	ldr	r0, .L_66dc0
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_66dca
	.align	2, 0
.L_66dbc:
	.4byte	gCurrentSprite
.L_66dc0:
	.4byte	sUnk_83EF968
.L_66dc4:
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
.L_66dca:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66e04
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66dfe
	ldrh	r1, [r4, #0]
	ldr	r0, .L_66e08
	and	r0, r1
	mov	r1, #0
	mov	r2, #0
	strh	r0, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	ldr	r0, .L_66e0c
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
.L_66dfe:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_66e04:
	.4byte	gUnk_3000A51
.L_66e08:
	.4byte	0xFFBF
.L_66e0c:
	.4byte	sUnk_83EF968


thumb_func_start func_8066E10
func_8066E10:
	push	{lr}
	ldr	r1, .L_66e28
	ldrh	r2, [r1, #0]
	ldr	r0, .L_66e2c
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8066D4C
	pop	{r0}
	bx	r0
.L_66e28:
	.4byte	gCurrentSprite
.L_66e2c:
	.4byte	0xFFBF


thumb_func_start func_8066E30
func_8066E30:
	push	{r4, lr}
	ldr	r1, .L_66e60
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #0
	beq	.L_66e68
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_66e6e
	ldr	r0, .L_66e64
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	b	.L_66e6e
	.align	2, 0
.L_66e60:
	.4byte	gCurrentSprite
.L_66e64:
	.4byte	sUnk_83EF968
.L_66e68:
	ldrb	r0, [r4, #22]
	add	r0, #1
	strb	r0, [r4, #22]
.L_66e6e:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66ea8
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66ea2
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
	ldr	r0, .L_66eac
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
.L_66ea2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_66ea8:
	.4byte	gUnk_3000A51
.L_66eac:
	.4byte	sUnk_83EF968


thumb_func_start func_8066EB0
func_8066EB0:
	push	{lr}
	ldr	r0, .L_66ed4
	ldr	r1, .L_66ed8
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r1, #1
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #140	@ 0x8c
	strb	r1, [r0, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_66ed4:
	.4byte	gCurrentSprite
.L_66ed8:
	.4byte	sUnk_83EF998


thumb_func_start func_8066EDC
func_8066EDC:
	push	{r4, lr}
	ldr	r4, .L_66f14
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_66f20
	ldrh	r1, [r4, #10]
	add	r0, r1, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66f18
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66f48
	ldrh	r1, [r4, #0]
	ldr	r0, .L_66f1c
	and	r0, r1
	b	.L_66f46
	.align	2, 0
.L_66f14:
	.4byte	gCurrentSprite
.L_66f18:
	.4byte	gUnk_3000A51
.L_66f1c:
	.4byte	0xFFBF
.L_66f20:
	ldrh	r1, [r4, #10]
	sub	r0, r1, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_66f68
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_66f48
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
.L_66f46:
	strh	r0, [r4, #0]
.L_66f48:
	ldr	r2, .L_66f6c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r3, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_66f90
	lsr	r0, r0, #24
	cmp	r0, #130	@ 0x82
	bne	.L_66f70
	mov	r0, #70	@ 0x46
	strb	r0, [r2, #30]
	b	.L_66f94
.L_66f68:
	.4byte	gUnk_3000A51
.L_66f6c:
	.4byte	gCurrentSprite
.L_66f70:
	cmp	r0, #80	@ 0x50
	bne	.L_66f7c
	ldr	r0, .L_66f78
	b	.L_66f82
.L_66f78:
	.4byte	sUnk_83EF9B0
.L_66f7c:
	cmp	r0, #40	@ 0x28
	bne	.L_66f94
	ldr	r0, .L_66f8c
.L_66f82:
	str	r0, [r2, #4]
	strb	r4, [r2, #22]
	mov	r0, #1
	strh	r0, [r2, #20]
	b	.L_66f94
.L_66f8c:
	.4byte	sUnk_83EF9C8
.L_66f90:
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
.L_66f94:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8066F9C
func_8066F9C:
	push	{lr}
	ldr	r0, .L_66ff8
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
	ldr	r0, .L_66ffc
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #22
	strb	r0, [r1, #0]
	mov	r0, #69	@ 0x45
	mov	r2, ip
	strb	r0, [r2, #30]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #26]
	ldrh	r0, [r2, #8]
	sub	r0, #28
	strh	r0, [r2, #8]
	mov	r0, #211	@ 0xd3
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_66ff8:
	.4byte	gCurrentSprite
.L_66ffc:
	.4byte	sUnk_841463C


thumb_func_start func_8067000
func_8067000:
	ldr	r2, .L_67018
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_67016
	strh	r0, [r2, #0]
.L_67016:
	bx	lr
.L_67018:
	.4byte	gCurrentSprite


thumb_func_start func_806701C
func_806701C:
	push	{r4, lr}
	ldr	r0, .L_67080
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r3, #32
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
	ldr	r1, .L_67084
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	ldr	r0, .L_67088
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #29]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67080:
	.4byte	gCurrentSprite
.L_67084:
	.4byte	0xFFFB
.L_67088:
	.4byte	sUnk_83EF9E0


thumb_func_start func_806708C
func_806708C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, .L_67124
	mov	r0, #42	@ 0x2a
	add	r0, r0, r7
	mov	r9, r0
	ldrb	r1, [r0, #0]
	mov	r8, r1
	cmp	r1, #15
	bhi	.L_67102
	mov	r5, r8
	add	r5, #1
	lsl	r5, r5, #4
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	ldr	r4, .L_67128
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r6, [r0, r3]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #18]
.L_67102:
	ldr	r2, .L_6712c
	mov	r1, r8
	lsl	r0, r1, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r3, #0
	ldrsh	r1, [r0, r3]
	ldr	r0, .L_67130
	cmp	r1, r0
	bne	.L_67134
	mov	r0, r8
	sub	r0, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	b	.L_6713c
	.align	2, 0
.L_67124:
	.4byte	gCurrentSprite
.L_67128:
	.4byte	sSinCosTable
.L_6712c:
	.4byte	sUnk_83F04D4
.L_67130:
	.4byte	0x7FFF
.L_67134:
	mov	r0, r8
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
.L_6713c:
	ldrh	r0, [r7, #8]
	add	r0, r0, r5
	strh	r0, [r7, #8]
	ldr	r4, .L_67178
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_6717c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_67186
	strh	r1, [r4, #8]
	mov	r0, #48	@ 0x30
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	mov	r0, #62	@ 0x3e
	bl	m4aSongNumStart
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_67180
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	b	.L_671ec
	.align	2, 0
.L_67178:
	.4byte	gCurrentSprite
.L_6717c:
	.4byte	gSpriteCollisionResult
.L_67180:
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	b	.L_671ec
.L_67186:
	lsl	r0, r5, #16
	asr	r0, r0, #17
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_671b8
	ldrh	r1, [r4, #10]
	add	r1, r1, r5
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
	b	.L_671d6
.L_671b8:
	ldrh	r1, [r4, #10]
	sub	r1, r1, r5
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
.L_671d6:
	ldr	r0, .L_671f8
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_671ec
	ldr	r0, .L_671fc
	ldrh	r1, [r0, #0]
	mov	r2, #64	@ 0x40
	eor	r1, r2
	strh	r1, [r0, #0]
.L_671ec:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_671f8:
	.4byte	gUnk_3000A51
.L_671fc:
	.4byte	gCurrentSprite


thumb_func_start func_8067200
func_8067200:
	ldr	r1, .L_67210
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_67214
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
.L_67210:
	.4byte	gCurrentSprite
.L_67214:
	.4byte	0xFCFF


thumb_func_start func_8067218
func_8067218:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_67234
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_67230
	ldr	r1, .L_67238
	mov	r0, #27
	strb	r0, [r1, #28]
.L_67230:
	pop	{r0}
	bx	r0
.L_67234:
	.4byte	gSpriteCollisionResult
.L_67238:
	.4byte	gCurrentSprite


thumb_func_start func_806723C
func_806723C:
	push	{lr}
	sub	sp, #4
	ldr	r2, .L_67294
	mov	r1, #0
	strb	r1, [r2, #31]
	mov	r0, #115	@ 0x73
	strb	r0, [r2, #28]
	ldr	r0, .L_67298
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	sub	r1, #4
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #68	@ 0x44
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #69	@ 0x45
	strb	r0, [r2, #30]
	ldrh	r3, [r2, #8]
	sub	r3, #48	@ 0x30
	ldrh	r0, [r2, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #129	@ 0x81
	bl	m4aSongNumStart
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67294:
	.4byte	gCurrentSprite
.L_67298:
	.4byte	sUnk_83EF9F0


thumb_func_start func_806729C
func_806729C:
	push	{lr}
	ldr	r1, .L_672bc
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrb	r0, [r2, #0]
	add	r2, r1, #0
	cmp	r0, #9
	bhi	.L_6731a
	lsl	r0, r0, #2
	ldr	r1, .L_672c0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_672bc:
	.4byte	gCurrentSprite
.L_672c0:
	.4byte	.L_672c4
.L_672c4:
	.4byte	.L_67316
	.4byte	.L_6731a
	.4byte	.L_6731a
	.4byte	.L_6731a
	.4byte	.L_6731a
	.4byte	.L_6731a
	.4byte	.L_67306
	.4byte	.L_672fc
	.4byte	.L_672f6
	.4byte	.L_672ec
.L_672ec:
	ldrh	r0, [r2, #8]
	sub	r0, #72	@ 0x48
	ldrh	r1, [r2, #10]
	add	r1, #32
	b	.L_6730e
.L_672f6:
	ldrh	r0, [r2, #8]
	sub	r0, #16
	b	.L_6730a
.L_672fc:
	ldrh	r0, [r2, #8]
	sub	r0, #16
	ldrh	r1, [r2, #10]
	add	r1, #32
	b	.L_6730e
.L_67306:
	ldrh	r0, [r2, #8]
	sub	r0, #72	@ 0x48
.L_6730a:
	ldrh	r1, [r2, #10]
	sub	r1, #32
.L_6730e:
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_6731a
.L_67316:
	mov	r0, #0
	strh	r0, [r2, #0]
.L_6731a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8067320
func_8067320:
	ldr	r0, .L_67330
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_67330:
	.4byte	gCurrentSprite


thumb_func_start func_8067334
func_8067334:
	ldr	r0, .L_67344
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_67344:
	.4byte	gCurrentSprite


thumb_func_start func_8067348
func_8067348:
	ldr	r0, .L_67358
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_67358:
	.4byte	gCurrentSprite


thumb_func_start func_806735C
func_806735C:
	ldr	r1, .L_67374
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_67374:
	.4byte	gCurrentSprite


thumb_func_start func_8067378
func_8067378:
	ldr	r1, .L_67390
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_67390:
	.4byte	gCurrentSprite


thumb_func_start func_8067394
func_8067394:
	ldr	r2, .L_673b8
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #48	@ 0x30
	bhi	.L_673b6
	mov	r0, #114	@ 0x72
	strb	r0, [r2, #28]
.L_673b6:
	bx	lr
.L_673b8:
	.4byte	gCurrentSprite


thumb_func_start func_80673BC
func_80673BC:
	push	{lr}
	ldr	r1, .L_673cc
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8067394
	pop	{r0}
	bx	r0
.L_673cc:
	.4byte	gCurrentSprite


thumb_func_start func_80673D0
func_80673D0:
	push	{lr}
	ldr	r1, .L_673e0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8067394
	pop	{r0}
	bx	r0
.L_673e0:
	.4byte	gCurrentSprite


thumb_func_start func_80673E4
func_80673E4:
	push	{lr}
	ldr	r0, .L_673f8
	ldr	r1, .L_673fc
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_67400
	bl	func_80673BC
	b	.L_67404
.L_673f8:
	.4byte	gCurrentSprite
.L_673fc:
	.4byte	gWarioData
.L_67400:
	bl	func_80673D0
.L_67404:
	pop	{r0}
	bx	r0


thumb_func_start func_8067408
func_8067408:
	push	{r4, lr}
	ldr	r3, .L_67434
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	ldrb	r0, [r3, #29]
	cmp	r0, #48	@ 0x30
	bls	.L_6742c
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r2, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L_67438
.L_6742c:
	mov	r0, #114	@ 0x72
	strb	r0, [r3, #28]
	b	.L_67460
	.align	2, 0
.L_67434:
	.4byte	gCurrentSprite
.L_67438:
	add	r0, r2, #0
	orr	r0, r1
	mov	r2, #0
	ldr	r1, .L_67468
	and	r0, r1
	strh	r0, [r3, #0]
	ldr	r0, .L_6746c
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #199	@ 0xc7
	bl	m4aSongNumStart
.L_67460:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67468:
	.4byte	0xFDFF
.L_6746c:
	.4byte	sUnk_83EF9F0


thumb_func_start func_8067470
func_8067470:
	push	{lr}
	ldr	r1, .L_67488
	ldrh	r2, [r1, #0]
	ldr	r0, .L_6748c
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8067408
	pop	{r0}
	bx	r0
.L_67488:
	.4byte	gCurrentSprite
.L_6748c:
	.4byte	0xFFBF


thumb_func_start func_8067490
func_8067490:
	push	{lr}
	ldr	r1, .L_674a8
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8067408
	pop	{r0}
	bx	r0
.L_674a8:
	.4byte	gCurrentSprite


thumb_func_start func_80674AC
func_80674AC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_67584
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	ldr	r6, .L_67588
	mov	r0, #39	@ 0x27
	add	r0, r0, r7
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	add	r1, r7, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #24
	bls	.L_6754a
	sub	r0, #1
	strb	r0, [r1, #0]
.L_6754a:
	ldrb	r0, [r1, #0]
	lsr	r5, r0, #1
	add	r4, r7, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_67590
	ldrh	r0, [r7, #8]
	sub	r0, r0, r5
	strh	r0, [r7, #8]
	add	r1, r7, #0
	add	r1, #35	@ 0x23
	ldrb	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r7, #10]
	bl	func_8023BFC
	ldr	r0, .L_6758c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_675b4
	mov	r0, #1
	strb	r0, [r4, #0]
	b	.L_6762a
	.align	2, 0
.L_67584:
	.4byte	gCurrentSprite
.L_67588:
	.4byte	sSinCosTable
.L_6758c:
	.4byte	gUnk_3000A51
.L_67590:
	ldrh	r0, [r7, #8]
	add	r0, r0, r5
	strh	r0, [r7, #8]
	ldrh	r0, [r7, #8]
	ldrh	r1, [r7, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_675b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_675b4
	strh	r1, [r7, #8]
	mov	r0, #107	@ 0x6b
	strb	r0, [r7, #28]
	b	.L_6762a
.L_675b0:
	.4byte	gSpriteCollisionResult
.L_675b4:
	ldr	r4, .L_675e8
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_675ec
	ldrh	r1, [r4, #10]
	sub	r1, r1, r5
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
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #8
	b	.L_67612
.L_675e8:
	.4byte	gCurrentSprite
.L_675ec:
	ldrh	r1, [r4, #10]
	add	r1, r1, r5
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
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #8
.L_67612:
	strb	r0, [r1, #0]
	ldr	r0, .L_67634
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_6762a
	ldr	r0, .L_67638
	ldrh	r1, [r0, #0]
	mov	r2, #64	@ 0x40
	eor	r1, r2
	strh	r1, [r0, #0]
.L_6762a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_67634:
	.4byte	gUnk_3000A51
.L_67638:
	.4byte	gCurrentSprite


thumb_func_start func_806763C
func_806763C:
	push	{r4, r5, lr}
	ldr	r3, .L_6769c
	ldrh	r0, [r3, #0]
	ldr	r5, .L_676a0
	and	r5, r0
	mov	r4, #0
	mov	r2, #0
	strh	r5, [r3, #0]
	strb	r4, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r0, .L_676a4
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #28
	strb	r0, [r3, #28]
	add	r1, #1
	mov	r0, #10
	strb	r0, [r1, #0]
	ldr	r1, .L_676a8
	ldrh	r0, [r3, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_676b0
	ldr	r0, .L_676ac
	and	r0, r5
	b	.L_676b6
.L_6769c:
	.4byte	gCurrentSprite
.L_676a0:
	.4byte	0xFFFB
.L_676a4:
	.4byte	sUnk_83EFFAC
.L_676a8:
	.4byte	gWarioData
.L_676ac:
	.4byte	0xFFBF
.L_676b0:
	mov	r1, #64	@ 0x40
	add	r0, r5, #0
	orr	r0, r1
.L_676b6:
	strh	r0, [r3, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80676C0
func_80676C0:
	ldr	r2, .L_676dc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_676da
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #30
	strb	r0, [r1, #0]
.L_676da:
	bx	lr
.L_676dc:
	.4byte	gCurrentSprite


thumb_func_start func_80676E0
func_80676E0:
	push	{r4, r5, lr}
	ldr	r0, .L_67738
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_67702
	sub	r0, r1, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_67702
	mov	r0, #1
	strb	r0, [r4, #30]
	strb	r1, [r4, #27]
.L_67702:
	add	r5, r4, #0
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_67744
	ldrh	r1, [r5, #10]
	add	r0, r1, #4
	strh	r0, [r5, #10]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_6773c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_6776c
	ldrh	r1, [r5, #0]
	ldr	r0, .L_67740
	and	r0, r1
	strh	r0, [r5, #0]
	b	.L_6776c
.L_67738:
	.4byte	gCurrentSprite
.L_6773c:
	.4byte	gUnk_3000A51
.L_67740:
	.4byte	0xFFBF
.L_67744:
	ldrh	r1, [r4, #10]
	sub	r0, r1, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_67784
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_6776c
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
.L_6776c:
	ldr	r0, .L_67788
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_6777e
	mov	r0, #202	@ 0xca
	bl	m4aSongNumStart
.L_6777e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_67784:
	.4byte	gUnk_3000A51
.L_67788:
	.4byte	gMainTimer


thumb_func_start func_806778C
func_806778C:
	push	{lr}
	sub	sp, #4
	ldr	r1, .L_677b0
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_677b4
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #15
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r0}
	bx	r0
.L_677b0:
	.4byte	gUnk_3000A5B
.L_677b4:
	.4byte	gCurrentSprite


thumb_func_start func_80677B8
func_80677B8:
	push	{lr}
	ldr	r2, .L_677d8
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	bl	func_806778C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_677d8:
	.4byte	gCurrentSprite


thumb_func_start func_80677DC
func_80677DC:
	push	{r4, lr}
	ldr	r4, .L_677fc
	mov	r0, #32
	strb	r0, [r4, #28]
	bl	func_80677B8
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
.L_677fc:
	.4byte	gCurrentSprite


thumb_func_start func_8067800
func_8067800:
	push	{r4, lr}
	ldr	r4, .L_67820
	mov	r0, #34	@ 0x22
	strb	r0, [r4, #28]
	bl	func_80677B8
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r4}
	pop	{r0}
	bx	r0
.L_67820:
	.4byte	gCurrentSprite


thumb_func_start func_8067824
func_8067824:
	ldr	r1, .L_67834
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bx	lr
.L_67834:
	.4byte	gCurrentSprite


thumb_func_start func_8067838
func_8067838:
	push	{r4, lr}
	ldr	r4, .L_67884
	ldrh	r0, [r4, #10]
	add	r0, #8
	strh	r0, [r4, #10]
	ldr	r0, .L_67888
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_67854
	mov	r0, #202	@ 0xca
	bl	m4aSongNumStart
.L_67854:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_6788c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_6787c
	ldrh	r0, [r4, #0]
	ldr	r1, .L_67890
	and	r1, r0
	strh	r1, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
.L_6787c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67884:
	.4byte	gCurrentSprite
.L_67888:
	.4byte	gMainTimer
.L_6788c:
	.4byte	gUnk_3000A51
.L_67890:
	.4byte	0xFFBF


thumb_func_start func_8067894
func_8067894:
	ldr	r1, .L_678a4
	ldrh	r2, [r1, #0]
	ldr	r0, .L_678a8
	and	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bx	lr
.L_678a4:
	.4byte	gCurrentSprite
.L_678a8:
	.4byte	0xFFBF


thumb_func_start func_80678AC
func_80678AC:
	push	{r4, lr}
	ldr	r4, .L_678f8
	ldrh	r0, [r4, #10]
	sub	r0, #8
	strh	r0, [r4, #10]
	ldr	r0, .L_678fc
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_678c8
	mov	r0, #202	@ 0xca
	bl	m4aSongNumStart
.L_678c8:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_67900
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_678f0
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
.L_678f0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_678f8:
	.4byte	gCurrentSprite
.L_678fc:
	.4byte	gMainTimer
.L_67900:
	.4byte	gUnk_3000A51


thumb_func_start func_8067904
func_8067904:
	push	{r4, lr}
	ldr	r0, .L_67974
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_67978
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_6797c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #15
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #24]
	lsl	r0, r0, #4
	mvn	r0, r0
	add	r1, #39	@ 0x27
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67974:
	.4byte	gCurrentSprite
.L_67978:
	.4byte	0xFFFB
.L_6797c:
	.4byte	sUnk_841488C


thumb_func_start func_8067980
func_8067980:
	ldr	r2, .L_6799c
	add	r3, r2, #0
	add	r3, #40	@ 0x28
	ldrb	r1, [r3, #0]
	ldrb	r0, [r2, #24]
	lsl	r0, r0, #4
	add	r0, #64	@ 0x40
	cmp	r1, r0
	bge	.L_679a0
	add	r0, r1, #0
	add	r0, #16
	strb	r0, [r3, #0]
	b	.L_679a4
	.align	2, 0
.L_6799c:
	.4byte	gCurrentSprite
.L_679a0:
	mov	r0, #16
	strb	r0, [r2, #28]
.L_679a4:
	bx	lr
	.align	2, 0


thumb_func_start func_80679A8
func_80679A8:
	push	{r4, r5, lr}
	ldr	r0, .L_679f0
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_67a50
	ldr	r1, .L_679f4
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r1
	cmp	r0, #0
	beq	.L_67a4e
	add	r5, r1, #0
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_67a00
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	add	r2, r4, #0
	and	r2, r0
	cmp	r2, #0
	beq	.L_679f8
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #4
	strb	r0, [r1, #0]
	b	.L_67a22
.L_679f0:
	.4byte	gBossInteractionState
.L_679f4:
	.4byte	gCurrentSprite
.L_679f8:
	mov	r0, #16
	strb	r0, [r3, #0]
	strb	r2, [r5, #0]
	b	.L_67a22
.L_67a00:
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	and	r0, r4
	cmp	r0, #0
	beq	.L_67a1a
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #4
	strb	r0, [r1, #0]
	b	.L_67a22
.L_67a1a:
	mov	r0, #16
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r5, #0]
.L_67a22:
	mov	r0, ip
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	mov	r1, #255	@ 0xff
	sub	r1, r1, r0
	lsl	r1, r1, #24
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #20
	and	r0, r1
	lsr	r0, r0, #24
	mov	r1, ip
	ldrb	r1, [r1, #24]
	cmp	r0, r1
	bne	.L_67a46
	mov	r0, #2
	mov	r2, ip
	strb	r0, [r2, #27]
	b	.L_67a50
.L_67a46:
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #27]
	b	.L_67a50
.L_67a4e:
	strh	r0, [r1, #0]
.L_67a50:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteGoldenDiva
SpriteGoldenDiva:
	push	{lr}
	bl	func_8063384
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownEC
SpriteUnknownEC:
	push	{r4, lr}
	ldr	r0, .L_67a7c
	ldrb	r0, [r0, #28]
	cmp	r0, #122	@ 0x7a
	bls	.L_67a70
	b	.L_67d20
.L_67a70:
	lsl	r0, r0, #2
	ldr	r1, .L_67a80
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_67a7c:
	.4byte	gCurrentSprite
.L_67a80:
	.4byte	.L_67a84
.L_67a84:
	.4byte	.L_67c70
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67cb6
	.4byte	.L_67cbc
	.4byte	.L_67cc2
	.4byte	.L_67cc6
	.4byte	.L_67ccc
	.4byte	.L_67d20
	.4byte	.L_67cd2
	.4byte	.L_67cd8
	.4byte	.L_67d20
	.4byte	.L_67ce4
	.4byte	.L_67d20
	.4byte	.L_67cea
	.4byte	.L_67d20
	.4byte	.L_67cde
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67cf0
	.4byte	.L_67cfa
	.4byte	.L_67cf6
	.4byte	.L_67cfa
	.4byte	.L_67d00
	.4byte	.L_67d0a
	.4byte	.L_67d06
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d10
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67cf0
	.4byte	.L_67cf6
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67cf6
	.4byte	.L_67cf0
	.4byte	.L_67d20
	.4byte	.L_67d20
	.4byte	.L_67d16
	.4byte	.L_67c8c
	.4byte	.L_67c92
	.4byte	.L_67c98
	.4byte	.L_67c9e
	.4byte	.L_67ca4
	.4byte	.L_67cb0
	.4byte	.L_67c76
	.4byte	.L_67c7a
	.4byte	.L_67c80
	.4byte	.L_67c86
	.4byte	.L_67caa
	.4byte	.L_67d20
	.4byte	.L_67d1c
.L_67c70:
	bl	func_80634B4
	b	.L_67d86
.L_67c76:
	bl	func_8063570
.L_67c7a:
	bl	func_806360C
	b	.L_67d20
.L_67c80:
	bl	func_8063888
	b	.L_67d20
.L_67c86:
	bl	func_8063940
	b	.L_67d20
.L_67c8c:
	bl	func_8063964
	b	.L_67d86
.L_67c92:
	bl	func_8063A00
	b	.L_67d20
.L_67c98:
	bl	func_8063ABC
	b	.L_67d20
.L_67c9e:
	bl	func_8063B98
	b	.L_67d20
.L_67ca4:
	bl	func_8063C04
	b	.L_67d20
.L_67caa:
	bl	func_8063CF8
	b	.L_67d20
.L_67cb0:
	bl	func_8063D58
	b	.L_67d20
.L_67cb6:
	bl	func_8063DB8
	b	.L_67d20
.L_67cbc:
	bl	func_8063E00
	b	.L_67d20
.L_67cc2:
	bl	func_8063E70
.L_67cc6:
	bl	func_8063EAC
	b	.L_67d20
.L_67ccc:
	bl	func_8063FF4
	b	.L_67d20
.L_67cd2:
	bl	func_80640CC
	b	.L_67d20
.L_67cd8:
	bl	func_8064168
	b	.L_67d20
.L_67cde:
	bl	func_80642CC
	b	.L_67d20
.L_67ce4:
	bl	func_80643B8
	b	.L_67d20
.L_67cea:
	bl	func_8064498
	b	.L_67d20
.L_67cf0:
	bl	func_8064570
	b	.L_67cfa
.L_67cf6:
	bl	func_806459C
.L_67cfa:
	bl	func_80645CC
	b	.L_67d20
.L_67d00:
	bl	func_8064778
	b	.L_67d0a
.L_67d06:
	bl	func_80647C0
.L_67d0a:
	bl	func_806480C
	b	.L_67d20
.L_67d10:
	bl	func_806487C
	b	.L_67d20
.L_67d16:
	bl	func_8064AF0
	b	.L_67d20
.L_67d1c:
	bl	func_8064BC0
.L_67d20:
	ldr	r0, .L_67d50
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bhi	.L_67d5c
	ldr	r4, .L_67d54
	ldr	r2, .L_67d58
	mov	r0, #41	@ 0x29
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r3, #44	@ 0x2c
	add	r1, r0, #0
	mul	r1, r3
	add	r1, r1, r4
	ldrh	r0, [r2, #8]
	add	r0, #56	@ 0x38
	strh	r0, [r1, #8]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	mul	r0, r3
	add	r0, r0, r4
	ldrh	r1, [r2, #10]
	strh	r1, [r0, #10]
	b	.L_67d86
.L_67d50:
	.4byte	gBossInteractionState
.L_67d54:
	.4byte	gSpriteData
.L_67d58:
	.4byte	gCurrentSprite
.L_67d5c:
	cmp	r0, #13
	beq	.L_67d86
	ldr	r2, .L_67d8c
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_67d86
	ldr	r0, .L_67d90
	ldrh	r1, [r0, #0]
	mov	r0, #152	@ 0x98
	lsl	r0, r0, #5
	cmp	r1, r0
	bne	.L_67d86
	ldr	r0, .L_67d94
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	beq	.L_67d86
	mov	r0, #80	@ 0x50
	strb	r0, [r2, #0]
	mov	r0, #188	@ 0xbc
	bl	m4aSongNumStart
.L_67d86:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_67d8c:
	.4byte	gUnk_3000A5C
.L_67d90:
	.4byte	gWarioData
.L_67d94:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownED
SpriteUnknownED:
	push	{r4, lr}
	ldr	r4, .L_67dcc
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_67da6
	bl	func_80652A4
.L_67da6:
	ldr	r2, .L_67dd0
	add	r3, r4, #0
	add	r3, #42	@ 0x2a
	ldrb	r0, [r3, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	add	r0, #192	@ 0xc0
	strh	r0, [r4, #8]
	ldrb	r0, [r3, #0]
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	strh	r0, [r4, #10]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67dcc:
	.4byte	gCurrentSprite
.L_67dd0:
	.4byte	gSpriteData


thumb_func_start SpriteUnknownEE
SpriteUnknownEE:
	push	{r4, lr}
	ldr	r0, .L_67de4
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_67de8
	cmp	r0, #1
	beq	.L_67dee
	b	.L_67df2
.L_67de4:
	.4byte	gCurrentSprite
.L_67de8:
	bl	func_8065314
	b	.L_67e2c
.L_67dee:
	bl	func_8065380
.L_67df2:
	ldr	r1, .L_67e34
	ldr	r3, .L_67e38
	mov	r0, #42	@ 0x2a
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	add	r0, #192	@ 0xc0
	strh	r0, [r1, #8]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #10]
	strh	r0, [r1, #10]
	ldr	r0, .L_67e3c
	ldrb	r0, [r0, #0]
	sub	r0, #6
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	bhi	.L_67e2c
	ldr	r1, .L_67e40
	ldr	r2, .L_67e44
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_67e2c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_67e34:
	.4byte	gCurrentSprite
.L_67e38:
	.4byte	gSpriteData
.L_67e3c:
	.4byte	gBossInteractionState
.L_67e40:
	.4byte	0x4000052
.L_67e44:
	.4byte	0x90B


thumb_func_start SpriteUnknownF1
SpriteUnknownF1:
	push	{r4, lr}
	ldr	r1, .L_67e60
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #1
	beq	.L_67e70
	cmp	r0, #1
	bgt	.L_67e64
	cmp	r0, #0
	beq	.L_67e6a
	b	.L_67e7a
.L_67e60:
	.4byte	gCurrentSprite
.L_67e64:
	cmp	r0, #17
	beq	.L_67e76
	b	.L_67e7a
.L_67e6a:
	bl	func_8065510
	b	.L_67e9e
.L_67e70:
	bl	func_8065574
	b	.L_67e7a
.L_67e76:
	bl	func_806558C
.L_67e7a:
	ldr	r1, .L_67ea4
	ldr	r3, .L_67ea8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	add	r0, #56	@ 0x38
	strh	r0, [r1, #8]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #10]
	strh	r0, [r1, #10]
.L_67e9e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_67ea4:
	.4byte	gCurrentSprite
.L_67ea8:
	.4byte	gSpriteData


thumb_func_start SpriteUnknownEF
SpriteUnknownEF:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_67ecc
	ldrb	r0, [r4, #28]
	cmp	r0, #51	@ 0x33
	beq	.L_67f14
	cmp	r0, #51	@ 0x33
	bgt	.L_67ed6
	cmp	r0, #16
	beq	.L_67f08
	cmp	r0, #16
	bgt	.L_67ed0
	cmp	r0, #0
	beq	.L_67f02
	b	.L_67f18
	.align	2, 0
.L_67ecc:
	.4byte	gCurrentSprite
.L_67ed0:
	cmp	r0, #18
	beq	.L_67f0e
	b	.L_67f18
.L_67ed6:
	cmp	r0, #53	@ 0x35
	beq	.L_67f14
	cmp	r0, #53	@ 0x35
	blt	.L_67f18
	cmp	r0, #106	@ 0x6a
	bgt	.L_67f18
	cmp	r0, #105	@ 0x69
	blt	.L_67f18
	bl	func_8062C78
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #1
	bl	VoiceSetPlay
	b	.L_67f14
.L_67f02:
	bl	func_8065398
	b	.L_67f18
.L_67f08:
	bl	func_8065400
	b	.L_67f18
.L_67f0e:
	bl	func_8065494
	b	.L_67f18
.L_67f14:
	bl	func_8065480
.L_67f18:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownF0
SpriteUnknownF0:
	push	{lr}
	ldr	r2, .L_67f40
	ldrh	r1, [r2, #0]
	ldr	r0, .L_67f44
	and	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #28]
	cmp	r0, #117	@ 0x75
	bls	.L_67f34
	b	.L_682c8
.L_67f34:
	lsl	r0, r0, #2
	ldr	r1, .L_67f48
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_67f40:
	.4byte	gCurrentSprite
.L_67f44:
	.4byte	0xFF7F
.L_67f48:
	.4byte	.L_67f4c
.L_67f4c:
	.4byte	.L_68124
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_68140
	.4byte	.L_68144
	.4byte	.L_6814a
	.4byte	.L_6814e
	.4byte	.L_68154
	.4byte	.L_68158
	.4byte	.L_682c8
	.4byte	.L_6815e
	.4byte	.L_68140
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_68164
	.4byte	.L_682c8
	.4byte	.L_68164
	.4byte	.L_68168
	.4byte	.L_68188
	.4byte	.L_682c8
	.4byte	.L_6818e
	.4byte	.L_682c8
	.4byte	.L_68188
	.4byte	.L_682c8
	.4byte	.L_6818e
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_6816e
	.4byte	.L_68172
	.4byte	.L_68178
	.4byte	.L_6817c
	.4byte	.L_68140
	.4byte	.L_682c8
	.4byte	.L_68182
	.4byte	.L_682c8
	.4byte	.L_68188
	.4byte	.L_681c0
	.4byte	.L_6818e
	.4byte	.L_681a2
	.4byte	.L_68194
	.4byte	.L_68198
	.4byte	.L_6819e
	.4byte	.L_681a2
	.4byte	.L_681a8
	.4byte	.L_681ac
	.4byte	.L_681b2
	.4byte	.L_681b6
	.4byte	.L_681bc
	.4byte	.L_681c0
	.4byte	.L_681c6
	.4byte	.L_681ca
	.4byte	.L_681d0
	.4byte	.L_681e0
	.4byte	.L_681d6
	.4byte	.L_681ea
	.4byte	.L_681dc
	.4byte	.L_681e0
	.4byte	.L_681e6
	.4byte	.L_681ea
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_68188
	.4byte	.L_6818e
	.4byte	.L_681f0
	.4byte	.L_681f6
	.4byte	.L_681fc
	.4byte	.L_68202
	.4byte	.L_68214
	.4byte	.L_6821a
	.4byte	.L_68208
	.4byte	.L_6820e
	.4byte	.L_68230
	.4byte	.L_68238
	.4byte	.L_68278
	.4byte	.L_68280
	.4byte	.L_68242
	.4byte	.L_6824e
	.4byte	.L_6828a
	.4byte	.L_68296
	.4byte	.L_68254
	.4byte	.L_6825c
	.4byte	.L_6829c
	.4byte	.L_682a4
	.4byte	.L_68266
	.4byte	.L_68272
	.4byte	.L_682ae
	.4byte	.L_682ba
	.4byte	.L_6818e
	.4byte	.L_68188
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_6812a
	.4byte	.L_68130
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_682c8
	.4byte	.L_68136
	.4byte	.L_6813a
.L_68124:
	bl	func_80656A0
	b	.L_682f6
.L_6812a:
	bl	func_8065784
	b	.L_682f6
.L_68130:
	bl	func_80657FC
	b	.L_682f6
.L_68136:
	bl	func_806586C
.L_6813a:
	bl	func_80658C8
	b	.L_682f6
.L_68140:
	bl	func_80659E8
.L_68144:
	bl	func_8065A18
	b	.L_682f6
.L_6814a:
	bl	func_8065A54
.L_6814e:
	bl	func_8065A70
	b	.L_682f6
.L_68154:
	bl	func_8065B14
.L_68158:
	bl	func_8065B3C
	b	.L_682f6
.L_6815e:
	bl	func_8065B78
	b	.L_682f6
.L_68164:
	bl	func_8065BB4
.L_68168:
	bl	func_8023EE0
	b	.L_682f6
.L_6816e:
	bl	func_8065BC8
.L_68172:
	bl	func_8024478
	b	.L_682f6
.L_68178:
	bl	func_8065BDC
.L_6817c:
	bl	func_802449C
	b	.L_682f6
.L_68182:
	bl	func_8065C7C
	b	.L_682f6
.L_68188:
	bl	func_8065C54
	b	.L_681c0
.L_6818e:
	bl	func_8065C68
	b	.L_681a2
.L_68194:
	bl	func_8024688
.L_68198:
	bl	func_80246B8
	b	.L_682f6
.L_6819e:
	bl	func_802473C
.L_681a2:
	bl	func_802476C
	b	.L_682f6
.L_681a8:
	bl	func_80247F0
.L_681ac:
	bl	func_8024820
	b	.L_682f6
.L_681b2:
	bl	func_80248A4
.L_681b6:
	bl	func_80248D4
	b	.L_682f6
.L_681bc:
	bl	func_8024958
.L_681c0:
	bl	func_8024988
	b	.L_682f6
.L_681c6:
	bl	func_8024A0C
.L_681ca:
	bl	func_8024A3C
	b	.L_682f6
.L_681d0:
	bl	func_8024AC0
	b	.L_681e0
.L_681d6:
	bl	func_8024BEC
	b	.L_681ea
.L_681dc:
	bl	func_8065BF0
.L_681e0:
	bl	func_8024AD4
	b	.L_682f6
.L_681e6:
	bl	func_8065C0C
.L_681ea:
	bl	func_8024C00
	b	.L_682f6
.L_681f0:
	bl	func_8065CA0
	b	.L_682f6
.L_681f6:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_682f6
.L_681fc:
	bl	func_8065CAC
	b	.L_682f6
.L_68202:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_682f6
.L_68208:
	bl	func_8065CB8
	b	.L_682f6
.L_6820e:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_6821e
.L_68214:
	bl	func_8065CC8
	b	.L_682f6
.L_6821a:
	bl	SpriteUtilCarryingSpriteLeft
.L_6821e:
	ldr	r1, .L_6822c
	mov	r0, #0
	strb	r0, [r1, #29]
	bl	func_8062D98
	b	.L_682f6
	.align	2, 0
.L_6822c:
	.4byte	gCurrentSprite
.L_68230:
	mov	r1, #0
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68238:
	bl	SpriteUtilThrownLeftSoft
	bl	func_8062D98
	b	.L_682f6
.L_68242:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #29]
	bl	func_8065CD8
.L_6824e:
	bl	SpriteUtilThrownLeftHard
	b	.L_682be
.L_68254:
	mov	r1, #0
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_6825c:
	bl	SpriteUtilThrownUpLeftSoft
	bl	func_8062D98
	b	.L_682f6
.L_68266:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	mov	r0, #18
	strb	r0, [r2, #29]
	bl	func_8065CD8
.L_68272:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_682be
.L_68278:
	mov	r1, #0
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68280:
	bl	SpriteUtilThrownRightSoft
	bl	func_8062D98
	b	.L_682f6
.L_6828a:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	mov	r0, #2
	strb	r0, [r2, #29]
	bl	func_8065CD8
.L_68296:
	bl	SpriteUtilThrownRightHard
	b	.L_682be
.L_6829c:
	mov	r1, #0
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_682a4:
	bl	SpriteUtilThrownUpRightSoft
	bl	func_8062D98
	b	.L_682f6
.L_682ae:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	mov	r0, #17
	strb	r0, [r2, #29]
	bl	func_8065CD8
.L_682ba:
	bl	SpriteUtilThrownUpRightHard
.L_682be:
	bl	func_8065CE8
	bl	func_8062D98
	b	.L_682f6
.L_682c8:
	ldrb	r1, [r2, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_682da
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_682e0
.L_682da:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_682e0:
	strb	r0, [r1, #0]
	ldrb	r1, [r2, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_682f2
	bl	func_8024AC0
	b	.L_682f6
.L_682f2:
	bl	func_8024BEC
.L_682f6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownF2
SpriteUnknownF2:
	push	{lr}
	ldr	r2, .L_68320
	ldrh	r0, [r2, #0]
	ldr	r1, .L_68324
	and	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_68328
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #12
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	b	.L_68334
	.align	2, 0
.L_68320:
	.4byte	gCurrentSprite
.L_68324:
	.4byte	0xFF7F
.L_68328:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
.L_68334:
	strb	r0, [r1, #0]
	ldrb	r0, [r2, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_6833e
	b	.L_686d8
.L_6833e:
	lsl	r0, r0, #2
	ldr	r1, .L_68348
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_68348:
	.4byte	.L_6834c
.L_6834c:
	.4byte	.L_68514
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_68526
	.4byte	.L_6852c
	.4byte	.L_68532
	.4byte	.L_68536
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_68526
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_6853c
	.4byte	.L_686d8
	.4byte	.L_6853c
	.4byte	.L_68540
	.4byte	.L_68560
	.4byte	.L_686d8
	.4byte	.L_68566
	.4byte	.L_686d8
	.4byte	.L_68560
	.4byte	.L_686d8
	.4byte	.L_68566
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_68546
	.4byte	.L_6854a
	.4byte	.L_68550
	.4byte	.L_68554
	.4byte	.L_68526
	.4byte	.L_686d8
	.4byte	.L_6855a
	.4byte	.L_686d8
	.4byte	.L_68560
	.4byte	.L_68598
	.4byte	.L_68566
	.4byte	.L_6857a
	.4byte	.L_6856c
	.4byte	.L_68570
	.4byte	.L_68576
	.4byte	.L_6857a
	.4byte	.L_68580
	.4byte	.L_68584
	.4byte	.L_6858a
	.4byte	.L_6858e
	.4byte	.L_68594
	.4byte	.L_68598
	.4byte	.L_6859e
	.4byte	.L_685a2
	.4byte	.L_685a8
	.4byte	.L_685b8
	.4byte	.L_685ae
	.4byte	.L_685c2
	.4byte	.L_685b4
	.4byte	.L_685b8
	.4byte	.L_685be
	.4byte	.L_685c2
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_68560
	.4byte	.L_68566
	.4byte	.L_685c8
	.4byte	.L_685ce
	.4byte	.L_685d4
	.4byte	.L_685da
	.4byte	.L_685ec
	.4byte	.L_685f2
	.4byte	.L_685e0
	.4byte	.L_685e6
	.4byte	.L_685f8
	.4byte	.L_68606
	.4byte	.L_68668
	.4byte	.L_68676
	.4byte	.L_68614
	.4byte	.L_68622
	.4byte	.L_68684
	.4byte	.L_68692
	.4byte	.L_68630
	.4byte	.L_6863e
	.4byte	.L_686a0
	.4byte	.L_686ae
	.4byte	.L_6864c
	.4byte	.L_6865a
	.4byte	.L_686bc
	.4byte	.L_686ca
	.4byte	.L_68566
	.4byte	.L_68560
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_686d8
	.4byte	.L_6851a
	.4byte	.L_686d8
	.4byte	.L_68520
.L_68514:
	bl	func_8065D7C
	b	.L_6870c
.L_6851a:
	bl	func_8065E04
	b	.L_6870c
.L_68520:
	bl	func_8065E54
	b	.L_6870c
.L_68526:
	bl	func_8065EE4
	b	.L_6870c
.L_6852c:
	bl	func_8065F28
	b	.L_6870c
.L_68532:
	bl	func_8065EA4
.L_68536:
	bl	func_8065EC8
	b	.L_6870c
.L_6853c:
	bl	func_8065F80
.L_68540:
	bl	func_8023EE0
	b	.L_6870c
.L_68546:
	bl	func_8065F94
.L_6854a:
	bl	func_8024478
	b	.L_6870c
.L_68550:
	bl	func_8065FA8
.L_68554:
	bl	func_802449C
	b	.L_6870c
.L_6855a:
	bl	func_8066048
	b	.L_6870c
.L_68560:
	bl	func_8066020
	b	.L_68598
.L_68566:
	bl	func_8066034
	b	.L_6857a
.L_6856c:
	bl	func_8024688
.L_68570:
	bl	func_80246B8
	b	.L_6870c
.L_68576:
	bl	func_802473C
.L_6857a:
	bl	func_802476C
	b	.L_6870c
.L_68580:
	bl	func_80247F0
.L_68584:
	bl	func_8024820
	b	.L_6870c
.L_6858a:
	bl	func_80248A4
.L_6858e:
	bl	func_80248D4
	b	.L_6870c
.L_68594:
	bl	func_8024958
.L_68598:
	bl	func_8024988
	b	.L_6870c
.L_6859e:
	bl	func_8024A0C
.L_685a2:
	bl	func_8024A3C
	b	.L_6870c
.L_685a8:
	bl	func_8024AC0
	b	.L_685b8
.L_685ae:
	bl	func_8024BEC
	b	.L_685c2
.L_685b4:
	bl	func_8065FBC
.L_685b8:
	bl	func_8024AD4
	b	.L_6870c
.L_685be:
	bl	func_8065FD8
.L_685c2:
	bl	func_8024C00
	b	.L_6870c
.L_685c8:
	bl	func_806606C
	b	.L_6870c
.L_685ce:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_6870c
.L_685d4:
	bl	func_8066084
	b	.L_6870c
.L_685da:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_6870c
.L_685e0:
	bl	func_806609C
	b	.L_6870c
.L_685e6:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_6870c
.L_685ec:
	bl	func_80660B8
	b	.L_6870c
.L_685f2:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_6870c
.L_685f8:
	ldr	r0, .L_68610
	mov	r2, #0
	mov	r1, #90	@ 0x5a
	strb	r1, [r0, #28]
	strb	r2, [r0, #29]
	bl	func_80660D4
.L_68606:
	bl	SpriteUtilThrownLeftSoft
	bl	func_80660E4
	b	.L_6870c
.L_68610:
	.4byte	gCurrentSprite
.L_68614:
	ldr	r0, .L_6862c
	mov	r1, #94	@ 0x5e
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #29]
	bl	func_80660D4
.L_68622:
	bl	SpriteUtilThrownLeftHard
	bl	func_80660E4
	b	.L_6870c
.L_6862c:
	.4byte	gCurrentSprite
.L_68630:
	ldr	r0, .L_68648
	mov	r2, #0
	mov	r1, #98	@ 0x62
	strb	r1, [r0, #28]
	strb	r2, [r0, #29]
	bl	func_80660D4
.L_6863e:
	bl	SpriteUtilThrownUpLeftSoft
	bl	func_80660E4
	b	.L_6870c
.L_68648:
	.4byte	gCurrentSprite
.L_6864c:
	ldr	r0, .L_68664
	mov	r1, #102	@ 0x66
	strb	r1, [r0, #28]
	mov	r1, #18
	strb	r1, [r0, #29]
	bl	func_80660D4
.L_6865a:
	bl	SpriteUtilThrownUpLeftHard
	bl	func_80660E4
	b	.L_6870c
.L_68664:
	.4byte	gCurrentSprite
.L_68668:
	ldr	r0, .L_68680
	mov	r2, #0
	mov	r1, #92	@ 0x5c
	strb	r1, [r0, #28]
	strb	r2, [r0, #29]
	bl	func_80660D4
.L_68676:
	bl	SpriteUtilThrownRightSoft
	bl	func_80660E4
	b	.L_6870c
.L_68680:
	.4byte	gCurrentSprite
.L_68684:
	ldr	r0, .L_6869c
	mov	r1, #96	@ 0x60
	strb	r1, [r0, #28]
	mov	r1, #2
	strb	r1, [r0, #29]
	bl	func_80660D4
.L_68692:
	bl	SpriteUtilThrownRightHard
	bl	func_80660E4
	b	.L_6870c
.L_6869c:
	.4byte	gCurrentSprite
.L_686a0:
	ldr	r0, .L_686b8
	mov	r2, #0
	mov	r1, #100	@ 0x64
	strb	r1, [r0, #28]
	strb	r2, [r0, #29]
	bl	func_80660D4
.L_686ae:
	bl	SpriteUtilThrownUpRightSoft
	bl	func_80660E4
	b	.L_6870c
.L_686b8:
	.4byte	gCurrentSprite
.L_686bc:
	ldr	r0, .L_686d4
	mov	r1, #104	@ 0x68
	strb	r1, [r0, #28]
	mov	r1, #17
	strb	r1, [r0, #29]
	bl	func_80660D4
.L_686ca:
	bl	SpriteUtilThrownUpRightHard
	bl	func_80660E4
	b	.L_6870c
.L_686d4:
	.4byte	gCurrentSprite
.L_686d8:
	ldrb	r1, [r2, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_686ea
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_686f0
.L_686ea:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_686f0:
	strb	r0, [r1, #0]
	ldr	r0, .L_68704
	ldrb	r1, [r0, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_68708
	bl	func_8024AC0
	b	.L_6870c
.L_68704:
	.4byte	gCurrentSprite
.L_68708:
	bl	func_8024BEC
.L_6870c:
	ldr	r2, .L_6872c
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_68722
	ldrb	r0, [r2, #30]
	cmp	r0, #51	@ 0x33
	bne	.L_68722
	mov	r0, #5
	strb	r0, [r2, #30]
.L_68722:
	bl	func_8062AC8
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6872c:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownF3
SpriteUnknownF3:
	push	{lr}
	ldr	r0, .L_68750
	ldrh	r2, [r0, #0]
	ldr	r1, .L_68754
	and	r1, r2
	strh	r1, [r0, #0]
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #106	@ 0x6a
	bls	.L_68746
	b	.L_68a96
.L_68746:
	lsl	r0, r1, #2
	ldr	r1, .L_68758
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_68750:
	.4byte	gCurrentSprite
.L_68754:
	.4byte	0xFF5F
.L_68758:
	.4byte	.L_6875c
.L_6875c:
	.4byte	.L_68908
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_6890e
	.4byte	.L_68912
	.4byte	.L_68918
	.4byte	.L_6891c
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_6890e
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68922
	.4byte	.L_68a96
	.4byte	.L_68922
	.4byte	.L_68926
	.4byte	.L_68940
	.4byte	.L_68944
	.4byte	.L_6894a
	.4byte	.L_6894e
	.4byte	.L_68954
	.4byte	.L_68a96
	.4byte	.L_68960
	.4byte	.L_68a96
	.4byte	.L_6895a
	.4byte	.L_68a96
	.4byte	.L_68974
	.4byte	.L_68a96
	.4byte	.L_6892c
	.4byte	.L_68930
	.4byte	.L_68936
	.4byte	.L_6893a
	.4byte	.L_6890e
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_6895a
	.4byte	.L_689a6
	.4byte	.L_68974
	.4byte	.L_68988
	.4byte	.L_6897a
	.4byte	.L_6897e
	.4byte	.L_68984
	.4byte	.L_68988
	.4byte	.L_6898e
	.4byte	.L_68992
	.4byte	.L_68998
	.4byte	.L_6899c
	.4byte	.L_689a2
	.4byte	.L_689a6
	.4byte	.L_689ac
	.4byte	.L_689b0
	.4byte	.L_689b6
	.4byte	.L_689c6
	.4byte	.L_689bc
	.4byte	.L_689d0
	.4byte	.L_689c2
	.4byte	.L_689c6
	.4byte	.L_689cc
	.4byte	.L_689d0
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68a96
	.4byte	.L_68940
	.4byte	.L_6894a
	.4byte	.L_689d6
	.4byte	.L_689dc
	.4byte	.L_689e2
	.4byte	.L_689e8
	.4byte	.L_689fa
	.4byte	.L_68a00
	.4byte	.L_689ee
	.4byte	.L_689f4
	.4byte	.L_68a06
	.4byte	.L_68a0e
	.4byte	.L_68a4e
	.4byte	.L_68a56
	.4byte	.L_68a14
	.4byte	.L_68a20
	.4byte	.L_68a5c
	.4byte	.L_68a68
	.4byte	.L_68a2a
	.4byte	.L_68a32
	.4byte	.L_68a72
	.4byte	.L_68a7a
	.4byte	.L_68a38
	.4byte	.L_68a44
	.4byte	.L_68a80
	.4byte	.L_68a8c
	.4byte	.L_6894a
	.4byte	.L_68940
.L_68908:
	bl	func_8066198
	b	.L_68a9a
.L_6890e:
	bl	func_8066378
.L_68912:
	bl	func_80663A8
	b	.L_68a9a
.L_68918:
	bl	func_80661FC
.L_6891c:
	bl	func_8066214
	b	.L_68a9a
.L_68922:
	bl	func_8066400
.L_68926:
	bl	func_8023EE0
	b	.L_68a9a
.L_6892c:
	bl	func_8066414
.L_68930:
	bl	func_8024478
	b	.L_68a9a
.L_68936:
	bl	func_8066428
.L_6893a:
	bl	func_802449C
	b	.L_68a9a
.L_68940:
	bl	func_8066520
.L_68944:
	bl	SpriteUtilFallOffscreenRight
	b	.L_68a9a
.L_6894a:
	bl	func_806656C
.L_6894e:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_68a9a
.L_68954:
	ldrb	r0, [r2, #30]
	cmp	r0, #46	@ 0x2e
	beq	.L_68966
.L_6895a:
	bl	func_80664B8
	b	.L_689a6
.L_68960:
	ldrb	r0, [r2, #30]
	cmp	r0, #46	@ 0x2e
	bne	.L_68974
.L_68966:
	mov	r0, #17
	strb	r0, [r2, #28]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	b	.L_68a9a
.L_68974:
	bl	func_80664CC
	b	.L_68988
.L_6897a:
	bl	func_8024688
.L_6897e:
	bl	func_80246B8
	b	.L_68a9a
.L_68984:
	bl	func_802473C
.L_68988:
	bl	func_802476C
	b	.L_68a9a
.L_6898e:
	bl	func_80247F0
.L_68992:
	bl	func_8024820
	b	.L_68a9a
.L_68998:
	bl	func_80248A4
.L_6899c:
	bl	func_80248D4
	b	.L_68a9a
.L_689a2:
	bl	func_8024958
.L_689a6:
	bl	func_8024988
	b	.L_68a9a
.L_689ac:
	bl	func_8024A0C
.L_689b0:
	bl	func_8024A3C
	b	.L_68a9a
.L_689b6:
	bl	func_8024AC0
	b	.L_689c6
.L_689bc:
	bl	func_8024BEC
	b	.L_689d0
.L_689c2:
	bl	func_806643C
.L_689c6:
	bl	func_8024AD4
	b	.L_68a9a
.L_689cc:
	bl	func_8066458
.L_689d0:
	bl	func_8024C00
	b	.L_68a9a
.L_689d6:
	bl	func_80665B8
	b	.L_68a9a
.L_689dc:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_68a9a
.L_689e2:
	bl	func_80665E4
	b	.L_68a9a
.L_689e8:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_68a9a
.L_689ee:
	bl	func_8066610
	b	.L_68a9a
.L_689f4:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_68a9a
.L_689fa:
	bl	func_8066640
	b	.L_68a9a
.L_68a00:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_68a9a
.L_68a06:
	mov	r1, #0
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68a0e:
	bl	SpriteUtilThrownLeftSoft
	b	.L_68a9a
.L_68a14:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	mov	r0, #1
	strb	r0, [r2, #29]
	bl	func_8066670
.L_68a20:
	bl	SpriteUtilThrownLeftHard
	bl	func_8066680
	b	.L_68a9a
.L_68a2a:
	mov	r1, #0
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68a32:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_68a9a
.L_68a38:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	mov	r0, #18
	strb	r0, [r2, #29]
	bl	func_8066670
.L_68a44:
	bl	SpriteUtilThrownUpLeftHard
	bl	func_8066680
	b	.L_68a9a
.L_68a4e:
	mov	r1, #0
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68a56:
	bl	SpriteUtilThrownRightSoft
	b	.L_68a9a
.L_68a5c:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	mov	r0, #2
	strb	r0, [r2, #29]
	bl	func_8066670
.L_68a68:
	bl	SpriteUtilThrownRightHard
	bl	func_8066680
	b	.L_68a9a
.L_68a72:
	mov	r1, #0
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_68a7a:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_68a9a
.L_68a80:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	mov	r0, #17
	strb	r0, [r2, #29]
	bl	func_8066670
.L_68a8c:
	bl	SpriteUtilThrownUpRightHard
	bl	func_8066680
	b	.L_68a9a
.L_68a96:
	bl	SpriteUtilDie
.L_68a9a:
	bl	func_8062AC8
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownF4
SpriteUnknownF4:
	push	{lr}
	ldr	r0, .L_68ac4
	ldrh	r2, [r0, #0]
	ldr	r1, .L_68ac8
	and	r1, r2
	strh	r1, [r0, #0]
	ldrb	r0, [r0, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_68ab8
	b	.L_68de0
.L_68ab8:
	lsl	r0, r0, #2
	ldr	r1, .L_68acc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_68ac4:
	.4byte	gCurrentSprite
.L_68ac8:
	.4byte	0xFFDF
.L_68acc:
	.4byte	.L_68ad0
.L_68ad0:
	.4byte	.L_68cc0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68cc6
	.4byte	.L_68cca
	.4byte	.L_68cd0
	.4byte	.L_68cd4
	.4byte	.L_68cda
	.4byte	.L_68cde
	.4byte	.L_68cf0
	.4byte	.L_68de0
	.4byte	.L_68cfa
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68cea
	.4byte	.L_68de0
	.4byte	.L_68cf0
	.4byte	.L_68cf4
	.4byte	.L_68cfa
	.4byte	.L_68cfe
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68d04
	.4byte	.L_68d14
	.4byte	.L_68d0a
	.4byte	.L_68d1e
	.4byte	.L_68d10
	.4byte	.L_68d14
	.4byte	.L_68d1a
	.4byte	.L_68d1e
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68cd0
	.4byte	.L_68cda
	.4byte	.L_68d24
	.4byte	.L_68d2a
	.4byte	.L_68d30
	.4byte	.L_68d36
	.4byte	.L_68d48
	.4byte	.L_68d4e
	.4byte	.L_68d3c
	.4byte	.L_68d42
	.4byte	.L_68d54
	.4byte	.L_68d5a
	.4byte	.L_68d94
	.4byte	.L_68d9a
	.4byte	.L_68d64
	.4byte	.L_68d6a
	.4byte	.L_68da4
	.4byte	.L_68daa
	.4byte	.L_68d74
	.4byte	.L_68d7a
	.4byte	.L_68db4
	.4byte	.L_68dba
	.4byte	.L_68d84
	.4byte	.L_68d8a
	.4byte	.L_68dc4
	.4byte	.L_68dca
	.4byte	.L_68ce4
	.4byte	.L_68ce4
	.4byte	.L_68cea
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68de0
	.4byte	.L_68dd4
	.4byte	.L_68de0
	.4byte	.L_68dda
.L_68cc0:
	bl	func_8066728
	b	.L_68de4
.L_68cc6:
	bl	func_806687C
.L_68cca:
	bl	func_8023FA8
	b	.L_68de4
.L_68cd0:
	bl	func_80668D0
.L_68cd4:
	bl	SpriteUtilFallOffscreenRight
	b	.L_68de4
.L_68cda:
	bl	func_80668E4
.L_68cde:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_68de4
.L_68ce4:
	bl	func_8066A84
	b	.L_68de4
.L_68cea:
	bl	SpriteUtilDie
	b	.L_68de4
.L_68cf0:
	bl	func_8066854
.L_68cf4:
	bl	func_8024A3C
	b	.L_68de4
.L_68cfa:
	bl	func_8066868
.L_68cfe:
	bl	func_8024820
	b	.L_68de4
.L_68d04:
	bl	func_8024AC0
	b	.L_68d14
.L_68d0a:
	bl	func_8024BEC
	b	.L_68d1e
.L_68d10:
	bl	func_8066910
.L_68d14:
	bl	func_8024AD4
	b	.L_68de4
.L_68d1a:
	bl	func_8066924
.L_68d1e:
	bl	func_8024C00
	b	.L_68de4
.L_68d24:
	bl	func_8066938
	b	.L_68de4
.L_68d2a:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_68de4
.L_68d30:
	bl	func_8066944
	b	.L_68de4
.L_68d36:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_68de4
.L_68d3c:
	bl	func_8066A10
	b	.L_68de4
.L_68d42:
	bl	func_8066A24
	b	.L_68de4
.L_68d48:
	bl	func_8066A34
	b	.L_68de4
.L_68d4e:
	bl	func_8066A48
	b	.L_68de4
.L_68d54:
	ldr	r1, .L_68d60
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #28]
.L_68d5a:
	bl	SpriteUtilThrownLeftSoft
	b	.L_68de4
.L_68d60:
	.4byte	gCurrentSprite
.L_68d64:
	ldr	r1, .L_68d70
	mov	r0, #94	@ 0x5e
	strb	r0, [r1, #28]
.L_68d6a:
	bl	SpriteUtilThrownLeftHard
	b	.L_68de4
.L_68d70:
	.4byte	gCurrentSprite
.L_68d74:
	ldr	r1, .L_68d80
	mov	r0, #98	@ 0x62
	strb	r0, [r1, #28]
.L_68d7a:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_68de4
.L_68d80:
	.4byte	gCurrentSprite
.L_68d84:
	ldr	r1, .L_68d90
	mov	r0, #102	@ 0x66
	strb	r0, [r1, #28]
.L_68d8a:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_68de4
.L_68d90:
	.4byte	gCurrentSprite
.L_68d94:
	ldr	r1, .L_68da0
	mov	r0, #92	@ 0x5c
	strb	r0, [r1, #28]
.L_68d9a:
	bl	SpriteUtilThrownRightSoft
	b	.L_68de4
.L_68da0:
	.4byte	gCurrentSprite
.L_68da4:
	ldr	r1, .L_68db0
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #28]
.L_68daa:
	bl	SpriteUtilThrownRightHard
	b	.L_68de4
.L_68db0:
	.4byte	gCurrentSprite
.L_68db4:
	ldr	r1, .L_68dc0
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #28]
.L_68dba:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_68de4
.L_68dc0:
	.4byte	gCurrentSprite
.L_68dc4:
	ldr	r1, .L_68dd0
	mov	r0, #104	@ 0x68
	strb	r0, [r1, #28]
.L_68dca:
	bl	SpriteUtilThrownUpRightHard
	b	.L_68de4
.L_68dd0:
	.4byte	gCurrentSprite
.L_68dd4:
	bl	func_8066A58
	b	.L_68de4
.L_68dda:
	bl	func_80667EC
	b	.L_68de4
.L_68de0:
	bl	func_80667AC
.L_68de4:
	ldr	r2, .L_68df8
	ldrh	r1, [r2, #0]
	mov	r0, #32
	orr	r0, r1
	strh	r0, [r2, #0]
	bl	func_8062AC8
	pop	{r0}
	bx	r0
	.align	2, 0
.L_68df8:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownF5
SpriteUnknownF5:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_68e18
	ldrb	r0, [r0, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_68e0c
	b	.L_69168
.L_68e0c:
	lsl	r0, r0, #2
	ldr	r1, .L_68e1c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_68e18:
	.4byte	gCurrentSprite
.L_68e1c:
	.4byte	.L_68e20
.L_68e20:
	.4byte	.L_68fe8
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_68ffa
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_68ff4
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_68fee
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_6901a
	.4byte	.L_6901e
	.4byte	.L_690ba
	.4byte	.L_690be
	.4byte	.L_69000
	.4byte	.L_69004
	.4byte	.L_6900a
	.4byte	.L_6900e
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69014
	.4byte	.L_69168
	.4byte	.L_690b4
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_690ba
	.4byte	.L_6901a
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69168
	.4byte	.L_69154
	.4byte	.L_69158
	.4byte	.L_6915e
	.4byte	.L_69162
.L_68fe8:
	bl	func_8066AA4
	b	.L_69174
.L_68fee:
	bl	func_8023D48
	b	.L_69174
.L_68ff4:
	bl	func_8066B3C
	b	.L_69174
.L_68ffa:
	bl	func_8066B64
	b	.L_69174
.L_69000:
	bl	func_8066D70
.L_69004:
	bl	func_8066D8C
	b	.L_69174
.L_6900a:
	bl	func_8066E10
.L_6900e:
	bl	func_8066E30
	b	.L_69174
.L_69014:
	bl	func_8066D0C
	b	.L_69174
.L_6901a:
	bl	func_8066CB4
.L_6901e:
	bl	SpriteUtilFallOffscreenRight
	ldr	r5, .L_690ac
	mov	r0, #0
	strb	r0, [r5, #22]
	strh	r0, [r5, #20]
	ldr	r0, .L_690b0
	mov	r8, r0
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #18]
	ldrb	r0, [r7, #0]
	add	r0, #8
	strb	r0, [r7, #0]
	b	.L_69174
.L_690ac:
	.4byte	gCurrentSprite
.L_690b0:
	.4byte	sSinCosTable
.L_690b4:
	bl	func_8066D2C
	b	.L_69174
.L_690ba:
	bl	func_8066CE0
.L_690be:
	bl	SpriteUtilFallOffscreenLeft
	ldr	r5, .L_6914c
	mov	r0, #0
	strb	r0, [r5, #22]
	strh	r0, [r5, #20]
	ldr	r0, .L_69150
	mov	r8, r0
	add	r7, r5, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #18]
	ldrb	r0, [r7, #0]
	sub	r0, #8
	strb	r0, [r7, #0]
	b	.L_69174
.L_6914c:
	.4byte	gCurrentSprite
.L_69150:
	.4byte	sSinCosTable
.L_69154:
	bl	func_8066EB0
.L_69158:
	bl	func_8066EDC
	b	.L_69174
.L_6915e:
	bl	func_8066F9C
.L_69162:
	bl	func_8067000
	b	.L_69174
.L_69168:
	ldr	r0, .L_6919c
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	bl	SpriteUtilDie
.L_69174:
	ldr	r2, .L_6919c
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_6918e
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_6918e
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
.L_6918e:
	bl	func_8062AC8
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6919c:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownF6
SpriteUnknownF6:
	push	{lr}
	ldr	r2, .L_691d4
	ldrh	r0, [r2, #0]
	ldr	r1, .L_691d8
	and	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_691ec
	ldrb	r0, [r2, #28]
	cmp	r0, #14
	bls	.L_691ec
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_691ec
	sub	r0, #1
	strb	r0, [r2, #29]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_691dc
	mov	r0, #114	@ 0x72
	strb	r0, [r2, #28]
	b	.L_691ec
	.align	2, 0
.L_691d4:
	.4byte	gCurrentSprite
.L_691d8:
	.4byte	0xFF7F
.L_691dc:
	cmp	r0, #60	@ 0x3c
	bne	.L_691ec
	ldr	r0, .L_69200
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #0
	strh	r0, [r2, #20]
.L_691ec:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_691f4
	b	.L_69492
.L_691f4:
	lsl	r0, r0, #2
	ldr	r1, .L_69204
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_69200:
	.4byte	sUnk_83EF9F0
.L_69204:
	.4byte	.L_69208
.L_69208:
	.4byte	.L_693d8
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_693e2
	.4byte	.L_693e6
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_693e2
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_693f6
	.4byte	.L_69492
	.4byte	.L_693f6
	.4byte	.L_693fa
	.4byte	.L_6941a
	.4byte	.L_69424
	.4byte	.L_69420
	.4byte	.L_69424
	.4byte	.L_6942a
	.4byte	.L_69492
	.4byte	.L_69430
	.4byte	.L_69492
	.4byte	.L_6942a
	.4byte	.L_69492
	.4byte	.L_69430
	.4byte	.L_69492
	.4byte	.L_69400
	.4byte	.L_69404
	.4byte	.L_6940a
	.4byte	.L_6940e
	.4byte	.L_693e2
	.4byte	.L_69492
	.4byte	.L_69414
	.4byte	.L_69492
	.4byte	.L_6942a
	.4byte	.L_69462
	.4byte	.L_69430
	.4byte	.L_69444
	.4byte	.L_69436
	.4byte	.L_6943a
	.4byte	.L_69440
	.4byte	.L_69444
	.4byte	.L_6944a
	.4byte	.L_6944e
	.4byte	.L_69454
	.4byte	.L_69458
	.4byte	.L_6945e
	.4byte	.L_69462
	.4byte	.L_69468
	.4byte	.L_6946c
	.4byte	.L_69472
	.4byte	.L_69482
	.4byte	.L_69478
	.4byte	.L_6948c
	.4byte	.L_6947e
	.4byte	.L_69482
	.4byte	.L_69488
	.4byte	.L_6948c
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_6941a
	.4byte	.L_69420
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_693dc
	.4byte	.L_69492
	.4byte	.L_69492
	.4byte	.L_693ec
	.4byte	.L_693f0
.L_693d8:
	bl	func_806701C
.L_693dc:
	bl	func_806708C
	b	.L_6949a
.L_693e2:
	bl	func_8067200
.L_693e6:
	bl	func_8067218
	b	.L_6949a
.L_693ec:
	bl	func_806723C
.L_693f0:
	bl	func_806729C
	b	.L_6949a
.L_693f6:
	bl	func_8067320
.L_693fa:
	bl	func_8023EE0
	b	.L_6949a
.L_69400:
	bl	func_8067334
.L_69404:
	bl	func_8024478
	b	.L_6949a
.L_6940a:
	bl	func_8067348
.L_6940e:
	bl	func_802449C
	b	.L_6949a
.L_69414:
	bl	func_80673E4
	b	.L_6949a
.L_6941a:
	bl	func_8067470
	b	.L_69424
.L_69420:
	bl	func_8067490
.L_69424:
	bl	func_80674AC
	b	.L_6949a
.L_6942a:
	bl	func_80673BC
	b	.L_69462
.L_69430:
	bl	func_80673D0
	b	.L_69444
.L_69436:
	bl	func_8024688
.L_6943a:
	bl	func_80246B8
	b	.L_6949a
.L_69440:
	bl	func_802473C
.L_69444:
	bl	func_802476C
	b	.L_6949a
.L_6944a:
	bl	func_80247F0
.L_6944e:
	bl	func_8024820
	b	.L_6949a
.L_69454:
	bl	func_80248A4
.L_69458:
	bl	func_80248D4
	b	.L_6949a
.L_6945e:
	bl	func_8024958
.L_69462:
	bl	func_8024988
	b	.L_6949a
.L_69468:
	bl	func_8024A0C
.L_6946c:
	bl	func_8024A3C
	b	.L_6949a
.L_69472:
	bl	func_8024AC0
	b	.L_69482
.L_69478:
	bl	func_8024BEC
	b	.L_6948c
.L_6947e:
	bl	func_806735C
.L_69482:
	bl	func_8024AD4
	b	.L_6949a
.L_69488:
	bl	func_8067378
.L_6948c:
	bl	func_8024C00
	b	.L_6949a
.L_69492:
	mov	r1, #0
	mov	r0, #114	@ 0x72
	strb	r0, [r2, #28]
	strb	r1, [r2, #29]
.L_6949a:
	bl	func_8062AC8
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownF7
SpriteUnknownF7:
	push	{lr}
	ldr	r0, .L_694bc
	ldrb	r0, [r0, #28]
	cmp	r0, #53	@ 0x35
	bls	.L_694b0
	b	.L_695dc
.L_694b0:
	lsl	r0, r0, #2
	ldr	r1, .L_694c0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_694bc:
	.4byte	gCurrentSprite
.L_694c0:
	.4byte	.L_694c4
.L_694c4:
	.4byte	.L_6959c
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695ae
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695a8
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695a2
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695c8
	.4byte	.L_695cc
	.4byte	.L_695d2
	.4byte	.L_695d6
	.4byte	.L_695b4
	.4byte	.L_695b8
	.4byte	.L_695be
	.4byte	.L_695c2
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695dc
	.4byte	.L_695b4
	.4byte	.L_695dc
	.4byte	.L_695be
.L_6959c:
	bl	func_806763C
	b	.L_695e4
.L_695a2:
	bl	func_8023D48
	b	.L_695e4
.L_695a8:
	bl	func_80676C0
	b	.L_695e4
.L_695ae:
	bl	func_80676E0
	b	.L_695e4
.L_695b4:
	bl	func_8067824
.L_695b8:
	bl	func_8067838
	b	.L_695e4
.L_695be:
	bl	func_8067894
.L_695c2:
	bl	func_80678AC
	b	.L_695e4
.L_695c8:
	bl	func_80677DC
.L_695cc:
	bl	SpriteUtilFallOffscreenRight
	b	.L_695e4
.L_695d2:
	bl	func_8067800
.L_695d6:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_695e4
.L_695dc:
	bl	func_806778C
	bl	SpriteUtilDie
.L_695e4:
	ldr	r2, .L_6960c
	ldrb	r0, [r2, #30]
	cmp	r0, #0
	bne	.L_69608
	ldr	r0, .L_69610
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_69608
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_69606
	mov	r0, #4
.L_69606:
	strb	r0, [r2, #27]
.L_69608:
	pop	{r0}
	bx	r0
.L_6960c:
	.4byte	gCurrentSprite
.L_69610:
	.4byte	gMainTimer


thumb_func_start SpriteUnknownAB
SpriteUnknownAB:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_6962c
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #15
	beq	.L_6963a
	cmp	r0, #15
	bgt	.L_69630
	cmp	r0, #0
	beq	.L_69636
	b	.L_69644
.L_6962c:
	.4byte	gCurrentSprite
.L_69630:
	cmp	r0, #16
	beq	.L_69640
	b	.L_69644
.L_69636:
	bl	func_8067904
.L_6963a:
	bl	func_8067980
	b	.L_69644
.L_69640:
	bl	func_80679A8
.L_69644:
	ldr	r7, .L_696ac
	add	r0, r7, #0
	add	r0, #40	@ 0x28
	ldrb	r6, [r0, #0]
	cmp	r6, #0
	bne	.L_69654
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
.L_69654:
	ldr	r4, .L_696b0
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_696ac:
	.4byte	gCurrentSprite
.L_696b0:
	.4byte	sSinCosTable


thumb_func_start SpriteUnknownF8
SpriteUnknownF8:
	push	{r4, lr}
	ldr	r3, .L_69728
	mov	r0, #1
	strb	r0, [r3, #31]
	ldrb	r4, [r3, #28]
	cmp	r4, #0
	bne	.L_6970e
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_6972c
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r2, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_69730
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r3, #28]
.L_6970e:
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_69722
	strh	r0, [r3, #0]
.L_69722:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_69728:
	.4byte	gCurrentSprite
.L_6972c:
	.4byte	0xFFFB
.L_69730:
	.4byte	sUnk_841489C
