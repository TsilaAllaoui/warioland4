.include "macros.s.inc"


thumb_func_start func_8056960
func_8056960:
	ldr	r0, .L_569d0
	mov	ip, r0
	ldrb	r1, [r0, #26]
	mov	r0, #128	@ 0x80
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strb	r0, [r1, #26]
	ldrh	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_569d4
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
	sub	r1, #7
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	sub	r0, #7
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
	ldr	r0, .L_569d8
	ldrb	r0, [r0, #0]
	mov	r1, ip
	cmp	r0, #2
	beq	.L_569f0
	cmp	r0, #2
	bgt	.L_569dc
	cmp	r0, #1
	beq	.L_569e6
	b	.L_56a08
.L_569d0:
	.4byte	gCurrentSprite
.L_569d4:
	.4byte	0xFFFB
.L_569d8:
	.4byte	gUnk_3000C2A
.L_569dc:
	cmp	r0, #3
	beq	.L_569f8
	cmp	r0, #4
	beq	.L_56a00
	b	.L_56a08
.L_569e6:
	ldr	r0, .L_569ec
	b	.L_56a0a
	.align	2, 0
.L_569ec:
	.4byte	sUnk_83DF9E8
.L_569f0:
	ldr	r0, .L_569f4
	b	.L_56a0a
.L_569f4:
	.4byte	sUnk_83BA7BC
.L_569f8:
	ldr	r0, .L_569fc
	b	.L_56a0a
.L_569fc:
	.4byte	sUnk_83DAB40
.L_56a00:
	ldr	r0, .L_56a04
	b	.L_56a0a
.L_56a04:
	.4byte	sUnk_83CF72C
.L_56a08:
	ldr	r0, .L_56a10
.L_56a0a:
	str	r0, [r1, #4]
	bx	lr
	.align	2, 0
.L_56a10:
	.4byte	sUnk_83DABA0


thumb_func_start SpriteUnknownCF
SpriteUnknownCF:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	ldr	r4, .L_56a64
	ldrh	r5, [r4, #8]
	lsr	r1, r5, #2
	ldr	r0, .L_56a68
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_56a6c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r7, #1
	strb	r7, [r4, #31]
	ldrb	r0, [r4, #28]
	add	r2, r4, #0
	cmp	r0, #23
	bne	.L_56a4c
	b	.L_56c12
.L_56a4c:
	cmp	r0, #23
	bgt	.L_56a7c
	cmp	r0, #18
	beq	.L_56ae4
	cmp	r0, #18
	bgt	.L_56a70
	cmp	r0, #0
	beq	.L_56aa2
	cmp	r0, #16
	beq	.L_56aa8
	b	.L_56d9a
	.align	2, 0
.L_56a64:
	.4byte	gCurrentSprite
.L_56a68:
	.4byte	gBg1YPosition
.L_56a6c:
	.4byte	gBg1XPosition
.L_56a70:
	cmp	r0, #20
	beq	.L_56b40
	cmp	r0, #22
	bne	.L_56a7a
	b	.L_56ba8
.L_56a7a:
	b	.L_56d9a
.L_56a7c:
	cmp	r0, #109	@ 0x6d
	bne	.L_56a82
	b	.L_56d74
.L_56a82:
	cmp	r0, #109	@ 0x6d
	bgt	.L_56a94
	cmp	r0, #24
	bne	.L_56a8c
	b	.L_56c64
.L_56a8c:
	cmp	r0, #50	@ 0x32
	bne	.L_56a92
	b	.L_56cbc
.L_56a92:
	b	.L_56d9a
.L_56a94:
	cmp	r0, #113	@ 0x71
	bne	.L_56a9a
	b	.L_56d10
.L_56a9a:
	cmp	r0, #115	@ 0x73
	bne	.L_56aa0
	b	.L_56d32
.L_56aa0:
	b	.L_56d9a
.L_56aa2:
	bl	func_8056960
	b	.L_56d9a
.L_56aa8:
	cmp	r6, #32
	bls	.L_56ab2
	sub	r0, r5, #2
	strh	r0, [r4, #8]
	b	.L_56abe
.L_56ab2:
	cmp	r6, #29
	bhi	.L_56abc
	add	r0, r5, #2
	strh	r0, [r4, #8]
	b	.L_56abe
.L_56abc:
	mov	r3, #1
.L_56abe:
	cmp	r1, #122	@ 0x7a
	bls	.L_56aca
	ldrh	r0, [r2, #10]
	sub	r0, #2
	strh	r0, [r2, #10]
	b	.L_56ad8
.L_56aca:
	cmp	r1, #119	@ 0x77
	bhi	.L_56ad6
	ldrh	r0, [r2, #10]
	add	r0, #2
	strh	r0, [r2, #10]
	b	.L_56ad8
.L_56ad6:
	add	r3, #1
.L_56ad8:
	cmp	r3, #2
	beq	.L_56ade
	b	.L_56d9a
.L_56ade:
	mov	r0, #18
	strb	r0, [r2, #28]
	b	.L_56d9a
.L_56ae4:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r1, .L_56b34
	mov	r8, r1
	lsl	r0, r2, #1
	add	r0, r8
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_56b38
	cmp	r1, r0
	bne	.L_56b06
	mov	r0, r8
	ldrh	r3, [r0, #0]
	mov	r2, #0
.L_56b06:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r5, r3
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_56b22
	b	.L_56d9a
.L_56b22:
	mov	r0, #20
	strb	r0, [r4, #28]
	ldr	r4, .L_56b3c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_56b30
	b	.L_56d52
.L_56b30:
	mov	r0, #0
	b	.L_56b8e
.L_56b34:
	.4byte	sTreasureFloatYVelocity
.L_56b38:
	.4byte	0x7FFF
.L_56b3c:
	.4byte	gCollectedNEJewelPiece
.L_56b40:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r0, .L_56b9c
	mov	r8, r0
	lsl	r0, r2, #1
	add	r0, r8
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_56ba0
	cmp	r1, r0
	bne	.L_56b62
	mov	r0, r8
	ldrh	r3, [r0, #0]
	mov	r2, #0
.L_56b62:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r5, r3
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_56b7e
	b	.L_56d9a
.L_56b7e:
	mov	r0, #22
	strb	r0, [r4, #28]
	ldr	r4, .L_56ba4
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	beq	.L_56b8c
	b	.L_56d52
.L_56b8c:
	mov	r0, #1
.L_56b8e:
	bl	func_806F650
	strb	r7, [r4, #0]
	mov	r0, #80	@ 0x50
	strb	r0, [r5, #0]
	b	.L_56d9a
	.align	2, 0
.L_56b9c:
	.4byte	sTreasureFloatYVelocity
.L_56ba0:
	.4byte	0x7FFF
.L_56ba4:
	.4byte	gCollectedSEJewelPiece
.L_56ba8:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r0, .L_56c00
	mov	r8, r0
	lsl	r0, r2, #1
	add	r0, r8
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_56c04
	cmp	r1, r0
	bne	.L_56bca
	mov	r0, r8
	ldrh	r3, [r0, #0]
	mov	r2, #0
.L_56bca:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r5, r3
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_56be6
	b	.L_56d9a
.L_56be6:
	mov	r0, #23
	strb	r0, [r4, #28]
	ldr	r4, .L_56c08
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_56c0c
	mov	r0, #2
	bl	func_806F650
	strb	r7, [r4, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r5, #0]
	b	.L_56d9a
.L_56c00:
	.4byte	sTreasureFloatYVelocity
.L_56c04:
	.4byte	0x7FFF
.L_56c08:
	.4byte	gCollectedSWJewelPiece
.L_56c0c:
	mov	r0, #31
	strb	r0, [r5, #0]
	b	.L_56d9a
.L_56c12:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r6, .L_56c5c
	lsl	r0, r2, #1
	add	r0, r0, r6
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_56c60
	cmp	r1, r0
	bne	.L_56c30
	ldrh	r3, [r6, #0]
	mov	r2, #0
.L_56c30:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r5, r3
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_56c4c
	b	.L_56d9a
.L_56c4c:
	bl	SpriteUtilFadeBackgroundToBlack
	mov	r0, #24
	strb	r0, [r4, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r5, #0]
	b	.L_56d9a
	.align	2, 0
.L_56c5c:
	.4byte	sTreasureFloatYVelocity
.L_56c60:
	.4byte	0x7FFF
.L_56c64:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r6, .L_56cb0
	lsl	r0, r2, #1
	add	r0, r0, r6
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_56cb4
	cmp	r1, r0
	bne	.L_56c82
	ldrh	r3, [r6, #0]
	mov	r2, #0
.L_56c82:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r5, r3
	strh	r0, [r4, #8]
	ldr	r0, .L_56cb8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_56c96
	b	.L_56d9a
.L_56c96:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_56d9a
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_56d66
.L_56cb0:
	.4byte	sTreasureFloatYVelocity
.L_56cb4:
	.4byte	0x7FFF
.L_56cb8:
	.4byte	gGoldenDivaRoomTimer
.L_56cbc:
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_56cee
	add	r0, r5, #0
	sub	r0, #8
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r1, [r5, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_56ce6
	ldrh	r0, [r4, #8]
	add	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #71	@ 0x47
	bl	SpriteSpawnSecondary
.L_56ce6:
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	b	.L_56d9a
.L_56cee:
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
	mov	r0, #0
	bl	SpriteUtilFindBossTreasureChest
	add	r3, r0, #0
	cmp	r3, #255	@ 0xff
	bne	.L_56d06
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r7, [r0, #0]
	b	.L_56d9a
.L_56d06:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	b	.L_56d5a
.L_56d10:
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_56d9a
	mov	r0, #115	@ 0x73
	strb	r0, [r4, #28]
	mov	r0, #1
	bl	SpriteUtilFindBossTreasureChest
	add	r3, r0, #0
	cmp	r3, #255	@ 0xff
	beq	.L_56d52
	b	.L_56d56
.L_56d32:
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_56d9a
	mov	r0, #109	@ 0x6d
	strb	r0, [r4, #28]
	mov	r0, #2
	bl	SpriteUtilFindBossTreasureChest
	add	r3, r0, #0
	cmp	r3, #255	@ 0xff
	bne	.L_56d56
.L_56d52:
	strb	r7, [r5, #0]
	b	.L_56d9a
.L_56d56:
	mov	r0, #60	@ 0x3c
	strb	r0, [r5, #0]
.L_56d5a:
	ldr	r1, .L_56d70
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r0, r0, r1
	mov	r1, #20
	strb	r1, [r0, #28]
.L_56d66:
	mov	r0, #20
	bl	VoiceSetPlay
	b	.L_56d9a
	.align	2, 0
.L_56d70:
	.4byte	gSpriteData
.L_56d74:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_56d9a
	mov	r2, #0
	strh	r0, [r4, #0]
	ldr	r1, .L_56da4
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_56da8
	strb	r2, [r0, #0]
	ldr	r1, .L_56dac
	mov	r0, #5
	strb	r0, [r1, #0]
.L_56d9a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_56da4:
	.4byte	gSubGameMode
.L_56da8:
	.4byte	gSpriteAiDropTimer
.L_56dac:
	.4byte	gStageExitType
