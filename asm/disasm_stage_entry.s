.include "macros.s.inc"


thumb_func_start func_807CAB8
func_807CAB8:
	push	{lr}
	ldr	r0, .L_7cad8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7cac6
	bl	func_807E768
.L_7cac6:
	bl	func_807E6EC
	bl	func_807E720
	bl	func_807D5C8
	pop	{r1}
	bx	r1
	.align	2, 0
.L_7cad8:
	.4byte	gUnk_3003D54


thumb_func_start func_807CADC
func_807CADC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVideoMemory
	ldr	r3, .L_7cb30
	ldr	r1, .L_7cb34
	ldr	r2, .L_7cb38
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r0, .L_7cb3c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7cb06
	cmp	r0, #5
	bne	.L_7cb12
.L_7cb06:
	ldr	r0, .L_7cb40
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	strh	r0, [r3, #0]
.L_7cb12:
	ldr	r0, .L_7cb44
	mov	r1, #0
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	ldr	r0, .L_7cb3c
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	cmp	r1, #0
	beq	.L_7cb28
	cmp	r1, #5
	bne	.L_7cb50
.L_7cb28:
	ldr	r4, .L_7cb48
	ldr	r1, .L_7cb4c
	b	.L_7cb54
	.align	2, 0
.L_7cb30:
	.4byte	gUnk_3003C20
.L_7cb34:
	.4byte	sUnk_863A0A4
.L_7cb38:
	.4byte	gUnk_3003C98
.L_7cb3c:
	.4byte	gCurrentPassage
.L_7cb40:
	.4byte	sUnk_863A0C0
.L_7cb44:
	.4byte	gUnk_3003C0C
.L_7cb48:
	.4byte	gUnk_3003D22
.L_7cb4c:
	.4byte	sUnk_863A2D4
.L_7cb50:
	ldr	r4, .L_7cc14
	ldr	r1, .L_7cc18
.L_7cb54:
	ldr	r3, .L_7cc1c
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	strb	r1, [r4, #0]
	ldr	r2, .L_7cc20
	strb	r1, [r2, #0]
	ldr	r0, .L_7cc24
	strb	r1, [r0, #0]
	add	r6, r2, #0
	ldr	r1, .L_7cc28
	mov	r3, #0
	mov	r2, #0
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #8
	mov	r4, #180	@ 0xb4
	lsl	r4, r4, #1
	add	r0, r0, r4
	ldr	r5, .L_7cc2c
	ldrh	r4, [r5, #0]
	sub	r0, r0, r4
	strh	r0, [r1, #4]
	mov	r0, #136	@ 0x88
	strh	r0, [r1, #6]
	ldr	r0, .L_7cc30
	strb	r3, [r0, #0]
	ldr	r0, .L_7cc34
	strh	r2, [r0, #0]
	ldr	r0, .L_7cc38
	strb	r3, [r0, #0]
	ldr	r0, .L_7cc3c
	str	r2, [r0, #0]
	ldr	r1, .L_7cc40
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #8
	mov	r6, #198	@ 0xc6
	lsl	r6, r6, #1
	add	r0, r0, r6
	sub	r0, r0, r4
	strh	r0, [r1, #4]
	mov	r0, #68	@ 0x44
	strh	r0, [r1, #6]
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	ldr	r0, .L_7cc44
	strb	r3, [r0, #0]
	strb	r3, [r0, #1]
	strb	r3, [r0, #2]
	ldr	r0, .L_7cc48
	strb	r3, [r0, #0]
	ldr	r0, .L_7cc4c
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	ldr	r0, .L_7cc50
	str	r2, [r0, #0]
	ldr	r0, .L_7cc54
	str	r2, [r0, #0]
	mov	r8, r5
	ldr	r0, .L_7cc58
	mov	r9, r0
	ldr	r4, .L_7cc5c
	ldr	r5, .L_7cc60
	ldr	r6, .L_7cc64
	ldr	r1, .L_7cc68
	mov	ip, r1
	ldr	r2, .L_7cc6c
	mov	sl, r2
	ldr	r1, .L_7cc70
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #20
.L_7cbe8:
	str	r2, [r0, #0]
	sub	r0, #4
	cmp	r0, r1
	bge	.L_7cbe8
	mov	r0, #0
	strb	r0, [r4, #0]
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_7cbfe
	cmp	r0, #5
	bne	.L_7cc74
.L_7cbfe:
	ldrb	r0, [r7, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r1, r5
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_7ccac
	mov	r0, #1
	b	.L_7ccaa
.L_7cc14:
	.4byte	gUnk_3003D22
.L_7cc18:
	.4byte	sUnk_863A2BC
.L_7cc1c:
	.4byte	gCurrentStageNumber
.L_7cc20:
	.4byte	gUnk_3003D23
.L_7cc24:
	.4byte	gUnk_3003D24
.L_7cc28:
	.4byte	gUnk_3003CB8
.L_7cc2c:
	.4byte	gUnk_3003C20
.L_7cc30:
	.4byte	gUnk_3003C39
.L_7cc34:
	.4byte	gUnk_3003C3A
.L_7cc38:
	.4byte	gUnk_3003C9A
.L_7cc3c:
	.4byte	gUnk_3003C9C
.L_7cc40:
	.4byte	gUnk_3003CD8
.L_7cc44:
	.4byte	gUnk_3003D1E
.L_7cc48:
	.4byte	gUnk_3003D21
.L_7cc4c:
	.4byte	gUnk_3003CC0
.L_7cc50:
	.4byte	gUnk_3003D30
.L_7cc54:
	.4byte	gUnk_3003D34
.L_7cc58:
	.4byte	gUnk_3003C98
.L_7cc5c:
	.4byte	gUnk_3003C99
.L_7cc60:
	.4byte	gCurrentCollection
.L_7cc64:
	.4byte	gUnk_3003CC8
.L_7cc68:
	.4byte	gUnk_3003D1C
.L_7cc6c:
	.4byte	sUnk_863A22C
.L_7cc70:
	.4byte	gUnk_3003D38
.L_7cc74:
	mov	r3, #0
	ldrb	r0, [r7, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r1, r5
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_7cc8c
	mov	r0, #1
	b	.L_7ccaa
.L_7cc8c:
	add	r3, #1
	cmp	r3, #3
	bgt	.L_7ccac
	lsl	r2, r3, #2
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r2, r2, r0
	add	r2, r2, r5
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_7cc8c
	add	r0, r3, #1
.L_7ccaa:
	strb	r0, [r4, #0]
.L_7ccac:
	ldrb	r0, [r7, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r1, r5
	ldrb	r0, [r1, #16]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_7ccc2
	mov	r0, #5
	strb	r0, [r4, #0]
.L_7ccc2:
	ldrb	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_7cccc
	cmp	r0, #5
	bne	.L_7ccea
.L_7cccc:
	ldrb	r0, [r4, #0]
	cmp	r0, #5
	bne	.L_7ccde
	mov	r3, r8
	ldrh	r1, [r3, #0]
	mov	r5, #183	@ 0xb7
	lsl	r5, r5, #2
	add	r0, r5, #0
	b	.L_7ccf8
.L_7ccde:
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #8
	add	r0, #220	@ 0xdc
	mov	r2, r8
	ldrh	r1, [r2, #0]
	b	.L_7ccf8
.L_7ccea:
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #8
	mov	r3, #238	@ 0xee
	lsl	r3, r3, #1
	add	r0, r0, r3
	mov	r5, r8
	ldrh	r1, [r5, #0]
.L_7ccf8:
	sub	r0, r0, r1
	strh	r0, [r6, #4]
	mov	r1, #0
	mov	r0, #142	@ 0x8e
	strh	r0, [r6, #6]
	mov	r6, ip
	strb	r1, [r6, #0]
	ldr	r1, .L_7cdf4
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7cdf8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7cd30
.L_7cd28:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cd28
.L_7cd30:
	ldr	r2, .L_7cdf4
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #10
	ldr	r1, .L_7cdfc
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7ce00
	str	r0, [r2, #4]
	ldr	r0, .L_7ce04
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7cd5c
.L_7cd54:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7cd54
.L_7cd5c:
	ldr	r1, .L_7cdf4
	ldr	r2, .L_7ce08
	str	r2, [r1, #0]
	ldr	r0, .L_7ce0c
	str	r0, [r1, #4]
	ldr	r0, .L_7ce10
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7cd7e
.L_7cd76:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cd76
.L_7cd7e:
	ldr	r1, .L_7cdf4
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_7ce14
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7ce18
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7cdaa
.L_7cda2:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cda2
.L_7cdaa:
	ldrb	r0, [r4, #0]
	cmp	r0, #5
	bne	.L_7ce2c
	mov	r4, #0
	ldr	r3, .L_7cdf4
	ldr	r0, .L_7ce1c
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #10
	ldr	r1, .L_7ce20
	add	r5, r0, r1
	ldr	r6, .L_7ce24
	mov	ip, r6
	ldr	r6, .L_7ce28
.L_7cdc8:
	lsl	r1, r4, #10
	add	r0, r5, r1
	str	r0, [r3, #0]
	add	r1, ip
	str	r1, [r3, #4]
	str	r6, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	add	r1, r4, #1
	cmp	r0, #0
	bge	.L_7cdea
.L_7cde2:
	ldr	r0, [r3, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cde2
.L_7cdea:
	add	r4, r1, #0
	cmp	r4, #4
	ble	.L_7cdc8
	b	.L_7ce64
	.align	2, 0
.L_7cdf4:
	.4byte	0x40000D4
.L_7cdf8:
	.4byte	0x80002E00
.L_7cdfc:
	.4byte	sUnk_864C8C4
.L_7ce00:
	.4byte	0x6005C00
.L_7ce04:
	.4byte	0x80000A00
.L_7ce08:
	.4byte	sUnk_86540C4
.L_7ce0c:
	.4byte	0x6007000
.L_7ce10:
	.4byte	0x80000400
.L_7ce14:
	.4byte	sUnk_863A244
.L_7ce18:
	.4byte	0x80000100
.L_7ce1c:
	.4byte	gCurrentPassage
.L_7ce20:
	.4byte	sUnk_864CBE4
.L_7ce24:
	.4byte	0x6005E80
.L_7ce28:
	.4byte	0x80000050
.L_7ce2c:
	ldr	r2, .L_7cf58
	ldr	r3, .L_7cf5c
	ldrb	r0, [r4, #0]
	sub	r0, #1
	lsl	r0, r0, #2
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #5
	ldr	r1, .L_7cf60
	add	r0, r0, r1
	str	r0, [r2, #4]
	ldr	r0, .L_7cf64
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7ce64
.L_7ce5c:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7ce5c
.L_7ce64:
	ldr	r2, .L_7cf68
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bne	.L_7cea4
	ldr	r2, .L_7cf58
	ldr	r3, .L_7cf5c
	ldr	r4, .L_7cf6c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #5
	ldr	r5, .L_7cf70
	add	r0, r0, r5
	str	r0, [r2, #4]
	ldr	r0, .L_7cf64
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7cea4
.L_7ce9c:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7ce9c
.L_7cea4:
	ldr	r1, .L_7cf58
	ldr	r6, .L_7cf74
	str	r6, [r1, #0]
	ldr	r0, .L_7cf78
	str	r0, [r1, #4]
	ldr	r0, .L_7cf7c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7cec6
.L_7cebe:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cebe
.L_7cec6:
	ldr	r1, .L_7cf58
	ldr	r0, .L_7cf80
	str	r0, [r1, #0]
	ldr	r0, .L_7cf84
	str	r0, [r1, #4]
	ldr	r0, .L_7cf88
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7cee8
.L_7cee0:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7cee0
.L_7cee8:
	mov	r2, r8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7cef8
	ldr	r4, .L_7cf8c
	add	r0, r1, r4
.L_7cef8:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bgt	.L_7cfa4
	ldr	r2, .L_7cf58
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	mov	r5, r9
	ldrb	r5, [r5, #0]
	add	r0, r0, r5
	lsl	r0, r0, #2
	ldr	r6, .L_7cf90
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7cf94
	str	r0, [r2, #4]
	ldr	r0, .L_7cf98
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7cf3a
.L_7cf32:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7cf32
.L_7cf3a:
	ldr	r2, .L_7cf58
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	mov	r1, r9
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	lsl	r0, r0, #2
	ldr	r3, .L_7cf9c
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7cfa0
	b	.L_7cff2
	.align	2, 0
.L_7cf58:
	.4byte	0x40000D4
.L_7cf5c:
	.4byte	sUnk_863A25C
.L_7cf60:
	.4byte	0x5000120
.L_7cf64:
	.4byte	0x80000010
.L_7cf68:
	.4byte	gCollectedKeyzer
.L_7cf6c:
	.4byte	gCurrentStageNumber
.L_7cf70:
	.4byte	0x5000140
.L_7cf74:
	.4byte	sUnk_8654AC4
.L_7cf78:
	.4byte	0x6010000
.L_7cf7c:
	.4byte	0x80004000
.L_7cf80:
	.4byte	sUnk_86548C4
.L_7cf84:
	.4byte	0x5000200
.L_7cf88:
	.4byte	0x80000100
.L_7cf8c:
	.4byte	0x1FF
.L_7cf90:
	.4byte	sUnk_863A0DC
.L_7cf94:
	.4byte	0x600C000
.L_7cf98:
	.4byte	0x80000400
.L_7cf9c:
	.4byte	sUnk_863A184
.L_7cfa0:
	.4byte	0x600D000
.L_7cfa4:
	ldr	r2, .L_7d0a8
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	mov	r4, r9
	ldrb	r4, [r4, #0]
	add	r0, r0, r4
	lsl	r0, r0, #2
	ldr	r5, .L_7d0ac
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d0b0
	str	r0, [r2, #4]
	ldr	r0, .L_7d0b4
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7cfd8
.L_7cfd0:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7cfd0
.L_7cfd8:
	ldr	r2, .L_7d0a8
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	mov	r6, r9
	ldrb	r6, [r6, #0]
	add	r0, r0, r6
	lsl	r0, r0, #2
	ldr	r1, .L_7d0b8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d0bc
.L_7cff2:
	str	r0, [r2, #4]
	ldr	r0, .L_7d0b4
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	bl	func_807D4DC
	ldr	r1, .L_7d0c0
	ldr	r2, .L_7d0c4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_7d0c8
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_7d0cc
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_7d0d0
	mov	r4, #0
	str	r4, [r0, #0]
	ldr	r0, .L_7d0d4
	str	r4, [r0, #0]
	ldr	r0, .L_7d0d8
	str	r4, [r0, #0]
	ldr	r0, .L_7d0dc
	strb	r4, [r0, #0]
	ldr	r0, .L_7d0e0
	strb	r4, [r0, #0]
	ldr	r0, .L_7d0e4
	strb	r4, [r0, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_7d0e8
	mov	r3, #8
	strh	r3, [r0, #0]
	ldr	r2, .L_7d0ec
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7d048
	ldr	r6, .L_7d0f0
	add	r0, r1, r6
.L_7d048:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	ldr	r1, .L_7d0f4
	strh	r0, [r1, #0]
	ldr	r0, .L_7d0f8
	strh	r3, [r0, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7d064
	ldr	r2, .L_7d0f0
	add	r0, r1, r2
.L_7d064:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	ldr	r1, .L_7d0fc
	strh	r0, [r1, #0]
	ldr	r0, .L_7d100
	strh	r4, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	mov	r3, #152	@ 0x98
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #6
	add	r1, r5, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_7d104
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_7d108
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7d0a8:
	.4byte	0x40000D4
.L_7d0ac:
	.4byte	sUnk_863A0DC
.L_7d0b0:
	.4byte	0x600C800
.L_7d0b4:
	.4byte	0x80000400
.L_7d0b8:
	.4byte	sUnk_863A184
.L_7d0bc:
	.4byte	0x600D800
.L_7d0c0:
	.4byte	0x4000008
.L_7d0c4:
	.4byte	0x5802
.L_7d0c8:
	.4byte	0x5A01
.L_7d0cc:
	.4byte	gUnk_3003CA1
.L_7d0d0:
	.4byte	gUnk_3003D2C
.L_7d0d4:
	.4byte	gUnk_3003D50
.L_7d0d8:
	.4byte	gUnk_3003D54
.L_7d0dc:
	.4byte	gUnk_3003D58
.L_7d0e0:
	.4byte	gUnk_3003C08
.L_7d0e4:
	.4byte	gUnk_3003C44
.L_7d0e8:
	.4byte	0x4000012
.L_7d0ec:
	.4byte	gUnk_3003C20
.L_7d0f0:
	.4byte	0x1FF
.L_7d0f4:
	.4byte	0x4000010
.L_7d0f8:
	.4byte	0x4000016
.L_7d0fc:
	.4byte	0x4000014
.L_7d100:
	.4byte	0x4000054
.L_7d104:
	.4byte	0x4000048
.L_7d108:
	.4byte	0x400004A


thumb_func_start func_807D10C
func_807D10C:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_7d1e8
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_7d1ec
	strb	r1, [r0, #0]
	ldr	r0, .L_7d1f0
	strb	r1, [r0, #0]
	ldr	r1, .L_7d1f4
	ldr	r0, .L_7d1f8
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_7d1fc
	bl	m4aSongNumStart
	mov	r0, #231	@ 0xe7
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #6
	bl	VoiceSetPlay
	bl	func_807CADC
	ldr	r0, .L_7d200
	mov	r6, #0
	strh	r6, [r0, #0]
	ldr	r1, .L_7d204
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_7d208
	strh	r6, [r0, #0]
	ldr	r1, .L_7d20c
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldr	r2, .L_7d210
	mov	r3, #0
	mov	r0, #16
	strh	r0, [r2, #14]
	strh	r3, [r2, #12]
	ldr	r1, .L_7d214
	mov	r0, #1
	str	r0, [r1, #0]
	ldr	r1, .L_7d218
	ldrh	r5, [r1, #4]
	strh	r5, [r2, #4]
	ldrh	r4, [r1, #6]
	add	r0, r4, #0
	add	r0, #16
	strh	r0, [r2, #6]
	ldr	r0, .L_7d21c
	strh	r3, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r1, #8]
	ldr	r0, .L_7d220
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7d268
	ldr	r1, .L_7d224
	strh	r3, [r1, #0]
	strh	r3, [r1, #2]
	mov	r0, #220	@ 0xdc
	strh	r0, [r1, #4]
	mov	r0, #142	@ 0x8e
	strh	r0, [r1, #6]
	ldr	r1, .L_7d228
	ldr	r0, .L_7d22c
	str	r0, [r1, #0]
	ldr	r1, .L_7d230
	ldr	r0, .L_7d234
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_7d238
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	ldr	r0, .L_7d23c
	str	r0, [r1, #4]
	strb	r6, [r1, #8]
	ldr	r0, .L_7d240
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	strh	r3, [r0, #2]
	strh	r3, [r0, #0]
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #8]
	ldr	r1, .L_7d244
	ldr	r0, .L_7d248
	str	r0, [r1, #0]
	ldr	r0, .L_7d24c
	strh	r3, [r0, #2]
	strh	r3, [r0, #0]
	ldr	r3, .L_7d250
	ldr	r7, .L_7d254
	ldr	r6, .L_7d258
	ldr	r5, .L_7d25c
	ldr	r4, .L_7d260
	mov	r2, #0
	ldr	r0, .L_7d264
	mov	r1, #5
.L_7d1d4:
	strh	r2, [r0, #2]
	strh	r2, [r0, #0]
	add	r0, #4
	sub	r1, #1
	cmp	r1, #0
	bge	.L_7d1d4
	mov	r0, #5
	strb	r0, [r3, #0]
	b	.L_7d276
	.align	2, 0
.L_7d1e8:
	.4byte	gUnk_3000C3E
.L_7d1ec:
	.4byte	gUnk_3000C3F
.L_7d1f0:
	.4byte	gPauseFlag
.L_7d1f4:
	.4byte	gUnk_3003C98
.L_7d1f8:
	.4byte	gCurrentStageNumber
.L_7d1fc:
	.4byte	0x27F
.L_7d200:
	.4byte	gUnk_3003C4C
.L_7d204:
	.4byte	gUnk_3003C4E
.L_7d208:
	.4byte	gUnk_3003C50
.L_7d20c:
	.4byte	gUnk_3003C52
.L_7d210:
	.4byte	gUnk_3003C0C
.L_7d214:
	.4byte	gUnk_3003D28
.L_7d218:
	.4byte	gUnk_3003CD8
.L_7d21c:
	.4byte	gUnk_3003D5A
.L_7d220:
	.4byte	gCollectedKeyzer
.L_7d224:
	.4byte	gUnk_3003CD0
.L_7d228:
	.4byte	gUnk_3003CB0
.L_7d22c:
	.4byte	sUnk_863E4DC
.L_7d230:
	.4byte	gUnk_3003CE8
.L_7d234:
	.4byte	sUnk_8639C4A
.L_7d238:
	.4byte	sUnk_8639E76
.L_7d23c:
	.4byte	sUnk_863DE14
.L_7d240:
	.4byte	gUnk_3003D10
.L_7d244:
	.4byte	gUnk_3003CAC
.L_7d248:
	.4byte	sUnk_863EEEC
.L_7d24c:
	.4byte	gUnk_3003CF4
.L_7d250:
	.4byte	gUnk_3003CA0
.L_7d254:
	.4byte	gUnk_3003CA4
.L_7d258:
	.4byte	sUnk_863EC28
.L_7d25c:
	.4byte	gUnk_3003CA8
.L_7d260:
	.4byte	sUnk_863F2D0
.L_7d264:
	.4byte	gUnk_3003CF8
.L_7d268:
	ldr	r1, .L_7d280
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r7, .L_7d284
	ldr	r6, .L_7d288
	ldr	r5, .L_7d28c
	ldr	r4, .L_7d290
.L_7d276:
	str	r6, [r7, #0]
	str	r4, [r5, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7d280:
	.4byte	gUnk_3003CA0
.L_7d284:
	.4byte	gUnk_3003CA4
.L_7d288:
	.4byte	sUnk_863EC28
.L_7d28c:
	.4byte	gUnk_3003CA8
.L_7d290:
	.4byte	sUnk_863F2D0


thumb_func_start func_807D294
func_807D294:
	push	{lr}
	ldr	r0, .L_7d310
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_7d314
	strb	r1, [r0, #0]
	ldr	r0, .L_7d318
	strb	r1, [r0, #0]
	ldr	r1, .L_7d31c
	ldr	r0, .L_7d320
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_7d324
	bl	m4aSongNumStart
	bl	func_807CADC
	ldr	r0, .L_7d328
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_7d32c
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_7d330
	strh	r2, [r0, #0]
	ldr	r1, .L_7d334
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldr	r1, .L_7d338
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7d33c
	mov	r2, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r1, #14]
	strh	r2, [r1, #12]
	ldr	r0, .L_7d340
	str	r2, [r0, #0]
	mov	r0, #148	@ 0x94
	strh	r0, [r1, #4]
	strh	r2, [r1, #6]
	ldr	r0, .L_7d344
	strh	r2, [r0, #0]
	ldr	r0, .L_7d348
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7d2fa
	ldr	r0, .L_7d34c
	bl	m4aSongNumStart
.L_7d2fa:
	ldr	r1, .L_7d350
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r1, .L_7d354
	ldr	r0, .L_7d358
	str	r0, [r1, #0]
	ldr	r1, .L_7d35c
	ldr	r0, .L_7d360
	str	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_7d310:
	.4byte	gUnk_3000C3E
.L_7d314:
	.4byte	gUnk_3000C3F
.L_7d318:
	.4byte	gPauseFlag
.L_7d31c:
	.4byte	gUnk_3003C98
.L_7d320:
	.4byte	gCurrentStageNumber
.L_7d324:
	.4byte	0x27F
.L_7d328:
	.4byte	gUnk_3003C4C
.L_7d32c:
	.4byte	gUnk_3003C4E
.L_7d330:
	.4byte	gUnk_3003C50
.L_7d334:
	.4byte	gUnk_3003C52
.L_7d338:
	.4byte	gUnk_3003C44
.L_7d33c:
	.4byte	gUnk_3003C0C
.L_7d340:
	.4byte	gUnk_3003D28
.L_7d344:
	.4byte	gUnk_3003D5A
.L_7d348:
	.4byte	gStageExitType
.L_7d34c:
	.4byte	0x1C7
.L_7d350:
	.4byte	gUnk_3003CA0
.L_7d354:
	.4byte	gUnk_3003CA4
.L_7d358:
	.4byte	sUnk_863EC38
.L_7d35c:
	.4byte	gUnk_3003CA8
.L_7d360:
	.4byte	sUnk_863F1D0


thumb_func_start func_807D364
func_807D364:
	push	{lr}
	ldr	r0, .L_7d3cc
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_7d3d0
	strb	r1, [r0, #0]
	ldr	r0, .L_7d3d4
	strb	r1, [r0, #0]
	ldr	r1, .L_7d3d8
	ldr	r0, .L_7d3dc
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	bl	func_807CADC
	ldr	r0, .L_7d3e0
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_7d3e4
	strh	r1, [r0, #0]
	ldr	r0, .L_7d3e8
	mov	r1, #80	@ 0x50
	strh	r1, [r0, #0]
	ldr	r0, .L_7d3ec
	strh	r1, [r0, #0]
	ldr	r1, .L_7d3f0
	mov	r2, #0
	mov	r0, #56	@ 0x38
	strh	r0, [r1, #4]
	mov	r0, #136	@ 0x88
	strh	r0, [r1, #6]
	add	r0, #120	@ 0x78
	strh	r0, [r1, #14]
	strh	r2, [r1, #12]
	ldr	r0, .L_7d3f4
	str	r2, [r0, #0]
	ldr	r1, .L_7d3f8
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_7d3fc
	ldr	r1, .L_7d400
	ldr	r0, .L_7d404
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_7d408
	ldr	r0, .L_7d40c
	str	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7d3cc:
	.4byte	gUnk_3000C3E
.L_7d3d0:
	.4byte	gUnk_3000C3F
.L_7d3d4:
	.4byte	gPauseFlag
.L_7d3d8:
	.4byte	gUnk_3003C98
.L_7d3dc:
	.4byte	gCurrentStageNumber
.L_7d3e0:
	.4byte	gUnk_3003C4C
.L_7d3e4:
	.4byte	gUnk_3003C4E
.L_7d3e8:
	.4byte	gUnk_3003C50
.L_7d3ec:
	.4byte	gUnk_3003C52
.L_7d3f0:
	.4byte	gUnk_3003C0C
.L_7d3f4:
	.4byte	gUnk_3003D28
.L_7d3f8:
	.4byte	gUnk_3003CA0
.L_7d3fc:
	.4byte	gUnk_3003CA4
.L_7d400:
	.4byte	sUnk_863A43C
.L_7d404:
	.4byte	gUnk_3003CA1
.L_7d408:
	.4byte	gUnk_3003CA8
.L_7d40c:
	.4byte	sUnk_863F1D0


thumb_func_start func_807D410
func_807D410:
	push	{lr}
	ldr	r0, .L_7d48c
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_7d490
	strb	r1, [r0, #0]
	ldr	r0, .L_7d494
	strb	r1, [r0, #0]
	ldr	r1, .L_7d498
	ldr	r0, .L_7d49c
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_7d4a0
	bl	m4aSongNumStart
	bl	func_807CADC
	ldr	r0, .L_7d4a4
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_7d4a8
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_7d4ac
	strh	r2, [r0, #0]
	ldr	r1, .L_7d4b0
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldr	r1, .L_7d4b4
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7d4b8
	mov	r2, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r1, #14]
	strh	r2, [r1, #12]
	ldr	r0, .L_7d4bc
	str	r2, [r0, #0]
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #4]
	mov	r0, #132	@ 0x84
	strh	r0, [r1, #6]
	ldr	r1, .L_7d4c0
	sub	r2, #70	@ 0x46
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_7d4c4
	add	r2, #20
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_7d4c8
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_7d4cc
	ldr	r0, .L_7d4d0
	str	r0, [r1, #0]
	ldr	r1, .L_7d4d4
	ldr	r0, .L_7d4d8
	str	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_7d48c:
	.4byte	gUnk_3000C3E
.L_7d490:
	.4byte	gUnk_3000C3F
.L_7d494:
	.4byte	gPauseFlag
.L_7d498:
	.4byte	gUnk_3003C98
.L_7d49c:
	.4byte	gCurrentStageNumber
.L_7d4a0:
	.4byte	0x27F
.L_7d4a4:
	.4byte	gUnk_3003C4C
.L_7d4a8:
	.4byte	gUnk_3003C4E
.L_7d4ac:
	.4byte	gUnk_3003C50
.L_7d4b0:
	.4byte	gUnk_3003C52
.L_7d4b4:
	.4byte	gUnk_3003C44
.L_7d4b8:
	.4byte	gUnk_3003C0C
.L_7d4bc:
	.4byte	gUnk_3003D28
.L_7d4c0:
	.4byte	gUnk_3003D5C
.L_7d4c4:
	.4byte	gUnk_3003D5A
.L_7d4c8:
	.4byte	gUnk_3003CA0
.L_7d4cc:
	.4byte	gUnk_3003CA4
.L_7d4d0:
	.4byte	sUnk_863ECE0
.L_7d4d4:
	.4byte	gUnk_3003CA8
.L_7d4d8:
	.4byte	sUnk_863F1D0


thumb_func_start func_807D4DC
func_807D4DC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_7d538
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7d4ee
	ldr	r2, .L_7d53c
	add	r0, r1, r2
.L_7d4ee:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bgt	.L_7d560
	ldr	r2, .L_7d540
	ldr	r3, .L_7d544
	ldr	r6, .L_7d548
	ldr	r5, .L_7d54c
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d550
	str	r0, [r2, #4]
	ldr	r4, .L_7d554
	str	r4, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r3, .L_7d558
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	ldrb	r6, [r6, #0]
	add	r0, r0, r6
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d55c
	b	.L_7d59a
.L_7d538:
	.4byte	gUnk_3003C20
.L_7d53c:
	.4byte	0x1FF
.L_7d540:
	.4byte	0x40000D4
.L_7d544:
	.4byte	sUnk_863A0DC
.L_7d548:
	.4byte	gCurrentStageNumber
.L_7d54c:
	.4byte	gCurrentPassage
.L_7d550:
	.4byte	0x600C800
.L_7d554:
	.4byte	0x80000400
.L_7d558:
	.4byte	sUnk_863A184
.L_7d55c:
	.4byte	0x600D800
.L_7d560:
	ldr	r2, .L_7d5a8
	ldr	r3, .L_7d5ac
	ldr	r6, .L_7d5b0
	ldr	r5, .L_7d5b4
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d5b8
	str	r0, [r2, #4]
	ldr	r4, .L_7d5bc
	str	r4, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r3, .L_7d5c0
	ldrb	r1, [r5, #0]
	lsl	r0, r1, #3
	sub	r0, r0, r1
	ldrb	r6, [r6, #0]
	add	r0, r0, r6
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_7d5c4
.L_7d59a:
	str	r0, [r2, #4]
	str	r4, [r2, #8]
	ldr	r0, [r2, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7d5a8:
	.4byte	0x40000D4
.L_7d5ac:
	.4byte	sUnk_863A0DC
.L_7d5b0:
	.4byte	gCurrentStageNumber
.L_7d5b4:
	.4byte	gCurrentPassage
.L_7d5b8:
	.4byte	0x600C000
.L_7d5bc:
	.4byte	0x80000400
.L_7d5c0:
	.4byte	sUnk_863A184
.L_7d5c4:
	.4byte	0x600D000


thumb_func_start func_807D5C8
func_807D5C8:
	push	{lr}
	mov	r1, #0
	ldr	r0, .L_7d5e0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_7d61a
	lsl	r0, r0, #2
	ldr	r1, .L_7d5e4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7d5e0:
	.4byte	gUnk_3003CA0
.L_7d5e4:
	.4byte .L_7d5e8
.L_7d5e8:
	.4byte .L_7d5fc
	.4byte .L_7d602
	.4byte .L_7d608
	.4byte .L_7d60e
	.4byte .L_7d614
.L_7d5fc:
	bl	func_807D628
	b	.L_7d618
.L_7d602:
	bl	func_807D964
	b	.L_7d618
.L_7d608:
	bl	func_807DB74
	b	.L_7d618
.L_7d60e:
	bl	func_807DDCC
	b	.L_7d618
.L_7d614:
	bl	func_807E140
.L_7d618:
	add	r1, r0, #0
.L_7d61a:
	cmp	r1, #6
	beq	.L_7d622
	mov	r0, #0
	b	.L_7d624
.L_7d622:
	mov	r0, #1
.L_7d624:
	pop	{r1}
	bx	r1


thumb_func_start func_807D628
func_807D628:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_7d640
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #7
	bls	.L_7d636
	b	.L_7d95c
.L_7d636:
	lsl	r0, r1, #2
	ldr	r1, .L_7d644
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7d640:
	.4byte	gUnk_3003C39
.L_7d644:
	.4byte	.L_7d648
.L_7d648:
	.4byte	.L_7d668
	.4byte	.L_7d680
	.4byte	.L_7d6d4
	.4byte	.L_7d756
	.4byte	.L_7d7d4
	.4byte	.L_7d86c
	.4byte	.L_7d8b8
	.4byte	.L_7d912
.L_7d668:
	bl	func_807F770
	cmp	r0, #0
	bne	.L_7d672
	b	.L_7d95c
.L_7d672:
	ldr	r1, .L_7d67c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_7d95c
.L_7d67c:
	.4byte	gUnk_3003C39
.L_7d680:
	ldr	r1, .L_7d6bc
	ldr	r2, .L_7d6c0
	ldr	r3, .L_7d6c4
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
.L_7d68c:
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #4]
	add	r0, r0, r2
	strh	r0, [r1, #4]
	ldr	r2, .L_7d6c8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #6]
	add	r0, r0, r2
	strh	r0, [r1, #6]
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldr	r2, .L_7d6cc
	ldr	r1, .L_7d6d0
	str	r1, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #23
	beq	.L_7d6ba
	b	.L_7d95c
.L_7d6ba:
	b	.L_7d8e8
.L_7d6bc:
	.4byte	gUnk_3003C0C
.L_7d6c0:
	.4byte	sUnk_8639634
.L_7d6c4:
	.4byte	gUnk_3003C3A
.L_7d6c8:
	.4byte	sUnk_8639662
.L_7d6cc:
	.4byte	gUnk_3003CA4
.L_7d6d0:
	.4byte	sUnk_863E9E8
.L_7d6d4:
	ldr	r2, .L_7d72c
	ldr	r1, .L_7d730
.L_7d6d8:
	ldr	r4, .L_7d734
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #4]
	add	r0, r0, r1
	mov	r5, #0
	strh	r0, [r2, #4]
	ldr	r1, .L_7d738
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #6]
	add	r0, r0, r1
	strh	r0, [r2, #6]
	ldr	r1, .L_7d73c
	ldr	r0, .L_7d740
	str	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	cmp	r0, #8
.L_7d704:
	bne	.L_7d750
	mov	r0, #3
	bl	VoiceSetPlay
	mov	r0, #218	@ 0xda
	bl	m4aSongNumStart
	ldr	r0, .L_7d744
	strh	r5, [r0, #2]
	strh	r5, [r0, #0]
	ldr	r1, .L_7d748
	mov	r0, #1
.L_7d71c:
	str	r0, [r1, #0]
	ldr	r1, .L_7d74c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	strh	r5, [r4, #0]
	b	.L_7d95c
	.align	2, 0
.L_7d72c:
	.4byte	gUnk_3003C0C
.L_7d730:
	.4byte	sUnk_8639690
.L_7d734:
	.4byte	gUnk_3003C3A
.L_7d738:
	str	r6, [sp, #648]	@ 0x288
	lsr	r3, r4, #1
.L_7d73c:
	.4byte	gUnk_3003CA4
.L_7d740:
	.4byte	sUnk_863E9F8
.L_7d744:
	.4byte	gUnk_3003CC0
.L_7d748:
	.4byte	gUnk_3003D30
.L_7d74c:
	.4byte	gUnk_3003C39
.L_7d750:
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_7d95c
.L_7d756:
	ldr	r1, .L_7d7b0
	ldr	r0, .L_7d7b4
	str	r0, [r1, #0]
	ldr	r2, .L_7d7b8
	ldr	r1, .L_7d7bc
	ldr	r3, .L_7d7c0
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #6]
	add	r0, r0, r1
	strh	r0, [r2, #6]
	ldr	r2, .L_7d7c4
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r7, .L_7d7c8
	ldr	r4, .L_7d7cc
	str	r4, [r7, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r5, r3, #0
	cmp	r0, r1
	bcs	.L_7d864
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7d864
	strh	r1, [r2, #2]
	ldr	r0, .L_7d7d0
	str	r0, [r7, #0]
	b	.L_7d83a
	.align	2, 0
.L_7d7b0:
	.4byte	gUnk_3003CA4
.L_7d7b4:
	.4byte	sUnk_863EA08
.L_7d7b8:
	.4byte	gUnk_3003C0C
.L_7d7bc:
	.4byte	sUnk_86396B4
.L_7d7c0:
	.4byte	gUnk_3003C3A
.L_7d7c4:
	.4byte	gUnk_3003CB8
.L_7d7c8:
	.4byte	gUnk_3003CA8
.L_7d7cc:
	.4byte	sUnk_863F1E0
.L_7d7d0:
	.4byte	sUnk_863F208
.L_7d7d4:
	ldr	r2, .L_7d844
	ldr	r1, .L_7d848
	ldr	r3, .L_7d84c
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #6]
	add	r0, r0, r1
	strh	r0, [r2, #6]
	ldr	r1, .L_7d850
	ldrh	r0, [r1, #8]
	add	r0, #3
	strh	r0, [r1, #8]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r5, r3, #0
	cmp	r0, r2
	bls	.L_7d800
	strh	r2, [r1, #8]
.L_7d800:
	ldr	r2, .L_7d854
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldr	r4, .L_7d858
	ldr	r3, .L_7d85c
	str	r3, [r4, #0]
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7d864
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7d864
	strh	r1, [r2, #2]
	ldr	r0, .L_7d860
	str	r0, [r4, #0]
.L_7d83a:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	strh	r1, [r5, #0]
	b	.L_7d95c
.L_7d844:
	.4byte	gUnk_3003C0C
.L_7d848:
	.4byte	sUnk_86396D0
.L_7d84c:
	.4byte	gUnk_3003C3A
.L_7d850:
	.4byte	gUnk_3003CD8
.L_7d854:
	.4byte	gUnk_3003CB8
.L_7d858:
	.4byte	gUnk_3003CA8
.L_7d85c:
	.4byte	sUnk_863F208
.L_7d860:
	.4byte	sUnk_863F2D0
.L_7d864:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	b	.L_7d95c
.L_7d86c:
	ldr	r1, .L_7d8a0
	ldr	r2, .L_7d8a4
	ldr	r3, .L_7d8a8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #4]
	add	r0, r0, r2
	strh	r0, [r1, #4]
	ldr	r2, .L_7d8ac
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #6]
	add	r0, r0, r2
	strh	r0, [r1, #6]
	ldr	r1, .L_7d8b0
	ldr	r0, .L_7d8b4
	str	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	cmp	r0, #11
	beq	.L_7d8e8
	b	.L_7d90c
	.align	2, 0
.L_7d8a0:
	.4byte	gUnk_3003C0C
.L_7d8a4:
	.4byte	sUnk_8639794
.L_7d8a8:
	.4byte	gUnk_3003C3A
.L_7d8ac:
	.4byte	sUnk_86397AC
.L_7d8b0:
	.4byte	gUnk_3003CA4
.L_7d8b4:
	.4byte	sUnk_863E9E8
.L_7d8b8:
	ldr	r1, .L_7d8f4
	ldr	r2, .L_7d8f8
	ldr	r3, .L_7d8fc
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #4]
	add	r0, r0, r2
	strh	r0, [r1, #4]
	ldr	r2, .L_7d900
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #6]
	add	r0, r0, r2
	strh	r0, [r1, #6]
	ldr	r1, .L_7d904
	ldr	r0, .L_7d908
	str	r0, [r1, #0]
	ldrh	r0, [r3, #0]
	cmp	r0, #7
	bne	.L_7d90c
.L_7d8e8:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	mov	r0, #0
	strh	r0, [r3, #0]
	b	.L_7d95c
.L_7d8f4:
	.4byte	gUnk_3003C0C
.L_7d8f8:
	.4byte	sUnk_86397C4
.L_7d8fc:
	.4byte	gUnk_3003C3A
.L_7d900:
	.4byte	sUnk_86397D4
.L_7d904:
	.4byte	gUnk_3003CA4
.L_7d908:
	.4byte	sUnk_863E9F8
.L_7d90c:
	add	r0, #1
	strh	r0, [r3, #0]
	b	.L_7d95c
.L_7d912:
	ldr	r1, .L_7d948
	mov	r0, #1
	str	r0, [r1, #0]
	ldr	r1, .L_7d94c
	ldr	r0, .L_7d950
	str	r0, [r1, #0]
	ldr	r2, .L_7d954
	ldr	r1, .L_7d958
	ldrh	r0, [r1, #4]
	strh	r0, [r2, #4]
	ldrh	r0, [r1, #6]
	add	r0, #16
	strh	r0, [r2, #6]
	ldrh	r0, [r2, #12]
	add	r0, #248	@ 0xf8
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r2, #12]
	ldrh	r0, [r2, #14]
	sub	r0, #4
	strh	r0, [r2, #14]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #15
	bhi	.L_7d95c
	mov	r0, #6
	b	.L_7d95e
.L_7d948:
	.4byte	gUnk_3003D28
.L_7d94c:
	.4byte	gUnk_3003CA4
.L_7d950:
	.4byte	sUnk_863EC28
.L_7d954:
	.4byte	gUnk_3003C0C
.L_7d958:
	.4byte	gUnk_3003CD8
.L_7d95c:
	mov	r0, #0
.L_7d95e:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_807D964
func_807D964:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_7d97c
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #4
	bls	.L_7d972
	b	.L_7db6c
.L_7d972:
	lsl	r0, r1, #2
	ldr	r1, .L_7d980
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7d97c:
	sub	r4, #57	@ 0x39
	lsl	r0, r0, #12
.L_7d980:
	.4byte	.L_7d984
.L_7d984:
	.4byte	.L_7d998
	.4byte	.L_7da0c
	.4byte	.L_7da7c
	.4byte	.L_7daf4
	.4byte	.L_7db44
.L_7d998:
	ldr	r4, .L_7d9f0
	ldr	r1, .L_7d9f4
	add	r0, r1, #0
	ldrh	r2, [r4, #4]
	add	r0, r0, r2
	mov	r6, #0
.L_7d9a4:
	strh	r0, [r4, #4]
	ldr	r5, .L_7d9f8
	ldrh	r0, [r5, #0]
	add	r0, #4
	strh	r0, [r5, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r1, [r4, #6]
	add	r0, r0, r1
	strh	r0, [r4, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bhi	.L_7d9c2
	b	.L_7db6c
.L_7d9c2:
	mov	r0, #223	@ 0xdf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_7d9fc
	strh	r6, [r0, #2]
	strh	r6, [r0, #0]
	ldr	r0, .L_7da00
	mov	r1, #1
	str	r1, [r0, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r4, #6]
	mov	r2, #60	@ 0x3c
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r5, #0]
	ldr	r0, .L_7da04
	str	r1, [r0, #0]
	ldr	r1, .L_7da08
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_7db6c
.L_7d9f0:
	.4byte	gUnk_3003C0C
.L_7d9f4:
	.4byte	0xFFFF
.L_7d9f8:
	.4byte	gUnk_3003D5A
.L_7d9fc:
	.4byte	gUnk_3003CC0
.L_7da00:
	.4byte	gUnk_3003D30
.L_7da04:
	.4byte	gUnk_3003C9C
.L_7da08:
	.4byte	gUnk_3003C39
.L_7da0c:
	ldr	r2, .L_7da60
	ldr	r5, .L_7da64
	add	r0, r5, #0
	ldrh	r1, [r2, #4]
	add	r0, r0, r1
	mov	r1, #0
	strh	r0, [r2, #4]
	ldr	r3, .L_7da68
	ldrh	r0, [r3, #0]
	add	r0, #4
.L_7da20:
	strh	r0, [r3, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r5, [r2, #6]
	add	r0, r0, r5
	strh	r0, [r2, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bhi	.L_7da36
	b	.L_7db6c
.L_7da36:
	ldr	r0, .L_7da6c
	strh	r1, [r0, #2]
	strh	r1, [r0, #0]
	ldr	r0, .L_7da70
	mov	r1, #1
	str	r1, [r0, #0]
	mov	r5, #30
	neg	r5, r5
	add	r0, r5, #0
	strh	r0, [r3, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r2, #6]
	ldr	r0, .L_7da74
	str	r1, [r0, #0]
	ldr	r1, .L_7da78
	mov	r0, #0
	strb	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_7db6c
.L_7da60:
	.4byte	gUnk_3003C0C
.L_7da64:
	.4byte	0xFFFF
.L_7da68:
	.4byte	gUnk_3003D5A
.L_7da6c:
	.4byte	gUnk_3003CC0
.L_7da70:
	.4byte	gUnk_3003D30
.L_7da74:
	.4byte	gUnk_3003C9C
.L_7da78:
	.4byte	gUnk_3003C9A
.L_7da7c:
	ldr	r3, .L_7dad0
	ldr	r1, .L_7dad4
	add	r0, r1, #0
	ldrh	r2, [r3, #4]
	add	r0, r0, r2
	mov	r2, #0
.L_7da88:
	strh	r0, [r3, #4]
	ldr	r1, .L_7dad8
	ldrh	r0, [r1, #0]
	add	r0, #4
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r5, [r3, #6]
	add	r0, r0, r5
	strh	r0, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bls	.L_7db6c
	ldr	r0, .L_7dadc
	strh	r2, [r0, #2]
	strh	r2, [r0, #0]
	ldr	r0, .L_7dae0
	mov	r2, #1
	str	r2, [r0, #0]
	mov	r0, #56	@ 0x38
	strh	r0, [r3, #4]
	mov	r0, #136	@ 0x88
	strh	r0, [r3, #6]
	ldr	r1, .L_7dae4
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_7dae8
	ldr	r0, .L_7daec
	str	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r0, .L_7daf0
	str	r2, [r0, #0]
	b	.L_7db6c
.L_7dad0:
	.4byte	gUnk_3003C0C
.L_7dad4:
	.4byte	0xFFFF
.L_7dad8:
	.4byte	gUnk_3003D5A
.L_7dadc:
	.4byte	gUnk_3003CC0
.L_7dae0:
	.4byte	gUnk_3003D30
.L_7dae4:
	.4byte	gUnk_3003C44
.L_7dae8:
	.4byte	gUnk_3003CA4
.L_7daec:
	.4byte	sUnk_863E9B0
.L_7daf0:
	.4byte	gUnk_3003D50
.L_7daf4:
	ldr	r0, .L_7db14
	mov	r3, #1
	str	r3, [r0, #0]
	ldr	r2, .L_7db18
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #1
	bhi	.L_7db20
	ldr	r0, .L_7db1c
	str	r3, [r0, #0]
	add	r1, r0, #0
	b	.L_7db26
.L_7db14:
	.4byte	gUnk_3003D54
.L_7db18:
	.4byte	gUnk_3003C3A
.L_7db1c:
	.4byte	gUnk_3003D50
.L_7db20:
	ldr	r1, .L_7db40
	mov	r0, #0
	str	r0, [r1, #0]
.L_7db26:
	ldrh	r0, [r2, #0]
	cmp	r0, #45	@ 0x2d
	bls	.L_7db6c
	mov	r0, #0
	str	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #221	@ 0xdd
	bl	m4aSongNumStart
	b	.L_7db6c
	.align	2, 0
.L_7db40:
	.4byte	gUnk_3003D50
.L_7db44:
	bl	func_807F7D0
	cmp	r0, #0
	beq	.L_7db6c
	ldr	r0, .L_7db60
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7db64
	strb	r1, [r0, #0]
	ldr	r1, .L_7db68
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #6
	b	.L_7db6e
.L_7db60:
	.4byte	gUnk_3003C3A
.L_7db64:
	.4byte	gUnk_3003C39
.L_7db68:
	.4byte	gUnk_3003C08
.L_7db6c:
	mov	r0, #0
.L_7db6e:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_807DB74
func_807DB74:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_7db8c
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #4
	bls	.L_7db82
	b	.L_7ddc4
.L_7db82:
	lsl	r0, r1, #2
	ldr	r1, .L_7db90
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7db8c:
	.4byte	gUnk_3003C39
.L_7db90:
	.4byte	.L_7db94
.L_7db94:
	.4byte	.L_7dba8
	.4byte	.L_7dc34
	.4byte	.L_7dcbc
	.4byte	.L_7dd4c
	.4byte	.L_7dd9c
.L_7dba8:
	ldr	r2, .L_7dc18
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	blt	.L_7dbbe
	strh	r1, [r2, #0]
.L_7dbbe:
	ldr	r4, .L_7dc1c
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r1, [r4, #4]
	add	r0, r0, r1
	mov	r6, #0
	strh	r0, [r4, #4]
	ldr	r5, .L_7dc20
	ldrh	r0, [r5, #0]
	add	r0, #4
	strh	r0, [r5, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r2, [r4, #6]
	add	r0, r0, r2
	strh	r0, [r4, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bhi	.L_7dbea
	b	.L_7ddc4
.L_7dbea:
	mov	r0, #223	@ 0xdf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_7dc24
	strh	r6, [r0, #2]
	strh	r6, [r0, #0]
	ldr	r0, .L_7dc28
	mov	r1, #1
	str	r1, [r0, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r4, #6]
	mov	r2, #30
.L_7dc04:
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r5, #0]
	ldr	r0, .L_7dc2c
	str	r1, [r0, #0]
	ldr	r1, .L_7dc30
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_7ddc4
.L_7dc18:
	.4byte	gUnk_3003D5C
.L_7dc1c:
	.4byte	gUnk_3003C0C
.L_7dc20:
	.4byte	gUnk_3003D5A
.L_7dc24:
	.4byte	gUnk_3003CC0
.L_7dc28:
	.4byte	gUnk_3003D30
.L_7dc2c:
	.4byte	gUnk_3003C9C
.L_7dc30:
	.4byte	gUnk_3003C39
.L_7dc34:
	ldr	r2, .L_7dca0
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
.L_7dc3c:
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	blt	.L_7dc4a
	strh	r1, [r2, #0]
.L_7dc4a:
	ldr	r3, .L_7dca4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r1, [r3, #4]
	add	r0, r0, r1
	mov	r1, #0
	strh	r0, [r3, #4]
	ldr	r4, .L_7dca8
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r2, [r3, #6]
	add	r0, r0, r2
	strh	r0, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bhi	.L_7dc76
	b	.L_7ddc4
.L_7dc76:
	ldr	r0, .L_7dcac
	strh	r1, [r0, #2]
	strh	r1, [r0, #0]
	ldr	r0, .L_7dcb0
	mov	r1, #1
	str	r1, [r0, #0]
	ldr	r2, .L_7dcb4
	ldr	r0, .L_7dcb8
	str	r1, [r0, #0]
	mov	r0, #0
	strb	r0, [r2, #0]
	sub	r1, #21
	add	r0, r1, #0
	strh	r0, [r4, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r3, #6]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	b	.L_7ddc4
	.align	2, 0
.L_7dca0:
	.4byte	gUnk_3003D5C
.L_7dca4:
	.4byte	gUnk_3003C0C
.L_7dca8:
	.4byte	gUnk_3003D5A
.L_7dcac:
	.4byte	gUnk_3003CC0
.L_7dcb0:
	.4byte	gUnk_3003D30
.L_7dcb4:
	.4byte	gUnk_3003C9A
.L_7dcb8:
	.4byte	gUnk_3003C9C
.L_7dcbc:
	ldr	r2, .L_7dd28
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	blt	.L_7dcd2
	strh	r1, [r2, #0]
.L_7dcd2:
	ldr	r3, .L_7dd2c
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r2, [r3, #4]
	add	r0, r0, r2
	mov	r2, #0
	strh	r0, [r3, #4]
	ldr	r1, .L_7dd30
	ldrh	r0, [r1, #0]
	add	r0, #4
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r1, [r3, #6]
	add	r0, r0, r1
	strh	r0, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #136	@ 0x88
	bls	.L_7ddc4
	ldr	r0, .L_7dd34
	strh	r2, [r0, #2]
	strh	r2, [r0, #0]
	ldr	r0, .L_7dd38
	mov	r2, #1
	str	r2, [r0, #0]
	mov	r0, #56	@ 0x38
	strh	r0, [r3, #4]
	mov	r0, #136	@ 0x88
	strh	r0, [r3, #6]
	ldr	r1, .L_7dd3c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_7dd40
	ldr	r0, .L_7dd44
	str	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldr	r0, .L_7dd48
	str	r2, [r0, #0]
	b	.L_7ddc4
.L_7dd28:
	.4byte	gUnk_3003D5C
.L_7dd2c:
	.4byte	gUnk_3003C0C
.L_7dd30:
	.4byte	gUnk_3003D5A
.L_7dd34:
	.4byte	gUnk_3003CC0
.L_7dd38:
	.4byte	gUnk_3003D30
.L_7dd3c:
	.4byte	gUnk_3003C44
.L_7dd40:
	.4byte	gUnk_3003CA4
.L_7dd44:
	.4byte	sUnk_863E9B0
.L_7dd48:
	.4byte	gUnk_3003D50
.L_7dd4c:
	ldr	r0, .L_7dd6c
	mov	r3, #1
	str	r3, [r0, #0]
	ldr	r2, .L_7dd70
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #1
	bhi	.L_7dd78
	ldr	r0, .L_7dd74
	str	r3, [r0, #0]
	add	r1, r0, #0
	b	.L_7dd7e
.L_7dd6c:
	.4byte	gUnk_3003D54
.L_7dd70:
	.4byte	gUnk_3003C3A
.L_7dd74:
	.4byte	gUnk_3003D50
.L_7dd78:
	ldr	r1, .L_7dd98
	mov	r0, #0
	str	r0, [r1, #0]
.L_7dd7e:
	ldrh	r0, [r2, #0]
	cmp	r0, #45	@ 0x2d
	bls	.L_7ddc4
	mov	r0, #0
	str	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	mov	r0, #221	@ 0xdd
	bl	m4aSongNumStart
	b	.L_7ddc4
	.align	2, 0
.L_7dd98:
	.4byte	gUnk_3003D50
.L_7dd9c:
	bl	func_807F7D0
	cmp	r0, #0
	beq	.L_7ddc4
	ldr	r0, .L_7ddb8
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7ddbc
	strb	r1, [r0, #0]
	ldr	r1, .L_7ddc0
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #6
	b	.L_7ddc6
.L_7ddb8:
	.4byte	gUnk_3003C3A
.L_7ddbc:
	.4byte	gUnk_3003C39
.L_7ddc0:
	.4byte	gUnk_3003C08
.L_7ddc4:
	mov	r0, #0
.L_7ddc6:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_807DDCC
func_807DDCC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_7dde4
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #6
	bls	.L_7ddda
	b	.L_7e138
.L_7ddda:
	lsl	r0, r1, #2
	ldr	r1, .L_7dde8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7dde4:
	.4byte	gUnk_3003C39
.L_7dde8:
	.4byte	.L_7ddec
.L_7ddec:
	.4byte	.L_7de08
	.4byte	.L_7de74
	.4byte	.L_7df28
	.4byte	.L_7dfc4
	.4byte	.L_7e068
	.4byte	.L_7e0e8
	.4byte	.L_7e110
.L_7de08:
	ldr	r2, .L_7de54
	ldrh	r0, [r2, #12]
	add	r0, #248	@ 0xf8
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r2, #12]
	ldrh	r0, [r2, #14]
	add	r0, #4
	strh	r0, [r2, #14]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	cmp	r0, r1
	bhi	.L_7de28
	b	.L_7e138
.L_7de28:
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	strh	r1, [r2, #14]
	ldr	r1, .L_7de58
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_7de5c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7de60
	ldr	r0, .L_7de64
	str	r0, [r1, #0]
	ldr	r1, .L_7de68
	ldr	r0, .L_7de6c
	str	r0, [r1, #0]
	ldr	r1, .L_7de70
	mov	r2, #20
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	b	.L_7e138
.L_7de54:
	.4byte	gUnk_3003C0C
.L_7de58:
	.4byte	gUnk_3003D28
.L_7de5c:
	.4byte	gUnk_3003C44
.L_7de60:
	.4byte	gUnk_3003CA4
.L_7de64:
	.4byte	sUnk_863E9E8
.L_7de68:
	.4byte	gUnk_3003CA8
.L_7de6c:
	.4byte	sUnk_863F258
.L_7de70:
	.4byte	gUnk_3003D5A
.L_7de74:
	ldr	r4, .L_7defc
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	lsl	r0, r0, #16
	cmp	r0, #0
	ble	.L_7de88
	ldr	r1, .L_7df00
	ldr	r0, .L_7df04
	str	r0, [r1, #0]
.L_7de88:
	ldr	r3, .L_7df08
	ldrh	r1, [r4, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	ldrh	r6, [r3, #6]
	add	r1, r1, r6
	mov	r2, #0
	strh	r1, [r3, #6]
	ldr	r6, .L_7df0c
	add	r0, r6, #0
	ldrh	r6, [r3, #4]
	add	r0, r0, r6
	strh	r0, [r3, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #136	@ 0x88
	bls	.L_7ded2
	ldr	r0, .L_7df10
	strh	r2, [r0, #2]
	strh	r2, [r0, #0]
	ldr	r1, .L_7df14
	mov	r0, #1
	str	r0, [r1, #0]
	strh	r2, [r4, #0]
	ldr	r1, .L_7df18
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r3, #6]
	mov	r0, #56	@ 0x38
	strh	r0, [r3, #4]
	ldr	r1, .L_7df00
	ldr	r0, .L_7df1c
	str	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
.L_7ded0:
	strb	r0, [r5, #0]
.L_7ded2:
	ldr	r3, .L_7df20
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7df24
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcc	.L_7def0
	b	.L_7e0b6
.L_7def0:
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	b	.L_7e0b6
.L_7defc:
	.4byte	gUnk_3003D5A
.L_7df00:
	.4byte	gUnk_3003CA4
.L_7df04:
	.4byte	sUnk_863E9F8
.L_7df08:
	.4byte	gUnk_3003C0C
.L_7df0c:
	.4byte	0xFFFD
.L_7df10:
	.4byte	gUnk_3003CC0
.L_7df14:
	.4byte	gUnk_3003D30
.L_7df18:
	.4byte	gUnk_3003C44
.L_7df1c:
	.4byte	sUnk_863E9B0
.L_7df20:
	.4byte	gUnk_3003CB8
.L_7df24:
	.4byte	gUnk_3003CA8
.L_7df28:
	ldr	r3, .L_7df94
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7df98
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcc	.L_7df46
	b	.L_7e0b6
.L_7df46:
	mov	r4, #1
	strh	r4, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	beq	.L_7df5a
	b	.L_7e0b6
.L_7df5a:
	ldr	r3, .L_7df9c
	ldr	r0, .L_7dfa0
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_7dfa4
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_7dfbc
	ldr	r0, .L_7dfa8
	bl	m4aSongNumStart
	ldr	r1, .L_7dfac
	ldr	r0, .L_7dfb0
	str	r0, [r1, #0]
	ldr	r0, .L_7dfb4
	str	r4, [r0, #0]
	ldr	r1, .L_7dfb8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_7e0b6
	.align	2, 0
.L_7df94:
	.4byte	gUnk_3003CB8
.L_7df98:
	.4byte	gUnk_3003CA8
.L_7df9c:
	.4byte	gCurrentCollection
.L_7dfa0:
	.4byte	gCurrentStageNumber
.L_7dfa4:
	.4byte	gCurrentPassage
.L_7dfa8:
	.4byte	0x1BF
.L_7dfac:
	.4byte	gUnk_3003CA4
.L_7dfb0:
	.4byte	sUnk_863ECA8
.L_7dfb4:
	.4byte	gUnk_3003D2C
.L_7dfb8:
	.4byte	gUnk_3003C39
.L_7dfbc:
	ldrb	r0, [r5, #0]
	add	r0, #2
	strb	r0, [r5, #0]
	b	.L_7e0b6
.L_7dfc4:
	ldr	r2, .L_7e048
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r3, [r2, #2]
	ldr	r6, .L_7e04c
	ldr	r4, [r6, #0]
	lsl	r1, r3, #3
.L_7dfd4:
	add	r1, r1, r4
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e00c
	add	r0, r3, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e00c
	mov	r0, #1
	strh	r0, [r2, #0]
	strh	r1, [r2, #2]
	ldr	r0, .L_7e050
	str	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r5, #0]
	ldr	r1, .L_7e054
	ldr	r0, .L_7e058
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
.L_7e00c:
	ldr	r2, .L_7e05c
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	ldr	r4, .L_7e060
	ldr	r3, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e0b6
.L_7e028:
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
	bne	.L_7e0b6
	strh	r0, [r2, #2]
	ldr	r0, .L_7e064
	str	r0, [r4, #0]
	b	.L_7e0b6
	.align	2, 0
.L_7e048:
	.4byte	gUnk_3003C0C
.L_7e04c:
	.4byte	gUnk_3003CA4
.L_7e050:
	.4byte	gUnk_3003D2C
.L_7e054:
	.4byte	sUnk_863A43C
.L_7e058:
	.4byte	gUnk_3003CA1
.L_7e05c:
	.4byte	gUnk_3003CB8
.L_7e060:
	.4byte	gUnk_3003CA8
.L_7e064:
	.4byte	sUnk_863F1D0
.L_7e068:
	ldr	r2, .L_7e0cc
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	ldr	r4, .L_7e0d0
	ldr	r3, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e0b6
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
	bne	.L_7e0b6
	strh	r0, [r2, #2]
	ldr	r0, .L_7e0d4
	str	r0, [r4, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldr	r2, .L_7e0d8
	ldr	r1, .L_7e0dc
	ldr	r0, .L_7e0e0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
.L_7e0b6:
	ldr	r1, .L_7e0e4
	ldrh	r0, [r1, #8]
	sub	r0, #2
	strh	r0, [r1, #8]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #63	@ 0x3f
	bhi	.L_7e138
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	b	.L_7e138
.L_7e0cc:
	.4byte	gUnk_3003CB8
.L_7e0d0:
	.4byte	gUnk_3003CA8
.L_7e0d4:
	.4byte	sUnk_863F1D0
.L_7e0d8:
	.4byte	gUnk_3003CA4
.L_7e0dc:
	.4byte	sUnk_863A43C
.L_7e0e0:
	.4byte	gUnk_3003CA1
.L_7e0e4:
	.4byte	gUnk_3003CD8
.L_7e0e8:
	ldr	r1, .L_7e108
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #45	@ 0x2d
	bls	.L_7e138
	mov	r0, #221	@ 0xdd
	bl	m4aSongNumStart
	ldr	r1, .L_7e10c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_7e138
.L_7e108:
	.4byte	gUnk_3003C3A
.L_7e10c:
	.4byte	gUnk_3003C39
.L_7e110:
	bl	func_807F7D0
	cmp	r0, #0
	beq	.L_7e138
	ldr	r0, .L_7e12c
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7e130
	strb	r1, [r0, #0]
	ldr	r1, .L_7e134
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #6
	b	.L_7e13a
.L_7e12c:
	.4byte	gUnk_3003C3A
.L_7e130:
	.4byte	gUnk_3003C39
.L_7e134:
	.4byte	gUnk_3003C08
.L_7e138:
	mov	r0, #0
.L_7e13a:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_807E140
func_807E140:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_7e160
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #4
	bls	.L_7e154
	b	.L_7e5f0
.L_7e154:
	lsl	r0, r1, #2
	ldr	r1, .L_7e164
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7e160:
	.4byte	gUnk_3003C39
.L_7e164:
	.4byte	.L_7e168
.L_7e168:
	.4byte	.L_7e17c
	.4byte	.L_7e1e8
	.4byte	.L_7e2f4
	.4byte	.L_7e4e4
	.4byte	.L_7e5c8
.L_7e17c:
	ldr	r2, .L_7e1c8
	ldrh	r0, [r2, #12]
	add	r0, #248	@ 0xf8
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r2, #12]
	ldrh	r0, [r2, #14]
	add	r0, #4
	strh	r0, [r2, #14]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	cmp	r0, r1
	bhi	.L_7e19c
	b	.L_7e5f0
.L_7e19c:
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r1, .L_7e1cc
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_7e1d0
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7e1d4
	ldr	r0, .L_7e1d8
	str	r0, [r1, #0]
	ldr	r1, .L_7e1dc
	ldr	r0, .L_7e1e0
	str	r0, [r1, #0]
	ldr	r1, .L_7e1e4
	mov	r2, #20
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	b	.L_7e5f0
.L_7e1c8:
	.4byte	gUnk_3003C0C
.L_7e1cc:
	.4byte	gUnk_3003D28
.L_7e1d0:
	.4byte	gUnk_3003C44
.L_7e1d4:
	.4byte	gUnk_3003CA4
.L_7e1d8:
	.4byte	sUnk_863E9E8
.L_7e1dc:
	.4byte	gUnk_3003CA8
.L_7e1e0:
	.4byte	sUnk_863F258
.L_7e1e4:
	.4byte	gUnk_3003D5A
.L_7e1e8:
	ldr	r0, .L_7e280
	ldrb	r1, [r0, #0]
	ldr	r3, .L_7e284
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_7e21e
	ldr	r2, .L_7e288
	ldrh	r0, [r2, #0]
	add	r0, #4
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	cmp	r0, #0
	ble	.L_7e208
	ldr	r1, .L_7e28c
	ldr	r0, .L_7e290
	str	r0, [r1, #0]
.L_7e208:
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	ldrh	r1, [r3, #6]
	add	r0, r0, r1
	strh	r0, [r3, #6]
	ldr	r2, .L_7e294
	add	r0, r2, #0
	ldrh	r1, [r3, #4]
	add	r0, r0, r1
	strh	r0, [r3, #4]
.L_7e21e:
	ldrh	r0, [r3, #6]
	cmp	r0, #136	@ 0x88
	bls	.L_7e24e
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_7e24e
	ldr	r2, .L_7e298
	ldr	r1, [r2, #0]
	cmp	r1, #0
	bne	.L_7e23c
	ldr	r0, .L_7e29c
	strh	r1, [r0, #2]
	strh	r1, [r0, #0]
	mov	r0, #1
	str	r0, [r2, #0]
.L_7e23c:
	mov	r0, #0
	strb	r0, [r4, #0]
	mov	r0, #136	@ 0x88
	strh	r0, [r3, #6]
	mov	r0, #56	@ 0x38
	strh	r0, [r3, #4]
	ldr	r1, .L_7e28c
	ldr	r0, .L_7e2a0
	str	r0, [r1, #0]
.L_7e24e:
	bl	func_807E688
	bl	func_807E600
	ldr	r5, .L_7e2a4
	ldrh	r3, [r5, #0]
	cmp	r3, #39	@ 0x27
	bls	.L_7e2b8
	ldr	r1, .L_7e2a8
	ldr	r0, .L_7e2ac
	str	r0, [r1, #0]
	ldr	r0, .L_7e2b0
	mov	r4, #0
	strb	r4, [r0, #8]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_7e2b4
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	strh	r4, [r5, #0]
	b	.L_7e5f0
	.align	2, 0
.L_7e280:
	.4byte	gUnk_3003C44
.L_7e284:
	.4byte	gUnk_3003C0C
.L_7e288:
	.4byte	gUnk_3003D5A
.L_7e28c:
	.4byte	gUnk_3003CA4
.L_7e290:
	.4byte	sUnk_863E9F8
.L_7e294:
	.4byte	0xFFFD
.L_7e298:
	.4byte	gUnk_3003D30
.L_7e29c:
	.4byte	gUnk_3003CC0
.L_7e2a0:
	.4byte	sUnk_863E9B0
.L_7e2a4:
	.4byte	gUnk_3003C3A
.L_7e2a8:
	.4byte	gUnk_3003CAC
.L_7e2ac:
	.4byte	sUnk_863EE6C
.L_7e2b0:
	.4byte	gUnk_3003D10
.L_7e2b4:
	.4byte	gUnk_3003C39
.L_7e2b8:
	ldr	r1, .L_7e2e8
	ldrb	r0, [r1, #8]
	add	r0, #248	@ 0xf8
	strb	r0, [r1, #8]
	ldr	r2, .L_7e2ec
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #4]
	add	r0, r0, r2
	strh	r0, [r1, #4]
	ldr	r2, .L_7e2f0
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #6]
	add	r0, r0, r2
	strh	r0, [r1, #6]
	add	r0, r3, #1
	strh	r0, [r5, #0]
	b	.L_7e5f0
	.align	2, 0
.L_7e2e8:
	.4byte	gUnk_3003D10
.L_7e2ec:
	.4byte	sUnk_86397E4
.L_7e2f0:
	.4byte	sUnk_8639834
.L_7e2f4:
	bl	func_807E688
	ldr	r3, .L_7e31c
	ldrh	r0, [r3, #0]
	cmp	r0, #143	@ 0x8f
	bhi	.L_7e32c
	ldr	r2, .L_7e320
	ldr	r1, .L_7e324
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	ldr	r1, .L_7e328
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #6]
	b	.L_7e334
	.align	2, 0
.L_7e31c:
	.4byte	gUnk_3003C3A
.L_7e320:
	.4byte	gUnk_3003D10
.L_7e324:
	.4byte	sUnk_8639884
.L_7e328:
	.4byte	sUnk_86399A4
.L_7e32c:
	ldr	r1, .L_7e3b4
	mov	r0, #200	@ 0xc8
	strh	r0, [r1, #6]
	add	r2, r1, #0
.L_7e334:
	ldr	r4, .L_7e3b8
	ldrh	r0, [r4, #0]
	cmp	r0, #43	@ 0x2b
	bne	.L_7e348
	ldr	r0, .L_7e3bc
	ldr	r1, .L_7e3c0
	str	r1, [r0, #0]
	mov	r0, #0
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
.L_7e348:
	bl	func_807E600
	ldrh	r0, [r4, #0]
	cmp	r0, #142	@ 0x8e
	bne	.L_7e358
	ldr	r1, .L_7e3c4
	mov	r0, #1
	str	r0, [r1, #0]
.L_7e358:
	ldrh	r2, [r4, #0]
	cmp	r2, #177	@ 0xb1
	bne	.L_7e364
	ldr	r1, .L_7e3c8
	mov	r0, #2
	str	r0, [r1, #0]
.L_7e364:
	mov	r0, #178	@ 0xb2
	lsl	r0, r0, #1
	cmp	r2, r0
	bne	.L_7e372
	ldr	r1, .L_7e3c8
	mov	r0, #3
	str	r0, [r1, #0]
.L_7e372:
	ldr	r0, .L_7e3cc
	cmp	r2, r0
	bne	.L_7e37e
	ldr	r1, .L_7e3c8
	mov	r0, #0
	str	r0, [r1, #0]
.L_7e37e:
	ldr	r0, .L_7e3d0
	cmp	r2, r0
	bhi	.L_7e3e8
	ldr	r2, .L_7e3d4
	ldr	r1, .L_7e3d8
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r1, .L_7e3dc
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #2]
	ldr	r3, .L_7e3e0
	ldr	r1, .L_7e3e4
	ldrh	r0, [r4, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r2, #4]
	b	.L_7e3f0
	.align	2, 0
.L_7e3b4:
	.4byte	gUnk_3003D10
.L_7e3b8:
	.4byte	gUnk_3003C3A
.L_7e3bc:
	.4byte	gUnk_3003CAC
.L_7e3c0:
	.4byte	sUnk_863EE94
.L_7e3c4:
	.4byte	gUnk_3003D34
.L_7e3c8:
	.4byte	gUnk_3003C9C
.L_7e3cc:
	.4byte	0x185
.L_7e3d0:
	.4byte	0x115
.L_7e3d4:
	.4byte	gUnk_3003CE8
.L_7e3d8:
	.4byte	sUnk_8639C4A
.L_7e3dc:
	.4byte	sUnk_8639E76
.L_7e3e0:
	.4byte	sUnk_8639B24
.L_7e3e4:
	.4byte	sUnk_8639B34
.L_7e3e8:
	ldr	r1, .L_7e498
	mov	r0, #200	@ 0xc8
	strh	r0, [r1, #2]
	add	r2, r1, #0
.L_7e3f0:
	ldr	r1, .L_7e49c
	ldrh	r0, [r1, #0]
	sub	r0, #199	@ 0xc7
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r1
	cmp	r0, #29
	bhi	.L_7e406
	ldrb	r0, [r2, #8]
	add	r0, #255	@ 0xff
	strb	r0, [r2, #8]
.L_7e406:
	mov	r0, #0
	mov	r7, r9
	ldr	r1, .L_7e4a0
	mov	r8, r1
	ldr	r2, .L_7e4a4
	mov	ip, r2
	mov	r6, #1
.L_7e414:
	lsl	r1, r0, #3
	add	r5, r0, #1
	lsl	r0, r0, #2
	mov	r2, ip
	add	r4, r0, r2
	mov	r0, r8
	add	r2, r1, r0
	mov	r3, #1
.L_7e424:
	ldrh	r1, [r7, #0]
	ldr	r0, [r2, #0]
	cmp	r1, r0
	bne	.L_7e42e
	str	r6, [r4, #0]
.L_7e42e:
	add	r2, #4
	sub	r3, #1
	cmp	r3, #0
	bge	.L_7e424
	add	r0, r5, #0
.L_7e438:
	cmp	r0, #5
	ble	.L_7e414
	mov	r1, r9
	ldrh	r0, [r1, #0]
	ldr	r4, .L_7e4a8
	cmp	r0, r4
	bne	.L_7e45a
	ldr	r1, .L_7e4ac
	mov	r0, #0
	strh	r0, [r1, #2]
	strh	r0, [r1, #0]
	ldr	r1, .L_7e4b0
	ldr	r0, .L_7e4b4
	str	r0, [r1, #0]
	ldr	r0, .L_7e4b8
	bl	m4aSongNumStart
.L_7e45a:
	bl	func_807E644
	cmp	r0, #0
	beq	.L_7e4d4
	mov	r2, r9
.L_7e464:
	ldrh	r0, [r2, #0]
	cmp	r0, r4
	bls	.L_7e4d4
	ldr	r1, .L_7e4bc
	ldr	r0, .L_7e4c0
	str	r0, [r1, #0]
	ldr	r1, .L_7e4c4
	mov	r0, #1
	str	r0, [r1, #0]
	ldr	r0, .L_7e4c8
	mov	r2, #0
	strh	r2, [r0, #2]
	strh	r2, [r0, #0]
	ldr	r1, .L_7e4ac
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #1
	strh	r0, [r1, #4]
	ldr	r1, .L_7e4cc
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_7e4d0
	str	r2, [r0, #0]
	mov	r0, r9
	strh	r2, [r0, #0]
	b	.L_7e5f0
.L_7e498:
	.4byte	gUnk_3003CE8
.L_7e49c:
	.4byte	gUnk_3003C3A
.L_7e4a0:
	.4byte	sUnk_8639AF4
.L_7e4a4:
	.4byte	gUnk_3003D38
.L_7e4a8:
	.4byte	0x103
.L_7e4ac:
	.4byte	gUnk_3003CD0
.L_7e4b0:
	.4byte	gUnk_3003CB0
.L_7e4b4:
	.4byte	sUnk_863E4EC
.L_7e4b8:
	.4byte	0x1C9
.L_7e4bc:
	.4byte	gUnk_3003CA4
.L_7e4c0:
	.4byte	sUnk_863EC48
.L_7e4c4:
	.4byte	gUnk_3003D2C
.L_7e4c8:
	.4byte	gUnk_3003C0C
.L_7e4cc:
	.4byte	gUnk_3003C39
.L_7e4d0:
	.4byte	gUnk_3003C9C
.L_7e4d4:
	ldr	r1, .L_7e4e0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_7e5f0
	.align	2, 0
.L_7e4e0:
	.4byte	gUnk_3003C3A
.L_7e4e4:
	ldr	r6, .L_7e590
	ldrh	r0, [r6, #0]
	mov	r2, #7
	and	r0, r2
	ldr	r5, .L_7e594
	cmp	r0, #0
	bne	.L_7e4f8
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
.L_7e4f8:
	add	r1, r5, #0
	ldrb	r0, [r1, #0]
	cmp	r0, #7
	bls	.L_7e506
	strb	r2, [r1, #0]
	bl	func_80701F4
.L_7e506:
	ldr	r3, .L_7e598
	ldr	r2, .L_7e59c
	ldr	r4, .L_7e5a0
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_7e5a4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r2, [r5, #0]
	lsl	r2, r2, #5
	ldr	r0, [r1, #0]
	add	r0, r0, r2
	str	r0, [r3, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #5
	ldr	r1, .L_7e5a8
	add	r0, r0, r1
	str	r0, [r3, #4]
	ldr	r0, .L_7e5ac
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
	ldr	r2, .L_7e5b0
	ldrh	r0, [r2, #0]
	add	r0, #1
.L_7e540:
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	ldr	r4, .L_7e5b4
	ldr	r3, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e5f0
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e5f0
	strh	r1, [r2, #2]
	ldr	r0, .L_7e5b8
	str	r1, [r0, #0]
	ldr	r1, .L_7e5bc
	ldr	r0, .L_7e5c0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_7e5c4
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #221	@ 0xdd
	bl	m4aSongNumStart
	b	.L_7e5f0
.L_7e590:
	.4byte	gUnk_3003C3A
.L_7e594:
	.4byte	gUnk_3003D1C
.L_7e598:
	.4byte	0x40000D4
.L_7e59c:
	.4byte	sUnk_863A25C
.L_7e5a0:
	.4byte	gCurrentStageNumber
.L_7e5a4:
	.4byte	gCurrentPassage
.L_7e5a8:
	.4byte	0x5000140
.L_7e5ac:
	.4byte	0x80000010
.L_7e5b0:
	.4byte	gUnk_3003C0C
.L_7e5b4:
	.4byte	gUnk_3003CA4
.L_7e5b8:
	.4byte	gUnk_3003D2C
.L_7e5bc:
	.4byte	sUnk_863A43C
.L_7e5c0:
	.4byte	gUnk_3003CA1
.L_7e5c4:
	.4byte	gUnk_3003C39
.L_7e5c8:
	bl	func_807F7D0
	cmp	r0, #0
	beq	.L_7e5f0
	ldr	r0, .L_7e5e4
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7e5e8
	strb	r1, [r0, #0]
	ldr	r1, .L_7e5ec
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #6
	b	.L_7e5f2
.L_7e5e4:
	.4byte	gUnk_3003C3A
.L_7e5e8:
	.4byte	gUnk_3003C39
.L_7e5ec:
	.4byte	gUnk_3003C08
.L_7e5f0:
	mov	r0, #0
.L_7e5f2:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_807E600
func_807E600:
	ldr	r3, .L_7e638
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7e63c
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e640
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7e640
	strh	r2, [r3, #2]
	mov	r0, #1
	b	.L_7e642
.L_7e638:
	.4byte	gUnk_3003D10
.L_7e63c:
	.4byte	gUnk_3003CAC
.L_7e640:
	mov	r0, #0
.L_7e642:
	bx	lr


thumb_func_start func_807E644
func_807E644:
	ldr	r3, .L_7e67c
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7e680
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e684
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7e684
	strh	r2, [r3, #2]
	mov	r0, #1
	b	.L_7e686
.L_7e67c:
	.4byte	gUnk_3003CD0
.L_7e680:
	.4byte	gUnk_3003CB0
.L_7e684:
	mov	r0, #0
.L_7e686:
	bx	lr


thumb_func_start func_807E688
func_807E688:
	push	{r4, lr}
	ldr	r2, .L_7e6dc
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	ldr	r4, .L_7e6e0
	ldr	r3, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7e6c2
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
	bne	.L_7e6c2
	strh	r0, [r2, #2]
	ldr	r0, .L_7e6e4
	str	r0, [r4, #0]
.L_7e6c2:
	ldr	r1, .L_7e6e8
	ldrh	r0, [r1, #8]
	sub	r0, #2
	strh	r0, [r1, #8]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #63	@ 0x3f
	bhi	.L_7e6d6
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #8]
.L_7e6d6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_7e6dc:
	.4byte	gUnk_3003CB8
.L_7e6e0:
	.4byte	gUnk_3003CA8
.L_7e6e4:
	.4byte	sUnk_863F1D0
.L_7e6e8:
	.4byte	gUnk_3003CD8


thumb_func_start func_807E6EC
func_807E6EC:
	ldr	r2, .L_7e718
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	ldr	r3, .L_7e71c
	ldrb	r1, [r3, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_7e706
	ldrb	r0, [r2, #1]
	sub	r0, #1
	strb	r0, [r2, #1]
.L_7e706:
	ldrb	r1, [r3, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_7e716
	ldrb	r0, [r2, #2]
	sub	r0, #1
	strb	r0, [r2, #2]
.L_7e716:
	bx	lr
.L_7e718:
	.4byte	gUnk_3003D1E
.L_7e71c:
	.4byte	gMainTimer


thumb_func_start func_807E720
func_807E720:
	ldr	r0, .L_7e750
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_7e74e
	ldr	r2, .L_7e754
	ldrb	r0, [r2, #0]
	add	r0, #1
	mov	r1, #31
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r3, .L_7e758
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #5
	ldr	r1, .L_7e75c
	add	r0, r0, r1
	str	r0, [r3, #0]
	ldr	r0, .L_7e760
	str	r0, [r3, #4]
	ldr	r0, .L_7e764
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
.L_7e74e:
	bx	lr
.L_7e750:
	.4byte	gMainTimer
.L_7e754:
	.4byte	gUnk_3003D21
.L_7e758:
	.4byte	0x40000D4
.L_7e75c:
	.4byte	sUnk_865CAC4
.L_7e760:
	.4byte	0x5000300
.L_7e764:
	.4byte	0x80000010


thumb_func_start func_807E768
func_807E768:
	ldr	r0, .L_7e77c
	ldrb	r1, [r0, #0]
	mov	r2, #3
	and	r1, r2
	add	r2, r0, #0
	cmp	r1, #1
	bhi	.L_7e784
	ldr	r1, .L_7e780
	mov	r0, #1
	b	.L_7e788
.L_7e77c:
	.4byte	gUnk_3003D58
.L_7e780:
	.4byte	gUnk_3003D50
.L_7e784:
	ldr	r1, .L_7e7a8
	mov	r0, #0
.L_7e788:
	str	r0, [r1, #0]
	add	r3, r1, #0
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #60	@ 0x3c
	bne	.L_7e7a6
	mov	r0, #0
	strb	r0, [r2, #0]
	mov	r1, #0
	str	r1, [r3, #0]
	ldr	r0, .L_7e7ac
	str	r1, [r0, #0]
.L_7e7a6:
	bx	lr
.L_7e7a8:
	.4byte	gUnk_3003D50
.L_7e7ac:
	.4byte	gUnk_3003D54


thumb_func_start func_807E7B0
func_807E7B0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	mov	r0, #0
	mov	r8, r0
	ldr	r0, .L_7e7f8
	ldrb	r0, [r0, #0]
	mov	sl, r0
	lsl	r1, r0, #3
	ldr	r0, .L_7e7fc
	add	r6, r1, r0
	ldr	r0, .L_7e800
	ldr	r2, [r0, #0]
	add	r4, r0, #0
	cmp	r2, #0
	bne	.L_7e7d8
	b	.L_7e982
.L_7e7d8:
	ldr	r0, .L_7e804
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7e878
	ldr	r0, .L_7e808
	ldr	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.L_7e81e
	cmp	r2, #1
	bne	.L_7e810
	ldr	r1, .L_7e80c
	ldrh	r0, [r1, #4]
	add	r0, #3
	b	.L_7e816
	.align	2, 0
.L_7e7f8:
	.4byte	gOamSlotsUsed
.L_7e7fc:
	.4byte	gOamBuffer
.L_7e800:
	.4byte	gUnk_3003D30
.L_7e804:
	.4byte	gUnk_3003C44
.L_7e808:
	.4byte	gUnk_3003CC0
.L_7e80c:
	.4byte	gUnk_3003C0C
.L_7e810:
	ldr	r1, .L_7e860
	ldrh	r0, [r1, #4]
	add	r0, #6
.L_7e816:
	strh	r0, [r3, #4]
	add	r2, r1, #0
	ldrh	r0, [r2, #6]
	strh	r0, [r3, #6]
.L_7e81e:
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_7e864
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7e8fe
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e8fe
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_7e868
	str	r1, [r4, #0]
	strh	r1, [r3, #2]
	ldr	r0, .L_7e860
	ldrh	r0, [r0, #4]
	add	r0, #3
	b	.L_7e8e4
	.align	2, 0
.L_7e860:
	.4byte	gUnk_3003C0C
.L_7e864:
	.4byte	sUnk_863EFE0
.L_7e868:
	strh	r1, [r3, #2]
	ldr	r0, .L_7e874
	ldrh	r0, [r0, #4]
	add	r0, #6
	b	.L_7e8fc
	.align	2, 0
.L_7e874:
	.4byte	gUnk_3003C0C
.L_7e878:
	ldr	r0, .L_7e890
	ldr	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.L_7e8a6
	cmp	r2, #1
	bne	.L_7e898
	ldr	r1, .L_7e894
	ldrh	r0, [r1, #4]
	sub	r0, #3
	b	.L_7e89e
	.align	2, 0
.L_7e890:
	.4byte	gUnk_3003CC0
.L_7e894:
	.4byte	gUnk_3003C0C
.L_7e898:
	ldr	r1, .L_7e8ec
	ldrh	r0, [r1, #4]
	sub	r0, #6
.L_7e89e:
	strh	r0, [r3, #4]
	add	r2, r1, #0
	ldrh	r0, [r2, #6]
	strh	r0, [r3, #6]
.L_7e8a6:
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_7e8f0
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7e8fe
	mov	r0, #0
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e8fe
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_7e8f4
	str	r1, [r4, #0]
	strh	r1, [r3, #2]
	ldr	r0, .L_7e8ec
	ldrh	r0, [r0, #4]
	sub	r0, #3
.L_7e8e4:
	strh	r0, [r3, #4]
	mov	r0, #200	@ 0xc8
	strh	r0, [r3, #6]
	b	.L_7e8fe
.L_7e8ec:
	.4byte	gUnk_3003C0C
.L_7e8f0:
	.4byte	sUnk_863EFB0
.L_7e8f4:
	strh	r1, [r3, #2]
	ldr	r0, .L_7ea14
	ldrh	r0, [r0, #4]
	sub	r0, #6
.L_7e8fc:
	strh	r0, [r3, #4]
.L_7e8fe:
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7e916
	bl	.L_7f66e
.L_7e916:
	cmp	r8, sl
	bge	.L_7e982
	ldr	r1, .L_7ea18
	ldr	r7, .L_7ea1c
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7ea20
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7e934:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ea24
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7e934
	mov	r8, sl
.L_7e982:
	ldr	r0, .L_7ea28
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7e98c
	b	.L_7ead2
.L_7e98c:
	ldr	r2, .L_7ea14
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7ea2c
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r0, sl
	cmp	r0, #128	@ 0x80
	ble	.L_7e9aa
	bl	.L_7f66e
.L_7e9aa:
	cmp	r8, sl
	blt	.L_7e9b0
	b	.L_7ead2
.L_7e9b0:
	ldr	r1, .L_7ea18
	add	r7, r2, #0
	ldr	r2, .L_7ea20
	mov	r9, r2
	ldr	r0, .L_7ea24
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	mov	r0, sl
	sub	r0, r0, r2
	mov	r8, r0
.L_7e9c8:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldr	r1, .L_7ea30
	ldr	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7e9ee
	ldrb	r0, [r5, #1]
	mov	r1, #4
	neg	r1, r1
	and	r1, r0
	mov	r0, #1
	orr	r1, r0
	strb	r1, [r5, #1]
.L_7e9ee:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldr	r2, .L_7ea34
	ldr	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_7ea38
	ldrh	r0, [r7, #4]
	add	r0, r4, r0
	mov	r1, r9
	and	r0, r1
	ldrh	r2, [r5, #2]
	mov	r1, ip
	and	r1, r2
	orr	r1, r0
	strh	r1, [r5, #2]
	b	.L_7eaa0
	.align	2, 0
.L_7ea14:
	.4byte	gUnk_3003C0C
.L_7ea18:
	.4byte	gOamBuffer
.L_7ea1c:
	.4byte	gUnk_3003CC0
.L_7ea20:
	.4byte	0x1FF
.L_7ea24:
	.4byte	0xFFFFFE00
.L_7ea28:
	.4byte	gUnk_3003D50
.L_7ea2c:
	.4byte	gUnk_3003CA4
.L_7ea30:
	.4byte	gUnk_3003D28
.L_7ea34:
	.4byte	gUnk_3003D2C
.L_7ea38:
	ldr	r2, .L_7ea78
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_7ea84
	ldr	r1, .L_7ea7c
	ldr	r0, [r1, #0]
	cmp	r0, #1
	beq	.L_7ea84
	ldrh	r2, [r7, #4]
	sub	r2, r2, r4
	ldrb	r1, [r5, #3]
	lsr	r1, r1, #6
	lsl	r1, r1, #2
	ldrb	r0, [r5, #1]
	lsr	r0, r0, #6
	lsl	r0, r0, #4
	add	r1, r1, r0
	ldr	r0, .L_7ea80
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	sub	r2, r2, r0
	mov	r1, r9
	and	r2, r1
	ldrh	r1, [r5, #2]
	mov	r0, ip
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r5, #3]
	mov	r1, #16
	orr	r0, r1
	b	.L_7ea9e
.L_7ea78:
	.4byte	gUnk_3003C44
.L_7ea7c:
	.4byte	gUnk_3003D28
.L_7ea80:
	.4byte	sUnk_863A2EC
.L_7ea84:
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #17
	neg	r0, r0
	and	r0, r1
.L_7ea9e:
	strb	r0, [r5, #3]
.L_7eaa0:
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	beq	.L_7ead0
	b	.L_7e9c8
.L_7ead0:
	mov	r8, sl
.L_7ead2:
	ldr	r0, .L_7ee7c
	ldr	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_7eb9a
	ldr	r2, .L_7ee80
	ldrh	r1, [r2, #2]
	add	r1, #1
	strh	r1, [r2, #2]
	ldr	r3, .L_7ee84
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7eb12
	mov	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7eb12
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	str	r0, [r4, #0]
.L_7eb12:
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_7eb9a
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7eb30
	bl	.L_7f66e
.L_7eb30:
	cmp	r8, sl
	bge	.L_7eb9a
	ldr	r1, .L_7ee88
	ldr	r0, .L_7ee8c
	mov	r9, r0
	ldr	r2, .L_7ee90
	mov	ip, r2
	mov	r7, #13
	neg	r7, r7
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	mov	r0, sl
	sub	r0, r0, r2
	mov	r8, r0
.L_7eb4e:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	add	r0, r4, #0
	add	r0, #120	@ 0x78
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	add	r1, r4, #0
	add	r1, #209	@ 0xd1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	add	r0, r7, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7eb4e
	mov	r8, sl
.L_7eb9a:
	ldr	r2, .L_7ee94
	str	r2, [sp, #8]
	add	r7, r2, #0
	mov	r0, #0
	str	r0, [sp, #32]
.L_7eba4:
	ldr	r1, [sp, #32]
	ldr	r0, .L_7ee98
	add	r2, r1, r0
	ldr	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_7ec76
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldr	r3, .L_7ee9c
	ldrh	r1, [r7, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7ebe4
	mov	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #0]
	add	r0, #1
	strh	r0, [r7, #0]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7ebe4
	strh	r0, [r7, #2]
	strh	r0, [r7, #0]
	str	r0, [r2, #0]
.L_7ebe4:
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_7ee9c
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7ebfe
	bl	.L_7f66e
.L_7ebfe:
	cmp	r8, sl
	bge	.L_7ec76
	ldr	r0, .L_7eea0
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	ldr	r1, .L_7ee88
	add	r5, r0, r1
	ldr	r0, .L_7eea4
	ldr	r2, [sp, #32]
	add	r0, r2, r0
	ldr	r0, [r0, #0]
	mov	r9, r0
	mov	r0, sl
	mov	r1, r8
	sub	r0, r0, r1
	mov	r8, r0
.L_7ec26:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r2, ip
	add	r0, r2, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r0, r9
	add	r1, r4, r0
	ldr	r0, .L_7ee8c
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ee90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_7ec26
	mov	r8, sl
.L_7ec76:
	add	r7, #4
	ldr	r0, [sp, #32]
	add	r0, #4
	str	r0, [sp, #32]
	ldr	r0, [sp, #8]
	add	r0, #20
	cmp	r7, r0
	ble	.L_7eba4
	ldr	r0, .L_7eea8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7ec90
	b	.L_7ee0a
.L_7ec90:
	ldr	r0, .L_7eeac
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_7ec9a
	b	.L_7efc4
.L_7ec9a:
	ldr	r2, .L_7eeb0
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7eeb4
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r9, r2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7ecba
	bl	.L_7f66e
.L_7ecba:
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #20]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #24]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #28]
	cmp	r8, sl
	bge	.L_7ed44
	mov	r7, r9
	ldr	r1, .L_7ee88
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7ece0:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7ee8c
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ee90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	mov	r1, #10
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7ece0
.L_7ed44:
	mov	r1, r9
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7eeb8
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r9
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7eeb8
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #20]
	strh	r0, [r1, #0]
	mov	r2, r9
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7eeb8
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #24]
	strh	r0, [r2, #0]
	mov	r1, r9
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7eeb8
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #28]
	strh	r0, [r2, #0]
	ldr	r2, .L_7ee88
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #166	@ 0xa6
	strh	r0, [r1, #0]
	ldr	r1, [sp, #20]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #174	@ 0xae
	strh	r0, [r1, #0]
	ldr	r1, [sp, #24]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #182	@ 0xb6
	strh	r0, [r1, #0]
	ldr	r0, [sp, #28]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #190	@ 0xbe
	strh	r1, [r0, #0]
.L_7ee0a:
	ldr	r0, .L_7eeac
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_7ee14
	b	.L_7efc4
.L_7ee14:
	ldr	r1, .L_7eebc
	ldr	r3, [r1, #4]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7ee28
	bl	.L_7f66e
.L_7ee28:
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #20]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #24]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #28]
	cmp	r8, sl
	bge	.L_7eefe
	ldr	r2, .L_7eebc
	mov	r9, r2
	mov	r7, #8
	ldr	r1, .L_7ee88
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7ee52:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r1, r9
	ldrb	r0, [r1, #2]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	b	.L_7eec0
	.align	2, 0
.L_7ee7c:
	.4byte	gUnk_3003D34
.L_7ee80:
	.4byte	gUnk_3003CF4
.L_7ee84:
	.4byte	sUnk_863E1C4
.L_7ee88:
	.4byte	gOamBuffer
.L_7ee8c:
	.4byte	0x1FF
.L_7ee90:
	.4byte	0xFFFFFE00
.L_7ee94:
	.4byte	gUnk_3003CF8
.L_7ee98:
	.4byte	gUnk_3003D38
.L_7ee9c:
	.4byte	sUnk_863E12C
.L_7eea0:
	.4byte	sUnk_8639ADC
.L_7eea4:
	.4byte	sUnk_8639AC4
.L_7eea8:
	.4byte	gUnk_3003C39
.L_7eeac:
	.4byte	gUnk_3003CA0
.L_7eeb0:
	.4byte	gUnk_3003D10
.L_7eeb4:
	.4byte	gUnk_3003CAC
.L_7eeb8:
	.4byte	sSinCosTable
.L_7eebc:
	.4byte	gUnk_3003CE8
.L_7eec0:
	add	r6, #2
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	orr	r0, r7
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	orr	r0, r7
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7ee52
.L_7eefe:
	ldr	r1, .L_7f270
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7f274
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_7f270
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7f274
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #20]
	strh	r0, [r1, #0]
	ldr	r2, .L_7f270
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7f274
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #24]
	strh	r0, [r2, #0]
	ldr	r1, .L_7f270
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7f274
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #28]
	strh	r0, [r2, #0]
	ldr	r2, .L_7f278
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #134	@ 0x86
	strh	r0, [r1, #0]
	ldr	r1, [sp, #20]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #142	@ 0x8e
	strh	r0, [r1, #0]
	ldr	r1, [sp, #24]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #150	@ 0x96
	strh	r0, [r1, #0]
	ldr	r0, [sp, #28]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #158	@ 0x9e
	strh	r1, [r0, #0]
.L_7efc4:
	ldr	r0, .L_7f27c
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_7efd8
	ldr	r0, .L_7f280
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7eff0
	cmp	r0, #5
	beq	.L_7eff0
.L_7efd8:
	sub	r0, r1, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bhi	.L_7f078
	ldr	r0, .L_7f280
	ldrb	r0, [r0, #0]
	sub	r0, #1
.L_7efe8:
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bhi	.L_7f078
.L_7eff0:
	ldr	r2, .L_7f284
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7f288
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f00c
	b	.L_7f66e
.L_7f00c:
	cmp	r8, sl
	bge	.L_7f078
	ldr	r1, .L_7f278
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f268
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7f02a:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f02a
	mov	r8, sl
.L_7f078:
	ldr	r1, .L_7f28c
	ldrh	r0, [r1, #8]
	cmp	r0, #64	@ 0x40
	bhi	.L_7f082
	b	.L_7f226
.L_7f082:
	ldr	r3, .L_7f290
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7f092
	b	.L_7f66e
.L_7f092:
	cmp	r8, sl
	bge	.L_7f10e
	add	r7, r1, #0
	ldr	r1, .L_7f278
	mov	r0, #15
	neg	r0, r0
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f0ac:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
.L_7f0f8:
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f0ac
.L_7f10e:
	ldr	r3, .L_7f294
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f11e
	b	.L_7f66e
.L_7f11e:
	cmp	r8, sl
	bge	.L_7f19a
	ldr	r7, .L_7f28c
	ldr	r1, .L_7f278
	mov	r2, #15
	neg	r2, r2
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f138:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f138
.L_7f19a:
	ldr	r3, .L_7f298
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f1aa
	b	.L_7f66e
.L_7f1aa:
	cmp	r8, sl
	bge	.L_7f226
	ldr	r7, .L_7f28c
	ldr	r1, .L_7f278
	mov	r2, #15
	neg	r2, r2
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f1c4:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #6
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
.L_7f210:
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f1c4
.L_7f226:
	ldr	r0, .L_7f29c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_7f2fa
	ldr	r2, .L_7f2a0
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7f2a4
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f24a
	b	.L_7f66e
.L_7f24a:
	cmp	r8, sl
	bge	.L_7f2fa
	ldr	r1, .L_7f278
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f268
	mov	r9, r0
	mov	r1, sl
	b	.L_7f2a8
	.align	2, 0
.L_7f268:
	.4byte	0x1FF
.L_7f26c:
	.4byte	0xFFFFFE00
.L_7f270:
	.4byte	gUnk_3003CE8
.L_7f274:
	.4byte	sSinCosTable
.L_7f278:
	.4byte	gOamBuffer
.L_7f27c:
	.4byte	gUnk_3003D22
.L_7f280:
	.4byte	gCurrentPassage
.L_7f284:
	.4byte	gUnk_3003CB8
.L_7f288:
	.4byte	gUnk_3003CA8
.L_7f28c:
	.4byte	gUnk_3003CD8
.L_7f290:
	.4byte	sUnk_863ED00
.L_7f294:
	.4byte	sUnk_863ECF8
.L_7f298:
	.4byte	sUnk_863ECF0
.L_7f29c:
	.4byte	gUnk_3003CA0
.L_7f2a0:
	.4byte	gUnk_3003CD0
.L_7f2a4:
	.4byte	gUnk_3003CB0
.L_7f2a8:
	sub	r1, r1, r2
	mov	r8, r1
.L_7f2ac:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f680
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f2ac
	mov	r8, sl
.L_7f2fa:
	ldr	r2, .L_7f684
	ldrh	r1, [r2, #4]
	ldr	r0, .L_7f688
	cmp	r1, r0
	bhi	.L_7f38c
	ldr	r0, .L_7f68c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7f38c
	ldr	r3, .L_7f690
	cmp	r0, #5
	bne	.L_7f314
	ldr	r3, .L_7f694
.L_7f314:
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r0, sl
	cmp	r0, #128	@ 0x80
	ble	.L_7f322
	b	.L_7f66e
.L_7f322:
	cmp	r8, sl
	bge	.L_7f38c
	ldr	r1, .L_7f698
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f69c
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7f340:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f680
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f340
.L_7f38c:
	ldr	r6, .L_7f6a0
	ldr	r5, .L_7f6a4
	ldrh	r0, [r5, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r5, #12]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #12]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r2, sp, #4
	mov	r9, r2
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #14
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r7, .L_7f698
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r7, #6]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #14]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #22]
	strh	r0, [r7, #30]
	ldr	r0, .L_7f6a8
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldr	r5, .L_7f6ac
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, r9
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r7, #38]	@ 0x26
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #46]	@ 0x2e
	mov	r2, r9
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #54]	@ 0x36
	strh	r0, [r7, #62]	@ 0x3e
	mov	r1, r8
	ldrb	r0, [r1, #1]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #12]
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #1]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	add	r2, r7, #0
	add	r2, #70	@ 0x46
	strh	r1, [r2, #0]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #78	@ 0x4e
	strh	r1, [r2, #0]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #86	@ 0x56
	strh	r1, [r2, #0]
	add	r1, r7, #0
	add	r1, #94	@ 0x5e
	strh	r0, [r1, #0]
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #12]
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	add	r2, r7, #0
	add	r2, #102	@ 0x66
	strh	r1, [r2, #0]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #110	@ 0x6e
	strh	r1, [r2, #0]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #118	@ 0x76
	strh	r1, [r2, #0]
	add	r1, r7, #0
	add	r1, #126	@ 0x7e
	strh	r0, [r1, #0]
	ldr	r0, .L_7f6b0
	mov	r1, sl
	strb	r1, [r0, #0]
.L_7f66e:
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	b	func_807F6B4  @ ?????
.L_7f680:
	.4byte	0xFFFFFE00
.L_7f684:
	.4byte	gUnk_3003CC8
.L_7f688:
	.4byte	0x103
.L_7f68c:
	.4byte	gUnk_3003C99
.L_7f690:
	.4byte	sUnk_863E4AA
.L_7f694:
	.4byte	sUnk_863E24C
.L_7f698:
	.4byte	gOamBuffer
.L_7f69c:
	.4byte	0x1FF
.L_7f6a0:
	.4byte	sSinCosTable
.L_7f6a4:
	.4byte	gUnk_3003C0C
.L_7f6a8:
	.4byte	gUnk_3003D1E
.L_7f6ac:
	.4byte	gUnk_3003CD8
.L_7f6b0:
	.4byte	gOamSlotsUsed


thumb_func_start func_807F6B4
func_807F6B4:
	push	{r4, lr}
	mov	r3, #0
	ldr	r0, .L_7f6cc
	ldr	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #4
	bhi	.L_7f764
	lsl	r0, r1, #2
	ldr	r1, .L_7f6d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7f6cc:
	.4byte	gUnk_3003C9C
.L_7f6d0:
	.4byte	.L_7f6d4
.L_7f6d4:
	.4byte	.L_7f6e8
	.4byte	.L_7f6f4
	.4byte	.L_7f720
	.4byte	.L_7f738
	.4byte	.L_7f750
.L_7f6e8:
	mov	r3, #0
	ldr	r0, .L_7f6f0
	strb	r3, [r0, #0]
	b	.L_7f764
.L_7f6f0:
	.4byte	gUnk_3003C9A
.L_7f6f4:
	ldr	r2, .L_7f71c
	ldrb	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	mov	r3, #1
	cmp	r0, #1
	bhi	.L_7f704
	sub	r3, #2
.L_7f704:
	add	r0, r1, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #30
	bls	.L_7f764
	mov	r0, #0
	strb	r0, [r2, #0]
	mov	r0, #0
	str	r0, [r4, #0]
	b	.L_7f764
	.align	2, 0
.L_7f71c:
	.4byte	gUnk_3003C9A
.L_7f720:
	ldr	r2, .L_7f734
	ldrb	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	mov	r3, #1
	cmp	r0, #1
	bhi	.L_7f760
	sub	r3, #2
	b	.L_7f760
	.align	2, 0
.L_7f734:
	.4byte	gUnk_3003C9A
.L_7f738:
	ldr	r2, .L_7f74c
	ldrb	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	mov	r3, #1
	cmp	r0, #1
	bhi	.L_7f760
	mov	r3, #0
	b	.L_7f760
	.align	2, 0
.L_7f74c:
	.4byte	gUnk_3003C9A
.L_7f750:
	ldr	r2, .L_7f76c
	ldrb	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	mov	r3, #2
	cmp	r0, #1
	bhi	.L_7f760
	sub	r3, #4
.L_7f760:
	add	r0, r1, #1
	strb	r0, [r2, #0]
.L_7f764:
	add	r0, r3, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L_7f76c:
	.4byte	gUnk_3003C9A


thumb_func_start func_807F770
func_807F770:
	push	{r4, r5, lr}
	ldr	r5, .L_7f7b0
	ldrh	r0, [r5, #0]
	sub	r0, #10
	strh	r0, [r5, #0]
	ldr	r4, .L_7f7b4
	ldrh	r0, [r4, #0]
	add	r3, r0, #0
	add	r3, #10
	strh	r3, [r4, #0]
	ldr	r2, .L_7f7b8
	ldrh	r0, [r2, #0]
	sub	r0, #10
	strh	r0, [r2, #0]
	ldr	r1, .L_7f7bc
	ldrh	r0, [r1, #0]
	add	r0, #10
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #160	@ 0xa0
	ble	.L_7f7a4
	mov	r0, #0
	strh	r0, [r2, #0]
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
.L_7f7a4:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	cmp	r0, #240	@ 0xf0
	bgt	.L_7f7c0
	mov	r0, #0
	b	.L_7f7ca
.L_7f7b0:
	.4byte	gUnk_3003C4C
.L_7f7b4:
	.4byte	gUnk_3003C4E
.L_7f7b8:
	.4byte	gUnk_3003C50
.L_7f7bc:
	.4byte	gUnk_3003C52
.L_7f7c0:
	mov	r0, #0
	strh	r0, [r5, #0]
	mov	r0, #240	@ 0xf0
	strh	r0, [r4, #0]
	mov	r0, #1
.L_7f7ca:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_807F7D0
func_807F7D0:
	push	{r4, lr}
	ldr	r4, .L_7f818
	ldrh	r1, [r4, #0]
	add	r1, #10
	strh	r1, [r4, #0]
	ldr	r3, .L_7f81c
	ldrh	r0, [r3, #0]
	sub	r0, #10
	strh	r0, [r3, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	ldr	r2, .L_7f820
	cmp	r1, #40	@ 0x28
	ble	.L_7f7fa
	ldr	r0, .L_7f824
	ldrh	r1, [r0, #0]
	add	r1, #10
	strh	r1, [r0, #0]
	ldrh	r0, [r2, #0]
	sub	r0, #10
	strh	r0, [r2, #0]
.L_7f7fa:
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	cmp	r0, #79	@ 0x4f
	bgt	.L_7f80a
	ldr	r1, .L_7f824
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
.L_7f80a:
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #119	@ 0x77
	ble	.L_7f828
	mov	r0, #0
	b	.L_7f830
	.align	2, 0
.L_7f818:
	.4byte	gUnk_3003C4C
.L_7f81c:
	.4byte	gUnk_3003C4E
.L_7f820:
	.4byte	gUnk_3003C52
.L_7f824:
	.4byte	gUnk_3003C50
.L_7f828:
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #0]
	strh	r0, [r3, #0]
	mov	r0, #1
.L_7f830:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_807F838
func_807F838:
	push	{r4, lr}
	bl	func_807F6B4
	ldr	r3, .L_7f8a4
	ldr	r1, .L_7f8a8
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldr	r2, .L_7f8ac
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r3, #0]
	add	r3, #4
	ldr	r1, .L_7f8b0
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldr	r2, .L_7f8b4
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r3, #0]
	ldr	r1, .L_7f8b8
	add	r2, r0, #0
	add	r2, #8
	strh	r2, [r1, #0]
	ldr	r3, .L_7f8bc
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7f876
	ldr	r4, .L_7f8c0
	add	r0, r1, r4
.L_7f876:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	ldr	r1, .L_7f8c4
	strh	r0, [r1, #0]
	ldr	r0, .L_7f8c8
	strh	r2, [r0, #0]
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7f892
	ldr	r2, .L_7f8c0
	add	r0, r1, r2
.L_7f892:
	asr	r0, r0, #9
	lsl	r0, r0, #9
	sub	r0, r1, r0
	ldr	r1, .L_7f8cc
	strh	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7f8a4:
	.4byte	0x4000040
.L_7f8a8:
	.4byte	gUnk_3003C4C
.L_7f8ac:
	.4byte	gUnk_3003C4E
.L_7f8b0:
	.4byte	gUnk_3003C50
.L_7f8b4:
	.4byte	gUnk_3003C52
.L_7f8b8:
	.4byte	0x4000012
.L_7f8bc:
	.4byte	gUnk_3003C20
.L_7f8c0:
	.4byte	0x1FF
.L_7f8c4:
	.4byte	0x4000010
.L_7f8c8:
	.4byte	0x4000016
.L_7f8cc:
	.4byte	0x4000014
