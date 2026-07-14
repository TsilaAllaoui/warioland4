.include "macros.s.inc"


thumb_func_start func_8017FB0
func_8017FB0:
	push	{lr}
	ldr	r1, .L_17fcc
	ldr	r0, .L_17fd0
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
.L_17fcc:
	.4byte	sFatWarioPoseTable
.L_17fd0:
	.4byte	gWarioData


thumb_func_start func_8017FD4
func_8017FD4:
	ldr	r2, .L_18008
	ldr	r3, .L_1800c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18010
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
	bne	.L_18010
	mov	r0, #9
	b	.L_18012
.L_18008:
	.4byte	gWarioData
.L_1800c:
	.4byte	sUnk_8325274
.L_18010:
	mov	r0, #255	@ 0xff
.L_18012:
	bx	lr


thumb_func_start func_8018014
func_8018014:
	ldr	r2, .L_1804c
	ldr	r3, .L_18050
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18048
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
	bne	.L_18048
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_18048:
	mov	r0, #255	@ 0xff
	bx	lr
.L_1804c:
	.4byte	gWarioData
.L_18050:
	.4byte	sUnk_8325274


thumb_func_start func_8018054
func_8018054:
	ldr	r2, .L_18088
	ldr	r3, .L_1808c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18090
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
	bne	.L_18090
	mov	r0, #9
	b	.L_18092
.L_18088:
	.4byte	gWarioData
.L_1808c:
	.4byte	sUnk_8325370
.L_18090:
	mov	r0, #255	@ 0xff
.L_18092:
	bx	lr


thumb_func_start func_8018094
func_8018094:
	push	{r4, lr}
	ldr	r0, .L_180a8
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_180ac
	mov	r0, #4
	b	.L_18150
	.align	2, 0
.L_180a8:
	.4byte	gButtonsPressed
