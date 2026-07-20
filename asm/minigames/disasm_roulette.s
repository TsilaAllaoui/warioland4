.include "macros.s.inc"


thumb_func_start func_808AC90
func_808AC90:
	push	{r4, lr}
	ldr	r0, .L_8aca8
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #14
	bls	.L_8ac9e
	b	.L_8b0d8
.L_8ac9e:
	lsl	r0, r1, #2
	ldr	r1, .L_8acac
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8aca8:
	.4byte	gMinigameState
.L_8acac:
	.4byte	.L_8acb0
.L_8acb0:
	.4byte	.L_8acec
	.4byte	.L_8acfa
	.4byte	.L_8ad1c
	.4byte	.L_8ad2a
	.4byte	.L_8ad7c
	.4byte	.L_8adb4
	.4byte	.L_8ae00
	.4byte	.L_8ae54
	.4byte	.L_8aec4
	.4byte	.L_8af08
	.4byte	.L_8af78
	.4byte	.L_8afbc
	.4byte	.L_8b02c
	.4byte	.L_8b0b8
	.4byte	.L_8b0cc
.L_8acec:
	mov	r0, #40	@ 0x28
	bl	MinigameWaitForFrames
	cmp	r0, #0
	bne	.L_8acf8
	b	.L_8b0d8
.L_8acf8:
	b	.L_8b05a
