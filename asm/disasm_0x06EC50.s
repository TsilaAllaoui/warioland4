.include "macros.s.inc"


thumb_func_start func_806EC50
func_806EC50:
	push	{r4, r5, r6, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	mov	r5, #0
	mov	r2, sp
	lsr	r0, r0, #22
	mov	r4, #0
	strh	r0, [r2, #2]
	mov	r0, sp
	lsr	r1, r1, #22
	strh	r1, [r0, #0]
	ldr	r3, .L_6ecc8
	ldrh	r2, [r3, #12]
	ldrh	r0, [r0, #2]
	mov	r1, sp
	mul	r0, r2
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	ldr	r1, [r3, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r2, sp
	ldr	r1, .L_6eccc
	ldr	r1, [r1, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	mov	r0, sp
	strb	r4, [r0, #7]
	strb	r4, [r0, #9]
	strb	r4, [r0, #10]
	mov	r1, sp
	ldr	r0, .L_6ecd0
	ldrb	r0, [r0, #11]
	strb	r0, [r1, #8]
	mov	r0, #1
	strb	r0, [r1, #6]
	ldr	r3, .L_6ecd4
	ldrb	r2, [r3, #0]
	cmp	r2, #0
	beq	.L_6ecd8
	cmp	r2, #6
	bne	.L_6ed68
	mov	r0, sp
	mov	r1, #5
	strb	r1, [r0, #6]
	ldrh	r0, [r3, #18]
	cmp	r0, r6
	bls	.L_6ecbe
	mov	r0, sp
	strb	r2, [r0, #6]
.L_6ecbe:
	mov	r0, sp
	bl	func_806EFEC
	b	.L_6ed66
	.align	2, 0
.L_6ecc8:
	.4byte	gBackgroundInfo
.L_6eccc:
	.4byte	gUnk_30031F4
.L_6ecd0:
	.4byte	gWarioCollisionData
.L_6ecd4:
	.4byte	gWarioData
.L_6ecd8:
	ldrh	r0, [r3, #18]
	cmp	r0, r6
	bls	.L_6ece4
	mov	r1, sp
	mov	r0, #2
	strb	r0, [r1, #6]
.L_6ece4:
	ldrb	r0, [r3, #1]
	sub	r0, #14
	cmp	r0, #11
	bhi	.L_6ed46
	lsl	r0, r0, #2
	ldr	r1, .L_6ecf8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6ecf8:
	.4byte	.L_6ecfc
.L_6ecfc:
	.4byte	.L_6ed4a
	.4byte	.L_6ed4a
	.4byte	.L_6ed46
	.4byte	.L_6ed46
	.4byte	.L_6ed46
	.4byte	.L_6ed46
	.4byte	.L_6ed46
	.4byte	.L_6ed46
	.4byte	.L_6ed38
	.4byte	.L_6ed2c
	.4byte	.L_6ed38
	.4byte	.L_6ed2c
.L_6ed2c:
	mov	r1, sp
	mov	r0, sp
	ldrb	r0, [r0, #6]
	add	r0, #4
	strb	r0, [r1, #6]
	b	.L_6ed4a
.L_6ed38:
	mov	r2, sp
	mov	r0, sp
	ldrb	r0, [r0, #6]
	mov	r1, #3
	eor	r0, r1
	strb	r0, [r2, #6]
	mov	r5, #1
.L_6ed46:
	cmp	r5, #0
	beq	.L_6ed68
.L_6ed4a:
	mov	r0, sp
	bl	func_806EE98
	add	r5, r0, #0
	cmp	r5, #1
	beq	.L_6ed68
	cmp	r5, #2
	bne	.L_6ed5e
	mov	r5, #0
	b	.L_6ed68
.L_6ed5e:
	mov	r0, sp
	mov	r1, #0
	bl	func_806F424
.L_6ed66:
	add	r5, r0, #0
.L_6ed68:
	add	r0, r5, #0
	add	sp, #12
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806ED74
func_806ED74:
	push	{r4, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	mov	r2, sp
	lsr	r0, r0, #22
	mov	r4, #0
	strh	r0, [r2, #2]
	mov	r0, sp
	lsr	r1, r1, #22
	strh	r1, [r0, #0]
	ldr	r3, .L_6ede4
	ldrh	r2, [r3, #12]
	ldrh	r0, [r0, #2]
	mov	r1, sp
	mul	r0, r2
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	ldr	r1, [r3, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r2, sp
	ldr	r0, .L_6ede8
	ldr	r1, [r0, #8]
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	mov	r0, sp
	strb	r4, [r0, #7]
	strb	r4, [r0, #9]
	strb	r4, [r0, #10]
	mov	r1, sp
	ldr	r0, .L_6edec
	ldrb	r0, [r0, #13]
	strb	r0, [r1, #8]
	mov	r0, #4
	strb	r0, [r1, #6]
	mov	r0, sp
	bl	func_806EE98
	add	r3, r0, #0
	cmp	r3, #1
	beq	.L_6edf0
	cmp	r3, #2
	beq	.L_6edde
	mov	r0, sp
	mov	r1, #2
	bl	func_806F424
	cmp	r0, #0
	bne	.L_6edf0
.L_6edde:
	mov	r0, #0
	b	.L_6edf2
	.align	2, 0
.L_6ede4:
	.4byte	gBackgroundInfo
.L_6ede8:
	.4byte	gUnk_30031F4
.L_6edec:
	.4byte	gWarioCollisionData
.L_6edf0:
	mov	r0, #1
.L_6edf2:
	add	sp, #12
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806EDFC
func_806EDFC:
	push	{r4, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	mov	r2, sp
	lsr	r0, r0, #22
	mov	r4, #0
	strh	r0, [r2, #2]
	mov	r0, sp
	lsr	r1, r1, #22
	strh	r1, [r0, #0]
	ldr	r3, .L_6ee6c
	ldrh	r2, [r3, #12]
	ldrh	r0, [r0, #2]
	mov	r1, sp
	mul	r0, r2
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	ldr	r1, [r3, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r2, sp
	ldr	r0, .L_6ee70
	ldr	r1, [r0, #8]
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
	mov	r0, sp
	strb	r4, [r0, #7]
	strb	r4, [r0, #9]
	strb	r4, [r0, #10]
	mov	r1, sp
	ldr	r0, .L_6ee74
	ldrb	r0, [r0, #12]
	strb	r0, [r1, #8]
	mov	r0, #3
	strb	r0, [r1, #6]
	ldr	r0, .L_6ee78
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bne	.L_6ee56
	mov	r0, #4
	strb	r0, [r1, #6]
.L_6ee56:
	mov	r0, sp
	bl	func_806EE98
	add	r3, r0, #0
	cmp	r3, #1
	beq	.L_6ee8c
	cmp	r3, #2
	bne	.L_6ee7c
	mov	r0, #128	@ 0x80
	b	.L_6ee8e
	.align	2, 0
.L_6ee6c:
	.4byte	gBackgroundInfo
.L_6ee70:
	.4byte	gUnk_30031F4
.L_6ee74:
	.4byte	gWarioCollisionData
.L_6ee78:
	.4byte	gWarioData
.L_6ee7c:
	mov	r0, sp
	mov	r1, #1
	bl	func_806F424
	cmp	r0, #0
	bne	.L_6ee8c
	mov	r0, #0
	b	.L_6ee8e
.L_6ee8c:
	mov	r0, #1
.L_6ee8e:
	add	sp, #12
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806EE98
func_806EE98:
	push	{r4, lr}
	add	r2, r0, #0
	mov	r4, #0
	ldrh	r1, [r2, #4]
	add	r0, r1, #0
	sub	r0, #11
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #19
	bhi	.L_6eeee
	add	r0, r1, #0
	cmp	r0, #15
	bhi	.L_6eeba
	strb	r4, [r2, #9]
	strb	r4, [r2, #10]
	mov	r1, #11
	b	.L_6eee8
.L_6eeba:
	cmp	r0, #20
	bhi	.L_6eeca
	mov	r0, #3
	strb	r0, [r2, #9]
	mov	r0, #1
	strb	r0, [r2, #10]
	mov	r1, #16
	b	.L_6eee8
.L_6eeca:
	cmp	r0, #25
	bhi	.L_6eeda
	mov	r0, #1
	strb	r0, [r2, #9]
	mov	r0, #2
	strb	r0, [r2, #10]
	mov	r1, #21
	b	.L_6eee8
.L_6eeda:
	cmp	r0, #30
	bhi	.L_6efaa
	mov	r0, #2
	strb	r0, [r2, #9]
	mov	r0, #3
	strb	r0, [r2, #10]
	mov	r1, #26
.L_6eee8:
	ldrh	r0, [r2, #4]
	sub	r1, r0, r1
	b	.L_6ef96
.L_6eeee:
	add	r0, r1, #0
	sub	r0, #31
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #11
	bhi	.L_6ef60
	ldrb	r3, [r2, #8]
	cmp	r3, #2
	bne	.L_6ef60
	ldrb	r1, [r2, #6]
	cmp	r1, #4
	bls	.L_6ef0c
	mov	r0, #3
	eor	r0, r1
	strb	r0, [r2, #6]
.L_6ef0c:
	ldrh	r0, [r2, #4]
	cmp	r0, #33	@ 0x21
	bhi	.L_6ef1c
	strb	r4, [r2, #9]
	mov	r0, #4
	strb	r0, [r2, #10]
	mov	r1, #31
	b	.L_6ef48
.L_6ef1c:
	cmp	r0, #36	@ 0x24
	bhi	.L_6ef2c
	mov	r0, #3
	strb	r0, [r2, #9]
	mov	r0, #5
	strb	r0, [r2, #10]
	mov	r1, #34	@ 0x22
	b	.L_6ef48
.L_6ef2c:
	cmp	r0, #39	@ 0x27
	bhi	.L_6ef3c
	mov	r0, #1
	strb	r0, [r2, #9]
	mov	r0, #6
	strb	r0, [r2, #10]
	mov	r1, #37	@ 0x25
	b	.L_6ef48
.L_6ef3c:
	cmp	r0, #42	@ 0x2a
	bhi	.L_6efaa
	strb	r3, [r2, #9]
	mov	r0, #7
	strb	r0, [r2, #10]
	mov	r1, #40	@ 0x28
.L_6ef48:
	ldrh	r0, [r2, #4]
	sub	r0, r0, r1
	add	r1, r0, #2
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	add	r0, r2, #0
	bl	func_806F058
	cmp	r0, #0
	beq	.L_6efa6
	mov	r4, #2
	b	.L_6efa6
.L_6ef60:
	ldrh	r1, [r2, #4]
	add	r0, r1, #0
	sub	r0, #52	@ 0x34
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	bhi	.L_6ef7e
	mov	r0, #0
	strb	r0, [r2, #9]
	mov	r0, #3
	strb	r0, [r2, #10]
	ldrh	r0, [r2, #4]
	add	r1, r0, #0
	sub	r1, #46	@ 0x2e
	b	.L_6ef96
.L_6ef7e:
	add	r0, r1, #0
	sub	r0, #89	@ 0x59
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #4
	bhi	.L_6efaa
	mov	r0, #0
	strb	r0, [r2, #9]
	strb	r0, [r2, #10]
	ldrh	r0, [r2, #4]
	add	r1, r0, #0
	sub	r1, #89	@ 0x59
.L_6ef96:
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	add	r0, r2, #0
	bl	func_806F058
	cmp	r0, #0
	beq	.L_6efa6
	mov	r4, #1
.L_6efa6:
	add	r0, r4, #0
	b	.L_6efac
.L_6efaa:
	mov	r0, #0
.L_6efac:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806EFB4
func_806EFB4:
	push	{lr}
	add	r2, r0, #0
	mov	r1, #0
	ldrh	r0, [r2, #4]
	sub	r0, #43	@ 0x2b
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #4
	bls	.L_6efca
	mov	r0, #0
	b	.L_6efe6
.L_6efca:
	strb	r1, [r2, #9]
	mov	r0, #8
	strb	r0, [r2, #10]
	ldrh	r1, [r2, #4]
	sub	r1, #43	@ 0x2b
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	add	r0, r2, #0
	bl	func_806F058
	neg	r1, r0
	orr	r1, r0
	lsr	r1, r1, #31
	add	r0, r1, #0
.L_6efe6:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806EFEC
func_806EFEC:
	push	{r4, lr}
	add	r2, r0, #0
	mov	r4, #0
	ldrb	r3, [r2, #8]
	cmp	r3, #1
	bhi	.L_6effc
.L_6eff8:
	mov	r0, #0
	b	.L_6f052
.L_6effc:
	ldrh	r1, [r2, #4]
	add	r0, r1, #0
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bhi	.L_6f050
	strb	r4, [r2, #9]
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	cmp	r0, #48	@ 0x30
	bne	.L_6f018
	mov	r0, #9
	b	.L_6f02a
.L_6f018:
	cmp	r0, #49	@ 0x31
	bne	.L_6f020
	mov	r0, #9
	b	.L_6f040
.L_6f020:
	cmp	r0, #50	@ 0x32
	bne	.L_6f030
	cmp	r3, #3
	bne	.L_6f030
	mov	r0, #10
.L_6f02a:
	strb	r0, [r2, #10]
	mov	r1, #2
	b	.L_6f044
.L_6f030:
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	cmp	r0, #51	@ 0x33
	bne	.L_6eff8
	ldrb	r0, [r2, #8]
	cmp	r0, #3
	bne	.L_6eff8
	mov	r0, #10
.L_6f040:
	strb	r0, [r2, #10]
	mov	r1, #5
.L_6f044:
	add	r0, r2, #0
	bl	func_806F058
	cmp	r0, #0
	beq	.L_6f050
	mov	r4, #1
.L_6f050:
	add	r0, r4, #0
.L_6f052:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_806F058
func_806F058:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r1, r1, #24
	lsr	r0, r1, #24
	cmp	r0, #8
	bhi	.L_6f0b4
	lsl	r0, r0, #2
	ldr	r1, .L_6f070
	add	r1, r0, r1
	ldr	r1, [r1, #0]
	add	r5, r0, #0
	mov	pc, r1
.L_6f070:
	.4byte	.L_6f074
.L_6f074:
	.4byte	.L_6f0b8
	.4byte	.L_6f098
	.4byte	.L_6f0b8
	.4byte	.L_6f09e
	.4byte	.L_6f0a4
	.4byte	.L_6f0ac
	.4byte	.L_6f0b8
	.4byte	.L_6f0ac
	.4byte	.L_6f0b4
.L_6f098:
	mov	r0, #1
	strb	r0, [r4, #7]
	b	.L_6f0b8
.L_6f09e:
	mov	r0, #2
	strb	r0, [r4, #7]
	b	.L_6f0b8
.L_6f0a4:
	add	r0, r4, #0
	bl	func_806F328
	b	.L_6f0b8
.L_6f0ac:
	add	r0, r4, #0
	bl	func_806F3B0
	b	.L_6f0b8
.L_6f0b4:
	mov	r0, #0
	b	.L_6f0c6
.L_6f0b8:
	ldr	r0, .L_6f0cc
	add	r0, r5, r0
	ldr	r1, [r0, #0]
	add	r0, r4, #0
	bl	_call_via_r1
	mov	r0, #1
.L_6f0c6:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_6f0cc:
	.4byte	sUnk_878F5A4


thumb_func_start func_806F0D0
func_806F0D0:
	push	{r4, lr}
	add	r4, r0, #0
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	mov	r0, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f0e8
	add	r0, r4, #0
	bl	func_806F2AC
.L_6f0e8:
	ldrb	r0, [r4, #7]
	cmp	r0, #0
	beq	.L_6f0f4
	add	r0, r4, #0
	bl	func_806F2D8
.L_6f0f4:
	ldr	r2, .L_6f114
	ldrb	r0, [r4, #10]
	ldr	r1, .L_6f118
	ldrb	r1, [r1, #0]
	lsl	r0, r0, #2
	cmp	r1, #1
	bne	.L_6f104
	add	r0, #2
.L_6f104:
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6f114:
	.4byte	sUnk_83F9D64
.L_6f118:
	.4byte	gWarioData


thumb_func_start func_806F11C
func_806F11C:
	push	{r4, lr}
	add	r4, r0, #0
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	mov	r0, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f134
	add	r0, r4, #0
	bl	func_806F2AC
.L_6f134:
	ldrb	r0, [r4, #7]
	cmp	r0, #0
	beq	.L_6f140
	add	r0, r4, #0
	bl	func_806F2D8
.L_6f140:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	mov	r0, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f160
	add	r0, r4, #0
	bl	func_806F2AC
.L_6f160:
	ldrh	r0, [r4, #2]
	sub	r0, #1
	strh	r0, [r4, #2]
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	mov	r0, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f17a
	add	r0, r4, #0
	bl	func_806F2AC
.L_6f17a:
	ldrh	r0, [r4, #0]
	sub	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	mov	r0, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f19a
	add	r0, r4, #0
	bl	func_806F2AC
.L_6f19a:
	ldr	r2, .L_6f1b8
	ldrb	r0, [r4, #10]
	ldr	r1, .L_6f1bc
	ldrb	r1, [r1, #0]
	lsl	r0, r0, #2
	cmp	r1, #1
	bne	.L_6f1aa
	add	r0, #2
.L_6f1aa:
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6f1b8:
	.4byte	sUnk_83F9D90
.L_6f1bc:
	.4byte	gWarioData


thumb_func_start func_806F1C0
func_806F1C0:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r3, .L_6f294
	ldrh	r1, [r3, #12]
	ldrh	r0, [r5, #2]
	add	r2, r0, #0
	mul	r2, r1
	add	r0, r2, #0
	ldrh	r1, [r5, #0]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r2, .L_6f298
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	ldr	r1, .L_6f29c
	add	r0, r0, r1
	strh	r4, [r0, #0]
	ldr	r1, [r3, #8]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	ldr	r1, .L_6f2a0
	add	r0, r0, r1
	strh	r4, [r0, #0]
	ldrb	r0, [r2, #0]
	add	r0, #2
	strb	r0, [r2, #0]
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r1, [r5, #2]
	ldrh	r2, [r5, #0]
	add	r0, r4, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f216
	add	r0, r5, #0
	bl	func_806F2AC
.L_6f216:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	add	r0, r4, #2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r1, [r5, #2]
	ldrh	r2, [r5, #0]
	add	r0, r4, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f236
	add	r0, r5, #0
	bl	func_806F2AC
.L_6f236:
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	add	r0, r4, #4
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r1, [r5, #2]
	ldrh	r2, [r5, #0]
	add	r0, r4, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f256
	add	r0, r5, #0
	bl	func_806F2AC
.L_6f256:
	ldrh	r0, [r5, #0]
	sub	r0, #1
	strh	r0, [r5, #0]
	sub	r0, r4, #2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r1, [r5, #2]
	ldrh	r2, [r5, #0]
	add	r0, r4, #0
	bl	func_806FFB0
	cmp	r0, #0
	beq	.L_6f276
	add	r0, r5, #0
	bl	func_806F2AC
.L_6f276:
	ldr	r2, .L_6f2a4
	ldrb	r0, [r5, #10]
	ldr	r1, .L_6f2a8
	ldrb	r1, [r1, #0]
	lsl	r0, r0, #2
	cmp	r1, #1
	bne	.L_6f286
	add	r0, #2
.L_6f286:
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_6f294:
	.4byte	gBackgroundInfo
.L_6f298:
	.4byte	gUnk_300342C
.L_6f29c:
	.4byte	0x02039f80
.L_6f2a0:
	.4byte	0x02039f82
.L_6f2a4:
	.4byte	sUnk_83F9D90
.L_6f2a8:
	.4byte	gWarioData


thumb_func_start func_806F2AC
func_806F2AC:
	push	{r4, r5, lr}
	sub	sp, #4
	ldrh	r3, [r0, #2]
	lsl	r5, r3, #22
	lsr	r5, r5, #16
	ldrh	r4, [r0, #0]
	lsl	r1, r4, #22
	lsr	r1, r1, #16
	mov	r2, #1
	eor	r4, r3
	and	r4, r2
	ldrb	r2, [r0, #9]
	ldrb	r3, [r0, #6]
	str	r4, [sp, #0]
	add	r0, r5, #0
	bl	func_8076998
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806F2D8
func_806F2D8:
	push	{lr}
	sub	sp, #4
	ldrh	r1, [r0, #2]
	lsl	r1, r1, #22
	lsr	r2, r1, #16
	ldrh	r1, [r0, #0]
	lsl	r1, r1, #22
	lsr	r1, r1, #16
	ldrb	r0, [r0, #7]
	cmp	r0, #2
	bne	.L_6f30c
	add	r3, r2, #0
	add	r3, #64	@ 0x40
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, r1, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #0]
	mov	r0, #130	@ 0x82
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_6f320
.L_6f30c:
	mov	r3, #32
	orr	r3, r2
	mov	r0, #32
	orr	r0, r1
	str	r0, [sp, #0]
	mov	r0, #129	@ 0x81
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_6f320:
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806F328
func_806F328:
	push	{r4, r5, r6, r7, lr}
	add	r2, r0, #0
	ldrh	r1, [r2, #4]
	sub	r0, r1, #2
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	sub	r1, #1
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	mov	r3, #0
	ldr	r7, .L_6f358
	ldr	r4, .L_6f35c
.L_6f340:
	cmp	r3, #0
	beq	.L_6f364
	cmp	r3, #1
	bne	.L_6f360
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	sub	r0, #1
	strh	r0, [r2, #2]
	b	.L_6f36a
	.align	2, 0
.L_6f358:
	.4byte	gUnk_30031F4
.L_6f35c:
	.4byte	gBackgroundInfo
.L_6f360:
	cmp	r3, #2
	bne	.L_6f36a
.L_6f364:
	ldrh	r0, [r2, #0]
	sub	r0, #1
	strh	r0, [r2, #0]
.L_6f36a:
	ldrh	r1, [r4, #12]
	ldrh	r0, [r2, #2]
	mul	r0, r1
	ldrh	r1, [r2, #0]
	add	r0, r0, r1
	ldr	r1, [r4, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r1, [r7, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r2, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r6
	bne	.L_6f396
	strb	r1, [r2, #7]
	mov	r0, #1
	b	.L_6f3aa
.L_6f396:
	cmp	r0, r5
	bne	.L_6f3a2
	mov	r0, #2
	strb	r0, [r2, #7]
	mov	r0, #1
	b	.L_6f3aa
.L_6f3a2:
	add	r3, #1
	cmp	r3, #2
	ble	.L_6f340
	mov	r0, #0
.L_6f3aa:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_806F3B0
func_806F3B0:
	push	{r4, r5, r6, lr}
	add	r2, r0, #0
	ldrh	r0, [r2, #4]
	sub	r0, #1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r3, #0
	ldr	r6, .L_6f3d8
	ldr	r4, .L_6f3dc
.L_6f3c2:
	cmp	r3, #0
	beq	.L_6f3e4
	cmp	r3, #1
	bne	.L_6f3e0
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	sub	r0, #1
	strh	r0, [r2, #2]
	b	.L_6f3ea
.L_6f3d8:
	.4byte	gUnk_30031F4
.L_6f3dc:
	.4byte	gBackgroundInfo
.L_6f3e0:
	cmp	r3, #2
	bne	.L_6f3ea
.L_6f3e4:
	ldrh	r0, [r2, #0]
	sub	r0, #1
	strh	r0, [r2, #0]
.L_6f3ea:
	ldrh	r1, [r4, #12]
	ldrh	r0, [r2, #2]
	mul	r0, r1
	ldrh	r1, [r2, #0]
	add	r0, r0, r1
	ldr	r1, [r4, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r1, [r6, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r2, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r5
	bne	.L_6f416
	strb	r1, [r2, #7]
	mov	r0, #1
	b	.L_6f41e
.L_6f416:
	add	r3, #1
	cmp	r3, #2
	ble	.L_6f3c2
	mov	r0, #0
.L_6f41e:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_806F424
func_806F424:
	push	{r4, r5, lr}
	lsl	r1, r1, #24
	lsr	r5, r1, #24
	mov	r4, #0
	mov	r2, #0
	ldrh	r1, [r0, #4]
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bls	.L_6f440
	mov	r0, #0
	b	.L_6f4aa
.L_6f440:
	add	r0, r1, #0
	cmp	r0, #64	@ 0x40
	bne	.L_6f44a
	mov	r2, #1
	b	.L_6f464
.L_6f44a:
	cmp	r0, #65	@ 0x41
	bne	.L_6f452
	mov	r2, #2
	b	.L_6f464
.L_6f452:
	cmp	r0, #66	@ 0x42
	bne	.L_6f45a
	mov	r2, #3
	b	.L_6f464
.L_6f45a:
	cmp	r0, #67	@ 0x43
	bne	.L_6f460
	mov	r2, #4
.L_6f460:
	cmp	r2, #0
	beq	.L_6f4a8
.L_6f464:
	ldr	r0, .L_6f4b0
	add	r2, r2, r0
	ldrb	r1, [r2, #0]
	cmp	r1, #1
	bhi	.L_6f4a8
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	mov	r1, #1
	and	r0, r1
	mov	r1, #215	@ 0xd7
	cmp	r0, #0
	beq	.L_6f480
	mov	r1, #216	@ 0xd8
.L_6f480:
	add	r0, r1, #0
	bl	m4aSongNumStart
	mov	r0, #20
	mov	r1, #0
	bl	ScreenShakeRequestY
	ldr	r0, .L_6f4b4
	ldrb	r0, [r0, #12]
	cmp	r0, #0
	beq	.L_6f4a8
	cmp	r5, #1
	bne	.L_6f4a8
	ldr	r0, .L_6f4b8
	ldrb	r1, [r0, #0]
	mov	r0, #7
	eor	r1, r0
	neg	r0, r1
	orr	r0, r1
	lsr	r4, r0, #31
.L_6f4a8:
	add	r0, r4, #0
.L_6f4aa:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_6f4b0:
	.4byte	gSwitchStates
.L_6f4b4:
	.4byte	gWarioCollisionData
.L_6f4b8:
	.4byte	gWarioData


thumb_func_start func_806F4BC
func_806F4BC:
	push	{r4, lr}
	add	r4, r0, #0
	mov	r1, #0
	ldr	r0, .L_6f4d0
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_6f4d4
	mov	r0, #0
	b	.L_6f518
	.align	2, 0
.L_6f4d0:
	.4byte	gUnk_300001B
.L_6f4d4:
	ldrh	r0, [r4, #4]
	cmp	r0, #10
	bne	.L_6f516
	ldr	r2, .L_6f520
	ldrh	r1, [r2, #12]
	ldrh	r0, [r4, #2]
	add	r3, r0, #0
	mul	r3, r1
	add	r0, r3, #0
	ldrh	r1, [r4, #0]
	add	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, [r2, #8]
	lsr	r0, r0, #15
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #2]
	ldrh	r2, [r4, #0]
	bl	func_8070098
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #6
	add	r0, #32
	ldrh	r1, [r4, #0]
	lsl	r1, r1, #6
	add	r1, #32
	mov	r2, #68	@ 0x44
	bl	SpriteSpawnSecondary
	mov	r1, #1
.L_6f516:
	add	r0, r1, #0
.L_6f518:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_6f520:
	.4byte	gBackgroundInfo


thumb_func_start func_806F524
func_806F524:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	mov	r0, sp
	mov	r3, #0
	strh	r5, [r0, #0]
	strh	r7, [r0, #2]
	mov	r1, sp
	ldr	r0, .L_6f56c
	ldr	r0, [r0, #8]
	lsr	r2, r2, #15
	add	r2, r2, r0
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #4]
	mov	r0, #4
	strb	r0, [r1, #6]
	mov	r0, sp
	strb	r3, [r0, #7]
	strb	r3, [r0, #9]
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r6, #0
	ldr	r0, .L_6f570
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_6f59c
	cmp	r0, #2
	bgt	.L_6f574
	cmp	r0, #1
	beq	.L_6f57e
	b	.L_6f644
	.align	2, 0
.L_6f56c:
	.4byte	gUnk_30031F4
.L_6f570:
	.4byte	gUnk_3000028
.L_6f574:
	cmp	r0, #3
	beq	.L_6f5e2
	cmp	r0, #4
	beq	.L_6f63e
	b	.L_6f644
.L_6f57e:
	mov	r0, sp
	bl	func_806EE98
	add	r6, r0, #0
	cmp	r6, #1
	beq	.L_6f644
	cmp	r6, #2
	bne	.L_6f592
	mov	r6, #0
	b	.L_6f644
.L_6f592:
	mov	r0, sp
	mov	r1, #0
	bl	func_806F424
	b	.L_6f644
.L_6f59c:
	ldr	r3, .L_6f5b4
	mov	r4, #0
	ldrh	r2, [r3, #0]
	lsl	r1, r5, #8
	add	r0, r1, #0
	orr	r0, r7
	add	r5, r1, #0
	cmp	r2, r0
	bne	.L_6f5b8
	strh	r6, [r3, #0]
	b	.L_6f5d4
	.align	2, 0
.L_6f5b4:
	.4byte	0x02039f00
.L_6f5b8:
	add	r3, #2
	add	r4, #1
	cmp	r4, #63	@ 0x3f
	bgt	.L_6f5d0
	ldrh	r1, [r3, #0]
	add	r0, r5, #0
	orr	r0, r7
	cmp	r1, r0
	bne	.L_6f5b8
	mov	r0, #0
	strh	r0, [r3, #0]
	mov	r6, #1
.L_6f5d0:
	cmp	r6, #0
	beq	.L_6f5f4
.L_6f5d4:
	mov	r0, sp
	ldrh	r1, [r0, #2]
	ldrh	r2, [r0, #0]
	mov	r0, #0
	bl	func_8070098
	b	.L_6f5f4
.L_6f5e2:
	ldr	r3, .L_6f5f8
	mov	r4, #0
	ldrh	r2, [r3, #0]
	lsl	r1, r5, #8
	add	r0, r1, #0
	orr	r0, r7
	add	r5, r1, #0
	cmp	r2, r0
	bne	.L_6f5fc
.L_6f5f4:
	mov	r6, #1
	b	.L_6f644
.L_6f5f8:
	.4byte	0x02039f00
.L_6f5fc:
	add	r3, #2
	add	r4, #1
	cmp	r4, #63	@ 0x3f
	bgt	.L_6f610
	ldrh	r1, [r3, #0]
	add	r0, r5, #0
	orr	r0, r7
	cmp	r1, r0
	bne	.L_6f5fc
	mov	r6, #1
.L_6f610:
	cmp	r6, #0
	bne	.L_6f644
	ldr	r3, .L_6f61c
	mov	r4, #0
	mov	r2, sp
	b	.L_6f624
.L_6f61c:
	.4byte	0x02039f00
.L_6f620:
	add	r3, #2
	add	r4, #1
.L_6f624:
	cmp	r4, #63	@ 0x3f
	bgt	.L_6f644
	ldrh	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_6f620
	orr	r5, r7
	strh	r5, [r3, #0]
	ldrh	r1, [r2, #2]
	ldrh	r2, [r2, #0]
	mov	r0, #1
	bl	func_8070098
	b	.L_6f5f4
.L_6f63e:
	mov	r0, sp
	bl	func_806F4BC
.L_6f644:
	add	r0, r6, #0
	add	sp, #12
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806F650
func_806F650:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	add	r4, r3, #0
	ldr	r2, .L_6f67c
	mov	r0, #0
	strb	r0, [r2, #2]
	strb	r0, [r2, #0]
	ldr	r0, .L_6f680
	ldrb	r0, [r0, #0]
	mov	r1, #0
	cmp	r0, #1
	bls	.L_6f66c
	add	r1, r3, #0
.L_6f66c:
	strb	r1, [r2, #1]
	cmp	r4, #11
	bhi	.L_6f676
	mov	r0, #1
	strb	r0, [r2, #0]
.L_6f676:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6f67c:
	.4byte	gUnk_3003BCC
.L_6f680:
	.4byte	gUnk_300001B


thumb_func_start func_806F684
func_806F684:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r6, .L_6f6a0
	ldrb	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_6f6a4
	cmp	r0, #1
	ble	.L_6f6fe
	cmp	r0, #2
	beq	.L_6f6d2
	cmp	r0, #3
	beq	.L_6f6ea
	b	.L_6f6fe
	.align	2, 0
.L_6f6a0:
	.4byte	gUnk_3003BCC
.L_6f6a4:
	mov	r4, sp
	add	r4, #6
	mov	r1, #0
	mov	r5, #0
	strh	r1, [r4, #0]
	add	r0, sp, #4
	strh	r1, [r0, #0]
	ldrb	r0, [r6, #1]
	add	r1, sp, #4
	add	r2, r4, #0
	bl	func_806F794
	ldrb	r1, [r6, #1]
	ldrh	r3, [r4, #0]
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	str	r0, [sp, #0]
	mov	r0, #14
	mov	r2, #0
	bl	func_801E430
	strb	r5, [r6, #2]
	b	.L_6f6e2
.L_6f6d2:
	ldrb	r0, [r6, #2]
	cmp	r0, #74	@ 0x4a
	bhi	.L_6f6de
	add	r0, #1
	strb	r0, [r6, #2]
	b	.L_6f6fe
.L_6f6de:
	mov	r0, #0
	strb	r0, [r6, #2]
.L_6f6e2:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	b	.L_6f6fe
.L_6f6ea:
	ldrb	r0, [r6, #1]
	bl	func_806F708
	ldrb	r2, [r6, #1]
	mov	r0, #128	@ 0x80
	mov	r1, #0
	orr	r0, r2
	strb	r0, [r6, #1]
	strb	r1, [r6, #2]
	strb	r1, [r6, #0]
.L_6f6fe:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806F708
func_806F708:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r1, .L_6f788
	ldrb	r2, [r1, #0]
	sub	r2, #1
	lsl	r1, r2, #1
	add	r1, r1, r2
	add	r2, r1, r0
	ldr	r0, .L_6f78c
	lsl	r1, r2, #1
	add	r2, r1, r0
	ldrb	r5, [r2, #0]
	add	r0, #1
	add	r1, r1, r0
	ldrb	r4, [r1, #0]
	ldr	r6, .L_6f790
	sub	r0, r5, #1
	lsl	r0, r0, #16
	mov	r8, r0
	mov	r7, #1
.L_6f736:
	ldrh	r0, [r6, #20]
	mul	r0, r4
	add	r2, r0, r5
	ldr	r1, [r6, #16]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r2, [r0, #0]
	add	r0, r2, #2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r2, r5, #0
	bl	func_8070154
	ldrh	r0, [r6, #20]
	mul	r0, r4
	add	r0, r0, r5
	sub	r2, r0, #1
	ldr	r1, [r6, #16]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r2, [r0, #0]
	add	r0, r2, #2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	mov	r3, r8
	lsr	r2, r3, #16
	bl	func_8070154
	sub	r7, #1
	sub	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	cmp	r7, #0
	bge	.L_6f736
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6f788:
	.4byte	gUnk_3000C2A
.L_6f78c:
	.4byte	sUnk_83F9DBC
.L_6f790:
	.4byte	gBackgroundInfo


thumb_func_start func_806F794
func_806F794:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r3, .L_6f7c4
	ldrb	r3, [r3, #0]
	sub	r3, #1
	lsl	r4, r3, #1
	add	r4, r4, r3
	add	r4, r4, r0
	ldr	r3, .L_6f7c8
	lsl	r4, r4, #1
	add	r0, r4, r3
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, #32
	strh	r0, [r1, #0]
	add	r3, #1
	add	r4, r4, r3
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #6
	strh	r0, [r2, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6f7c4:
	.4byte	gUnk_3000C2A
.L_6f7c8:
	.4byte	sUnk_83F9DBC


thumb_func_start func_806F7CC
func_806F7CC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_6f82c
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_6f824
	ldr	r0, .L_6f830
	mov	r1, #5
	strb	r1, [r0, #0]
	mov	r4, #0
	ldr	r0, .L_6f834
	add	r5, r0, #0
	add	r5, #40	@ 0x28
	mov	r6, #3
.L_6f7e6:
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #31
	cmp	r0, #0
	bne	.L_6f7f6
	lsl	r0, r4, #24
	lsr	r0, r0, #24
	bl	func_806F708
.L_6f7f6:
	add	r4, #1
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #30
	cmp	r0, #0
	blt	.L_6f808
	lsl	r0, r4, #24
	lsr	r0, r0, #24
	bl	func_806F708
.L_6f808:
	add	r4, #1
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #29
	cmp	r0, #0
	blt	.L_6f81a
	lsl	r0, r4, #24
	lsr	r0, r0, #24
	bl	func_806F708
.L_6f81a:
	add	r4, #1
	add	r5, #24
	sub	r6, #1
	cmp	r6, #0
	bge	.L_6f7e6
.L_6f824:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6f82c:
	.4byte	gUnk_300001B
.L_6f830:
	.4byte	gUnk_3000C2A
.L_6f834:
	.4byte	gCurrentCollection


thumb_func_start func_806F838
func_806F838:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r0, .L_6f864
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #8
	bne	.L_6f850
	b	.L_6f9c8
.L_6f850:
	ldr	r0, .L_6f868
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_6f86c
	bl	func_806FD74
	b	.L_6f9c8
	.align	2, 0
.L_6f864:
	.4byte	gSubGameMode
.L_6f868:
	.4byte	gMainTimer
.L_6f86c:
	mov	r2, #0
	str	r2, [sp, #12]
	ldr	r0, .L_6f898
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #2
	bne	.L_6f87e
	mov	r4, #1
	str	r4, [sp, #12]
.L_6f87e:
	ldr	r6, [sp, #12]
	cmp	r6, #1
	bne	.L_6f89c
	mov	r0, #0
	str	r0, [sp, #0]
	mov	r1, #3
	mov	sl, r1
	mov	r2, #3
	neg	r2, r2
	str	r2, [sp, #4]
	mov	r9, r1
	b	.L_6f8a8
	.align	2, 0
.L_6f898:
	.4byte	gWarioData
.L_6f89c:
	mov	r4, #0
	str	r4, [sp, #0]
	mov	sl, r4
	mov	r6, #0
	str	r6, [sp, #4]
	mov	r9, r6
.L_6f8a8:
	ldrh	r2, [r3, #18]
	mov	r1, #54	@ 0x36
	ldrsh	r0, [r3, r1]
	add	r0, r2, r0
	add	r0, r9
	asr	r0, r0, #6
	mov	r9, r0
	ldr	r5, .L_6f924
	ldrh	r0, [r5, #12]
	cmp	r9, r0
	ble	.L_6f8c0
	mov	r9, r0
.L_6f8c0:
	mov	r4, #50	@ 0x32
	ldrsh	r0, [r3, r4]
	add	r0, r2, r0
	ldr	r6, [sp, #4]
	add	r4, r0, r6
	cmp	r4, #0
	bge	.L_6f8d0
	mov	r4, #0
.L_6f8d0:
	asr	r4, r4, #6
	str	r4, [sp, #4]
	ldrh	r1, [r3, #20]
	mov	r4, #52	@ 0x34
	ldrsh	r0, [r3, r4]
	add	r0, r1, r0
	ldr	r6, [sp, #0]
	add	r4, r0, r6
	cmp	r4, #0
	bge	.L_6f8e6
	mov	r4, #0
.L_6f8e6:
	asr	r4, r4, #6
	str	r4, [sp, #0]
	mov	r4, #56	@ 0x38
	ldrsh	r0, [r3, r4]
	add	r0, r1, r0
	add	r0, sl
	asr	r0, r0, #6
	mov	sl, r0
	ldrh	r0, [r5, #14]
	cmp	sl, r0
	ble	.L_6f8fe
	mov	sl, r0
.L_6f8fe:
	ldr	r0, .L_6f928
	ldrh	r0, [r0, #0]
	sub	r2, r2, r0
	mov	r8, r2
	ldr	r0, .L_6f92c
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	str	r1, [sp, #8]
	mov	r4, #0
.L_6f910:
	ldr	r6, [sp, #0]
	mov	r0, r8
	cmp	r0, #0
	beq	.L_6f930
	ldr	r5, [sp, #4]
	cmp	r0, #0
	blt	.L_6f920
	mov	r5, r9
.L_6f920:
	add	r4, #1
	b	.L_6f938
.L_6f924:
	.4byte	gBackgroundInfo
.L_6f928:
	.4byte	gPreviousXPosition
.L_6f92c:
	.4byte	gPreviousYPosition
.L_6f930:
	ldr	r5, [sp, #4]
	cmp	r4, #0
	beq	.L_6f938
	mov	r5, r9
.L_6f938:
	cmp	r6, sl
	bgt	.L_6f958
	ldr	r1, .L_6f978
	ldr	r2, [sp, #12]
	lsl	r0, r2, #2
	add	r7, r0, r1
	lsl	r5, r5, #16
.L_6f946:
	lsl	r0, r6, #16
	lsr	r0, r0, #16
	ldr	r2, [r7, #0]
	lsr	r1, r5, #16
	bl	_call_via_r2
	add	r6, #1
	cmp	r6, sl
	ble	.L_6f946
.L_6f958:
	add	r4, #1
	cmp	r4, #1
	ble	.L_6f910
	mov	r4, #0
.L_6f960:
	ldr	r5, [sp, #4]
	mov	r6, r8
	cmp	r6, #0
	beq	.L_6f97c
	ldr	r6, [sp, #0]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	blt	.L_6f972
	mov	r6, sl
.L_6f972:
	add	r4, #1
	b	.L_6f984
	.align	2, 0
.L_6f978:
	.4byte	sUnk_878F5C4
.L_6f97c:
	ldr	r6, [sp, #0]
	cmp	r4, #0
	beq	.L_6f984
	mov	r6, sl
.L_6f984:
	add	r3, r4, #1
	cmp	r5, r9
	bgt	.L_6f9aa
	ldr	r1, .L_6f9c0
	ldr	r2, [sp, #12]
	lsl	r0, r2, #2
	add	r7, r0, r1
	lsl	r4, r6, #16
.L_6f994:
	lsl	r1, r5, #16
	lsr	r1, r1, #16
	ldr	r2, [r7, #0]
	lsr	r0, r4, #16
	str	r3, [sp, #16]
	bl	_call_via_r2
	add	r5, #1
	ldr	r3, [sp, #16]
	cmp	r5, r9
	ble	.L_6f994
.L_6f9aa:
	add	r4, r3, #0
	cmp	r4, #1
	ble	.L_6f960
	ldr	r4, [sp, #12]
	cmp	r4, #0
	beq	.L_6f9c8
	mov	r6, #0
	str	r6, [sp, #12]
	ldr	r3, .L_6f9c4
	b	.L_6f87e
	.align	2, 0
.L_6f9c0:
	.4byte	sUnk_878F5C4
.L_6f9c4:
	.4byte	gWarioData
.L_6f9c8:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_806F9D8
func_806F9D8:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	ldr	r2, .L_6fa38
	ldrh	r0, [r2, #12]
	mul	r0, r5
	add	r0, r0, r6
	ldr	r1, [r2, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r3, .L_6fa3c
	ldr	r1, [r3, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	str	r4, [sp, #4]
	add	r7, r2, #0
	cmp	r4, #112	@ 0x70
	beq	.L_6fa2e
	cmp	r4, #114	@ 0x72
	beq	.L_6fa48
	ldr	r2, .L_6fa40
	ldrb	r1, [r2, #1]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_6fa1e
	cmp	r4, #72	@ 0x48
	beq	.L_6fa2e
	cmp	r4, #73	@ 0x49
	beq	.L_6fa48
.L_6fa1e:
	ldrb	r1, [r2, #4]
	mov	r0, #1
	and	r0, r1
	ldr	r2, [sp, #4]
	cmp	r0, #0
	beq	.L_6fa52
	cmp	r2, #74	@ 0x4a
	bne	.L_6fa44
.L_6fa2e:
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806FD1C
	b	.L_6fb9a
.L_6fa38:
	.4byte	gBackgroundInfo
.L_6fa3c:
	.4byte	gUnk_30031F4
.L_6fa40:
	.4byte	gSwitchStates
.L_6fa44:
	cmp	r2, #75	@ 0x4b
	bne	.L_6fa52
.L_6fa48:
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806FD48
	b	.L_6fb9a
.L_6fa52:
	add	r0, r2, #0
	sub	r0, #116	@ 0x74
	cmp	r0, #2
	bhi	.L_6faf0
	ldr	r0, .L_6fad8
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_6fa64
	b	.L_6fb9a
.L_6fa64:
	ldr	r0, .L_6fadc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6fa6e
	b	.L_6fb9a
.L_6fa6e:
	ldr	r0, .L_6fae0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6fa80
	ldr	r0, .L_6fae4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6fa80
	b	.L_6fb9a
.L_6fa80:
	mov	r0, #0
	add	r1, r5, #0
	add	r2, r6, #0
	bl	func_806FFB0
	ldr	r0, [sp, #4]
	mov	r4, #3
	cmp	r0, #117	@ 0x75
	beq	.L_6fa9a
	mov	r4, #1
	cmp	r0, #118	@ 0x76
	bne	.L_6fa9a
	mov	r4, #5
.L_6fa9a:
	ldr	r2, .L_6fae8
	ldr	r0, [sp, #4]
	sub	r0, #116	@ 0x74
	ldr	r1, .L_6faec
	ldrb	r1, [r1, #0]
	lsl	r0, r0, #2
	cmp	r1, #1
	bne	.L_6faac
	add	r0, #2
.L_6faac:
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	ldr	r1, .L_6fae0
	ldrb	r0, [r1, #1]
	add	r0, r0, r4
	strb	r0, [r1, #1]
	ldrb	r2, [r1, #0]
	ldrb	r0, [r1, #1]
	add	r0, r2, r0
	cmp	r0, #8
	ble	.L_6facc
	mov	r0, #8
	sub	r0, r0, r2
	strb	r0, [r1, #1]
.L_6facc:
	ldrb	r0, [r1, #1]
	lsl	r0, r0, #3
	strb	r0, [r1, #2]
	mov	r0, #0
	strb	r0, [r1, #3]
	b	.L_6fb9a
.L_6fad8:
	.4byte	gTimerState
.L_6fadc:
	.4byte	gWarioPauseTimer
.L_6fae0:
	.4byte	gHeartMeter
.L_6fae4:
	.4byte	gUnk_3000022
.L_6fae8:
	.4byte	sUnk_83F9DEC
.L_6faec:
	.4byte	gWarioData
.L_6faf0:
	ldr	r0, .L_6fb10
	ldrb	r0, [r0, #1]
	cmp	r0, #16
	bne	.L_6fb14
	ldrh	r0, [r7, #4]
	mul	r0, r5
	add	r0, r0, r6
	ldr	r1, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	ldr	r1, [r3, #8]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	b	.L_6fb16
.L_6fb10:
	.4byte	gCurrentRoomHeader
.L_6fb14:
	mov	r0, #0
.L_6fb16:
	str	r0, [sp, #0]
	ldrh	r0, [r7, #20]
	mul	r0, r5
	add	r0, r0, r6
	ldr	r1, [r7, #16]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	ldr	r1, [r3, #8]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	str	r0, [sp, #8]
	ldr	r4, .L_6fb44
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_6fb7c
	cmp	r0, #1
	bgt	.L_6fb48
	cmp	r0, #0
	beq	.L_6fb4e
	b	.L_6fb9a
	.align	2, 0
.L_6fb44:
	.4byte	gWarioData
.L_6fb48:
	cmp	r0, #8
	beq	.L_6fb8c
	b	.L_6fb9a
.L_6fb4e:
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_6fb9a
	add	r0, r2, #0
	mov	r1, #19
	bl	func_806FBA4
	cmp	r0, #0
	bne	.L_6fb9a
	ldr	r0, [sp, #4]
	cmp	r0, #105	@ 0x69
	bne	.L_6fb9a
	mov	r0, #2
	strb	r0, [r4, #0]
	ldr	r0, .L_6fb78
	ldr	r1, [r0, #8]
	mov	r0, #0
	bl	_call_via_r1
	b	.L_6fb9a
	.align	2, 0
.L_6fb78:
	.4byte	sWarioPoseRequestFuncTable
.L_6fb7c:
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_6fb9a
	add	r0, r2, #0
	mov	r1, #6
	bl	func_806FBA4
	b	.L_6fb9a
.L_6fb8c:
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_6fb9a
	add	r0, r2, #0
	mov	r1, #19
	bl	func_806FBA4
.L_6fb9a:
	add	sp, #12
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806FBA4
func_806FBA4:
	push	{r4, lr}
	add	r2, r0, #0
	add	r3, r1, #0
	mov	r4, #0
	cmp	r2, #1
	beq	.L_6fbd6
	add	r0, r2, #0
	sub	r0, #144	@ 0x90
	cmp	r0, #7
	bhi	.L_6fbe0
	mov	r2, #1
	add	r1, r0, #0
	cmp	r1, #3
	ble	.L_6fbc6
	mov	r0, #3
	and	r1, r0
	mov	r2, #0
.L_6fbc6:
	add	r1, #1
	ldr	r0, .L_6fbdc
	add	r0, r1, r0
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, r2
	beq	.L_6fc6a
.L_6fbd6:
	mov	r4, #1
	b	.L_6fc6e
	.align	2, 0
.L_6fbdc:
	.4byte	gSwitchStates
.L_6fbe0:
	add	r0, r2, #0
	sub	r0, #126	@ 0x7e
	cmp	r0, #3
	bhi	.L_6fc40
	cmp	r2, #129	@ 0x81
	bne	.L_6fbf8
	ldr	r0, .L_6fbf4
	ldrh	r1, [r0, #52]	@ 0x34
	ldrh	r0, [r0, #20]
	b	.L_6fc12
.L_6fbf4:
	.4byte	gWarioData
.L_6fbf8:
	cmp	r2, #128	@ 0x80
	bne	.L_6fc08
	ldr	r0, .L_6fc04
	ldrh	r1, [r0, #56]	@ 0x38
	ldrh	r0, [r0, #20]
	b	.L_6fc2e
.L_6fc04:
	.4byte	gWarioData
.L_6fc08:
	cmp	r2, #126	@ 0x7e
	bne	.L_6fc24
	ldr	r0, .L_6fc20
	ldrh	r1, [r0, #50]	@ 0x32
	ldrh	r0, [r0, #18]
.L_6fc12:
	add	r1, r1, r0
	mov	r0, #63	@ 0x3f
	and	r1, r0
	cmp	r1, #7
	bhi	.L_6fc6a
	b	.L_6fbd6
	.align	2, 0
.L_6fc20:
	.4byte	gWarioData
.L_6fc24:
	cmp	r2, #127	@ 0x7f
	bne	.L_6fc6a
	ldr	r0, .L_6fc3c
	ldrh	r1, [r0, #54]	@ 0x36
	ldrh	r0, [r0, #18]
.L_6fc2e:
	add	r1, r1, r0
	mov	r0, #63	@ 0x3f
	and	r1, r0
	cmp	r1, #55	@ 0x37
	bls	.L_6fc6a
	b	.L_6fbd6
	.align	2, 0
.L_6fc3c:
	.4byte	gWarioData
.L_6fc40:
	ldr	r0, .L_6fc9c
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_6fc6a
	cmp	r2, #156	@ 0x9c
	bne	.L_6fc6a
	ldr	r0, .L_6fca0
	ldrb	r1, [r0, #2]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_6fc6a
	ldr	r0, .L_6fca4
	ldrh	r1, [r0, #56]	@ 0x38
	ldrh	r0, [r0, #20]
	add	r1, r1, r0
	mov	r0, #63	@ 0x3f
	and	r1, r0
	cmp	r1, #47	@ 0x2f
	bls	.L_6fc6a
	mov	r4, #1
.L_6fc6a:
	cmp	r4, #0
	beq	.L_6fc94
.L_6fc6e:
	ldr	r1, .L_6fca4
	ldrb	r0, [r1, #0]
	cmp	r0, #8
	bne	.L_6fc7a
	mov	r0, #0
	strb	r0, [r1, #0]
.L_6fc7a:
	ldr	r0, .L_6fca8
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	lsl	r0, r3, #24
	lsr	r0, r0, #24
	ldr	r1, [r1, #0]
	bl	_call_via_r1
	mov	r0, #10
	neg	r0, r0
	bl	ScoreGiveOrDropCoins
.L_6fc94:
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L_6fc9c:
	.4byte	gUnk_300001B
.L_6fca0:
	.4byte	gSwitchStates
.L_6fca4:
	.4byte	gWarioData
.L_6fca8:
	.4byte	sWarioPoseRequestFuncTable


thumb_func_start func_806FCAC
func_806FCAC:
	push	{r4, r5, lr}
	sub	sp, #12
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r1, .L_6fd10
	ldrh	r0, [r1, #12]
	mul	r0, r4
	add	r0, r0, r5
	ldr	r1, [r1, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	ldr	r0, .L_6fd14
	ldr	r1, [r0, #8]
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	ldr	r1, .L_6fd18
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bne	.L_6fd08
	ldrb	r0, [r1, #1]
	sub	r0, #7
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_6fd08
	mov	r0, sp
	mov	r2, #0
	strh	r4, [r0, #2]
	strh	r5, [r0, #0]
	strh	r3, [r0, #4]
	mov	r1, sp
	mov	r0, #3
	strb	r0, [r1, #6]
	mov	r0, sp
	strb	r2, [r0, #7]
	strb	r2, [r0, #9]
	strb	r2, [r0, #10]
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, sp
	bl	func_806EFB4
.L_6fd08:
	add	sp, #12
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_6fd10:
	.4byte	gBackgroundInfo
.L_6fd14:
	.4byte	gUnk_30031F4
.L_6fd18:
	.4byte	gWarioData


thumb_func_start func_806FD1C
func_806FD1C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	func_806FFB0
	lsl	r4, r4, #6
	lsl	r5, r5, #6
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_807690C
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806FD48
func_806FD48:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	func_806FFB0
	lsl	r4, r4, #6
	lsl	r5, r5, #6
	add	r0, r4, #0
	add	r1, r5, #0
	bl	func_8076950
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806FD74
func_806FD74:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #56	@ 0x38
	ldr	r1, .L_6fe40
	ldrh	r0, [r1, #54]	@ 0x36
	lsl	r0, r0, #16
	asr	r0, r0, #17
	ldrh	r2, [r1, #18]
	add	r0, r0, r2
	asr	r0, r0, #6
	str	r0, [sp, #24]
	ldrh	r0, [r1, #50]	@ 0x32
	lsl	r0, r0, #16
	asr	r0, r0, #17
	ldrh	r2, [r1, #18]
	add	r0, r0, r2
	asr	r0, r0, #6
	add	r2, sp, #24
	str	r0, [r2, #4]
	ldrh	r0, [r1, #52]	@ 0x34
	lsl	r0, r0, #16
	asr	r0, r0, #17
	ldrh	r1, [r1, #20]
	add	r0, r0, r1
	asr	r0, r0, #6
	mov	ip, r0
	mov	r6, #0
	mov	sl, r2
	ldr	r7, .L_6fe44
	add	r0, sp, #8
	mov	r8, r0
	mov	r1, sp
	add	r1, #16
	str	r1, [sp, #48]	@ 0x30
	ldrh	r0, [r7, #12]
	mov	r2, ip
	mul	r2, r0
	str	r2, [sp, #32]
	ldr	r0, .L_6fe48
	ldr	r5, [r0, #8]
	ldrh	r0, [r7, #20]
	mov	r1, ip
	mul	r1, r0
	str	r1, [sp, #40]	@ 0x28
	ldr	r2, [r7, #16]
	str	r2, [sp, #44]	@ 0x2c
	mov	r4, sp
	ldr	r0, [r7, #8]
	str	r0, [sp, #36]	@ 0x24
	ldr	r0, .L_6fe4c
	ldrb	r0, [r0, #1]
	mov	r9, r0
.L_6fde2:
	lsl	r2, r6, #2
	mov	r1, sl
	add	r3, r2, r1
	ldr	r0, [r3, #0]
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	lsl	r0, r0, #1
	ldr	r1, [sp, #36]	@ 0x24
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r1, r8
	add	r1, r1, r2
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, [r3, #0]
	ldr	r1, [sp, #40]	@ 0x28
	add	r0, r1, r0
	lsl	r0, r0, #1
	ldr	r1, [sp, #44]	@ 0x2c
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r1, [sp, #48]	@ 0x30
	add	r2, r1, r2
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r0, [r0, #0]
	str	r0, [r2, #0]
	mov	r2, r9
	cmp	r2, #16
	bne	.L_6fe50
	ldrh	r0, [r7, #4]
	mov	r1, ip
	mul	r1, r0
	add	r0, r1, #0
	ldr	r1, [r3, #0]
	add	r0, r0, r1
	ldr	r1, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	ldrh	r0, [r0, #0]
	b	.L_6fe52
	.align	2, 0
.L_6fe40:
	.4byte	gWarioData
.L_6fe44:
	.4byte	gBackgroundInfo
.L_6fe48:
	.4byte	gUnk_30031F4
.L_6fe4c:
	.4byte	gCurrentRoomHeader
.L_6fe50:
	mov	r0, #0
.L_6fe52:
	str	r0, [r4, #0]
	add	r4, #4
	add	r6, #1
	cmp	r6, #1
	ble	.L_6fde2
	mov	r6, #0
	mov	r2, ip
	lsl	r7, r2, #16
	mov	r4, sl
	mov	r5, r8
.L_6fe66:
	ldr	r0, [r5, #0]
	cmp	r0, #3
	bne	.L_6fe7a
	ldrh	r1, [r4, #0]
	lsr	r0, r7, #16
	bl	func_806DDE4
	cmp	r0, #0
	bne	.L_6ff52
	b	.L_6fe96
.L_6fe7a:
	cmp	r0, #9
	bne	.L_6fe92
	ldrh	r1, [r4, #0]
	lsr	r0, r7, #16
	bl	func_806DDE4
	cmp	r0, #0
	beq	.L_6fe96
	mov	r0, #25
	bl	m4aSongNumStart
	b	.L_6ff52
.L_6fe92:
	cmp	r0, #8
	beq	.L_6fef0
.L_6fe96:
	add	r4, #4
	add	r5, #4
	add	r6, #1
	cmp	r6, #1
	ble	.L_6fe66
	ldr	r1, .L_6feb4
	ldrb	r0, [r1, #0]
	cmp	r0, #9
	beq	.L_6ff44
	cmp	r0, #9
	bgt	.L_6feb8
	cmp	r0, #5
	beq	.L_6fee0
	b	.L_6ff52
	.align	2, 0
.L_6feb4:
	.4byte	gWarioData
.L_6feb8:
	cmp	r0, #10
	bne	.L_6ff52
	ldrb	r0, [r1, #1]
	cmp	r0, #6
	beq	.L_6ff52
	ldr	r0, [sp, #8]
	cmp	r0, #125	@ 0x7d
	beq	.L_6fece
	ldr	r0, [sp, #12]
	cmp	r0, #125	@ 0x7d
	bne	.L_6ff52
.L_6fece:
	ldr	r0, .L_6fedc
	ldr	r1, [r0, #40]	@ 0x28
	mov	r0, #6
	bl	_call_via_r1
	b	.L_6ff52
	.align	2, 0
.L_6fedc:
	.4byte	sWarioPoseRequestFuncTable
.L_6fee0:
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	beq	.L_6ff52
	mov	r0, sp
	mov	r1, #10
	bl	func_806FF64
	b	.L_6ff52
.L_6fef0:
	ldr	r1, .L_6ff30
	mov	r0, #6
	strb	r0, [r1, #0]
	ldr	r0, .L_6ff34
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_6ff38
	strb	r1, [r0, #0]
	ldr	r1, .L_6ff3c
	mov	r0, #3
	strh	r0, [r1, #0]
	mov	r0, #2
	bl	func_806E01C
	ldr	r4, .L_6ff40
	ldr	r0, [r4, #36]	@ 0x24
	bl	MPlayStop
	ldr	r0, [r4, #0]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	ldr	r0, [r4, #12]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	ldr	r0, [r4, #24]
	mov	r1, #2
	bl	m4aMPlayFadeOut
	b	.L_6ff52
	.align	2, 0
.L_6ff30:
	.4byte	gStageExitType
.L_6ff34:
	.4byte	gUnk_3000025
.L_6ff38:
	.4byte	gUnk_3000C3F
.L_6ff3c:
	.4byte	gSubGameMode
.L_6ff40:
	.4byte	gMPlayTable
.L_6ff44:
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	beq	.L_6ff52
	mov	r0, sp
	mov	r1, #4
	bl	func_806FF64
.L_6ff52:
	add	sp, #56	@ 0x38
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806FF64
func_806FF64:
	push	{r4, lr}
	add	r2, r0, #0
	add	r3, r1, #0
	ldr	r0, .L_6ff78
	ldrb	r1, [r0, #1]
	add	r4, r0, #0
	cmp	r1, r3
	bne	.L_6ff98
	b	.L_6ffa8
	.align	2, 0
.L_6ff78:
	.4byte	gWarioData
.L_6ff7c:
	ldr	r0, .L_6ff94
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	lsl	r0, r3, #24
	lsr	r0, r0, #24
	ldr	r1, [r1, #0]
	bl	_call_via_r1
	mov	r0, #1
	b	.L_6ffaa
	.align	2, 0
.L_6ff94:
	.4byte	sWarioPoseRequestFuncTable
.L_6ff98:
	mov	r1, #0
.L_6ff9a:
	ldr	r0, [r2, #0]
	cmp	r0, #124	@ 0x7c
	beq	.L_6ff7c
	add	r1, #1
	add	r2, #4
	cmp	r1, #5
	ble	.L_6ff9a
.L_6ffa8:
	mov	r0, #0
.L_6ffaa:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_806FFB0
func_806FFB0:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	lsl	r2, r2, #16
	lsr	r6, r2, #16
	mov	r0, #1
	mov	ip, r0
	ldr	r1, .L_7007c
	ldrh	r0, [r1, #12]
	add	r2, r3, #0
	mul	r2, r0
	add	r0, r2, #0
	add	r0, r6, r0
	lsl	r0, r0, #16
	ldr	r1, [r1, #8]
	lsr	r0, r0, #15
	add	r1, r0, r1
	strh	r7, [r1, #0]
	cmp	r7, #0
	bne	.L_6fff0
	ldr	r2, .L_70080
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	ldr	r4, .L_70084
	add	r0, r0, r4
	asr	r1, r1, #1
	strh	r1, [r0, #0]
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
.L_6fff0:
	ldr	r0, .L_70088
	ldrh	r0, [r0, #0]
	lsr	r4, r0, #6
	add	r0, r4, #0
	add	r0, #10
	cmp	r3, r0
	ble	.L_70002
	mov	r0, #0
	mov	ip, r0
.L_70002:
	sub	r0, r4, #4
	cmp	r0, r3
	bgt	.L_70072
	add	r0, #17
	cmp	r3, r0
	bgt	.L_70072
	ldr	r5, .L_7008c
	mov	r0, #16
	and	r0, r6
	cmp	r0, #0
	beq	.L_7001a
	ldr	r5, .L_70090
.L_7001a:
	mov	r1, #15
	add	r0, r6, #0
	and	r0, r1
	lsl	r4, r0, #1
	add	r0, r3, #0
	and	r0, r1
	lsl	r0, r0, #6
	add	r0, r0, r4
	lsl	r0, r0, #1
	add	r5, r5, r0
	lsl	r0, r7, #18
	lsr	r4, r0, #16
	add	r1, r4, #0
	ldr	r3, .L_70094
	mov	r0, #1
	orr	r4, r0
	add	r2, r4, #0
	ldr	r3, [r3, #0]
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	add	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r1, r4, #0
	lsl	r2, r2, #1
	add	r2, r2, r3
	ldrh	r0, [r2, #0]
	strh	r0, [r5, #2]
	add	r2, r5, #0
	add	r2, #64	@ 0x40
	add	r0, r1, #1
	lsl	r0, r0, #16
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #0]
	add	r1, r5, #0
	add	r1, #66	@ 0x42
	lsr	r0, r0, #15
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
.L_70072:
	mov	r0, ip
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_7007c:
	.4byte	gBackgroundInfo
.L_70080:
	.4byte	gUnk_300003E
.L_70084:
	.4byte	0x0203a000
.L_70088:
	.4byte	gBg1YPosition
.L_7008c:
	.4byte	0x06001000
.L_70090:
	.4byte	0x06001800
.L_70094:
	.4byte	gUnk_30031F4


thumb_func_start func_8070098
func_8070098:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	ip, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	add	r7, r3, #0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r6, r2, #0
	ldr	r1, .L_70140
	ldrh	r0, [r1, #12]
	add	r4, r3, #0
	mul	r4, r0
	add	r0, r4, #0
	add	r0, r2, r0
	lsl	r0, r0, #16
	ldr	r1, [r1, #8]
	lsr	r0, r0, #15
	add	r0, r0, r1
	mov	r1, ip
	strh	r1, [r0, #0]
	ldr	r0, .L_70144
	ldrh	r0, [r0, #0]
	lsr	r4, r0, #6
	sub	r0, r4, #4
	cmp	r0, r3
	bgt	.L_70138
	add	r0, #17
	cmp	r3, r0
	bgt	.L_70138
	ldr	r5, .L_70148
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_700e2
	ldr	r5, .L_7014c
.L_700e2:
	mov	r0, #15
	and	r6, r0
	lsl	r4, r6, #1
	and	r7, r0
	lsl	r0, r7, #6
	add	r0, r0, r4
	lsl	r0, r0, #1
	add	r5, r5, r0
	mov	r4, ip
	lsl	r0, r4, #18
	lsr	r4, r0, #16
	add	r1, r4, #0
	ldr	r3, .L_70150
	mov	r0, #1
	orr	r4, r0
	add	r2, r4, #0
	ldr	r3, [r3, #0]
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	add	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r1, r4, #0
	lsl	r2, r2, #1
	add	r2, r2, r3
	ldrh	r0, [r2, #0]
	strh	r0, [r5, #2]
	add	r2, r5, #0
	add	r2, #64	@ 0x40
	add	r0, r1, #1
	lsl	r0, r0, #16
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #0]
	add	r1, r5, #0
	add	r1, #66	@ 0x42
	lsr	r0, r0, #15
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
.L_70138:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70140:
	.4byte	gBackgroundInfo
.L_70144:
	.4byte	gBg1YPosition
.L_70148:
	.4byte	0x06001000
.L_7014c:
	.4byte	0x06001800
.L_70150:
	.4byte	gUnk_30031F4


thumb_func_start func_8070154
func_8070154:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r6, r0, #0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r3, r1, #0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	ldr	r1, .L_701e4
	ldrh	r0, [r1, #20]
	add	r4, r3, #0
	mul	r4, r0
	add	r0, r4, #0
	add	r0, r2, r0
	lsl	r0, r0, #16
	ldr	r1, [r1, #16]
	lsr	r0, r0, #15
	add	r0, r0, r1
	strh	r6, [r0, #0]
	ldr	r5, .L_701e8
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_70188
	ldr	r5, .L_701ec
.L_70188:
	mov	r0, #15
	and	r2, r0
	lsl	r4, r2, #1
	and	r3, r0
	lsl	r0, r3, #6
	add	r0, r0, r4
	lsl	r0, r0, #1
	add	r5, r5, r0
	lsl	r0, r6, #18
	lsr	r4, r0, #16
	add	r1, r4, #0
	ldr	r3, .L_701f0
	mov	r0, #1
	orr	r4, r0
	add	r2, r4, #0
	ldr	r3, [r3, #0]
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r0, [r1, #0]
	strh	r0, [r5, #0]
	add	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r1, r4, #0
	lsl	r2, r2, #1
	add	r2, r2, r3
	ldrh	r0, [r2, #0]
	strh	r0, [r5, #2]
	add	r2, r5, #0
	add	r2, #64	@ 0x40
	add	r0, r1, #1
	lsl	r0, r0, #16
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #0]
	add	r1, r5, #0
	add	r1, #66	@ 0x42
	lsr	r0, r0, #15
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_701e4:
	.4byte	gBackgroundInfo
.L_701e8:
	.4byte	0x06002000
.L_701ec:
	.4byte	0x06002800
.L_701f0:
	.4byte	gUnk_30031F4


.section .rodata

.global sUnk_83F9D64
sUnk_83F9D64:
	.2byte 0xFC, 0x104, 0xFE, 0x106, 0x100, 0x108, 0x102, 0x10A
	.2byte 0x10C, 0x10D, 0x10C, 0x10D, 0x10C, 0x10D, 0x10C, 0x10D
	.2byte 0xFC, 0x104, 0xFC, 0x104, 0xFC, 0x104

.global sUnk_83F9D90
sUnk_83F9D90:
	.2byte 0xFD, 0x105, 0xFF, 0x107, 0x101, 0x109, 0x103, 0x10B
	.2byte 0x10C, 0x10D, 0x10C, 0x10D, 0x10C, 0x10D, 0x10C, 0x10D
	.2byte 0xFD, 0x105, 0xFD, 0x105, 0xFD, 0x105

.global sUnk_83F9DBC
sUnk_83F9DBC:
	.byte 0x11, 0x16, 0x13, 0x16, 0x15, 0x16, 0x11, 0x16, 0x13, 0x16, 0x15, 0x16
	.byte 0x11, 0x16, 0x13, 0x16, 0x15, 0x16, 0x11, 0x16, 0x13, 0x16, 0x15, 0x16
	.byte 0x10, 0x14, 0x10, 0x16, 0x10, 0x18, 0x12, 0x14, 0x12, 0x16, 0x12, 0x18
	.byte 0x14, 0x14, 0x14, 0x16, 0x14, 0x18, 0x16, 0x14, 0x16, 0x16, 0x16, 0x18

.global sUnk_83F9DEC
sUnk_83F9DEC:
	.2byte 0x140, 0x152, 0x141, 0x153, 0x142, 0x154