.L_180ac:
	ldr	r0, .L_180bc
	ldrh	r2, [r0, #12]
	ldr	r1, .L_180c0
	add	r3, r0, #0
	cmp	r2, r1
	bls	.L_180c4
	mov	r0, #8
	b	.L_18150
.L_180bc:
	.4byte	gWarioData
.L_180c0:
	.4byte	0x167
.L_180c4:
	add	r0, r2, #1
	strh	r0, [r3, #12]
	ldr	r0, .L_180e4
	ldrh	r2, [r0, #0]
	ldrh	r1, [r3, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_180f4
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_180e8
	mov	r0, #32
	strh	r0, [r3, #22]
	b	.L_18108
.L_180e4:
	.4byte	gButtonsHeld
.L_180e8:
	ldr	r0, .L_180f0
	strh	r0, [r3, #22]
	b	.L_18108
	.align	2, 0
.L_180f0:
	.4byte	0xFFE0
.L_180f4:
	mov	r0, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_18104
	mov	r0, #2
	b	.L_18150
.L_18104:
	mov	r0, #9
	b	.L_18150
.L_18108:
	add	r2, r3, #0
	ldr	r4, .L_18138
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1814e
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bne	.L_1813c
	mov	r0, #3
	bl	m4aSongNumStart
	b	.L_1814e
.L_18138:
	.4byte	sUnk_83253A0
.L_1813c:
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1814e
	strb	r0, [r3, #31]
.L_1814e:
	mov	r0, #255	@ 0xff
.L_18150:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8018156
func_8018156:
	.align	2, 0
	ldr	r2, .L_18198
	ldr	r3, .L_1819c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_181a0
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
	bne	.L_181a0
	mov	r0, #1
	strb	r0, [r2, #8]
	ldrh	r0, [r2, #12]
	add	r0, #20
	strh	r0, [r2, #12]
	mov	r0, #254	@ 0xfe
	b	.L_181a2
	.align	2, 0
.L_18198:
	.4byte	gWarioData
.L_1819c:
	.4byte	sUnk_8325424
.L_181a0:
	mov	r0, #255	@ 0xff
.L_181a2:
	bx	lr


thumb_func_start func_80181A4
func_80181A4:
	push	{r4, lr}
	ldr	r0, .L_181c4
	ldr	r4, .L_181c8
	ldrh	r2, [r0, #0]
	ldrh	r1, [r4, #14]
	add	r3, r2, #0
	and	r3, r1
	cmp	r3, #0
	beq	.L_181d8
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_181cc
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_181ea
.L_181c4:
	.4byte	gButtonsHeld
.L_181c8:
	.4byte	gWarioData
.L_181cc:
	ldr	r0, .L_181d4
	strh	r0, [r4, #22]
	b	.L_181ea
	.align	2, 0
.L_181d4:
	.4byte	0xFFE0
.L_181d8:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_181e8
	strh	r1, [r4, #14]
.L_181e8:
	strh	r3, [r4, #22]
.L_181ea:
	mov	r0, #255	@ 0xff
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_80181F2
func_80181F2:
	.align	2, 0
	ldr	r0, .L_18200
	ldrb	r0, [r0, #30]
	cmp	r0, #29
	bls	.L_18204
	mov	r0, #9
	b	.L_18230
.L_18200:
	.4byte	gWarioData
.L_18204:
	ldr	r2, .L_18234
	ldr	r3, .L_18238
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1822e
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
	bne	.L_1822e
	strb	r0, [r2, #2]
.L_1822e:
	mov	r0, #255	@ 0xff
.L_18230:
	bx	lr
	.align	2, 0
.L_18234:
	.4byte	gUnk_3001930
.L_18238:
	.4byte	sUnk_82E03BC


thumb_func_start func_801823C
func_801823C:
	ldr	r2, .L_18270
	ldr	r3, .L_18274
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18278
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
	bne	.L_18278
	mov	r0, #9
	b	.L_1827a
.L_18270:
	.4byte	gWarioData
.L_18274:
	.4byte	sUnk_8325460
.L_18278:
	mov	r0, #255	@ 0xff
.L_1827a:
	bx	lr


thumb_func_start func_801827C
func_801827C:
	ldr	r2, .L_182b8
	ldr	r3, .L_182bc
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_182c0
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
	bne	.L_182c0
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_182c2
	.align	2, 0
.L_182b8:
	.4byte	gWarioData
.L_182bc:
	.4byte	sUnk_8325484
.L_182c0:
	mov	r0, #255	@ 0xff
.L_182c2:
	bx	lr


thumb_func_start func_80182C4
func_80182C4:
	ldr	r2, .L_182d0
	ldrb	r0, [r2, #10]
	cmp	r0, #7
	bls	.L_182d4
	mov	r0, #8
	b	.L_1831c
.L_182d0:
	.4byte	gWarioData
.L_182d4:
	ldr	r0, .L_182e4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_182e8
	mov	r0, #4
	b	.L_1831c
.L_182e4:
	.4byte	gButtonsPressed
.L_182e8:
	ldr	r0, .L_182fc
	ldrh	r1, [r0, #0]
	ldrh	r2, [r2, #14]
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_18300
	mov	r0, #3
	b	.L_1831c
	.align	2, 0
.L_182fc:
	.4byte	gButtonsHeld
.L_18300:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1830e
	mov	r0, #2
	b	.L_1831c
.L_1830e:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_1831a
	mov	r0, #255	@ 0xff
	b	.L_1831c
.L_1831a:
	mov	r0, #10
.L_1831c:
	bx	lr


thumb_func_start func_801831E
func_801831E:
	.align	2, 0
	ldr	r0, .L_18330
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_18334
	mov	r0, #4
	b	.L_1836c
.L_18330:
	.4byte	gButtonsPressed
.L_18334:
	ldr	r0, .L_18348
	ldr	r1, .L_1834c
	ldrh	r2, [r0, #0]
	ldrh	r1, [r1, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_18350
	mov	r0, #3
	b	.L_1836c
.L_18348:
	.4byte	gButtonsHeld
.L_1834c:
	.4byte	gWarioData
.L_18350:
	mov	r0, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	beq	.L_1835e
	mov	r0, #2
	b	.L_1836c
.L_1835e:
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_1836a
	mov	r0, #255	@ 0xff
	b	.L_1836c
.L_1836a:
	mov	r0, #9
.L_1836c:
	bx	lr
	.align	2, 0


thumb_func_start func_8018370
func_8018370:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_8010230
	cmp	r4, #0
	bne	.L_183a8
	ldr	r0, .L_183a0
	ldrb	r0, [r0, #26]
	cmp	r0, #2
	bne	.L_18388
	mov	r4, #1
.L_18388:
	ldr	r0, .L_183a4
	bl	m4aSongNumStart
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
	b	.L_183b4
	.align	2, 0
.L_183a0:
	.4byte	gWarioDataCopy
.L_183a4:
	.4byte	0x161
.L_183a8:
	ldr	r2, .L_183c4
	ldr	r1, .L_183c8
	ldrb	r0, [r1, #10]
	strb	r0, [r2, #10]
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #12]
.L_183b4:
	cmp	r4, #253	@ 0xfd
	beq	.L_18408
	cmp	r4, #253	@ 0xfd
	bgt	.L_183cc
	cmp	r4, #2
	beq	.L_18454
	ldr	r3, .L_183c4
	b	.L_1845c
.L_183c4:
	.4byte	gWarioData
.L_183c8:
	.4byte	gWarioDataCopy
.L_183cc:
	ldr	r3, .L_183ec
	cmp	r4, #254	@ 0xfe
	bne	.L_1845c
	ldr	r0, .L_183f0
	ldrb	r1, [r0, #1]
	add	r2, r0, #0
	cmp	r1, #0
	bne	.L_183f4
	mov	r0, #1
	strb	r0, [r3, #1]
	ldrb	r0, [r2, #30]
	strb	r0, [r3, #30]
	ldrb	r0, [r2, #31]
	strb	r0, [r3, #31]
	b	.L_183f8
	.align	2, 0
.L_183ec:
	.4byte	gWarioData
.L_183f0:
	.4byte	gWarioDataCopy
.L_183f4:
	mov	r0, #5
	strb	r0, [r3, #1]
.L_183f8:
	ldrb	r0, [r2, #8]
	cmp	r0, #0
	beq	.L_18402
	mov	r0, #108	@ 0x6c
	strh	r0, [r3, #24]
.L_18402:
	ldrh	r0, [r2, #22]
	strh	r0, [r3, #22]
	b	.L_1845e
.L_18408:
	ldr	r2, .L_18420
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bne	.L_18428
	ldr	r1, .L_18424
	mov	r0, #0
	strb	r0, [r1, #1]
	ldrb	r0, [r2, #30]
	strb	r0, [r1, #30]
	ldrb	r0, [r2, #31]
	strb	r0, [r1, #31]
	b	.L_1845e
.L_18420:
	.4byte	gWarioDataCopy
.L_18424:
	.4byte	gWarioData
.L_18428:
	ldr	r1, .L_1844c
	mov	r0, #6
	strb	r0, [r1, #1]
	ldrb	r0, [r1, #10]
	add	r0, #1
	strb	r0, [r1, #10]
	ldr	r1, .L_18450
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	mov	r1, #0
	bl	ScreenShakeRequestY
	mov	r0, #177	@ 0xb1
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1845e
.L_1844c:
	.4byte	gWarioData
.L_18450:
	.4byte	gUnk_3001930
.L_18454:
	ldr	r1, .L_18464
	mov	r0, #1
	strb	r0, [r1, #3]
	add	r3, r1, #0
.L_1845c:
	strb	r4, [r3, #1]
.L_1845e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_18464:
	.4byte	gWarioData


thumb_func_start func_8018468
func_8018468:
	push	{r4, lr}
	ldr	r3, .L_184d0
	ldr	r2, .L_184d4
	ldr	r4, .L_184d8
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
	bne	.L_184ae
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_184ae:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_184bc
	strh	r1, [r4, #24]
.L_184bc:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_184dc
	bl	func_800FDBC
	b	.L_184de
	.align	2, 0
.L_184d0:
	.4byte	gUnk_3001918
.L_184d4:
	.4byte	sUnk_82DD8A8
.L_184d8:
	.4byte	gWarioData
.L_184dc:
	ldrh	r0, [r4, #22]
.L_184de:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_184f4
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_184f4:
	.4byte	gWarioData


thumb_func_start func_80184F8
func_80184F8:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_18550
	ldr	r2, .L_18554
	ldr	r3, .L_18558
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
	bgt	.L_1853e
	mov	r0, #0
	strb	r0, [r4, #12]
.L_1853e:
	mov	r6, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1855c
	bl	func_8014C4C
	b	.L_1858c
.L_18550:
	.4byte	gUnk_3001918
.L_18554:
	.4byte	sUnk_82DD8A8
.L_18558:
	.4byte	gWarioData
.L_1855c:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1856a
	bl	func_8014930
	b	.L_1858c
.L_1856a:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_18582
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_1857c
	bl	func_8014930
	b	.L_1858c
.L_1857c:
	bl	func_80143D8
	b	.L_1858c
.L_18582:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_18590
	bl	func_8014758
.L_1858c:
	lsl	r0, r0, #24
	lsr	r6, r0, #24
.L_18590:
	ldr	r5, .L_185b8
	ldrh	r0, [r5, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	mov	r0, #255	@ 0xff
	and	r4, r0
	cmp	r4, #1
	bne	.L_185c0
	strb	r4, [r5, #0]
	mov	r0, #12
	bl	func_8016614
	ldr	r0, .L_185bc
	strb	r4, [r0, #0]
	b	.L_185f8
.L_185b8:
	.4byte	gWarioData
.L_185bc:
	.4byte	gWarioDustEffect1
.L_185c0:
	ldr	r4, .L_18600
	ldrb	r0, [r4, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_185f8
	ldrb	r0, [r5, #1]
	cmp	r0, #5
	bne	.L_185ee
	cmp	r6, #253	@ 0xfd
	bne	.L_185ee
	ldrb	r0, [r4, #8]
	ldrh	r1, [r5, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, sp
	bl	func_8014268
	cmp	r0, #0
	beq	.L_185ee
	ldrb	r4, [r4, #16]
	cmp	r0, r4
	bgt	.L_185ee
	mov	r6, #255	@ 0xff
.L_185ee:
	cmp	r6, #255	@ 0xff
	beq	.L_185f8
	add	r0, r6, #0
	bl	func_8018370
.L_185f8:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_18600:
	.4byte	gUnk_3001918


thumb_func_start func_8018604
func_8018604:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
	ldr	r1, .L_18660
	lsl	r4, r4, #2
	ldr	r2, .L_18664
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
	ldr	r1, .L_18668
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r0, .L_1866c
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_18660:
	.4byte	sUnk_82DD850
.L_18664:
	.4byte	gWarioData
.L_18668:
	.4byte	gWarioPaletteSize
.L_1866c:
	.4byte	sUnk_82DDDA0


thumb_func_start func_8018670
func_8018670:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_186e8
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #7
	beq	.L_186dc
	ldr	r4, .L_186ec
	ldr	r6, [r4, #0]
	add	r0, r6, #0
	mov	r1, #150	@ 0x96
	bl	m4aMPlayTempoControl
	ldr	r4, [r4, #12]
	mov	r8, r4
	mov	r0, r8
	mov	r1, #150	@ 0x96
	bl	m4aMPlayTempoControl
	ldr	r4, .L_186f0
	ldr	r5, .L_186f4
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
	mov	r2, #10
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #10
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #7
	strb	r0, [r7, #0]
.L_186dc:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_186e8:
	.4byte	gUnk_30031BC
.L_186ec:
	.4byte	gMPlayTable
.L_186f0:
	.4byte	0xFFFF
.L_186f4:
	.4byte	0xFFFFFE0C


thumb_func_start func_80186F8
func_80186F8:
	push	{r4, lr}
	ldr	r3, .L_1873c
	ldr	r4, .L_18740
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_18744
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
	bne	.L_18748
	strb	r0, [r4, #26]
	b	.L_18750
.L_1873c:
	.4byte	sUnk_82DD8A8
.L_18740:
	.4byte	gWarioData
.L_18744:
	.4byte	sUnk_82DEB18
.L_18748:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_18750
	strb	r1, [r4, #26]
.L_18750:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
