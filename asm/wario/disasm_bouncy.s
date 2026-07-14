.include "macros.s.inc"


thumb_func_start func_8019DDC
func_8019DDC:
	push	{lr}
	ldr	r1, .L_19df8
	ldr	r0, .L_19dfc
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	pop	{r1}
	bx	r1
	.align	2, 0
.L_19df8:
	.4byte	sBouncyWarioPoseTable
.L_19dfc:
	.4byte	gWarioData


thumb_func_start func_8019E00
func_8019E00:
	ldr	r3, .L_19e1c
	ldr	r2, .L_19e20
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r3, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcs	.L_19e24
	mov	r0, #255	@ 0xff
	b	.L_19e2a
	.align	2, 0
.L_19e1c:
	.4byte	gWarioData
.L_19e20:
	.4byte	sUnk_8340750
.L_19e24:
	mov	r0, #1
	strb	r0, [r3, #8]
	mov	r0, #8
.L_19e2a:
	bx	lr


thumb_func_start func_8019E2C
func_8019E2C:
	ldr	r2, .L_19e48
	ldr	r3, .L_19e4c
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcs	.L_19e50
	mov	r0, #255	@ 0xff
	b	.L_19e52
	.align	2, 0
.L_19e48:
	.4byte	gWarioData
.L_19e4c:
	.4byte	sUnk_8340750
.L_19e50:
	mov	r0, #8
.L_19e52:
	bx	lr


thumb_func_start func_8019E54
func_8019E54:
	push	{r4, r5, lr}
	ldr	r0, .L_19e6c
	ldrb	r1, [r0, #1]
	add	r3, r0, #0
	cmp	r1, #8
	bne	.L_19e7a
	ldrh	r1, [r3, #12]
	ldr	r0, .L_19e70
	cmp	r1, r0
	bls	.L_19e74
	mov	r0, #254	@ 0xfe
	b	.L_19efc
.L_19e6c:
	.4byte	gWarioData
.L_19e70:
	.4byte	0x12B
.L_19e74:
	add	r0, r1, #1
	strh	r0, [r3, #12]
	b	.L_19eaa
.L_19e7a:
	ldr	r2, .L_19ec8
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19eaa
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19eaa
	strb	r0, [r3, #31]
.L_19eaa:
	ldr	r0, .L_19ecc
	add	r5, r3, #0
	ldrh	r2, [r0, #0]
	ldrh	r1, [r5, #14]
	add	r4, r2, #0
	and	r4, r1
	cmp	r4, #0
	beq	.L_19edc
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_19ed0
	mov	r0, #32
	strh	r0, [r5, #22]
	b	.L_19efa
.L_19ec8:
	.4byte	sUnk_8340768
.L_19ecc:
	.4byte	gButtonsHeld
.L_19ed0:
	ldr	r0, .L_19ed8
	strh	r0, [r5, #22]
	b	.L_19efa
	.align	2, 0
.L_19ed8:
	.4byte	0xFFE0
.L_19edc:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_19ef2
	strh	r1, [r5, #14]
	strh	r4, [r5, #22]
	b	.L_19efa
.L_19ef2:
	ldrb	r0, [r3, #1]
	cmp	r0, #8
	bne	.L_19efa
	strh	r2, [r3, #22]
.L_19efa:
	mov	r0, #255	@ 0xff
.L_19efc:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8019F02
func_8019F02:
	.align	2, 0
	ldr	r2, .L_19f38
	ldr	r3, .L_19f3c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19f40
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19f40
	mov	r0, #254	@ 0xfe
	b	.L_19f42
.L_19f38:
	.4byte	gWarioData
.L_19f3c:
	.4byte	sUnk_83407BC
.L_19f40:
	mov	r0, #255	@ 0xff
.L_19f42:
	bx	lr


thumb_func_start func_8019F44
func_8019F44:
	ldr	r2, .L_19f7c
	ldr	r3, .L_19f80
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19f84
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19f84
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_19f86
.L_19f7c:
	.4byte	gWarioData
.L_19f80:
	.4byte	sUnk_834084C
.L_19f84:
	mov	r0, #255	@ 0xff
.L_19f86:
	bx	lr


thumb_func_start func_8019F88
func_8019F88:
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_8019F8C
func_8019F8C:
	ldr	r2, .L_19fc4
	ldr	r3, .L_19fc8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19fcc
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19fcc
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_19fce
.L_19fc4:
	.4byte	gWarioData
.L_19fc8:
	.4byte	sUnk_83408DC
.L_19fcc:
	mov	r0, #255	@ 0xff
.L_19fce:
	bx	lr


thumb_func_start func_8019FD0
func_8019FD0:
	ldr	r2, .L_19fe0
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_19fe4
	mov	r0, #32
	b	.L_19fe6
.L_19fe0:
	.4byte	gWarioData
.L_19fe4:
	ldr	r0, .L_1a020
.L_19fe6:
	strh	r0, [r2, #22]
	ldr	r3, .L_1a024
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a01a
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1a01a
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_1a01a:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_1a020:
	.4byte	0xFFE0
.L_1a024:
	.4byte	sUnk_8340924


thumb_func_start func_801A028
func_801A028:
	ldr	r0, .L_1a048
	ldrb	r1, [r0, #31]
	add	r2, r0, #0
	cmp	r1, #1
	bhi	.L_1a050
	ldr	r0, .L_1a04c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a050
	mov	r0, #4
	strb	r0, [r2, #1]
	mov	r0, #3
	strb	r0, [r2, #31]
	b	.L_1a08c
.L_1a048:
	.4byte	gWarioData
.L_1a04c:
	.4byte	gButtonsHeld
.L_1a050:
	ldr	r3, .L_1a088
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a08c
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1a08c
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1a08e
	.align	2, 0
.L_1a088:
	.4byte	sUnk_83409B4
.L_1a08c:
	mov	r0, #255	@ 0xff
.L_1a08e:
	bx	lr


thumb_func_start func_801A090
func_801A090:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r1, .L_1a0b4
	ldrb	r0, [r1, #1]
	cmp	r0, #7
	bne	.L_1a0b8
	cmp	r4, #253	@ 0xfd
	bne	.L_1a0b8
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #4]
	mov	r0, #2
	bl	func_8012BAC
	b	.L_1a1be
	.align	2, 0
.L_1a0b4:
	.4byte	gWarioData
.L_1a0b8:
	bl	func_8010230
	cmp	r4, #0
	bne	.L_1a0d8
	ldr	r0, .L_1a0d4
	ldrb	r0, [r0, #26]
	cmp	r0, #2
	bne	.L_1a0ca
	mov	r4, #1
.L_1a0ca:
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1a0e0
.L_1a0d4:
	.4byte	gWarioDataCopy
.L_1a0d8:
	ldr	r0, .L_1a0f0
	ldr	r1, .L_1a0f4
	ldrh	r1, [r1, #12]
	strh	r1, [r0, #12]
.L_1a0e0:
	cmp	r4, #253	@ 0xfd
	beq	.L_1a178
	cmp	r4, #253	@ 0xfd
	bgt	.L_1a0f8
	cmp	r4, #3
	beq	.L_1a1ac
	b	.L_1a1ba
	.align	2, 0
.L_1a0f0:
	.4byte	gWarioData
.L_1a0f4:
	.4byte	gWarioDataCopy
.L_1a0f8:
	cmp	r4, #254	@ 0xfe
	bne	.L_1a1ba
	ldr	r0, .L_1a118
	ldrb	r0, [r0, #1]
	cmp	r0, #9
	bne	.L_1a120
	ldr	r1, .L_1a11c
	mov	r0, #8
	strb	r0, [r1, #1]
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #24]
	add	r0, #240	@ 0xf0
	bl	m4aSongNumStart
	b	.L_1a162
	.align	2, 0
.L_1a118:
	.4byte	gWarioDataCopy
.L_1a11c:
	.4byte	gWarioData
.L_1a120:
	cmp	r0, #4
	bne	.L_1a148
	ldr	r1, .L_1a13c
	mov	r2, #2
	strb	r2, [r1, #1]
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #24]
	ldr	r0, .L_1a140
	strb	r2, [r0, #0]
	ldr	r0, .L_1a144
	bl	m4aSongNumStart
	b	.L_1a162
	.align	2, 0
.L_1a13c:
	.4byte	gWarioData
.L_1a140:
	.4byte	gCurrentWarioEffect
.L_1a144:
	.4byte	0x171
.L_1a148:
	cmp	r0, #6
	bne	.L_1a15c
	ldr	r0, .L_1a158
	mov	r1, #7
	strb	r1, [r0, #1]
	mov	r1, #128	@ 0x80
	strh	r1, [r0, #24]
	b	.L_1a162
.L_1a158:
	.4byte	gWarioData
.L_1a15c:
	ldr	r1, .L_1a170
	mov	r0, #5
	strb	r0, [r1, #1]
.L_1a162:
	ldr	r0, .L_1a174
	ldrb	r1, [r0, #8]
	cmp	r1, #0
	bne	.L_1a1be
	ldr	r0, .L_1a170
	strh	r1, [r0, #24]
	b	.L_1a1be
.L_1a170:
	.4byte	gWarioData
.L_1a174:
	.4byte	gWarioDataCopy
.L_1a178:
	ldr	r1, .L_1a190
	ldrb	r0, [r1, #1]
	cmp	r0, #5
	bne	.L_1a194
	mov	r0, #6
	strb	r0, [r1, #1]
	mov	r0, #184	@ 0xb8
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1a198
	.align	2, 0
.L_1a190:
	.4byte	gWarioData
.L_1a194:
	mov	r0, #9
	strb	r0, [r1, #1]
.L_1a198:
	ldr	r1, .L_1a1a8
	ldrb	r0, [r1, #26]
	cmp	r0, #1
	bne	.L_1a1be
	ldrh	r0, [r1, #20]
	sub	r0, #1
	strh	r0, [r1, #20]
	b	.L_1a1be
.L_1a1a8:
	.4byte	gWarioData
.L_1a1ac:
	mov	r0, #185	@ 0xb9
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
.L_1a1ba:
	ldr	r0, .L_1a1c4
	strb	r4, [r0, #1]
.L_1a1be:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1a1c4:
	.4byte	gWarioData


thumb_func_start func_801A1C8
func_801A1C8:
	push	{r4, lr}
	ldr	r4, .L_1a240
	ldr	r2, .L_1a244
	ldr	r3, .L_1a248
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #8]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #9]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #10]
	mov	r4, #0
	ldrb	r0, [r3, #26]
	cmp	r0, #2
	bne	.L_1a212
	ldrh	r1, [r3, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrb	r0, [r3, #1]
	cmp	r0, #2
	beq	.L_1a212
	add	r0, r1, #0
	sub	r0, #8
	strh	r0, [r3, #24]
.L_1a212:
	add	r2, r3, #0
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1a224
	ldr	r0, .L_1a24c
	strh	r0, [r2, #24]
.L_1a224:
	ldrh	r0, [r3, #20]
	sub	r0, r0, r4
	strh	r0, [r3, #20]
	ldrh	r0, [r3, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r3, #18]
	add	r0, r0, r1
	strh	r0, [r3, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1a240:
	.4byte	gUnk_3001918
.L_1a244:
	.4byte	sUnk_82DDB60
.L_1a248:
	.4byte	gWarioData
.L_1a24c:
	.4byte	0xFF80


thumb_func_start func_801A250
func_801A250:
	push	{r4, r5, lr}
	ldr	r4, .L_1a2a8
	ldr	r2, .L_1a2ac
	ldr	r3, .L_1a2b0
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #11]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #12]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #13]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #17]
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_1a294
	mov	r0, #0
	strb	r0, [r4, #12]
.L_1a294:
	mov	r5, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a2b4
	bl	func_8014C4C
	b	.L_1a2e4
	.align	2, 0
.L_1a2a8:
	.4byte	gUnk_3001918
.L_1a2ac:
	.4byte	sUnk_82DDB60
.L_1a2b0:
	.4byte	gWarioData
.L_1a2b4:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a2c2
	bl	func_8014930
	b	.L_1a2e4
.L_1a2c2:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_1a2da
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_1a2d4
	bl	func_8014930
	b	.L_1a2e4
.L_1a2d4:
	bl	func_80143D8
	b	.L_1a2e4
.L_1a2da:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_1a2e8
	bl	func_8014758
.L_1a2e4:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_1a2e8:
	ldr	r4, .L_1a310
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_1a314
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_1a356
.L_1a310:
	.4byte	gWarioData
.L_1a314:
	ldr	r0, .L_1a338
	ldrb	r1, [r0, #17]
	add	r2, r0, #0
	cmp	r1, #255	@ 0xff
	beq	.L_1a356
	ldrb	r0, [r4, #1]
	cmp	r0, #7
	bne	.L_1a33c
	cmp	r5, #253	@ 0xfd
	bne	.L_1a33c
	mov	r0, #0
	strb	r0, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #2
	bl	func_8012BAC
	b	.L_1a356
.L_1a338:
	.4byte	gUnk_3001918
.L_1a33c:
	ldrb	r0, [r2, #19]
	cmp	r0, #0
	beq	.L_1a34c
	ldr	r0, .L_1a35c
	ldrb	r0, [r0, #1]
	cmp	r0, #2
	bne	.L_1a34c
	mov	r5, #3
.L_1a34c:
	cmp	r5, #255	@ 0xff
	beq	.L_1a356
	add	r0, r5, #0
	bl	func_801A090
.L_1a356:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1a35c:
	.4byte	gWarioData


thumb_func_start func_801A360
func_801A360:
.L_1a360:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
	ldr	r1, .L_1a3c4
	lsl	r4, r4, #2
	ldr	r2, .L_1a3c8
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	add	r4, r4, r0
	add	r4, r4, r1
	ldr	r3, [r4, #0]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, [r3, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #48]	@ 0x30
	add	r1, #1
	str	r1, [r2, #36]	@ 0x24
	ldrh	r0, [r2, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r2, #44]	@ 0x2c
	ldr	r0, [r3, #4]
	str	r0, [r2, #32]
	ldr	r1, .L_1a3cc
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldrh	r0, [r2, #12]
	cmp	r0, #240	@ 0xf0
	bls	.L_1a3dc
	ldr	r2, .L_1a3d0
	ldr	r0, .L_1a3d4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a3d8
	add	r2, #32
	b	.L_1a3fe
	.align	2, 0
.L_1a3c4:
	.4byte	sUnk_82DDB10
.L_1a3c8:
	.4byte	gWarioData
.L_1a3cc:
	.4byte	gWarioPaletteSize
.L_1a3d0:
	.4byte	sUnk_82DE8B8
.L_1a3d4:
	.4byte	gMainTimer
.L_1a3d8:
	add	r2, #64	@ 0x40
	b	.L_1a3fe
.L_1a3dc:
	cmp	r0, #180	@ 0xb4
	bls	.L_1a3fc
	ldr	r0, .L_1a3f4
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
.L_1a3e8:
	cmp	r0, #0
	beq	.L_1a3fc
	ldr	r2, .L_1a3f8
	add	r2, #32
	b	.L_1a3fe
	.align	2, 0
.L_1a3f4:
	.4byte	gMainTimer
.L_1a3f8:
	.4byte	sUnk_82DE8B8
.L_1a3fc:
	ldr	r2, .L_1a41c
.L_1a3fe:
	add	r0, r2, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r2, .L_1a420
	add	r0, r2, #0
	mov	r1, #16
	mov	r2, #16
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a41c:
	.4byte	sUnk_82DDDA0
.L_1a420:
	.4byte	sUnk_82DE8B8


thumb_func_start func_801A424
func_801A424:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_1a49c
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #11
	beq	.L_1a490
	ldr	r4, .L_1a4a0
	ldr	r0, [r4, #0]
	mov	r8, r0
	mov	r5, #150	@ 0x96
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1a4a4
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #150	@ 0x96
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #150	@ 0x96
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #40	@ 0x28
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #40	@ 0x28
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #11
	strb	r0, [r7, #0]
.L_1a490:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a49c:
	.4byte	gUnk_30031BC
.L_1a4a0:
	.4byte	gMPlayTable
.L_1a4a4:
	.4byte	0xFFFF


thumb_func_start func_801A4A8
func_801A4A8:
	push	{r4, lr}
	ldr	r3, .L_1a4ec
	ldr	r4, .L_1a4f0
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_1a4f4
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #56]	@ 0x38
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r3, #7
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r0, #2
	bne	.L_1a4f8
	strb	r0, [r4, #26]
	b	.L_1a500
.L_1a4ec:
	.4byte	sUnk_82DDB60
.L_1a4f0:
	.4byte	gWarioData
.L_1a4f4:
	.4byte	sUnk_82DEB18
.L_1a4f8:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_1a500
	strb	r1, [r4, #26]
.L_1a500:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
