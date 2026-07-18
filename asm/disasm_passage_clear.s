.include "macros.s.inc"


thumb_func_start func_8083798
func_8083798:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_837b0
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	lsl	r0, r0, #16
	mov	r1, #184	@ 0xb8
	lsl	r1, r1, #17
	cmp	r0, r1
	bls	.L_837b4
	mov	r0, #1
	b	.L_8389c
.L_837b0:
	.4byte	gUnk_3003C3A
.L_837b4:
	bl	func_8083C94
	ldrh	r0, [r4, #0]
	cmp	r0, #44	@ 0x2c
	bne	.L_837ca
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_837ca:
	ldrh	r2, [r4, #0]
	cmp	r2, #56	@ 0x38
	bne	.L_837e0
	ldr	r1, .L_838a4
	ldr	r0, .L_838a8
	str	r0, [r1, #0]
	ldr	r0, .L_838ac
	str	r0, [r1, #4]
	ldr	r0, .L_838b0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_837e0:
	cmp	r2, #68	@ 0x44
	bne	.L_837f4
	ldr	r1, .L_838a4
	ldr	r0, .L_838b4
	str	r0, [r1, #0]
	ldr	r0, .L_838ac
	str	r0, [r1, #4]
	ldr	r0, .L_838b0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_837f4:
	ldrh	r0, [r4, #0]
	ldr	r1, .L_838b8
	cmp	r0, #80	@ 0x50
	bne	.L_83800
	mov	r0, #1
	strb	r0, [r1, #0]
.L_83800:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8380a
	bl	func_8083BC8
.L_8380a:
	ldrh	r0, [r4, #0]
	ldr	r1, .L_838bc
	cmp	r0, #128	@ 0x80
	bne	.L_83818
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_83818:
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_83822
	bl	func_8083C24
.L_83822:
	ldrh	r2, [r4, #0]
	cmp	r2, #22
	bne	.L_8382e
	ldr	r1, .L_838c0
	mov	r0, #1
	strb	r0, [r1, #4]
.L_8382e:
	cmp	r2, #45	@ 0x2d
	bne	.L_83838
	ldr	r1, .L_838c0
	mov	r0, #1
	strb	r0, [r1, #4]
.L_83838:
	cmp	r2, #152	@ 0x98
	bne	.L_83842
	ldr	r1, .L_838c4
	mov	r0, #1
	strb	r0, [r1, #4]
.L_83842:
	ldr	r0, .L_838c8
	cmp	r2, r0
	bne	.L_8384e
	ldr	r1, .L_838c4
	mov	r0, #2
	strb	r0, [r1, #4]
.L_8384e:
	cmp	r2, #252	@ 0xfc
	bne	.L_8388a
	ldr	r0, .L_838cc
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_838d0
	bl	m4aSongNumStart
	mov	r0, #2
	bl	VoiceSetPlay
	mov	r3, #0
	ldr	r4, .L_838d4
	ldr	r2, .L_838d8
	ldr	r6, .L_838dc
	ldr	r5, .L_838e0
.L_8386e:
	ldmia	r5!, {r1}
	ldrh	r0, [r4, #4]
	add	r0, r0, r1
	lsl	r0, r0, #4
	strh	r0, [r2, #0]
	ldmia	r6!, {r1}
	ldrh	r0, [r4, #6]
	add	r0, r0, r1
	lsl	r0, r0, #4
	strh	r0, [r2, #2]
	add	r2, #4
	add	r3, #1
	cmp	r3, #5
	ble	.L_8386e
.L_8388a:
	ldr	r0, .L_838e4
	ldrh	r1, [r0, #0]
	mov	r0, #158	@ 0x9e
	lsl	r0, r0, #1
	cmp	r1, r0
	bhi	.L_8389a
	bl	func_8083B6C
.L_8389a:
	mov	r0, #0
.L_8389c:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_838a4:
	.4byte	0x40000D4
.L_838a8:
	.4byte	sUnk_869BD28
.L_838ac:
	.4byte	0x600D000
.L_838b0:
	lsl	r0, r0, #16
	strh	r0, [r0, #0]
.L_838b4:
	.4byte	sUnk_869C528
.L_838b8:
	.4byte	gUnk_3004640
.L_838bc:
	.4byte	gUnk_3004641
.L_838c0:
	.4byte	gUnk_3004650
.L_838c4:
	.4byte	gUnk_3004648
.L_838c8:
	.4byte	0x10B
.L_838cc:
	.4byte	gUnk_3004670
.L_838d0:
	.4byte	0x1B1
.L_838d4:
	.4byte	gUnk_3003C0C
.L_838d8:
	.4byte	gUnk_3004658
.L_838dc:
	.4byte	sUnk_863C348
.L_838e0:
	.4byte	sUnk_863C330
.L_838e4:
	.4byte	gUnk_3003C3A


thumb_func_start func_80838E8
func_80838E8:
	push	{r4, r5, r6, r7, lr}
	bl	InitializeVideoMemory
	ldr	r1, .L_83abc
	ldr	r0, .L_83ac0
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_83ac4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_83912
.L_8390a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8390a
.L_83912:
	ldr	r1, .L_83abc
	ldr	r0, .L_83ac8
	str	r0, [r1, #0]
	ldr	r0, .L_83acc
	str	r0, [r1, #4]
	ldr	r0, .L_83ad0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_83ad4
	ldr	r4, .L_83ad8
	ldr	r5, .L_83adc
	ldr	r6, .L_83ae0
	ldr	r7, .L_83ae4
	cmp	r0, #0
	bge	.L_8393e
.L_83936:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_83936
.L_8393e:
	ldr	r1, .L_83abc
	str	r3, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_83ae8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_83960
.L_83958:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_83958
.L_83960:
	ldr	r1, .L_83abc
	str	r4, [r1, #0]
	ldr	r0, .L_83aec
	str	r0, [r1, #4]
	ldr	r0, .L_83af0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_83980
.L_83978:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_83978
.L_83980:
	ldr	r1, .L_83abc
	str	r5, [r1, #0]
	ldr	r0, .L_83af4
	str	r0, [r1, #4]
	ldr	r0, .L_83af8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_839a0
.L_83998:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_83998
.L_839a0:
	ldr	r1, .L_83abc
	str	r6, [r1, #0]
	ldr	r0, .L_83afc
	str	r0, [r1, #4]
	ldr	r0, .L_83af8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_839c0
.L_839b8:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_839b8
.L_839c0:
	ldr	r1, .L_83abc
	str	r7, [r1, #0]
	ldr	r0, .L_83b00
	str	r0, [r1, #4]
	ldr	r0, .L_83af8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_83b04
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_83b08
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_83b0c
	mov	r5, #0
	strh	r5, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #168	@ 0xa8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	ldr	r2, .L_83b10
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_83b14
	strb	r5, [r0, #0]
	ldr	r0, .L_83b18
	mov	r1, #16
	strb	r1, [r0, #0]
	ldr	r0, .L_83b1c
	strb	r1, [r0, #0]
	ldr	r1, .L_83b20
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	mov	r4, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_83b24
	strb	r5, [r0, #0]
	ldr	r0, .L_83b28
	strh	r4, [r0, #0]
	ldr	r0, .L_83b2c
	strb	r5, [r0, #0]
	ldr	r0, .L_83b30
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	ldr	r0, .L_83b34
	strb	r5, [r0, #0]
	ldr	r1, .L_83b38
	ldr	r0, .L_83b3c
	strh	r0, [r1, #4]
	mov	r0, #140	@ 0x8c
	strh	r0, [r1, #6]
	bl	func_8083B6C
	ldr	r0, .L_83b40
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	strb	r5, [r0, #4]
	ldr	r0, .L_83b44
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	strb	r5, [r0, #4]
	ldr	r0, .L_83b48
	strb	r5, [r0, #0]
	ldr	r0, .L_83b4c
	strh	r4, [r0, #0]
	ldr	r0, .L_83b50
	strh	r4, [r0, #0]
	ldr	r1, .L_83b54
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #32
.L_83a78:
	strb	r2, [r0, #4]
	sub	r0, #8
	cmp	r0, r1
	bge	.L_83a78
	ldr	r3, .L_83b58
	ldr	r4, .L_83b5c
	ldr	r5, .L_83b60
	ldr	r1, .L_83b64
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #32
.L_83a8e:
	strb	r2, [r0, #4]
	sub	r0, #8
	cmp	r0, r1
	bge	.L_83a8e
	ldr	r1, .L_83b68
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #32
.L_83a9e:
	strb	r2, [r0, #4]
	sub	r0, #8
	cmp	r0, r1
	bge	.L_83a9e
	mov	r0, #0
	strb	r0, [r3, #0]
	strb	r0, [r4, #0]
	strb	r0, [r5, #0]
	mov	r0, #216	@ 0xd8
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_83abc:
	.4byte	0x40000D4
.L_83ac0:
	.4byte	sUnk_868FEC8
.L_83ac4:
	.4byte	0x80000030
.L_83ac8:
	.4byte	sUnk_8695328
.L_83acc:
	.4byte	0x5000200
.L_83ad0:
	.4byte	0x80000100
.L_83ad4:
	.4byte	sUnk_868FF28
.L_83ad8:
	.4byte	sUnk_8695528
.L_83adc:
	.4byte	sUnk_869A528
.L_83ae0:
	.4byte	sUnk_869B528
.L_83ae4:
	.4byte	sUnk_869AD28
.L_83ae8:
	.4byte	0x80002A00
.L_83aec:
	.4byte	0x6010000
.L_83af0:
	.4byte	0x80002800
.L_83af4:
	.4byte	0x600C000
.L_83af8:
	.4byte	0x80000400
.L_83afc:
	.4byte	0x600D000
.L_83b00:
	b	.L_83b04
	lsl	r0, r0, #24
.L_83b04:
	sub	r1, r0, r0
	.align	2, 0
.L_83b08:
	.4byte	0x1C02
.L_83b0c:
	.4byte	0x4000054
.L_83b10:
	.4byte	0x1641
.L_83b14:
	.4byte	gUnk_3003C3D
.L_83b18:
	.4byte	gUnk_3003C3C
.L_83b1c:
	.4byte	gUnk_3003C3E
.L_83b20:
	.4byte	0x4000052
.L_83b24:
	.4byte	gUnk_3004640
.L_83b28:
	.4byte	gUnk_3003C3A
.L_83b2c:
	.4byte	gUnk_3003C39
.L_83b30:
	.4byte	0x4000012
.L_83b34:
	.4byte	gUnk_3004641
.L_83b38:
	.4byte	gUnk_3003C0C
.L_83b3c:
	.4byte	0x1E5
.L_83b40:
	.4byte	gUnk_3004648
.L_83b44:
	.4byte	gUnk_3004650
.L_83b48:
	.4byte	gUnk_3004670
.L_83b4c:
	.4byte	gUnk_3004672
.L_83b50:
	.4byte	gUnk_3004674
.L_83b54:
	.4byte	gUnk_3004678
.L_83b58:
	.4byte	gUnk_30046F6
.L_83b5c:
	.4byte	gUnk_30046F7
.L_83b60:
	.4byte	gUnk_30046F8
.L_83b64:
	.4byte	gUnk_30046A0
.L_83b68:
	.4byte	gUnk_30046C8


thumb_func_start func_8083B6C
func_8083B6C:
	push	{r4, lr}
	ldr	r1, .L_83bac
	ldr	r2, .L_83bb0
	ldr	r3, .L_83bb4
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #4]
	add	r0, r0, r2
	strh	r0, [r1, #4]
	ldr	r2, .L_83bb8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #6]
	add	r0, r0, r2
	strh	r0, [r1, #6]
	ldr	r4, .L_83bbc
	ldr	r2, .L_83bc0
	ldr	r1, .L_83bc4
	ldrh	r0, [r3, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_83bac:
	.4byte	gUnk_3003C0C
.L_83bb0:
	.4byte	sUnk_863BE36
.L_83bb4:
	.4byte	gUnk_3003C3A
.L_83bb8:
	.4byte	sUnk_863C0B2
.L_83bbc:
	.4byte	gUnk_30046FC
.L_83bc0:
	.4byte	sUnk_863BC7C
.L_83bc4:
	.4byte	sUnk_863BCF8


thumb_func_start func_8083BC8
func_8083BC8:
	push	{r4, r5, lr}
	ldr	r0, .L_83c10
	ldrh	r0, [r0, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L_83c0a
	ldr	r3, .L_83c14
	ldrb	r2, [r3, #0]
	add	r2, #1
	strb	r2, [r3, #0]
	ldr	r1, .L_83c18
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r4, .L_83c1c
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	lsl	r1, r1, #8
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	orr	r0, r1
	strh	r0, [r4, #0]
	lsl	r2, r2, #24
	asr	r2, r2, #24
	cmp	r2, #16
	bne	.L_83c0a
	ldr	r0, .L_83c20
	strb	r5, [r0, #0]
.L_83c0a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_83c10:
	.4byte	gUnk_3003C3A
.L_83c14:
	.4byte	gUnk_3003C3D
.L_83c18:
	.4byte	gUnk_3003C3C
.L_83c1c:
	.4byte	0x4000052
.L_83c20:
	.4byte	gUnk_3004640


thumb_func_start func_8083C24
func_8083C24:
	push	{r4, lr}
	ldr	r0, .L_83c38
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #9
	bhi	.L_83c40
	ldr	r2, .L_83c3c
	ldrb	r0, [r4, #0]
	sub	r0, #1
	b	.L_83c48
.L_83c38:
	.4byte	gUnk_3004641
.L_83c3c:
	.4byte	0x40000D4
.L_83c40:
	ldr	r2, .L_83c80
	ldrb	r1, [r4, #0]
	mov	r0, #17
	sub	r0, r0, r1
.L_83c48:
	lsl	r0, r0, #5
	ldr	r1, .L_83c84
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_83c88
	str	r0, [r2, #4]
	ldr	r0, .L_83c8c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, .L_83c90
	ldrh	r0, [r0, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_83c70
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_83c70:
	ldrb	r0, [r4, #0]
	cmp	r0, #18
	bne	.L_83c7a
	mov	r0, #0
	strb	r0, [r4, #0]
.L_83c7a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_83c80:
	.4byte	0x40000D4
.L_83c84:
	.4byte	sUnk_869CD28
.L_83c88:
	.4byte	0x5000020
.L_83c8c:
	.4byte	0x80000010
.L_83c90:
	.4byte	gUnk_3003C3A


thumb_func_start func_8083C94
func_8083C94:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_83db8
	ldrh	r0, [r0, #0]
	mov	r1, #18
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_83cf4
	bl	MinigameRandom
	ldr	r5, .L_83dbc
	ldr	r7, .L_83dc0
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	ldr	r6, .L_83dc4
	mov	r1, #11
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldr	r1, .L_83dc8
	strh	r1, [r0, #2]
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	mov	r1, #6
	bl	__modsi3
	add	r0, #1
	strb	r0, [r4, #4]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bls	.L_83cf4
	mov	r0, #0
	strb	r0, [r7, #0]
.L_83cf4:
	ldr	r0, .L_83db8
	ldrh	r0, [r0, #0]
	mov	r1, #11
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_83d52
	bl	MinigameRandom
	ldr	r5, .L_83dcc
	ldr	r7, .L_83dd0
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	ldr	r6, .L_83dc4
	mov	r1, #11
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldr	r1, .L_83dc8
	strh	r1, [r0, #2]
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	mov	r1, #6
	bl	__modsi3
	add	r0, #1
	strb	r0, [r4, #4]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bls	.L_83d52
	mov	r0, #0
	strb	r0, [r7, #0]
.L_83d52:
	ldr	r0, .L_83db8
	ldrh	r0, [r0, #0]
	mov	r1, #9
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_83db0
	bl	MinigameRandom
	ldr	r5, .L_83dd4
	ldr	r7, .L_83dd8
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	ldr	r6, .L_83dc4
	mov	r1, #11
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldr	r1, .L_83dc8
	strh	r1, [r0, #2]
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #3
	add	r4, r4, r5
	mov	r1, #6
	bl	__modsi3
	add	r0, #1
	strb	r0, [r4, #4]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #4
	bls	.L_83db0
	mov	r0, #0
	strb	r0, [r7, #0]
.L_83db0:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_83db8:
	.4byte	gUnk_3003C3A
.L_83dbc:
	.4byte	gUnk_3004678
.L_83dc0:
	.4byte	gUnk_30046F6
.L_83dc4:
	.4byte	sUnk_863C3A8
.L_83dc8:
	.4byte	0xFF60
.L_83dcc:
	.4byte	gUnk_30046A0
.L_83dd0:
	.4byte	gUnk_30046F7
.L_83dd4:
	.4byte	gUnk_30046C8
.L_83dd8:
	.4byte	gUnk_30046F8


thumb_func_start func_8083DDC
func_8083DDC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	mov	r0, #0
	mov	r9, r0
	ldr	r0, .L_84168
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r0, #3
	ldr	r1, .L_8416c
	add	r6, r0, r1
	ldr	r0, .L_84170
	ldrb	r2, [r0, #4]
	cmp	r2, #2
	bne	.L_83ec4
	add	r2, r0, #0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r2, .L_84174
	add	r3, r0, #0
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_83e3c
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_83e3c
	mov	r4, r9
	strh	r4, [r3, #0]
	strh	r4, [r3, #2]
	mov	r0, #0
	strb	r0, [r3, #4]
.L_83e3c:
	ldr	r1, .L_84170
	ldrb	r0, [r1, #4]
	cmp	r0, #2
	bne	.L_83ec4
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_83e5a
	b	.L_845dc
.L_83e5a:
	cmp	r9, r8
	bge	.L_83ec4
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_8417c
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_83e78:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	sub	r0, #4
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	sub	r1, #2
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_83e78
	mov	r9, r8
.L_83ec4:
	ldr	r0, .L_84184
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_83fc0
	ldr	r3, .L_84188
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldr	r2, .L_8418c
	ldrh	r1, [r3, #0]
	lsl	r0, r1, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, r1
	bcs	.L_83f04
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r1, .L_84190
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_83f04
	mov	r0, #0
	strh	r2, [r3, #0]
	strh	r2, [r1, #0]
	strb	r0, [r4, #0]
.L_83f04:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_83fc0
	mov	r2, #0
	str	r2, [sp, #8]
.L_83f0e:
	ldr	r3, .L_84190
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #3
	ldr	r4, .L_8418c
	add	r0, r0, r4
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_83f28
	b	.L_845dc
.L_83f28:
	ldr	r1, [sp, #8]
	lsl	r1, r1, #2
	mov	ip, r1
	ldr	r2, [sp, #8]
	add	r2, #1
	mov	sl, r2
	cmp	r9, r8
	bge	.L_83f9c
	ldr	r7, .L_84194
	add	r7, ip
	mov	r3, r9
	lsl	r0, r3, #3
	ldr	r1, .L_8416c
	add	r5, r0, r1
	mov	r2, r8
	sub	r2, r2, r3
	mov	r9, r2
.L_83f4a:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r3, r1
	ldr	r3, .L_8417c
	and	r1, r3
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0
	bne	.L_83f4a
	mov	r9, r8
.L_83f9c:
	ldr	r2, .L_84194
	add	r2, ip
	ldr	r0, .L_84198
	add	r0, ip
	ldr	r1, [r0, #0]
	ldrh	r0, [r2, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_8419c
	add	r0, ip
	ldr	r1, [r0, #0]
	ldrh	r0, [r2, #2]
	add	r0, r0, r1
	strh	r0, [r2, #2]
	mov	r2, sl
	str	r2, [sp, #8]
	cmp	r2, #5
	ble	.L_83f0e
.L_83fc0:
	ldr	r0, .L_841a0
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_83fd2
	b	.L_845dc
.L_83fd2:
	ldr	r7, .L_841a4
	cmp	r9, r8
	bge	.L_8403a
	ldr	r1, .L_8416c
	ldr	r0, .L_84178
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r3, r9
	lsl	r0, r3, #3
	add	r5, r0, r1
	mov	r0, r8
	sub	r0, r0, r3
	mov	r9, r0
.L_83ff0:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r1, sl
	ldrb	r0, [r1, #6]
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r1, #4]
	add	r1, r3, r1
	ldr	r2, .L_8417c
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_83ff0
	mov	r9, r8
.L_8403a:
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_840fc
	ldrh	r1, [r7, #0]
	add	r1, #1
	strh	r1, [r7, #0]
	ldr	r2, .L_841a8
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_84078
	mov	r0, #1
	strh	r0, [r7, #0]
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_84078
	ldr	r1, .L_84170
	strh	r0, [r1, #0]
	strh	r0, [r7, #2]
	mov	r0, #0
	strb	r0, [r7, #4]
.L_84078:
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_840fc
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_84094
	b	.L_845dc
.L_84094:
	cmp	r9, r8
	bge	.L_840fc
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_8417c
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_840b2:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	sub	r1, #16
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_840b2
	mov	r9, r8
.L_840fc:
	ldr	r1, .L_84170
	ldrb	r3, [r1, #4]
	cmp	r3, #1
	beq	.L_84106
	b	.L_84210
.L_84106:
	ldrh	r1, [r1, #0]
	add	r1, #1
	ldr	r2, .L_84170
	strh	r1, [r2, #0]
	ldr	r2, .L_841ac
	ldr	r4, .L_84170
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8413e
	strh	r3, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8413e
	strh	r0, [r4, #0]
	strh	r0, [r4, #2]
	mov	r0, #0
	strb	r0, [r4, #4]
.L_8413e:
	ldr	r1, .L_84170
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	.L_84210
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_8415c
	b	.L_845dc
.L_8415c:
	cmp	r9, r8
	bge	.L_84210
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	b	.L_841b0
	.align	2, 0
.L_84168:
	.4byte	gOamSlotsUsed
.L_8416c:
	.4byte	gOamBuffer
.L_84170:
	.4byte	gUnk_3004648
.L_84174:
	.4byte	sUnk_8641778
.L_84178:
	.4byte	gUnk_3003C0C
.L_8417c:
	.4byte	0x1FF
.L_84180:
	.4byte	0xFFFFFE00
.L_84184:
	.4byte	gUnk_3004670
.L_84188:
	.4byte	gUnk_3004672
.L_8418c:
	.4byte	sUnk_86417E8
.L_84190:
	.4byte	gUnk_3004674
.L_84194:
	.4byte	gUnk_3004658
.L_84198:
	.4byte	sUnk_863C360
.L_8419c:
	.4byte	sUnk_863C378
.L_841a0:
	.4byte	gUnk_30046FC
.L_841a4:
	.4byte	gUnk_3004650
.L_841a8:
	.4byte	sUnk_8641748
.L_841ac:
	.4byte	sUnk_8641718
.L_841b0:
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_84560
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_841c6:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	sub	r0, #4
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84564
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_841c6
	mov	r9, r8
.L_84210:
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_84568
	mov	sl, r2
.L_84218:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_842ee
	ldr	r0, .L_8456c
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_8423a
	b	.L_845dc
.L_8423a:
	cmp	r9, r8
	bge	.L_842d4
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8424e:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r2, #4
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	add	r0, #4
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8424e
	mov	r9, r8
.L_842d4:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #60	@ 0x3c
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_842ee
	strb	r1, [r2, #4]
.L_842ee:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_84218
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_84574
	mov	sl, r2
.L_84304:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_843d2
	ldr	r0, .L_84578
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_84326
	b	.L_845dc
.L_84326:
	cmp	r9, r8
	bge	.L_843b8
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8433a:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	add	r0, #2
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8433a
	mov	r9, r8
.L_843b8:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #52	@ 0x34
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_843d2
	strb	r1, [r2, #4]
.L_843d2:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_84304
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_8457c
	mov	sl, r2
.L_843e8:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_844bc
	ldr	r0, .L_84580
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_8440a
	b	.L_845dc
.L_8440a:
	cmp	r9, r8
	bge	.L_844a2
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8441e:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r2, #4
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8441e
	mov	r9, r8
.L_844a2:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #32
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_844bc
	strb	r1, [r2, #4]
.L_844bc:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_843e8
	mov	r1, #0
	str	r1, [sp, #8]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #12]
	ldr	r3, .L_84584
	mov	r9, r3
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	add	r4, sp, #4
	mov	sl, r4
	ldr	r6, .L_84570
.L_844e2:
	ldr	r5, .L_84588
	ldr	r0, [sp, #8]
	add	r5, r0, r5
	ldr	r1, .L_8458c
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	ldrb	r0, [r5, #0]
	add	r0, r0, r1
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r9
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r9
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r3, sp
	strh	r0, [r3, #2]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r9
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r4, sl
	strh	r0, [r4, #0]
	b	.L_84590
	.align	2, 0
.L_84560:
	.4byte	0x1FF
.L_84564:
	.4byte	0xFFFFFE00
.L_84568:
	.4byte	gUnk_30046C8
.L_8456c:
	.4byte	sUnk_863C404
.L_84570:
	.4byte	gOamBuffer
.L_84574:
	.4byte	gUnk_30046A0
.L_84578:
	.4byte	sUnk_863C3EC
.L_8457c:
	.4byte	gUnk_3004678
.L_84580:
	.4byte	sUnk_863C3D4
.L_84584:
	.4byte	sSinCosTable
.L_84588:
	.4byte	gUnk_30046F0
.L_8458c:
	.4byte	sUnk_863C390
.L_84590:
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r9
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r6, #6]
	mov	r3, sp
	ldrh	r1, [r3, #2]
	strh	r1, [r6, #14]
	mov	r4, sl
	ldrh	r1, [r4, #0]
	strh	r1, [r6, #22]
	strh	r0, [r6, #30]
	add	r6, #32
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #5
	ble	.L_844e2
	ldr	r0, .L_845ec
	mov	r1, r8
	strb	r1, [r0, #0]
.L_845dc:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_845ec:
	.4byte	gOamSlotsUsed
