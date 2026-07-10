.include "macros.s.inc"


thumb_func_start func_8015CF8
func_8015CF8:
	push	{lr}
	ldr	r1, .L_15d14
	ldr	r0, .L_15d18
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
.L_15d14:
	.4byte	sWarioWaterPoseTable
.L_15d18:
	.4byte	gWarioData


thumb_func_start func_8015D1C
func_8015D1C:
	ldr	r0, .L_15d2c
	mov	r1, #24
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bge	.L_15d30
	mov	r0, #255	@ 0xff
	b	.L_15d32
	.align	2, 0
.L_15d2c:
	.4byte	gWarioData
.L_15d30:
	mov	r0, #5
.L_15d32:
	bx	lr


thumb_func_start func_8015D34
func_8015D34:
	ldr	r0, .L_15d5c
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_15d58
	ldr	r2, .L_15d60
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_15d64
	ldrh	r0, [r2, #22]
	sub	r0, #4
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bgt	.L_15d70
.L_15d58:
	mov	r0, #5
	b	.L_15dce
.L_15d5c:
	.4byte	gButtonsHeld
.L_15d60:
	.4byte	gWarioData
.L_15d64:
	ldrh	r0, [r2, #22]
	add	r0, #4
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bge	.L_15d58
.L_15d70:
	ldr	r1, .L_15dbc
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_15d7c
	mov	r0, #3
	strb	r0, [r1, #0]
.L_15d7c:
	ldr	r3, .L_15dc0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_15dae
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
	bne	.L_15dae
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_15dae:
	ldrb	r2, [r2, #31]
	cmp	r2, #5
	bls	.L_15dc8
	ldr	r1, .L_15dc4
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_15dcc
.L_15dbc:
	.4byte	gWarioDustEffect2
.L_15dc0:
	.4byte	sUnk_82FC108
.L_15dc4:
	.4byte	gCurrentWarioEffect
.L_15dc8:
	ldr	r0, .L_15dd0
	strb	r2, [r0, #3]
.L_15dcc:
	mov	r0, #255	@ 0xff
.L_15dce:
	bx	lr
.L_15dd0:
	.4byte	gCurrentWarioEffect


thumb_func_start func_8015DD4
func_8015DD4:
	ldr	r0, .L_15dfc
	ldrh	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_15df8
	ldr	r2, .L_15e00
	ldrh	r1, [r2, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_15e04
	ldrh	r0, [r2, #24]
	sub	r0, #4
	strh	r0, [r2, #24]
	lsl	r0, r0, #16
	cmp	r0, #0
	bgt	.L_15e10
.L_15df8:
	mov	r0, #5
	b	.L_15e6e
.L_15dfc:
	.4byte	gButtonsHeld
.L_15e00:
	.4byte	gWarioData
.L_15e04:
	ldrh	r0, [r2, #24]
	add	r0, #4
	strh	r0, [r2, #24]
	lsl	r0, r0, #16
	cmp	r0, #0
	bge	.L_15df8
.L_15e10:
	ldr	r1, .L_15e5c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_15e1c
	mov	r0, #3
	strb	r0, [r1, #0]
.L_15e1c:
	ldr	r3, .L_15e60
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_15e4e
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
	bne	.L_15e4e
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_15e4e:
	ldrb	r2, [r2, #31]
	cmp	r2, #5
	bls	.L_15e68
	ldr	r1, .L_15e64
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_15e6c
.L_15e5c:
	.4byte	gWarioDustEffect2
.L_15e60:
	.4byte	sUnk_82FC2F4
.L_15e64:
	.4byte	gCurrentWarioEffect
.L_15e68:
	ldr	r0, .L_15e70
	strb	r2, [r0, #3]
.L_15e6c:
	mov	r0, #255	@ 0xff
.L_15e6e:
	bx	lr
.L_15e70:
	.4byte	gCurrentWarioEffect


thumb_func_start func_8015E74
func_8015E74:
	push	{r4, r5, lr}
	ldr	r0, .L_15e8c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_15e94
	ldr	r1, .L_15e90
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #16]
.L_15e88:
	mov	r0, #2
	b	.L_15f76
.L_15e8c:
	.4byte	gButtonsPressed
.L_15e90:
	.4byte	gWarioData
.L_15e94:
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_15ec0
	ldr	r2, .L_15eb8
	ldr	r0, .L_15ebc
	ldrh	r1, [r0, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r1
	strh	r0, [r2, #16]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_15e88
	mov	r0, #1
	b	.L_15f76
.L_15eb8:
	.4byte	gWarioData
.L_15ebc:
	.4byte	gButtonsHeld
.L_15ec0:
	ldr	r3, .L_15ee4
	ldr	r2, .L_15ee8
	ldrh	r1, [r2, #14]
	mov	r0, #48	@ 0x30
	add	r4, r1, #0
	eor	r4, r0
	ldrh	r1, [r3, #0]
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_15eec
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	bne	.L_15ef0
	mov	r0, #5
	b	.L_15f76
	.align	2, 0
.L_15ee4:
	.4byte	gButtonsHeld
.L_15ee8:
	.4byte	gWarioData
.L_15eec:
	strh	r4, [r2, #14]
	strh	r5, [r2, #22]
.L_15ef0:
	ldrh	r1, [r3, #0]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_15efe
	mov	r0, #32
	b	.L_15f0c
.L_15efe:
	mov	r0, #32
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_15f0c
	ldr	r0, .L_15f1c
.L_15f0c:
	strh	r0, [r2, #22]
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_15f20
	mov	r0, #32
	b	.L_15f2e
.L_15f1c:
	.4byte	0xFFE0
.L_15f20:
	mov	r0, #128	@ 0x80
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_15f2e
	ldr	r0, .L_15f7c
.L_15f2e:
	strh	r0, [r2, #24]
	ldrh	r0, [r3, #0]
	mov	r1, #192	@ 0xc0
	and	r1, r0
	mov	r4, #0
	strh	r1, [r2, #16]
	ldr	r1, .L_15f80
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_15f46
	mov	r0, #3
	strb	r0, [r1, #0]
.L_15f46:
	ldr	r3, .L_15f84
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_15f74
	strb	r4, [r2, #30]
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
	bne	.L_15f74
	strb	r4, [r2, #31]
.L_15f74:
	mov	r0, #255	@ 0xff
.L_15f76:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_15f7c:
	.4byte	0xFFE0
.L_15f80:
	.4byte	gWarioDustEffect2
.L_15f84:
	.4byte	sUnk_82FC168


thumb_func_start func_8015F88
func_8015F88:
	push	{r4, r5, lr}
	ldr	r0, .L_15fb8
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_15fc4
	ldr	r1, .L_15fbc
	mov	r2, #0
	strb	r2, [r1, #0]
	mov	r0, #2
	strb	r0, [r1, #8]
	strh	r2, [r1, #22]
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #24]
	ldr	r1, .L_15fc0
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #15
	bl	m4aSongNumStart
	mov	r0, #254	@ 0xfe
	b	.L_160e8
	.align	2, 0
.L_15fb8:
	.4byte	gButtonsPressed
.L_15fbc:
	.4byte	gWarioData
.L_15fc0:
	.4byte	gWarioDustEffect1
.L_15fc4:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_15fdc
	ldr	r1, .L_15fd8
	ldrh	r0, [r1, #20]
	add	r0, #16
	strh	r0, [r1, #20]
	mov	r0, #1
	b	.L_160e8
.L_15fd8:
	.4byte	gWarioData
.L_15fdc:
	ldr	r1, .L_15ff4
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_15ffc
	ldr	r1, .L_15ff8
	ldrh	r0, [r1, #20]
	add	r0, #16
	strh	r0, [r1, #20]
	mov	r0, #3
	b	.L_160e8
.L_15ff4:
	.4byte	gButtonsHeld
.L_15ff8:
	.4byte	gWarioData
.L_15ffc:
	ldr	r0, .L_16018
	ldrh	r3, [r0, #14]
	add	r4, r2, #0
	and	r4, r3
	add	r5, r0, #0
	cmp	r4, #0
	beq	.L_16028
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_1601c
	mov	r0, #32
	strh	r0, [r5, #22]
	b	.L_1603a
.L_16018:
	.4byte	gWarioData
.L_1601c:
	ldr	r0, .L_16024
	strh	r0, [r5, #22]
	b	.L_1603a
	.align	2, 0
.L_16024:
	.4byte	0xFFE0
.L_16028:
	mov	r0, #48	@ 0x30
	eor	r3, r0
	add	r0, r3, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_16038
	strh	r3, [r5, #14]
.L_16038:
	strh	r4, [r5, #22]
.L_1603a:
	ldrh	r1, [r1, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_16052
	ldrb	r0, [r5, #31]
	cmp	r0, #5
	bls	.L_1604e
	mov	r0, #4
	b	.L_160e8
.L_1604e:
	mov	r0, #0
	strb	r0, [r5, #10]
.L_16052:
	ldr	r0, .L_160b8
	ldrb	r2, [r5, #31]
	lsl	r1, r2, #1
	add	r1, r1, r2
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldrb	r0, [r5, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_160a8
	cmp	r2, #0
	bne	.L_16070
	mov	r0, #17
	bl	m4aSongNumStart
.L_16070:
	mov	r1, #0
	strb	r1, [r5, #30]
	ldrb	r0, [r5, #31]
	add	r0, #1
	strb	r0, [r5, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bne	.L_1608e
	ldrb	r0, [r5, #10]
	cmp	r0, #3
	bhi	.L_1608e
	add	r0, #1
	strb	r0, [r5, #10]
	strb	r1, [r5, #31]
.L_1608e:
	ldr	r3, .L_160b8
	ldr	r2, .L_160bc
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	add	r5, r2, #0
	cmp	r0, #0
	bne	.L_160a8
	mov	r0, #6
	strb	r0, [r5, #31]
.L_160a8:
	add	r4, r5, #0
	ldrb	r1, [r4, #31]
	cmp	r1, #5
	bhi	.L_160c4
	ldr	r0, .L_160c0
	strb	r1, [r0, #3]
	b	.L_160e6
	.align	2, 0
.L_160b8:
	.4byte	sUnk_82FC1D4
.L_160bc:
	.4byte	gWarioData
.L_160c0:
	.4byte	gCurrentWarioEffect
.L_160c4:
	ldrh	r0, [r4, #12]
	cmp	r0, #0
	bne	.L_160d0
	mov	r0, #18
	bl	m4aSongNumStart
.L_160d0:
	ldrh	r0, [r4, #12]
	cmp	r0, #79	@ 0x4f
	bhi	.L_160dc
	add	r0, #1
	strh	r0, [r4, #12]
	b	.L_160e0
.L_160dc:
	mov	r0, #0
	strh	r0, [r5, #12]
.L_160e0:
	ldr	r1, .L_160f0
	mov	r0, #0
	strb	r0, [r1, #0]
.L_160e6:
	mov	r0, #255	@ 0xff
.L_160e8:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_160f0:
	.4byte	gCurrentWarioEffect


thumb_func_start func_80160F4
func_80160F4:
	push	{r4, lr}
	ldr	r0, .L_1610c
	ldrh	r1, [r0, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_16114
	ldr	r1, .L_16110
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #16]
	mov	r0, #2
	b	.L_161da
.L_1610c:
	.4byte	gButtonsPressed
.L_16110:
	.4byte	gWarioData
.L_16114:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_16128
	ldr	r0, .L_16124
	strh	r2, [r0, #24]
	mov	r0, #1
	b	.L_161da
.L_16124:
	.4byte	gWarioData
.L_16128:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1615c
	ldr	r4, .L_16158
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	asr	r0, r0, #16
	cmp	r0, #1
	bne	.L_1615c
	ldrh	r0, [r4, #20]
	sub	r0, #62	@ 0x3e
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	asr	r0, r0, #16
	cmp	r0, #1
	bne	.L_1615c
	mov	r0, #11
	b	.L_161da
.L_16158:
	.4byte	gWarioData
.L_1615c:
	ldr	r0, .L_16170
	ldrh	r0, [r0, #0]
	mov	r1, #48	@ 0x30
	and	r1, r0
	cmp	r1, #0
	beq	.L_16178
	ldr	r0, .L_16174
	strh	r1, [r0, #14]
	mov	r0, #3
	b	.L_161da
.L_16170:
	.4byte	gButtonsHeld
.L_16174:
	.4byte	gWarioData
.L_16178:
	mov	r1, #192	@ 0xc0
	and	r1, r0
	cmp	r1, #0
	beq	.L_1618c
	ldr	r0, .L_16188
	strh	r1, [r0, #16]
	mov	r0, #3
	b	.L_161da
.L_16188:
	.4byte	gWarioData
.L_1618c:
	ldr	r0, .L_161a0
	ldrb	r1, [r0, #31]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_161a4
	mov	r0, #32
	strh	r0, [r2, #24]
	mov	r0, #64	@ 0x40
	strh	r0, [r2, #16]
	b	.L_161a6
.L_161a0:
	.4byte	gWarioData
.L_161a4:
	strh	r1, [r2, #24]
.L_161a6:
	ldr	r3, .L_161e0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_161d8
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
	bne	.L_161d8
	mov	r0, #1
	strb	r0, [r2, #31]
.L_161d8:
	mov	r0, #255	@ 0xff
.L_161da:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_161e0:
	.4byte	sUnk_82FC27C


thumb_func_start func_80161E4
func_80161E4:
	push	{r4, lr}
	ldr	r2, .L_161f8
	ldrb	r0, [r2, #10]
	cmp	r0, #80	@ 0x50
	bls	.L_161fc
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #5
	b	.L_16236
	.align	2, 0
.L_161f8:
	.4byte	gWarioData
.L_161fc:
	add	r0, #1
	strb	r0, [r2, #10]
	mov	r4, #0
	mov	r0, #32
	strh	r0, [r2, #24]
	ldr	r3, .L_1623c
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_16234
	strb	r4, [r2, #30]
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
	bne	.L_16234
	strb	r4, [r2, #31]
.L_16234:
	mov	r0, #255	@ 0xff
.L_16236:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_1623c:
	.4byte	sUnk_82F14E8


thumb_func_start func_8016240
func_8016240:
	push	{r4, r5, lr}
	ldr	r0, .L_16264
	ldr	r1, .L_16268
	ldrh	r4, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r5, r4, #0
	and	r5, r2
	add	r3, r1, #0
	cmp	r5, #0
	beq	.L_16278
	mov	r1, #16
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_1626c
	strh	r1, [r3, #22]
	b	.L_1628c
	.align	2, 0
.L_16264:
	.4byte	gButtonsHeld
.L_16268:
	.4byte	gWarioData
.L_1626c:
	ldr	r0, .L_16274
	strh	r0, [r3, #22]
	b	.L_1628c
	.align	2, 0
.L_16274:
	.4byte	0xFFF0
.L_16278:
	mov	r0, #48	@ 0x30
	add	r1, r2, #0
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r4
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1628a
	strh	r1, [r3, #14]
.L_1628a:
	strh	r5, [r3, #22]
.L_1628c:
	ldr	r2, .L_162f8
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_162be
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
	bne	.L_162be
	mov	r0, #1
	strb	r0, [r3, #31]
.L_162be:
	ldr	r2, .L_162fc
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_162f0
	ldr	r3, .L_16300
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_162f0
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldrb	r1, [r2, #2]
	lsl	r0, r1, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_162f0
	sub	r0, r1, #1
	strb	r0, [r2, #2]
.L_162f0:
	mov	r0, #255	@ 0xff
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_162f8:
	.4byte	sUnk_82FC084
.L_162fc:
	.4byte	gUnk_3001930
.L_16300:
	.4byte	sUnk_82E0394


thumb_func_start func_8016304
func_8016304:
	ldr	r2, .L_16338
	ldr	r3, .L_1633c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_16340
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
	bne	.L_16340
	mov	r0, #5
	b	.L_1636c
.L_16338:
	.4byte	gWarioData
.L_1633c:
	.4byte	sUnk_82FC0D8
.L_16340:
	ldr	r2, .L_16370
	ldr	r3, .L_16374
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1636a
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1636a
	strb	r0, [r2, #2]
.L_1636a:
	mov	r0, #255	@ 0xff
.L_1636c:
	bx	lr
	.align	2, 0
.L_16370:
	.4byte	gUnk_3001930
.L_16374:
	.4byte	sUnk_82E03BC


thumb_func_start func_8016378
func_8016378:
	ldr	r2, .L_16394
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_16398
	ldrh	r0, [r2, #22]
	add	r0, #2
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	blt	.L_163a4
.L_16390:
	mov	r0, #5
	b	.L_163a6
.L_16394:
	.4byte	gWarioData
.L_16398:
	ldrh	r0, [r2, #22]
	sub	r0, #2
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	ble	.L_16390
.L_163a4:
	mov	r0, #255	@ 0xff
.L_163a6:
	bx	lr


thumb_func_start func_80163A8
func_80163A8:
	ldr	r2, .L_163c4
	ldrh	r1, [r2, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_163c8
	ldrh	r0, [r2, #24]
	add	r0, #2
	strh	r0, [r2, #24]
	lsl	r0, r0, #16
	cmp	r0, #0
	blt	.L_163d4
.L_163c0:
	mov	r0, #5
	b	.L_163d6
.L_163c4:
	.4byte	gWarioData
.L_163c8:
	ldrh	r0, [r2, #24]
	sub	r0, #2
	strh	r0, [r2, #24]
	lsl	r0, r0, #16
	cmp	r0, #0
	ble	.L_163c0
.L_163d4:
	mov	r0, #255	@ 0xff
.L_163d6:
	bx	lr


thumb_func_start func_80163D8
func_80163D8:
	ldr	r0, .L_163e4
	ldrb	r0, [r0, #30]
	cmp	r0, #3
	bhi	.L_163e8
	mov	r0, #255	@ 0xff
	b	.L_163f0
.L_163e4:
	.4byte	gWarioData
.L_163e8:
	ldr	r1, .L_163f4
	mov	r0, #2
	strh	r0, [r1, #0]
	mov	r0, #5
.L_163f0:
	bx	lr
	.align	2, 0
.L_163f4:
	.4byte	gSubGameMode


thumb_func_start func_80163F8
func_80163F8:
	push	{r4, lr}
	ldr	r1, .L_16424
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_16406
	mov	r0, #1
	strb	r0, [r1, #0]
.L_16406:
	ldr	r0, .L_16428
	ldr	r4, .L_1642c
	ldrh	r2, [r0, #0]
	ldrh	r1, [r4, #14]
	add	r3, r2, #0
	and	r3, r1
	cmp	r3, #0
	beq	.L_1643c
	mov	r2, #16
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_16430
	strh	r2, [r4, #22]
	b	.L_1644e
.L_16424:
	.4byte	gWarioDustEffect2
.L_16428:
	.4byte	gButtonsHeld
.L_1642c:
	.4byte	gWarioData
.L_16430:
	ldr	r0, .L_16438
	strh	r0, [r4, #22]
	b	.L_1644e
	.align	2, 0
.L_16438:
	.4byte	0xFFF0
.L_1643c:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1644c
	strh	r1, [r4, #14]
.L_1644c:
	strh	r3, [r4, #22]
.L_1644e:
	mov	r0, #255	@ 0xff
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8016456
func_8016456:
	.align	2, 0
	ldr	r1, .L_16468
	ldrb	r0, [r1, #30]
	cmp	r0, #29
	bls	.L_1646c
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #4]
	mov	r0, #5
	b	.L_16498
.L_16468:
	.4byte	gWarioData
.L_1646c:
	ldr	r2, .L_1649c
	ldr	r3, .L_164a0
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_16496
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_16496
	strb	r0, [r2, #2]
.L_16496:
	mov	r0, #255	@ 0xff
.L_16498:
	bx	lr
	.align	2, 0
.L_1649c:
	.4byte	gUnk_3001930
.L_164a0:
	.4byte	sUnk_82E03BC


thumb_func_start func_80164A4
func_80164A4:
	push	{r4, lr}
	ldr	r4, .L_164b8
	add	r1, r4, #0
	add	r1, #59	@ 0x3b
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_164bc
	sub	r0, #1
	strb	r0, [r1, #0]
	b	.L_164e0
.L_164b8:
	.4byte	gWarioData
.L_164bc:
	ldr	r2, .L_16510
	ldrh	r1, [r4, #14]
	mov	r0, #48	@ 0x30
	add	r3, r1, #0
	eor	r3, r0
	ldrh	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_164e0
	mov	r0, #0
	strh	r3, [r4, #14]
	add	r1, r4, #0
	add	r1, #58	@ 0x3a
	strb	r0, [r1, #0]
	ldr	r0, .L_16514
	bl	m4aSongNumStart
.L_164e0:
	ldr	r2, .L_16518
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_16520
	ldr	r1, .L_1651c
	add	r0, r2, #0
	add	r0, #58	@ 0x3a
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #3
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r1, r0, r3
	strh	r1, [r2, #18]
	add	r0, r2, #0
	add	r0, #59	@ 0x3b
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_16544
	add	r0, r1, #1
	b	.L_16542
.L_16510:
	.4byte	gButtonsHeld
.L_16514:
	.4byte	0x16D
.L_16518:
	.4byte	gWarioData
.L_1651c:
	.4byte	sUnk_82DEBC2
.L_16520:
	ldr	r1, .L_16554
	add	r0, r2, #0
	add	r0, #58	@ 0x3a
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #3
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r1, [r2, #18]
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	strh	r1, [r2, #18]
	add	r0, r2, #0
	add	r0, #59	@ 0x3b
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_16544
	sub	r0, r1, #1
.L_16542:
	strh	r0, [r2, #18]
.L_16544:
	add	r3, r2, #0
	add	r3, #58	@ 0x3a
	ldrb	r0, [r3, #0]
	cmp	r0, #94	@ 0x5e
	bhi	.L_16558
	add	r0, #1
	strb	r0, [r3, #0]
	b	.L_16564
.L_16554:
	.4byte	sUnk_82DEBC2
.L_16558:
	ldrh	r0, [r2, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #14]
	strb	r1, [r3, #0]
.L_16564:
	ldrb	r0, [r2, #10]
	cmp	r0, #0
	beq	.L_16570
	mov	r0, #32
	strh	r0, [r2, #24]
	b	.L_16574
.L_16570:
	add	r0, #1
	strb	r0, [r2, #10]
.L_16574:
	ldr	r3, .L_165ac
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_165a4
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
	bne	.L_165a4
	strb	r0, [r2, #31]
.L_165a4:
	mov	r0, #255	@ 0xff
	pop	{r4}
	pop	{r1}
	bx	r1
.L_165ac:
	.4byte	sUnk_82E9984


thumb_func_start func_80165B0
func_80165B0:
	ldr	r2, .L_165c0
	ldrb	r0, [r2, #10]
	cmp	r0, #80	@ 0x50
	bls	.L_165c4
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #5
	b	.L_16608
.L_165c0:
	.4byte	gWarioData
.L_165c4:
	add	r0, #1
	strb	r0, [r2, #10]
	ldr	r1, .L_1660c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_165d4
	mov	r0, #1
	strb	r0, [r1, #0]
.L_165d4:
	ldr	r3, .L_16610
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_16606
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
	bne	.L_16606
	mov	r0, #6
	strb	r0, [r2, #31]
.L_16606:
	mov	r0, #255	@ 0xff
.L_16608:
	bx	lr
	.align	2, 0
.L_1660c:
	.4byte	gWarioDustEffect2
.L_16610:
	.4byte	sUnk_82FC1D4


thumb_func_start func_8016614
func_8016614:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	bl	func_800FD28
	ldr	r2, .L_1665c
	ldr	r0, .L_16660
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_16664
	ldr	r0, .L_16668
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r0, .L_1666c
	ldr	r1, .L_16670
	ldrb	r0, [r0, #0]
.L_1663c:
	ldrb	r2, [r1, #0]
	cmp	r0, r2
	bne	.L_1667c
	ldrb	r0, [r1, #1]
	cmp	r0, #7
	bne	.L_1667c
	cmp	r5, #8
	bne	.L_16674
	mov	r0, #36	@ 0x24
	bl	m4aSongNumStart
	mov	r0, #0
.L_16654:
	bl	VoiceSetPlay
	b	.L_1667c
	.align	2, 0
.L_1665c:
	.4byte	gUnk_3001930
.L_16660:
	.4byte	sUnk_82DD0EC
.L_16664:
	.4byte	gCurrentWarioEffect
.L_16668:
	.4byte	sStartingWarioEffect
.L_1666c:
	.4byte	gUnk_30019F1
.L_16670:
	.4byte	gWarioDataCopy
.L_16674:
	ldr	r0, .L_16698
	ldr	r0, [r0, #36]	@ 0x24
	bl	MPlayStop
.L_1667c:
	ldr	r0, .L_1669c
	strb	r5, [r0, #1]
	ldr	r2, .L_166a0
	ldrh	r1, [r2, #24]
	strh	r1, [r0, #24]
	add	r4, r0, #0
	cmp	r5, #15
	bls	.L_1668e
	b	.L_16880
.L_1668e:
	lsl	r0, r5, #2
	ldr	r1, .L_166a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_16698:
	.4byte	gMPlayTable
.L_1669c:
	.4byte	gWarioData
.L_166a0:
	.4byte	gWarioDataCopy
.L_166a4:
	.4byte	.L_166a8
.L_166a8:
	.4byte	.L_166e8
	.4byte	.L_16718
	.4byte	.L_16730
	.4byte	.L_16880
	.4byte	.L_16758
	.4byte	.L_16880
	.4byte	.L_16772
	.4byte	.L_167ac
	.4byte	.L_167d0
	.4byte	.L_167f4
	.4byte	.L_1680e
	.4byte	.L_16830
	.4byte	.L_16704
	.4byte	.L_16850
	.4byte	.L_16874
	.4byte	.L_16768
.L_166e8:
	ldr	r1, .L_1670c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_16710
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #108	@ 0x6c
	neg	r0, r0
	cmp	r1, r0
	ble	.L_16704
	ldr	r0, .L_16714
	strh	r0, [r4, #24]
.L_16704:
	mov	r0, #14
	bl	m4aSongNumStart
	b	.L_16880
.L_1670c:
	.4byte	gCurrentCarriedSprite
.L_16710:
	.4byte	gWarioDustEffect1
.L_16714:
	.4byte	0xFF94
.L_16718:
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_16726
	mov	r0, #128	@ 0x80
	b	.L_16728
.L_16726:
	ldr	r0, .L_1672c
.L_16728:
	strh	r0, [r4, #22]
	b	.L_16742
.L_1672c:
	.4byte	0xFF80
.L_16730:
	ldrh	r1, [r4, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1673e
	mov	r0, #128	@ 0x80
	b	.L_16740
.L_1673e:
	ldr	r0, .L_16750
.L_16740:
	strh	r0, [r4, #24]
.L_16742:
	ldr	r1, .L_16754
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #16
	bl	m4aSongNumStart
	b	.L_16880
.L_16750:
	.4byte	0xFF80
.L_16754:
	.4byte	gCurrentWarioEffect
.L_16758:
	mov	r0, #0
	strh	r0, [r4, #24]
	ldr	r1, .L_16764
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_16880
.L_16764:
	.4byte	gCurrentWarioEffect
.L_16768:
	mov	r0, #6
	strb	r0, [r4, #31]
	ldr	r1, .L_167a0
	mov	r0, #1
	strb	r0, [r1, #0]
.L_16772:
	ldr	r1, .L_167a4
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	bne	.L_16792
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_16792
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_167a8
	ldrh	r0, [r1, #20]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r1, #18]
	mov	r2, #48	@ 0x30
	bl	SpriteSpawnSecondary
.L_16792:
	ldr	r1, .L_167a8
	mov	r0, #1
	strb	r0, [r1, #4]
	mov	r0, #19
	bl	m4aSongNumStart
	b	.L_16880
.L_167a0:
	.4byte	gWarioDustEffect2
.L_167a4:
	.4byte	gHeartMeter
.L_167a8:
	.4byte	gWarioData
.L_167ac:
	mov	r3, #0
	mov	r2, #1
	strb	r2, [r4, #31]
	ldr	r1, .L_167c4
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_167c8
	strb	r3, [r0, #0]
	ldr	r0, .L_167cc
	strb	r2, [r0, #0]
	b	.L_16880
	.align	2, 0
.L_167c4:
	.4byte	gUnk_3001930
.L_167c8:
	.4byte	gCurrentCarriedSprite
.L_167cc:
	.4byte	gWarioDustEffect1
.L_167d0:
	mov	r0, #0
	strh	r0, [r4, #24]
	ldr	r1, .L_167ec
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_167f0
	mov	r0, #5
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	mov	r1, #0
	bl	ScreenShakeRequestY
	b	.L_16880
	.align	2, 0
.L_167ec:
	.4byte	gUnk_3001930
.L_167f0:
	.4byte	gWarioDustEffect2
.L_167f4:
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_16808
	ldr	r0, .L_16804
	b	.L_1680a
	.align	2, 0
.L_16804:
	.4byte	0xFFDC
.L_16808:
	mov	r0, #36	@ 0x24
.L_1680a:
	strh	r0, [r4, #22]
	b	.L_16824
.L_1680e:
	ldrh	r1, [r4, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_16820
	ldr	r0, .L_1681c
	b	.L_16822
.L_1681c:
	.4byte	0xFFDC
.L_16820:
	mov	r0, #36	@ 0x24
.L_16822:
	strh	r0, [r4, #24]
.L_16824:
	ldr	r1, .L_1682c
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_16880
.L_1682c:
	.4byte	gWarioDustEffect2
.L_16830:
	ldr	r1, .L_16844
	mov	r0, #4
	strh	r0, [r1, #0]
	ldr	r1, .L_16848
	ldrh	r0, [r2, #18]
	strh	r0, [r1, #0]
	ldr	r1, .L_1684c
	ldrh	r0, [r2, #20]
	strh	r0, [r1, #0]
	b	.L_16880
.L_16844:
	.4byte	gSubGameMode
.L_16848:
	.4byte	gUnk_3001890
.L_1684c:
	.4byte	gUnk_3001892
.L_16850:
	ldr	r1, .L_1686c
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_16870
	mov	r0, #5
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	mov	r1, #0
	bl	ScreenShakeRequestY
	mov	r0, #24
	bl	m4aSongNumStart
	b	.L_16880
.L_1686c:
	.4byte	gUnk_3001930
.L_16870:
	.4byte	gWarioDustEffect2
.L_16874:
	mov	r0, #0
	strh	r0, [r4, #24]
	mov	r0, #183	@ 0xb7
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_16880:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8016886
func_8016886:
	.align	2, 0
	push	{r4, r5, lr}
	bl	func_8015C08
	ldr	r1, .L_168d0
	ldr	r3, .L_168d4
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	ldr	r2, .L_168d8
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r3, #56]	@ 0x38
	ldrb	r0, [r3, #1]
	mov	r3, #0
	cmp	r0, #14
	bls	.L_168c6
	b	.L_16a40
.L_168c6:
	lsl	r0, r0, #2
	ldr	r1, .L_168dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_168d0:
	.4byte	sUnk_82DD730
.L_168d4:
	.4byte	gWarioData
.L_168d8:
	.4byte	sWarioHitboxes
.L_168dc:
	.4byte	.L_168e0
.L_168e0:
	.4byte	.L_1691c
	.4byte	.L_16934
	.4byte	.L_16964
	.4byte	.L_16934
	.4byte	.L_16a40
	.4byte	.L_16934
	.4byte	.L_16a34
	.4byte	.L_16a08
	.4byte	.L_16a40
	.4byte	.L_16a40
	.4byte	.L_16a34
	.4byte	.L_16a40
	.4byte	.L_16a08
	.4byte	.L_16a40
	.4byte	.L_16a34
.L_1691c:
	ldr	r2, .L_16930
	ldrh	r1, [r2, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r1, #16
	strh	r1, [r2, #24]
	b	.L_16a40
	.align	2, 0
.L_16930:
	.4byte	gWarioData
.L_16934:
	ldr	r3, .L_1694c
	ldrh	r0, [r3, #0]
	lsl	r2, r0, #16
	asr	r1, r2, #16
	cmp	r1, #96	@ 0x60
	beq	.L_16948
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_16950
.L_16948:
	asr	r0, r2, #19
	b	.L_16a3c
.L_1694c:
	.4byte	gUnk_30031CC
.L_16950:
	ldr	r0, .L_16960
	mov	r1, #24
	ldrsh	r0, [r0, r1]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	add	r0, r0, r1
	lsl	r0, r0, #13
	b	.L_16a3e
.L_16960:
	.4byte	gWarioData
.L_16964:
	ldr	r4, .L_169a8
	ldrh	r0, [r4, #24]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r1, [r4, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_169bc
	ldr	r2, .L_169ac
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r1, r0, #16
	cmp	r1, #96	@ 0x60
	beq	.L_16a3a
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_169b0
	mov	r3, #24
	ldrsh	r0, [r4, r3]
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	add	r0, r0, r1
	lsl	r0, r0, #13
	lsr	r3, r0, #16
	asr	r0, r0, #16
	cmp	r0, #0
	ble	.L_16a40
	mov	r3, #0
	b	.L_16a40
	.align	2, 0
.L_169a8:
	.4byte	gWarioData
.L_169ac:
	.4byte	gUnk_30031CC
.L_169b0:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	cmp	r0, #12
	ble	.L_16a40
	mov	r3, #12
	b	.L_16a40
.L_169bc:
	ldr	r5, .L_169d0
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	ldr	r2, .L_169d4
	asr	r0, r2, #16
	cmp	r1, r0
	bne	.L_169d8
	asr	r0, r2, #3
	b	.L_16a3e
	.align	2, 0
.L_169d0:
	.4byte	gUnk_30031CC
.L_169d4:
	.4byte	0xFFA00000
.L_169d8:
	.2byte	0x2960
	bne	.L_169f2
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r2, #0
	ldrsh	r1, [r5, r2]
	add	r0, r0, r1
	lsl	r0, r0, #13
	lsr	r3, r0, #16
	cmp	r0, #0
	bge	.L_16a40
	mov	r3, #0
	b	.L_16a40
.L_169f2:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	mov	r1, #12
	neg	r1, r1
	cmp	r0, r1
	bge	.L_16a40
	ldr	r3, .L_16a04
	b	.L_16a40
	.align	2, 0
.L_16a04:
	.4byte	0xFFF4
.L_16a08:
	ldr	r2, .L_16a2c
	mov	r3, #24
	ldrsh	r1, [r2, r3]
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bge	.L_16a1a
	ldr	r0, .L_16a30
	strh	r0, [r2, #24]
.L_16a1a:
	ldrh	r1, [r2, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	sub	r1, #8
	strh	r1, [r2, #24]
	b	.L_16a40
	.align	2, 0
.L_16a2c:
	.4byte	gWarioData
.L_16a30:
	.4byte	0xFFA0
.L_16a34:
	ldr	r0, .L_16a6c
	ldrh	r0, [r0, #24]
	lsl	r0, r0, #16
.L_16a3a:
	asr	r0, r0, #19
.L_16a3c:
	lsl	r0, r0, #16
.L_16a3e:
	lsr	r3, r0, #16
.L_16a40:
	ldr	r1, .L_16a6c
	ldrh	r0, [r1, #20]
	sub	r0, r0, r3
	strh	r0, [r1, #20]
	mov	r0, #24
	ldrsh	r2, [r1, r0]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	add	r4, r1, #0
	cmp	r2, r0
	bge	.L_16a5a
	ldr	r0, .L_16a70
	strh	r0, [r4, #24]
.L_16a5a:
	mov	r3, #0
	ldrb	r0, [r4, #1]
	cmp	r0, #5
	bgt	.L_16a74
	cmp	r0, #2
	bge	.L_16b18
	cmp	r0, #1
	beq	.L_16a7a
	b	.L_16b42
.L_16a6c:
	.4byte	gWarioData
.L_16a70:
	.4byte	0xFF80
.L_16a74:
	cmp	r0, #14
	beq	.L_16b4c
	b	.L_16b42
.L_16a7a:
	ldrh	r0, [r4, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_16acc
	ldr	r2, .L_16abc
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r1, r0, #16
	cmp	r1, #96	@ 0x60
	beq	.L_16b46
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_16ac0
	mov	r1, #22
	ldrsh	r0, [r4, r1]
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	add	r0, r0, r1
	lsl	r0, r0, #13
	lsr	r3, r0, #16
	asr	r0, r0, #16
	cmp	r0, #0
	ble	.L_16b4c
	mov	r3, #0
	b	.L_16b4c
	.align	2, 0
.L_16abc:
	.4byte	gUnk_30031CA
.L_16ac0:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	cmp	r0, #12
	ble	.L_16b4c
	mov	r3, #12
	b	.L_16b4c
.L_16acc:
	ldr	r5, .L_16ae0
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	ldr	r2, .L_16ae4
	asr	r0, r2, #16
	cmp	r1, r0
	bne	.L_16ae8
	asr	r0, r2, #3
	b	.L_16b4a
	.align	2, 0
.L_16ae0:
	.4byte	gUnk_30031CA
.L_16ae4:
	.4byte	0xFFA00000
.L_16ae8:
	.2byte	0x2960
	bne	.L_16b02
	mov	r1, #22
	ldrsh	r0, [r4, r1]
	mov	r2, #0
	ldrsh	r1, [r5, r2]
	add	r0, r0, r1
	lsl	r0, r0, #13
	lsr	r3, r0, #16
	cmp	r0, #0
	bge	.L_16b4c
	mov	r3, #0
	b	.L_16b4c
.L_16b02:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	mov	r1, #12
	neg	r1, r1
	cmp	r0, r1
	bge	.L_16b4c
	ldr	r3, .L_16b14
	b	.L_16b4c
	.align	2, 0
.L_16b14:
	.4byte	0xFFF4
.L_16b18:
	ldr	r3, .L_16b30
	ldrh	r0, [r3, #0]
	lsl	r2, r0, #16
	asr	r1, r2, #16
	cmp	r1, #96	@ 0x60
	beq	.L_16b2c
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_16b34
.L_16b2c:
	asr	r0, r2, #19
	b	.L_16b48
.L_16b30:
	.4byte	gUnk_30031CA
.L_16b34:
	mov	r1, #22
	ldrsh	r0, [r4, r1]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	add	r0, r0, r1
	lsl	r0, r0, #13
	b	.L_16b4a
.L_16b42:
	ldrh	r0, [r4, #22]
	lsl	r0, r0, #16
.L_16b46:
	asr	r0, r0, #19
.L_16b48:
	lsl	r0, r0, #16
.L_16b4a:
	lsr	r3, r0, #16
.L_16b4c:
	ldrh	r0, [r4, #18]
	add	r0, r0, r3
	strh	r0, [r4, #18]
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8016B58
func_8016B58:
	push	{r4, r5, lr}
	sub	sp, #12
	ldr	r3, .L_16be0
	ldr	r2, .L_16be4
	ldr	r5, .L_16be8
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #11]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #12]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #13]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #17]
	mov	r1, #24
	ldrsh	r0, [r5, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_16bc2
	mov	r0, #0
	strb	r0, [r3, #12]
.L_16bc2:
	ldrh	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_16bd0
	ldrh	r1, [r5, #14]
	mov	r0, #48	@ 0x30
	and	r0, r1
	strh	r0, [r3, #0]
.L_16bd0:
	ldrh	r1, [r3, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_16bec
	bl	func_8016FF4
	b	.L_16bfc
.L_16be0:
	.4byte	gWarioCollisionData
.L_16be4:
	.4byte	sUnk_82DD730
.L_16be8:
	.4byte	gWarioData
.L_16bec:
	ldr	r0, .L_16c04
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_16c08
	bl	func_8016E00
.L_16bfc:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	b	.L_16c4e
	.align	2, 0
.L_16c04:
	.4byte	gUnk_30031BD
.L_16c08:
	ldr	r0, .L_16c64
	ldrh	r0, [r0, #0]
	strh	r0, [r5, #20]
	bl	func_80171EC
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldrb	r0, [r5, #1]
	cmp	r0, #3
	bne	.L_16c4e
	ldrh	r0, [r5, #28]
	cmp	r0, #0
	bne	.L_16c4e
	ldr	r0, .L_16c68
	ldrh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_16c4e
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	bne	.L_16c4e
	ldrh	r0, [r5, #18]
	ldr	r1, .L_16c6c
	and	r1, r0
	add	r1, #32
	strh	r1, [r5, #18]
	ldrh	r0, [r5, #20]
.L_16c48:
	add	r0, #1
	strh	r0, [r5, #20]
	mov	r4, #255	@ 0xff
.L_16c4e:
	ldr	r0, .L_16c70
	ldrh	r2, [r0, #28]
	ldr	r1, .L_16c74
	and	r1, r2
	strh	r1, [r0, #28]
	add	r5, r0, #0
	cmp	r4, #253	@ 0xfd
	bne	.L_16c7c
	ldr	r1, .L_16c78
	mov	r0, #1
	b	.L_16c80
.L_16c64:
	.4byte	gPreviousYPosition
.L_16c68:
	.4byte	gButtonsHeld
.L_16c6c:
	.4byte	0xFFC0
.L_16c70:
	.4byte	gWarioData
.L_16c74:
	.4byte	0x7FFF
.L_16c78:
	.4byte	gUnk_30031BD
.L_16c7c:
	ldr	r1, .L_16c94
	mov	r0, #0
.L_16c80:
	strb	r0, [r1, #0]
	ldrb	r0, [r5, #1]
	sub	r0, #1
	cmp	r0, #11
	bhi	.L_16d54
	lsl	r0, r0, #2
	ldr	r1, .L_16c98
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_16c94:
	.4byte	gUnk_30031BD
.L_16c98:
	.4byte	.L_16c9c
.L_16c9c:
	.4byte	.L_16d34
	.4byte	.L_16d34
	.4byte	.L_16d34
	.4byte	.L_16d54
	.4byte	.L_16d34
	.4byte	.L_16d54
	.4byte	.L_16d00
	.4byte	.L_16d54
	.4byte	.L_16d54
	.4byte	.L_16d54
	.4byte	.L_16d54
	.4byte	.L_16ccc
.L_16ccc:
	cmp	r4, #253	@ 0xfd
	bne	.L_16d62
	ldr	r4, .L_16cf8
	ldrb	r0, [r4, #8]
	ldr	r1, .L_16cfc
	ldrh	r1, [r1, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r2, sp, #8
	bl	func_8014268
	cmp	r0, #0
	beq	.L_16d62
	ldrb	r4, [r4, #16]
	cmp	r0, r4
	ble	.L_16d62
	mov	r0, #13
	bl	func_8016614
	b	.L_16d62
	.align	2, 0
.L_16cf8:
	.4byte	gWarioCollisionData
.L_16cfc:
	.4byte	gWarioData
.L_16d00:
	cmp	r4, #253	@ 0xfd
	bne	.L_16d62
	ldr	r4, .L_16d2c
	ldrb	r0, [r4, #8]
	ldr	r1, .L_16d30
	ldrh	r1, [r1, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r2, sp, #8
	bl	func_8014268
	cmp	r0, #0
	beq	.L_16d62
	ldrb	r4, [r4, #16]
	cmp	r0, r4
	ble	.L_16d62
	mov	r0, #8
	bl	func_8016614
	b	.L_16d62
	.align	2, 0
.L_16d2c:
	.4byte	gWarioCollisionData
.L_16d30:
	.4byte	gWarioData
.L_16d34:
	cmp	r4, #255	@ 0xff
	bne	.L_16d58
	ldr	r0, .L_16d78
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	cmp	r0, #0
	bne	.L_16d54
	ldr	r0, .L_16d7c
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bne	.L_16d54
	bl	func_8015C6C
	lsl	r0, r0, #24
	lsr	r4, r0, #24
.L_16d54:
	cmp	r4, #255	@ 0xff
	beq	.L_16d62
.L_16d58:
	cmp	r4, #253	@ 0xfd
	beq	.L_16d62
	add	r0, r4, #0
	bl	func_8016614
.L_16d62:
	ldr	r0, .L_16d80
	ldrb	r1, [r0, #1]
	add	r5, r0, #0
	cmp	r1, #4
	beq	.L_16df4
	cmp	r1, #4
	bgt	.L_16d84
	cmp	r1, #0
	beq	.L_16df4
	b	.L_16d8c
	.align	2, 0
.L_16d78:
	.4byte	gUnk_30031CA
.L_16d7c:
	.4byte	gUnk_30031CC
.L_16d80:
	.4byte	gWarioData
.L_16d84:
	cmp	r1, #7
	beq	.L_16df4
	cmp	r1, #12
	beq	.L_16df4
.L_16d8c:
	add	r4, r5, #0
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #0
	bne	.L_16df4
	ldrb	r0, [r4, #1]
	cmp	r0, #6
	bne	.L_16db0
	strh	r1, [r4, #24]
	b	.L_16de2
.L_16db0:
	cmp	r0, #14
	bne	.L_16ddc
	mov	r0, #0
	bl	func_8016614
	mov	r0, #96	@ 0x60
	strb	r0, [r5, #4]
	mov	r0, #182	@ 0xb6
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldrh	r3, [r5, #20]
	ldrh	r0, [r5, #18]
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #155	@ 0x9b
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	b	.L_16de2
.L_16ddc:
	mov	r0, #4
	bl	func_8016614
.L_16de2:
	ldr	r0, .L_16dfc
	ldrh	r1, [r0, #20]
	sub	r1, #48	@ 0x30
	mov	r3, #64	@ 0x40
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	add	r1, #96	@ 0x60
	strh	r1, [r0, #20]
.L_16df4:
	add	sp, #12
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_16dfc:
	.4byte	gWarioData


thumb_func_start func_8016E00
func_8016E00:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r4, .L_16e94
	ldrb	r5, [r4, #8]
	ldrb	r6, [r4, #4]
	ldrb	r0, [r4, #5]
	str	r0, [sp, #16]
	ldrh	r1, [r4, #6]
	str	r1, [sp, #12]
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_16e4a
	mov	r2, #22
	neg	r2, r2
	add	r0, r5, #0
	add	r1, sp, #4
	bl	func_8013EFC
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_16e4a
	ldr	r2, .L_16e98
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r2, #18]
	strh	r1, [r2, #22]
	ldrb	r0, [r4, #18]
	add	r0, #1
	strb	r0, [r4, #18]
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	beq	.L_16f20
.L_16e4a:
	ldr	r2, .L_16e98
	mov	r8, r2
	lsl	r0, r6, #1
	lsl	r1, r5, #1
	add	r1, r1, r5
	lsl	r1, r1, #1
	mov	r9, r1
	add	r0, r9
	ldr	r1, .L_16e9c
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	sl, r0
	ldrh	r0, [r2, #18]
	add	r0, sl
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrh	r6, [r2, #20]
	mov	r4, sp
	add	r4, #6
	add	r7, sp, #8
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r2, [r7, #0]
	cmp	r2, #0
	beq	.L_16f2c
	cmp	r1, #0
	beq	.L_16ea0
	mov	r2, r8
	strh	r1, [r2, #28]
	ldrh	r0, [r4, #0]
	b	.L_16f9e
.L_16e94:
	.4byte	gWarioCollisionData
.L_16e98:
	.4byte	gWarioData
.L_16e9c:
	.4byte	sUnk_82DEB60
.L_16ea0:
	ldr	r3, .L_16ec4
	ldrh	r1, [r4, #0]
	ldrh	r0, [r3, #0]
	cmp	r0, r1
	bcs	.L_16ed2
	add	r6, r0, #0
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_16ec8
	ldrh	r0, [r4, #0]
	b	.L_16fd2
.L_16ec4:
	.4byte	gPreviousYPosition
.L_16ec8:
	ldrh	r0, [r4, #0]
	add	r0, #63	@ 0x3f
	mov	r2, r8
	strh	r0, [r2, #20]
	b	.L_16fd6
.L_16ed2:
	cmp	r2, #16
	beq	.L_16f28
	add	r0, sp, #4
	ldrh	r1, [r0, #0]
	mov	r0, sl
	sub	r1, r1, r0
	ldr	r2, [sp, #12]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	add	r0, r0, r1
	mov	r1, r8
	strh	r0, [r1, #18]
	ldrh	r5, [r1, #18]
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	mov	r2, r8
	strh	r1, [r2, #28]
	cmp	r1, #0
	beq	.L_16f08
	ldrh	r0, [r4, #0]
	b	.L_16f9e
.L_16f08:
	ldrh	r0, [r7, #0]
	cmp	r0, #0
	bne	.L_16fce
	mov	r2, r8
	strh	r1, [r2, #22]
	ldr	r0, .L_16f24
	ldrb	r1, [r0, #18]
	add	r1, #1
	strb	r1, [r0, #18]
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bne	.L_16fe0
.L_16f20:
	mov	r0, #9
	b	.L_16fe2
.L_16f24:
	.4byte	gWarioCollisionData
.L_16f28:
	sub	r0, r1, #1
	b	.L_16fd2
.L_16f2c:
	ldr	r2, [sp, #16]
	lsl	r0, r2, #1
	add	r0, r9
	ldr	r1, .L_16f68
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r2, r8
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r0, r8
	ldrh	r6, [r0, #20]
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_16fa2
	cmp	r1, #0
	beq	.L_16f6c
	mov	r2, r8
	strh	r1, [r2, #28]
	ldrh	r0, [r4, #0]
	b	.L_16f9e
.L_16f68:
	.4byte	sUnk_82DEB60
.L_16f6c:
	ldr	r1, .L_16f94
	ldrh	r0, [r1, #0]
	ldrh	r2, [r4, #0]
	cmp	r0, r2
	bcs	.L_16fe0
	add	r6, r0, #0
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	mov	r0, r8
	strh	r1, [r0, #28]
	cmp	r1, #0
	beq	.L_16f98
	ldrh	r0, [r4, #0]
	b	.L_16fd2
.L_16f94:
	.4byte	gPreviousYPosition
.L_16f98:
	ldrh	r0, [r4, #0]
	add	r0, #63	@ 0x3f
	mov	r2, r8
.L_16f9e:
	strh	r0, [r2, #20]
	b	.L_16fd6
.L_16fa2:
	ldr	r0, .L_16fdc
	add	r0, #2
	add	r0, r9
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #31
	ble	.L_16fe0
	mov	r2, r8
	ldrh	r5, [r2, #18]
	str	r7, [sp, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r7, #0]
	cmp	r0, #0
	beq	.L_16fe0
	mov	r0, r8
	strh	r1, [r0, #28]
.L_16fce:
	ldrh	r0, [r4, #0]
	sub	r0, #1
.L_16fd2:
	mov	r1, r8
	strh	r0, [r1, #20]
.L_16fd6:
	mov	r0, #253	@ 0xfd
	b	.L_16fe2
	.align	2, 0
.L_16fdc:
	.4byte	sUnk_82DEB60
.L_16fe0:
	mov	r0, #255	@ 0xff
.L_16fe2:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8016FF4
func_8016FF4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r7, .L_1704c
	ldrb	r0, [r7, #8]
	mov	r9, r0
	ldrb	r0, [r7, #9]
	ldrb	r1, [r7, #4]
	mov	r8, r1
	ldr	r6, .L_17050
	mov	r2, r9
	lsl	r1, r2, #1
	add	r1, r9
	lsl	r4, r1, #1
	add	r1, r6, #4
	add	r1, r4, r1
	ldrh	r5, [r1, #0]
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8014090
	add	r1, r0, #0
	ldrb	r0, [r7, #15]
	cmp	r0, #0
	bne	.L_1708c
	cmp	r1, #1
	bne	.L_1705c
	ldr	r2, .L_17054
	add	r0, r4, r6
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_17058
	and	r3, r0
	sub	r1, r3, r1
	add	r1, #64	@ 0x40
	strh	r1, [r2, #18]
	b	.L_170a4
	.align	2, 0
.L_1704c:
	.4byte	gWarioCollisionData
.L_17050:
	.4byte	sUnk_82DEB60
.L_17054:
	.4byte	gWarioData
.L_17058:
	.4byte	0xFFC0
.L_1705c:
	cmp	r1, #8
	bne	.L_17084
	ldr	r2, .L_1707c
	add	r0, r6, #2
	add	r0, r4, r0
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_17080
	and	r3, r0
	sub	r1, r3, r1
	sub	r1, #1
	strh	r1, [r2, #18]
	b	.L_170a4
.L_1707c:
	.4byte	gWarioData
.L_17080:
	.4byte	0xFFC0
.L_17084:
	mov	r0, #6
	and	r0, r1
	cmp	r0, #0
	beq	.L_170a4
.L_1708c:
	ldr	r1, .L_170f0
	ldrh	r0, [r1, #20]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_170f4
	and	r4, r0
	sub	r0, r4, r5
	add	r0, #64	@ 0x40
	strh	r0, [r1, #20]
	mov	r0, #1
	strb	r0, [r7, #19]
.L_170a4:
	ldr	r0, .L_170f8
	mov	sl, r0
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_17184
	ldr	r7, .L_170f0
	ldr	r1, .L_170fc
	mov	r2, r9
	lsl	r0, r2, #1
	add	r0, r9
	add	r0, r8
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r8, r0
	ldrh	r0, [r7, #18]
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r4, [r7, #20]
	mov	r6, sp
	add	r6, #10
	add	r5, sp, #12
	str	r5, [sp, #0]
	add	r0, r3, #0
	add	r1, r4, #0
	add	r2, sp, #8
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_17138
	cmp	r1, #0
	beq	.L_17100
	strh	r1, [r7, #28]
	b	.L_17130
.L_170f0:
	.4byte	gWarioData
.L_170f4:
	.4byte	0xFFC0
.L_170f8:
	.4byte	gWarioCollisionData
.L_170fc:
	.4byte	sUnk_82DEB60
.L_17100:
	add	r0, sp, #8
	ldrh	r0, [r0, #0]
	mov	r3, r8
	sub	r0, r0, r3
	mov	r1, sl
	ldrh	r1, [r1, #6]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldrh	r3, [r7, #18]
	str	r5, [sp, #0]
	add	r0, r3, #0
	add	r1, r4, #0
	add	r2, sp, #8
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_17138
	strh	r1, [r7, #28]
	mov	r2, r8
	strh	r2, [r7, #18]
.L_17130:
	ldrh	r0, [r6, #0]
	strh	r0, [r7, #20]
	mov	r0, #253	@ 0xfd
	b	.L_171dc
.L_17138:
	mov	r0, r9
	add	r1, sp, #8
	mov	r2, #0
	bl	func_8013EFC
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_17184
	ldr	r2, .L_17160
	add	r0, sp, #8
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r2, #18]
	strh	r1, [r2, #22]
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bne	.L_17164
	mov	r0, #9
	b	.L_171dc
	.align	2, 0
.L_17160:
	.4byte	gWarioData
.L_17164:
	cmp	r0, #14
	bne	.L_17184
	ldrh	r0, [r2, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r2, #14]
	add	r1, r2, #0
	add	r1, #58	@ 0x3a
	mov	r0, #0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	ldr	r0, .L_171a8
	bl	m4aSongNumStart
.L_17184:
	ldr	r0, .L_171ac
	ldrb	r0, [r0, #19]
	cmp	r0, #0
	beq	.L_171da
	ldr	r1, .L_171b0
	ldrb	r0, [r1, #1]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_171b4
	mov	r3, #24
	ldrsh	r0, [r1, r3]
	cmp	r0, #15
	ble	.L_171b4
	mov	r0, #10
	b	.L_171dc
	.align	2, 0
.L_171a8:
	.4byte	0x16D
.L_171ac:
	.4byte	gWarioCollisionData
.L_171b0:
	.4byte	gWarioData
.L_171b4:
	ldrb	r0, [r1, #1]
	cmp	r0, #14
	bne	.L_171da
	ldrh	r3, [r1, #20]
	ldrh	r0, [r1, #18]
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #155	@ 0x9b
	mov	r1, #0
	mov	r2, #0
	bl	func_801E3A8
	mov	r0, #182	@ 0xb6
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #5
	b	.L_171dc
.L_171da:
	mov	r0, #255	@ 0xff
.L_171dc:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_80171EC
func_80171EC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r0, .L_17280
	ldrh	r1, [r0, #0]
	ldrb	r5, [r0, #8]
	ldrb	r7, [r0, #4]
	ldrb	r0, [r0, #5]
	str	r0, [sp, #12]
	ldr	r4, .L_17284
	ldrh	r0, [r4, #28]
	add	r6, r0, #0
	cmp	r6, #0
	bne	.L_172d8
	mov	r2, #62	@ 0x3e
	neg	r2, r2
	add	r0, r5, #0
	add	r1, sp, #4
	bl	func_8013EFC
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_1722e
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #18]
	strh	r6, [r4, #22]
	ldrb	r0, [r4, #1]
	cmp	r0, #1
	beq	.L_17300
.L_1722e:
	ldr	r0, .L_17284
	mov	r8, r0
	ldr	r1, .L_17288
	mov	sl, r1
	lsl	r1, r7, #1
	lsl	r0, r5, #1
	add	r0, r0, r5
	lsl	r0, r0, #1
	mov	r9, r0
	add	r1, r9
	add	r1, sl
	ldrh	r0, [r1, #0]
	mov	r2, r8
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r0, r8
	ldrh	r4, [r0, #20]
	mov	r7, sp
	add	r7, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r7, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_17296
	cmp	r1, #0
	beq	.L_1728c
	mov	r2, r8
	strh	r1, [r2, #28]
.L_17278:
	ldrh	r0, [r7, #0]
	strh	r0, [r2, #20]
.L_1727c:
	mov	r0, #253	@ 0xfd
	b	.L_17384
.L_17280:
	.4byte	gWarioCollisionData
.L_17284:
	.4byte	gWarioData
.L_17288:
	.4byte	sUnk_82DEB60
.L_1728c:
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	mov	r1, r8
	strh	r0, [r1, #18]
	b	.L_1727c
.L_17296:
	ldr	r2, [sp, #12]
	lsl	r0, r2, #1
	add	r0, r9
	add	r0, sl
	ldrh	r0, [r0, #0]
	mov	r1, r8
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	str	r5, [sp, #0]
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r7, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_17382
	cmp	r1, #0
	bne	.L_17382
	cmp	r0, #16
	bne	.L_1727c
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	mov	r2, r8
	strh	r0, [r2, #28]
	b	.L_1727c
.L_172d8:
	and	r1, r0
	cmp	r1, #0
	beq	.L_17382
	mov	r2, #62	@ 0x3e
	neg	r2, r2
	add	r0, r5, #0
	add	r1, sp, #4
	bl	func_8013EFC
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_17304
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r4, #18]
	strh	r1, [r4, #22]
	ldrb	r0, [r4, #1]
	cmp	r0, #1
	bne	.L_17304
.L_17300:
	mov	r0, #9
	b	.L_17384
.L_17304:
	ldr	r0, .L_17348
	mov	r8, r0
	ldr	r0, .L_1734c
	lsl	r1, r5, #1
	add	r1, r1, r5
	add	r1, r1, r7
	lsl	r1, r1, #1
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	mov	r1, r8
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r2, r8
	ldrh	r4, [r2, #20]
	mov	r7, sp
	add	r7, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r7, #0
	bl	func_8013D6C
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_17350
	mov	r0, r8
	strh	r1, [r0, #28]
	ldrh	r0, [r7, #0]
	b	.L_1737c
	.align	2, 0
.L_17348:
	.4byte	gWarioData
.L_1734c:
	.4byte	sUnk_82DEB60
.L_17350:
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_1727c
	add	r0, r4, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	str	r5, [sp, #0]
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r7, #0
	bl	func_8013D6C
	add	r1, r0, #0
	mov	r2, r8
	strh	r1, [r2, #28]
	cmp	r1, #0
	beq	.L_17378
	b	.L_17278
.L_17378:
	ldrh	r0, [r7, #0]
	add	r0, #63	@ 0x3f
.L_1737c:
	mov	r1, r8
	strh	r0, [r1, #20]
	b	.L_1727c
.L_17382:
	mov	r0, #255	@ 0xff
.L_17384:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8017394
func_8017394:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	ldr	r2, .L_17400
	mov	r0, #0
	strb	r0, [r2, #0]
.L_173a0:
	ldr	r1, .L_17404
	ldrb	r0, [r1, #1]
	cmp	r0, #6
	beq	.L_173ba
	cmp	r0, #15
	beq	.L_173ba
.L_173ac:
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_173ba
	sub	r0, #1
	strb	r0, [r1, #4]
	mov	r0, #1
	strb	r0, [r2, #0]
.L_173ba:
	ldr	r0, .L_17404
	ldrb	r0, [r0, #1]
	cmp	r0, #7
	bne	.L_17420
	ldr	r1, .L_17408
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r1, #1]
	ldr	r5, .L_1740c
	ldrh	r2, [r5, #0]
	mov	r0, #31
	ldr	r3, .L_17410
	and	r0, r2
	lsl	r0, r0, #1
	add	r4, r0, r3
	ldr	r1, .L_17414
	ldrh	r1, [r1, #0]
	strh	r1, [r4, #0]
	add	r3, #64	@ 0x40
	add	r0, r0, r3
	ldr	r1, .L_17418
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	add	r2, #1
	strh	r2, [r5, #0]
	lsl	r2, r2, #16
	asr	r2, r2, #16
	cmp	r2, #31
	ble	.L_17424
	ldr	r1, .L_1741c
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_17424
	.align	2, 0
.L_17400:
	.4byte	gUnk_30019F0
.L_17404:
	.4byte	gWarioData
.L_17408:
	.4byte	gUnk_3001938
.L_1740c:
	.4byte	gUnk_30031B8
.L_17410:
	.4byte	gUnk_3003138
.L_17414:
	.4byte	gPreviousXPosition
.L_17418:
	.4byte	gPreviousYPosition
.L_1741c:
	.4byte	gUnk_30031BA
.L_17420:
	bl	func_800FF64
.L_17424:
	ldr	r0, .L_17434
	ldrb	r1, [r0, #1]
	add	r3, r0, #0
	cmp	r1, #2
	beq	.L_17438
	cmp	r1, #10
	beq	.L_1745c
	b	.L_17474
.L_17434:
	.4byte	gWarioData
.L_17438:
	ldrh	r1, [r3, #16]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_17450
	ldr	r0, .L_1744c
	lsl	r1, r6, #2
	add	r0, #8
	add	r1, r1, r0
	b	.L_17480
.L_1744c:
	.4byte	sUnk_82DD6A8
.L_17450:
	ldr	r1, .L_17458
	lsl	r0, r6, #2
	add	r0, #16
	b	.L_17468
.L_17458:
	.4byte	sUnk_82DD6A8
.L_1745c:
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bge	.L_17474
	ldr	r1, .L_17470
	lsl	r0, r6, #2
.L_17468:
	add	r0, r0, r1
	ldr	r2, [r0, #0]
	b	.L_17482
	.align	2, 0
.L_17470:
	.4byte	sUnk_82DD728
.L_17474:
	ldr	r2, .L_174cc
	lsl	r1, r6, #2
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r2
.L_17480:
	ldr	r2, [r1, #0]
.L_17482:
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	ldr	r1, [r2, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #48]	@ 0x30
	add	r1, #1
	str	r1, [r3, #36]	@ 0x24
	ldrh	r0, [r3, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r3, #44]	@ 0x2c
	ldr	r0, [r2, #4]
	str	r0, [r3, #32]
	ldrb	r0, [r3, #1]
.L_174ac:
	cmp	r0, #6
	bne	.L_174dc
	ldr	r0, .L_174d0
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #3
	bhi	.L_174dc
	ldr	r1, .L_174d4
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r1, .L_174d8
.L_174c4:
	add	r0, r1, #0
	mov	r1, #0
	b	.L_17552
	.align	2, 0
.L_174cc:
	.4byte	sUnk_82DD6A8
.L_174d0:
	.4byte	gMainTimer
.L_174d4:
	.4byte	gWarioPaletteSize
.L_174d8:
	.4byte	sUnk_82DE3A0
.L_174dc:
	ldrb	r0, [r3, #1]
	cmp	r0, #7
	blt	.L_17570
	cmp	r0, #8
	ble	.L_174ec
	cmp	r0, #15
	beq	.L_1752c
	b	.L_17570
.L_174ec:
	ldr	r1, .L_1751c
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_17520
	ldrb	r0, [r3, #31]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_17524
	add	r0, r1, #0
	mov	r1, #16
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_17528
	add	r0, r1, #0
	mov	r1, #32
	b	.L_17552
	.align	2, 0
.L_1751c:
	.4byte	gWarioPaletteSize
.L_17520:
	.4byte	sUnk_82DE4C0
.L_17524:
	.4byte	sUnk_82DE4A0
.L_17528:
	.4byte	sUnk_82DDDC0
.L_1752c:
	ldr	r1, .L_1755c
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r0, .L_17560
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	ldr	r1, .L_17564
	cmp	r0, #3
	bhi	.L_17542
	ldr	r1, .L_17568
.L_17542:
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_1756c
	add	r0, r1, #0
	mov	r1, #16
.L_17552:
	mov	r2, #16
	bl	func_800FD90
	b	.L_1758e
	.align	2, 0
.L_1755c:
	.4byte	gWarioPaletteSize
.L_17560:
	.4byte	gMainTimer
.L_17564:
	.4byte	sUnk_82DE5D8
.L_17568:
	.4byte	sUnk_82DDDA0
.L_1756c:
	.4byte	sUnk_82DE5F8
.L_17570:
	ldr	r1, .L_17594
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r1, .L_17598
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_1759c
	add	r0, r1, #0
	mov	r1, #16
	mov	r2, #16
	bl	func_800FD90
.L_1758e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_17594:
	.4byte	gWarioPaletteSize
.L_17598:
	.4byte	sUnk_82DDDA0
.L_1759c:
	.4byte	sUnk_82DE5F8


thumb_func_start func_80175A0
func_80175A0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_17610
	ldrb	r0, [r0, #1]
	cmp	r0, #14
	bne	.L_17620
	ldr	r7, .L_17614
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #5
	beq	.L_17686
	ldr	r4, .L_17618
	ldr	r5, [r4, #0]
	add	r0, r5, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1761c
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #150	@ 0x96
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #150	@ 0x96
	bl	m4aMPlayPitchControl
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #30
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #30
	bl	m4aMPlayModDepthSet
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #5
	b	.L_17684
.L_17610:
	.4byte	gWarioData
.L_17614:
	.4byte	gWarioMusicState
.L_17618:
	.4byte	gMPlayTable
.L_1761c:
	.4byte	0xFFFF
.L_17620:
	ldr	r7, .L_17690
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #4
	beq	.L_17686
	ldr	r4, .L_17694
	ldr	r0, [r4, #0]
	mov	r8, r0
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_17698
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #4
.L_17684:
	strb	r0, [r7, #0]
.L_17686:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_17690:
	.4byte	gWarioMusicState
.L_17694:
	.4byte	gMPlayTable
.L_17698:
	.4byte	0xFFFF


thumb_func_start func_801769C
func_801769C:
	push	{r4, lr}
	ldr	r4, .L_176e0
	ldr	r3, .L_176e4
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r1, [r0, #0]
	ldr	r2, .L_176e8
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r3, #56]	@ 0x38
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r4, #7
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_176e0:
	.4byte	sUnk_82DD730
.L_176e4:
	.4byte	gWarioData
.L_176e8:
	.4byte	sWarioHitboxes