.L_8acfa:
	ldr	r1, .L_8ad18
	ldrh	r0, [r1, #4]
	sub	r0, #20
	strh	r0, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #31
	bls	.L_8ad0c
	b	.L_8b0d8
.L_8ad0c:
	mov	r0, #32
	strh	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #12]
	b	.L_8ae44
	.align	2, 0
.L_8ad18:
	.4byte	gMinigameCamera
.L_8ad1c:
	mov	r0, #60	@ 0x3c
	bl	MinigameWaitForFrames
	cmp	r0, #0
	bne	.L_8ad28
	b	.L_8b0d8
.L_8ad28:
	b	.L_8b05a
.L_8ad2a:
	ldr	r0, .L_8ad64
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r0, #1
	and	r1, r0
	cmp	r1, #0
	beq	.L_8ad3c
	b	.L_8b0d8
.L_8ad3c:
	ldr	r2, .L_8ad68
	ldrb	r3, [r2, #0]
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	cmp	r0, #0
	bgt	.L_8ae1e
	ldr	r2, .L_8ad6c
	ldr	r1, .L_8ad70
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #4]
	ldr	r2, .L_8ad74
	ldrb	r0, [r1, #1]
	strb	r0, [r2, #4]
	ldr	r2, .L_8ad78
	ldrb	r0, [r1, #2]
	strb	r0, [r2, #4]
	bl	func_808BB2C
	b	.L_8b05a
	.align	2, 0
.L_8ad64:
	.4byte	gUnk_300188E
.L_8ad68:
	.4byte	gUnk_30047D9
.L_8ad6c:
	.4byte	gUnk_3004890
.L_8ad70:
	.4byte	gUnk_300490A
.L_8ad74:
	.4byte	gUnk_3004898
.L_8ad78:
	.4byte	gUnk_30048A0
.L_8ad7c:
	ldr	r0, .L_8ada8
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r0, #1
	and	r1, r0
	cmp	r1, #0
	beq	.L_8ad8e
	b	.L_8b0d8
.L_8ad8e:
	ldr	r2, .L_8adac
	ldrb	r3, [r2, #0]
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	cmp	r0, #15
	bgt	.L_8ae44
	ldr	r0, .L_8adb0
	ldrb	r1, [r0, #0]
	sub	r1, #1
	strb	r1, [r0, #0]
	add	r0, r3, #1
	strb	r0, [r2, #0]
	b	.L_8b0d8
.L_8ada8:
	.4byte	gUnk_300188E
.L_8adac:
	.4byte	gUnk_30047D9
.L_8adb0:
	.4byte	gUnk_30047D8
.L_8adb4:
	ldr	r3, .L_8addc
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r2, [r3, #0]
	ldr	r0, .L_8ade0
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	lsl	r0, r1, #2
	cmp	r2, r0
	bne	.L_8ade8
	mov	r0, #0
	strh	r0, [r3, #0]
	mov	r0, #148	@ 0x94
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	ldr	r0, .L_8ade4
	b	.L_8b056
	.align	2, 0
.L_8addc:
	.4byte	gHomerunSequenceTimer
.L_8ade0:
	.4byte	gUnk_3004908
.L_8ade4:
	.4byte	0x0000024e
.L_8ade8:
	add	r0, r2, #0
	bl	__modsi3
	cmp	r0, #0
	beq	.L_8adf4
	b	.L_8b0d8
.L_8adf4:
	ldr	r0, .L_8adfc
	bl	m4aSongNumStart
	b	.L_8b0d8
.L_8adfc:
	.4byte	0x0000024f
.L_8ae00:
	ldr	r1, .L_8ae2c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	beq	.L_8ae12
	b	.L_8b0d8
.L_8ae12:
	ldr	r2, .L_8ae30
	ldrb	r3, [r2, #0]
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	cmp	r0, #0
	ble	.L_8ae38
.L_8ae1e:
	ldr	r0, .L_8ae34
	ldrb	r1, [r0, #0]
	add	r1, #1
	strb	r1, [r0, #0]
	sub	r0, r3, #1
	strb	r0, [r2, #0]
	b	.L_8b0d8
.L_8ae2c:
	.4byte	gUnk_300188E
.L_8ae30:
	.4byte	gUnk_30047D9
.L_8ae34:
	.4byte	gUnk_30047D8
.L_8ae38:
	ldr	r0, .L_8ae4c
	strb	r1, [r0, #0]
	mov	r0, #16
	strb	r0, [r2, #0]
	ldr	r0, .L_8ae50
	strb	r1, [r0, #0]
.L_8ae44:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_8b0d8
.L_8ae4c:
	.4byte	gUnk_30047D8
.L_8ae50:
	.4byte	gUnk_3004866
.L_8ae54:
	bl	func_808B674
	bl	func_808B65C
	cmp	r0, #0
	bne	.L_8ae62
	b	.L_8b0d8
.L_8ae62:
	bl	func_808BD5C
	ldr	r0, .L_8aea8
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r3, r0, #4
	mov	r1, #1
.L_8ae70:
	ldmia	r3!, {r0}
	strh	r2, [r0, #0]
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8ae70
	ldr	r0, .L_8aeac
	bl	m4aSongNumStart
	ldr	r1, .L_8aeb0
	ldr	r0, .L_8aea8
	ldr	r2, [r0, #0]
	ldrb	r0, [r2, #6]
	mov	r3, #0
	strb	r0, [r1, #4]
	ldr	r1, .L_8aeb4
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_8aeb8
	ldrh	r0, [r2, #2]
	strh	r0, [r1, #0]
	ldr	r1, .L_8aebc
	ldrh	r0, [r2, #4]
	strh	r0, [r1, #0]
	ldr	r0, .L_8aec0
	strh	r3, [r0, #0]
	bl	func_808BA34
	b	.L_8b05a
.L_8aea8:
	.4byte	gUnk_3004858
.L_8aeac:
	.4byte	0x0000024b
.L_8aeb0:
	.4byte	gUnk_3004890
.L_8aeb4:
	.4byte	gUnk_3004880
.L_8aeb8:
	.4byte	gUnk_3004882
.L_8aebc:
	.4byte	gUnk_3004884
.L_8aec0:
	.4byte	gUnk_300486A
.L_8aec4:
	bl	func_808B820
	add	r4, r0, #0
	cmp	r4, #1
	beq	.L_8aed0
	b	.L_8b0d8
.L_8aed0:
	ldr	r1, .L_8aefc
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	bl	func_808BCA0
	ldr	r0, .L_8af00
	strb	r4, [r0, #0]
	ldr	r0, .L_8af04
	mov	r3, #0
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #5
	add	r0, #4
	mov	r1, #2
.L_8aeec:
	strh	r2, [r0, #4]
	strh	r3, [r0, #0]
	add	r0, #12
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8aeec
	b	.L_8b0d8
	.align	2, 0
.L_8aefc:
	.4byte	gMinigameState
.L_8af00:
	.4byte	gUnk_3004866
.L_8af04:
	.4byte	gUnk_3004830
.L_8af08:
	bl	func_808B674
	bl	func_808B65C
	cmp	r0, #0
	bne	.L_8af16
	b	.L_8b0d8
.L_8af16:
	bl	func_808BD5C
	ldr	r0, .L_8af60
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r3, r0, #4
	mov	r1, #1
.L_8af24:
	ldmia	r3!, {r0}
	strh	r2, [r0, #0]
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8af24
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	ldr	r1, .L_8af64
	ldr	r0, .L_8af60
	ldr	r2, [r0, #0]
	ldrb	r0, [r2, #6]
	mov	r3, #0
	strb	r0, [r1, #4]
	ldr	r1, .L_8af68
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_8af6c
	ldrh	r0, [r2, #2]
	strh	r0, [r1, #0]
	ldr	r1, .L_8af70
	ldrh	r0, [r2, #4]
	strh	r0, [r1, #0]
	ldr	r0, .L_8af74
	strh	r3, [r0, #0]
	bl	func_808BA34
	b	.L_8b05a
	.align	2, 0
.L_8af60:
	.4byte	gUnk_3004858
.L_8af64:
	.4byte	gUnk_3004898
.L_8af68:
	.4byte	gUnk_3004880
.L_8af6c:
	.4byte	gUnk_3004882
.L_8af70:
	.4byte	gUnk_3004884
.L_8af74:
	.4byte	gUnk_300486A
.L_8af78:
	bl	func_808B820
	cmp	r0, #0
	bne	.L_8af82
	b	.L_8b0d8
.L_8af82:
	ldr	r1, .L_8afb0
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	bl	func_808BCA0
	ldr	r1, .L_8afb4
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_8afb8
	mov	r3, #0
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #5
	add	r0, #4
	mov	r1, #2
.L_8afa0:
	strh	r2, [r0, #4]
	strh	r3, [r0, #0]
	add	r0, #12
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8afa0
	b	.L_8b0d8
	.align	2, 0
.L_8afb0:
	.4byte	gMinigameState
.L_8afb4:
	.4byte	gUnk_3004866
.L_8afb8:
	.4byte	gUnk_3004830
.L_8afbc:
	bl	func_808B674
	bl	func_808B65C
	cmp	r0, #0
	bne	.L_8afca
	b	.L_8b0d8
.L_8afca:
	bl	func_808BD5C
	ldr	r0, .L_8b010
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r3, r0, #4
	mov	r1, #1
.L_8afd8:
	ldmia	r3!, {r0}
	strh	r2, [r0, #0]
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8afd8
	ldr	r0, .L_8b014
	bl	m4aSongNumStart
	ldr	r1, .L_8b018
	ldr	r0, .L_8b010
	ldr	r2, [r0, #0]
	ldrb	r0, [r2, #6]
	mov	r3, #0
	strb	r0, [r1, #4]
	ldr	r1, .L_8b01c
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_8b020
	ldrh	r0, [r2, #2]
	strh	r0, [r1, #0]
	ldr	r1, .L_8b024
	ldrh	r0, [r2, #4]
	strh	r0, [r1, #0]
	ldr	r0, .L_8b028
	strh	r3, [r0, #0]
	bl	func_808BA34
	b	.L_8b05a
.L_8b010:
	.4byte	gUnk_3004858
.L_8b014:
	.4byte	0x0000024d
.L_8b018:
	.4byte	gUnk_30048A0
.L_8b01c:
	.4byte	gUnk_3004880
.L_8b020:
	.4byte	gUnk_3004882
.L_8b024:
	.4byte	gUnk_3004884
.L_8b028:
	.4byte	gUnk_300486A
.L_8b02c:
	bl	func_808B820
	cmp	r0, #0
	beq	.L_8b0d8
	ldr	r0, .L_8b064
	ldr	r1, .L_8b068
	ldrb	r0, [r0, #4]
	ldrb	r2, [r1, #0]
	cmp	r0, r2
	bne	.L_8b07c
	ldr	r0, .L_8b06c
	ldrb	r0, [r0, #4]
	ldrb	r4, [r1, #1]
	cmp	r0, r4
	bne	.L_8b07c
	ldr	r0, .L_8b070
	ldrb	r0, [r0, #4]
	ldrb	r1, [r1, #2]
	cmp	r0, r1
	bne	.L_8b07c
	ldr	r0, .L_8b074
.L_8b056:
	bl	m4aSongNumStart
.L_8b05a:
	ldr	r1, .L_8b078
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_8b0d8
.L_8b064:
	.4byte	gUnk_3004890
.L_8b068:
	.4byte	gUnk_300490A
.L_8b06c:
	.4byte	gUnk_3004898
.L_8b070:
	.4byte	gUnk_30048A0
.L_8b074:
	.4byte	0x00000246
.L_8b078:
	.4byte	gMinigameState
.L_8b07c:
	ldr	r0, .L_8b0a4
	bl	m4aSongNumStart
	ldr	r1, .L_8b0a8
	mov	r0, #14
	strb	r0, [r1, #0]
	ldr	r2, .L_8b0ac
	ldr	r0, .L_8b0b0
	ldr	r1, .L_8b0b4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #8
	bl	m4aMPlayFadeOut
	b	.L_8b0d8
.L_8b0a4:
	.4byte	0x00000247
.L_8b0a8:
	.4byte	gMinigameState
.L_8b0ac:
	.4byte	gMPlayTable
.L_8b0b0:
	.4byte	gSongTable
.L_8b0b4:
	.4byte	0x00001624
.L_8b0b8:
	bl	func_808C730
	cmp	r0, #0
	beq	.L_8b0d8
	ldr	r1, .L_8b0c8
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_8b0d8
.L_8b0c8:
	.4byte	gMinigameState
.L_8b0cc:
	bl	func_808CA18
	cmp	r0, #0
	beq	.L_8b0d8
	mov	r0, #1
	b	.L_8b0da
.L_8b0d8:
	mov	r0, #0
.L_8b0da:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_808B0E0
func_808B0E0:
	ldr	r2, .L_8b0f8
	ldr	r0, .L_8b0fc
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	lsl	r1, r1, #8
	ldr	r0, .L_8b100
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_8b0f8:
	.4byte	0x04000052
.L_8b0fc:
	.4byte	gUnk_30047D8
.L_8b100:
	.4byte	gUnk_30047D9


thumb_func_start func_808B104
func_808B104:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_8b404
	ldr	r0, .L_8b408
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8b40c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_8b410
	ldr	r4, .L_8b414
	ldr	r5, .L_8b418
	ldr	r6, .L_8b41c
	mov	r8, r6
	ldr	r6, .L_8b420
	mov	sl, r6
	ldr	r6, .L_8b424
	mov	r9, r6
	ldr	r6, .L_8b428
	mov	ip, r6
	cmp	r0, #0
	bge	.L_8b148
.L_8b140:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b140
.L_8b148:
	ldr	r1, .L_8b404
	str	r3, [r1, #0]
	ldr	r0, .L_8b42c
	str	r0, [r1, #4]
	ldr	r0, .L_8b40c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b168
.L_8b160:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b160
.L_8b168:
	ldr	r1, .L_8b404
	str	r4, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8b430
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b18a
.L_8b182:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b182
.L_8b18a:
	ldr	r1, .L_8b404
	str	r5, [r1, #0]
	ldr	r0, .L_8b434
	str	r0, [r1, #4]
	ldr	r0, .L_8b438
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b1aa
.L_8b1a2:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b1a2
.L_8b1aa:
	ldr	r1, .L_8b404
	mov	r0, r8
	str	r0, [r1, #0]
	ldr	r0, .L_8b43c
	str	r0, [r1, #4]
	ldr	r0, .L_8b440
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b1cc
.L_8b1c4:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b1c4
.L_8b1cc:
	mov	r5, #0
	ldr	r2, .L_8b404
	ldr	r7, .L_8b444
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #24
.L_8b1d6:
	lsl	r1, r5, #10
	mov	r3, r8
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r3, .L_8b448
	add	r0, r1, r3
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	and	r0, r6
	add	r4, r5, #1
	cmp	r0, #0
	beq	.L_8b1fe
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8b1f6:
	ldr	r0, [r2, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8b1f6
.L_8b1fe:
	mov	r3, sl
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r3, .L_8b44c
	add	r0, r1, r3
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	add	r5, r2, #0
	ldr	r0, [r2, #8]
	and	r0, r6
	cmp	r0, #0
	beq	.L_8b224
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8b21c:
	ldr	r0, [r5, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8b21c
.L_8b224:
	mov	r3, r9
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r3, .L_8b450
	add	r0, r1, r3
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	add	r5, r2, #0
	ldr	r0, [r5, #8]
	and	r0, r6
	cmp	r0, #0
	beq	.L_8b24a
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8b242:
	ldr	r0, [r5, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8b242
.L_8b24a:
	add	r5, r4, #0
	cmp	r5, #3
	ble	.L_8b1d6
	ldr	r1, .L_8b404
	mov	r6, ip
	str	r6, [r1, #0]
	ldr	r0, .L_8b454
	str	r0, [r1, #4]
	ldr	r0, .L_8b458
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b272
.L_8b26a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b26a
.L_8b272:
	ldr	r1, .L_8b404
	ldr	r0, .L_8b45c
	str	r0, [r1, #0]
	ldr	r0, .L_8b460
	str	r0, [r1, #4]
	ldr	r0, .L_8b458
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8b294
.L_8b28c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8b28c
.L_8b294:
	ldr	r1, .L_8b464
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_8b468
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8b46c
	mov	r4, #0
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	ldr	r6, .L_8b470
	strh	r4, [r6, #0]
	ldr	r0, .L_8b474
	strb	r4, [r0, #0]
	bl	func_808BDE0
	ldr	r1, .L_8b478
	mov	r0, #70	@ 0x46
	strh	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #152	@ 0x98
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_8b47c
	strh	r4, [r0, #0]
	ldr	r0, .L_8b480
	strb	r4, [r0, #0]
	ldr	r0, .L_8b484
	strh	r4, [r0, #0]
	ldr	r0, .L_8b488
	strb	r4, [r0, #0]
	ldr	r0, .L_8b48c
	strb	r4, [r0, #0]
	ldr	r0, .L_8b490
	strb	r4, [r0, #0]
	ldr	r1, .L_8b494
	mov	r0, #3
	strh	r0, [r1, #0]
	mov	r6, #0
	mov	r4, #0
	mov	r3, #224	@ 0xe0
	lsl	r3, r3, #5
	ldr	r0, .L_8b498
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	mov	r1, #88	@ 0x58
	mov	r5, #2
.L_8b30a:
	strh	r2, [r0, #0]
	strh	r1, [r0, #2]
	strh	r3, [r0, #8]
	strh	r4, [r0, #4]
	strb	r6, [r0, #7]
	add	r0, #12
	sub	r5, #1
	cmp	r5, #0
	bge	.L_8b30a
	ldr	r3, .L_8b49c
	ldr	r4, .L_8b4a0
	ldr	r5, .L_8b4a4
	ldr	r6, .L_8b4a8
	ldr	r0, .L_8b4ac
	mov	ip, r0
	ldr	r1, .L_8b4b0
	mov	r8, r1
	ldr	r2, .L_8b4b4
	mov	r9, r2
	ldr	r7, .L_8b4b8
	ldr	r0, .L_8b4bc
	mov	sl, r0
	ldr	r2, .L_8b4c0
	ldr	r0, .L_8b498
	add	r0, #24
	add	r1, r2, #0
	add	r1, #8
.L_8b340:
	str	r0, [r1, #0]
	sub	r0, #12
	sub	r1, #4
	cmp	r1, r2
	bge	.L_8b340
	mov	r0, #48	@ 0x30
	strh	r0, [r3, #0]
	mov	r3, #0
	mov	r2, #0
	mov	r1, #122	@ 0x7a
	strh	r1, [r4, #0]
	mov	r0, #88	@ 0x58
	strh	r0, [r4, #2]
	strb	r3, [r4, #4]
	strh	r1, [r5, #0]
	mov	r0, #106	@ 0x6a
	strh	r0, [r5, #2]
	strb	r3, [r5, #4]
	strh	r1, [r6, #0]
	mov	r0, #116	@ 0x74
	strh	r0, [r6, #2]
	strb	r3, [r6, #4]
	ldr	r1, .L_8b4c4
	strh	r2, [r1, #0]
	mov	r6, ip
	strh	r2, [r6, #0]
	strh	r2, [r6, #2]
	mov	r0, r8
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	mov	r1, r9
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	ldr	r6, .L_8b4c8
	strb	r3, [r6, #0]
	mov	r0, #120	@ 0x78
	strh	r0, [r7, #8]
	mov	r0, #64	@ 0x40
	strh	r0, [r7, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	strh	r0, [r7, #4]
	mov	r0, #1
	strb	r0, [r7, #12]
	ldr	r0, .L_8b4cc
	strb	r3, [r0, #0]
	ldr	r1, .L_8b4d0
	strb	r3, [r1, #0]
	ldr	r6, .L_8b4d4
	strb	r3, [r6, #0]
	ldr	r0, .L_8b4d8
	strh	r2, [r0, #0]
	mov	r1, sl
	strb	r3, [r1, #0]
	mov	r0, #16
	ldr	r2, .L_8b4dc
	strb	r0, [r2, #0]
	ldr	r1, .L_8b4e0
	mov	r3, #144	@ 0x90
	lsl	r3, r3, #2
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_8b4e4
	mov	r6, sl
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	lsl	r0, r0, #8
	mov	r1, #16
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #177	@ 0xb1
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	bl	func_808BCF0
	bl	func_808BCA0
	mov	r5, #0
.L_8b3de:
	bl	MinigameRandom
	ldr	r4, .L_8b4e8
	add	r4, r5, r4
	ldr	r1, .L_8b494
	ldrh	r1, [r1, #0]
	bl	__modsi3
	strb	r0, [r4, #0]
	add	r5, #1
	cmp	r5, #2
	ble	.L_8b3de
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8b404:
	.4byte	0x040000d4
.L_8b408:
	.4byte	sUnk_86F4E28
.L_8b40c:
	.4byte	0x80000100
.L_8b410:
	.4byte	sUnk_86FB828
.L_8b414:
	.4byte	sUnk_86F5028
.L_8b418:
	.4byte	sUnk_86FBA28
.L_8b41c:
	.4byte	sUnk_86FEA28
.L_8b420:
	.4byte	sUnk_8706A28
.L_8b424:
	.4byte	sUnk_8702A28
.L_8b428:
	.4byte	sUnk_870BA28
.L_8b42c:
	.4byte	0x05000200
.L_8b430:
	.4byte	0x80003400
.L_8b434:
	.4byte	0x06010000
.L_8b438:
	.4byte	0x80001800
.L_8b43c:
	.4byte	0x06013000
.L_8b440:
	.4byte	0x80002000
.L_8b444:
	.4byte	0x80000080
.L_8b448:
	.4byte	0x06017000
.L_8b44c:
	.4byte	0x06017100
.L_8b450:
	.4byte	0x06017200
.L_8b454:
	.4byte	0x0600c000
.L_8b458:
	.4byte	0x80000400
.L_8b45c:
	.4byte	sUnk_870C228
.L_8b460:
	.4byte	0x0600d000
.L_8b464:
	.4byte	0x04000008
.L_8b468:
	.4byte	0x00001a01
.L_8b46c:
	.4byte	0x04000012
.L_8b470:
	.4byte	gMinigameScore
.L_8b474:
	.4byte	gMinigameNewHighScore
.L_8b478:
	.4byte	gUnk_3004868
.L_8b47c:
	.4byte	0x04000054
.L_8b480:
	.4byte	gUnk_300486C
.L_8b484:
	.4byte	gUnk_300486A
.L_8b488:
	.4byte	gUnk_3004864
.L_8b48c:
	.4byte	gUnk_3004865
.L_8b490:
	.4byte	gUnk_3004866
.L_8b494:
	.4byte	gUnk_30048AA
.L_8b498:
	.4byte	gUnk_3004830
.L_8b49c:
	.4byte	gUnk_3004908
.L_8b4a0:
	.4byte	gUnk_3004890
.L_8b4a4:
	.4byte	gUnk_3004898
.L_8b4a8:
	.4byte	gUnk_30048A0
.L_8b4ac:
	.4byte	gUnk_3004900
.L_8b4b0:
	.4byte	gUnk_3004904
.L_8b4b4:
	.4byte	gMinigameUiAnimation
.L_8b4b8:
	.4byte	gMinigameCamera
.L_8b4bc:
	.4byte	gUnk_30047D8
.L_8b4c0:
	.4byte	gUnk_3004858
.L_8b4c4:
	.4byte	gUnk_30048A8
.L_8b4c8:
	.4byte	gMinigameMedalHighlight
.L_8b4cc:
	.4byte	gMinigameState
.L_8b4d0:
	.4byte	gHomerunSubstate
.L_8b4d4:
	.4byte	gHomerunSequenceState
.L_8b4d8:
	.4byte	gHomerunSequenceTimer
.L_8b4dc:
	.4byte	gUnk_30047D9
.L_8b4e0:
	.4byte	0x04000050
.L_8b4e4:
	.4byte	0x04000052
.L_8b4e8:
	.4byte	gUnk_300490A


thumb_func_start func_808B4EC
func_808B4EC:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_8b604
	ldr	r0, .L_8b608
	str	r0, [r1, #0]
	ldr	r0, .L_8b60c
	str	r0, [r1, #4]
	ldr	r0, .L_8b610
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r1, .L_8b614
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #100	@ 0x64
	ble	.L_8b50e
	mov	r0, #100	@ 0x64
	strh	r0, [r1, #0]
.L_8b50e:
	ldr	r0, .L_8b618
	ldrh	r0, [r0, #0]
	mov	r1, #10
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_8b532
	ldr	r1, .L_8b61c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #15
	bls	.L_8b532
	mov	r0, #15
	strh	r0, [r1, #0]
.L_8b532:
	ldr	r1, .L_8b620
	ldrh	r0, [r1, #0]
	sub	r0, #5
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #2
	bgt	.L_8b546
	mov	r0, #48	@ 0x30
	strh	r0, [r1, #0]
.L_8b546:
	ldr	r0, .L_8b624
	mov	r1, #0
	mov	r2, #0
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	ldr	r0, .L_8b628
	strb	r1, [r0, #0]
	ldr	r0, .L_8b62c
	strh	r2, [r0, #0]
	ldr	r0, .L_8b630
	strb	r1, [r0, #0]
	ldr	r0, .L_8b634
	strb	r1, [r0, #0]
	ldr	r0, .L_8b638
	strb	r1, [r0, #0]
	ldr	r0, .L_8b63c
	strh	r2, [r0, #0]
	ldr	r1, .L_8b640
	mov	r0, #88	@ 0x58
	strh	r0, [r1, #2]
	ldr	r1, .L_8b644
	mov	r0, #106	@ 0x6a
	strh	r0, [r1, #2]
	ldr	r1, .L_8b648
	mov	r0, #116	@ 0x74
	strh	r0, [r1, #2]
	bl	func_808BCF0
	bl	func_808BCA0
	mov	r7, #0
	mov	r6, #224	@ 0xe0
	lsl	r6, r6, #5
	ldr	r0, .L_8b64c
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	ldr	r2, .L_8b650
	mov	r4, #250	@ 0xfa
	lsl	r4, r4, #2
	mov	r3, #88	@ 0x58
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r0, r1
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	lsl	r0, r0, #1
	mov	r5, #2
.L_8b5a6:
	strh	r4, [r2, #0]
	strh	r3, [r2, #2]
	strh	r6, [r2, #8]
	strh	r0, [r2, #4]
	strb	r7, [r2, #7]
	add	r2, #12
	sub	r5, #1
	cmp	r5, #0
	bge	.L_8b5a6
	ldr	r2, .L_8b654
	ldr	r0, .L_8b650
	add	r0, #24
	add	r1, r2, #0
	add	r1, #8
.L_8b5c2:
	str	r0, [r1, #0]
	sub	r0, #12
	sub	r1, #4
	cmp	r1, r2
	bge	.L_8b5c2
	mov	r5, #0
.L_8b5ce:
	bl	MinigameRandom
	ldr	r6, .L_8b658
	add	r4, r5, r6
	ldr	r1, .L_8b61c
	ldrh	r1, [r1, #0]
	bl	__modsi3
	strb	r0, [r4, #0]
	add	r5, #1
	cmp	r5, #2
	ble	.L_8b5ce
	ldr	r1, .L_8b640
	ldrb	r0, [r6, #0]
	strb	r0, [r1, #4]
	ldr	r1, .L_8b644
	ldrb	r0, [r6, #1]
	strb	r0, [r1, #4]
	ldr	r1, .L_8b648
	ldrb	r0, [r6, #2]
	strb	r0, [r1, #4]
	bl	func_808BB2C
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8b604:
	.4byte	0x040000d4
.L_8b608:
	.4byte	sUnk_86FEA28
.L_8b60c:
	.4byte	0x06013000
.L_8b610:
	.4byte	0x80002000
.L_8b614:
	.4byte	gUnk_3004868
.L_8b618:
	.4byte	gMinigameScore
.L_8b61c:
	.4byte	gUnk_30048AA
.L_8b620:
	.4byte	gUnk_3004908
.L_8b624:
	.4byte	gUnk_3004904
.L_8b628:
	.4byte	gUnk_300486C
.L_8b62c:
	.4byte	gUnk_300486A
.L_8b630:
	.4byte	gUnk_3004864
.L_8b634:
	.4byte	gUnk_3004865
.L_8b638:
	.4byte	gUnk_3004866
.L_8b63c:
	.4byte	gUnk_30048A8
.L_8b640:
	.4byte	gUnk_3004890
.L_8b644:
	.4byte	gUnk_3004898
.L_8b648:
	.4byte	gUnk_30048A0
.L_8b64c:
	.4byte	sSinCosTable + 2 * 224
.L_8b650:
	.4byte	gUnk_3004830
.L_8b654:
	.4byte	gUnk_3004858
.L_8b658:
	.4byte	gUnk_300490A


thumb_func_start func_808B65C
func_808B65C:
	ldr	r0, .L_8b66c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_8b670
	mov	r0, #0
	b	.L_8b672
.L_8b66c:
	.4byte	gButtonsPressed
.L_8b670:
	mov	r0, #1
.L_8b672:
	bx	lr


thumb_func_start func_808B674
func_808B674:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_8b7ec
	ldrb	r0, [r4, #7]
	cmp	r0, #0
	bne	.L_8b686
	bl	func_808B9EC
	mov	r0, #1
	strb	r0, [r4, #7]
.L_8b686:
	add	r6, r4, #0
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #5
	mov	ip, r0
	ldr	r5, .L_8b7f0
	add	r3, r6, #0
	ldr	r7, .L_8b7f4
	mov	r4, #2
.L_8b696:
	ldrb	r0, [r3, #7]
	cmp	r0, #0
	beq	.L_8b6e8
	ldrh	r0, [r7, #0]
	ldrh	r2, [r3, #8]
	add	r1, r0, r2
	strh	r1, [r3, #8]
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmp	r0, ip
	ble	.L_8b6b2
	ldr	r2, .L_8b7f8
	add	r0, r1, r2
	strh	r0, [r3, #8]
.L_8b6b2:
	ldrh	r2, [r3, #8]
	lsl	r2, r2, #16
	asr	r2, r2, #21
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	lsl	r1, r0, #3
	add	r1, r1, r0
	asr	r1, r1, #5
	mov	r0, #124	@ 0x7c
	sub	r0, r0, r1
	strh	r0, [r3, #0]
	lsl	r2, r2, #1
	add	r2, r2, r5
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r0, r2
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	lsl	r0, r0, #1
	strh	r0, [r3, #4]
.L_8b6e8:
	add	r3, #12
	sub	r4, #1
	cmp	r4, #0
	bge	.L_8b696
	ldr	r0, .L_8b7fc
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bne	.L_8b7a8
	ldr	r3, .L_8b800
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r6
	mov	r1, #224	@ 0xe0
	lsl	r1, r1, #5
	strh	r1, [r0, #8]
	ldrb	r0, [r3, #0]
	lsl	r2, r0, #1
	add	r2, r2, r0
	lsl	r2, r2, #2
	add	r2, r2, r6
	ldr	r4, .L_8b7f0
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	lsl	r1, r0, #3
	add	r1, r1, r0
	asr	r1, r1, #5
	mov	r0, #124	@ 0x7c
	sub	r0, r0, r1
	strh	r0, [r2, #0]
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r6
	mov	r1, #1
	strb	r1, [r0, #7]
	ldrb	r0, [r3, #0]
	lsl	r2, r0, #1
	add	r2, r2, r0
	lsl	r2, r2, #2
	add	r2, r2, r6
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r0, r1
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	lsl	r0, r0, #1
	strh	r0, [r2, #4]
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r6
	ldr	r2, .L_8b804
	ldr	r0, .L_8b808
	ldrb	r0, [r0, #0]
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #6]
	ldr	r4, .L_8b80c
	ldrb	r0, [r4, #0]
	cmp	r0, #7
	bne	.L_8b790
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8b790:
	ldrb	r0, [r4, #0]
	cmp	r0, #9
	bne	.L_8b79c
	ldr	r0, .L_8b810
	bl	m4aSongNumStart
.L_8b79c:
	ldrb	r0, [r4, #0]
	cmp	r0, #11
	bne	.L_8b7a8
	ldr	r0, .L_8b814
	bl	m4aSongNumStart
.L_8b7a8:
	ldr	r2, .L_8b7fc
	ldr	r0, .L_8b7f4
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	ldr	r1, .L_8b818
	cmp	r0, r1
	ble	.L_8b7e6
	mov	r4, #0
	strh	r4, [r2, #0]
	ldr	r2, .L_8b800
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	ldr	r3, .L_8b808
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #2
	bls	.L_8b7da
	strb	r4, [r2, #0]
.L_8b7da:
	ldr	r1, .L_8b81c
	ldrb	r0, [r3, #0]
	ldrh	r1, [r1, #0]
	cmp	r0, r1
	bcc	.L_8b7e6
	strb	r4, [r3, #0]
.L_8b7e6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8b7ec:
	.4byte	gUnk_3004830
.L_8b7f0:
	.4byte	sSinCosTable
.L_8b7f4:
	.4byte	gUnk_3004868
.L_8b7f8:
	.4byte	0xffffe020
.L_8b7fc:
	.4byte	gUnk_300486A
.L_8b800:
	.4byte	gUnk_3004865
.L_8b804:
	.4byte	gUnk_3004870
.L_8b808:
	.4byte	gUnk_3004864
.L_8b80c:
	.4byte	gMinigameState
.L_8b810:
	.4byte	0x00000249
.L_8b814:
	.4byte	0x0000024a
.L_8b818:
	.4byte	0x07ff0000
.L_8b81c:
	.4byte	gUnk_30048AA


thumb_func_start func_808B820
func_808B820:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_8b880
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	ldr	r4, .L_8b884
	ldr	r5, .L_8b888
	ldr	r6, .L_8b88c
	ldr	r0, .L_8b890
	mov	r8, r0
	ldr	r2, .L_8b894
	mov	r9, r2
	ldr	r0, .L_8b898
	mov	sl, r0
	cmp	r1, #0
	bne	.L_8b8d4
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	ldr	r2, .L_8b89c
	add	r0, r0, r2
	lsl	r0, r0, #5
	mov	r1, #30
	bl	__divsi3
	strh	r0, [r4, #0]
	mov	r0, r8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #122	@ 0x7a
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r1, #30
	bl	__divsi3
	strh	r0, [r6, #0]
	ldr	r0, .L_8b8a0
	ldrb	r0, [r0, #0]
	cmp	r0, #10
	beq	.L_8b8b4
	cmp	r0, #10
	bgt	.L_8b8a4
	cmp	r0, #8
	beq	.L_8b8aa
	b	.L_8b8d4
	.align	2, 0
.L_8b880:
	.4byte	gUnk_300486C
.L_8b884:
	.4byte	gUnk_300488A
.L_8b888:
	.4byte	gUnk_3004884
.L_8b88c:
	.4byte	gUnk_3004886
.L_8b890:
	.4byte	gUnk_3004880
.L_8b894:
	.4byte	gUnk_3004888
.L_8b898:
	.4byte	gUnk_3004882
.L_8b89c:
	.4byte	0xffffff00
.L_8b8a0:
	.4byte	gMinigameState
.L_8b8a4:
	cmp	r0, #12
	beq	.L_8b8be
	b	.L_8b8d4
.L_8b8aa:
	mov	r0, sl
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #88	@ 0x58
	b	.L_8b8c6
.L_8b8b4:
	mov	r2, sl
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #106	@ 0x6a
	b	.L_8b8c6
.L_8b8be:
	mov	r2, sl
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #116	@ 0x74
.L_8b8c6:
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r1, #30
	bl	__divsi3
	mov	r1, r9
	strh	r0, [r1, #0]
.L_8b8d4:
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	ldr	r3, .L_8b95c
	ldr	r2, [r3, #0]
	mov	r0, #0
	ldrsh	r1, [r4, r0]
	ldrb	r0, [r7, #0]
	mul	r1, r0
	asr	r1, r1, #5
	ldrh	r0, [r5, #0]
	sub	r0, r0, r1
	strh	r0, [r2, #4]
	ldr	r2, [r3, #0]
	mov	r4, #0
	ldrsh	r1, [r6, r4]
	ldrb	r0, [r7, #0]
	mul	r0, r1
	asr	r0, r0, #5
	mov	r1, r8
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	ldr	r2, [r3, #0]
	mov	r4, r9
	mov	r0, #0
	ldrsh	r1, [r4, r0]
	ldrb	r0, [r7, #0]
	mul	r0, r1
	asr	r0, r0, #5
	mov	r1, sl
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r2, #2]
	ldrb	r0, [r7, #0]
	cmp	r0, #30
	bne	.L_8b9dc
	ldr	r0, .L_8b960
	ldrb	r2, [r0, #0]
	cmp	r2, #8
	bne	.L_8b932
	ldr	r0, [r3, #0]
	ldr	r1, .L_8b964
	ldrb	r0, [r0, #6]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_8b952
.L_8b932:
	cmp	r2, #10
	bne	.L_8b942
	ldr	r0, [r3, #0]
	ldr	r1, .L_8b964
	ldrb	r0, [r0, #6]
	ldrb	r1, [r1, #1]
	cmp	r0, r1
	beq	.L_8b952
.L_8b942:
	cmp	r2, #12
	bne	.L_8b968
	ldr	r0, [r3, #0]
	ldr	r1, .L_8b964
	ldrb	r0, [r0, #6]
	ldrb	r1, [r1, #2]
	cmp	r0, r1
	bne	.L_8b968
.L_8b952:
	mov	r0, #145	@ 0x91
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_8b96e
.L_8b95c:
	.4byte	gUnk_3004858
.L_8b960:
	.4byte	gMinigameState
.L_8b964:
	.4byte	gUnk_300490A
.L_8b968:
	ldr	r0, .L_8b998
	bl	m4aSongNumStart
.L_8b96e:
	ldr	r7, .L_8b99c
	ldr	r2, .L_8b9a0
	mov	ip, r2
	ldr	r4, .L_8b9a4
	mov	r8, r4
	ldr	r0, .L_8b9a8
	mov	r9, r0
	ldr	r0, .L_8b9ac
	mov	r6, #0
	add	r0, #2
	ldr	r5, .L_8b9b0
	mov	r4, #106	@ 0x6a
	mov	r2, #116	@ 0x74
	mov	r3, #2
.L_8b98a:
	strb	r6, [r0, #5]
	ldrb	r1, [r5, #0]
	cmp	r1, #8
	beq	.L_8b9b4
	cmp	r1, #10
	beq	.L_8b9b8
	b	.L_8b9ba
.L_8b998:
	.4byte	0x00000245
.L_8b99c:
	.4byte	gUnk_300486C
.L_8b9a0:
	.4byte	gUnk_3004858
.L_8b9a4:
	.4byte	gUnk_3004865
.L_8b9a8:
	.4byte	gUnk_3004864
.L_8b9ac:
	.4byte	gUnk_3004830
.L_8b9b0:
	.4byte	gMinigameState
.L_8b9b4:
	strh	r4, [r0, #0]
	b	.L_8b9ba
.L_8b9b8:
	strh	r2, [r0, #0]
.L_8b9ba:
	add	r0, #12
	sub	r3, #1
	cmp	r3, #0
	bge	.L_8b98a
	mov	r1, ip
	ldr	r2, [r1, #0]
	mov	r1, #0
	mov	r0, #250	@ 0xfa
	lsl	r0, r0, #2
	strh	r0, [r2, #0]
	strb	r1, [r7, #0]
	mov	r2, r8
	strb	r1, [r2, #0]
	mov	r4, r9
	strb	r1, [r4, #0]
	mov	r0, #1
	b	.L_8b9de
.L_8b9dc:
	mov	r0, #0
.L_8b9de:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_808B9EC
func_808B9EC:
	ldr	r0, .L_8b9fc
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	beq	.L_8ba00
	cmp	r0, #11
	beq	.L_8ba10
	b	.L_8ba20
	.align	2, 0
.L_8b9fc:
	.4byte	gMinigameState
.L_8ba00:
	ldr	r1, .L_8ba08
	ldr	r0, .L_8ba0c
	b	.L_8ba14
	.align	2, 0
.L_8ba08:
	.4byte	0x040000d4
.L_8ba0c:
	.4byte	sUnk_8706A28
.L_8ba10:
	ldr	r1, .L_8ba24
	ldr	r0, .L_8ba28
.L_8ba14:
	str	r0, [r1, #0]
	ldr	r0, .L_8ba2c
	str	r0, [r1, #4]
	ldr	r0, .L_8ba30
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_8ba20:
	bx	lr
	.align	2, 0
.L_8ba24:
	.4byte	0x040000d4
.L_8ba28:
	.4byte	sUnk_8702A28
.L_8ba2c:
	.4byte	0x06013000
.L_8ba30:
	.4byte	0x80002000


thumb_func_start func_808BA34
func_808BA34:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_8ba48
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	beq	.L_8ba84
	cmp	r0, #9
	bgt	.L_8ba4c
	cmp	r0, #7
	beq	.L_8ba52
	b	.L_8badc
.L_8ba48:
	.4byte	gMinigameState
.L_8ba4c:
	cmp	r0, #11
	beq	.L_8bab8
	b	.L_8badc
.L_8ba52:
	ldr	r0, .L_8ba78
	ldrb	r0, [r0, #4]
	bl	func_808BC84
	add	r1, r0, #0
	cmp	r1, #0
	bge	.L_8ba62
	add	r0, r1, #3
.L_8ba62:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r1, r0
	lsl	r2, r2, #12
	lsl	r0, r0, #8
	ldr	r1, .L_8ba7c
	add	r0, r0, r1
	add	r4, r2, r0
	ldr	r5, .L_8ba80
	b	.L_8badc
.L_8ba78:
	.4byte	gUnk_3004890
.L_8ba7c:
	.4byte	sUnk_86FEA28
.L_8ba80:
	.4byte	0x06017000
.L_8ba84:
	ldr	r0, .L_8baac
	ldrb	r0, [r0, #4]
	bl	func_808BC84
	add	r1, r0, #0
	cmp	r1, #0
	bge	.L_8ba94
	add	r0, r1, #3
.L_8ba94:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r1, r0
	lsl	r2, r2, #12
	lsl	r0, r0, #8
	ldr	r1, .L_8bab0
	add	r0, r0, r1
	add	r4, r2, r0
	ldr	r5, .L_8bab4
	b	.L_8badc
	.align	2, 0
.L_8baac:
	.4byte	gUnk_3004898
.L_8bab0:
	.4byte	sUnk_8706A28
.L_8bab4:
	.4byte	0x06017100
.L_8bab8:
	ldr	r0, .L_8bb18
	ldrb	r0, [r0, #4]
	bl	func_808BC84
	add	r1, r0, #0
	cmp	r1, #0
	bge	.L_8bac8
	add	r0, r1, #3
.L_8bac8:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r1, r0
	lsl	r2, r2, #12
	lsl	r0, r0, #8
	ldr	r1, .L_8bb1c
	add	r0, r0, r1
	add	r4, r2, r0
	ldr	r5, .L_8bb20
.L_8badc:
	mov	r3, #0
	ldr	r2, .L_8bb24
	ldr	r7, .L_8bb28
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #24
.L_8bae6:
	lsl	r1, r3, #10
	add	r0, r4, r1
	str	r0, [r2, #0]
	add	r1, r5, r1
	str	r1, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	and	r0, r6
	add	r1, r3, #1
	cmp	r0, #0
	beq	.L_8bb0a
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8bb02:
	ldr	r0, [r2, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8bb02
.L_8bb0a:
	add	r3, r1, #0
	cmp	r3, #3
	ble	.L_8bae6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8bb18:
	.4byte	gUnk_30048A0
.L_8bb1c:
	.4byte	sUnk_8702A28
.L_8bb20:
	.4byte	0x06017200
.L_8bb24:
	.4byte	0x040000d4
.L_8bb28:
	.4byte	0x80000080


thumb_func_start func_808BB2C
func_808BB2C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_8bc58
	ldrb	r0, [r0, #4]
	bl	func_808BC84
	add	r3, r0, #0
	cmp	r3, #0
	bge	.L_8bb42
	add	r0, r3, #3
.L_8bb42:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r3, r0
	lsl	r2, r2, #12
	lsl	r1, r0, #8
	ldr	r0, .L_8bc5c
	add	r1, r1, r0
	ldr	r0, .L_8bc60
	mov	r8, r0
	ldr	r4, .L_8bc64
	ldr	r0, .L_8bc68
	mov	ip, r0
	ldr	r6, .L_8bc6c
	add	r1, r2, r1
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #24
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	mov	r5, #3
.L_8bb6a:
	str	r1, [r4, #0]
	str	r6, [r4, #4]
	mov	r0, ip
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, [r4, #8]
	and	r0, r7
	cmp	r0, #0
	beq	.L_8bb88
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8bb80:
	ldr	r0, [r4, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8bb80
.L_8bb88:
	add	r6, r6, r2
	add	r1, r1, r2
	sub	r5, #1
	cmp	r5, #0
	bge	.L_8bb6a
	mov	r1, r8
	ldrb	r0, [r1, #4]
	bl	func_808BC84
	add	r3, r0, #0
	cmp	r3, #0
	bge	.L_8bba2
	add	r0, r3, #3
.L_8bba2:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r3, r0
	lsl	r2, r2, #12
	lsl	r1, r0, #8
	ldr	r0, .L_8bc70
	add	r1, r1, r0
	ldr	r0, .L_8bc74
	mov	r8, r0
	ldr	r4, .L_8bc64
	ldr	r0, .L_8bc68
	mov	ip, r0
	ldr	r6, .L_8bc78
	add	r1, r2, r1
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #24
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	mov	r5, #3
.L_8bbca:
	str	r1, [r4, #0]
	str	r6, [r4, #4]
	mov	r0, ip
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, [r4, #8]
	and	r0, r7
	cmp	r0, #0
	beq	.L_8bbe8
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8bbe0:
	ldr	r0, [r4, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8bbe0
.L_8bbe8:
	add	r6, r6, r2
	add	r1, r1, r2
	sub	r5, #1
	cmp	r5, #0
	bge	.L_8bbca
	mov	r1, r8
	ldrb	r0, [r1, #4]
	bl	func_808BC84
	add	r3, r0, #0
	cmp	r3, #0
	bge	.L_8bc02
	add	r0, r3, #3
.L_8bc02:
	asr	r0, r0, #2
	add	r2, r0, #0
	lsl	r0, r2, #2
	sub	r0, r3, r0
	lsl	r2, r2, #12
	lsl	r0, r0, #8
	ldr	r1, .L_8bc7c
	add	r0, r0, r1
	add	r4, r2, r0
	ldr	r0, .L_8bc80
	mov	ip, r0
	mov	r5, #0
	ldr	r2, .L_8bc64
	ldr	r7, .L_8bc68
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #24
.L_8bc22:
	lsl	r1, r5, #10
	add	r0, r4, r1
	str	r0, [r2, #0]
	add	r1, ip
	str	r1, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	and	r0, r6
	add	r1, r5, #1
	cmp	r0, #0
	beq	.L_8bc46
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8bc3e:
	ldr	r0, [r2, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8bc3e
.L_8bc46:
	add	r5, r1, #0
	cmp	r5, #3
	ble	.L_8bc22
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8bc58:
	.4byte	gUnk_3004890
.L_8bc5c:
	.4byte	sUnk_86FEA28
.L_8bc60:
	.4byte	gUnk_3004898
.L_8bc64:
	.4byte	0x040000d4
.L_8bc68:
	.4byte	0x80000080
.L_8bc6c:
	.4byte	0x06017000
.L_8bc70:
	.4byte	sUnk_8706A28
.L_8bc74:
	.4byte	gUnk_30048A0
.L_8bc78:
	.4byte	0x06017100
.L_8bc7c:
	.4byte	sUnk_8702A28
.L_8bc80:
	.4byte	0x06017200


thumb_func_start func_808BC84
func_808BC84:
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	r0, #0
	cmp	r1, #0
	beq	.L_8bc98
	ldr	r0, .L_8bc9c
	sub	r1, #1
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	add	r0, #1
.L_8bc98:
	bx	lr
	.align	2, 0
.L_8bc9c:
	.4byte	gUnk_30048F0


thumb_func_start func_808BCA0
func_808BCA0:
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r1, .L_8bce8
	add	r3, r1, #0
	ldrh	r0, [r1, #0]
	cmp	r4, r0
	bge	.L_8bcbc
	ldr	r2, .L_8bcec
.L_8bcb0:
	add	r0, r4, r2
	strb	r4, [r0, #0]
	add	r4, #1
	ldrh	r0, [r1, #0]
	cmp	r4, r0
	blt	.L_8bcb0
.L_8bcbc:
	ldrh	r0, [r3, #0]
	sub	r4, r0, #1
	cmp	r4, #0
	ble	.L_8bce2
	ldr	r5, .L_8bcec
.L_8bcc6:
	bl	MinigameRandom
	add	r1, r4, #0
	bl	__modsi3
	add	r2, r4, r5
	ldrb	r3, [r2, #0]
	add	r0, r0, r5
	ldrb	r1, [r0, #0]
	strb	r1, [r2, #0]
	strb	r3, [r0, #0]
	sub	r4, #1
	cmp	r4, #0
	bgt	.L_8bcc6
.L_8bce2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_8bce8:
	.4byte	gUnk_30048AA
.L_8bcec:
	.4byte	gUnk_3004870


thumb_func_start func_808BCF0
func_808BCF0:
	push	{r4, r5, lr}
	ldr	r1, .L_8bd50
	ldr	r0, .L_8bd54
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_8bd58
	mov	r4, #13
	add	r0, #13
.L_8bd00:
	strb	r4, [r0, #0]
	sub	r0, #1
	sub	r4, #1
	cmp	r4, #0
	bge	.L_8bd00
	mov	r4, #13
	ldr	r5, .L_8bd58
.L_8bd0e:
	bl	MinigameRandom
	add	r1, r4, #0
	bl	__modsi3
	add	r2, r4, r5
	ldrb	r3, [r2, #0]
	add	r0, r0, r5
	ldrb	r1, [r0, #0]
	strb	r1, [r2, #0]
	strb	r3, [r0, #0]
	sub	r4, #1
	cmp	r4, #0
	bgt	.L_8bd0e
	ldr	r0, .L_8bd50
	ldr	r3, .L_8bd54
	ldr	r1, .L_8bd58
	add	r2, r0, #4
	mov	r4, #13
.L_8bd34:
	ldrb	r0, [r1, #0]
	add	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	stmia	r2!, {r0}
	add	r1, #1
	sub	r4, #1
	cmp	r4, #0
	bge	.L_8bd34
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8bd50:
	.4byte	gUnk_30048B0
.L_8bd54:
	.4byte	sUnk_86F4A98
.L_8bd58:
	.4byte	gUnk_30048F0


thumb_func_start func_808BD5C
func_808BD5C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, .L_8bdd8
	ldr	r0, .L_8bddc
	add	r0, #24
	add	r1, r2, #0
	add	r1, #8
.L_8bd6e:
	str	r0, [r1, #0]
	sub	r0, #12
	sub	r1, #4
	cmp	r1, r2
	bge	.L_8bd6e
	mov	r2, #0
	ldr	r0, .L_8bdd8
	mov	r8, r0
	mov	r9, r8
.L_8bd80:
	lsl	r0, r2, #2
	mov	r3, r8
	add	r1, r0, r3
	ldr	r1, [r1, #0]
	ldrh	r6, [r1, #4]
	add	r5, r2, #0
	add	r2, r5, #1
	mov	ip, r0
	add	r7, r2, #0
	cmp	r7, #2
	bgt	.L_8bdb6
	lsl	r0, r7, #2
	mov	r1, r9
	add	r4, r0, r1
.L_8bd9c:
	ldr	r3, [r4, #0]
	mov	r0, #4
	ldrsh	r1, [r3, r0]
	lsl	r0, r6, #16
	asr	r0, r0, #16
	cmp	r1, r0
	ble	.L_8bdae
	ldrh	r6, [r3, #4]
	add	r5, r2, #0
.L_8bdae:
	add	r4, #4
	add	r2, #1
	cmp	r2, #2
	ble	.L_8bd9c
.L_8bdb6:
	mov	r2, ip
	add	r2, r8
	ldr	r3, [r2, #0]
	lsl	r1, r5, #2
	add	r1, r8
	ldr	r0, [r1, #0]
	str	r0, [r2, #0]
	str	r3, [r1, #0]
	add	r2, r7, #0
	cmp	r2, #1
	ble	.L_8bd80
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8bdd8:
	.4byte	gUnk_3004858
.L_8bddc:
	.4byte	gUnk_3004830


thumb_func_start func_808BDE0
func_808BDE0:
	push	{r4, lr}
	ldr	r0, .L_8bdf8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8be04
	ldr	r0, .L_8bdfc
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8be00
	mov	r2, #96	@ 0x60
	bl	DrawMinigameNumber
	b	.L_8be10
.L_8bdf8:
	.4byte	gMinigameMedalHighlight
.L_8bdfc:
	.4byte	gMedalCount
.L_8be00:
	.4byte	sUnk_86F61A8
.L_8be04:
	ldr	r0, .L_8be38
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8be3c
	mov	r2, #96	@ 0x60
	bl	DrawMinigameNumber
.L_8be10:
	ldr	r0, .L_8be40
	ldrh	r0, [r0, #0]
	ldr	r4, .L_8be44
	add	r1, r4, #0
	mov	r2, #224	@ 0xe0
	bl	DrawMinigameNumber
	ldr	r0, .L_8be48
	ldrh	r0, [r0, #4]
	mov	r1, #198	@ 0xc6
	lsl	r1, r1, #4
	add	r4, r4, r1
	mov	r2, #152	@ 0x98
	lsl	r2, r2, #4
	add	r1, r4, #0
	bl	DrawMinigameHighScore
	pop	{r4}
	pop	{r0}
	bx	r0
.L_8be38:
	.4byte	gMedalCount
.L_8be3c:
	.4byte	sUnk_86F5848
.L_8be40:
	.4byte	gMinigameScore
.L_8be44:
	.4byte	sUnk_86F5148
.L_8be48:
	.4byte	gMinigameHighScores


thumb_func_start func_808BE4C
func_808BE4C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #32
	mov	r7, #0
	ldr	r0, .L_8c08c
	ldrb	r0, [r0, #0]
	mov	r9, r0
	lsl	r0, r0, #3
	ldr	r2, .L_8c090
	add	r6, r0, r2
	ldr	r0, .L_8c094
	ldrb	r1, [r0, #12]
	mov	r8, r0
	cmp	r1, #0
	bne	.L_8be72
	b	.L_8bfa2
.L_8be72:
	cmp	r1, #1
	bne	.L_8be7a
	ldr	r0, .L_8c098
	ldr	r3, [r0, #0]
.L_8be7a:
	cmp	r1, #2
	bne	.L_8be82
	ldr	r0, .L_8c09c
	ldr	r3, [r0, #0]
.L_8be82:
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	mov	r4, sp
	add	r4, #6
	str	r4, [sp, #16]
	cmp	r7, r9
	bge	.L_8bf08
	mov	r5, r8
	add	r4, r2, #0
	ldr	r0, .L_8c0a0
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	ip, r1
	mov	r7, r9
.L_8beae:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #10]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	sub	r1, #32
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8c0a4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8beae
	mov	r7, r9
.L_8bf08:
	ldr	r0, .L_8c0a8
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r5, [r0, r3]
	mov	r4, r8
	mov	r1, #4
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_8c0a8
	mov	r3, #0
	ldrsh	r4, [r2, r3]
	mov	r1, r8
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	ldr	r0, .L_8c0a8
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, r8
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	mov	r4, r8
	mov	r1, #4
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	ldr	r2, .L_8c090
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r4, [sp, #12]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_8bfa2:
	ldr	r1, .L_8c0ac
	ldrb	r0, [r1, #0]
	sub	r0, #4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_8c050
	ldr	r2, .L_8c0b0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_8c0b4
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8bfe2
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8bfe2
	strh	r0, [r2, #2]
.L_8bfe2:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c050
	ldr	r1, .L_8c090
	ldr	r5, .L_8c0a0
	mov	r8, r5
	ldr	r0, .L_8c0a4
	mov	sl, r0
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r1, r9
	sub	r7, r1, r7
.L_8c00a:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #140	@ 0x8c
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c00a
	mov	r7, r9
.L_8c050:
	ldr	r3, .L_8c0ac
	ldrb	r0, [r3, #0]
	cmp	r0, #6
	bhi	.L_8c05a
	b	.L_8c372
.L_8c05a:
	mov	r4, #0
.L_8c05c:
	ldr	r0, .L_8c0b8
	lsl	r1, r4, #2
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	r5, #0
	ldrsh	r2, [r0, r5]
	mov	r0, #250	@ 0xfa
	lsl	r0, r0, #2
	str	r1, [sp, #24]
	add	r1, r4, #1
	str	r1, [sp, #20]
	cmp	r2, r0
	bne	.L_8c078
	b	.L_8c36a
.L_8c078:
	ldr	r0, .L_8c0ac
	ldrb	r0, [r0, #0]
	sub	r0, #7
	cmp	r0, #5
	bhi	.L_8c0dc
	lsl	r0, r0, #2
	ldr	r1, .L_8c0bc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8c08c:
	.4byte	gOamSlotsUsed
.L_8c090:
	.4byte	gOamBuffer
.L_8c094:
	.4byte	gMinigameCamera
.L_8c098:
	.4byte	sUnk_86F4DE0
.L_8c09c:
	.4byte	sUnk_86F4DD0
.L_8c0a0:
	.4byte	0x000001ff
.L_8c0a4:
	.4byte	0xfffffe00
.L_8c0a8:
	.4byte	sSinCosTable
.L_8c0ac:
	.4byte	gMinigameState
.L_8c0b0:
	.4byte	gUnk_3004904
.L_8c0b4:
	.4byte	sUnk_86F4E00
.L_8c0b8:
	.4byte	gUnk_3004858
.L_8c0bc:
	.4byte	.L_8c0c0
.L_8c0c0:
	.4byte	.L_8c0d8
	.4byte	.L_8c0dc
	.4byte	.L_8c0d8
	.4byte	.L_8c0dc
	.4byte	.L_8c0d8
	.4byte	.L_8c0dc
.L_8c0d8:
	bl	func_808BD5C
.L_8c0dc:
	ldr	r1, .L_8c1a8
	ldr	r2, .L_8c1ac
	ldr	r3, [sp, #24]
	add	r5, r3, r2
	ldr	r0, [r5, #0]
	ldrb	r0, [r0, #6]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	add	r0, #4
	str	r0, [sp, #16]
	add	r4, #1
	str	r4, [sp, #20]
	cmp	r7, r9
	bge	.L_8c1dc
	str	r5, [sp, #28]
	mov	sl, r4
	mov	r1, #15
	mov	r8, r1
	ldr	r2, .L_8c1b0
	mov	ip, r2
.L_8c118:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	lsl	r0, r7, #3
	ldr	r4, .L_8c1b4
	add	r5, r0, r4
	ldr	r1, [sp, #28]
	ldr	r0, [r1, #0]
	ldrb	r0, [r0, #2]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldr	r4, [sp, #28]
	ldr	r0, [r4, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	add	r1, r2, r1
	sub	r1, #32
	ldr	r0, .L_8c1b8
	and	r1, r0
	ldrh	r2, [r5, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	mov	r0, #7
	mov	r1, sl
	and	r1, r0
	lsl	r1, r1, #1
	ldrb	r2, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r2
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	add	r6, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	and	r2, r0
	strb	r2, [r5, #5]
	ldr	r1, .L_8c1bc
	ldrb	r0, [r1, #0]
	cmp	r0, #10
	bls	.L_8c1c0
	lsr	r0, r2, #4
	add	r0, #1
	lsl	r0, r0, #4
	add	r1, r2, #0
	mov	r2, r8
	and	r1, r2
	orr	r1, r0
	lsl	r0, r1, #24
	lsr	r0, r0, #28
	add	r0, #1
	lsl	r0, r0, #4
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #5]
	b	.L_8c1d4
.L_8c1a8:
	.4byte	gUnk_30048B0
.L_8c1ac:
	.4byte	gUnk_3004858
.L_8c1b0:
	.4byte	0xfffffe00
.L_8c1b4:
	.4byte	gOamBuffer
.L_8c1b8:
	.4byte	0x000001ff
.L_8c1bc:
	.4byte	gMinigameState
.L_8c1c0:
	cmp	r0, #8
	bls	.L_8c1d4
	lsr	r1, r2, #4
	add	r1, #1
	lsl	r1, r1, #4
	add	r0, r2, #0
	mov	r4, r8
	and	r0, r4
	orr	r0, r1
	strb	r0, [r5, #5]
.L_8c1d4:
	add	r6, #2
	add	r7, #1
	cmp	r7, r9
	blt	.L_8c118
.L_8c1dc:
	ldr	r0, .L_8c2d0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	ldr	r2, [sp, #24]
	ldr	r3, .L_8c2d4
	add	r4, r2, r3
	ldr	r0, [r4, #0]
	mov	r1, #4
	ldrsh	r0, [r0, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_8c2d0
	mov	r3, #0
	ldrsh	r2, [r2, r3]
	mov	r8, r2
	ldr	r0, [r4, #0]
	mov	r1, #4
	ldrsh	r0, [r0, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	ldr	r2, [sp, #8]
	strh	r0, [r2, #0]
	ldr	r3, .L_8c2d0
	ldrh	r0, [r3, #0]
	neg	r0, r0
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	sl, r0
	ldr	r0, [r4, #0]
	mov	r1, #4
	ldrsh	r0, [r0, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, sl
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldr	r0, [r4, #0]
	mov	r3, #4
	ldrsh	r0, [r0, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r0, [r4, #0]
	mov	r2, #4
	ldrsh	r1, [r0, r2]
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #2
	cmp	r1, r4
	ble	.L_8c2d8
	add	r0, r4, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	add	r0, r4, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	add	r0, r4, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, sl
	bl	FixedMul
	ldr	r1, [sp, #12]
	strh	r0, [r1, #0]
	add	r0, r4, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	b	.L_8c334
	.align	2, 0
.L_8c2d0:
	.4byte	sSinCosTable
.L_8c2d4:
	.4byte	gUnk_3004858
.L_8c2d8:
	cmp	r1, #15
	bgt	.L_8c334
	mov	r0, #16
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r0, #16
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	mov	r0, #16
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, sl
	bl	FixedMul
	ldr	r4, [sp, #12]
	strh	r0, [r4, #0]
	mov	r0, #16
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r5, [sp, #16]
	strh	r0, [r5, #0]
.L_8c334:
	ldr	r3, .L_8c6d0
	ldr	r0, [sp, #20]
	lsl	r1, r0, #5
	add	r1, r1, r3
	mov	r0, sp
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #6]
	ldr	r1, [sp, #20]
	lsl	r2, r1, #2
	add	r0, r2, #1
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [sp, #8]
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #2
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r5, [sp, #12]
	ldrh	r1, [r5, #0]
	strh	r1, [r0, #6]
	add	r2, #3
	lsl	r2, r2, #3
	add	r2, r2, r3
	ldr	r1, [sp, #16]
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #6]
.L_8c36a:
	ldr	r4, [sp, #20]
	cmp	r4, #2
	bgt	.L_8c372
	b	.L_8c05c
.L_8c372:
	ldr	r2, .L_8c6d4
	ldrb	r0, [r2, #0]
	sub	r0, #7
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bls	.L_8c3fa
	ldr	r3, .L_8c6d8
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c3fa
	ldr	r1, .L_8c6d0
	ldr	r4, .L_8c6dc
	mov	r8, r4
	mov	r5, #13
	neg	r5, r5
	mov	sl, r5
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_8c6e0
	mov	ip, r0
	mov	r1, r9
	sub	r7, r1, r7
.L_8c3a4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r5, r8
	ldrb	r0, [r5, #2]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrb	r1, [r4, #1]
	mov	r0, sl
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8c6e4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r5, #4
	orr	r0, r5
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c3a4
	mov	r7, r9
.L_8c3fa:
	ldr	r1, .L_8c6d4
	ldrb	r0, [r1, #0]
	sub	r0, #7
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_8c484
	ldr	r3, .L_8c6e8
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c484
	ldr	r1, .L_8c6d0
	ldr	r2, .L_8c6ec
	mov	r8, r2
	mov	r4, #13
	neg	r4, r4
	mov	sl, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r5, .L_8c6e0
	mov	ip, r5
	mov	r0, r9
	sub	r7, r0, r7
.L_8c42c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrb	r1, [r4, #1]
	mov	r0, sl
	and	r0, r1
	mov	r2, #4
	orr	r0, r2
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r5, r8
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8c6e4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r5, #4
	orr	r0, r5
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c42c
	mov	r7, r9
.L_8c484:
	ldr	r1, .L_8c6d4
	ldrb	r0, [r1, #0]
	sub	r0, #7
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	bls	.L_8c50e
	ldr	r3, .L_8c6f0
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c50e
	ldr	r1, .L_8c6d0
	ldr	r2, .L_8c6f4
	mov	r8, r2
	mov	r4, #13
	neg	r4, r4
	mov	sl, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r5, .L_8c6e0
	mov	ip, r5
	mov	r0, r9
	sub	r7, r0, r7
.L_8c4b6:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrb	r1, [r4, #1]
	mov	r0, sl
	and	r0, r1
	mov	r2, #4
	orr	r0, r2
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r5, r8
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8c6e4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r5, #4
	orr	r0, r5
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c4b6
	mov	r7, r9
.L_8c50e:
	ldr	r1, .L_8c6f8
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8c554
	ldr	r2, .L_8c6fc
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldr	r3, .L_8c700
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_8c554
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8c554
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	mov	r0, #0
	ldr	r2, .L_8c6f8
	strb	r0, [r2, #0]
	bl	func_808BDE0
.L_8c554:
	ldr	r1, .L_8c700
	ldr	r0, .L_8c6fc
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	ldr	r5, .L_8c704
	cmp	r7, r9
	bge	.L_8c5c6
	ldr	r1, .L_8c6d0
	ldr	r4, .L_8c6e0
	mov	sl, r4
	ldr	r0, .L_8c6e4
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r7, r0, r7
.L_8c584:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #21
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c584
	mov	r7, r9
.L_8c5c6:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldrh	r1, [r5, #2]
	lsl	r1, r1, #3
	ldr	r3, .L_8c708
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_8c5f6
	mov	r0, #1
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8c5f6
	strh	r0, [r5, #2]
.L_8c5f6:
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	ldr	r4, .L_8c708
	add	r0, r0, r4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c668
	ldr	r1, .L_8c6d0
	ldr	r0, .L_8c6e0
	mov	sl, r0
	ldr	r2, .L_8c6e4
	mov	ip, r2
	mov	r4, #13
	neg	r4, r4
	mov	r8, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r7, r0, r7
.L_8c622:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #16
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c622
	mov	r7, r9
.L_8c668:
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	ldr	r3, .L_8c708
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	cmp	r7, r9
	bge	.L_8c714
	ldr	r1, .L_8c6d0
	ldr	r4, .L_8c6e0
	mov	r8, r4
	ldr	r5, .L_8c6e4
	mov	sl, r5
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r0, r9
	sub	r7, r0, r7
.L_8c692:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #224	@ 0xe0
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	b	.L_8c70c
.L_8c6d0:
	.4byte	gOamBuffer
.L_8c6d4:
	.4byte	gMinigameState
.L_8c6d8:
	.4byte	sUnk_86F4BC0
.L_8c6dc:
	.4byte	gUnk_3004898
.L_8c6e0:
	.4byte	0x000001ff
.L_8c6e4:
	.4byte	0xfffffe00
.L_8c6e8:
	.4byte	sUnk_86F4BB8
.L_8c6ec:
	.4byte	gUnk_3004890
.L_8c6f0:
	.4byte	sUnk_86F4BC8
.L_8c6f4:
	.4byte	gUnk_30048A0
.L_8c6f8:
	.4byte	gMinigameMedalHighlight
.L_8c6fc:
	.4byte	gMinigameUiAnimation
.L_8c700:
	.4byte	sUnk_86F4C48
.L_8c704:
	.4byte	gUnk_3004900
.L_8c708:
	.4byte	sUnk_86F4C30
.L_8c70c:
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8c692
.L_8c714:
	mov	r4, r9
	ldr	r3, .L_8c72c
	strb	r4, [r3, #0]
	add	sp, #32
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8c72c:
	.4byte	gOamSlotsUsed


thumb_func_start func_808C730
func_808C730:
	push	{r4, r5, lr}
	ldr	r0, .L_8c748
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #6
	bls	.L_8c73e
	b	.L_8c90c
.L_8c73e:
	lsl	r0, r1, #2
	ldr	r1, .L_8c74c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8c748:
	.4byte	gHomerunSequenceState
.L_8c74c:
	.4byte	.L_8c750
.L_8c750:
	.4byte	.L_8c76c
	.4byte	.L_8c798
	.4byte	.L_8c7ec
	.4byte	.L_8c80c
	.4byte	.L_8c86c
	.4byte	.L_8c888
	.4byte	.L_8c8d0
.L_8c76c:
	ldr	r4, .L_8c790
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	bl	func_808CAA8
	ldrh	r0, [r4, #0]
	cmp	r0, #60	@ 0x3c
	bhi	.L_8c780
	b	.L_8c90c
.L_8c780:
	ldr	r0, .L_8c794
	ldrb	r1, [r0, #0]
	add	r1, #1
	strb	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_8c90c
	.align	2, 0
.L_8c790:
	.4byte	gHomerunSequenceTimer
.L_8c794:
	.4byte	gHomerunSequenceState
.L_8c798:
	ldr	r2, .L_8c7b0
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8c7b4
	cmp	r0, r1
	bls	.L_8c7b8
	strh	r1, [r2, #0]
	b	.L_8c7c0
	.align	2, 0
.L_8c7b0:
	.4byte	gMinigameScore
.L_8c7b4:
	.4byte	0x000003e7
.L_8c7b8:
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8c7c0:
	ldr	r0, .L_8c7e0
	ldr	r3, .L_8c7e4
	ldrh	r2, [r0, #0]
	ldrh	r0, [r3, #4]
	cmp	r2, r0
	bls	.L_8c7d4
	ldr	r1, .L_8c7e8
	mov	r0, #1
	strb	r0, [r1, #0]
	strh	r2, [r3, #4]
.L_8c7d4:
	bl	func_808BDE0
	bl	func_808CAA8
	b	.L_8c8c2
	.align	2, 0
.L_8c7e0:
	.4byte	gMinigameScore
.L_8c7e4:
	.4byte	gMinigameHighScores
.L_8c7e8:
	.4byte	gMinigameNewHighScore
.L_8c7ec:
	ldr	r4, .L_8c808
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	bl	func_808CAA8
	ldrh	r0, [r4, #0]
	cmp	r0, #20
	bhi	.L_8c800
	b	.L_8c90c
.L_8c800:
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_8c8c2
	.align	2, 0
.L_8c808:
	.4byte	gHomerunSequenceTimer
.L_8c80c:
	ldr	r0, .L_8c834
	ldrh	r0, [r0, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_8c84c
	ldr	r2, .L_8c838
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8c83c
	cmp	r0, r1
	bls	.L_8c840
	strh	r1, [r2, #0]
	b	.L_8c84c
	.align	2, 0
.L_8c834:
	.4byte	gMinigameScore
.L_8c838:
	.4byte	gMedalCount
.L_8c83c:
	.4byte	0x000003e7
.L_8c840:
	ldr	r0, .L_8c860
	bl	m4aSongNumStart
	ldr	r1, .L_8c864
	mov	r0, #1
	strb	r0, [r1, #0]
.L_8c84c:
	bl	func_808BDE0
	ldr	r1, .L_8c868
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	bl	func_808CAA8
	b	.L_8c90c
	.align	2, 0
.L_8c860:
	.4byte	0x00000223
.L_8c864:
	.4byte	gMinigameMedalHighlight
.L_8c868:
	.4byte	gHomerunSequenceState
.L_8c86c:
	ldr	r4, .L_8c884
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	bl	func_808CAA8
	ldrh	r0, [r4, #0]
	cmp	r0, #20
	bls	.L_8c90c
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_8c8c2
.L_8c884:
	.4byte	gHomerunSequenceTimer
.L_8c888:
	ldr	r5, .L_8c8b0
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	mov	r4, #1
	and	r4, r0
	cmp	r4, #0
	bne	.L_8c90c
	ldr	r2, .L_8c8b4
	ldrb	r3, [r2, #0]
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	cmp	r0, #0
	ble	.L_8c8bc
	ldr	r0, .L_8c8b8
	ldrb	r1, [r0, #0]
	add	r1, #1
	strb	r1, [r0, #0]
	sub	r0, r3, #1
	b	.L_8c90a
.L_8c8b0:
	.4byte	gHomerunSequenceTimer
.L_8c8b4:
	.4byte	gUnk_30047D9
.L_8c8b8:
	.4byte	gUnk_30047D8
.L_8c8bc:
	bl	func_808B4EC
	strh	r4, [r5, #0]
.L_8c8c2:
	ldr	r1, .L_8c8cc
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_8c90c
.L_8c8cc:
	.4byte	gHomerunSequenceState
.L_8c8d0:
	ldr	r3, .L_8c8f8
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	bne	.L_8c90c
	ldr	r2, .L_8c8fc
	ldrb	r4, [r2, #0]
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	cmp	r0, #15
	ble	.L_8c900
	mov	r0, #0
	strh	r1, [r3, #0]
	strb	r0, [r5, #0]
	mov	r0, #1
	b	.L_8c90e
	.align	2, 0
.L_8c8f8:
	.4byte	gHomerunSequenceTimer
.L_8c8fc:
	.4byte	gUnk_30047D9
.L_8c900:
	ldr	r0, .L_8c914
	ldrb	r1, [r0, #0]
	sub	r1, #1
	strb	r1, [r0, #0]
	add	r0, r4, #1
.L_8c90a:
	strb	r0, [r2, #0]
.L_8c90c:
	mov	r0, #0
.L_8c90e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_8c914:
	.4byte	gUnk_30047D8


thumb_func_start func_808C918
func_808C918:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_8c944
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldrh	r1, [r0, #0]
	mov	r0, #15
	and	r1, r0
	cmp	r1, #0
	bne	.L_8c958
	ldr	r1, .L_8c948
	ldr	r0, .L_8c94c
	str	r0, [r1, #0]
	ldr	r0, .L_8c950
	str	r0, [r1, #4]
	ldr	r0, .L_8c954
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	b	.L_8c9ec
.L_8c944:
	.4byte	gUnk_30048A8
.L_8c948:
	.4byte	0x040000d4
.L_8c94c:
	.4byte	sUnk_870AA28
.L_8c950:
	.4byte	0x06017000
.L_8c954:
	.4byte	0x80000800
.L_8c958:
	cmp	r1, #8
	bne	.L_8c9ec
	mov	r3, #0
	ldr	r0, .L_8c9f8
	mov	r9, r0
	ldr	r4, .L_8c9fc
	mov	r8, r4
	ldr	r0, .L_8ca00
	mov	ip, r0
	ldr	r2, .L_8ca04
	ldr	r7, .L_8ca08
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #24
.L_8c972:
	lsl	r1, r3, #10
	mov	r4, r9
	add	r0, r1, r4
	str	r0, [r2, #0]
	ldr	r4, .L_8ca0c
	add	r0, r1, r4
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	and	r0, r6
	add	r5, r3, #1
	cmp	r0, #0
	beq	.L_8c99a
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8c992:
	ldr	r0, [r2, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8c992
.L_8c99a:
	mov	r3, r8
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r4, .L_8ca10
	add	r0, r1, r4
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	add	r4, r2, #0
	ldr	r0, [r2, #8]
	and	r0, r6
	cmp	r0, #0
	beq	.L_8c9c0
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8c9b8:
	ldr	r0, [r4, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8c9b8
.L_8c9c0:
	mov	r3, ip
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r4, .L_8ca14
	add	r0, r1, r4
	str	r0, [r2, #4]
	str	r7, [r2, #8]
	ldr	r0, [r2, #8]
	add	r1, r2, #0
	ldr	r0, [r1, #8]
	and	r0, r6
	cmp	r0, #0
	beq	.L_8c9e6
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
.L_8c9de:
	ldr	r0, [r1, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_8c9de
.L_8c9e6:
	add	r3, r5, #0
	cmp	r3, #3
	ble	.L_8c972
.L_8c9ec:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8c9f8:
	.4byte	sUnk_86FEA28
.L_8c9fc:
	.4byte	sUnk_8706A28
.L_8ca00:
	.4byte	sUnk_8702A28
.L_8ca04:
	.4byte	0x040000d4
.L_8ca08:
	.4byte	0x80000080
.L_8ca0c:
	.4byte	0x06017000
.L_8ca10:
	.4byte	0x06017100
.L_8ca14:
	.4byte	0x06017200


thumb_func_start func_808CA18
func_808CA18:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_8ca2c
	ldrb	r1, [r6, #0]
	cmp	r1, #1
	beq	.L_8ca60
	cmp	r1, #1
	bgt	.L_8ca30
	cmp	r1, #0
	beq	.L_8ca36
	b	.L_8ca9e
.L_8ca2c:
	.4byte	gHomerunSequenceState
.L_8ca30:
	cmp	r1, #2
	beq	.L_8ca8c
	b	.L_8ca9e
.L_8ca36:
	ldr	r2, .L_8ca58
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #120	@ 0x78
	bls	.L_8ca9e
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	strh	r1, [r2, #0]
	ldr	r1, .L_8ca5c
	mov	r0, #2
	strb	r0, [r1, #12]
	b	.L_8ca9e
	.align	2, 0
.L_8ca58:
	.4byte	gHomerunSequenceTimer
.L_8ca5c:
	.4byte	gMinigameCamera
.L_8ca60:
	ldr	r4, .L_8ca84
	ldrh	r0, [r4, #4]
	add	r0, #20
	strh	r0, [r4, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	cmp	r0, r5
	bls	.L_8ca9e
	ldr	r0, .L_8ca88
	bl	m4aSongNumStart
	strh	r5, [r4, #4]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	b	.L_8ca9e
.L_8ca84:
	.4byte	gMinigameCamera
.L_8ca88:
	.4byte	0x00000236
.L_8ca8c:
	mov	r0, #60	@ 0x3c
	bl	MinigameWaitForFrames
	cmp	r0, #0
	beq	.L_8ca9e
	mov	r0, #0
	strb	r0, [r6, #0]
	mov	r0, #1
	b	.L_8caa0
.L_8ca9e:
	mov	r0, #0
.L_8caa0:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_808CAA8
func_808CAA8:
	ldr	r0, .L_8cad4
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldrh	r1, [r0, #0]
	mov	r0, #15
	and	r1, r0
	cmp	r1, #3
	bhi	.L_8cae4
	ldr	r1, .L_8cad8
	ldrh	r0, [r1, #2]
	add	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_8cadc
	ldrh	r0, [r1, #2]
	sub	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_8cae0
	ldrh	r0, [r1, #2]
	add	r0, #1
	b	.L_8cb06
	.align	2, 0
.L_8cad4:
	.4byte	gUnk_30048A8
.L_8cad8:
	.4byte	gUnk_3004890
.L_8cadc:
	.4byte	gUnk_3004898
.L_8cae0:
	.4byte	gUnk_30048A0
.L_8cae4:
	add	r0, r1, #0
	sub	r0, #8
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bhi	.L_8cb08
	ldr	r1, .L_8cb0c
	ldrh	r0, [r1, #2]
	sub	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_8cb10
	ldrh	r0, [r1, #2]
	add	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_8cb14
	ldrh	r0, [r1, #2]
	sub	r0, #1
.L_8cb06:
	strh	r0, [r1, #2]
.L_8cb08:
	bx	lr
	.align	2, 0
.L_8cb0c:
	.4byte	gUnk_3004890
.L_8cb10:
	.4byte	gUnk_3004898
.L_8cb14:
	.4byte	gUnk_30048A0
