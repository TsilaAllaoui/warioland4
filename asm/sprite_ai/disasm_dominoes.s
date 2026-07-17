.include "macros.s.inc"


thumb_func_start func_803B9D8
func_803B9D8:
	ldr	r0, .L_3b9e8
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	beq	.L_3b9f0
	ldr	r1, .L_3b9ec
	mov	r0, #0
	b	.L_3b9f4
	.align	2, 0
.L_3b9e8:
	.4byte	gSwitchStates
.L_3b9ec:
	.4byte	gCurrentSprite
.L_3b9f0:
	ldr	r1, .L_3b9f8
	mov	r0, #1
.L_3b9f4:
	strb	r0, [r1, #27]
	bx	lr
.L_3b9f8:
	.4byte	gCurrentSprite


thumb_func_start func_803B9FC
func_803B9FC:
	push	{r4, r5, r6, r7, lr}
	mov	r3, #0
	ldr	r6, .L_3ba48
	ldr	r7, .L_3ba4c
	ldr	r4, .L_3ba50
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
.L_3ba0a:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r6
	ldrb	r0, [r2, #23]
	cmp	r0, #45	@ 0x2d
	bne	.L_3ba58
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ba58
	mov	r0, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_3ba54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r0, r0, r7
	mov	r1, #2
	strb	r1, [r0, #0]
	ldr	r0, [r4, #0]
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r0, [r4, #12]
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	b	.L_3ba5e
	.align	2, 0
.L_3ba48:
	.4byte	gSpriteData
.L_3ba4c:
	.4byte	gPersistentSpriteData
.L_3ba50:
	.4byte	gMPlayTable
.L_3ba54:
	.4byte	gCurrentRoom
.L_3ba58:
	add	r3, #1
	cmp	r3, #23
	ble	.L_3ba0a
.L_3ba5e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_803BA64
func_803BA64:
	push	{r4, r5, lr}
	ldr	r2, .L_3ba90
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r5, r2, r0
	mov	r4, #1
	mov	r3, #49	@ 0x31
.L_3ba72:
	ldrb	r0, [r2, #23]
	cmp	r0, #59	@ 0x3b
	bne	.L_3ba84
	ldrh	r1, [r2, #0]
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ba84
	strb	r3, [r2, #28]
.L_3ba84:
	add	r2, #44	@ 0x2c
	cmp	r2, r5
	ble	.L_3ba72
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3ba90:
	.4byte	gSpriteData


thumb_func_start func_803BA94
func_803BA94:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r6, #0
	mov	r3, #0
	ldr	r0, .L_3bae8
	add	r1, r0, #0
	ldrb	r0, [r1, #0]
	cmp	r5, r0
	bne	.L_3baae
	ldrb	r0, [r1, #1]
	cmp	r4, r0
	beq	.L_3bad0
.L_3baae:
	add	r3, #1
	cmp	r3, #63	@ 0x3f
	bgt	.L_3bacc
	lsl	r0, r3, #1
	add	r2, r0, r3
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	cmp	r5, r0
	bne	.L_3baae
	add	r0, r1, #1
	add	r0, r2, r0
	ldrb	r0, [r0, #0]
	cmp	r4, r0
	bne	.L_3baae
	add	r6, #1
.L_3bacc:
	cmp	r6, #0
	beq	.L_3bae2
.L_3bad0:
	ldr	r1, .L_3baec
	ldr	r0, .L_3baf0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, r3, r0
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	add	r1, #16
	strb	r1, [r0, #0]
.L_3bae2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_3bae8:
	.4byte	gUnk_3000964
.L_3baec:
	.4byte	gPersistentSpriteData
.L_3baf0:
	.4byte	gCurrentRoom


thumb_func_start func_803BAF4
func_803BAF4:
	ldr	r0, .L_3bb44
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_3bb48
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #8
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	ldr	r0, .L_3bb4c
	str	r0, [r1, #4]
	mov	r0, #1
	strb	r0, [r1, #26]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3bb44:
	.4byte	gCurrentSprite
.L_3bb48:
	.4byte	0x8404
.L_3bb4c:
	.4byte	sUnk_83C491C


thumb_func_start func_803BB50
func_803BB50:
	push	{r4, r5, lr}
	ldr	r0, .L_3bbc8
	ldrh	r5, [r0, #20]
	ldrh	r2, [r0, #18]
	ldr	r4, .L_3bbcc
	ldrh	r3, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r0, r1, #0
	sub	r0, #255	@ 0xff
	cmp	r0, r2
	bge	.L_3bbc0
	add	r0, r1, #0
	add	r0, #255	@ 0xff
	cmp	r0, r2
	ble	.L_3bbc0
	add	r0, r3, #0
	sub	r0, #255	@ 0xff
	cmp	r0, r5
	bge	.L_3bbc0
	add	r0, r3, #0
	add	r0, #255	@ 0xff
	cmp	r0, r5
	ble	.L_3bbc0
	ldr	r1, .L_3bbd0
	mov	r0, #2
	strb	r0, [r1, #1]
	ldrh	r0, [r4, #8]
	add	r0, #32
	mov	r2, #0
	strh	r0, [r4, #8]
	mov	r0, #18
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r0, #214	@ 0xd6
	bl	m4aSongNumStart
	mov	r0, #3
	bl	VoiceSetPlay
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #6
	bl	func_803BA94
.L_3bbc0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3bbc8:
	.4byte	gWarioData
.L_3bbcc:
	.4byte	gCurrentSprite
.L_3bbd0:
	.4byte	gSwitchStates


thumb_func_start func_803BBD4
func_803BBD4:
	push	{r4, r5, lr}
	ldr	r1, .L_3bc04
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_3bcae
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r4, [r0, #0]
	add	r0, #1
	ldrb	r5, [r0, #0]
	add	r0, r4, #0
	add	r1, r5, #0
	bl	GetBg2CollisionTypeAtTile
	sub	r0, #9
	cmp	r0, #9
	bhi	.L_3bcae
	lsl	r0, r0, #2
	ldr	r1, .L_3bc08
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3bc04:
	.4byte	gCurrentSprite
.L_3bc08:
	.4byte	.L_3bc0c
.L_3bc0c:
	.4byte	.L_3bc34
	.4byte	.L_3bc34
	.4byte	.L_3bc48
	.4byte	.L_3bc48
	.4byte	.L_3bc5c
	.4byte	.L_3bc5c
	.4byte	.L_3bc88
	.4byte	.L_3bc88
	.4byte	.L_3bc88
	.4byte	.L_3bc88
.L_3bc34:
	ldr	r0, .L_3bc44
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #59	@ 0x3b
	bhi	.L_3bcae
	b	.L_3bc68
	.align	2, 0
.L_3bc44:
	.4byte	gCurrentSprite
.L_3bc48:
	ldr	r0, .L_3bc58
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #79	@ 0x4f
	bhi	.L_3bcae
	b	.L_3bc68
	.align	2, 0
.L_3bc58:
	.4byte	gCurrentSprite
.L_3bc5c:
	ldr	r0, .L_3bc84
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #69	@ 0x45
	bhi	.L_3bcae
.L_3bc68:
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3bcae
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_803BA94
	b	.L_3bcae
.L_3bc84:
	.4byte	gCurrentSprite
.L_3bc88:
	ldr	r0, .L_3bcb4
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	cmp	r0, #64	@ 0x40
	bhi	.L_3bcae
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3bcae
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_803BA94
.L_3bcae:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3bcb4:
	.4byte	gCurrentSprite


thumb_func_start func_803BCB8
func_803BCB8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r4, .L_3bcfc
	ldr	r0, [r4, #0]
	mov	r5, #200	@ 0xc8
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r0, [r4, #12]
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_3bd00
	ldrh	r0, [r4, #8]
	lsr	r6, r0, #6
	ldrh	r0, [r4, #10]
	lsr	r7, r0, #6
	add	r0, r6, #0
	add	r1, r7, #0
	bl	GetBg2CollisionTypeAtTile
	sub	r0, #9
	cmp	r0, #9
	bls	.L_3bcf0
	b	.L_3c28a
.L_3bcf0:
	lsl	r0, r0, #2
	ldr	r1, .L_3bd04
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3bcfc:
	.4byte	gMPlayTable
.L_3bd00:
	.4byte	gCurrentSprite
.L_3bd04:
	.4byte	.L_3bd08
.L_3bd08:
	.4byte	.L_3bd30
	.4byte	.L_3bdc0
	.4byte	.L_3be50
	.4byte	.L_3becc
	.4byte	.L_3bf48
	.4byte	.L_3bfc4
	.4byte	.L_3c040
	.4byte	.L_3c0d0
	.4byte	.L_3c160
	.4byte	.L_3c1e8
.L_3bd30:
	ldr	r5, .L_3bda0
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #70	@ 0x46
	bls	.L_3bd40
	b	.L_3c28e
.L_3bd40:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3bd5c
	b	.L_3c28e
.L_3bd5c:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	beq	.L_3bd74
	b	.L_3c280
.L_3bd74:
	sub	r0, r4, #1
	add	r1, r5, #0
	add	r1, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	add	r1, r7, #4
	add	r0, r6, #0
	bl	GetBg2CollisionTypeAtTile
	cmp	r0, #19
	bne	.L_3bda4
	ldrh	r0, [r5, #10]
	add	r0, #192	@ 0xc0
	b	.L_3bdae
	.align	2, 0
.L_3bda0:
	.4byte	gCurrentSprite
.L_3bda4:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
.L_3bdae:
	strh	r0, [r5, #10]
	ldr	r1, .L_3bdbc
	ldrh	r0, [r1, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r1, #10]
	b	.L_3c274
	.align	2, 0
.L_3bdbc:
	.4byte	gCurrentSprite
.L_3bdc0:
	ldr	r5, .L_3be30
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #70	@ 0x46
	bls	.L_3bdd0
	b	.L_3c28e
.L_3bdd0:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3bdec
	b	.L_3c28e
.L_3bdec:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	beq	.L_3be04
	b	.L_3c280
.L_3be04:
	sub	r1, r4, #1
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	sub	r1, r7, #4
	add	r0, r6, #0
	bl	GetBg2CollisionTypeAtTile
	cmp	r0, #19
	bne	.L_3be34
	ldrh	r0, [r5, #10]
	sub	r0, #192	@ 0xc0
	b	.L_3be3c
	.align	2, 0
.L_3be30:
	.4byte	gCurrentSprite
.L_3be34:
	ldr	r1, .L_3be48
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
.L_3be3c:
	strh	r0, [r5, #10]
	ldr	r1, .L_3be4c
	ldrh	r0, [r1, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r1, #10]
	b	.L_3c274
.L_3be48:
	.4byte	0xFFFFFF00
.L_3be4c:
	.4byte	gCurrentSprite
.L_3be50:
	ldr	r5, .L_3bec8
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #90	@ 0x5a
	bls	.L_3be60
	b	.L_3c28e
.L_3be60:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3be7c
	b	.L_3c28e
.L_3be7c:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	beq	.L_3be94
	b	.L_3c280
.L_3be94:
	sub	r1, r4, #1
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
	strh	r0, [r5, #10]
	ldrh	r0, [r5, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r5, #10]
	b	.L_3c274
	.align	2, 0
.L_3bec8:
	.4byte	gCurrentSprite
.L_3becc:
	ldr	r5, .L_3bf40
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #90	@ 0x5a
	bls	.L_3bedc
	b	.L_3c28e
.L_3bedc:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3bef8
	b	.L_3c28e
.L_3bef8:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	beq	.L_3bf10
	b	.L_3c280
.L_3bf10:
	sub	r1, r4, #1
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldr	r1, .L_3bf44
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
	strh	r0, [r5, #10]
	ldrh	r0, [r5, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r5, #10]
	b	.L_3c274
.L_3bf40:
	.4byte	gCurrentSprite
.L_3bf44:
	.4byte	0xFFFFFEC0
.L_3bf48:
	ldr	r5, .L_3bfc0
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #80	@ 0x50
	bls	.L_3bf58
	b	.L_3c28e
.L_3bf58:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3bf74
	b	.L_3c28e
.L_3bf74:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	beq	.L_3bf8c
	b	.L_3c280
.L_3bf8c:
	sub	r1, r4, #1
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
	strh	r0, [r5, #10]
	ldrh	r0, [r5, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r5, #10]
	b	.L_3c274
	.align	2, 0
.L_3bfc0:
	.4byte	gCurrentSprite
.L_3bfc4:
	ldr	r5, .L_3c038
	mov	r0, #39	@ 0x27
	add	r0, r0, r5
	mov	r9, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #80	@ 0x50
	bls	.L_3bfd4
	b	.L_3c28e
.L_3bfd4:
	add	r0, #1
	mov	r1, r9
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	cmp	r0, #0
	beq	.L_3bff0
	b	.L_3c28e
.L_3bff0:
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	add	r0, r4, #0
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	beq	.L_3c008
	b	.L_3c280
.L_3c008:
	sub	r1, r4, #1
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, r8
	mov	r0, r9
	strb	r1, [r0, #0]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldr	r1, .L_3c03c
	add	r0, r1, #0
	ldrh	r1, [r5, #10]
	add	r0, r0, r1
	strh	r0, [r5, #10]
	ldrh	r0, [r5, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r5, #10]
	b	.L_3c274
.L_3c038:
	.4byte	gCurrentSprite
.L_3c03c:
	.4byte	0xFFFFFEC0
.L_3c040:
	ldr	r0, .L_3c07c
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #70	@ 0x46
	bls	.L_3c04e
	b	.L_3c28e
.L_3c04e:
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_3c064
	b	.L_3c28e
.L_3c064:
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3c080
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	b	.L_3c096
	.align	2, 0
.L_3c07c:
	.4byte	gCurrentSprite
.L_3c080:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #11
	bne	.L_3c096
	mov	r0, #238	@ 0xee
	bl	m4aSongNumStart
.L_3c096:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #13
	beq	.L_3c0a8
	b	.L_3c280
.L_3c0a8:
	ldr	r3, .L_3c0cc
	sub	r1, r4, #1
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	mov	r2, #0
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r2, [r0, #0]
	add	r0, #2
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldrh	r0, [r3, #10]
	sub	r0, #64	@ 0x40
	strh	r0, [r3, #10]
	ldrh	r0, [r3, #8]
	add	r0, #192	@ 0xc0
	b	.L_3c26c
.L_3c0cc:
	.4byte	gCurrentSprite
.L_3c0d0:
	ldr	r0, .L_3c10c
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #70	@ 0x46
	bls	.L_3c0de
	b	.L_3c28e
.L_3c0de:
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_3c0f4
	b	.L_3c28e
.L_3c0f4:
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3c110
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	b	.L_3c126
	.align	2, 0
.L_3c10c:
	.4byte	gCurrentSprite
.L_3c110:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #11
	bne	.L_3c126
	mov	r0, #238	@ 0xee
	bl	m4aSongNumStart
.L_3c126:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #13
	beq	.L_3c138
	b	.L_3c280
.L_3c138:
	ldr	r3, .L_3c15c
	sub	r1, r4, #1
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	mov	r2, #0
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r2, [r0, #0]
	add	r0, #2
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldrh	r0, [r3, #10]
	add	r0, #64	@ 0x40
	strh	r0, [r3, #10]
	ldrh	r0, [r3, #8]
	add	r0, #192	@ 0xc0
	b	.L_3c26c
.L_3c15c:
	.4byte	gCurrentSprite
.L_3c160:
	ldr	r0, .L_3c19c
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #70	@ 0x46
	bls	.L_3c16e
	b	.L_3c28e
.L_3c16e:
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_3c184
	b	.L_3c28e
.L_3c184:
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3c1a0
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	b	.L_3c1b6
	.align	2, 0
.L_3c19c:
	.4byte	gCurrentSprite
.L_3c1a0:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #11
	bne	.L_3c1b6
	mov	r0, #238	@ 0xee
	bl	m4aSongNumStart
.L_3c1b6:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #13
	bne	.L_3c280
	ldr	r3, .L_3c1e4
	sub	r1, r4, #1
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	mov	r2, #0
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r2, [r0, #0]
	add	r0, #2
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldrh	r0, [r3, #10]
	sub	r0, #64	@ 0x40
	b	.L_3c266
.L_3c1e4:
	.4byte	gCurrentSprite
.L_3c1e8:
	ldr	r0, .L_3c220
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #70	@ 0x46
	bhi	.L_3c28e
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r4, [r1, #0]
	add	r0, r4, #0
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3c28e
	add	r0, r4, #0
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3c224
	mov	r0, #237	@ 0xed
	bl	m4aSongNumStart
	b	.L_3c23a
	.align	2, 0
.L_3c220:
	.4byte	gCurrentSprite
.L_3c224:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #11
	bne	.L_3c23a
	mov	r0, #238	@ 0xee
	bl	m4aSongNumStart
.L_3c23a:
	add	r0, r4, #0
	mov	r1, #5
	bl	__udivsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #13
	bne	.L_3c280
	ldr	r3, .L_3c27c
	sub	r1, r4, #1
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	mov	r2, #0
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r2, [r0, #0]
	add	r0, #2
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldrh	r0, [r3, #10]
	add	r0, #64	@ 0x40
.L_3c266:
	strh	r0, [r3, #10]
	ldrh	r0, [r3, #8]
	sub	r0, #192	@ 0xc0
.L_3c26c:
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r3, #10]
.L_3c274:
	lsr	r1, r1, #6
	bl	func_803BA94
	b	.L_3c28e
.L_3c27c:
	.4byte	gCurrentSprite
.L_3c280:
	add	r0, r6, #0
	add	r1, r7, #0
	bl	func_803BA94
	b	.L_3c28e
.L_3c28a:
	mov	r0, #109	@ 0x6d
	strb	r0, [r4, #28]
.L_3c28e:
	bl	func_803BBD4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803C2A0
func_803C2A0:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_3c34c
	add	r0, r7, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #59	@ 0x3b
	bhi	.L_3c2b0
	b	.L_3c3a8
.L_3c2b0:
	mov	r0, #0
	strh	r0, [r7, #0]
	ldr	r1, .L_3c350
	ldr	r0, .L_3c354
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r7, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	ldr	r4, .L_3c358
	ldr	r0, [r4, #0]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r0, [r4, #12]
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldrh	r0, [r7, #8]
	lsr	r6, r0, #6
	ldrh	r0, [r7, #10]
	lsr	r4, r0, #6
	mov	r5, #0
	mov	r2, #0
	ldr	r0, .L_3c35c
	ldrb	r1, [r0, #0]
	cmp	r6, r1
	bne	.L_3c2f6
	ldrb	r0, [r0, #1]
	cmp	r4, r0
	beq	.L_3c31a
.L_3c2f6:
	add	r2, #1
	cmp	r2, #63	@ 0x3f
	bgt	.L_3c316
	ldr	r3, .L_3c35c
	lsl	r0, r2, #1
	add	r1, r0, r2
	add	r0, r1, r3
	ldrb	r0, [r0, #0]
	cmp	r6, r0
	bne	.L_3c2f6
	add	r0, r3, #1
	add	r0, r1, r0
	ldrb	r0, [r0, #0]
	cmp	r4, r0
	bne	.L_3c2f6
	add	r5, #1
.L_3c316:
	cmp	r5, #0
	beq	.L_3c3ac
.L_3c31a:
	ldr	r1, .L_3c350
	ldr	r0, .L_3c354
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, r2, r0
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #16
	bne	.L_3c3ac
	mov	r5, #255	@ 0xff
	mov	r2, #0
	ldr	r0, .L_3c360
	ldrb	r1, [r0, #23]
	add	r3, r0, #0
	cmp	r1, #58	@ 0x3a
	bne	.L_3c364
	ldrh	r1, [r3, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3c364
	mov	r5, #0
	b	.L_3c382
.L_3c34c:
	.4byte	gCurrentSprite
.L_3c350:
	.4byte	gPersistentSpriteData
.L_3c354:
	.4byte	gCurrentRoom
.L_3c358:
	.4byte	gMPlayTable
.L_3c35c:
	.4byte	gUnk_3000964
.L_3c360:
	.4byte	gSpriteData
.L_3c364:
	add	r2, #1
	cmp	r2, #23
	bgt	.L_3c382
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r3
	ldrb	r0, [r1, #23]
	cmp	r0, #58	@ 0x3a
	bne	.L_3c364
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3c364
	add	r5, r2, #0
.L_3c382:
	cmp	r5, #255	@ 0xff
	beq	.L_3c396
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r3
	ldrb	r0, [r1, #28]
	cmp	r0, #17
	beq	.L_3c3ac
	mov	r0, #29
	strb	r0, [r1, #30]
.L_3c396:
	ldr	r1, .L_3c3a4
	mov	r0, #3
	strb	r0, [r1, #1]
	mov	r0, #236	@ 0xec
	bl	m4aSongNumStart
	b	.L_3c3ac
.L_3c3a4:
	.4byte	gSwitchStates
.L_3c3a8:
	bl	func_803BBD4
.L_3c3ac:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803C3B4
func_803C3B4:
	ldr	r0, .L_3c404
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
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	mov	r0, #3
	strb	r0, [r1, #26]
	ldr	r0, .L_3c408
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
.L_3c404:
	.4byte	gCurrentSprite
.L_3c408:
	.4byte	sUnk_83C48D4


thumb_func_start func_803C40C
func_803C40C:
	ldr	r0, .L_3c45c
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
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	mov	r0, #3
	strb	r0, [r1, #26]
	ldr	r0, .L_3c460
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
.L_3c45c:
	.4byte	gCurrentSprite
.L_3c460:
	.4byte	sUnk_83C48F4


thumb_func_start func_803C464
func_803C464:
	push	{r4, lr}
	ldr	r0, .L_3c4d4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r4, ip
	add	r4, #34	@ 0x22
	mov	r0, #32
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r0, #48	@ 0x30
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	ldr	r0, .L_3c4d8
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3c4d4:
	.4byte	gCurrentSprite
.L_3c4d8:
	.4byte	sUnk_83C47D4


thumb_func_start func_803C4DC
func_803C4DC:
	push	{r4, lr}
	ldr	r0, .L_3c548
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r4, ip
	add	r4, #34	@ 0x22
	mov	r0, #32
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #38	@ 0x26
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #29
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	ldr	r0, .L_3c54c
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3c548:
	.4byte	gCurrentSprite
.L_3c54c:
	.4byte	sUnk_83C4794


thumb_func_start func_803C550
func_803C550:
	push	{r4, lr}
	ldr	r0, .L_3c5b8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r4, ip
	add	r4, #34	@ 0x22
	mov	r0, #32
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r0, #29
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	ldr	r0, .L_3c5bc
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3c5b8:
	.4byte	gCurrentSprite
.L_3c5bc:
	.4byte	sUnk_83C47B4


thumb_func_start func_803C5C0
func_803C5C0:
	push	{lr}
	ldr	r1, .L_3c618
	ldr	r2, .L_3c61c
	ldr	r0, .L_3c620
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_3c612
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3c612
	ldr	r0, .L_3c624
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #15
	strb	r0, [r3, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #29
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #236	@ 0xec
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
.L_3c612:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3c618:
	.4byte	gPersistentSpriteData
.L_3c61c:
	.4byte	gCurrentSprite
.L_3c620:
	.4byte	gCurrentRoom
.L_3c624:
	.4byte	sUnk_83C4754


thumb_func_start func_803C628
func_803C628:
	ldr	r2, .L_3c64c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3c648
	ldr	r0, .L_3c650
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #24
	strb	r0, [r2, #28]
.L_3c648:
	bx	lr
	.align	2, 0
.L_3c64c:
	.4byte	gCurrentSprite
.L_3c650:
	.4byte	sUnk_83C4794


thumb_func_start func_803C654
func_803C654:
	push	{lr}
	ldr	r1, .L_3c6a8
	ldr	r2, .L_3c6ac
	ldr	r0, .L_3c6b0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	mov	r3, #0
	mov	r1, #33	@ 0x21
	strb	r1, [r0, #0]
	ldr	r1, .L_3c6b4
	mov	r0, #3
	strb	r0, [r1, #1]
	ldr	r0, .L_3c6b8
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #15
	strb	r0, [r1, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
	mov	r0, #29
	strb	r0, [r2, #30]
	add	r2, #35	@ 0x23
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	bl	func_803B9FC
	bl	func_803BA64
	mov	r0, #235	@ 0xeb
	bl	m4aSongNumStart
	mov	r0, #1
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
.L_3c6a8:
	.4byte	gPersistentSpriteData
.L_3c6ac:
	.4byte	gCurrentSprite
.L_3c6b0:
	.4byte	gCurrentRoom
.L_3c6b4:
	.4byte	gSwitchStates
.L_3c6b8:
	.4byte	sUnk_83C4754


thumb_func_start func_803C6BC
func_803C6BC:
	push	{lr}
	ldr	r2, .L_3c6f0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3c6ec
	ldr	r0, .L_3c6f4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #24
	strb	r0, [r2, #28]
	ldrh	r0, [r2, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r2, #10]
	add	r1, #96	@ 0x60
	mov	r2, #10
	bl	func_80767DC
.L_3c6ec:
	pop	{r0}
	bx	r0
.L_3c6f0:
	.4byte	gCurrentSprite
.L_3c6f4:
	.4byte	sUnk_83C47B4


thumb_func_start func_803C6F8
func_803C6F8:
	ldr	r0, .L_3c750
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c750:
	.4byte	gCurrentSprite


thumb_func_start func_803C754
func_803C754:
	ldr	r0, .L_3c7ac
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c7ac:
	.4byte	gCurrentSprite


thumb_func_start func_803C7B0
func_803C7B0:
	ldr	r0, .L_3c808
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c808:
	.4byte	gCurrentSprite


thumb_func_start func_803C80C
func_803C80C:
	ldr	r0, .L_3c864
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c864:
	.4byte	gCurrentSprite


thumb_func_start func_803C868
func_803C868:
	ldr	r0, .L_3c8bc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c8bc:
	.4byte	gCurrentSprite


thumb_func_start func_803C8C0
func_803C8C0:
	ldr	r0, .L_3c918
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c918:
	.4byte	gCurrentSprite


thumb_func_start func_803C91C
func_803C91C:
	ldr	r0, .L_3c974
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c974:
	.4byte	gCurrentSprite


thumb_func_start func_803C978
func_803C978:
	ldr	r0, .L_3c9d0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3c9d0:
	.4byte	gCurrentSprite


thumb_func_start func_803C9D4
func_803C9D4:
	ldr	r0, .L_3ca2c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3ca2c:
	.4byte	gCurrentSprite


thumb_func_start func_803CA30
func_803CA30:
	ldr	r0, .L_3ca84
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #6
	mov	r1, ip
	strb	r0, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	mov	r0, #3
	strb	r0, [r1, #26]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_3ca84:
	.4byte	gCurrentSprite


thumb_func_start func_803CA88
func_803CA88:
	ldr	r1, .L_3cab8
	ldr	r2, .L_3cabc
	ldr	r0, .L_3cac0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #64	@ 0x40
	beq	.L_3caf8
	cmp	r1, #64	@ 0x40
	bgt	.L_3caca
	cmp	r1, #32
	beq	.L_3cae8
	cmp	r1, #32
	bgt	.L_3cac4
	cmp	r1, #16
	beq	.L_3cade
	b	.L_3cb18
	.align	2, 0
.L_3cab8:
	.4byte	gPersistentSpriteData
.L_3cabc:
	.4byte	gCurrentSprite
.L_3cac0:
	.4byte	gCurrentRoom
.L_3cac4:
	cmp	r1, #48	@ 0x30
	beq	.L_3caf0
	b	.L_3cb18
.L_3caca:
	cmp	r1, #96	@ 0x60
	beq	.L_3cb08
	cmp	r1, #96	@ 0x60
	bgt	.L_3cad8
	cmp	r1, #80	@ 0x50
	beq	.L_3cb00
	b	.L_3cb18
.L_3cad8:
	cmp	r0, #112	@ 0x70
	beq	.L_3cb10
	b	.L_3cb18
.L_3cade:
	ldr	r0, .L_3cae4
	b	.L_3cb1a
	.align	2, 0
.L_3cae4:
	.4byte	sUnk_83C4184
.L_3cae8:
	ldr	r0, .L_3caec
	b	.L_3cb1a
.L_3caec:
	.4byte	sUnk_83C4194
.L_3caf0:
	ldr	r0, .L_3caf4
	b	.L_3cb1a
.L_3caf4:
	.4byte	sUnk_83C41A4
.L_3caf8:
	ldr	r0, .L_3cafc
	b	.L_3cb1a
.L_3cafc:
	.4byte	sUnk_83C41B4
.L_3cb00:
	ldr	r0, .L_3cb04
	b	.L_3cb1a
.L_3cb04:
	.4byte	sUnk_83C41C4
.L_3cb08:
	ldr	r0, .L_3cb0c
	b	.L_3cb1a
.L_3cb0c:
	.4byte	sUnk_83C41D4
.L_3cb10:
	ldr	r0, .L_3cb14
	b	.L_3cb1a
.L_3cb14:
	.4byte	sUnk_83C41E4
.L_3cb18:
	ldr	r0, .L_3cb20
.L_3cb1a:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cb20:
	.4byte	sUnk_83C4174


thumb_func_start func_803CB24
func_803CB24:
	ldr	r1, .L_3cb54
	ldr	r2, .L_3cb58
	ldr	r0, .L_3cb5c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #64	@ 0x40
	beq	.L_3cb94
	cmp	r1, #64	@ 0x40
	bgt	.L_3cb66
	cmp	r1, #32
	beq	.L_3cb84
	cmp	r1, #32
	bgt	.L_3cb60
	cmp	r1, #16
	beq	.L_3cb7a
	b	.L_3cbb4
	.align	2, 0
.L_3cb54:
	.4byte	gPersistentSpriteData
.L_3cb58:
	.4byte	gCurrentSprite
.L_3cb5c:
	.4byte	gCurrentRoom
.L_3cb60:
	cmp	r1, #48	@ 0x30
	beq	.L_3cb8c
	b	.L_3cbb4
.L_3cb66:
	cmp	r1, #96	@ 0x60
	beq	.L_3cba4
	cmp	r1, #96	@ 0x60
	bgt	.L_3cb74
	cmp	r1, #80	@ 0x50
	beq	.L_3cb9c
	b	.L_3cbb4
.L_3cb74:
	cmp	r0, #112	@ 0x70
	beq	.L_3cbac
	b	.L_3cbb4
.L_3cb7a:
	ldr	r0, .L_3cb80
	b	.L_3cbb6
	.align	2, 0
.L_3cb80:
	.4byte	sUnk_83C4204
.L_3cb84:
	ldr	r0, .L_3cb88
	b	.L_3cbb6
.L_3cb88:
	.4byte	sUnk_83C4214
.L_3cb8c:
	ldr	r0, .L_3cb90
	b	.L_3cbb6
.L_3cb90:
	.4byte	sUnk_83C4224
.L_3cb94:
	ldr	r0, .L_3cb98
	b	.L_3cbb6
.L_3cb98:
	.4byte	sUnk_83C4234
.L_3cb9c:
	ldr	r0, .L_3cba0
	b	.L_3cbb6
.L_3cba0:
	.4byte	sUnk_83C4244
.L_3cba4:
	ldr	r0, .L_3cba8
	b	.L_3cbb6
.L_3cba8:
	.4byte	sUnk_83C4254
.L_3cbac:
	ldr	r0, .L_3cbb0
	b	.L_3cbb6
.L_3cbb0:
	.4byte	sUnk_83C4264
.L_3cbb4:
	ldr	r0, .L_3cbbc
.L_3cbb6:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cbbc:
	.4byte	sUnk_83C41F4


thumb_func_start func_803CBC0
func_803CBC0:
	ldr	r1, .L_3cbf0
	ldr	r2, .L_3cbf4
	ldr	r0, .L_3cbf8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #80	@ 0x50
	beq	.L_3cc40
	cmp	r1, #80	@ 0x50
	bgt	.L_3cc06
	cmp	r1, #32
	beq	.L_3cc28
	cmp	r1, #32
	bgt	.L_3cbfc
	cmp	r1, #16
	beq	.L_3cc1e
	b	.L_3cc68
	.align	2, 0
.L_3cbf0:
	.4byte	gPersistentSpriteData
.L_3cbf4:
	.4byte	gCurrentSprite
.L_3cbf8:
	.4byte	gCurrentRoom
.L_3cbfc:
	cmp	r1, #48	@ 0x30
	beq	.L_3cc30
	cmp	r1, #64	@ 0x40
	beq	.L_3cc38
	b	.L_3cc68
.L_3cc06:
	cmp	r1, #112	@ 0x70
	beq	.L_3cc50
	cmp	r1, #112	@ 0x70
	bgt	.L_3cc14
	cmp	r1, #96	@ 0x60
	beq	.L_3cc48
	b	.L_3cc68
.L_3cc14:
	cmp	r0, #128	@ 0x80
	beq	.L_3cc58
	cmp	r0, #144	@ 0x90
	beq	.L_3cc60
	b	.L_3cc68
.L_3cc1e:
	ldr	r0, .L_3cc24
	b	.L_3cc6a
	.align	2, 0
.L_3cc24:
	.4byte	sUnk_83C4284
.L_3cc28:
	ldr	r0, .L_3cc2c
	b	.L_3cc6a
.L_3cc2c:
	.4byte	sUnk_83C4294
.L_3cc30:
	ldr	r0, .L_3cc34
	b	.L_3cc6a
.L_3cc34:
	.4byte	sUnk_83C42A4
.L_3cc38:
	ldr	r0, .L_3cc3c
	b	.L_3cc6a
.L_3cc3c:
	.4byte	sUnk_83C42B4
.L_3cc40:
	ldr	r0, .L_3cc44
	b	.L_3cc6a
.L_3cc44:
	.4byte	sUnk_83C42C4
.L_3cc48:
	ldr	r0, .L_3cc4c
	b	.L_3cc6a
.L_3cc4c:
	.4byte	sUnk_83C42D4
.L_3cc50:
	ldr	r0, .L_3cc54
	b	.L_3cc6a
.L_3cc54:
	.4byte	sUnk_83C42E4
.L_3cc58:
	ldr	r0, .L_3cc5c
	b	.L_3cc6a
.L_3cc5c:
	.4byte	sUnk_83C42F4
.L_3cc60:
	ldr	r0, .L_3cc64
	b	.L_3cc6a
.L_3cc64:
	.4byte	sUnk_83C4304
.L_3cc68:
	ldr	r0, .L_3cc70
.L_3cc6a:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cc70:
	.4byte	sUnk_83C4274


thumb_func_start func_803CC74
func_803CC74:
	ldr	r1, .L_3cca4
	ldr	r2, .L_3cca8
	ldr	r0, .L_3ccac
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #80	@ 0x50
	beq	.L_3ccf4
	cmp	r1, #80	@ 0x50
	bgt	.L_3ccba
	cmp	r1, #32
	beq	.L_3ccdc
	cmp	r1, #32
	bgt	.L_3ccb0
	cmp	r1, #16
	beq	.L_3ccd2
	b	.L_3cd1c
	.align	2, 0
.L_3cca4:
	.4byte	gPersistentSpriteData
.L_3cca8:
	.4byte	gCurrentSprite
.L_3ccac:
	.4byte	gCurrentRoom
.L_3ccb0:
	cmp	r1, #48	@ 0x30
	beq	.L_3cce4
	cmp	r1, #64	@ 0x40
	beq	.L_3ccec
	b	.L_3cd1c
.L_3ccba:
	cmp	r1, #112	@ 0x70
	beq	.L_3cd04
	cmp	r1, #112	@ 0x70
	bgt	.L_3ccc8
	cmp	r1, #96	@ 0x60
	beq	.L_3ccfc
	b	.L_3cd1c
.L_3ccc8:
	cmp	r0, #128	@ 0x80
	beq	.L_3cd0c
	cmp	r0, #144	@ 0x90
	beq	.L_3cd14
	b	.L_3cd1c
.L_3ccd2:
	ldr	r0, .L_3ccd8
	b	.L_3cd1e
	.align	2, 0
.L_3ccd8:
	.4byte	sUnk_83C4324
.L_3ccdc:
	ldr	r0, .L_3cce0
	b	.L_3cd1e
.L_3cce0:
	.4byte	sUnk_83C4334
.L_3cce4:
	ldr	r0, .L_3cce8
	b	.L_3cd1e
.L_3cce8:
	.4byte	sUnk_83C4344
.L_3ccec:
	ldr	r0, .L_3ccf0
	b	.L_3cd1e
.L_3ccf0:
	.4byte	sUnk_83C4354
.L_3ccf4:
	ldr	r0, .L_3ccf8
	b	.L_3cd1e
.L_3ccf8:
	.4byte	sUnk_83C4364
.L_3ccfc:
	ldr	r0, .L_3cd00
	b	.L_3cd1e
.L_3cd00:
	.4byte	sUnk_83C4374
.L_3cd04:
	ldr	r0, .L_3cd08
	b	.L_3cd1e
.L_3cd08:
	.4byte	sUnk_83C4384
.L_3cd0c:
	ldr	r0, .L_3cd10
	b	.L_3cd1e
.L_3cd10:
	.4byte	sUnk_83C4394
.L_3cd14:
	ldr	r0, .L_3cd18
	b	.L_3cd1e
.L_3cd18:
	.4byte	sUnk_83C43A4
.L_3cd1c:
	ldr	r0, .L_3cd24
.L_3cd1e:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cd24:
	.4byte	sUnk_83C4314


thumb_func_start func_803CD28
func_803CD28:
	ldr	r1, .L_3cd58
	ldr	r2, .L_3cd5c
	ldr	r0, .L_3cd60
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #64	@ 0x40
	beq	.L_3cd9c
	cmp	r1, #64	@ 0x40
	bgt	.L_3cd6a
	cmp	r1, #32
	beq	.L_3cd8c
	cmp	r1, #32
	bgt	.L_3cd64
	cmp	r1, #16
	beq	.L_3cd82
	b	.L_3cdc4
	.align	2, 0
.L_3cd58:
	.4byte	gPersistentSpriteData
.L_3cd5c:
	.4byte	gCurrentSprite
.L_3cd60:
	.4byte	gCurrentRoom
.L_3cd64:
	cmp	r1, #48	@ 0x30
	beq	.L_3cd94
	b	.L_3cdc4
.L_3cd6a:
	cmp	r1, #96	@ 0x60
	beq	.L_3cdac
	cmp	r1, #96	@ 0x60
	bgt	.L_3cd78
	cmp	r1, #80	@ 0x50
	beq	.L_3cda4
	b	.L_3cdc4
.L_3cd78:
	cmp	r0, #112	@ 0x70
	beq	.L_3cdb4
	cmp	r0, #128	@ 0x80
	beq	.L_3cdbc
	b	.L_3cdc4
.L_3cd82:
	ldr	r0, .L_3cd88
	b	.L_3cdc6
	.align	2, 0
.L_3cd88:
	.4byte	sUnk_83C43C4
.L_3cd8c:
	ldr	r0, .L_3cd90
	b	.L_3cdc6
.L_3cd90:
	.4byte	sUnk_83C43D4
.L_3cd94:
	ldr	r0, .L_3cd98
	b	.L_3cdc6
.L_3cd98:
	.4byte	sUnk_83C43E4
.L_3cd9c:
	ldr	r0, .L_3cda0
	b	.L_3cdc6
.L_3cda0:
	.4byte	sUnk_83C43F4
.L_3cda4:
	ldr	r0, .L_3cda8
	b	.L_3cdc6
.L_3cda8:
	.4byte	sUnk_83C4404
.L_3cdac:
	ldr	r0, .L_3cdb0
	b	.L_3cdc6
.L_3cdb0:
	.4byte	sUnk_83C4414
.L_3cdb4:
	ldr	r0, .L_3cdb8
	b	.L_3cdc6
.L_3cdb8:
	.4byte	sUnk_83C4424
.L_3cdbc:
	ldr	r0, .L_3cdc0
	b	.L_3cdc6
.L_3cdc0:
	.4byte	sUnk_83C4434
.L_3cdc4:
	ldr	r0, .L_3cdcc
.L_3cdc6:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cdcc:
	.4byte	sUnk_83C43B4


thumb_func_start func_803CDD0
func_803CDD0:
	ldr	r1, .L_3ce00
	ldr	r2, .L_3ce04
	ldr	r0, .L_3ce08
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #64	@ 0x40
	beq	.L_3ce44
	cmp	r1, #64	@ 0x40
	bgt	.L_3ce12
	cmp	r1, #32
	beq	.L_3ce34
	cmp	r1, #32
	bgt	.L_3ce0c
	cmp	r1, #16
	beq	.L_3ce2a
	b	.L_3ce6c
	.align	2, 0
.L_3ce00:
	.4byte	gPersistentSpriteData
.L_3ce04:
	.4byte	gCurrentSprite
.L_3ce08:
	.4byte	gCurrentRoom
.L_3ce0c:
	cmp	r1, #48	@ 0x30
	beq	.L_3ce3c
	b	.L_3ce6c
.L_3ce12:
	cmp	r1, #96	@ 0x60
	beq	.L_3ce54
	cmp	r1, #96	@ 0x60
	bgt	.L_3ce20
	cmp	r1, #80	@ 0x50
	beq	.L_3ce4c
	b	.L_3ce6c
.L_3ce20:
	cmp	r0, #112	@ 0x70
	beq	.L_3ce5c
	cmp	r0, #128	@ 0x80
	beq	.L_3ce64
	b	.L_3ce6c
.L_3ce2a:
	ldr	r0, .L_3ce30
	b	.L_3ce6e
	.align	2, 0
.L_3ce30:
	.4byte	sUnk_83C4454
.L_3ce34:
	ldr	r0, .L_3ce38
	b	.L_3ce6e
.L_3ce38:
	.4byte	sUnk_83C4464
.L_3ce3c:
	ldr	r0, .L_3ce40
	b	.L_3ce6e
.L_3ce40:
	.4byte	sUnk_83C4474
.L_3ce44:
	ldr	r0, .L_3ce48
	b	.L_3ce6e
.L_3ce48:
	.4byte	sUnk_83C4484
.L_3ce4c:
	ldr	r0, .L_3ce50
	b	.L_3ce6e
.L_3ce50:
	.4byte	sUnk_83C4494
.L_3ce54:
	ldr	r0, .L_3ce58
	b	.L_3ce6e
.L_3ce58:
	.4byte	sUnk_83C44A4
.L_3ce5c:
	ldr	r0, .L_3ce60
	b	.L_3ce6e
.L_3ce60:
	.4byte	sUnk_83C44B4
.L_3ce64:
	ldr	r0, .L_3ce68
	b	.L_3ce6e
.L_3ce68:
	.4byte	sUnk_83C44C4
.L_3ce6c:
	ldr	r0, .L_3ce74
.L_3ce6e:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3ce74:
	.4byte	sUnk_83C4444


thumb_func_start func_803CE78
func_803CE78:
	ldr	r1, .L_3ceac
	ldr	r2, .L_3ceb0
	ldr	r0, .L_3ceb4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #112	@ 0x70
	beq	.L_3cf24
	cmp	r1, #112	@ 0x70
	bgt	.L_3cecc
	cmp	r1, #48	@ 0x30
	beq	.L_3cf04
	cmp	r1, #48	@ 0x30
	bgt	.L_3ceb8
	cmp	r1, #16
	beq	.L_3cf64
	cmp	r1, #32
	beq	.L_3cefc
	b	.L_3cf64
	.align	2, 0
.L_3ceac:
	.4byte	gPersistentSpriteData
.L_3ceb0:
	.4byte	gCurrentSprite
.L_3ceb4:
	.4byte	gCurrentRoom
.L_3ceb8:
	cmp	r1, #80	@ 0x50
	beq	.L_3cf14
	cmp	r1, #80	@ 0x50
	bgt	.L_3cec6
	cmp	r1, #64	@ 0x40
	beq	.L_3cf0c
	b	.L_3cf64
.L_3cec6:
	cmp	r1, #96	@ 0x60
	beq	.L_3cf1c
	b	.L_3cf64
.L_3cecc:
	cmp	r1, #176	@ 0xb0
	beq	.L_3cf44
	cmp	r1, #176	@ 0xb0
	bgt	.L_3cee8
	cmp	r1, #144	@ 0x90
	beq	.L_3cf34
	cmp	r1, #144	@ 0x90
	bgt	.L_3cee2
	cmp	r1, #128	@ 0x80
	beq	.L_3cf2c
	b	.L_3cf64
.L_3cee2:
	cmp	r1, #160	@ 0xa0
	beq	.L_3cf3c
	b	.L_3cf64
.L_3cee8:
	cmp	r1, #208	@ 0xd0
	beq	.L_3cf54
	cmp	r1, #208	@ 0xd0
	bgt	.L_3cef6
	cmp	r1, #192	@ 0xc0
	beq	.L_3cf4c
	b	.L_3cf64
.L_3cef6:
	cmp	r0, #224	@ 0xe0
	beq	.L_3cf5c
	b	.L_3cf64
.L_3cefc:
	ldr	r0, .L_3cf00
	b	.L_3cf66
.L_3cf00:
	.4byte	sUnk_83C44E4
.L_3cf04:
	ldr	r0, .L_3cf08
	b	.L_3cf66
.L_3cf08:
	.4byte	sUnk_83C44E4
.L_3cf0c:
	ldr	r0, .L_3cf10
	b	.L_3cf66
.L_3cf10:
	.4byte	sUnk_83C44F4
.L_3cf14:
	ldr	r0, .L_3cf18
	b	.L_3cf66
.L_3cf18:
	.4byte	sUnk_83C44F4
.L_3cf1c:
	ldr	r0, .L_3cf20
	b	.L_3cf66
.L_3cf20:
	.4byte	sUnk_83C4504
.L_3cf24:
	ldr	r0, .L_3cf28
	b	.L_3cf66
.L_3cf28:
	.4byte	sUnk_83C4504
.L_3cf2c:
	ldr	r0, .L_3cf30
	b	.L_3cf66
.L_3cf30:
	.4byte	sUnk_83C4514
.L_3cf34:
	ldr	r0, .L_3cf38
	b	.L_3cf66
.L_3cf38:
	.4byte	sUnk_83C4514
.L_3cf3c:
	ldr	r0, .L_3cf40
	b	.L_3cf66
.L_3cf40:
	.4byte	sUnk_83C4524
.L_3cf44:
	ldr	r0, .L_3cf48
	b	.L_3cf66
.L_3cf48:
	.4byte	sUnk_83C4534
.L_3cf4c:
	ldr	r0, .L_3cf50
	b	.L_3cf66
.L_3cf50:
	.4byte	sUnk_83C4544
.L_3cf54:
	ldr	r0, .L_3cf58
	b	.L_3cf66
.L_3cf58:
	.4byte	sUnk_83C4554
.L_3cf5c:
	ldr	r0, .L_3cf60
	b	.L_3cf66
.L_3cf60:
	.4byte	sUnk_83C4564
.L_3cf64:
	ldr	r0, .L_3cf6c
.L_3cf66:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3cf6c:
	.4byte	sUnk_83C44D4


thumb_func_start func_803CF70
func_803CF70:
	ldr	r1, .L_3cfa4
	ldr	r2, .L_3cfa8
	ldr	r0, .L_3cfac
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #112	@ 0x70
	beq	.L_3d01c
	cmp	r1, #112	@ 0x70
	bgt	.L_3cfc4
	cmp	r1, #48	@ 0x30
	beq	.L_3cffc
	cmp	r1, #48	@ 0x30
	bgt	.L_3cfb0
	cmp	r1, #16
	beq	.L_3d05c
	cmp	r1, #32
	beq	.L_3cff4
	b	.L_3d05c
	.align	2, 0
.L_3cfa4:
	.4byte	gPersistentSpriteData
.L_3cfa8:
	.4byte	gCurrentSprite
.L_3cfac:
	.4byte	gCurrentRoom
.L_3cfb0:
	cmp	r1, #80	@ 0x50
	beq	.L_3d00c
	cmp	r1, #80	@ 0x50
	bgt	.L_3cfbe
	cmp	r1, #64	@ 0x40
	beq	.L_3d004
	b	.L_3d05c
.L_3cfbe:
	cmp	r1, #96	@ 0x60
	beq	.L_3d014
	b	.L_3d05c
.L_3cfc4:
	cmp	r1, #176	@ 0xb0
	beq	.L_3d03c
	cmp	r1, #176	@ 0xb0
	bgt	.L_3cfe0
	cmp	r1, #144	@ 0x90
	beq	.L_3d02c
	cmp	r1, #144	@ 0x90
	bgt	.L_3cfda
	cmp	r1, #128	@ 0x80
	beq	.L_3d024
	b	.L_3d05c
.L_3cfda:
	cmp	r1, #160	@ 0xa0
	beq	.L_3d034
	b	.L_3d05c
.L_3cfe0:
	cmp	r1, #208	@ 0xd0
	beq	.L_3d04c
	cmp	r1, #208	@ 0xd0
	bgt	.L_3cfee
	cmp	r1, #192	@ 0xc0
	beq	.L_3d044
	b	.L_3d05c
.L_3cfee:
	cmp	r0, #224	@ 0xe0
	beq	.L_3d054
	b	.L_3d05c
.L_3cff4:
	ldr	r0, .L_3cff8
	b	.L_3d05e
.L_3cff8:
	.4byte	sUnk_83C4584
.L_3cffc:
	ldr	r0, .L_3d000
	b	.L_3d05e
.L_3d000:
	.4byte	sUnk_83C4584
.L_3d004:
	ldr	r0, .L_3d008
	b	.L_3d05e
.L_3d008:
	.4byte	sUnk_83C4594
.L_3d00c:
	ldr	r0, .L_3d010
	b	.L_3d05e
.L_3d010:
	.4byte	sUnk_83C4594
.L_3d014:
	ldr	r0, .L_3d018
	b	.L_3d05e
.L_3d018:
	.4byte	sUnk_83C45A4
.L_3d01c:
	ldr	r0, .L_3d020
	b	.L_3d05e
.L_3d020:
	.4byte	sUnk_83C45A4
.L_3d024:
	ldr	r0, .L_3d028
	b	.L_3d05e
.L_3d028:
	.4byte	sUnk_83C45B4
.L_3d02c:
	ldr	r0, .L_3d030
	b	.L_3d05e
.L_3d030:
	.4byte	sUnk_83C45B4
.L_3d034:
	ldr	r0, .L_3d038
	b	.L_3d05e
.L_3d038:
	.4byte	sUnk_83C45C4
.L_3d03c:
	ldr	r0, .L_3d040
	b	.L_3d05e
.L_3d040:
	.4byte	sUnk_83C45D4
.L_3d044:
	ldr	r0, .L_3d048
	b	.L_3d05e
.L_3d048:
	.4byte	sUnk_83C45E4
.L_3d04c:
	ldr	r0, .L_3d050
	b	.L_3d05e
.L_3d050:
	.4byte	sUnk_83C45F4
.L_3d054:
	ldr	r0, .L_3d058
	b	.L_3d05e
.L_3d058:
	.4byte	sUnk_83C4604
.L_3d05c:
	ldr	r0, .L_3d064
.L_3d05e:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3d064:
	.4byte	sUnk_83C4574


thumb_func_start func_803D068
func_803D068:
	ldr	r1, .L_3d09c
	ldr	r2, .L_3d0a0
	ldr	r0, .L_3d0a4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #112	@ 0x70
	beq	.L_3d114
	cmp	r1, #112	@ 0x70
	bgt	.L_3d0bc
	cmp	r1, #48	@ 0x30
	beq	.L_3d0f4
	cmp	r1, #48	@ 0x30
	bgt	.L_3d0a8
	cmp	r1, #16
	beq	.L_3d154
	cmp	r1, #32
	beq	.L_3d0ec
	b	.L_3d154
	.align	2, 0
.L_3d09c:
	.4byte	gPersistentSpriteData
.L_3d0a0:
	.4byte	gCurrentSprite
.L_3d0a4:
	.4byte	gCurrentRoom
.L_3d0a8:
	cmp	r1, #80	@ 0x50
	beq	.L_3d104
	cmp	r1, #80	@ 0x50
	bgt	.L_3d0b6
	cmp	r1, #64	@ 0x40
	beq	.L_3d0fc
	b	.L_3d154
.L_3d0b6:
	cmp	r1, #96	@ 0x60
	beq	.L_3d10c
	b	.L_3d154
.L_3d0bc:
	cmp	r1, #176	@ 0xb0
	beq	.L_3d134
	cmp	r1, #176	@ 0xb0
	bgt	.L_3d0d8
	cmp	r1, #144	@ 0x90
	beq	.L_3d124
	cmp	r1, #144	@ 0x90
	bgt	.L_3d0d2
	cmp	r1, #128	@ 0x80
	beq	.L_3d11c
	b	.L_3d154
.L_3d0d2:
	cmp	r1, #160	@ 0xa0
	beq	.L_3d12c
	b	.L_3d154
.L_3d0d8:
	cmp	r1, #208	@ 0xd0
	beq	.L_3d144
	cmp	r1, #208	@ 0xd0
	bgt	.L_3d0e6
	cmp	r1, #192	@ 0xc0
	beq	.L_3d13c
	b	.L_3d154
.L_3d0e6:
	cmp	r0, #224	@ 0xe0
	beq	.L_3d14c
	b	.L_3d154
.L_3d0ec:
	ldr	r0, .L_3d0f0
	b	.L_3d156
.L_3d0f0:
	.4byte	sUnk_83C4624
.L_3d0f4:
	ldr	r0, .L_3d0f8
	b	.L_3d156
.L_3d0f8:
	.4byte	sUnk_83C4624
.L_3d0fc:
	ldr	r0, .L_3d100
	b	.L_3d156
.L_3d100:
	.4byte	sUnk_83C4634
.L_3d104:
	ldr	r0, .L_3d108
	b	.L_3d156
.L_3d108:
	.4byte	sUnk_83C4634
.L_3d10c:
	ldr	r0, .L_3d110
	b	.L_3d156
.L_3d110:
	.4byte	sUnk_83C4644
.L_3d114:
	ldr	r0, .L_3d118
	b	.L_3d156
.L_3d118:
	.4byte	sUnk_83C4644
.L_3d11c:
	ldr	r0, .L_3d120
	b	.L_3d156
.L_3d120:
	.4byte	sUnk_83C4654
.L_3d124:
	ldr	r0, .L_3d128
	b	.L_3d156
.L_3d128:
	.4byte	sUnk_83C4654
.L_3d12c:
	ldr	r0, .L_3d130
	b	.L_3d156
.L_3d130:
	.4byte	sUnk_83C4664
.L_3d134:
	ldr	r0, .L_3d138
	b	.L_3d156
.L_3d138:
	.4byte	sUnk_83C4674
.L_3d13c:
	ldr	r0, .L_3d140
	b	.L_3d156
.L_3d140:
	.4byte	sUnk_83C4684
.L_3d144:
	ldr	r0, .L_3d148
	b	.L_3d156
.L_3d148:
	.4byte	sUnk_83C4694
.L_3d14c:
	ldr	r0, .L_3d150
	b	.L_3d156
.L_3d150:
	.4byte	sUnk_83C46A4
.L_3d154:
	ldr	r0, .L_3d15c
.L_3d156:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3d15c:
	.4byte	sUnk_83C4614


thumb_func_start func_803D160
func_803D160:
	ldr	r1, .L_3d194
	ldr	r2, .L_3d198
	ldr	r0, .L_3d19c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r3, [r2, #24]
	add	r0, r0, r3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	and	r1, r0
	add	r0, r1, #0
	cmp	r1, #112	@ 0x70
	beq	.L_3d20c
	cmp	r1, #112	@ 0x70
	bgt	.L_3d1b4
	cmp	r1, #48	@ 0x30
	beq	.L_3d1ec
	cmp	r1, #48	@ 0x30
	bgt	.L_3d1a0
	cmp	r1, #16
	beq	.L_3d24c
	cmp	r1, #32
	beq	.L_3d1e4
	b	.L_3d24c
	.align	2, 0
.L_3d194:
	.4byte	gPersistentSpriteData
.L_3d198:
	.4byte	gCurrentSprite
.L_3d19c:
	.4byte	gCurrentRoom
.L_3d1a0:
	cmp	r1, #80	@ 0x50
	beq	.L_3d1fc
	cmp	r1, #80	@ 0x50
	bgt	.L_3d1ae
	cmp	r1, #64	@ 0x40
	beq	.L_3d1f4
	b	.L_3d24c
.L_3d1ae:
	cmp	r1, #96	@ 0x60
	beq	.L_3d204
	b	.L_3d24c
.L_3d1b4:
	cmp	r1, #176	@ 0xb0
	beq	.L_3d22c
	cmp	r1, #176	@ 0xb0
	bgt	.L_3d1d0
	cmp	r1, #144	@ 0x90
	beq	.L_3d21c
	cmp	r1, #144	@ 0x90
	bgt	.L_3d1ca
	cmp	r1, #128	@ 0x80
	beq	.L_3d214
	b	.L_3d24c
.L_3d1ca:
	cmp	r1, #160	@ 0xa0
	beq	.L_3d224
	b	.L_3d24c
.L_3d1d0:
	cmp	r1, #208	@ 0xd0
	beq	.L_3d23c
	cmp	r1, #208	@ 0xd0
	bgt	.L_3d1de
	cmp	r1, #192	@ 0xc0
	beq	.L_3d234
	b	.L_3d24c
.L_3d1de:
	cmp	r0, #224	@ 0xe0
	beq	.L_3d244
	b	.L_3d24c
.L_3d1e4:
	ldr	r0, .L_3d1e8
	b	.L_3d24e
.L_3d1e8:
	.4byte	sUnk_83C46C4
.L_3d1ec:
	ldr	r0, .L_3d1f0
	b	.L_3d24e
.L_3d1f0:
	.4byte	sUnk_83C46C4
.L_3d1f4:
	ldr	r0, .L_3d1f8
	b	.L_3d24e
.L_3d1f8:
	.4byte	sUnk_83C46D4
.L_3d1fc:
	ldr	r0, .L_3d200
	b	.L_3d24e
.L_3d200:
	.4byte	sUnk_83C46D4
.L_3d204:
	ldr	r0, .L_3d208
	b	.L_3d24e
.L_3d208:
	.4byte	sUnk_83C46E4
.L_3d20c:
	ldr	r0, .L_3d210
	b	.L_3d24e
.L_3d210:
	.4byte	sUnk_83C46E4
.L_3d214:
	ldr	r0, .L_3d218
	b	.L_3d24e
.L_3d218:
	.4byte	sUnk_83C46F4
.L_3d21c:
	ldr	r0, .L_3d220
	b	.L_3d24e
.L_3d220:
	.4byte	sUnk_83C46F4
.L_3d224:
	ldr	r0, .L_3d228
	b	.L_3d24e
.L_3d228:
	.4byte	sUnk_83C4704
.L_3d22c:
	ldr	r0, .L_3d230
	b	.L_3d24e
.L_3d230:
	.4byte	sUnk_83C4714
.L_3d234:
	ldr	r0, .L_3d238
	b	.L_3d24e
.L_3d238:
	.4byte	sUnk_83C4724
.L_3d23c:
	ldr	r0, .L_3d240
	b	.L_3d24e
.L_3d240:
	.4byte	sUnk_83C4734
.L_3d244:
	ldr	r0, .L_3d248
	b	.L_3d24e
.L_3d248:
	.4byte	sUnk_83C4744
.L_3d24c:
	ldr	r0, .L_3d254
.L_3d24e:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_3d254:
	.4byte	sUnk_83C46B4


thumb_func_start SpriteDominoes2D
SpriteDominoes2D:
	push	{lr}
	ldr	r1, .L_3d270
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_3d284
	cmp	r0, #16
	bgt	.L_3d274
	cmp	r0, #0
	beq	.L_3d27e
	b	.L_3d294
.L_3d270:
	.4byte	gCurrentSprite
.L_3d274:
	cmp	r0, #18
	beq	.L_3d28a
	cmp	r0, #109	@ 0x6d
	beq	.L_3d290
	b	.L_3d294
.L_3d27e:
	bl	func_803BAF4
	b	.L_3d294
.L_3d284:
	bl	func_803BB50
	b	.L_3d294
.L_3d28a:
	bl	func_803BCB8
	b	.L_3d294
.L_3d290:
	bl	func_803C2A0
.L_3d294:
	pop	{r0}
	bx	r0


thumb_func_start SpriteDominoes2E
SpriteDominoes2E:
	push	{lr}
	ldr	r0, .L_3d2b0
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_3d2aa
	bl	func_803C3B4
.L_3d2aa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d2b0:
	.4byte	gCurrentSprite


thumb_func_start SpriteDominoes2F
SpriteDominoes2F:
	push	{lr}
	ldr	r0, .L_3d2cc
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_3d2c6
	bl	func_803C40C
.L_3d2c6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d2cc:
	.4byte	gCurrentSprite


thumb_func_start SpriteDominoGoal
SpriteDominoGoal:
	push	{lr}
	ldr	r0, .L_3d2e4
	ldrb	r0, [r0, #28]
	cmp	r0, #24
	bhi	.L_3d374
	lsl	r0, r0, #2
	ldr	r1, .L_3d2e8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3d2e4:
	.4byte	gCurrentSprite
.L_3d2e8:
	.4byte	.L_3d2ec
.L_3d2ec:
	.4byte	.L_3d350
	.4byte	.L_3d356
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d35c
	.4byte	.L_3d368
	.4byte	.L_3d36e
	.4byte	.L_3d374
	.4byte	.L_3d362
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d374
	.4byte	.L_3d378
.L_3d350:
	bl	func_803C464
	b	.L_3d378
.L_3d356:
	bl	func_803C4DC
	b	.L_3d378
.L_3d35c:
	bl	func_803C5C0
	b	.L_3d378
.L_3d362:
	bl	func_803C628
	b	.L_3d378
.L_3d368:
	bl	func_803C654
	b	.L_3d378
.L_3d36e:
	bl	func_803C6BC
	b	.L_3d378
.L_3d374:
	bl	func_803C550
.L_3d378:
	bl	func_8026838
	pop	{r0}
	bx	r0


thumb_func_start SpriteDominoes30
SpriteDominoes30:
	push	{r4, lr}
	ldr	r4, .L_3d3a0
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bhi	.L_3d462
	lsl	r0, r0, #2
	ldr	r1, .L_3d3a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3d3a0:
	.4byte	gCurrentSprite
.L_3d3a4:
	.4byte	.L_3d3a8
.L_3d3a8:
	.4byte	.L_3d3e8
	.4byte	.L_3d3f8
	.4byte	.L_3d408
	.4byte	.L_3d418
	.4byte	.L_3d428
	.4byte	.L_3d438
	.4byte	.L_3d448
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d462
	.4byte	.L_3d45c
.L_3d3e8:
	ldr	r1, .L_3d3f0
	ldr	r0, .L_3d3f4
	b	.L_3d44c
	.align	2, 0
.L_3d3f0:
	.4byte	gCurrentSprite
.L_3d3f4:
	.4byte	sUnk_83C4184
.L_3d3f8:
	ldr	r1, .L_3d400
	ldr	r0, .L_3d404
	b	.L_3d44c
	.align	2, 0
.L_3d400:
	.4byte	gCurrentSprite
.L_3d404:
	.4byte	sUnk_83C4194
.L_3d408:
	ldr	r1, .L_3d410
	ldr	r0, .L_3d414
	b	.L_3d44c
	.align	2, 0
.L_3d410:
	.4byte	gCurrentSprite
.L_3d414:
	.4byte	sUnk_83C41A4
.L_3d418:
	ldr	r1, .L_3d420
	ldr	r0, .L_3d424
	b	.L_3d44c
	.align	2, 0
.L_3d420:
	.4byte	gCurrentSprite
.L_3d424:
	.4byte	sUnk_83C41B4
.L_3d428:
	ldr	r1, .L_3d430
	ldr	r0, .L_3d434
	b	.L_3d44c
	.align	2, 0
.L_3d430:
	.4byte	gCurrentSprite
.L_3d434:
	.4byte	sUnk_83C41C4
.L_3d438:
	ldr	r1, .L_3d440
	ldr	r0, .L_3d444
	b	.L_3d44c
	.align	2, 0
.L_3d440:
	.4byte	gCurrentSprite
.L_3d444:
	.4byte	sUnk_83C41D4
.L_3d448:
	ldr	r1, .L_3d454
	ldr	r0, .L_3d458
.L_3d44c:
	str	r0, [r1, #4]
	bl	func_803C6F8
	b	.L_3d46c
.L_3d454:
	.4byte	gCurrentSprite
.L_3d458:
	.4byte	sUnk_83C41E4
.L_3d45c:
	bl	func_803CA88
	b	.L_3d46c
.L_3d462:
	ldr	r1, .L_3d474
	ldr	r0, .L_3d478
	str	r0, [r1, #4]
	bl	func_803C6F8
.L_3d46c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d474:
	.4byte	gCurrentSprite
.L_3d478:
	.4byte	sUnk_83C4174


thumb_func_start SpriteDominoes31
SpriteDominoes31:
	push	{r4, lr}
	ldr	r4, .L_3d49c
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bhi	.L_3d55e
	lsl	r0, r0, #2
	ldr	r1, .L_3d4a0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3d49c:
	.4byte	gCurrentSprite
.L_3d4a0:
	.4byte	.L_3d4a4
.L_3d4a4:
	.4byte	.L_3d4e4
	.4byte	.L_3d4f4
	.4byte	.L_3d504
	.4byte	.L_3d514
	.4byte	.L_3d524
	.4byte	.L_3d534
	.4byte	.L_3d544
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d55e
	.4byte	.L_3d558
.L_3d4e4:
	ldr	r1, .L_3d4ec
	ldr	r0, .L_3d4f0
	b	.L_3d548
	.align	2, 0
.L_3d4ec:
	.4byte	gCurrentSprite
.L_3d4f0:
	.4byte	sUnk_83C4204
.L_3d4f4:
	ldr	r1, .L_3d4fc
	ldr	r0, .L_3d500
	b	.L_3d548
	.align	2, 0
.L_3d4fc:
	.4byte	gCurrentSprite
.L_3d500:
	.4byte	sUnk_83C4214
.L_3d504:
	ldr	r1, .L_3d50c
	ldr	r0, .L_3d510
	b	.L_3d548
	.align	2, 0
.L_3d50c:
	.4byte	gCurrentSprite
.L_3d510:
	.4byte	sUnk_83C4224
.L_3d514:
	ldr	r1, .L_3d51c
	ldr	r0, .L_3d520
	b	.L_3d548
	.align	2, 0
.L_3d51c:
	.4byte	gCurrentSprite
.L_3d520:
	.4byte	sUnk_83C4234
.L_3d524:
	ldr	r1, .L_3d52c
	ldr	r0, .L_3d530
	b	.L_3d548
	.align	2, 0
.L_3d52c:
	.4byte	gCurrentSprite
.L_3d530:
	.4byte	sUnk_83C4244
.L_3d534:
	ldr	r1, .L_3d53c
	ldr	r0, .L_3d540
	b	.L_3d548
	.align	2, 0
.L_3d53c:
	.4byte	gCurrentSprite
.L_3d540:
	.4byte	sUnk_83C4254
.L_3d544:
	ldr	r1, .L_3d550
	ldr	r0, .L_3d554
.L_3d548:
	str	r0, [r1, #4]
	bl	func_803C8C0
	b	.L_3d568
.L_3d550:
	.4byte	gCurrentSprite
.L_3d554:
	.4byte	sUnk_83C4264
.L_3d558:
	bl	func_803CB24
	b	.L_3d568
.L_3d55e:
	ldr	r1, .L_3d570
	ldr	r0, .L_3d574
	str	r0, [r1, #4]
	bl	func_803C8C0
.L_3d568:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d570:
	.4byte	gCurrentSprite
.L_3d574:
	.4byte	sUnk_83C41F4


thumb_func_start SpriteDominoes32
SpriteDominoes32:
	push	{r4, lr}
	ldr	r4, .L_3d598
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3d58e
	b	.L_3d67a
.L_3d58e:
	lsl	r0, r0, #2
	ldr	r1, .L_3d59c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3d598:
	.4byte	gCurrentSprite
.L_3d59c:
	.4byte	.L_3d5a0
.L_3d5a0:
	.4byte	.L_3d5e0
	.4byte	.L_3d5f0
	.4byte	.L_3d600
	.4byte	.L_3d610
	.4byte	.L_3d620
	.4byte	.L_3d630
	.4byte	.L_3d640
	.4byte	.L_3d650
	.4byte	.L_3d660
	.4byte	.L_3d67a
	.4byte	.L_3d67a
	.4byte	.L_3d67a
	.4byte	.L_3d67a
	.4byte	.L_3d67a
	.4byte	.L_3d67a
	.4byte	.L_3d674
.L_3d5e0:
	ldr	r1, .L_3d5e8
	ldr	r0, .L_3d5ec
	b	.L_3d664
	.align	2, 0
.L_3d5e8:
	.4byte	gCurrentSprite
.L_3d5ec:
	.4byte	sUnk_83C4284
.L_3d5f0:
	ldr	r1, .L_3d5f8
	ldr	r0, .L_3d5fc
	b	.L_3d664
	.align	2, 0
.L_3d5f8:
	.4byte	gCurrentSprite
.L_3d5fc:
	.4byte	sUnk_83C4294
.L_3d600:
	ldr	r1, .L_3d608
	ldr	r0, .L_3d60c
	b	.L_3d664
	.align	2, 0
.L_3d608:
	.4byte	gCurrentSprite
.L_3d60c:
	.4byte	sUnk_83C42A4
.L_3d610:
	ldr	r1, .L_3d618
	ldr	r0, .L_3d61c
	b	.L_3d664
	.align	2, 0
.L_3d618:
	.4byte	gCurrentSprite
.L_3d61c:
	.4byte	sUnk_83C42B4
.L_3d620:
	ldr	r1, .L_3d628
	ldr	r0, .L_3d62c
	b	.L_3d664
	.align	2, 0
.L_3d628:
	.4byte	gCurrentSprite
.L_3d62c:
	.4byte	sUnk_83C42C4
.L_3d630:
	ldr	r1, .L_3d638
	ldr	r0, .L_3d63c
	b	.L_3d664
	.align	2, 0
.L_3d638:
	.4byte	gCurrentSprite
.L_3d63c:
	.4byte	sUnk_83C42D4
.L_3d640:
	ldr	r1, .L_3d648
	ldr	r0, .L_3d64c
	b	.L_3d664
	.align	2, 0
.L_3d648:
	.4byte	gCurrentSprite
.L_3d64c:
	.4byte	sUnk_83C42E4
.L_3d650:
	ldr	r1, .L_3d658
	ldr	r0, .L_3d65c
	b	.L_3d664
	.align	2, 0
.L_3d658:
	.4byte	gCurrentSprite
.L_3d65c:
	.4byte	sUnk_83C42F4
.L_3d660:
	ldr	r1, .L_3d66c
	ldr	r0, .L_3d670
.L_3d664:
	str	r0, [r1, #4]
	bl	func_803C754
	b	.L_3d684
.L_3d66c:
	.4byte	gCurrentSprite
.L_3d670:
	.4byte	sUnk_83C4304
.L_3d674:
	bl	func_803CBC0
	b	.L_3d684
.L_3d67a:
	ldr	r1, .L_3d68c
	ldr	r0, .L_3d690
	str	r0, [r1, #4]
	bl	func_803C754
.L_3d684:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d68c:
	.4byte	gCurrentSprite
.L_3d690:
	.4byte	sUnk_83C4274


thumb_func_start SpriteDominoes33
SpriteDominoes33:
	push	{r4, lr}
	ldr	r4, .L_3d6b4
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3d6aa
	b	.L_3d796
.L_3d6aa:
	lsl	r0, r0, #2
	ldr	r1, .L_3d6b8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3d6b4:
	.4byte	gCurrentSprite
.L_3d6b8:
	.4byte	.L_3d6bc
.L_3d6bc:
	.4byte	.L_3d6fc
	.4byte	.L_3d70c
	.4byte	.L_3d71c
	.4byte	.L_3d72c
	.4byte	.L_3d73c
	.4byte	.L_3d74c
	.4byte	.L_3d75c
	.4byte	.L_3d76c
	.4byte	.L_3d77c
	.4byte	.L_3d796
	.4byte	.L_3d796
	.4byte	.L_3d796
	.4byte	.L_3d796
	.4byte	.L_3d796
	.4byte	.L_3d796
	.4byte	.L_3d790
.L_3d6fc:
	ldr	r1, .L_3d704
	ldr	r0, .L_3d708
	b	.L_3d780
	.align	2, 0
.L_3d704:
	.4byte	gCurrentSprite
.L_3d708:
	.4byte	sUnk_83C4324
.L_3d70c:
	ldr	r1, .L_3d714
	ldr	r0, .L_3d718
	b	.L_3d780
	.align	2, 0
.L_3d714:
	.4byte	gCurrentSprite
.L_3d718:
	.4byte	sUnk_83C4334
.L_3d71c:
	ldr	r1, .L_3d724
	ldr	r0, .L_3d728
	b	.L_3d780
	.align	2, 0
.L_3d724:
	.4byte	gCurrentSprite
.L_3d728:
	.4byte	sUnk_83C4344
.L_3d72c:
	ldr	r1, .L_3d734
	ldr	r0, .L_3d738
	b	.L_3d780
	.align	2, 0
.L_3d734:
	.4byte	gCurrentSprite
.L_3d738:
	.4byte	sUnk_83C4354
.L_3d73c:
	ldr	r1, .L_3d744
	ldr	r0, .L_3d748
	b	.L_3d780
	.align	2, 0
.L_3d744:
	.4byte	gCurrentSprite
.L_3d748:
	.4byte	sUnk_83C4364
.L_3d74c:
	ldr	r1, .L_3d754
	ldr	r0, .L_3d758
	b	.L_3d780
	.align	2, 0
.L_3d754:
	.4byte	gCurrentSprite
.L_3d758:
	.4byte	sUnk_83C4374
.L_3d75c:
	ldr	r1, .L_3d764
	ldr	r0, .L_3d768
	b	.L_3d780
	.align	2, 0
.L_3d764:
	.4byte	gCurrentSprite
.L_3d768:
	.4byte	sUnk_83C4384
.L_3d76c:
	ldr	r1, .L_3d774
	ldr	r0, .L_3d778
	b	.L_3d780
	.align	2, 0
.L_3d774:
	.4byte	gCurrentSprite
.L_3d778:
	.4byte	sUnk_83C4394
.L_3d77c:
	ldr	r1, .L_3d788
	ldr	r0, .L_3d78c
.L_3d780:
	str	r0, [r1, #4]
	bl	func_803C91C
	b	.L_3d7a0
.L_3d788:
	.4byte	gCurrentSprite
.L_3d78c:
	.4byte	sUnk_83C43A4
.L_3d790:
	bl	func_803CC74
	b	.L_3d7a0
.L_3d796:
	ldr	r1, .L_3d7a8
	ldr	r0, .L_3d7ac
	str	r0, [r1, #4]
	bl	func_803C91C
.L_3d7a0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d7a8:
	.4byte	gCurrentSprite
.L_3d7ac:
	.4byte	sUnk_83C4314


thumb_func_start SpriteDominoes34
SpriteDominoes34:
	push	{r4, lr}
	ldr	r4, .L_3d7d0
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bhi	.L_3d8a2
	lsl	r0, r0, #2
	ldr	r1, .L_3d7d4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3d7d0:
	.4byte	gCurrentSprite
.L_3d7d4:
	.4byte	.L_3d7d8
.L_3d7d8:
	.4byte	.L_3d818
	.4byte	.L_3d828
	.4byte	.L_3d838
	.4byte	.L_3d848
	.4byte	.L_3d858
	.4byte	.L_3d868
	.4byte	.L_3d878
	.4byte	.L_3d888
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d8a2
	.4byte	.L_3d89c
.L_3d818:
	ldr	r1, .L_3d820
	ldr	r0, .L_3d824
	b	.L_3d88c
	.align	2, 0
.L_3d820:
	.4byte	gCurrentSprite
.L_3d824:
	.4byte	sUnk_83C43C4
.L_3d828:
	ldr	r1, .L_3d830
	ldr	r0, .L_3d834
	b	.L_3d88c
	.align	2, 0
.L_3d830:
	.4byte	gCurrentSprite
.L_3d834:
	.4byte	sUnk_83C43D4
.L_3d838:
	ldr	r1, .L_3d840
	ldr	r0, .L_3d844
	b	.L_3d88c
	.align	2, 0
.L_3d840:
	.4byte	gCurrentSprite
.L_3d844:
	.4byte	sUnk_83C43E4
.L_3d848:
	ldr	r1, .L_3d850
	ldr	r0, .L_3d854
	b	.L_3d88c
	.align	2, 0
.L_3d850:
	.4byte	gCurrentSprite
.L_3d854:
	.4byte	sUnk_83C43F4
.L_3d858:
	ldr	r1, .L_3d860
	ldr	r0, .L_3d864
	b	.L_3d88c
	.align	2, 0
.L_3d860:
	.4byte	gCurrentSprite
.L_3d864:
	.4byte	sUnk_83C4404
.L_3d868:
	ldr	r1, .L_3d870
	ldr	r0, .L_3d874
	b	.L_3d88c
	.align	2, 0
.L_3d870:
	.4byte	gCurrentSprite
.L_3d874:
	.4byte	sUnk_83C4414
.L_3d878:
	ldr	r1, .L_3d880
	ldr	r0, .L_3d884
	b	.L_3d88c
	.align	2, 0
.L_3d880:
	.4byte	gCurrentSprite
.L_3d884:
	.4byte	sUnk_83C4424
.L_3d888:
	ldr	r1, .L_3d894
	ldr	r0, .L_3d898
.L_3d88c:
	str	r0, [r1, #4]
	bl	func_803C7B0
	b	.L_3d8ac
.L_3d894:
	.4byte	gCurrentSprite
.L_3d898:
	.4byte	sUnk_83C4434
.L_3d89c:
	bl	func_803CD28
	b	.L_3d8ac
.L_3d8a2:
	ldr	r1, .L_3d8b4
	ldr	r0, .L_3d8b8
	str	r0, [r1, #4]
	bl	func_803C7B0
.L_3d8ac:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d8b4:
	.4byte	gCurrentSprite
.L_3d8b8:
	.4byte	sUnk_83C43B4


thumb_func_start SpriteDominoes35
SpriteDominoes35:
	push	{r4, lr}
	ldr	r4, .L_3d8dc
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bhi	.L_3d9ae
	lsl	r0, r0, #2
	ldr	r1, .L_3d8e0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3d8dc:
	.4byte	gCurrentSprite
.L_3d8e0:
	.4byte	.L_3d8e4
.L_3d8e4:
	.4byte	.L_3d924
	.4byte	.L_3d934
	.4byte	.L_3d944
	.4byte	.L_3d954
	.4byte	.L_3d964
	.4byte	.L_3d974
	.4byte	.L_3d984
	.4byte	.L_3d994
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9ae
	.4byte	.L_3d9a8
.L_3d924:
	ldr	r1, .L_3d92c
	ldr	r0, .L_3d930
	b	.L_3d998
	.align	2, 0
.L_3d92c:
	.4byte	gCurrentSprite
.L_3d930:
	.4byte	sUnk_83C4454
.L_3d934:
	ldr	r1, .L_3d93c
	ldr	r0, .L_3d940
	b	.L_3d998
	.align	2, 0
.L_3d93c:
	.4byte	gCurrentSprite
.L_3d940:
	.4byte	sUnk_83C4464
.L_3d944:
	ldr	r1, .L_3d94c
	ldr	r0, .L_3d950
	b	.L_3d998
	.align	2, 0
.L_3d94c:
	.4byte	gCurrentSprite
.L_3d950:
	.4byte	sUnk_83C4474
.L_3d954:
	ldr	r1, .L_3d95c
	ldr	r0, .L_3d960
	b	.L_3d998
	.align	2, 0
.L_3d95c:
	.4byte	gCurrentSprite
.L_3d960:
	.4byte	sUnk_83C4484
.L_3d964:
	ldr	r1, .L_3d96c
	ldr	r0, .L_3d970
	b	.L_3d998
	.align	2, 0
.L_3d96c:
	.4byte	gCurrentSprite
.L_3d970:
	.4byte	sUnk_83C4494
.L_3d974:
	ldr	r1, .L_3d97c
	ldr	r0, .L_3d980
	b	.L_3d998
	.align	2, 0
.L_3d97c:
	.4byte	gCurrentSprite
.L_3d980:
	.4byte	sUnk_83C44A4
.L_3d984:
	ldr	r1, .L_3d98c
	ldr	r0, .L_3d990
	b	.L_3d998
	.align	2, 0
.L_3d98c:
	.4byte	gCurrentSprite
.L_3d990:
	.4byte	sUnk_83C44B4
.L_3d994:
	ldr	r1, .L_3d9a0
	ldr	r0, .L_3d9a4
.L_3d998:
	str	r0, [r1, #4]
	bl	func_803C978
	b	.L_3d9b8
.L_3d9a0:
	.4byte	gCurrentSprite
.L_3d9a4:
	.4byte	sUnk_83C44C4
.L_3d9a8:
	bl	func_803CDD0
	b	.L_3d9b8
.L_3d9ae:
	ldr	r1, .L_3d9c0
	ldr	r0, .L_3d9c4
	str	r0, [r1, #4]
	bl	func_803C978
.L_3d9b8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d9c0:
	.4byte	gCurrentSprite
.L_3d9c4:
	.4byte	sUnk_83C4444


thumb_func_start SpriteDominoes36
SpriteDominoes36:
	push	{r4, lr}
	ldr	r4, .L_3d9e8
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3d9de
	b	.L_3db1a
.L_3d9de:
	lsl	r0, r0, #2
	ldr	r1, .L_3d9ec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3d9e8:
	.4byte	gCurrentSprite
.L_3d9ec:
	.4byte	.L_3d9f0
.L_3d9f0:
	.4byte	.L_3da30
	.4byte	.L_3da40
	.4byte	.L_3da50
	.4byte	.L_3da60
	.4byte	.L_3da70
	.4byte	.L_3da80
	.4byte	.L_3da90
	.4byte	.L_3daa0
	.4byte	.L_3dab0
	.4byte	.L_3dac0
	.4byte	.L_3dad0
	.4byte	.L_3dae0
	.4byte	.L_3daf0
	.4byte	.L_3db00
	.4byte	.L_3db1a
	.4byte	.L_3db14
.L_3da30:
	ldr	r1, .L_3da38
	ldr	r0, .L_3da3c
	b	.L_3db04
	.align	2, 0
.L_3da38:
	.4byte	gCurrentSprite
.L_3da3c:
	.4byte	sUnk_83C44D4
.L_3da40:
	ldr	r1, .L_3da48
	ldr	r0, .L_3da4c
	b	.L_3db04
	.align	2, 0
.L_3da48:
	.4byte	gCurrentSprite
.L_3da4c:
	.4byte	sUnk_83C44E4
.L_3da50:
	ldr	r1, .L_3da58
	ldr	r0, .L_3da5c
	b	.L_3db04
	.align	2, 0
.L_3da58:
	.4byte	gCurrentSprite
.L_3da5c:
	.4byte	sUnk_83C44E4
.L_3da60:
	ldr	r1, .L_3da68
	ldr	r0, .L_3da6c
	b	.L_3db04
	.align	2, 0
.L_3da68:
	.4byte	gCurrentSprite
.L_3da6c:
	.4byte	sUnk_83C44F4
.L_3da70:
	ldr	r1, .L_3da78
	ldr	r0, .L_3da7c
	b	.L_3db04
	.align	2, 0
.L_3da78:
	.4byte	gCurrentSprite
.L_3da7c:
	.4byte	sUnk_83C44F4
.L_3da80:
	ldr	r1, .L_3da88
	ldr	r0, .L_3da8c
	b	.L_3db04
	.align	2, 0
.L_3da88:
	.4byte	gCurrentSprite
.L_3da8c:
	.4byte	sUnk_83C4504
.L_3da90:
	ldr	r1, .L_3da98
	ldr	r0, .L_3da9c
	b	.L_3db04
	.align	2, 0
.L_3da98:
	.4byte	gCurrentSprite
.L_3da9c:
	.4byte	sUnk_83C4504
.L_3daa0:
	ldr	r1, .L_3daa8
	ldr	r0, .L_3daac
	b	.L_3db04
	.align	2, 0
.L_3daa8:
	.4byte	gCurrentSprite
.L_3daac:
	.4byte	sUnk_83C4514
.L_3dab0:
	ldr	r1, .L_3dab8
	ldr	r0, .L_3dabc
	b	.L_3db04
	.align	2, 0
.L_3dab8:
	.4byte	gCurrentSprite
.L_3dabc:
	.4byte	sUnk_83C4514
.L_3dac0:
	ldr	r1, .L_3dac8
	ldr	r0, .L_3dacc
	b	.L_3db04
	.align	2, 0
.L_3dac8:
	.4byte	gCurrentSprite
.L_3dacc:
	.4byte	sUnk_83C4524
.L_3dad0:
	ldr	r1, .L_3dad8
	ldr	r0, .L_3dadc
	b	.L_3db04
	.align	2, 0
.L_3dad8:
	.4byte	gCurrentSprite
.L_3dadc:
	.4byte	sUnk_83C4534
.L_3dae0:
	ldr	r1, .L_3dae8
	ldr	r0, .L_3daec
	b	.L_3db04
	.align	2, 0
.L_3dae8:
	.4byte	gCurrentSprite
.L_3daec:
	.4byte	sUnk_83C4544
.L_3daf0:
	ldr	r1, .L_3daf8
	ldr	r0, .L_3dafc
	b	.L_3db04
	.align	2, 0
.L_3daf8:
	.4byte	gCurrentSprite
.L_3dafc:
	.4byte	sUnk_83C4554
.L_3db00:
	ldr	r1, .L_3db0c
	ldr	r0, .L_3db10
.L_3db04:
	str	r0, [r1, #4]
	bl	func_803C80C
	b	.L_3db24
.L_3db0c:
	.4byte	gCurrentSprite
.L_3db10:
	.4byte	sUnk_83C4564
.L_3db14:
	bl	func_803CE78
	b	.L_3db24
.L_3db1a:
	ldr	r1, .L_3db2c
	ldr	r0, .L_3db30
	str	r0, [r1, #4]
	bl	func_803C80C
.L_3db24:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3db2c:
	.4byte	gCurrentSprite
.L_3db30:
	.4byte	sUnk_83C44D4


thumb_func_start SpriteDominoes37
SpriteDominoes37:
	push	{r4, lr}
	ldr	r4, .L_3db54
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3db4a
	b	.L_3dc86
.L_3db4a:
	lsl	r0, r0, #2
	ldr	r1, .L_3db58
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3db54:
	.4byte	gCurrentSprite
.L_3db58:
	.4byte	.L_3db5c
.L_3db5c:
	.4byte	.L_3db9c
	.4byte	.L_3dbac
	.4byte	.L_3dbbc
	.4byte	.L_3dbcc
	.4byte	.L_3dbdc
	.4byte	.L_3dbec
	.4byte	.L_3dbfc
	.4byte	.L_3dc0c
	.4byte	.L_3dc1c
	.4byte	.L_3dc2c
	.4byte	.L_3dc3c
	.4byte	.L_3dc4c
	.4byte	.L_3dc5c
	.4byte	.L_3dc6c
	.4byte	.L_3dc86
	.4byte	.L_3dc80
.L_3db9c:
	ldr	r1, .L_3dba4
	ldr	r0, .L_3dba8
	b	.L_3dc70
	.align	2, 0
.L_3dba4:
	.4byte	gCurrentSprite
.L_3dba8:
	.4byte	sUnk_83C4574
.L_3dbac:
	ldr	r1, .L_3dbb4
	ldr	r0, .L_3dbb8
	b	.L_3dc70
	.align	2, 0
.L_3dbb4:
	.4byte	gCurrentSprite
.L_3dbb8:
	.4byte	sUnk_83C4584
.L_3dbbc:
	ldr	r1, .L_3dbc4
	ldr	r0, .L_3dbc8
	b	.L_3dc70
	.align	2, 0
.L_3dbc4:
	.4byte	gCurrentSprite
.L_3dbc8:
	.4byte	sUnk_83C4584
.L_3dbcc:
	ldr	r1, .L_3dbd4
	ldr	r0, .L_3dbd8
	b	.L_3dc70
	.align	2, 0
.L_3dbd4:
	.4byte	gCurrentSprite
.L_3dbd8:
	.4byte	sUnk_83C4594
.L_3dbdc:
	ldr	r1, .L_3dbe4
	ldr	r0, .L_3dbe8
	b	.L_3dc70
	.align	2, 0
.L_3dbe4:
	.4byte	gCurrentSprite
.L_3dbe8:
	.4byte	sUnk_83C4594
.L_3dbec:
	ldr	r1, .L_3dbf4
	ldr	r0, .L_3dbf8
	b	.L_3dc70
	.align	2, 0
.L_3dbf4:
	.4byte	gCurrentSprite
.L_3dbf8:
	.4byte	sUnk_83C45A4
.L_3dbfc:
	ldr	r1, .L_3dc04
	ldr	r0, .L_3dc08
	b	.L_3dc70
	.align	2, 0
.L_3dc04:
	.4byte	gCurrentSprite
.L_3dc08:
	.4byte	sUnk_83C45A4
.L_3dc0c:
	ldr	r1, .L_3dc14
	ldr	r0, .L_3dc18
	b	.L_3dc70
	.align	2, 0
.L_3dc14:
	.4byte	gCurrentSprite
.L_3dc18:
	.4byte	sUnk_83C45B4
.L_3dc1c:
	ldr	r1, .L_3dc24
	ldr	r0, .L_3dc28
	b	.L_3dc70
	.align	2, 0
.L_3dc24:
	.4byte	gCurrentSprite
.L_3dc28:
	.4byte	sUnk_83C45B4
.L_3dc2c:
	ldr	r1, .L_3dc34
	ldr	r0, .L_3dc38
	b	.L_3dc70
	.align	2, 0
.L_3dc34:
	.4byte	gCurrentSprite
.L_3dc38:
	.4byte	sUnk_83C45C4
.L_3dc3c:
	ldr	r1, .L_3dc44
	ldr	r0, .L_3dc48
	b	.L_3dc70
	.align	2, 0
.L_3dc44:
	.4byte	gCurrentSprite
.L_3dc48:
	.4byte	sUnk_83C45D4
.L_3dc4c:
	ldr	r1, .L_3dc54
	ldr	r0, .L_3dc58
	b	.L_3dc70
	.align	2, 0
.L_3dc54:
	.4byte	gCurrentSprite
.L_3dc58:
	.4byte	sUnk_83C45E4
.L_3dc5c:
	ldr	r1, .L_3dc64
	ldr	r0, .L_3dc68
	b	.L_3dc70
	.align	2, 0
.L_3dc64:
	.4byte	gCurrentSprite
.L_3dc68:
	.4byte	sUnk_83C45F4
.L_3dc6c:
	ldr	r1, .L_3dc78
	ldr	r0, .L_3dc7c
.L_3dc70:
	str	r0, [r1, #4]
	bl	func_803C9D4
	b	.L_3dc90
.L_3dc78:
	.4byte	gCurrentSprite
.L_3dc7c:
	.4byte	sUnk_83C4604
.L_3dc80:
	bl	func_803CF70
	b	.L_3dc90
.L_3dc86:
	ldr	r1, .L_3dc98
	ldr	r0, .L_3dc9c
	str	r0, [r1, #4]
	bl	func_803C9D4
.L_3dc90:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3dc98:
	.4byte	gCurrentSprite
.L_3dc9c:
	.4byte	sUnk_83C4574


thumb_func_start SpriteDominoes38
SpriteDominoes38:
	push	{r4, lr}
	ldr	r4, .L_3dcc0
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3dcb6
	b	.L_3ddf2
.L_3dcb6:
	lsl	r0, r0, #2
	ldr	r1, .L_3dcc4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3dcc0:
	.4byte	gCurrentSprite
.L_3dcc4:
	.4byte	.L_3dcc8
.L_3dcc8:
	.4byte	.L_3dd08
	.4byte	.L_3dd18
	.4byte	.L_3dd28
	.4byte	.L_3dd38
	.4byte	.L_3dd48
	.4byte	.L_3dd58
	.4byte	.L_3dd68
	.4byte	.L_3dd78
	.4byte	.L_3dd88
	.4byte	.L_3dd98
	.4byte	.L_3dda8
	.4byte	.L_3ddb8
	.4byte	.L_3ddc8
	.4byte	.L_3ddd8
	.4byte	.L_3ddf2
	.4byte	.L_3ddec
.L_3dd08:
	ldr	r1, .L_3dd10
	ldr	r0, .L_3dd14
	b	.L_3dddc
	.align	2, 0
.L_3dd10:
	.4byte	gCurrentSprite
.L_3dd14:
	.4byte	sUnk_83C4614
.L_3dd18:
	ldr	r1, .L_3dd20
	ldr	r0, .L_3dd24
	b	.L_3dddc
	.align	2, 0
.L_3dd20:
	.4byte	gCurrentSprite
.L_3dd24:
	.4byte	sUnk_83C4624
.L_3dd28:
	ldr	r1, .L_3dd30
	ldr	r0, .L_3dd34
	b	.L_3dddc
	.align	2, 0
.L_3dd30:
	.4byte	gCurrentSprite
.L_3dd34:
	.4byte	sUnk_83C4624
.L_3dd38:
	ldr	r1, .L_3dd40
	ldr	r0, .L_3dd44
	b	.L_3dddc
	.align	2, 0
.L_3dd40:
	.4byte	gCurrentSprite
.L_3dd44:
	.4byte	sUnk_83C4634
.L_3dd48:
	ldr	r1, .L_3dd50
	ldr	r0, .L_3dd54
	b	.L_3dddc
	.align	2, 0
.L_3dd50:
	.4byte	gCurrentSprite
.L_3dd54:
	.4byte	sUnk_83C4634
.L_3dd58:
	ldr	r1, .L_3dd60
	ldr	r0, .L_3dd64
	b	.L_3dddc
	.align	2, 0
.L_3dd60:
	.4byte	gCurrentSprite
.L_3dd64:
	.4byte	sUnk_83C4644
.L_3dd68:
	ldr	r1, .L_3dd70
	ldr	r0, .L_3dd74
	b	.L_3dddc
	.align	2, 0
.L_3dd70:
	.4byte	gCurrentSprite
.L_3dd74:
	.4byte	sUnk_83C4644
.L_3dd78:
	ldr	r1, .L_3dd80
	ldr	r0, .L_3dd84
	b	.L_3dddc
	.align	2, 0
.L_3dd80:
	.4byte	gCurrentSprite
.L_3dd84:
	.4byte	sUnk_83C4654
.L_3dd88:
	ldr	r1, .L_3dd90
	ldr	r0, .L_3dd94
	b	.L_3dddc
	.align	2, 0
.L_3dd90:
	.4byte	gCurrentSprite
.L_3dd94:
	.4byte	sUnk_83C4654
.L_3dd98:
	ldr	r1, .L_3dda0
	ldr	r0, .L_3dda4
	b	.L_3dddc
	.align	2, 0
.L_3dda0:
	.4byte	gCurrentSprite
.L_3dda4:
	.4byte	sUnk_83C4664
.L_3dda8:
	ldr	r1, .L_3ddb0
	ldr	r0, .L_3ddb4
	b	.L_3dddc
	.align	2, 0
.L_3ddb0:
	.4byte	gCurrentSprite
.L_3ddb4:
	.4byte	sUnk_83C4674
.L_3ddb8:
	ldr	r1, .L_3ddc0
	ldr	r0, .L_3ddc4
	b	.L_3dddc
	.align	2, 0
.L_3ddc0:
	.4byte	gCurrentSprite
.L_3ddc4:
	.4byte	sUnk_83C4684
.L_3ddc8:
	ldr	r1, .L_3ddd0
	ldr	r0, .L_3ddd4
	b	.L_3dddc
	.align	2, 0
.L_3ddd0:
	.4byte	gCurrentSprite
.L_3ddd4:
	.4byte	sUnk_83C4694
.L_3ddd8:
	ldr	r1, .L_3dde4
	ldr	r0, .L_3dde8
.L_3dddc:
	str	r0, [r1, #4]
	bl	func_803C868
	b	.L_3ddfc
.L_3dde4:
	.4byte	gCurrentSprite
.L_3dde8:
	.4byte	sUnk_83C46A4
.L_3ddec:
	bl	func_803D068
	b	.L_3ddfc
.L_3ddf2:
	ldr	r1, .L_3de04
	ldr	r0, .L_3de08
	str	r0, [r1, #4]
	bl	func_803C868
.L_3ddfc:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3de04:
	.4byte	gCurrentSprite
.L_3de08:
	.4byte	sUnk_83C4614


thumb_func_start SpriteDominoes39
SpriteDominoes39:
	push	{r4, lr}
	ldr	r4, .L_3de2c
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_803B9D8
	ldrb	r0, [r4, #28]
	sub	r0, #1
	cmp	r0, #15
	bls	.L_3de22
	b	.L_3df5e
.L_3de22:
	lsl	r0, r0, #2
	ldr	r1, .L_3de30
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3de2c:
	.4byte	gCurrentSprite
.L_3de30:
	.4byte	.L_3de34
.L_3de34:
	.4byte	.L_3de74
	.4byte	.L_3de84
	.4byte	.L_3de94
	.4byte	.L_3dea4
	.4byte	.L_3deb4
	.4byte	.L_3dec4
	.4byte	.L_3ded4
	.4byte	.L_3dee4
	.4byte	.L_3def4
	.4byte	.L_3df04
	.4byte	.L_3df14
	.4byte	.L_3df24
	.4byte	.L_3df34
	.4byte	.L_3df44
	.4byte	.L_3df5e
	.4byte	.L_3df58
.L_3de74:
	ldr	r1, .L_3de7c
	ldr	r0, .L_3de80
	b	.L_3df48
	.align	2, 0
.L_3de7c:
	.4byte	gCurrentSprite
.L_3de80:
	.4byte	sUnk_83C46B4
.L_3de84:
	ldr	r1, .L_3de8c
	ldr	r0, .L_3de90
	b	.L_3df48
	.align	2, 0
.L_3de8c:
	.4byte	gCurrentSprite
.L_3de90:
	.4byte	sUnk_83C46C4
.L_3de94:
	ldr	r1, .L_3de9c
	ldr	r0, .L_3dea0
	b	.L_3df48
	.align	2, 0
.L_3de9c:
	.4byte	gCurrentSprite
.L_3dea0:
	.4byte	sUnk_83C46C4
.L_3dea4:
	ldr	r1, .L_3deac
	ldr	r0, .L_3deb0
	b	.L_3df48
	.align	2, 0
.L_3deac:
	.4byte	gCurrentSprite
.L_3deb0:
	.4byte	sUnk_83C46D4
.L_3deb4:
	ldr	r1, .L_3debc
	ldr	r0, .L_3dec0
	b	.L_3df48
	.align	2, 0
.L_3debc:
	.4byte	gCurrentSprite
.L_3dec0:
	.4byte	sUnk_83C46D4
.L_3dec4:
	ldr	r1, .L_3decc
	ldr	r0, .L_3ded0
	b	.L_3df48
	.align	2, 0
.L_3decc:
	.4byte	gCurrentSprite
.L_3ded0:
	.4byte	sUnk_83C46E4
.L_3ded4:
	ldr	r1, .L_3dedc
	ldr	r0, .L_3dee0
	b	.L_3df48
	.align	2, 0
.L_3dedc:
	.4byte	gCurrentSprite
.L_3dee0:
	.4byte	sUnk_83C46E4
.L_3dee4:
	ldr	r1, .L_3deec
	ldr	r0, .L_3def0
	b	.L_3df48
	.align	2, 0
.L_3deec:
	.4byte	gCurrentSprite
.L_3def0:
	.4byte	sUnk_83C46F4
.L_3def4:
	ldr	r1, .L_3defc
	ldr	r0, .L_3df00
	b	.L_3df48
	.align	2, 0
.L_3defc:
	.4byte	gCurrentSprite
.L_3df00:
	.4byte	sUnk_83C46F4
.L_3df04:
	ldr	r1, .L_3df0c
	ldr	r0, .L_3df10
	b	.L_3df48
	.align	2, 0
.L_3df0c:
	.4byte	gCurrentSprite
.L_3df10:
	.4byte	sUnk_83C4704
.L_3df14:
	ldr	r1, .L_3df1c
	ldr	r0, .L_3df20
	b	.L_3df48
	.align	2, 0
.L_3df1c:
	.4byte	gCurrentSprite
.L_3df20:
	.4byte	sUnk_83C4714
.L_3df24:
	ldr	r1, .L_3df2c
	ldr	r0, .L_3df30
	b	.L_3df48
	.align	2, 0
.L_3df2c:
	.4byte	gCurrentSprite
.L_3df30:
	.4byte	sUnk_83C4724
.L_3df34:
	ldr	r1, .L_3df3c
	ldr	r0, .L_3df40
	b	.L_3df48
	.align	2, 0
.L_3df3c:
	.4byte	gCurrentSprite
.L_3df40:
	.4byte	sUnk_83C4734
.L_3df44:
	ldr	r1, .L_3df50
	ldr	r0, .L_3df54
.L_3df48:
	str	r0, [r1, #4]
	bl	func_803CA30
	b	.L_3df68
.L_3df50:
	.4byte	gCurrentSprite
.L_3df54:
	.4byte	sUnk_83C4744
.L_3df58:
	bl	func_803D160
	b	.L_3df68
.L_3df5e:
	ldr	r1, .L_3df70
	ldr	r0, .L_3df74
	str	r0, [r1, #4]
	bl	func_803CA30
.L_3df68:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3df70:
	.4byte	gCurrentSprite
.L_3df74:
	.4byte	sUnk_83C46B4
