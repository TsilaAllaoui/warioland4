.include "macros.s.inc"


thumb_func_start func_8018B88
func_8018B88:
	push	{lr}
	ldr	r1, .L_18ba4
	ldr	r0, .L_18ba8
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
.L_18ba4:
	.4byte	sZombieWarioPoseTable
.L_18ba8:
	.4byte	gWarioData


thumb_func_start func_8018BAC
func_8018BAC:
	ldr	r0, .L_18bb8
	ldrb	r0, [r0, #30]
	cmp	r0, #3
	bhi	.L_18bbc
	mov	r0, #255	@ 0xff
	b	.L_18bbe
.L_18bb8:
	.4byte	gWarioData
.L_18bbc:
	mov	r0, #2
.L_18bbe:
	bx	lr


thumb_func_start func_8018BC0
func_8018BC0:
	push	{r4, lr}
	ldr	r0, .L_18bd4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_18bd8
	mov	r0, #3
	b	.L_18c52
	.align	2, 0
.L_18bd4:
	.4byte	gButtonsPressed
.L_18bd8:
	ldr	r0, .L_18bf8
	ldr	r1, .L_18bfc
	ldrh	r4, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r4, #0
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_18c0c
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_18c00
	mov	r0, #24
	strh	r0, [r3, #22]
	b	.L_18c20
.L_18bf8:
	.4byte	gButtonsHeld
.L_18bfc:
	.4byte	gWarioData
.L_18c00:
	ldr	r0, .L_18c08
	strh	r0, [r3, #22]
	b	.L_18c20
	.align	2, 0
.L_18c08:
	.4byte	0xFFE8
.L_18c0c:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r4
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_18c1c
	mov	r0, #11
	b	.L_18c52
.L_18c1c:
	mov	r0, #2
	b	.L_18c52
.L_18c20:
	ldr	r2, .L_18c58
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18c50
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
	bne	.L_18c50
	strb	r0, [r3, #31]
.L_18c50:
	mov	r0, #255	@ 0xff
.L_18c52:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_18c58:
	.4byte	sUnk_8331224


thumb_func_start func_8018C5C
func_8018C5C:
	push	{r4, lr}
	ldr	r0, .L_18c70
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_18c74
	mov	r0, #3
	b	.L_18cc6
	.align	2, 0
.L_18c70:
	.4byte	gButtonsHeld
.L_18c74:
	ldr	r3, .L_18c84
	ldrh	r2, [r3, #14]
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_18c88
	mov	r0, #1
	b	.L_18cc6
.L_18c84:
	.4byte	gWarioData
.L_18c88:
	mov	r0, #48	@ 0x30
	eor	r2, r0
	and	r2, r1
	cmp	r2, #0
	beq	.L_18c96
	mov	r0, #11
	b	.L_18cc6
.L_18c96:
	ldr	r4, .L_18ccc
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18cc4
	strb	r2, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_18cc4
	strb	r0, [r3, #31]
.L_18cc4:
	mov	r0, #255	@ 0xff
.L_18cc6:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_18ccc:
	.4byte	sUnk_833126C


thumb_func_start func_8018CD0
func_8018CD0:
	ldr	r2, .L_18d08
	ldr	r3, .L_18d0c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18d10
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
	bne	.L_18d10
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_18d12
.L_18d08:
	.4byte	gWarioData
.L_18d0c:
	.4byte	sUnk_83312A8
.L_18d10:
	mov	r0, #255	@ 0xff
.L_18d12:
	bx	lr


thumb_func_start func_8018D14
func_8018D14:
	push	{r4, lr}
	ldr	r0, .L_18d34
	ldr	r1, .L_18d38
	ldrh	r4, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r4, #0
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_18d44
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_18d3c
	mov	r0, #24
	b	.L_18d56
.L_18d34:
	.4byte	gButtonsHeld
.L_18d38:
	.4byte	gWarioData
.L_18d3c:
	ldr	r0, .L_18d40
	b	.L_18d56
.L_18d40:
	.4byte	0xFFE8
.L_18d44:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_18d56
	mov	r0, #12
	b	.L_18d8a
.L_18d56:
	strh	r0, [r3, #22]
	ldr	r2, .L_18d90
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18d88
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
	bne	.L_18d88
	strb	r0, [r3, #31]
.L_18d88:
	mov	r0, #255	@ 0xff
.L_18d8a:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_18d90:
	.4byte	sUnk_8331620


thumb_func_start func_8018D94
func_8018D94:
	ldr	r2, .L_18dc8
	ldr	r3, .L_18dcc
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18dd0
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
	bne	.L_18dd0
	mov	r0, #2
	b	.L_18dd2
.L_18dc8:
	.4byte	gWarioData
.L_18dcc:
	.4byte	sUnk_8331620
.L_18dd0:
	mov	r0, #255	@ 0xff
.L_18dd2:
	bx	lr


thumb_func_start func_8018DD4
func_8018DD4:
	ldr	r2, .L_18e08
	ldr	r3, .L_18e0c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18e10
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
	bne	.L_18e10
	mov	r0, #9
	b	.L_18e12
.L_18e08:
	.4byte	gWarioData
.L_18e0c:
	.4byte	sUnk_83312D8
.L_18e10:
	mov	r0, #255	@ 0xff
.L_18e12:
	bx	lr


thumb_func_start func_8018E14
func_8018E14:
	ldr	r2, .L_18e48
	ldr	r3, .L_18e4c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18e50
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
	bne	.L_18e50
	mov	r0, #2
	b	.L_18e52
.L_18e48:
	.4byte	gWarioData
.L_18e4c:
	.4byte	sUnk_83313F8
.L_18e50:
	mov	r0, #255	@ 0xff
.L_18e52:
	bx	lr


thumb_func_start func_8018E54
func_8018E54:
	ldr	r2, .L_18e88
	ldr	r3, .L_18e8c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18e90
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
	bne	.L_18e90
	mov	r0, #2
	b	.L_18e92
.L_18e88:
	.4byte	gWarioData
.L_18e8c:
	.4byte	sUnk_833144C
.L_18e90:
	mov	r0, #255	@ 0xff
.L_18e92:
	bx	lr


thumb_func_start func_8018E94
func_8018E94:
	ldr	r2, .L_18ecc
	ldr	r3, .L_18ed0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18ec6
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
	bne	.L_18ec6
	strb	r0, [r2, #31]
.L_18ec6:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_18ecc:
	.4byte	gWarioData
.L_18ed0:
	.4byte	sUnk_8331650


thumb_func_start func_8018ED4
func_8018ED4:
	ldr	r2, .L_18f10
	ldr	r3, .L_18f14
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18f18
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
	bne	.L_18f18
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_18f1a
	.align	2, 0
.L_18f10:
	.4byte	gWarioData
.L_18f14:
	.4byte	sUnk_83316D4
.L_18f18:
	mov	r0, #255	@ 0xff
.L_18f1a:
	bx	lr


thumb_func_start func_8018F1C
func_8018F1C:
	ldr	r2, .L_18f50
	ldr	r3, .L_18f54
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18f58
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
	bne	.L_18f58
	mov	r0, #2
	b	.L_18f5a
.L_18f50:
	.4byte	gWarioData
.L_18f54:
	.4byte	sUnk_833186C
.L_18f58:
	mov	r0, #255	@ 0xff
.L_18f5a:
	bx	lr


thumb_func_start func_8018F5C
func_8018F5C:
	ldr	r0, .L_18f68
	ldrb	r0, [r0, #30]
	cmp	r0, #4
	bhi	.L_18f6c
	mov	r0, #255	@ 0xff
	b	.L_18f6e
.L_18f68:
	.4byte	gWarioData
.L_18f6c:
	mov	r0, #4
.L_18f6e:
	bx	lr


thumb_func_start func_8018F70
func_8018F70:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_8010230
	cmp	r4, #11
	beq	.L_19024
	cmp	r4, #11
	bgt	.L_18f8c
	cmp	r4, #0
	beq	.L_1900c
	cmp	r4, #10
	beq	.L_1904c
	b	.L_19058
.L_18f8c:
	cmp	r4, #253	@ 0xfd
	beq	.L_18fca
	cmp	r4, #253	@ 0xfd
	bgt	.L_18f9a
	cmp	r4, #12
	beq	.L_19034
	b	.L_19058
.L_18f9a:
	cmp	r4, #254	@ 0xfe
	bne	.L_19058
	ldr	r2, .L_18fb8
	mov	r0, #4
	strb	r0, [r2, #1]
	ldr	r1, .L_18fbc
	ldrh	r0, [r1, #22]
	strh	r0, [r2, #22]
	ldrb	r0, [r1, #8]
	cmp	r0, #1
	bne	.L_18fc0
	mov	r0, #108	@ 0x6c
	strh	r0, [r2, #24]
	b	.L_1905c
	.align	2, 0
.L_18fb8:
	.4byte	gWarioData
.L_18fbc:
	.4byte	gWarioDataCopy
.L_18fc0:
	cmp	r0, #2
	bne	.L_1905c
	ldrh	r0, [r1, #24]
	strh	r0, [r2, #24]
	b	.L_1905c
.L_18fca:
	ldr	r0, .L_18fe8
	ldrb	r0, [r0, #1]
	cmp	r0, #4
	beq	.L_18fd6
	cmp	r0, #12
	bne	.L_18ff0
.L_18fd6:
	ldr	r0, .L_18fec
	mov	r1, #7
	strb	r1, [r0, #1]
	mov	r0, #186	@ 0xba
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1905c
	.align	2, 0
.L_18fe8:
	.4byte	gWarioDataCopy
.L_18fec:
	.4byte	gWarioData
.L_18ff0:
	ldr	r1, .L_19004
	ldrb	r0, [r1, #1]
	cmp	r0, #9
	bne	.L_1905c
	mov	r0, #8
	strb	r0, [r1, #1]
	ldr	r0, .L_19008
	bl	m4aSongNumStart
	b	.L_1905c
.L_19004:
	.4byte	gWarioData
.L_19008:
	.4byte	0x167
.L_1900c:
	ldr	r0, .L_19020
	strb	r4, [r0, #1]
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
	b	.L_1905c
.L_19020:
	.4byte	gWarioData
.L_19024:
	ldr	r1, .L_19030
	strb	r4, [r1, #1]
	mov	r0, #1
	strb	r0, [r1, #3]
	b	.L_1905c
	.align	2, 0
.L_19030:
	.4byte	gWarioData
.L_19034:
	ldr	r1, .L_19044
	strb	r4, [r1, #1]
	mov	r0, #1
	strb	r0, [r1, #3]
	ldr	r0, .L_19048
	ldrh	r0, [r0, #24]
	strh	r0, [r1, #24]
	b	.L_1905c
.L_19044:
	.4byte	gWarioData
.L_19048:
	.4byte	gWarioDataCopy
.L_1904c:
	ldr	r0, .L_19070
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
.L_19058:
	ldr	r0, .L_19074
	strb	r4, [r0, #1]
.L_1905c:
	ldr	r2, .L_19074
	ldr	r1, .L_19078
	ldrb	r0, [r2, #1]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #5]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_19070:
	.4byte	0x15F
.L_19074:
	.4byte	gWarioData
.L_19078:
	.4byte	sUnk_82DEFA0


thumb_func_start func_801907C
func_801907C:
	push	{r4, lr}
	ldr	r3, .L_190e4
	ldr	r2, .L_190e8
	ldr	r4, .L_190ec
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	bl	func_800FE58
	mov	r2, #0
	ldrb	r0, [r4, #26]
	cmp	r0, #2
	bne	.L_190c2
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_190c2:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_190d0
	strh	r1, [r4, #24]
.L_190d0:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_190f0
	bl	func_800FDBC
	b	.L_190f2
	.align	2, 0
.L_190e4:
	.4byte	gUnk_3001918
.L_190e8:
	.4byte	sUnk_82DD9A8
.L_190ec:
	.4byte	gWarioData
.L_190f0:
	ldrh	r0, [r4, #22]
.L_190f2:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_19108
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_19108:
	.4byte	gWarioData


thumb_func_start func_801910C
func_801910C:
	push	{r4, r5, lr}
	ldr	r3, .L_19168
	ldr	r2, .L_1916c
	ldr	r5, .L_19170
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
	bgt	.L_19150
	mov	r0, #0
	strb	r0, [r3, #12]
.L_19150:
	mov	r4, #255	@ 0xff
	ldrb	r0, [r5, #1]
	cmp	r0, #9
	bne	.L_19174
	bl	func_8019250
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #254	@ 0xfe
	bne	.L_191b8
	mov	r4, #255	@ 0xff
	b	.L_191b8
.L_19168:
	.4byte	gUnk_3001918
.L_1916c:
	.4byte	sUnk_82DD9A8
.L_19170:
	.4byte	gWarioData
.L_19174:
	ldrh	r1, [r3, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_19184
	bl	func_8014C4C
	b	.L_191b4
.L_19184:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_19192
	bl	func_8014930
	b	.L_191b4
.L_19192:
	ldrh	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_191aa
	ldrb	r0, [r3, #17]
	cmp	r0, #2
	bne	.L_191a4
	bl	func_8014930
	b	.L_191b4
.L_191a4:
	bl	func_80143D8
	b	.L_191b4
.L_191aa:
	ldrb	r0, [r3, #17]
	cmp	r0, #0
	bne	.L_191b8
	bl	func_8014758
.L_191b4:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
.L_191b8:
	ldr	r5, .L_191e0
	ldrh	r0, [r5, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_191e4
	strb	r1, [r5, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r5, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_19246
.L_191e0:
	.4byte	gWarioData
.L_191e4:
	ldr	r0, .L_19204
	ldrb	r0, [r0, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_19246
	cmp	r4, #253	@ 0xfd
	bne	.L_1923c
	ldrb	r0, [r5, #1]
	cmp	r0, #4
	beq	.L_191fa
	cmp	r0, #12
	bne	.L_19230
.L_191fa:
	ldrh	r0, [r5, #28]
	cmp	r0, #0
	beq	.L_19208
	mov	r4, #7
	b	.L_1923c
.L_19204:
	.4byte	gUnk_3001918
.L_19208:
	bl	func_8019250
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #254	@ 0xfe
	bne	.L_19220
	mov	r4, #6
	mov	r0, #179	@ 0xb3
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1923c
.L_19220:
	cmp	r4, #253	@ 0xfd
	bne	.L_1923c
	mov	r4, #7
	mov	r0, #186	@ 0xba
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1923c
.L_19230:
	cmp	r0, #9
	bne	.L_1923c
	mov	r4, #8
	ldr	r0, .L_1924c
	bl	m4aSongNumStart
.L_1923c:
	cmp	r4, #255	@ 0xff
	beq	.L_19246
	add	r0, r4, #0
	bl	func_8018F70
.L_19246:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1924c:
	.4byte	0x167


thumb_func_start func_8019250
func_8019250:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_19284
	ldrb	r0, [r0, #8]
	ldr	r5, .L_19288
	ldrh	r1, [r5, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	add	r1, r4, #0
	mov	r2, sp
	bl	func_8014268
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_19294
	mov	r0, sp
	ldrh	r0, [r0, #0]
	cmp	r1, r0
	ble	.L_19290
	ldr	r0, .L_1928c
	and	r0, r4
	sub	r0, #1
	strh	r0, [r5, #20]
	mov	r0, #253	@ 0xfd
	b	.L_19296
.L_19284:
	.4byte	gUnk_3001918
.L_19288:
	.4byte	gWarioData
.L_1928c:
	.4byte	0xFFC0
.L_19290:
	mov	r0, #254	@ 0xfe
	b	.L_19296
.L_19294:
	mov	r0, #255	@ 0xff
.L_19296:
	add	sp, #4
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_801929E
func_801929E:
	.align	2, 0
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
	ldr	r1, .L_192fc
	lsl	r4, r4, #2
	ldr	r2, .L_19300
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
	ldr	r1, .L_19304
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r0, .L_19308
	mov	r1, #0
	mov	r2, #32
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_192fc:
	.4byte	sUnk_82DD940
.L_19300:
	.4byte	gWarioData
.L_19304:
	.4byte	gWarioPaletteSize
.L_19308:
	.4byte	sUnk_82DE838


thumb_func_start func_801930C
func_801930C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_19384
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #9
	beq	.L_19378
	ldr	r4, .L_19388
	ldr	r6, [r4, #0]
	add	r0, r6, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, [r4, #12]
	mov	r8, r4
	mov	r0, r8
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1938c
	ldr	r5, .L_19390
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #9
	strb	r0, [r7, #0]
.L_19378:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_19384:
	.4byte	gUnk_30031BC
.L_19388:
	.4byte	gMPlayTable
.L_1938c:
	.4byte	0xFFFF
.L_19390:
	.4byte	0xFFFFFF00


thumb_func_start func_8019394
func_8019394:
	push	{r4, lr}
	ldr	r3, .L_193d8
	ldr	r4, .L_193dc
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_193e0
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
	bne	.L_193e4
	strb	r0, [r4, #26]
	b	.L_193ec
.L_193d8:
	.4byte	sUnk_82DD9A8
.L_193dc:
	.4byte	gWarioData
.L_193e0:
	.4byte	sUnk_82DEB18
.L_193e4:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_193ec
	strb	r1, [r4, #26]
.L_193ec:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
