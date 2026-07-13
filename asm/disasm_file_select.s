.include "macros.s.inc"


thumb_func_start func_80909B0
func_80909B0:
	push	{lr}
	ldr	r0, .L_909bc
	bl	InterruptCallbackSetVBlank
	pop	{r0}
	bx	r0
.L_909bc:
	.4byte	func_80909C0


thumb_func_start func_80909C0
func_80909C0:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_90a0c
	ldr	r0, .L_90a10
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_90a14
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #188	@ 0xbc
	ldr	r0, .L_90a18
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_90a1c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	sub	r1, #6
	ldr	r0, .L_90a20
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_90a24
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	sub	r1, #6
	ldr	r0, .L_90a28
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_90a2c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_90a0c:
	.4byte	0x040000d4
.L_90a10:
	.4byte	gOamBuffer
.L_90a14:
	.4byte	0x84000100
.L_90a18:
	.4byte	gUnk_300187E
.L_90a1c:
	.4byte	gUnk_3001880
.L_90a20:
	.4byte	gBg1XPosition
.L_90a24:
	.4byte	gBg1YPosition
.L_90a28:
	.4byte	gUnk_3001876
.L_90a2c:
	.4byte	gUnk_3001878


thumb_func_start func_8090A30
func_8090A30:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8090A40
func_8090A40:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_90b80
	mov	r4, #0
	strh	r4, [r3, #0]
	ldr	r2, .L_90b84
	ldrh	r1, [r2, #0]
	ldr	r0, .L_90b88
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_90b8c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_90b90
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r0, .L_90b94
	bl	InterruptCallbackSetVBlank
	ldr	r1, .L_90b98
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #16
	strh	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r4, [r0, #0]
	bl	InitializeVideoMemory
	ldr	r0, .L_90b9c
	strb	r4, [r0, #0]
	bl	ResetFreeOam
	ldr	r1, .L_90ba0
.L_90a86:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_90a86
	ldr	r1, .L_90ba4
	ldr	r0, .L_90ba8
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_90bac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #206	@ 0xce
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, .L_90bb0
	ldr	r3, .L_90bb4
	ldr	r4, .L_90bb8
	cmp	r0, #139	@ 0x8b
	bhi	.L_90ac4
.L_90ab8:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_90ab8
.L_90ac4:
	ldr	r0, .L_90ba4
	str	r2, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r2, .L_90bbc
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	str	r3, [r0, #0]
	ldr	r1, .L_90bc0
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r1, .L_90bc4
	add	r0, r4, #0
	bl	LZ77UnCompVram
	ldr	r0, .L_90bc8
	ldr	r1, .L_90bcc
	bl	LZ77UnCompVram
	ldr	r1, .L_90bd0
	mov	r0, #0
	mov	r2, #31
.L_90af4:
	strb	r0, [r1, #0]
	add	r1, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_90af4
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	func_8073BE0
	ldr	r1, .L_90bd4
	ldr	r5, .L_90bd8
	mov	r0, #0
	add	r2, r5, #0
	bl	DecompressRoomBackground
	add	r2, r0, #0
	ldr	r4, .L_90ba4
	str	r5, [r4, #0]
	ldr	r0, .L_90bdc
	str	r0, [r4, #4]
	lsr	r0, r2, #31
	add	r0, r2, r0
	asr	r0, r0, #1
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #24
	orr	r0, r6
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_90be0
	ldrb	r0, [r0, #0]
	ldr	r1, .L_90be4
	cmp	r0, #0
	beq	.L_90b3c
	ldr	r1, .L_90be8
.L_90b3c:
	mov	r0, #0
	add	r2, r5, #0
	bl	DecompressRoomBackground
	add	r2, r0, #0
	str	r5, [r4, #0]
	ldr	r0, .L_90bec
	str	r0, [r4, #4]
	lsr	r0, r2, #31
	add	r0, r2, r0
	asr	r0, r0, #1
	orr	r0, r6
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_90bf0
	mov	r2, #255	@ 0xff
	lsl	r2, r2, #1
	add	r1, r2, #0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
.L_90b64:
	strh	r1, [r0, #0]
	add	r0, #2
	sub	r2, #1
	cmp	r2, #0
	bne	.L_90b64
	ldr	r0, .L_90bf4
	ldrb	r6, [r0, #5]
	cmp	r6, #0
	bne	.L_90b78
	ldrb	r6, [r0, #13]
.L_90b78:
	cmp	r6, #1
	bne	.L_90bfc
	ldr	r0, .L_90bf8
	b	.L_90c02
.L_90b80:
	.4byte	0x04000208
.L_90b84:
	.4byte	0x04000004
.L_90b88:
	.4byte	0x0000ffef
.L_90b8c:
	.4byte	0x04000200
.L_90b90:
	.4byte	0x0000fffd
.L_90b94:
	.4byte	func_8090A30
.L_90b98:
	.4byte	0x04000050
.L_90b9c:
	.4byte	gOamSlotsUsed
.L_90ba0:
	.4byte	0x04000006
.L_90ba4:
	.4byte	0x040000d4
.L_90ba8:
	.4byte	sUnk_8739458
.L_90bac:
	.4byte	0x80002000
.L_90bb0:
	.4byte	sUnk_874273C
.L_90bb4:
	.4byte	sUnk_874253C
.L_90bb8:
	.4byte	sUnk_87430FC
.L_90bbc:
	.4byte	0x80000100
.L_90bc0:
	.4byte	0x05000200
.L_90bc4:
	.4byte	0x06004000
.L_90bc8:
	.4byte	sUnk_873D764
.L_90bcc:
	.4byte	0x06010000
.L_90bd0:
	.4byte	0x06003fe0
.L_90bd4:
	.4byte	sUnk_87429EC
.L_90bd8:
	.4byte	0x0201f040
.L_90bdc:
	.4byte	0x0600d000
.L_90be0:
	.4byte	gTitleScreenStyle
.L_90be4:
	.4byte	sUnk_8742B2C
.L_90be8:
	.4byte	sUnk_8742E00
.L_90bec:
	.4byte	0x0600e000
.L_90bf0:
	.4byte	0x0600C000
.L_90bf4:
	.4byte	gUnk_3003BF8
.L_90bf8:
	.4byte	sUnk_87409C0
.L_90bfc:
	cmp	r6, #2
	bne	.L_90c14
	ldr	r0, .L_90c0c
.L_90c02:
	ldr	r1, .L_90c10
	bl	LZ77UnCompVram
	b	.L_90c20
	.align	2, 0
.L_90c0c:
	.4byte	sUnk_874140C
.L_90c10:
	.4byte	0x06015800
.L_90c14:
	cmp	r6, #3
	bne	.L_90c20
	ldr	r0, .L_90d80
	ldr	r1, .L_90d84
	bl	LZ77UnCompVram
.L_90c20:
	ldr	r1, .L_90d88
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_90d8c
	ldr	r2, .L_90d90
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r2, .L_90d94
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r2, .L_90d98
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_90d9c
	mov	r0, #16
	strh	r0, [r1, #0]
	ldr	r0, .L_90da0
	mov	r3, #0
	strh	r3, [r0, #0]
	ldr	r1, .L_90da4
	mov	r2, #0
	mov	r0, #16
	strh	r0, [r1, #0]
	ldr	r0, .L_90da8
	strb	r3, [r0, #0]
	ldr	r0, .L_90dac
	strb	r3, [r0, #0]
	ldr	r0, .L_90db0
	strb	r3, [r0, #0]
	ldr	r0, .L_90db4
	strb	r3, [r0, #0]
	ldr	r0, .L_90db8
	strh	r2, [r0, #0]
	ldr	r0, .L_90dbc
	strh	r2, [r0, #0]
	ldr	r0, .L_90dc0
	strh	r2, [r0, #0]
	ldr	r0, .L_90dc4
	strh	r2, [r0, #0]
	ldr	r0, .L_90dc8
	strh	r2, [r0, #0]
	ldr	r0, .L_90dcc
	strh	r2, [r0, #0]
	ldr	r0, .L_90dd0
	strh	r2, [r0, #0]
	ldr	r0, .L_90dd4
	strb	r3, [r0, #0]
	add	r1, #130	@ 0x82
	ldr	r0, .L_90dd8
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_90ddc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_90c94:
	ldr	r0, .L_90de0
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	sub	r0, #6
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	sub	r0, #6
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_90de4
	strb	r3, [r0, #0]
	ldr	r0, .L_90de8
	strb	r3, [r0, #0]
	strb	r3, [r0, #1]
	strb	r3, [r0, #2]
	strb	r3, [r0, #3]
	strb	r3, [r0, #4]
	strb	r3, [r0, #5]
	add	r5, r0, #0
	ldr	r3, .L_90dec
	lsl	r7, r6, #24
	mov	r1, #0
	ldr	r0, .L_90df0
	mov	r2, #5
.L_90cca:
	strb	r1, [r0, #10]
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	strb	r1, [r0, #8]
	strb	r1, [r0, #9]
	add	r0, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_90cca
	mov	r4, #0
	ldrb	r0, [r3, #0]
	neg	r0, r0
	lsr	r0, r0, #31
	strb	r0, [r5, #0]
	mov	r0, #3
	bl	func_80919D4
	ldr	r0, .L_90df4
	mov	r5, #0
	strh	r4, [r0, #0]
	add	r0, #4
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #4
	strh	r4, [r0, #0]
	ldr	r1, .L_90df8
	mov	r0, #63	@ 0x3f
	strb	r0, [r1, #0]
	ldr	r0, .L_90dfc
	mov	r1, #31
	strb	r1, [r0, #0]
	sub	r0, #1
	strb	r1, [r0, #0]
	bl	func_80920F8
	mov	r0, #0
	bl	func_8091308
	mov	r0, #1
	bl	func_8091308
	bl	func_8090EC4
	bl	func_8090F54
	lsr	r0, r7, #24
	bl	func_8090E14
	ldr	r0, .L_90dd4
	strb	r5, [r0, #0]
	bl	func_8092534
	ldr	r2, .L_90e00
	ldr	r0, .L_90e04
	ldr	r1, .L_90e08
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_90e0c
	mov	r2, #180	@ 0xb4
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_90e10
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8071238
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #174	@ 0xae
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	mov	r0, #239	@ 0xef
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #8
	strh	r0, [r1, #0]
	bl	func_80909B0
	add	r0, r6, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_90d80:
	.4byte	sUnk_8741D00
.L_90d84:
	.4byte	0x06015800
.L_90d88:
	.4byte	gUnk_3000021
.L_90d8c:
	.4byte	0x0400000c
.L_90d90:
	.4byte	0x00003c07
.L_90d94:
	.4byte	0x00003a06
.L_90d98:
	.4byte	0x00007801
.L_90d9c:
	.4byte	gBldy
.L_90da0:
	.4byte	gUnk_3001874
.L_90da4:
	.4byte	0x04000052
.L_90da8:
	.4byte	gUnk_3000C3F
.L_90dac:
	.4byte	gPauseFlag
.L_90db0:
	.4byte	gTimerState
.L_90db4:
	.4byte	gSwitchPressed
.L_90db8:
	.4byte	gUnk_300188E
.L_90dbc:
	.4byte	gUnk_300187E
.L_90dc0:
	.4byte	gUnk_3001880
.L_90dc4:
	.4byte	gBg1XPosition
.L_90dc8:
	.4byte	gBg1YPosition
.L_90dcc:
	.4byte	gUnk_3001878
.L_90dd0:
	.4byte	gUnk_3001876
.L_90dd4:
	.4byte	gOamSlotsUsed
.L_90dd8:
	.4byte	gOamBuffer
.L_90ddc:
	.4byte	0x84000100
.L_90de0:
	.4byte	0x04000018
.L_90de4:
	.4byte	gDisableSoftReset
.L_90de8:
	.4byte	gUnk_3004A68
.L_90dec:
	.4byte	gSelectedSaveFile
.L_90df0:
	.4byte	gUnk_3004A70
.L_90df4:
	.4byte	0x04000040
.L_90df8:
	.4byte	0x0400004a
.L_90dfc:
	.4byte	0x04000049
.L_90e00:
	.4byte	gMPlayTable
.L_90e04:
	.4byte	gSongTable
.L_90e08:
	.4byte	0x000013e4
.L_90e0c:
	.4byte	0x0000ffff
.L_90e10:
	.4byte	gColorFading


thumb_func_start func_8090E14
func_8090E14:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	ldr	r5, .L_90eac
	ldr	r6, .L_90eb0
	ldr	r0, .L_90eb4
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	mov	r0, #0
	strb	r1, [r5, #10]
	strb	r0, [r5, #8]
	strb	r0, [r5, #9]
	strb	r0, [r5, #22]
	add	r7, r5, #0
	add	r7, #58	@ 0x3a
	strb	r0, [r7, #0]
	add	r1, r5, #0
	add	r1, #70	@ 0x46
	strb	r0, [r1, #0]
	sub	r1, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #12
	strb	r0, [r1, #0]
	bl	func_8092248
	bl	func_8092188
	bl	func_8092310
	bl	func_809236C
	bl	func_80923B8
	cmp	r4, #0
	beq	.L_90ea4
	mov	r4, #0
	ldr	r0, .L_90eb8
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	bne	.L_90e6e
	mov	r4, #1
.L_90e6e:
	ldrb	r0, [r6, #2]
	strb	r0, [r5, #10]
	ldr	r3, .L_90ebc
	ldrb	r2, [r3, #0]
	mov	r0, #128	@ 0x80
	cmp	r2, #0
	beq	.L_90e7e
	mov	r0, #104	@ 0x68
.L_90e7e:
	strh	r0, [r5, #0]
	mov	r0, #144	@ 0x90
	strh	r0, [r5, #2]
	ldr	r1, .L_90ec0
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r4, r0
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #22]
	mov	r0, #104	@ 0x68
	cmp	r2, #0
	beq	.L_90e9a
	mov	r0, #80	@ 0x50
.L_90e9a:
	strh	r0, [r5, #12]
	mov	r0, #112	@ 0x70
	strh	r0, [r5, #14]
	mov	r0, #0
	strb	r0, [r7, #0]
.L_90ea4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_90eac:
	.4byte	gUnk_3004A70
.L_90eb0:
	.4byte	sUnk_8742976
.L_90eb4:
	.4byte	gTitleScreenStyle
.L_90eb8:
	.4byte	gUnk_3003BF8
.L_90ebc:
	.4byte	gLanguage
.L_90ec0:
	.4byte	sUnk_8742986


thumb_func_start func_8090EC4
func_8090EC4:
	push	{lr}
	mov	r0, #0
	bl	func_809137C
	mov	r0, #1
	bl	func_809137C
	mov	r0, #0
	bl	func_8090EE4
	mov	r0, #1
	bl	func_8090EE4
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8090EE4
func_8090EE4:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r5, .L_90f40
	ldr	r4, .L_90f44
	lsl	r2, r0, #3
	add	r4, r2, r4
	ldr	r1, .L_90f48
	ldrb	r3, [r1, #0]
	lsl	r1, r3, #1
	add	r1, r1, r3
	ldrb	r4, [r4, #4]
	add	r1, r1, r4
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r5, [r1, #0]
	add	r2, r2, r0
	lsl	r2, r2, #6
	mov	r4, #0
	ldr	r0, .L_90f4c
	add	r6, r0, #0
	add	r3, r5, #0
	add	r3, #32
	mov	r0, #151	@ 0x97
	lsl	r0, r0, #1
	add	r2, r2, r0
	ldr	r0, .L_90f50
	add	r1, r2, r0
	sub	r0, #64	@ 0x40
	add	r2, r2, r0
.L_90f20:
	add	r0, r5, r4
	orr	r0, r6
	strh	r0, [r2, #0]
	add	r0, r3, #0
	orr	r0, r6
	strh	r0, [r1, #0]
	add	r3, #1
	add	r1, #2
	add	r2, #2
	add	r4, #1
	cmp	r4, #4
	ble	.L_90f20
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_90f40:
	.4byte	sUnk_8742992
.L_90f44:
	.4byte	gUnk_3003BF8
.L_90f48:
	.4byte	gLanguage
.L_90f4c:
	.4byte	0xffffe000
.L_90f50:
	.2byte	0xd040
	lsl	r0, r0, #24


thumb_func_start func_8090F54
func_8090F54:
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	ldr	r7, .L_90f90
.L_90f5a:
	mov	r5, #0
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	bne	.L_90f64
	mov	r5, #1
.L_90f64:
	lsl	r4, r6, #24
	lsr	r4, r4, #24
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_8090F94
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_80910EC
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_80911E0
	add	r7, #8
	add	r6, #1
	cmp	r6, #1
	ble	.L_90f5a
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_90f90:
	.4byte	gUnk_3003BF8


thumb_func_start func_8090F94
func_8090F94:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #12
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	mov	r2, #0
	mov	r0, sp
	add	r0, #10
.L_90fa6:
	strh	r2, [r0, #0]
	sub	r0, #2
	cmp	r0, sp
	bge	.L_90fa6
	mov	r6, #227	@ 0xe3
	lsl	r6, r6, #8
	cmp	r1, #0
	beq	.L_90fcc
	lsl	r2, r7, #3
	mov	r0, #14
	add	r1, r6, #0
	orr	r1, r0
	mov	r0, sp
	add	r0, #10
.L_90fc2:
	strh	r1, [r0, #0]
	sub	r0, #2
	cmp	r0, sp
	bge	.L_90fc2
	b	.L_910a2
.L_90fcc:
	ldr	r1, .L_910dc
	lsl	r0, r7, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	ldr	r5, [r0, #32]
	mov	r4, sp
	ldr	r1, .L_910e0
	add	r0, r5, #0
	bl	__udivsi3
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #0]
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_90ff8
	mov	r1, sp
	add	r0, r2, #0
	orr	r0, r6
	strh	r0, [r1, #0]
.L_90ff8:
	mov	r4, sp
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r5, #0
	bl	__udivsi3
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #2]
	mov	r0, sp
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_9101c
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_91024
.L_9101c:
	mov	r1, sp
	add	r0, r2, #0
	orr	r0, r6
	strh	r0, [r1, #2]
.L_91024:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, #100	@ 0x64
	bl	__udivsi3
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #4]
	mov	r0, sp
	ldrh	r0, [r0, #2]
	cmp	r0, #0
	bne	.L_91046
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_9104e
.L_91046:
	mov	r1, sp
	add	r0, r6, #0
	orr	r0, r2
	strh	r0, [r1, #4]
.L_9104e:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, #10
	bl	__udivsi3
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #6]
	mov	r0, sp
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_91070
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_91078
.L_91070:
	mov	r1, sp
	add	r0, r6, #0
	orr	r0, r2
	strh	r0, [r1, #6]
.L_91078:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #8]
	mov	r0, sp
	ldrh	r0, [r0, #6]
	cmp	r0, #0
	bne	.L_91094
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_9109c
.L_91094:
	mov	r1, sp
	add	r0, r6, #0
	orr	r0, r2
	strh	r0, [r1, #8]
.L_9109c:
	mov	r0, sp
	strh	r6, [r0, #10]
	lsl	r2, r7, #3
.L_910a2:
	add	r0, r2, r7
	lsl	r0, r0, #6
	mov	r2, sp
	mov	r1, #206	@ 0xce
	lsl	r1, r1, #1
	add	r0, r0, r1
	ldr	r3, .L_910e4
	add	r1, r0, r3
	ldr	r4, .L_910e8
	add	r3, r0, r4
	mov	r4, #5
.L_910b8:
	ldrh	r0, [r2, #0]
	strh	r0, [r3, #0]
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_910c4
	add	r0, #32
.L_910c4:
	strh	r0, [r1, #0]
	add	r1, #2
	add	r3, #2
	add	r2, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_910b8
	add	sp, #12
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_910dc:
	.4byte	sUnk_84009BC
.L_910e0:
	.4byte	0x00002710
.L_910e4:
	.4byte	0x0600d040
.L_910e8:
	.4byte	0x0600d000


thumb_func_start func_80910EC
func_80910EC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	lsl	r1, r1, #24
	mov	r6, #0
	mov	r0, sp
	strh	r6, [r0, #0]
	strh	r6, [r0, #2]
	ldr	r0, .L_91120
	mov	r8, r0
	cmp	r1, #0
	beq	.L_91124
	mov	r2, sp
	mov	r1, #11
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r1, sp
	strh	r0, [r1, #2]
	lsl	r1, r7, #3
	mov	r9, r1
	b	.L_91192
	.align	2, 0
.L_91120:
	.4byte	0x0000e340
.L_91124:
	ldr	r0, .L_911d4
	lsl	r1, r7, #2
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	add	r2, r0, #0
	add	r2, #36	@ 0x24
	mov	r5, #0
	lsl	r4, r7, #3
	mov	r9, r4
	mov	r3, #16
.L_91138:
	mov	r4, #0
.L_9113a:
	ldrb	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_9114e
	cmp	r4, #3
	bgt	.L_9114e
	cmp	r5, #0
	beq	.L_9114e
	add	r6, #1
.L_9114e:
	add	r2, #4
	add	r4, #1
	cmp	r4, #5
	ble	.L_9113a
	add	r5, #1
	cmp	r5, #4
	ble	.L_91138
	mov	r4, sp
	add	r0, r6, #0
	mov	r1, #10
	bl	__udivsi3
	mov	r1, #10
	bl	__umodsi3
	add	r2, r0, #0
	strh	r2, [r4, #0]
	lsl	r0, r2, #16
	cmp	r0, #0
	beq	.L_9117e
	mov	r1, sp
	mov	r0, r8
	orr	r0, r2
	strh	r0, [r1, #0]
.L_9117e:
	mov	r4, sp
	add	r0, r6, #0
	mov	r1, #10
	bl	__umodsi3
	strh	r0, [r4, #2]
	mov	r2, sp
	mov	r1, r8
	orr	r1, r0
	strh	r1, [r2, #2]
.L_91192:
	mov	r1, r9
	add	r0, r1, r7
	lsl	r5, r0, #6
	mov	r3, sp
	mov	r4, #215	@ 0xd7
	lsl	r4, r4, #1
	add	r0, r5, r4
	ldr	r1, .L_911d8
	add	r2, r0, r1
	ldr	r4, .L_911dc
	add	r1, r0, r4
	mov	r4, #1
.L_911aa:
	ldrh	r0, [r3, #0]
	strh	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_911b6
	add	r0, #32
.L_911b6:
	strh	r0, [r2, #0]
	add	r2, #2
	add	r1, #2
	add	r3, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_911aa
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_911d4:
	.4byte	sUnk_84009BC
.L_911d8:
	.4byte	0x0600d040
.L_911dc:
	.4byte	0x0600d000


thumb_func_start func_80911E0
func_80911E0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	sl, r0
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	add	r0, sp, #12
	mov	r8, r0
	ldr	r6, .L_912b8
	mov	r5, #0
	ldr	r4, .L_912bc
	mov	r3, r8
	mov	r0, sp
	mov	r2, #5
.L_91206:
	strh	r4, [r0, #0]
	strh	r5, [r3, #0]
	add	r3, #2
	add	r0, #2
	sub	r2, #1
	cmp	r2, #0
	bge	.L_91206
	mov	r2, sl
	lsl	r0, r2, #2
	add	r0, r0, r6
	ldr	r2, [r0, #0]
	add	r4, r2, #0
	add	r4, #172	@ 0xac
	ldrb	r0, [r4, #0]
	lsr	r6, r0, #4
	mov	r0, #1
	and	r6, r0
	mov	r0, sl
	lsl	r0, r0, #3
	str	r0, [sp, #24]
	cmp	r1, #0
	bne	.L_91282
	sub	r4, #120	@ 0x78
	mov	r2, #32
	mov	r9, r2
	mov	r5, r8
	mov	r2, r8
	mov	r0, #0
	mov	ip, r0
	mov	r3, sp
	ldr	r7, .L_912c0
.L_91244:
	ldrb	r1, [r4, #0]
	mov	r0, r9
	and	r0, r1
	cmp	r0, #0
	bne	.L_91252
	cmp	r6, #0
	beq	.L_91260
.L_91252:
	ldr	r0, .L_912c4
	add	r0, ip
	strh	r0, [r3, #0]
	add	r0, r5, #4
	cmp	r2, r0
	ble	.L_91260
	strh	r7, [r3, #0]
.L_91260:
	ldrb	r1, [r4, #0]
	mov	r0, r9
	and	r0, r1
	cmp	r0, #0
	beq	.L_9126e
	ldr	r0, .L_912c8
	strh	r0, [r2, #0]
.L_9126e:
	add	r4, #24
	add	r2, #2
	mov	r0, #2
	add	ip, r0
	add	r3, #2
	add	r7, #2
	add	r0, r5, #0
	add	r0, #10
	cmp	r2, r0
	ble	.L_91244
.L_91282:
	ldr	r0, [sp, #24]
	add	r0, sl
	lsl	r0, r0, #6
	mov	r5, r8
	mov	r1, sp
	add	r0, #204	@ 0xcc
	ldr	r2, .L_912cc
	add	r4, r0, r2
	ldr	r6, .L_912d0
	add	r3, r0, r6
	sub	r6, #64	@ 0x40
	add	r2, r0, r6
.L_9129a:
	ldrh	r0, [r5, #0]
	strh	r0, [r2, #0]
	ldrh	r0, [r1, #0]
	strh	r0, [r3, #0]
	ldrh	r0, [r1, #0]
	add	r0, #32
	strh	r0, [r4, #0]
	add	r4, #2
	add	r3, #2
	add	r2, #2
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_912d4
	add	r0, #1
	b	.L_912d6
.L_912b8:
	.4byte	sUnk_84009BC
.L_912bc:
	.4byte	0x0000b240
.L_912c0:
	.4byte	0xffffc1ea
.L_912c4:
	.4byte	0xffffb1ea
.L_912c8:
	.4byte	0xffffb220
.L_912cc:
	.4byte	0x0600d080
.L_912d0:
	.4byte	0x0600d040
.L_912d4:
	mov	r0, #0
.L_912d6:
	strh	r0, [r2, #0]
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r1, #0]
	add	r0, #33	@ 0x21
	strh	r0, [r4, #0]
	add	r4, #2
	add	r3, #2
	add	r2, #2
	add	r5, #2
	add	r1, #2
	mov	r0, sp
	add	r0, #10
	cmp	r1, r0
	ble	.L_9129a
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8091308
func_8091308:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r2, .L_91344
	lsl	r0, r5, #3
	add	r3, r0, r2
	ldr	r1, .L_91348
	lsl	r4, r5, #2
	add	r1, r4, r1
	ldr	r0, [r1, #0]
	ldrb	r0, [r0, #25]
	strb	r0, [r3, #2]
	ldr	r0, [r1, #0]
	ldrb	r0, [r0, #26]
	strb	r0, [r3, #3]
	ldr	r0, [r1, #0]
	ldrb	r0, [r0, #24]
	strb	r0, [r3, #4]
	ldrb	r0, [r3, #0]
	cmp	r0, #3
	bne	.L_91350
	ldr	r0, .L_9134c
	add	r0, r4, r0
	ldr	r1, [r0, #0]
	ldrb	r1, [r1, #1]
	strb	r1, [r3, #2]
	ldr	r0, [r0, #0]
	ldrb	r0, [r0, #2]
	b	.L_91362
	.align	2, 0
.L_91344:
	.4byte	gUnk_3003BF8
.L_91348:
	.4byte	sUnk_84009BC
.L_9134c:
	.4byte	sUnk_84009D4
.L_91350:
	cmp	r0, #2
	bne	.L_91364
	ldr	r0, .L_91378
	add	r0, r4, r0
	ldr	r1, [r0, #0]
	ldrb	r1, [r1, #25]
	strb	r1, [r3, #2]
	ldr	r0, [r0, #0]
	ldrb	r0, [r0, #26]
.L_91362:
	strb	r0, [r3, #3]
.L_91364:
	lsl	r0, r5, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_91370
	strb	r1, [r0, #4]
.L_91370:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_91378:
	.4byte	sUnk_84009CC


thumb_func_start func_809137C
func_809137C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r6, .L_913ac
	cmp	r0, #0
	beq	.L_9138e
	ldr	r6, .L_913b0
.L_9138e:
	ldr	r1, .L_913b4
	lsl	r0, r0, #3
	add	r2, r0, r1
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_9139e
	cmp	r0, #128	@ 0x80
	bne	.L_913c4
.L_9139e:
	ldr	r0, .L_913b8
	ldrb	r0, [r0, #0]
	ldr	r5, .L_913bc
	cmp	r0, #0
	bne	.L_9141a
	ldr	r5, .L_913c0
	b	.L_9141a
.L_913ac:
	.4byte	0x0600c044
.L_913b0:
	.4byte	0x0600c284
.L_913b4:
	.4byte	gUnk_3003BF8
.L_913b8:
	.4byte	gLanguage
.L_913bc:
	.4byte	sUnk_87429B8
.L_913c0:
	.4byte	sUnk_874299E
.L_913c4:
	ldrb	r0, [r2, #3]
	cmp	r0, #5
	bhi	.L_913fc
	ldr	r0, .L_913d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_913e0
	ldr	r3, .L_913dc
	b	.L_913e2
	.align	2, 0
.L_913d8:
	.4byte	gLanguage
.L_913dc:
	.4byte	sUnk_863A3AC
.L_913e0:
	ldr	r3, .L_913f8
.L_913e2:
	ldrb	r1, [r2, #3]
	lsl	r1, r1, #2
	ldrb	r2, [r2, #2]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r5, [r1, #0]
	b	.L_9141a
	.align	2, 0
.L_913f8:
	.4byte	sUnk_863A31C
.L_913fc:
	ldr	r0, .L_91408
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_91410
	ldr	r1, .L_9140c
	b	.L_91412
.L_91408:
	.4byte	gLanguage
.L_9140c:
	.4byte	sUnk_8639588
.L_91410:
	ldr	r1, .L_91464
.L_91412:
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
.L_9141a:
	mov	r0, #224	@ 0xe0
	mov	ip, r0
	mov	r1, #31
	mov	r8, r1
	ldr	r0, .L_91468
	add	r7, r0, #0
	add	r4, r6, #0
	add	r4, #64	@ 0x40
	add	r3, r6, #0
	mov	r6, #25
.L_9142e:
	ldrb	r0, [r5, #0]
	mov	r1, ip
	and	r0, r1
	lsl	r2, r0, #1
	ldrb	r1, [r5, #0]
	mov	r0, r8
	and	r0, r1
	orr	r2, r0
	add	r0, r2, #0
	orr	r0, r7
	strh	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #32
	orr	r0, r7
	strh	r0, [r4, #0]
	add	r5, #1
	add	r4, #2
	add	r3, #2
	sub	r6, #1
	cmp	r6, #0
	bge	.L_9142e
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_91464:
	.4byte	sUnk_863956C
.L_91468:
	.4byte	0xffffe000
.L_9146c:
	.2byte	0xb510
	ldr	r0, .L_91488
	mov	r1, #0
	ldr	r4, .L_9148c
	add	r3, r0, #0
	add	r3, #64	@ 0x40
	add	r2, r0, #0
.L_9147a:
	add	r0, r1, r4
	ldrb	r0, [r0, #0]
	cmp	r0, #96	@ 0x60
	ble	.L_91490
	sub	r0, #29
	b	.L_9149e
	.align	2, 0
.L_91488:
	.4byte	0x0600c4ac
.L_9148c:
	.4byte	sUnk_874298C
.L_91490:
	cmp	r0, #64	@ 0x40
	ble	.L_91498
	sub	r0, #55	@ 0x37
	b	.L_9149e
.L_91498:
	cmp	r0, #47	@ 0x2f
	ble	.L_9149e
	sub	r0, #48	@ 0x30
.L_9149e:
	strh	r0, [r2, #0]
	add	r0, #32
	strh	r0, [r3, #0]
	add	r1, #1
	add	r3, #2
	add	r2, #2
	cmp	r1, #4
	bls	.L_9147a
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80914B4
func_80914B4:
	push	{lr}
	ldr	r0, .L_91508
	bl	InterruptCallbackSetVBlank
	ldr	r1, .L_9150c
	mov	r0, #63	@ 0x3f
	strb	r0, [r1, #0]
	add	r1, #7
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #16
	strh	r0, [r1, #0]
	ldr	r0, .L_91510
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #2
	beq	.L_914de
	bl	func_809151C
.L_914de:
	bl	func_8074088
	ldr	r1, .L_91514
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	ResetFreeOam
	ldr	r0, .L_91518
	mov	r1, #0
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	bl	func_80909B0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_91508:
	.4byte	func_8090A30
.L_9150c:
	.4byte	0x04000049
.L_91510:
	.4byte	gUnk_3000C3E
.L_91514:
	.4byte	gOamSlotsUsed
.L_91518:
	.4byte	0x04000040


thumb_func_start func_809151C
func_809151C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_91564
	ldr	r6, .L_91568
	ldr	r5, .L_9156c
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldrb	r1, [r0, #0]
	strb	r1, [r2, #0]
	ldr	r2, .L_91570
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldrb	r0, [r0, #1]
	strb	r0, [r2, #0]
	lsl	r1, r1, #24
	lsr	r4, r1, #24
	cmp	r4, #0
	bne	.L_91580
	bl	func_807403C
	ldr	r0, .L_91574
	strb	r4, [r0, #0]
	ldr	r1, .L_91578
	mov	r0, #6
	strb	r0, [r1, #0]
	ldr	r1, .L_9157c
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldrb	r0, [r0, #4]
	strb	r0, [r1, #0]
	bl	func_8073880
	b	.L_91584
	.align	2, 0
.L_91564:
	.4byte	gSaveFlag
.L_91568:
	.4byte	gUnk_3003BF8
.L_9156c:
	.4byte	gSelectedSaveFile
.L_91570:
	.4byte	gHasTemporarySave
.L_91574:
	.4byte	gCurrentPassage
.L_91578:
	.4byte	gCurrentStageNumber
.L_9157c:
	.4byte	gDifficulty
.L_91580:
	bl	func_8073FD8
.L_91584:
	ldr	r2, .L_9159c
	ldr	r1, .L_915a0
	ldr	r0, .L_915a4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #4]
	strb	r0, [r2, #0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_9159c:
	.4byte	gDifficulty
.L_915a0:
	.4byte	gUnk_3003BF8
.L_915a4:
	.4byte	gSelectedSaveFile


thumb_func_start func_80915A8
func_80915A8:
	push	{r4, r5, lr}
	sub	sp, #4
	mov	r5, #0
	ldr	r0, .L_915c4
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #5
	bls	.L_915ba
	b	.L_9179a
.L_915ba:
	lsl	r0, r1, #2
	ldr	r1, .L_915c8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_915c4:
	.4byte	gUnk_3000021
.L_915c8:
	.4byte	.L_915cc
.L_915cc:
	.4byte	.L_915e4
	.4byte	.L_9160c
	.4byte	.L_9163c
	.4byte	.L_91650
	.4byte	.L_91698
	.4byte	.L_91788
.L_915e4:
	ldr	r4, .L_91604
	ldrh	r0, [r4, #0]
	cmp	r0, #10
	bhi	.L_915ee
	b	.L_9179a
.L_915ee:
	mov	r0, #143	@ 0x8f
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_91608
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_9179a
.L_91604:
	.4byte	gUnk_300188E
.L_91608:
	.4byte	gUnk_3000021
.L_9160c:
	ldr	r4, .L_91630
	ldrh	r0, [r4, #0]
	cmp	r0, #40	@ 0x28
	bhi	.L_91616
	b	.L_9179a
.L_91616:
	ldr	r1, .L_91634
	ldr	r0, .L_91638
	ldrb	r0, [r0, #0]
	mov	r2, #0
	strb	r0, [r1, #10]
	strb	r2, [r1, #8]
	strb	r2, [r1, #9]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	strh	r2, [r4, #0]
	b	.L_9179a
	.align	2, 0
.L_91630:
	.4byte	gUnk_300188E
.L_91634:
	.4byte	gUnk_3004A70
.L_91638:
	.4byte	sUnk_8742976
.L_9163c:
	ldr	r1, .L_9164c
	ldrh	r0, [r1, #0]
	cmp	r0, #10
	bhi	.L_91646
	b	.L_9179a
.L_91646:
	ldrb	r0, [r3, #0]
	add	r0, #1
	b	.L_91794
.L_9164c:
	.4byte	gUnk_300188E
.L_91650:
	ldr	r0, .L_91680
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_9165e
	b	.L_9179a
.L_9165e:
	ldr	r0, .L_91684
	bl	m4aSongNumStart
	ldr	r1, .L_91688
	ldr	r0, .L_9168c
	ldrb	r0, [r0, #1]
	mov	r2, #0
	strb	r0, [r1, #10]
	strb	r2, [r1, #8]
	strb	r2, [r1, #9]
	ldr	r1, .L_91690
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_91694
	strh	r2, [r0, #0]
	b	.L_9179a
.L_91680:
	.4byte	gButtonsPressed
.L_91684:
	.4byte	0x00000125
.L_91688:
	.4byte	gUnk_3004A70
.L_9168c:
	.4byte	sUnk_8742976
.L_91690:
	.4byte	gUnk_3000021
.L_91694:
	.4byte	gUnk_300188E
.L_91698:
	ldr	r0, .L_916c8
	ldrh	r0, [r0, #0]
	cmp	r0, #8
	bhi	.L_916a2
	b	.L_9179a
.L_916a2:
	ldr	r4, .L_916cc
	mov	r1, #0
	ldr	r2, .L_916d0
	ldrb	r0, [r2, #5]
	cmp	r0, #0
	bne	.L_916b0
	mov	r1, #1
.L_916b0:
	strb	r1, [r4, #0]
	ldrb	r3, [r4, #0]
	lsl	r0, r3, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #5]
	cmp	r0, #2
	beq	.L_9170c
	cmp	r0, #2
	bgt	.L_916d4
	cmp	r0, #1
	beq	.L_916da
	b	.L_91766
.L_916c8:
	.4byte	gUnk_300188E
.L_916cc:
	.4byte	gSelectedSaveFile
.L_916d0:
	.4byte	gUnk_3003BF8
.L_916d4:
	cmp	r0, #3
	beq	.L_91740
	b	.L_91766
.L_916da:
	mov	r1, sp
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_91700
	mov	r0, sp
	str	r0, [r1, #0]
	ldr	r2, .L_91704
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_91708
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bl	func_8000FBC
	b	.L_91766
	.align	2, 0
.L_91700:
	.4byte	0x040000d4
.L_91704:
	.4byte	sUnk_84009CC
.L_91708:
	.4byte	0x81001c00
.L_9170c:
	ldr	r2, .L_91730
	ldr	r1, .L_91734
	lsl	r0, r3, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_91738
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #4]
	ldr	r0, .L_9173c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	bl	func_8000F64
	b	.L_91766
.L_91730:
	.4byte	0x040000d4
.L_91734:
	.4byte	sUnk_84009C4
.L_91738:
	.4byte	sUnk_84009BC
.L_9173c:
	.4byte	0x80000100
.L_91740:
	mov	r1, sp
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_91774
	mov	r0, sp
	str	r0, [r1, #0]
	ldr	r2, .L_91778
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_9177c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bl	func_8000F64
	bl	func_8000F90
.L_91766:
	ldr	r1, .L_91780
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_91784
	b	.L_91796
	.align	2, 0
.L_91774:
	.4byte	0x040000d4
.L_91778:
	.4byte	sUnk_84009BC
.L_9177c:
	.4byte	0x81000200
.L_91780:
	.4byte	gUnk_3000021
.L_91784:
	.4byte	gUnk_300188E
.L_91788:
	ldr	r1, .L_917a4
	ldrh	r0, [r1, #0]
	cmp	r0, #35	@ 0x23
	bls	.L_9179a
	mov	r5, #1
	mov	r0, #0
.L_91794:
	strb	r0, [r3, #0]
.L_91796:
	mov	r0, #0
	strh	r0, [r1, #0]
.L_9179a:
	add	r0, r5, #0
	add	sp, #4
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_917a4:
	.4byte	gUnk_300188E


thumb_func_start FileSelectSubroutine
FileSelectSubroutine:
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r0, .L_917d0
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldr	r1, .L_917d4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	add	r3, r0, #0
	add	r4, r1, #0
	cmp	r2, #10
	bls	.L_917c4
	b	.L_919b2
.L_917c4:
	lsl	r0, r2, #2
	ldr	r1, .L_917d8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_917d0:
	.4byte	gUnk_300188E
.L_917d4:
	.4byte	gSubGameMode
.L_917d8:
	.4byte	.L_917dc
.L_917dc:
	.4byte	.L_91808
	.4byte	.L_91818
	.4byte	.L_91834
	.4byte	.L_91906
	.4byte	.L_91930
	.4byte	.L_91960
	.4byte	.L_9196c
	.4byte	.L_91984
	.4byte	.L_91818
	.4byte	.L_9198c
	.4byte	.L_919a0
.L_91808:
	bl	func_8090A40
	mov	r1, #1
	cmp	r0, #0
	beq	.L_91814
	mov	r1, #8
.L_91814:
	strh	r1, [r4, #0]
	b	.L_919b2
.L_91818:
	bl	func_80703DC
	bl	func_8092168
	cmp	r0, #0
	bne	.L_91826
	b	.L_919b2
.L_91826:
	ldr	r1, .L_91830
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_919b0
	.align	2, 0
.L_91830:
	.4byte	gSubGameMode
.L_91834:
	ldr	r4, .L_9189c
	bl	func_8091A60
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	asr	r4, r0, #24
	cmp	r4, #0
	beq	.L_91900
	ldr	r3, .L_918a0
	ldrb	r2, [r3, #0]
	mov	r1, #127	@ 0x7f
	add	r0, r1, #0
	and	r0, r2
	mov	r2, #0
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #8]
	and	r1, r0
	strb	r1, [r3, #8]
	ldr	r0, .L_918a4
	mov	r5, #0
	strh	r2, [r0, #0]
	cmp	r4, #2
	bne	.L_918c4
	ldr	r2, .L_918a8
	ldr	r0, .L_918ac
	ldr	r1, .L_918b0
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	ldr	r3, .L_918b4
	ldr	r2, .L_918b8
	ldr	r0, .L_918bc
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r2, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	strb	r5, [r3, #8]
	strb	r5, [r3, #9]
	ldr	r1, .L_918c0
	mov	r0, #5
	b	.L_919b0
	.align	2, 0
.L_9189c:
	.4byte	gUnk_3000C3E
.L_918a0:
	.4byte	gUnk_3003BF8
.L_918a4:
	.4byte	gUnk_300188E
.L_918a8:
	.4byte	gMPlayTable
.L_918ac:
	.4byte	gSongTable
.L_918b0:
	.4byte	0x000013e4
.L_918b4:
	.4byte	gUnk_3004A70
.L_918b8:
	.4byte	sUnk_8742976
.L_918bc:
	.4byte	gTitleScreenStyle
.L_918c0:
	.4byte	gSubGameMode
.L_918c4:
	ldr	r0, .L_918e8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_918f4
	mov	r0, #1
	bl	func_8092460
	ldr	r0, .L_918ec
	bl	m4aSongNumStart
	ldr	r1, .L_918f0
	mov	r0, #3
	b	.L_919b0
.L_918e8:
	.4byte	gSelectedSaveFile
.L_918ec:
	.4byte	0x0000011f
.L_918f0:
	.4byte	gSubGameMode
.L_918f4:
	ldr	r1, .L_918fc
	mov	r0, #4
	b	.L_919b0
	.align	2, 0
.L_918fc:
	.4byte	gSubGameMode
.L_91900:
	bl	func_8091A88
	b	.L_919b2
.L_91906:
	ldr	r2, .L_91928
	ldr	r0, .L_9192c
	ldrb	r1, [r0, #0]
	add	r1, #2
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #10]
	cmp	r0, #0
	bne	.L_919b2
	strh	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_919b2
	.align	2, 0
.L_91928:
	.4byte	gUnk_3004A70
.L_9192c:
	.4byte	gSelectedSaveFile
.L_91930:
	ldrh	r0, [r3, #0]
	cmp	r0, #20
	bls	.L_919b2
	ldr	r1, .L_91954
	ldr	r0, .L_91958
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_9194e
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #2
	bl	m4aSongNumStop
.L_9194e:
	ldr	r1, .L_9195c
	mov	r0, #6
	b	.L_919b0
.L_91954:
	.4byte	gUnk_3003BF8
.L_91958:
	.4byte	gSelectedSaveFile
.L_9195c:
	.4byte	gSubGameMode
.L_91960:
	ldrh	r0, [r3, #0]
	cmp	r0, #40	@ 0x28
	bls	.L_919b2
	mov	r0, #6
	strh	r0, [r4, #0]
	b	.L_919b2
.L_9196c:
	bl	func_80703DC
	bl	func_8092178
	cmp	r0, #0
	beq	.L_919b2
	ldr	r1, .L_91980
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_919b0
.L_91980:
	.4byte	gSubGameMode
.L_91984:
	bl	func_80914B4
	mov	r6, #1
	b	.L_919c2
.L_9198c:
	bl	func_80915A8
	cmp	r0, #0
	beq	.L_919b2
	ldr	r1, .L_9199c
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_919b0
.L_9199c:
	.4byte	gSubGameMode
.L_919a0:
	bl	func_80703DC
	bl	func_8092178
	cmp	r0, #0
	beq	.L_919b2
	ldr	r1, .L_919cc
	mov	r0, #0
.L_919b0:
	strh	r0, [r1, #0]
.L_919b2:
	cmp	r6, #0
	bne	.L_919c2
	ldr	r0, .L_919d0
	strb	r6, [r0, #0]
	bl	func_8092534
	bl	ResetFreeOam
.L_919c2:
	add	r0, r6, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_919cc:
	.4byte	gSubGameMode
.L_919d0:
	.4byte	gOamSlotsUsed


thumb_func_start func_80919D4
func_80919D4:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #1
	beq	.L_919ec
	cmp	r4, #1
	ble	.L_91a20
	cmp	r4, #2
	beq	.L_91a20
	cmp	r4, #3
	beq	.L_91a30
	b	.L_91a20
.L_919ec:
	ldr	r1, .L_91a04
	ldr	r0, .L_91a08
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r3, [r0, #4]
	cmp	r3, #2
	bne	.L_91a10
	ldr	r0, .L_91a0c
	strb	r3, [r0, #2]
	b	.L_91a58
	.align	2, 0
.L_91a04:
	.4byte	gUnk_3003BF8
.L_91a08:
	.4byte	gSelectedSaveFile
.L_91a0c:
	.4byte	gUnk_3004A68
.L_91a10:
	cmp	r3, #1
	bne	.L_91a20
	ldr	r0, .L_91a1c
	strb	r4, [r0, #2]
	b	.L_91a58
	.align	2, 0
.L_91a1c:
	.4byte	gUnk_3004A68
.L_91a20:
	ldr	r1, .L_91a2c
	mov	r0, #0
	strb	r0, [r1, #2]
	add	r0, r1, #0
	b	.L_91a58
	.align	2, 0
.L_91a2c:
	.4byte	gUnk_3004A68
.L_91a30:
	ldr	r2, .L_91a4c
	mov	r0, #0
	strb	r0, [r2, #2]
	ldr	r1, .L_91a50
	ldr	r0, .L_91a54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r3, [r0, #0]
	add	r0, r2, #0
	cmp	r3, #0
	bne	.L_91a58
	strb	r3, [r0, #1]
	b	.L_91a5a
.L_91a4c:
	.4byte	gUnk_3004A68
.L_91a50:
	.4byte	gUnk_3003BF8
.L_91a54:
	.4byte	gSelectedSaveFile
.L_91a58:
	strb	r4, [r0, #1]
.L_91a5a:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8091A60
func_8091A60:
	mov	r2, #0
	ldr	r1, .L_91a74
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	blt	.L_91a84
	cmp	r0, #1
	ble	.L_91a78
	cmp	r0, #2
	beq	.L_91a7c
	b	.L_91a84
.L_91a74:
	.4byte	gUnk_3004A68
.L_91a78:
	ldrb	r2, [r1, #4]
	b	.L_91a84
.L_91a7c:
	ldrb	r0, [r1, #4]
	cmp	r0, #2
	bne	.L_91a84
	mov	r2, #2
.L_91a84:
	add	r0, r2, #0
	bx	lr


thumb_func_start func_8091A88
func_8091A88:
	push	{lr}
	ldr	r1, .L_91a98
	ldrb	r0, [r1, #3]
	cmp	r0, #0
	beq	.L_91a9c
	bl	func_8091ACC
	b	.L_91ab6
.L_91a98:
	.4byte	gUnk_3004A68
.L_91a9c:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	blt	.L_91ab6
	cmp	r0, #1
	ble	.L_91aac
	cmp	r0, #2
	beq	.L_91ab2
	b	.L_91ab6
.L_91aac:
	bl	func_8091E64
	b	.L_91ab6
.L_91ab2:
	bl	func_8092090
.L_91ab6:
	bl	func_8092248
	bl	func_8092188
	bl	func_8092310
	bl	func_809236C
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8091ACC
func_8091ACC:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r3, .L_91b0c
	ldr	r2, .L_91b10
	ldr	r0, .L_91b14
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r2, #1
	add	r0, r0, r2
	ldrb	r1, [r3, #10]
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_91aea
	b	.L_91d68
.L_91aea:
	cmp	r1, #32
	bne	.L_91af0
	b	.L_91d68
.L_91af0:
	mov	r7, #0
	ldr	r1, .L_91b18
	ldrb	r0, [r1, #3]
	sub	r0, #1
	add	r2, r1, #0
	cmp	r0, #17
	bls	.L_91b00
	b	.L_91d24
.L_91b00:
	lsl	r0, r0, #2
	ldr	r1, .L_91b1c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_91b0c:
	.4byte	gUnk_3004A70
.L_91b10:
	.4byte	sUnk_8742976
.L_91b14:
	.4byte	gTitleScreenStyle
.L_91b18:
	.4byte	gUnk_3004A68
.L_91b1c:
	.4byte	.L_91b20
.L_91b20:
	.4byte	.L_91b68
	.4byte	.L_91b68
	.4byte	.L_91b74
	.4byte	.L_91b7c
	.4byte	.L_91d10
	.4byte	.L_91b8c
	.4byte	.L_91ba8
	.4byte	.L_91bd4
	.4byte	.L_91c04
	.4byte	.L_91cc8
	.4byte	.L_91bf8
	.4byte	.L_91bfe
	.4byte	.L_91cc0
	.4byte	.L_91cd0
	.4byte	.L_91c8a
	.4byte	.L_91cd6
	.4byte	.L_91d18
	.4byte	.L_91d1e
.L_91b68:
	ldrb	r0, [r2, #3]
	cmp	r0, #1
	beq	.L_91b70
	b	.L_91cc0
.L_91b70:
	mov	r0, #0
	b	.L_91cc2
.L_91b74:
	mov	r0, #1
	bl	func_80919D4
	b	.L_91d24
.L_91b7c:
	mov	r0, #0
	strb	r0, [r2, #2]
	strb	r0, [r2, #1]
	mov	r0, #2
	strb	r0, [r2, #0]
	bl	func_80920F8
	b	.L_91d24
.L_91b8c:
	ldr	r1, .L_91ba0
	ldr	r0, .L_91ba4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	bl	func_8074088
	b	.L_91cf2
.L_91ba0:
	.4byte	gUnk_3003BF8
.L_91ba4:
	.4byte	gSelectedSaveFile
.L_91ba8:
	ldrb	r1, [r2, #2]
	mov	r3, #2
	cmp	r1, #2
	beq	.L_91bb8
	mov	r3, #0
	cmp	r1, #1
	bne	.L_91bb8
	mov	r3, #1
.L_91bb8:
	ldr	r2, .L_91bcc
	ldr	r1, .L_91bd0
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	strb	r3, [r0, #4]
	ldrb	r0, [r1, #0]
	bl	func_8090EE4
	b	.L_91d24
.L_91bcc:
	.4byte	gUnk_3003BF8
.L_91bd0:
	.4byte	gSelectedSaveFile
.L_91bd4:
	mov	r0, #0
	bl	func_80919D4
	ldr	r1, .L_91bf0
	ldr	r2, .L_91bf4
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	mov	r1, #0
	strb	r1, [r0, #4]
	ldrb	r0, [r2, #0]
	bl	func_8090EE4
	b	.L_91d24
.L_91bf0:
	.4byte	gUnk_3003BF8
.L_91bf4:
	.4byte	gSelectedSaveFile
.L_91bf8:
	mov	r0, #1
	strb	r0, [r2, #2]
	b	.L_91d24
.L_91bfe:
	mov	r0, #0
	strb	r0, [r2, #2]
	b	.L_91d24
.L_91c04:
	mov	r0, sp
	mov	r6, #0
	strh	r6, [r0, #0]
	ldr	r1, .L_91ca0
	str	r0, [r1, #0]
	ldr	r2, .L_91ca4
	ldr	r4, .L_91ca8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_91cac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, sp
	strh	r6, [r0, #0]
	str	r0, [r1, #0]
	ldr	r2, .L_91cb0
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_91cb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r4, #0]
	bl	func_8000D98
	ldr	r5, .L_91cb8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r1, [r0, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_91c58
	mov	r0, #0
	bl	func_8092460
.L_91c58:
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	strb	r6, [r0, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	strb	r6, [r0, #1]
	ldrb	r0, [r4, #0]
	bl	func_8091308
	bl	func_8090EC4
	ldrb	r0, [r4, #0]
	mov	r1, #1
	bl	func_8090F94
	ldrb	r0, [r4, #0]
	mov	r1, #1
	bl	func_80910EC
	ldrb	r0, [r4, #0]
	mov	r1, #1
	bl	func_80911E0
.L_91c8a:
	ldr	r0, .L_91cbc
	mov	r2, #0
	strb	r2, [r0, #5]
	mov	r1, #2
	strb	r1, [r0, #0]
	strb	r2, [r0, #2]
	strb	r2, [r0, #1]
	bl	func_80920F8
	b	.L_91d24
	.align	2, 0
.L_91ca0:
	.4byte	0x040000d4
.L_91ca4:
	.4byte	sUnk_84009BC
.L_91ca8:
	.4byte	gSelectedSaveFile
.L_91cac:
	.4byte	0x81000200
.L_91cb0:
	.4byte	sUnk_84009CC
.L_91cb4:
	.4byte	0x81001c00
.L_91cb8:
	.4byte	gUnk_3003BF8
.L_91cbc:
	.4byte	gUnk_3004A68
.L_91cc0:
	mov	r0, #1
.L_91cc2:
	strb	r0, [r2, #0]
	bl	func_80920F8
.L_91cc8:
	mov	r0, #3
	bl	func_80919D4
	b	.L_91d24
.L_91cd0:
	.4byte	0x71502001
	b	.L_91d24
.L_91cd6:
	ldr	r2, .L_91cfc
	ldr	r0, .L_91d00
	ldr	r1, .L_91d04
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_91d08
	mov	r2, #40	@ 0x28
	bl	m4aMPlayVolumeControl
.L_91cf2:
	ldr	r1, .L_91d0c
	mov	r0, #17
	strb	r0, [r1, #3]
	b	.L_91d68
	.align	2, 0
.L_91cfc:
	.4byte	gMPlayTable
.L_91d00:
	.4byte	gSongTable
.L_91d04:
	.4byte	0x000013e4
.L_91d08:
	.4byte	0x0000ffff
.L_91d0c:
	.4byte	gUnk_3004A68
.L_91d10:
	mov	r0, #2
	bl	func_80919D4
	b	.L_91d24
.L_91d18:
	mov	r0, #1
	strb	r0, [r2, #4]
	b	.L_91d68
.L_91d1e:
	mov	r0, #2
	strb	r0, [r2, #4]
	mov	r7, #1
.L_91d24:
	cmp	r7, #0
	bne	.L_91d68
	ldr	r0, .L_91d44
	strb	r7, [r0, #3]
	ldrb	r3, [r0, #5]
	cmp	r3, #0
	beq	.L_91d4c
	ldr	r1, .L_91d48
	ldrb	r0, [r1, #10]
	cmp	r0, #31
	beq	.L_91d68
	mov	r0, #31
	strb	r0, [r1, #10]
	strb	r7, [r1, #8]
	strb	r7, [r1, #9]
	b	.L_91d68
.L_91d44:
	.4byte	gUnk_3004A68
.L_91d48:
	.4byte	gUnk_3004A70
.L_91d4c:
	ldr	r4, .L_91d70
	ldr	r2, .L_91d74
	ldr	r0, .L_91d78
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r0, r2
	ldrb	r1, [r0, #0]
	ldrb	r0, [r4, #10]
	cmp	r0, r1
	beq	.L_91d68
	strb	r1, [r4, #10]
	strb	r3, [r4, #8]
	strb	r3, [r4, #9]
.L_91d68:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_91d70:
	.4byte	gUnk_3004A70
.L_91d74:
	.4byte	sUnk_8742976
.L_91d78:
	.4byte	gTitleScreenStyle


thumb_func_start func_8091D7C
func_8091D7C:
	push	{lr}
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	ldr	r1, .L_91d94
	strb	r0, [r1, #3]
	cmp	r2, #6
	bhi	.L_91e1a
	lsl	r0, r2, #2
	ldr	r1, .L_91d98
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_91d94:
	.4byte	gUnk_3004A68
.L_91d98:
	.4byte	.L_91d9c
.L_91d9c:
	.4byte	.L_91e1a
	.4byte	.L_91db8
	.4byte	.L_91dc4
	.4byte	.L_91dcc
	.4byte	.L_91dd8
	.4byte	.L_91dbc
	.4byte	.L_91e10
.L_91db8:
	bl	func_8091E28
.L_91dbc:
	ldr	r0, .L_91dc0
	b	.L_91e1e
.L_91dc0:
	.4byte	0x00000125
.L_91dc4:
	ldr	r0, .L_91dc8
	b	.L_91e1e
.L_91dc8:
	.4byte	0x00000129
.L_91dcc:
	ldr	r0, .L_91dd4
	bl	m4aSongNumStart
	b	.L_91df4
.L_91dd4:
	.4byte	0x0000027d
.L_91dd8:
	ldr	r2, .L_91e00
	ldr	r0, .L_91e04
	ldr	r1, .L_91e08
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_91e0c
	mov	r2, #140	@ 0x8c
	bl	m4aMPlayVolumeControl
.L_91df4:
	bl	func_8091E28
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	b	.L_91e1e
	.align	2, 0
.L_91e00:
	.4byte	gMPlayTable
.L_91e04:
	.4byte	gSongTable
.L_91e08:
	.4byte	0x000013e4
.L_91e0c:
	.4byte	0x0000ffff
.L_91e10:
	bl	func_8091E50
	mov	r0, #148	@ 0x94
	lsl	r0, r0, #1
	b	.L_91e1e
.L_91e1a:
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
.L_91e1e:
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8091E28
func_8091E28:
	ldr	r3, .L_91e44
	ldr	r2, .L_91e48
	ldr	r0, .L_91e4c
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r2, #1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	mov	r1, #0
	strb	r0, [r3, #10]
	strb	r1, [r3, #8]
	strb	r1, [r3, #9]
	bx	lr
.L_91e44:
	.4byte	gUnk_3004A70
.L_91e48:
	.4byte	sUnk_8742976
.L_91e4c:
	.4byte	gTitleScreenStyle


thumb_func_start func_8091E50
func_8091E50:
	ldr	r0, .L_91e60
	mov	r2, #0
	mov	r1, #32
	strb	r1, [r0, #10]
	strb	r2, [r0, #8]
	strb	r2, [r0, #9]
	bx	lr
	.align	2, 0
.L_91e60:
	.4byte	gUnk_3004A70


thumb_func_start func_8091E64
func_8091E64:
	push	{lr}
	ldr	r0, .L_91e78
	ldrb	r1, [r0, #1]
	cmp	r1, #1
	beq	.L_91e8c
	cmp	r1, #1
	bgt	.L_91e7c
	cmp	r1, #0
	beq	.L_91e84
	b	.L_91e96
.L_91e78:
	.4byte	gUnk_3004A68
.L_91e7c:
	cmp	r1, #2
	beq	.L_91e92
	cmp	r1, #3
	bne	.L_91e96
.L_91e84:
	ldrb	r0, [r0, #1]
	bl	func_8091E9C
	b	.L_91e96
.L_91e8c:
	bl	func_8091F88
	b	.L_91e96
.L_91e92:
	bl	func_809200C
.L_91e96:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8091E9C
func_8091E9C:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	mov	r2, #0
	ldr	r0, .L_91ebc
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_91eca
	ldr	r0, .L_91ec0
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_91ec4
	mov	r0, #1
	b	.L_91edc
.L_91ebc:
	.4byte	gButtonsPressed
.L_91ec0:
	.4byte	gUnk_3004A68
.L_91ec4:
	cmp	r0, #2
	bne	.L_91ef6
	b	.L_91eda
.L_91eca:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_91ef6
	ldr	r0, .L_91ee4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_91ee8
.L_91eda:
	mov	r0, #2
.L_91edc:
	mov	r1, #0
	bl	func_8091D7C
	b	.L_91f80
.L_91ee4:
	.4byte	gUnk_3004A68
.L_91ee8:
	cmp	r0, #1
	bne	.L_91ef6
	mov	r0, #4
	mov	r1, #0
	bl	func_8091D7C
	mov	r2, #1
.L_91ef6:
	cmp	r2, #0
	bne	.L_91f80
	ldr	r0, .L_91f14
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_91f26
	ldr	r0, .L_91f18
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	beq	.L_91f1c
	mov	r0, #15
	b	.L_91f1e
	.align	2, 0
.L_91f14:
	.4byte	gButtonsPressed
.L_91f18:
	.4byte	gUnk_3004A68
.L_91f1c:
	mov	r0, #18
.L_91f1e:
	mov	r1, #2
	bl	func_8091D7C
	b	.L_91f80
.L_91f26:
	cmp	r4, #3
	bne	.L_91f52
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_91f80
	ldr	r0, .L_91f44
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	beq	.L_91f48
	mov	r0, #5
	mov	r1, #5
	bl	func_8091D7C
	b	.L_91f80
.L_91f44:
	.4byte	gUnk_3004A68
.L_91f48:
	mov	r0, #16
	mov	r1, #4
	bl	func_8091D7C
	b	.L_91f80
.L_91f52:
	cmp	r4, #0
	bne	.L_91f80
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_91f80
	ldr	r0, .L_91f70
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	beq	.L_91f78
	ldr	r0, .L_91f74
	bl	m4aSongNumStart
	b	.L_91f80
	.align	2, 0
.L_91f70:
	.4byte	gUnk_3004A68
.L_91f74:
	.4byte	0x00000129
.L_91f78:
	mov	r0, #3
	mov	r1, #5
	bl	func_8091D7C
.L_91f80:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8091F88
func_8091F88:
	push	{r4, lr}
	mov	r4, #1
	ldr	r0, .L_91fac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_91f96
	mov	r4, #2
.L_91f96:
	ldr	r0, .L_91fb0
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_91fb4
	mov	r0, #8
	mov	r1, #2
	bl	func_8091D7C
	b	.L_91ff6
.L_91fac:
	.4byte	gTitleScreenStyle
.L_91fb0:
	.4byte	gButtonsPressed
.L_91fb4:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_91fc6
	mov	r0, #6
	mov	r1, #3
	bl	func_8091D7C
	b	.L_91ff6
.L_91fc6:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_91fe0
	ldr	r1, .L_91fdc
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_91ff6
	sub	r0, #1
	strb	r0, [r1, #2]
	b	.L_91ffa
.L_91fdc:
	.4byte	gUnk_3004A68
.L_91fe0:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_91ff6
	ldr	r1, .L_92008
	ldrb	r0, [r1, #2]
	cmp	r0, r4
	bge	.L_91ff6
	add	r0, #1
	strb	r0, [r1, #2]
	mov	r4, #0
.L_91ff6:
	cmp	r4, #0
	bne	.L_92002
.L_91ffa:
	mov	r0, #7
	mov	r1, #0
	bl	func_8091D7C
.L_92002:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_92008:
	.4byte	gUnk_3004A68


thumb_func_start func_809200C
func_809200C:
	push	{lr}
	ldr	r0, .L_92030
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_92068
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_92038
	ldr	r0, .L_92034
	ldrb	r0, [r0, #2]
	cmp	r0, #1
	beq	.L_9208a
	mov	r0, #11
	b	.L_9204a
	.align	2, 0
.L_92030:
	.4byte	gButtonsPressed
.L_92034:
	.4byte	gUnk_3004A68
.L_92038:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_92058
	ldr	r0, .L_92054
	ldrb	r0, [r0, #2]
	cmp	r0, #0
	beq	.L_9208a
	mov	r0, #12
.L_9204a:
	mov	r1, #0
	bl	func_8091D7C
	b	.L_9208a
	.align	2, 0
.L_92054:
	.4byte	gUnk_3004A68
.L_92058:
	ldr	r0, .L_92074
	ldrb	r0, [r0, #2]
	cmp	r0, #0
	bne	.L_92078
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_9208a
.L_92068:
	mov	r0, #10
	mov	r1, #2
	bl	func_8091D7C
	b	.L_9208a
	.align	2, 0
.L_92074:
	.4byte	gUnk_3004A68
.L_92078:
	cmp	r0, #1
	bne	.L_9208a
	and	r0, r1
	cmp	r0, #0
	beq	.L_9208a
	mov	r0, #9
	mov	r1, #6
	bl	func_8091D7C
.L_9208a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8092090
func_8092090:
	push	{lr}
	ldr	r1, .L_920a8
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_920ac
	mov	r0, #13
	mov	r1, #0
	bl	func_8091D7C
	b	.L_920f4
.L_920a8:
	.4byte	gButtonsPressed
.L_920ac:
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_920cc
	ldr	r0, .L_920c8
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	bne	.L_920cc
	mov	r0, #14
	mov	r1, #1
	bl	func_8091D7C
	b	.L_920f4
	.align	2, 0
.L_920c8:
	.4byte	gUnk_3004A68
.L_920cc:
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_920f4
	ldr	r0, .L_920e8
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	beq	.L_920ec
	mov	r0, #15
	mov	r1, #2
	bl	func_8091D7C
	b	.L_920f4
.L_920e8:
	.4byte	gUnk_3004A68
.L_920ec:
	mov	r0, #18
	mov	r1, #2
	bl	func_8091D7C
.L_920f4:
	pop	{r0}
	bx	r0


thumb_func_start func_80920F8
func_80920F8:
	push	{lr}
	ldr	r0, .L_9210c
	ldrb	r2, [r0, #0]
	cmp	r2, #1
	beq	.L_92128
	cmp	r2, #1
	bgt	.L_92110
	cmp	r2, #0
	beq	.L_92116
	b	.L_92156
.L_9210c:
	.4byte	gUnk_3004A68
.L_92110:
	cmp	r2, #2
	beq	.L_92148
	b	.L_92156
.L_92116:
	ldr	r1, .L_92124
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #72	@ 0x48
	b	.L_92134
	.align	2, 0
.L_92124:
	.4byte	0x04000042
.L_92128:
	ldr	r1, .L_9213c
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r3, .L_92140
	add	r0, r3, #0
.L_92134:
	strh	r0, [r1, #0]
	ldr	r0, .L_92144
	strb	r2, [r0, #0]
	b	.L_92156
.L_9213c:
	.4byte	0x04000042
.L_92140:
	.4byte	0x00004890
.L_92144:
	.4byte	gSelectedSaveFile
.L_92148:
	ldr	r1, .L_92160
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r2, .L_92164
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_92156:
	bl	func_80924B0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_92160:
	.4byte	0x04000042
.L_92164:
	.4byte	0x00008fa0


thumb_func_start func_8092168
func_8092168:
	push	{lr}
	mov	r0, #0
	mov	r1, #0
	bl	func_80710D8
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8092178
func_8092178:
	push	{lr}
	mov	r0, #1
	mov	r1, #0
	bl	func_80710D8
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8092188
func_8092188:
	push	{r4, r5, lr}
	ldr	r0, .L_921a0
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #2
	bne	.L_921a8
	ldr	r0, .L_921a4
	mov	r1, #160	@ 0xa0
	strh	r1, [r0, #0]
	mov	r1, #12
	strh	r1, [r0, #2]
	b	.L_9223c
.L_921a0:
	.4byte	gUnk_3004A68
.L_921a4:
	.4byte	gUnk_3004A70
.L_921a8:
	ldr	r1, .L_92210
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	mov	r1, #127	@ 0x7f
	and	r1, r0
	neg	r0, r1
	orr	r0, r1
	lsr	r3, r0, #31
	ldr	r1, .L_92214
	lsl	r0, r3, #2
	add	r0, r0, r1
	ldrb	r1, [r5, #1]
	ldr	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r2, [r0, #0]
	cmp	r1, #2
	bgt	.L_921d8
	cmp	r1, #1
	blt	.L_921d8
	ldrb	r0, [r5, #2]
	lsl	r0, r0, #2
	add	r2, r2, r0
.L_921d8:
	ldr	r1, .L_92218
	lsl	r0, r3, #2
	add	r4, r0, r1
	ldr	r3, [r4, #0]
	add	r0, r3, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	add	r2, #1
	cmp	r0, #1
	bne	.L_92220
	ldr	r1, .L_9221c
	add	r0, r3, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r3, [r1, #12]
	add	r0, r0, r3
	strh	r0, [r1, #0]
	ldr	r0, [r4, #0]
	add	r0, r2, r0
	ldrb	r0, [r0, #2]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r2, [r1, #14]
	add	r0, r0, r2
	b	.L_9223a
	.align	2, 0
.L_92210:
	.4byte	gUnk_3003BF8
.L_92214:
	.4byte	sUnk_878F884
.L_92218:
	.4byte	sUnk_878F87C
.L_9221c:
	.4byte	gUnk_3004A70
.L_92220:
	ldr	r1, .L_92244
	ldrb	r0, [r5, #0]
	add	r0, r2, r0
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	strh	r0, [r1, #0]
	ldr	r0, [r4, #0]
	add	r0, r2, r0
	ldrb	r0, [r0, #2]
	lsl	r0, r0, #24
	asr	r0, r0, #24
.L_9223a:
	strh	r0, [r1, #2]
.L_9223c:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_92244:
	.4byte	gUnk_3004A70


thumb_func_start func_8092248
func_8092248:
	push	{r4, r5, lr}
	mov	r2, #0
	ldr	r0, .L_92260
	ldrb	r1, [r0, #1]
	add	r5, r0, #0
	cmp	r1, #1
	beq	.L_92264
	cmp	r1, #1
	ble	.L_922d2
	cmp	r1, #2
	beq	.L_922c0
	b	.L_922d2
.L_92260:
	.4byte	gUnk_3004A68
.L_92264:
	ldr	r0, .L_92288
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_92298
	ldr	r3, .L_9228c
	ldr	r0, .L_92290
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r0, .L_92294
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	ldrb	r1, [r1, #4]
	add	r0, r0, r1
	add	r0, r0, r3
	b	.L_922ae
	.align	2, 0
.L_92288:
	.4byte	gTitleScreenStyle
.L_9228c:
	.4byte	sUnk_87429D6
.L_92290:
	.4byte	gUnk_3003BF8
.L_92294:
	.4byte	gLanguage
.L_92298:
	ldr	r2, .L_922b4
	ldr	r0, .L_922b8
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r0, .L_922bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	ldrb	r1, [r1, #4]
	add	r0, r0, r1
	add	r0, r0, r2
.L_922ae:
	ldrb	r2, [r0, #0]
	mov	r4, #1
	b	.L_922d2
.L_922b4:
	.4byte	sUnk_87429D2
.L_922b8:
	.4byte	gUnk_3003BF8
.L_922bc:
	.4byte	gLanguage
.L_922c0:
	ldr	r1, .L_92300
	ldr	r0, .L_92304
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	ldrb	r2, [r5, #2]
	add	r0, r0, r2
	add	r0, r0, r1
	ldrb	r2, [r0, #0]
	mov	r4, #0
.L_922d2:
	ldr	r3, .L_92308
	ldrb	r0, [r3, #22]
	cmp	r2, r0
	beq	.L_922fa
	mov	r0, #0
	strb	r2, [r3, #22]
	strb	r0, [r3, #20]
	strb	r0, [r3, #21]
	ldr	r2, .L_9230c
	ldrb	r0, [r5, #0]
	lsl	r1, r4, #1
	add	r1, r1, r4
	add	r0, r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strh	r0, [r3, #12]
	add	r2, #2
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	strh	r0, [r3, #14]
.L_922fa:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_92300:
	.4byte	sUnk_87429DC
.L_92304:
	.4byte	gLanguage
.L_92308:
	.4byte	gUnk_3004A70
.L_9230c:
	.4byte	sUnk_87429E0


thumb_func_start func_8092310
func_8092310:
	push	{r4, lr}
	mov	r3, #0
	ldr	r1, .L_92360
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	beq	.L_92326
	ldrb	r0, [r1, #5]
	mov	r3, #29
	cmp	r0, #0
	beq	.L_92326
	mov	r3, #28
.L_92326:
	ldr	r0, .L_92364
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r4, r0, #0
	add	r4, #10
	ldr	r2, .L_92368
	add	r0, r2, #0
	add	r0, #58	@ 0x3a
	ldrb	r1, [r0, #0]
	cmp	r3, r1
	beq	.L_9234c
	mov	r1, #0
	strb	r3, [r0, #0]
	sub	r0, #2
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
.L_9234c:
	mov	r1, #48	@ 0x30
	ldrsh	r0, [r2, r1]
	cmp	r4, r0
	beq	.L_9235a
	strh	r4, [r2, #48]	@ 0x30
	mov	r0, #120	@ 0x78
	strh	r0, [r2, #50]	@ 0x32
.L_9235a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_92360:
	.4byte	gUnk_3004A68
.L_92364:
	.4byte	gSelectedSaveFile
.L_92368:
	.4byte	gUnk_3004A70


thumb_func_start func_809236C
func_809236C:
	ldr	r2, .L_923a8
	ldr	r0, .L_923ac
	ldrb	r0, [r0, #0]
	lsl	r1, r0, #1
	add	r0, r1, r2
	ldrb	r3, [r0, #0]
	ldr	r0, .L_923b0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_92386
	add	r0, r2, #1
	add	r0, r1, r0
	ldrb	r3, [r0, #0]
.L_92386:
	ldr	r2, .L_923b4
	add	r0, r2, #0
	add	r0, #70	@ 0x46
	ldrb	r1, [r0, #0]
	cmp	r3, r1
	beq	.L_923a6
	mov	r1, #0
	strb	r3, [r0, #0]
	sub	r0, #2
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #156	@ 0x9c
	strh	r0, [r2, #60]	@ 0x3c
	mov	r0, #50	@ 0x32
	strh	r0, [r2, #62]	@ 0x3e
.L_923a6:
	bx	lr
.L_923a8:
	.4byte	sUnk_8742982
.L_923ac:
	.4byte	gLanguage
.L_923b0:
	.4byte	gUnk_3004A68
.L_923b4:
	.4byte	gUnk_3004A70


thumb_func_start func_80923B8
func_80923B8:
	push	{r4, r5, lr}
	ldr	r3, .L_9244c
	mov	r0, #34	@ 0x22
	add	r0, r0, r3
	mov	ip, r0
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r1, r3, #0
	add	r1, #46	@ 0x2e
	strb	r0, [r1, #0]
	ldr	r2, .L_92450
	ldrb	r1, [r2, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	add	r5, r2, #0
	cmp	r0, #0
	beq	.L_923f8
	ldr	r4, .L_92454
	ldr	r0, .L_92458
	ldrb	r1, [r0, #0]
	lsl	r2, r1, #1
	ldr	r0, .L_9245c
	ldrb	r0, [r0, #0]
	add	r2, r2, r1
	cmp	r0, #0
	bne	.L_923f0
	add	r2, #1
.L_923f0:
	add	r0, r2, r4
	ldrb	r0, [r0, #0]
	mov	r1, ip
	strb	r0, [r1, #0]
.L_923f8:
	ldrb	r1, [r5, #9]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_92420
	ldr	r4, .L_92454
	ldr	r0, .L_92458
	ldrb	r1, [r0, #0]
	lsl	r2, r1, #1
	ldr	r0, .L_9245c
	ldrb	r0, [r0, #0]
	add	r2, r2, r1
	cmp	r0, #1
	bne	.L_92416
	add	r2, #1
.L_92416:
	add	r0, r2, r4
	ldrb	r0, [r0, #0]
	add	r1, r3, #0
	add	r1, #46	@ 0x2e
	strb	r0, [r1, #0]
.L_92420:
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #0
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #24
	strh	r0, [r3, #24]
	mov	r2, #216	@ 0xd8
	strh	r2, [r3, #26]
	add	r0, r3, #0
	add	r0, #44	@ 0x2c
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #96	@ 0x60
	strh	r0, [r3, #36]	@ 0x24
	strh	r2, [r3, #38]	@ 0x26
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_9244c:
	.4byte	gUnk_3004A70
.L_92450:
	.4byte	gUnk_3003BF8
.L_92454:
	.4byte	sUnk_874297C
.L_92458:
	.4byte	gLanguage
.L_9245c:
	.4byte	gUnk_3004A68


thumb_func_start func_8092460
func_8092460:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r0, .L_924a0
	ldrb	r0, [r0, #0]
	mov	r2, #3
	cmp	r0, #0
	bne	.L_92472
	mov	r2, #2
.L_92472:
	ldr	r1, .L_924a4
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r3, r0, r1
	mov	r0, #0
	strb	r0, [r3, #8]
	strb	r0, [r3, #9]
	cmp	r4, #1
	bne	.L_92496
	ldr	r2, .L_924a8
	ldr	r0, .L_924ac
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r2, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
.L_92496:
	strb	r0, [r3, #10]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_924a0:
	.4byte	gSelectedSaveFile
.L_924a4:
	.4byte	gUnk_3004A70
.L_924a8:
	.4byte	sUnk_874297C
.L_924ac:
	.4byte	gLanguage


thumb_func_start func_80924B0
func_80924B0:
	push	{r4, lr}
	ldr	r1, .L_92524
	mov	r0, #34	@ 0x22
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r0, [r0, #0]
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_924ea
	ldr	r4, .L_92528
	ldr	r0, .L_9252c
	ldrb	r1, [r0, #0]
	lsl	r2, r1, #1
	ldr	r0, .L_92530
	ldrb	r0, [r0, #0]
	add	r2, r2, r1
	cmp	r0, #0
	bne	.L_924d6
	add	r2, #1
.L_924d6:
	add	r0, r2, r4
	ldrb	r0, [r0, #0]
	mov	r1, #0
	mov	r2, ip
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
.L_924ea:
	mov	r0, #46	@ 0x2e
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_9251e
	ldr	r4, .L_92528
	ldr	r0, .L_9252c
	ldrb	r1, [r0, #0]
	lsl	r2, r1, #1
	ldr	r0, .L_92530
	ldrb	r0, [r0, #0]
	add	r2, r2, r1
	cmp	r0, #1
	bne	.L_9250a
	add	r2, #1
.L_9250a:
	add	r0, r2, r4
	ldrb	r0, [r0, #0]
	mov	r1, #0
	mov	r2, ip
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #44	@ 0x2c
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
.L_9251e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_92524:
	.4byte	gUnk_3004A70
.L_92528:
	.4byte	sUnk_874297C
.L_9252c:
	.4byte	gLanguage
.L_92530:
	.4byte	gUnk_3004A68


thumb_func_start func_8092534
func_8092534:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_9257c
	mov	ip, r0
	ldr	r2, .L_92580
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #3
	add	ip, r0
	mov	r9, r1
	mov	r7, r9
	mov	r4, #0
.L_92550:
	lsl	r0, r4, #1
	add	r1, r0, r4
	lsl	r1, r1, #2
	ldr	r2, .L_92584
	add	r3, r1, r2
	ldrb	r1, [r3, #10]
	add	r2, r0, #0
	add	r6, r4, #1
	cmp	r1, #0
	bne	.L_92566
	b	.L_927ac
.L_92566:
	add	r0, r1, #0
	sub	r0, #1
	cmp	r0, #42	@ 0x2a
	bls	.L_92570
	b	.L_92710
.L_92570:
	lsl	r0, r0, #2
	ldr	r1, .L_92588
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_9257c:
	.4byte	gOamBuffer
.L_92580:
	.4byte	gOamSlotsUsed
.L_92584:
	.4byte	gUnk_3004A70
.L_92588:
	.4byte	.L_9258c
.L_9258c:
	.4byte	.L_92638
	.4byte	.L_9267c
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92710
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_926c8
	.4byte	.L_926c8
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_926c8
	.4byte	.L_92638
	.4byte	.L_9267c
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
	.4byte	.L_92638
.L_92638:
	ldr	r1, .L_92674
	add	r0, r2, r4
	lsl	r0, r0, #2
	ldr	r5, .L_92678
	add	r3, r0, r5
	ldrb	r0, [r3, #10]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r1, [r3, #8]
	ldrb	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_92710
	mov	r0, #0
	strb	r0, [r3, #8]
	ldrb	r0, [r3, #9]
	add	r0, #1
	strb	r0, [r3, #9]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_92710
	strb	r0, [r3, #9]
	b	.L_92710
	.align	2, 0
.L_92674:
	.4byte	sUnk_878F88C
.L_92678:
	.4byte	gUnk_3004A70
.L_9267c:
	ldr	r1, .L_926c0
	add	r0, r2, r4
	lsl	r0, r0, #2
	ldr	r5, .L_926c4
	add	r3, r0, r5
	ldrb	r0, [r3, #10]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r1, [r3, #8]
	ldrb	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_92710
	mov	r0, #0
	strb	r0, [r3, #8]
	ldrb	r0, [r3, #9]
	add	r0, #1
	strb	r0, [r3, #9]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_92710
	ldrb	r0, [r3, #10]
	add	r0, #1
	strb	r0, [r3, #10]
	add	r5, #8
	strb	r1, [r3, #8]
	strb	r1, [r3, #9]
	b	.L_92710
.L_926c0:
	.4byte	sUnk_878F88C
.L_926c4:
	.4byte	gUnk_3004A70
.L_926c8:
	ldr	r1, .L_92708
	add	r0, r2, r4
	lsl	r0, r0, #2
	ldr	r5, .L_9270c
	add	r3, r0, r5
	ldrb	r0, [r3, #10]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r1, [r3, #8]
	ldrb	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_92710
	mov	r0, #0
	strb	r0, [r3, #8]
	ldrb	r0, [r3, #9]
	add	r0, #1
	strb	r0, [r3, #9]
	ldrb	r0, [r3, #9]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_92710
	strb	r0, [r3, #10]
	strb	r0, [r3, #8]
	strb	r0, [r3, #9]
	add	r6, r4, #1
	b	.L_927ac
.L_92708:
	.4byte	sUnk_878F88C
.L_9270c:
	.4byte	gUnk_3004A70
.L_92710:
	add	r2, r2, r4
	lsl	r2, r2, #2
	ldr	r0, .L_927c8
	add	r2, r2, r0
	ldrb	r0, [r2, #8]
	add	r0, #1
	strb	r0, [r2, #8]
	ldr	r1, .L_927cc
	ldrh	r0, [r2, #0]
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	ldr	r1, .L_927d0
	ldrh	r0, [r2, #2]
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	ldrb	r0, [r2, #9]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r3, [r5, #0]
	ldrh	r0, [r3, #0]
	add	r9, r0
	add	r3, #2
	add	r6, r4, #1
.L_92748:
	.4byte	0xda2f454f
	ldr	r0, .L_927d4
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r8, r1
	lsl	r1, r7, #3
	add	r4, r1, r0
	mov	r1, r9
	sub	r7, r1, r7
.L_9275c:
	ldrh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	strh	r0, [r2, #0]
	mov	r1, #2
	add	ip, r1
	add	r0, sl
	strb	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	mov	r2, ip
	strh	r1, [r2, #0]
	mov	r0, #2
	add	ip, r0
	add	r1, r8
	ldr	r2, .L_927d8
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_927dc
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #5]
	mov	r2, #4
	add	ip, r2
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_9275c
	mov	r7, r9
.L_927ac:
	add	r4, r6, #0
	cmp	r4, #5
	bgt	.L_927b4
	b	.L_92550
.L_927b4:
	mov	r0, r9
	ldr	r5, .L_927e0
	strb	r0, [r5, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_927c8:
	.4byte	gUnk_3004A70
.L_927cc:
	.4byte	gBg1YPosition
.L_927d0:
	.4byte	gBg1XPosition
.L_927d4:
	.4byte	gOamBuffer
.L_927d8:
	.4byte	0x000001ff
.L_927dc:
	.4byte	0xfffffe00
.L_927e0:
	.4byte	gOamSlotsUsed
