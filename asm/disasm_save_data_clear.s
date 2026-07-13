.include "macros.s.inc"


thumb_func_start SaveResetSubroutine
SaveResetSubroutine:
	push	{r4, r5, lr}
	mov	r5, #0
	ldr	r0, .L_92808
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldr	r1, .L_9280c
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	add	r3, r0, #0
	add	r4, r1, #0
	cmp	r2, #4
	bhi	.L_928ca
	lsl	r0, r2, #2
	ldr	r1, .L_92810
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_92808:
	.4byte	gUnk_300188E
.L_9280c:
	.4byte	gSubGameMode
.L_92810:
	.4byte	.L_92814
.L_92814:
	.4byte	.L_92828
	.4byte	.L_92838
	.4byte	.L_9286c
	.4byte	.L_928a8
	.4byte	.L_928b6
.L_92828:
	bl	func_8092B30
	ldr	r1, .L_92834
	ldrh	r0, [r1, #0]
	b	.L_928be
	.align	2, 0
.L_92834:
	.4byte	gSubGameMode
.L_92838:
	ldr	r1, .L_92848
	ldrh	r0, [r1, #0]
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L_9284c
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_928ca
.L_92848:
	.4byte	gBldy
.L_9284c:
	mov	r0, #143	@ 0x8f
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_92864
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_92868
	strh	r4, [r0, #0]
	b	.L_928ca
	.align	2, 0
.L_92864:
	.4byte	gSubGameMode
.L_92868:
	.4byte	gUnk_300188E
.L_9286c:
	ldr	r4, .L_92898
	bl	func_80928E4
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	asr	r2, r0, #24
	cmp	r2, #0
	beq	.L_928ca
	ldr	r1, .L_9289c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_928a0
	mov	r0, #0
	strh	r0, [r1, #0]
	cmp	r2, #1
	beq	.L_928ca
	ldr	r1, .L_928a4
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	b	.L_928ca
	.align	2, 0
.L_92898:
	.4byte	gUnk_3000C3E
.L_9289c:
	.4byte	gSubGameMode
.L_928a0:
	.4byte	gUnk_300188E
.L_928a4:
	.4byte	0x04000050
.L_928a8:
	ldrh	r0, [r3, #0]
	cmp	r0, #40	@ 0x28
	bls	.L_928ca
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_928ca
.L_928b6:
	ldr	r1, .L_928c4
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_928c8
.L_928be:
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_928ca
.L_928c4:
	.4byte	gBldy
.L_928c8:
	mov	r5, #1
.L_928ca:
	ldr	r1, .L_928e0
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_8092DFC
	bl	ResetFreeOam
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_928e0:
	.4byte	gOamSlotsUsed


thumb_func_start func_80928E4
func_80928E4:
	push	{r4, lr}
	mov	r4, #0
	ldr	r0, .L_928fc
	ldrb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_92900
	bl	func_8092914
	b	.L_92906
	.align	2, 0
.L_928fc:
	.4byte	gUnk_3004AB9
.L_92900:
	bl	func_80929C4
	add	r4, r0, #0
.L_92906:
	bl	func_8092D2C
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8092914
func_8092914:
	ldr	r1, .L_9293c
	ldrb	r0, [r1, #10]
	add	r3, r1, #0
	cmp	r0, #2
	beq	.L_929b8
	ldr	r2, .L_92940
	ldrb	r1, [r2, #0]
	mov	r0, #127	@ 0x7f
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_92944
	strb	r0, [r1, #0]
	ldrb	r2, [r2, #0]
	cmp	r2, #1
	beq	.L_92970
	cmp	r2, #1
	bgt	.L_92948
	cmp	r2, #0
	beq	.L_92952
	b	.L_929a0
.L_9293c:
	.4byte	gUnk_3004A70
.L_92940:
	.4byte	gUnk_3004AB9
.L_92944:
	.4byte	gUnk_3004AB8
.L_92948:
	cmp	r2, #2
	beq	.L_9298c
	cmp	r2, #3
	beq	.L_92994
	b	.L_929a0
.L_92952:
	ldr	r1, .L_92968
	ldr	r0, .L_9296c
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	add	r1, r3, #0
	add	r1, #34	@ 0x22
	strb	r0, [r1, #0]
	strb	r2, [r3, #22]
	b	.L_929a0
	.align	2, 0
.L_92968:
	.4byte	sUnk_8746D70
.L_9296c:
	.4byte	gLanguage
.L_92970:
	ldr	r1, .L_92984
	ldr	r0, .L_92988
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	add	r2, r3, #0
	add	r2, #34	@ 0x22
	mov	r0, #0
	strb	r1, [r2, #0]
	b	.L_9299e
.L_92984:
	.4byte	sUnk_8746D72
.L_92988:
	.4byte	gLanguage
.L_9298c:
	ldr	r1, .L_92990
	b	.L_92996
.L_92990:
	.4byte	sUnk_8746D74
.L_92994:
	ldr	r1, .L_929bc
.L_92996:
	ldr	r0, .L_929c0
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
.L_9299e:
	strb	r0, [r3, #22]
.L_929a0:
	mov	r0, #0
	strb	r0, [r3, #20]
	strb	r0, [r3, #21]
	add	r1, r3, #0
	add	r1, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r1, #1
	strb	r1, [r3, #10]
	strb	r0, [r3, #8]
	strb	r0, [r3, #9]
.L_929b8:
	bx	lr
	.align	2, 0
.L_929bc:
	.4byte	sUnk_8746D76
.L_929c0:
	.4byte	gLanguage


thumb_func_start func_80929C4
func_80929C4:
	push	{r4, lr}
	mov	r4, #0
	mov	r3, #0
	ldr	r0, .L_929dc
	ldrb	r1, [r0, #0]
	cmp	r1, #1
	beq	.L_92a12
	cmp	r1, #1
	bgt	.L_929e0
	cmp	r1, #0
	beq	.L_929ea
	b	.L_92a9e
.L_929dc:
	.4byte	gUnk_3004AB8
.L_929e0:
	cmp	r1, #2
	beq	.L_92a40
	cmp	r1, #3
	beq	.L_92a60
	b	.L_92a9e
.L_929ea:
	ldr	r0, .L_929fc
	ldrh	r1, [r0, #0]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a04
	ldr	r1, .L_92a00
	mov	r0, #129	@ 0x81
	b	.L_92a70
.L_929fc:
	.4byte	gButtonsPressed
.L_92a00:
	.4byte	gUnk_3004AB9
.L_92a04:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a9e
	mov	r4, #2
	mov	r3, #3
	b	.L_92a9e
.L_92a12:
	ldr	r0, .L_92a24
	ldrh	r2, [r0, #0]
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_92a2c
	ldr	r1, .L_92a28
	mov	r0, #128	@ 0x80
	b	.L_92a70
.L_92a24:
	.4byte	gButtonsPressed
.L_92a28:
	.4byte	gUnk_3004AB9
.L_92a2c:
	and	r1, r2
	cmp	r1, #0
	beq	.L_92a9e
	ldr	r1, .L_92a3c
	mov	r0, #130	@ 0x82
	strb	r0, [r1, #0]
	mov	r3, #6
	b	.L_92a9e
.L_92a3c:
	.4byte	gUnk_3004AB9
.L_92a40:
	ldr	r0, .L_92a54
	ldrh	r1, [r0, #0]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a5c
	ldr	r1, .L_92a58
	mov	r0, #131	@ 0x83
	b	.L_92a70
	.align	2, 0
.L_92a54:
	.4byte	gButtonsPressed
.L_92a58:
	.4byte	gUnk_3004AB9
.L_92a5c:
	mov	r0, #3
	b	.L_92a90
.L_92a60:
	ldr	r0, .L_92a78
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a80
	ldr	r1, .L_92a7c
	mov	r0, #130	@ 0x82
.L_92a70:
	strb	r0, [r1, #0]
	mov	r3, #2
	b	.L_92a9e
	.align	2, 0
.L_92a78:
	.4byte	gButtonsPressed
.L_92a7c:
	.4byte	gUnk_3004AB9
.L_92a80:
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a8e
	mov	r4, #1
	mov	r3, #4
	b	.L_92a9e
.L_92a8e:
	mov	r0, #2
.L_92a90:
	and	r0, r1
	cmp	r0, #0
	beq	.L_92a9e
	ldr	r1, .L_92ab8
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	mov	r3, #5
.L_92a9e:
	cmp	r3, #1
	bne	.L_92ac4
	ldr	r1, .L_92abc
	mov	r2, #0
	mov	r0, #2
	strb	r0, [r1, #10]
	strb	r2, [r1, #8]
	strb	r2, [r1, #9]
	ldr	r0, .L_92ac0
	bl	m4aSongNumStart
	b	.L_92b22
	.align	2, 0
.L_92ab8:
	.4byte	gUnk_3004AB9
.L_92abc:
	.4byte	gUnk_3004A70
.L_92ac0:
	.4byte	0x00000125
.L_92ac4:
	cmp	r3, #2
	bne	.L_92ad2
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_92b22
.L_92ad2:
	cmp	r3, #3
	bne	.L_92ae8
	ldr	r0, .L_92ae4
	mov	r1, #0
	strb	r3, [r0, #10]
	strb	r1, [r0, #8]
	strb	r1, [r0, #9]
	b	.L_92b0c
	.align	2, 0
.L_92ae4:
	.4byte	gUnk_3004A70
.L_92ae8:
	cmp	r3, #4
	bne	.L_92b08
	ldr	r1, .L_92b04
	mov	r2, #0
	mov	r0, #2
	strb	r0, [r1, #10]
	strb	r2, [r1, #8]
	strb	r2, [r1, #9]
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_92b22
	.align	2, 0
.L_92b04:
	.4byte	gUnk_3004A70
.L_92b08:
	cmp	r3, #5
	bne	.L_92b18
.L_92b0c:
	ldr	r0, .L_92b14
	bl	m4aSongNumStart
	b	.L_92b22
.L_92b14:
	.4byte	0x00000129
.L_92b18:
	cmp	r3, #6
	bne	.L_92b22
	ldr	r0, .L_92b2c
	bl	m4aSongNumStart
.L_92b22:
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_92b2c:
	.4byte	0x00000125


thumb_func_start func_8092B30
func_8092B30:
	push	{r4, lr}
	ldr	r3, .L_92bbc
	mov	r4, #0
	strh	r4, [r3, #0]
	ldr	r2, .L_92bc0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_92bc4
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_92bc8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_92bcc
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r0, .L_92bd0
	bl	InterruptCallbackSetVBlank
	ldr	r1, .L_92bd4
	mov	r0, #191	@ 0xbf
	strh	r0, [r1, #0]
	ldr	r0, .L_92bd8
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r0, .L_92bdc
	strh	r1, [r0, #0]
	bl	InitializeVideoMemory
	ldr	r0, .L_92be0
	strb	r4, [r0, #0]
	bl	ResetFreeOam
	ldr	r1, .L_92be4
.L_92b74:
	ldrh	r0, [r1, #0]
	sub	r0, #21
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #139	@ 0x8b
	bls	.L_92b74
	ldr	r0, .L_92be8
	ldr	r1, .L_92bec
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r2, .L_92bf0
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_92bf4
	str	r1, [r0, #0]
	ldr	r1, .L_92bf8
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r0, .L_92bfc
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_92c00
	ldr	r1, .L_92c04
	bl	LZ77UnCompVram
	ldr	r0, .L_92c08
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_92c10
	ldr	r1, .L_92c0c
	b	.L_92c12
.L_92bbc:
	.4byte	0x04000208
.L_92bc0:
	.4byte	0x04000004
.L_92bc4:
	.4byte	0x0000ffef
.L_92bc8:
	.4byte	0x04000200
.L_92bcc:
	.4byte	0x0000fffd
.L_92bd0:
	.4byte	func_8092DEC
.L_92bd4:
	.4byte	0x04000050
.L_92bd8:
	.4byte	gBldy
.L_92bdc:
	.4byte	0x04000054
.L_92be0:
	.4byte	gOamSlotsUsed
.L_92be4:
	.4byte	0x04000006
.L_92be8:
	.4byte	0x040000d4
.L_92bec:
	.4byte	sUnk_8746480
.L_92bf0:
	.4byte	0x80000100
.L_92bf4:
	.4byte	sUnk_8746680
.L_92bf8:
	.4byte	0x05000200
.L_92bfc:
	.4byte	sUnk_8745350
.L_92c00:
	.4byte	sUnk_8745B58
.L_92c04:
	.4byte	0x06010000
.L_92c08:
	.4byte	gLanguage
.L_92c0c:
	.4byte	sUnk_8746880
.L_92c10:
	ldr	r1, .L_92c88
.L_92c12:
	ldr	r2, .L_92c8c
	mov	r0, #0
	bl	DecompressRoomBackground
	add	r1, r0, #0
	ldr	r2, .L_92c90
	ldr	r0, .L_92c8c
	str	r0, [r2, #0]
	ldr	r0, .L_92c94
	str	r0, [r2, #4]
	lsr	r0, r1, #31
	add	r0, r1, r0
	asr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_92c98
	mov	r4, #0
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	ldr	r1, .L_92c9c
	ldr	r2, .L_92ca0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_92ca4
	strh	r4, [r0, #0]
	ldr	r0, .L_92ca8
	strh	r4, [r0, #0]
	ldr	r0, .L_92cac
	strh	r4, [r0, #0]
	ldr	r0, .L_92cb0
	strb	r4, [r0, #0]
	ldr	r1, .L_92cb4
	mov	r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_92cb8
	strh	r4, [r0, #0]
	bl	func_8092CC4
	ldr	r0, .L_92cbc
	strb	r4, [r0, #0]
	bl	func_8092DFC
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_92cc0
	bl	InterruptCallbackSetVBlank
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_92c88:
	.4byte	sUnk_8746926
.L_92c8c:
	.4byte	0x0201f040
.L_92c90:
	.4byte	0x040000d4
.L_92c94:
	.4byte	0x0600d000
.L_92c98:
	.4byte  0x0400000e
.L_92c9c:
	.4byte	0x0400000a
.L_92ca0:
	.4byte	0x00003a01
.L_92ca4:
	.4byte	0x04000008
.L_92ca8:
	.4byte	gUnk_3001874
.L_92cac:
	.4byte	0x04000052
.L_92cb0:
	.4byte	gUnk_3000C3F
.L_92cb4:
	.4byte	gBg1XPosition
.L_92cb8:
	.4byte	gBg1YPosition
.L_92cbc:
	.4byte	gOamSlotsUsed
.L_92cc0:
	.4byte	func_8092DA0


thumb_func_start func_8092CC4
func_8092CC4:
	push	{lr}
	ldr	r1, .L_92d18
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_92d1c
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	ldr	r2, .L_92d20
	ldr	r1, .L_92d24
	ldr	r0, .L_92d28
	ldrb	r0, [r0, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	add	r3, r2, #0
	add	r3, #34	@ 0x22
	mov	r1, #0
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #102	@ 0x66
	strh	r0, [r2, #24]
	mov	r0, #120	@ 0x78
	strh	r0, [r2, #26]
	mov	r0, #1
	strb	r0, [r2, #10]
	strb	r1, [r2, #8]
	strb	r1, [r2, #9]
	strb	r1, [r2, #22]
	strb	r1, [r2, #20]
	strb	r1, [r2, #21]
	mov	r0, #92	@ 0x5c
	strh	r0, [r2, #12]
	mov	r0, #144	@ 0x90
	strh	r0, [r2, #14]
	bl	func_8092D2C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_92d18:
	.4byte	gUnk_3004AB8
.L_92d1c:
	.4byte	gUnk_3004AB9
.L_92d20:
	.4byte	gUnk_3004A70
.L_92d24:
	.4byte	sUnk_8746D70
.L_92d28:
	.4byte	gLanguage


thumb_func_start func_8092D2C
func_8092D2C:
	push	{r4, lr}
	ldr	r3, .L_92d5c
	ldrb	r0, [r3, #0]
	cmp	r0, #1
	bhi	.L_92d68
	ldr	r2, .L_92d60
	ldr	r1, .L_92d64
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r4, [r2, #24]
	add	r0, r0, r4
	strh	r0, [r2, #0]
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #26]
	b	.L_92d8e
.L_92d5c:
	.4byte	gUnk_3004AB8
.L_92d60:
	.4byte	gUnk_3004A70
.L_92d64:
	.4byte	sUnk_8746D78
.L_92d68:
	ldr	r2, .L_92d98
	ldr	r1, .L_92d9c
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r4, [r2, #12]
	add	r0, r0, r4
	strh	r0, [r2, #0]
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #14]
.L_92d8e:
	add	r0, r0, r1
	strh	r0, [r2, #2]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_92d98:
	.4byte	gUnk_3004A70
.L_92d9c:
	.4byte	sUnk_8746D78

thumb_func_start func_8092DA0
func_8092DA0:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_92dd4
	ldr	r0, .L_92dd8
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_92ddc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #128	@ 0x80
	ldr	r0, .L_92de0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	sub	r1, #64	@ 0x40
	ldr	r0, .L_92de4
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_92de8
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_92dd4:
	.4byte	0x040000d4
.L_92dd8:
	.4byte	gOamBuffer
.L_92ddc:
	.4byte	0x84000100
.L_92de0:
	.4byte	gBldy
.L_92de4:
	.4byte	gBg1XPosition
.L_92de8:
	.4byte	gBg1YPosition


thumb_func_start func_8092DEC
func_8092DEC:
	push	{lr}
	bl	m4aSoundVSync
	bl	m4aSoundMain
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8092DFC
func_8092DFC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, .L_92e40
	ldr	r2, .L_92e44
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #3
	add	r7, r0, r7
	mov	r9, r1
	mov	r6, r9
	mov	r4, #0
.L_92e16:
	lsl	r0, r4, #1
	add	r1, r0, r4
	lsl	r1, r1, #2
	ldr	r2, .L_92e48
	add	r3, r1, r2
	ldrb	r1, [r3, #10]
	add	r2, r0, #0
	add	r0, r4, #1
	mov	r8, r0
	cmp	r1, #0
	bne	.L_92e2e
	b	.L_92f9c
.L_92e2e:
	add	r0, r1, #0
	cmp	r0, #12
	bhi	.L_92f0a
	lsl	r0, r0, #2
	ldr	r1, .L_92e4c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_92e40:
	.4byte	gOamBuffer
.L_92e44:
	.4byte	gOamSlotsUsed
.L_92e48:
	.4byte	gUnk_3004A70
.L_92e4c:
	.4byte	.L_92e50
.L_92e50:
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92ec8
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
	.4byte	.L_92e84
.L_92e84:
	ldr	r1, .L_92ec0
	add	r0, r2, r4
	lsl	r0, r0, #2
	ldr	r5, .L_92ec4
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
	bcc	.L_92f0a
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
	bne	.L_92f0a
	strb	r0, [r3, #9]
	b	.L_92f0a
	.align	2, 0
.L_92ec0:
	.4byte	sUnk_878F93C
.L_92ec4:
	.4byte	gUnk_3004A70
.L_92ec8:
	ldr	r1, .L_92fb8
	add	r0, r2, r4
	lsl	r0, r0, #2
	ldr	r5, .L_92fbc
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
	bcc	.L_92f0a
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
	bne	.L_92f0a
	ldrb	r0, [r3, #10]
	add	r0, #2
	strb	r0, [r3, #10]
	add	r5, #8
	strb	r1, [r3, #8]
	strb	r1, [r3, #9]
.L_92f0a:
	add	r2, r2, r4
	lsl	r2, r2, #2
	ldr	r0, .L_92fbc
	add	r2, r2, r0
	ldrb	r0, [r2, #8]
	add	r0, #1
	strb	r0, [r2, #8]
	ldr	r1, .L_92fc0
	ldrh	r0, [r2, #0]
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	ldr	r1, .L_92fc4
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
	add	r4, #1
	mov	r8, r4
	cmp	r6, r9
	bge	.L_92f9c
	ldr	r0, .L_92fc8
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	ip, r1
	lsl	r1, r6, #3
	add	r4, r1, r0
	mov	r1, r9
	sub	r6, r1, r6
.L_92f58:
	ldrh	r0, [r3, #0]
	add	r3, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, sl
	strb	r0, [r4, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	strh	r1, [r7, #0]
	add	r7, #2
	add	r1, ip
	ldr	r2, .L_92fcc
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_92fd0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_92f58
	mov	r6, r9
.L_92f9c:
	mov	r4, r8
	cmp	r4, #2
	bgt	.L_92fa4
	b	.L_92e16
.L_92fa4:
	mov	r0, r9
	ldr	r5, .L_92fd4
	strb	r0, [r5, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_92fb8:
	.4byte	sUnk_878F93C
.L_92fbc:
	.4byte	gUnk_3004A70
.L_92fc0:
	.4byte	gBg1YPosition
.L_92fc4:
	.4byte	gBg1XPosition
.L_92fc8:
	.4byte	gOamBuffer
.L_92fcc:
	.4byte	0x000001ff
.L_92fd0:
	.4byte	0xfffffe00
.L_92fd4:
	.4byte	gOamSlotsUsed
