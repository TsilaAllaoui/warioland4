.include "macros.s.inc"


thumb_func_start ItemShopSubroutine
ItemShopSubroutine:
	push	{r4, lr}
	mov	r4, #0
	bl	func_8090104
	ldr	r0, .L_8fba8
	strb	r4, [r0, #0]
	ldr	r0, .L_8fbac
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #8
	bls	.L_8fb9c
	b	.L_8fccc
.L_8fb9c:
	lsl	r0, r0, #2
	ldr	r1, .L_8fbb0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_8fba8:
	.4byte	gOamSlotsUsed
.L_8fbac:
	.4byte	gUnk_3000000
.L_8fbb0:
	.4byte	.L_8fbb4
.L_8fbb4:
	.4byte	.L_8fbd8
	.4byte	.L_8fbde
	.4byte	.L_8fbec
	.4byte	.L_8fbf2
	.4byte	.L_8fc1e
	.4byte	.L_8fc44
	.4byte	.L_8fc5c
	.4byte	.L_8fc94
	.4byte	.L_8fcac
.L_8fbd8:
	bl	func_808FCE0
	b	.L_8fc9c
.L_8fbde:
	bl	func_80703DC
	mov	r0, #0
	mov	r1, #1
	bl	func_80710D8
	b	.L_8fc98
.L_8fbec:
	bl	func_8089DCC
	b	.L_8fc98
.L_8fbf2:
	ldr	r1, .L_8fc10
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_8fbfe
	add	r0, #1
	strh	r0, [r1, #0]
.L_8fbfe:
	bl	func_80901C4
	cmp	r0, #1
	bne	.L_8fc18
	ldr	r1, .L_8fc14
	mov	r0, #7
	strh	r0, [r1, #0]
	b	.L_8fccc
	.align	2, 0
.L_8fc10:
	.4byte	gUnk_3004A30
.L_8fc14:
	.4byte	gUnk_3000000
.L_8fc18:
	cmp	r0, #2
	bne	.L_8fccc
	b	.L_8fc9c
.L_8fc1e:
	ldr	r1, .L_8fc3c
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_8fc2a
	add	r0, #1
	strh	r0, [r1, #0]
.L_8fc2a:
	ldr	r2, .L_8fc40
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #20
	bls	.L_8fccc
	b	.L_8fc78
.L_8fc3c:
	.4byte	gUnk_3004A30
.L_8fc40:
	.4byte	gUnk_3004A64
.L_8fc44:
	ldr	r1, .L_8fc58
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_8fc50
	add	r0, #1
	strh	r0, [r1, #0]
.L_8fc50:
	bl	func_809047C
	b	.L_8fc98
	.align	2, 0
.L_8fc58:
	.4byte	gUnk_3004A30
.L_8fc5c:
	ldr	r1, .L_8fc88
	ldrh	r0, [r1, #0]
	cmp	r0, #26
	bhi	.L_8fc68
	add	r0, #1
	strh	r0, [r1, #0]
.L_8fc68:
	ldr	r2, .L_8fc8c
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	bls	.L_8fccc
.L_8fc78:
	ldr	r0, .L_8fc90
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r2, #0]
	b	.L_8fccc
	.align	2, 0
.L_8fc88:
	.4byte	gUnk_3004A30
.L_8fc8c:
	.4byte	gUnk_3004A64
.L_8fc90:
	.4byte	gUnk_3000000
.L_8fc94:
	bl	func_8089E14
.L_8fc98:
	cmp	r0, #0
	beq	.L_8fccc
.L_8fc9c:
	ldr	r1, .L_8fca8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_8fccc
	.align	2, 0
.L_8fca8:
	.4byte	gUnk_3000000
.L_8fcac:
	bl	func_80703DC
	mov	r0, #1
	mov	r1, #1
	bl	func_80710D8
	cmp	r0, #0
	beq	.L_8fccc
	bl	func_807ACCC
	mov	r4, #1
	ldr	r1, .L_8fcdc
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	m4aMPlayAllStop
.L_8fccc:
	bl	func_80906B4
	bl	ResetFreeOam
.L_8fcd4:
	.4byte	0xbc101c20
	pop	{r1}
	bx	r1
.L_8fcdc:
	.4byte	gUnk_3000000


thumb_func_start func_808FCE0
func_808FCE0:
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
	.4byte	gUnk_3004A62
.L_8ff68:
	.4byte	sUnk_8733278
.L_8ff6c:
	.4byte	gUnk_3004A64
.L_8ff70:
	.4byte	gUnk_3004A34
.L_8ff74:
	.4byte	gUnk_3004A38
.L_8ff78:
	.4byte	sUnk_8730470
.L_8ff7c:
	.4byte	gUnk_3004A40
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
	.4byte	gUnk_3004A4C
.L_8ffd8:
	.4byte	sUnk_87304F8
.L_8ffdc:
	.4byte	gUnk_3004A50
.L_8ffe0:
	.4byte	gUnk_3004A30
.L_8ffe4:
	.4byte	gUnk_3004A32
.L_8ffe8:
	.4byte	gColorFading
.L_8ffec:
	.4byte	gUnk_3004A58
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
	.4byte	gUnk_3003C4C
.L_900e0:
	.4byte	gUnk_3003C4E
.L_900e4:
	.4byte	gUnk_3003C50
.L_900e8:
	.4byte	gUnk_3003C52
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


thumb_func_start func_8090104
func_8090104:
	push	{lr}
	ldr	r0, .L_90110
	bl	InterruptCallbackSetVBlank
	pop	{r0}
	bx	r0
.L_90110:
	.4byte	func_8090114


thumb_func_start func_8090114
func_8090114:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_9015c
	ldr	r0, .L_90160
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_90164
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_90168
	ldr	r0, .L_9016c
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_90170
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	add	r2, #4
	ldr	r0, .L_90174
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_90178
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_9017c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_90180
	cmp	r0, #1
	beq	.L_901a0
	b	.L_901b6
	.align	2, 0
.L_9015c:
	.4byte	0x040000d4
.L_90160:
	.4byte	gOamBuffer
.L_90164:
	.4byte	0x84000100
.L_90168:
	.4byte	0x04000040
.L_9016c:
	.4byte	gUnk_3003C4C
.L_90170:
	.4byte	gUnk_3003C4E
.L_90174:
	.4byte	gUnk_3003C50
.L_90178:
	.4byte	gUnk_3003C52
.L_9017c:
	.4byte	gLanguage
.L_90180:
	ldr	r1, .L_90198
	ldr	r0, .L_9019c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_901b6
.L_90198:
	.4byte	sUnk_8730150
.L_9019c:
	.4byte	gUnk_3004A32
.L_901a0:
	ldr	r1, .L_901bc
	ldr	r0, .L_901c0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_901b6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_901bc:
	.4byte	sUnk_8730114
.L_901c0:
	.4byte	gUnk_3004A32


thumb_func_start func_80901C4
func_80901C4:
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r0, .L_901d8
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_901dc
	mov	r5, #1
	b	.L_9030c
.L_901d8:
	.4byte	gButtonsPressed
.L_901dc:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_901e8
	mov	r5, #2
	b	.L_9030c
.L_901e8:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_901f4
	mov	r5, #3
	b	.L_9030c
.L_901f4:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_90200
	mov	r5, #4
	b	.L_9030c
.L_90200:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_902f4
	ldr	r6, .L_90224
	ldrb	r1, [r6, #8]
	cmp	r1, #0
	beq	.L_902fc
	cmp	r1, #1
	beq	.L_9022c
	ldr	r0, .L_90228
	add	r0, r1, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_90260
	cmp	r0, #2
	beq	.L_902d4
	b	.L_9030c
.L_90224:
	.4byte	gUnk_3004A40
.L_90228:
	.4byte	gUnk_3004A58
.L_9022c:
	mov	r0, #18
	bl	VoiceSetPlay
	ldr	r0, .L_9024c
	strh	r5, [r0, #0]
	ldr	r1, .L_90250
	mov	r0, #14
	strb	r0, [r1, #0]
	ldr	r1, .L_90254
	ldr	r0, .L_90258
	str	r0, [r1, #0]
	ldr	r0, .L_9025c
	strh	r5, [r0, #2]
	strh	r5, [r0, #0]
	b	.L_90364
	.align	2, 0
.L_9024c:
	.4byte	gUnk_3004A30
.L_90250:
	.4byte	gUnk_3004A32
.L_90254:
	.4byte	gUnk_3004A38
.L_90258:
	.4byte	sUnk_8730528
.L_9025c:
	.4byte	gUnk_3004A34
.L_90260:
	ldr	r0, .L_902ac
	bl	m4aSongNumStart
	ldr	r1, .L_902b0
	ldr	r0, .L_902b4
	str	r0, [r1, #0]
	strh	r5, [r6, #2]
	strh	r5, [r6, #0]
	ldr	r1, .L_902b8
	ldrb	r0, [r6, #8]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r4, .L_902bc
	ldr	r3, .L_902c0
	ldrb	r2, [r6, #8]
	sub	r2, #1
	ldr	r0, .L_902c4
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #3
	add	r0, r0, r1
	add	r0, r0, r2
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r1, [r4, #0]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r4, #0]
	ldr	r1, .L_902c8
	mov	r0, #2
	strb	r0, [r1, #1]
	ldr	r0, .L_902cc
	strh	r5, [r0, #0]
	ldr	r1, .L_902d0
	mov	r0, #12
	strb	r0, [r1, #0]
	mov	r0, #2
	b	.L_90366
	.align	2, 0
.L_902ac:
	.4byte	0x00000125
.L_902b0:
	.4byte	gUnk_3004A4C
.L_902b4:
	.4byte	sUnk_8730510
.L_902b8:
	.4byte	gCurrentShopItem
.L_902bc:
	.4byte	gUnk_3004A62
.L_902c0:
	.4byte	sUnk_872FF64
.L_902c4:
	.4byte	gDifficulty
.L_902c8:
	.4byte	gSwitchStates
.L_902cc:
	.4byte	gUnk_3004A30
.L_902d0:
	.4byte	gUnk_3004A32
.L_902d4:
	ldr	r0, .L_902e8
	strh	r5, [r0, #0]
	ldr	r1, .L_902ec
	mov	r0, #11
	strb	r0, [r1, #0]
	ldr	r0, .L_902f0
	bl	m4aSongNumStart
	b	.L_90364
	.align	2, 0
.L_902e8:
	.4byte	gUnk_3004A30
.L_902ec:
	.4byte	gUnk_3004A32
.L_902f0:
	.4byte	0x00000225
.L_902f4:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_9030c
.L_902fc:
	ldr	r0, .L_90308
	bl	m4aSongNumStart
	mov	r0, #1
	b	.L_90366
	.align	2, 0
.L_90308:
	.4byte	0x00000129
.L_9030c:
	ldr	r0, .L_90338
	ldrb	r0, [r0, #0]
.L_90310:
	.4byte	0xd1172800
	cmp	r5, #0
	beq	.L_90364
	ldr	r2, .L_9033c
	sub	r1, r5, #1
.L_9031c:
	.4byte	0x48080089
	ldrb	r0, [r0, #8]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
.L_90328:
	.4byte	0x280a6808
	beq	.L_90364
	add	r0, r5, #0
.L_90330:
	.4byte	0xf820f000
	b	.L_90364
	.align	2, 0
.L_90338:
	.4byte	gCurrentPassage
.L_9033c:
	.4byte	sUnk_87300B4
.L_90340:
	.4byte	gUnk_3004A40
.L_90344:
	cmp	r5, #0
	beq	.L_90364
	ldr	r2, .L_9036c
	sub	r1, r5, #1
	lsl	r1, r1, #2
	ldr	r0, .L_90370
	ldrb	r0, [r0, #8]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	cmp	r0, #10
	beq	.L_90364
	add	r0, r5, #0
	bl	func_8090374
.L_90364:
	mov	r0, #0
.L_90366:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_9036c:
	.4byte	sUnk_8730014
.L_90370:
	.4byte	gUnk_3004A40


thumb_func_start func_8090374
func_8090374:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	ldr	r0, .L_903ac
	mov	r5, #0
	strh	r5, [r0, #0]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_903b0
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	ldr	r1, .L_903b4
	ldr	r3, .L_903b8
	ldrb	r0, [r3, #8]
	add	r1, r0, r1
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bne	.L_9039e
	strb	r5, [r1, #0]
.L_9039e:
	ldr	r0, .L_903bc
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #0
	bne	.L_903c4
	ldr	r2, .L_903c0
	b	.L_903c6
.L_903ac:
	.4byte	gUnk_3004A30
.L_903b0:
	.4byte	gUnk_3004A50
.L_903b4:
	.4byte	gUnk_3004A58
.L_903b8:
	.4byte	gUnk_3004A40
.L_903bc:
	.4byte	gCurrentPassage
.L_903c0:
	.4byte	sUnk_87300B4
.L_903c4:
	ldr	r2, .L_90430
.L_903c6:
	sub	r0, r4, #1
	lsl	r0, r0, #2
	ldrb	r1, [r3, #8]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldr	r1, .L_90434
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	ldr	r5, .L_90438
	ldrb	r0, [r1, #8]
	strb	r0, [r5, #0]
	ldr	r2, .L_9043c
	ldrb	r0, [r1, #8]
	add	r2, r0, r2
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #0
	bne	.L_9041a
	mov	r0, #1
	strb	r0, [r2, #0]
	ldrb	r0, [r4, #8]
	cmp	r0, #0
	bne	.L_9041a
	ldr	r3, .L_90440
	ldr	r2, .L_90444
	ldr	r0, .L_90448
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r2, #2
	add	r0, r0, r2
	ldrh	r1, [r3, #0]
	ldrh	r0, [r0, #0]
	cmp	r1, r0
	bcs	.L_9041a
	mov	r0, #13
	strb	r0, [r5, #0]
.L_9041a:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_90454
	ldr	r1, .L_9044c
	ldrb	r0, [r4, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #4]
	ldr	r1, .L_90450
	b	.L_90462
.L_90430:
	.4byte	sUnk_8730014
.L_90434:
	.4byte	gUnk_3004A40
.L_90438:
	.4byte	gUnk_3004A32
.L_9043c:
	.4byte	gUnk_3004A58
.L_90440:
	.4byte	gMedalCount
.L_90444:
	.4byte	sUnk_872FF64
.L_90448:
	.4byte	gDifficulty
.L_9044c:
	.4byte	sUnk_872FF0C
.L_90450:
	.4byte	sUnk_872FF18
.L_90454:
	ldr	r1, .L_90474
	ldrb	r0, [r4, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #4]
	ldr	r1, .L_90478
.L_90462:
	ldrb	r0, [r4, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #6]
	pop	{r4, r5, r6}
	pop	{r0}
.L_90470:
	.4byte	0x00004700
.L_90474:
	.4byte	sUnk_872FEE4
.L_90478:
	.4byte	sUnk_872FEF8


thumb_func_start func_809047C
func_809047C:
	push	{r4, r5, lr}
	ldr	r5, .L_904bc
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #0]
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_904a2
	ldr	r0, .L_904c0
	bl	m4aSongNumStart
	ldr	r1, .L_904c4
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
.L_904a2:
	ldr	r4, .L_904c4
	ldrh	r0, [r4, #0]
	ldr	r1, .L_904c8
	mov	r2, #128	@ 0x80
	bl	DrawMinigameNumber
	ldr	r1, .L_904cc
	ldrh	r0, [r4, #0]
	ldrh	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_904d0
	mov	r0, #0
	b	.L_904d6
.L_904bc:
	.4byte	gUnk_3004A64
.L_904c0:
	.4byte	0x00000222
.L_904c4:
	.4byte	gMedalCount
.L_904c8:
	.4byte	sUnk_8733278
.L_904cc:
	.4byte	gUnk_3004A62
.L_904d0:
	mov	r0, #0
	strh	r0, [r5, #0]
	mov	r0, #1
.L_904d6:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start Shop_DrawText
Shop_DrawText:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	ip, r0
	add	r6, r1, #0
	lsl	r2, r2, #24
	lsr	r7, r2, #24
	ldr	r0, .L_90538
	ldrh	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #0
	bne	.L_90548
	mov	r3, #0
	lsl	r4, r7, #1
	cmp	r3, r4
	blt	.L_90502
	b	.L_90692
.L_90502:
	ldr	r2, .L_9053c
	ldr	r7, .L_90540
.L_90506:
	str	r7, [r2, #0]
	lsl	r0, r3, #5
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	add	r0, r0, r1
	add	r0, r6, r0
	str	r0, [r2, #4]
	ldr	r0, .L_90544
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	add	r5, r3, #1
	cmp	r0, #0
	bge	.L_9052e
.L_90526:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_90526
.L_9052e:
	add	r3, r5, #0
	cmp	r3, r4
	blt	.L_90506
	b	.L_90692
	.align	2, 0
.L_90538:
	.4byte	gUnk_3004A30
.L_9053c:
	.4byte	0x040000d4
.L_90540:
	.4byte	sUnk_873D438
.L_90544:
	.4byte	0x80000010
.L_90548:
	mov	r0, #250	@ 0xfa
	lsl	r0, r0, #2
	cmp	r1, r0
	bne	.L_905f8
	mov	r3, #0
	cmp	r3, r7
	blt	.L_90558
	b	.L_90692
.L_90558:
	ldr	r2, .L_905ec
	mov	r4, #192	@ 0xc0
	lsl	r4, r4, #19
	mov	sl, r4
	ldr	r5, .L_905f0
	mov	r9, r5
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #24
	mov	r8, r0
.L_9056a:
	mov	r1, ip
	add	r0, r1, r3
	ldrb	r4, [r0, #0]
	lsl	r1, r4, #5
	lsr	r0, r4, #5
	lsl	r0, r0, #10
	ldr	r5, .L_905f4
	add	r0, r0, r5
	add	r1, r1, r0
	str	r1, [r2, #0]
	lsl	r1, r3, #6
	mov	r5, sl
	add	r0, r1, r5
	add	r0, r6, r0
	str	r0, [r2, #4]
	mov	r0, r9
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r5, r8
	and	r0, r5
	add	r5, r3, #1
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_905a8
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
.L_905a0:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_905a0
.L_905a8:
	lsl	r1, r4, #5
	lsr	r0, r4, #5
	lsl	r0, r0, #10
	ldr	r4, .L_905f4
	add	r0, r0, r4
	add	r1, r1, r0
.L_905b4:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	add	r1, r1, r0
	str	r1, [r2, #0]
	mov	r1, sl
	add	r0, r3, r1
	add	r0, r6, r0
	add	r0, #32
	str	r0, [r2, #4]
	mov	r4, r9
	str	r4, [r2, #8]
	ldr	r0, [r2, #8]
	add	r3, r2, #0
	ldr	r0, [r3, #8]
	mov	r1, r8
	and	r0, r1
	cmp	r0, #0
	beq	.L_905e4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
.L_905dc:
	ldr	r0, [r3, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_905dc
.L_905e4:
	add	r3, r5, #0
	cmp	r3, r7
	blt	.L_9056a
	b	.L_90692
.L_905ec:
	.4byte	0x040000d4
.L_905f0:
	.4byte	0x80000010
.L_905f4:
	.4byte	sUnk_8739458
.L_905f8:
	ldrh	r0, [r5, #0]
	add	r0, ip
.L_905fc:
	.4byte	0x78003801
	add	r2, r7, #1
	cmp	r0, #255	@ 0xff
	bne	.L_9061a
	add	r1, r5, #0
.L_90608:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	add	r0, ip
	sub	r0, #1
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_90608
.L_9061a:
	ldrh	r0, [r5, #0]
	cmp	r0, r2
	bge	.L_90692
	add	r0, ip
	sub	r0, #1
	ldrb	r4, [r0, #0]
	ldr	r2, .L_906a0
	lsl	r1, r4, #5
	lsr	r0, r4, #5
	lsl	r0, r0, #10
	ldr	r3, .L_906a4
	add	r0, r0, r3
	add	r1, r1, r0
	str	r1, [r2, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #6
	ldr	r1, .L_906a8
	add	r0, r0, r1
	add	r0, r6, r0
	str	r0, [r2, #4]
	ldr	r0, .L_906ac
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_9065a
.L_90652:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_90652
.L_9065a:
	ldr	r2, .L_906a0
	lsl	r1, r4, #5
	lsr	r0, r4, #5
	lsl	r0, r0, #10
	add	r0, r0, r3
	add	r1, r1, r0
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r1, r1, r4
	str	r1, [r2, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #6
	add	r0, r0, r6
	ldr	r5, .L_906b0
	add	r0, r0, r5
	str	r0, [r2, #4]
	ldr	r0, .L_906ac
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_90692
.L_9068a:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_9068a
.L_90692:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_906a0:
	.4byte	0x040000d4
.L_906a4:
	.4byte	sUnk_8739458
.L_906a8:
	.4byte	0x05ffffc0
.L_906ac:
	.4byte	0x80000010
.L_906b0:
	.4byte	0x05ffffe0


thumb_func_start func_80906B4
func_80906B4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r0, #0
	mov	r8, r0
	ldr	r1, .L_908a8
	ldrb	r7, [r1, #0]
	lsl	r0, r7, #3
	ldr	r4, .L_908ac
	add	r6, r0, r4
	ldr	r2, .L_908b0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_908b4
	ldr	r5, [r3, #0]
	mov	ip, r5
	lsl	r0, r0, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_90710
	mov	r0, r8
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_90710
	mov	r1, r8
	strh	r1, [r2, #2]
	ldr	r0, .L_908b8
	cmp	ip, r0
	bne	.L_90710
	ldr	r0, .L_908bc
	str	r0, [r3, #0]
.L_90710:
	ldrh	r0, [r2, #2]
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	ble	.L_90726
	b	.L_90990
.L_90726:
	ldr	r5, .L_908c0
	cmp	r8, r7
	bge	.L_9078e
	ldr	r1, .L_908ac
	ldr	r2, .L_908c4
	mov	sl, r2
	ldr	r3, .L_908c8
	mov	ip, r3
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	sub	r2, r7, r2
	mov	r8, r2
.L_90746:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #120	@ 0x78
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #20
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_90746
	mov	r8, r7
.L_9078e:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldrh	r1, [r5, #2]
	ldr	r3, .L_908cc
	ldr	r2, [r3, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_907ca
	mov	r0, #0
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_907ca
	strh	r0, [r5, #2]
	ldr	r0, .L_908d0
	cmp	r2, r0
	bne	.L_907ca
	mov	r0, #1
	strh	r0, [r5, #2]
.L_907ca:
	ldrh	r0, [r5, #2]
	ldr	r2, .L_908cc
	ldr	r1, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	ble	.L_907e2
	b	.L_90990
.L_907e2:
	cmp	r8, r7
	bge	.L_9084c
	ldr	r1, .L_908ac
	ldr	r3, .L_908c4
	mov	sl, r3
	ldr	r0, .L_908c8
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	mov	r3, r8
	lsl	r0, r3, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r0, r7, r0
	mov	r8, r0
.L_90802:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #6]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #4
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_90802
	mov	r8, r7
.L_9084c:
	mov	r2, #0
	mov	ip, r2
.L_90850:
	ldr	r0, .L_908d4
	add	r0, ip
	ldrb	r2, [r0, #0]
	mov	r3, ip
	lsl	r1, r3, #1
	add	r0, r1, r3
	add	r0, r0, r2
	lsl	r0, r0, #2
	ldr	r5, .L_908d8
	add	r0, r0, r5
	ldr	r3, [r0, #0]
	add	r5, r1, #0
	cmp	r2, #1
	bne	.L_908e0
	ldr	r2, .L_908dc
	ldrh	r1, [r2, #0]
	add	r1, #1
	mov	r4, #0
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_9089c
	strh	r4, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_9089c
	strh	r0, [r2, #2]
.L_9089c:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	b	.L_908e2
	.align	2, 0
.L_908a8:
	.4byte	gOamSlotsUsed
.L_908ac:
	.4byte	gOamBuffer
.L_908b0:
	.4byte	gUnk_3004A34
.L_908b4:
	.4byte	gUnk_3004A38
.L_908b8:
	.4byte	sUnk_8730528
.L_908bc:
	.4byte	sUnk_8730470
.L_908c0:
	.4byte	gUnk_3004A40
.L_908c4:
	.4byte	0x000001ff
.L_908c8:
	.4byte	0xfffffe00
.L_908cc:
	.4byte	gUnk_3004A4C
.L_908d0:
	.4byte	sUnk_8730510
.L_908d4:
	.4byte	gUnk_3004A58
.L_908d8:
	.4byte	sUnk_872FF9C
.L_908dc:
	.4byte	gUnk_3004A50
.L_908e0:
	ldr	r4, [r3, #0]
.L_908e2:
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	bgt	.L_90990
	mov	r0, ip
	add	r0, #1
	str	r0, [sp, #0]
	cmp	r8, r7
	bge	.L_90982
	ldr	r0, .L_90920
	add	r0, r0, r5
	mov	sl, r0
	ldr	r0, .L_90924
	add	r0, r0, r5
	mov	r9, r0
	ldr	r0, .L_90928
	add	r0, r0, r5
	mov	ip, r0
	ldr	r0, .L_9092c
	add	r5, r5, r0
	str	r5, [sp, #4]
.L_9090e:
	ldr	r1, .L_90930
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_90934
	mov	r2, sl
	ldrh	r0, [r2, #0]
	mov	r3, r9
	ldrh	r1, [r3, #0]
	b	.L_9093c
.L_90920:
	.4byte	sUnk_872FF58
.L_90924:
	.4byte	sUnk_872FF4C
.L_90928:
	.4byte	sUnk_872FF38
.L_9092c:
	.4byte	sUnk_872FF24
.L_90930:
	.4byte	gCurrentPassage
.L_90934:
	mov	r5, ip
	ldrh	r0, [r5, #0]
	ldr	r2, [sp, #4]
	ldrh	r1, [r2, #0]
.L_9093c:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r5, r8
	lsl	r3, r5, #3
	ldr	r5, .L_909a0
	add	r3, r3, r5
	add	r0, r2, r0
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, r1
	ldr	r0, .L_909a4
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_909a8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r7
	blt	.L_9090e
.L_90982:
	ldr	r1, [sp, #0]
.L_90984:
	.4byte	0x2909468c
	bgt	.L_9098c
	b	.L_90850
.L_9098c:
	ldr	r2, .L_909ac
	strb	r7, [r2, #0]
.L_90990:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
.L_90998:
	.4byte	0xbcf046aa
	pop	{r0}
	bx	r0
.L_909a0:
	.4byte	gOamBuffer
.L_909a4:
	.4byte	0x000001ff
.L_909a8:
	.4byte	0xfffffe00
.L_909ac:
	.4byte	gOamSlotsUsed
