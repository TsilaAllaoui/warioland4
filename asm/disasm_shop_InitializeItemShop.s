.align 2, 0
.global InitializeItemShop
.thumb
.type InitializeItemShop, %function
InitializeItemShop:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, .L_8fee4
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	bl	InitializeVideoMemory
	ldr	r3, .L_8fee8
	mov	r0, #0
	strh	r0, [r3, #0]
	ldr	r2, .L_8feec
	ldrh	r1, [r2, #0]
	ldr	r0, .L_8fef0
	and	r0, r1
	strh	r0, [r2, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_8fef4
	and	r0, r1
	strh	r0, [r4, #0]
	strh	r5, [r3, #0]
	ldr	r1, .L_8fef8
	ldr	r0, .L_8fefc
	str	r0, [r1, #0]
	ldr	r0, .L_8ff00
	str	r0, [r1, #4]
	ldr	r0, .L_8ff04
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fd34
.L_8fd2c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fd2c
.L_8fd34:
	ldr	r1, .L_8fef8
	ldr	r0, .L_8ff08
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8ff04
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r4, .L_8ff0c
	ldr	r3, .L_8ff10
	ldr	r5, .L_8ff14
	mov	r7, #167	@ 0xa7
	lsl	r7, r7, #6
	add	r6, r3, r7
	ldr	r7, .L_8ff18
	mov	r8, r7
	ldr	r7, .L_8ff1c
	mov	ip, r7
	ldr	r7, .L_8ff20
	mov	sl, r7
	ldr	r7, .L_8ff24
	mov	r9, r7
	cmp	r0, #0
	bge	.L_8fd74
.L_8fd6c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fd6c
.L_8fd74:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8fef8
	str	r4, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8ff28
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fd9e
.L_8fd96:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fd96
.L_8fd9e:
	ldr	r1, .L_8fef8
	str	r3, [r1, #0]
	ldr	r0, .L_8ff2c
	str	r0, [r1, #4]
	ldr	r0, .L_8ff30
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fdbe
.L_8fdb6:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fdb6
.L_8fdbe:
	ldr	r1, .L_8fef8
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #10
	add	r0, r0, r6
	str	r0, [r1, #0]
	ldr	r0, .L_8ff34
	str	r0, [r1, #4]
	ldr	r0, .L_8ff04
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fde4
.L_8fddc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fddc
.L_8fde4:
	ldr	r1, .L_8fef8
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #10
	ldr	r2, .L_8ff38
	add	r0, r0, r2
	str	r0, [r1, #0]
	ldr	r0, .L_8ff3c
	str	r0, [r1, #4]
	ldr	r0, .L_8ff04
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fe0c
.L_8fe04:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fe04
.L_8fe0c:
	ldr	r1, .L_8fef8
	mov	r3, r8
	str	r3, [r1, #0]
	ldr	r0, .L_8ff40
	str	r0, [r1, #4]
	ldr	r0, .L_8ff44
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fe2e
.L_8fe26:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fe26
.L_8fe2e:
	ldr	r1, .L_8fef8
	mov	r7, ip
	str	r7, [r1, #0]
	ldr	r0, .L_8ff48
	str	r0, [r1, #4]
	ldr	r0, .L_8ff44
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fe50
.L_8fe48:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fe48
.L_8fe50:
	ldr	r1, .L_8fef8
	mov	r0, sl
	str	r0, [r1, #0]
	ldr	r0, .L_8ff4c
	str	r0, [r1, #4]
	ldr	r0, .L_8ff44
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8fe72
.L_8fe6a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8fe6a
.L_8fe72:
	ldr	r1, .L_8fef8
	ldr	r2, .L_8ff50
	str	r2, [r1, #0]
	ldr	r0, .L_8ff54
	str	r0, [r1, #4]
	ldr	r0, .L_8ff44
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r7, .L_8ff58
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8ff5c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_8ff60
	add	r0, r3, #0
	strh	r0, [r1, #0]
	mov	r7, r9
	ldrh	r0, [r7, #0]
	ldr	r1, .L_8ff64
	strh	r0, [r1, #0]
	ldrh	r0, [r7, #0]
	ldr	r1, .L_8ff68
	mov	r2, #128	@ 0x80
	bl	DrawMinigameNumber
	ldr	r0, .L_8ff6c
	mov	r3, #0
	strh	r3, [r0, #0]
	ldr	r0, .L_8ff70
	mov	r1, #0
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	ldr	r2, .L_8ff74
	ldr	r0, .L_8ff78
	str	r0, [r2, #0]
	ldr	r2, .L_8ff7c
	strh	r1, [r2, #0]
	strh	r1, [r2, #2]
	strb	r3, [r2, #8]
	ldr	r0, .L_8ff80
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8ff8c
	ldr	r0, .L_8ff84
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	ldr	r0, .L_8ff88
	b	.L_8ff94
.L_8fee4:
	.4byte	0x04000200
.L_8fee8:
	.4byte	0x04000208
.L_8feec:
	.4byte	0x04000004
.L_8fef0:
	.4byte	0x0000ffef
.L_8fef4:
	.4byte	0x0000fffd
.L_8fef8:
	.4byte	0x040000d4
.L_8fefc:
	.4byte	sUnk_8735258
.L_8ff00:
	.4byte	0x05000200
.L_8ff04:
	.4byte	0x80000100
.L_8ff08:
	.4byte	sUnk_8732858
.L_8ff0c:
	.4byte	sUnk_8732A58
.L_8ff10:
	.4byte	sUnk_8735458
.L_8ff14:
	.4byte	gDifficulty
.L_8ff18:
	.4byte	sUnk_8730858
.L_8ff1c:
	.4byte	sUnk_8731058
.L_8ff20:
	.4byte	sUnk_8731858
.L_8ff24:
	.4byte	gMedalCount
.L_8ff28:
	.4byte	0x80001400
.L_8ff2c:
	.4byte	0x06010000
.L_8ff30:
	.4byte	0x80002000
.L_8ff34:
	.4byte	0x06011140
.L_8ff38:
	.4byte	sUnk_8738A18
.L_8ff3c:
	.4byte	0x06012540
.L_8ff40:
	.4byte	0x0600c000
.L_8ff44:
	.4byte	0x80000400
.L_8ff48:
	.4byte	0x0600d000
.L_8ff4c:
	b	.L_8ff50
	lsl	r0, r0, #24
.L_8ff50:
	mov	r0, #88	@ 0x58
	lsr	r3, r6, #1
.L_8ff54:
	.4byte	0x0600f000
.L_8ff58:
	.4byte	0x00001a01
.L_8ff5c:
	.4byte	0x00001c02
.L_8ff60:
	.4byte	0x00001e03
.L_8ff64:
	.4byte	gItemShopTargetMedalCount
.L_8ff68:
	.4byte	sUnk_8733278
.L_8ff6c:
	.4byte	gItemShopTimer
.L_8ff70:
	.4byte	gItemShopShopkeeperAnimationState
.L_8ff74:
	.4byte	gItemShopShopkeeperAnimation
.L_8ff78:
	.4byte	sItemShopShopkeeperIdleAnimation
.L_8ff7c:
	.4byte	gItemShopCursor
.L_8ff80:
	.4byte	gCurrentPassage
.L_8ff84:
	.4byte	sUnk_872FF0C
.L_8ff88:
	.4byte	sUnk_872FF18
.L_8ff8c:
	ldr	r0, .L_8ffcc
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	ldr	r0, .L_8ffd0
.L_8ff94:
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #6]
	ldr	r1, .L_8ffd4
	ldr	r0, .L_8ffd8
	str	r0, [r1, #0]
	ldr	r1, .L_8ffdc
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	mov	r3, #0
	ldr	r2, .L_8ffe0
	mov	r8, r2
	ldr	r7, .L_8ffe4
	mov	r9, r7
	ldr	r0, .L_8ffe8
	mov	ip, r0
	ldr	r5, .L_8ffec
	ldr	r7, .L_8fff0
	ldr	r6, .L_8fff4
	add	r2, r5, #0
	mov	r4, #2
	neg	r4, r4
.L_8ffc0:
	cmp	r3, #0
	bne	.L_8fff8
	mov	r0, #1
	strb	r0, [r5, #0]
	b	.L_9001c
	.align	2, 0
.L_8ffcc:
	.4byte	sUnk_872FEE4
.L_8ffd0:
	.4byte	sUnk_872FEF8
.L_8ffd4:
	.4byte	gItemShopCursorAnimation
.L_8ffd8:
	.4byte	sItemShopCursorIdleAnimation
.L_8ffdc:
	.4byte	gItemShopItemIconAnimationState
.L_8ffe0:
	.4byte	gSoundRoomMessageTimer
.L_8ffe4:
	.4byte	gItemShopMessageId
.L_8ffe8:
	.4byte	gColorFading
.L_8ffec:
	.4byte	gItemShopItemAvailability
.L_8fff0:
	.4byte	gMedalCount
.L_8fff4:
	.4byte	sUnk_872FF64
.L_8fff8:
	ldr	r0, .L_90014
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r4, r0
	add	r0, r0, r6
	ldrh	r1, [r7, #0]
	ldrh	r0, [r0, #0]
	cmp	r1, r0
	bcc	.L_90018
	mov	r0, #0
	b	.L_9001a
	.align	2, 0
.L_90014:
	.4byte	gDifficulty
.L_90018:
	mov	r0, #2
.L_9001a:
	strb	r0, [r2, #0]
.L_9001c:
	add	r2, #1
	add	r4, #2
	add	r3, #1
	cmp	r3, #9
	ble	.L_8ffc0
	mov	r5, #0
	mov	r1, r8
	strh	r5, [r1, #0]
	mov	r0, #10
	mov	r2, r9
	strb	r0, [r2, #0]
	mov	r4, #0
	mov	r0, #3
	mov	r3, ip
	strb	r0, [r3, #4]
	mov	r0, #2
	strb	r0, [r3, #0]
	bl	func_8071260
	ldr	r0, .L_900d0
.L_90044:
	.4byte	0x48238004
	strb	r5, [r0, #0]
	ldr	r0, .L_900d8
	bl	m4aSongNumStart
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	mov	r7, #248	@ 0xf8
	lsl	r7, r7, #5
.L_90058:
	.4byte	0x80101c38
	ldr	r0, .L_900dc
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_900e0
	strh	r1, [r0, #0]
	ldr	r0, .L_900e4
	strh	r4, [r0, #0]
	ldr	r1, .L_900e8
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldrh	r0, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #6
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_900ec
	mov	r0, #63	@ 0x3f
.L_90080:
	.4byte	0x481b8008
	strh	r4, [r0, #0]
	add	r1, #8
	ldr	r7, .L_900f4
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_900f8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_900fc
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
.L_900a4:
	.4byte	0x30068004
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
.L_900b0:
	.4byte	0x38028004
	strh	r4, [r0, #0]
	ldr	r2, .L_90100
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
	.align	2, 0
.L_900d0:
	.4byte	0x04000054
.L_900d4:
	.4byte	gUnk_3000C37
.L_900d8:
	.4byte	0x000002aa
.L_900dc:
	.4byte	gStageEntryWindowLeft
.L_900e0:
	.4byte	gStageEntryWindowRight
.L_900e4:
	.4byte	gStageEntryWindowTop
.L_900e8:
	.4byte	gStageEntryWindowBottom
.L_900ec:
	.4byte	0x04000048
.L_900f0:
	.4byte	0x0400004a
.L_900f4:
	.4byte	0x00001844
.L_900f8:
	.4byte	0x0000040c
.L_900fc:
	.4byte	0x04000012
.L_90100:
	.4byte	0x04000200


