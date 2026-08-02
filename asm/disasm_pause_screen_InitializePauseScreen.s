.syntax divided
.align 2, 0
.global InitializePauseScreen
.thumb
.type InitializePauseScreen, %function
InitializePauseScreen:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, .L_88944
	ldrh	r0, [r3, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r3, #0]
	ldr	r4, .L_88948
	mov	r6, #0
	strh	r6, [r4, #0]
	ldr	r2, .L_8894c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_88950
	and	r0, r1
	strh	r0, [r2, #0]
	ldrh	r1, [r3, #0]
	ldr	r0, .L_88954
	and	r0, r1
	strh	r0, [r3, #0]
	strh	r5, [r4, #0]
	ldr	r0, .L_88958
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	cmp	r1, #0
	beq	.L_8893c
	cmp	r1, #5
	bne	.L_88960
.L_8893c:
	ldr	r0, .L_8895c
	strb	r5, [r0, #0]
	b	.L_88964
	.align	2, 0
.L_88944:
	.4byte	0x04000200
.L_88948:
	.4byte	0x04000208
.L_8894c:
	.4byte	0x04000004
.L_88950:
	.4byte	0x0000ffef
.L_88954:
	.4byte	0x0000fffd
.L_88958:
	.4byte	gCurrentPassage
.L_8895c:
	.4byte	gUnk_3003C4A
.L_88960:
	ldr	r0, .L_88a58
	strb	r6, [r0, #0]
.L_88964:
	mov	r8, r0
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a60
	str	r0, [r1, #0]
	ldr	r0, .L_88a64
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_88a6c
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r4, r3, r5
	ldr	r5, .L_88a70
	ldr	r6, .L_88a74
	mov	r9, r6
	ldr	r6, .L_88a78
	mov	sl, r6
	ldr	r6, .L_88a7c
	mov	ip, r6
	cmp	r0, #0
	bge	.L_8899e
.L_88996:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88996
.L_8899e:
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a60
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_889c2
.L_889ba:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889ba
.L_889c2:
	ldr	r1, .L_88a5c
	str	r3, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_889e4
.L_889dc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889dc
.L_889e4:
	ldr	r1, .L_88a5c
	str	r4, [r1, #0]
	ldr	r0, .L_88a80
	str	r0, [r1, #4]
	ldr	r0, .L_88a84
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a04
.L_889fc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889fc
.L_88a04:
	ldr	r1, .L_88a5c
	str	r5, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a88
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a26
.L_88a1e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88a1e
.L_88a26:
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a8c
	str	r0, [r1, #0]
	ldr	r0, .L_88a90
	str	r0, [r1, #4]
	ldr	r0, .L_88a94
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a48
.L_88a40:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88a40
.L_88a48:
	mov	r1, r9
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_88a9c
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a98
	b	.L_88aa0
	.align	2, 0
.L_88a58:
	.4byte	gUnk_3003C4A
.L_88a5c:
	.4byte	0x040000d4
.L_88a60:
	.4byte	0x02020600
.L_88a64:
	.4byte	0x05000200
.L_88a68:
	.4byte	0x80000100
.L_88a6c:
	.4byte	sUnk_86D7038
.L_88a70:
	.4byte	sUnk_86D4038
.L_88a74:
	.4byte	gLanguage
.L_88a78:
	.4byte	sUnk_86DD638
.L_88a7c:
	.4byte	gColorFading
.L_88a80:
	.4byte	0x05000300
.L_88a84:
	.4byte	0x80000080
.L_88a88:
	.4byte	0x80001800
.L_88a8c:
	.4byte	sUnk_86D7238
.L_88a90:
	.4byte	0x06012400
.L_88a94:
	.4byte	0x80002e00
.L_88a98:
	.4byte	sUnk_86DCE38
.L_88a9c:
	ldr	r1, .L_88af0
	ldr	r0, .L_88af4
.L_88aa0:
	str	r0, [r1, #0]
	ldr	r0, .L_88af8
	str	r0, [r1, #4]
	ldr	r0, .L_88afc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_88af0
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88ac0
.L_88ab8:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88ab8
.L_88ac0:
	ldr	r1, .L_88af0
	mov	r2, sl
	str	r2, [r1, #0]
	ldr	r0, .L_88b00
	str	r0, [r1, #4]
	ldr	r0, .L_88afc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88ae2
.L_88ada:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88ada
.L_88ae2:
	mov	r4, r8
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_88b08
	ldr	r1, .L_88af0
.L_88aec:
	ldr	r0, .L_88b04
	b	.L_88b0c
.L_88af0:
	.4byte	0x040000d4
.L_88af4:
	.4byte	sUnk_86E29F8
.L_88af8:
	.4byte	0x0600c000
.L_88afc:
	.4byte	0x80000400
.L_88b00:
	.4byte	0x0600d000
.L_88b04:
	udf	#56	@ 0x38
	lsr	r5, r5, #1
.L_88b08:
	ldr	r1, .L_88c0c
	ldr	r0, .L_88c10
.L_88b0c:
	str	r0, [r1, #0]
	ldr	r0, .L_88c14
	str	r0, [r1, #4]
	ldr	r0, .L_88c18
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_88c0c
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88b2c
.L_88b24:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88b24
.L_88b2c:
	mov	r5, r8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_88b4c
	ldr	r2, .L_88c0c
	ldrb	r0, [r7, #0]
	sub	r0, #1
	lsl	r0, r0, #6
	ldr	r1, .L_88c1c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_88c20
	str	r0, [r2, #4]
	ldr	r0, .L_88c24
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_88b4c:
	ldr	r1, .L_88c0c
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #6
	ldr	r6, .L_88c28
	add	r0, r0, r6
	str	r0, [r1, #0]
	ldr	r0, .L_88c2c
	str	r0, [r1, #4]
	ldr	r0, .L_88c24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88b74
.L_88b6c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88b6c
.L_88b74:
	ldr	r1, .L_88c0c
	ldr	r6, .L_88c30
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #5
	ldr	r2, .L_88c34
	add	r0, r0, r2
	str	r0, [r1, #0]
	ldr	r0, .L_88c38
	str	r0, [r1, #4]
	ldr	r0, .L_88c3c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	mov	r5, #0
	strh	r5, [r0, #0]
	sub	r1, #204	@ 0xcc
	mov	r4, #192	@ 0xc0
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_88c40
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_88c44
	add	r0, r4, #0
	strh	r0, [r1, #0]
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldr	r2, .L_88c48
	strh	r0, [r2, #0]
	mov	r4, #0
	mov	r0, #2
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r0, #3
	strb	r0, [r1, #4]
	bl	FillColorFadePalettes
	ldr	r1, .L_88c4c
	ldr	r0, .L_88c50
	str	r0, [r1, #0]
	ldr	r0, .L_88c54
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	strb	r5, [r0, #4]
	ldr	r3, .L_88c58
	ldr	r0, .L_88c5c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r6, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r1, [r1, #0]
	lsl	r0, r1, #31
	cmp	r0, #0
	beq	.L_88c64
	lsl	r0, r1, #30
	cmp	r0, #0
	bge	.L_88c64
	lsl	r0, r1, #29
	cmp	r0, #0
	bge	.L_88c64
	lsl	r0, r1, #28
	cmp	r0, #0
	bge	.L_88c64
	ldr	r1, .L_88c60
	mov	r0, #1
	b	.L_88c68
	.align	2, 0
.L_88c0c:
	.4byte	0x040000d4
.L_88c10:
	.4byte	sUnk_86DE638
.L_88c14:
	.4byte	0x0600e000
.L_88c18:
	lsl	r0, r0, #16
	strh	r0, [r0, #0]
.L_88c1c:
	.4byte	sUnk_86DF0F8
.L_88c20:
	.4byte	0x05000200
.L_88c24:
	.4byte	0x80000020
.L_88c28:
	.4byte	sUnk_86DEEF8
.L_88c2c:
	.4byte	0x05000240
.L_88c30:
	.4byte	gCurrentPassage
.L_88c34:
	.4byte	sUnk_86DEE38
.L_88c38:
	.4byte	0x05000160
.L_88c3c:
	.4byte	0x80000010
.L_88c40:
	.4byte	0x00001a01
.L_88c44:
	.4byte	0x00001c02
.L_88c48:
	.4byte	gSoundRoomMessageTimer
.L_88c4c:
	.4byte	gPauseScreenAnimation
.L_88c50:
	.4byte	sUnk_86D3F40
.L_88c54:
	.4byte	gPauseScreenState
.L_88c58:
	.4byte	gCurrentCollection
.L_88c5c:
	.4byte	gCurrentStageNumber
.L_88c60:
	.4byte	gPauseAllJewelPiecesCollected
.L_88c64:
	ldr	r1, .L_88ca4
	mov	r0, #0
.L_88c68:
	strb	r0, [r1, #0]
	ldr	r7, .L_88ca8
	ldr	r5, .L_88cac
	ldr	r4, .L_88cb0
	ldr	r0, .L_88cb4
	ldr	r6, .L_88cb8
	ldr	r2, .L_88cbc
	mov	ip, r2
	ldr	r1, .L_88cc0
	mov	sl, r1
	ldr	r2, .L_88cc4
	mov	r8, r2
	ldr	r1, .L_88cc8
	mov	r9, r1
	add	r3, r4, #0
	mov	r2, #0
	add	r1, r4, #3
.L_88c8a:
	strb	r2, [r1, #0]
	sub	r1, #1
	cmp	r1, r3
	bge	.L_88c8a
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88ccc
	mov	r0, #1
	b	.L_88ce8
	.align	2, 0
.L_88ca4:
	.4byte	gPauseAllJewelPiecesCollected
.L_88ca8:
	.4byte	gCurrentPassage
.L_88cac:
	.4byte	gCurrentStageNumber
.L_88cb0:
	.4byte	gPauseJewelPieceStates
.L_88cb4:
	.4byte	gCollectedNEJewelPiece
.L_88cb8:
	.4byte	gCollectedSEJewelPiece
.L_88cbc:
	.4byte	gCollectedSWJewelPiece
.L_88cc0:
	.4byte	gCollectedNWJewelPiece
.L_88cc4:
	.4byte	gPauseCdAnimationState
.L_88cc8:
	.4byte	gPauseKeyzerAnimationState
.L_88ccc:
	ldr	r3, .L_88cfc
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #31
	cmp	r0, #0
	beq	.L_88cea
	mov	r0, #2
.L_88ce8:
	strb	r0, [r4, #0]
.L_88cea:
	ldrb	r0, [r6, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d00
	mov	r0, #1
	b	.L_88d1c
	.align	2, 0
.L_88cfc:
	.4byte	gCurrentCollection
.L_88d00:
	ldr	r3, .L_88d30
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
.L_88d0c:
	.4byte	0x180900c0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #30
	cmp	r0, #0
	bge	.L_88d1e
	mov	r0, #2
.L_88d1c:
	strb	r0, [r4, #1]
.L_88d1e:
	mov	r2, ip
	ldrb	r0, [r2, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d34
	mov	r0, #1
	b	.L_88d50
.L_88d30:
	.4byte	gCurrentCollection
.L_88d34:
	ldr	r3, .L_88d64
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #29
	cmp	r0, #0
	bge	.L_88d52
	mov	r0, #2
.L_88d50:
	strb	r0, [r4, #2]
.L_88d52:
	mov	r6, sl
	ldrb	r0, [r6, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d68
	mov	r0, #1
	b	.L_88d84
.L_88d64:
	.4byte	gCurrentCollection
.L_88d68:
	ldr	r3, .L_88e68
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #28
	cmp	r0, #0
	bge	.L_88d86
	mov	r0, #2
.L_88d84:
	strb	r0, [r4, #3]
.L_88d86:
	mov	r0, #0
	ldr	r1, .L_88e6c
	strh	r0, [r1, #0]
	ldr	r2, .L_88e70
	strb	r0, [r2, #0]
	mov	r2, #0
	ldr	r0, .L_88e74
	mov	r1, #3
.L_88d96:
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	add	r0, #4
	sub	r1, #1
	cmp	r1, #0
	bge	.L_88d96
	mov	r0, #0
	mov	r4, r8
	strh	r0, [r4, #0]
	strh	r0, [r4, #2]
	mov	r6, r9
	strh	r0, [r6, #0]
	strh	r0, [r6, #2]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	ldr	r1, .L_88e78
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r2, #170	@ 0xaa
	lsl	r2, r2, #6
	ldr	r1, .L_88e7c
	bl	UploadFiveDigitNumberTiles
	ldr	r2, .L_88e80
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88dde
.L_88dd6:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88dd6
.L_88dde:
	ldr	r0, .L_88e84
	ldr	r0, [r0, #0]
	ldr	r1, .L_88e88
	mov	r2, #166	@ 0xa6
	lsl	r2, r2, #6
	bl	UploadTallFiveDigitNumberTiles
	ldr	r0, .L_88e8c
	mov	r1, #160	@ 0xa0
	strh	r1, [r0, #0]
	ldr	r0, .L_88e90
	strh	r1, [r0, #0]
	ldr	r0, .L_88e94
	mov	r3, #0
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	mov	r4, #184	@ 0xb8
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #6
	add	r1, r5, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_88e98
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_88e9c
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	ldr	r4, .L_88ea0
	ldr	r0, [r4, #36]	@ 0x24
	bl	MPlayStop
	ldr	r0, [r4, #48]	@ 0x30
	bl	MPlayStop
	ldr	r0, [r4, #60]	@ 0x3c
	bl	MPlayStop
	ldr	r0, [r4, #72]	@ 0x48
	bl	MPlayStop
	ldr	r2, .L_88ea4
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_88e68:
	.4byte	gCurrentCollection
.L_88e6c:
	.4byte	gStageEntrySequenceTimer
.L_88e70:
	.4byte	gStageEntrySequenceStep
.L_88e74:
	.4byte	gPauseJewelAnimationStates
.L_88e78:
	.4byte	gHighScoreTable
.L_88e7c:
	.4byte	sUnk_86D6E78
.L_88e80:
	.4byte	0x040000d4
.L_88e84:
	.4byte	gTotalScore
.L_88e88:
	.4byte	sUnk_86D6838
.L_88e8c:
	.4byte	gStageEntryWindowTop
.L_88e90:
	.4byte	gStageEntryWindowBottom
.L_88e94:
	.4byte	0x04000012
.L_88e98:
	.4byte	0x04000048
.L_88e9c:
	.4byte	0x0400004a
.L_88ea0:
	.4byte	gMPlayTable
.L_88ea4:
	.4byte	0x04000200
