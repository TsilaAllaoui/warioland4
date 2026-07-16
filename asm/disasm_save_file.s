.include "macros.s.inc"


thumb_func_start func_8072CA0
func_8072CA0:
	push	{lr}
	ldr	r1, .L_72d10
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #49	@ 0x31
	strb	r0, [r1, #0]
	add	r1, #1
	ldr	r0, .L_72d14
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r1, #1
.ifdef VERSION_JP
	mov	r0, #1
.else
	mov	r0, #0
.endif
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r2, #0
	ldr	r3, .L_72d18
.L_72cc2:
	add	r0, r2, r3
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r2, #1
	add	r1, #1
	cmp	r2, #19
	ble	.L_72cc2
	ldr	r3, .L_72d1c
	mov	r0, #0
	stmia	r3!, {r0}
	sub	r0, #1
	str	r0, [r3, #0]
	sub	r3, #4
	mov	r1, #0
	mov	r2, #3
.L_72ce0:
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	sub	r2, #1
	cmp	r2, #0
	bge	.L_72ce0
	ldr	r0, .L_72d1c
	str	r1, [r0, #0]
	mvn	r1, r1
	add	r0, #4
	str	r1, [r0, #0]
	bl	func_8000E54
	ldr	r1, .L_72d20
	mov	r0, #1
	strb	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72d10:
	.4byte	0x02038008
.L_72d14:
	.4byte	gTitleScreenStyle
.L_72d18:
.ifdef VERSION_JP
	.4byte	sUnk_84009A8
.else
	.4byte	sUnk_8400994
.endif
.L_72d1c:
	.4byte	0x02038000
.L_72d20:
	.4byte	gUnk_300001D


thumb_func_start func_8072D24
func_8072D24:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	bl	func_8073B38
	ldr	r0, .L_72d98
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_72d3e
	bl	func_8001038
.L_72d3e:
	mov	r0, #0
	bl	func_8072E8C
	add	r6, r0, #0
	mov	r0, #1
	bl	func_8072E8C
	mov	r9, r0
	mov	r0, #2
	bl	func_8072E8C
	mov	r8, r0
	cmp	r6, #0
	beq	.L_72e00
	mov	r0, sp
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r4, .L_72d9c
	str	r0, [r4, #0]
	ldr	r5, .L_72da0
	str	r5, [r4, #4]
	ldr	r1, .L_72da4
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, r8
	cmp	r0, #0
	beq	.L_72dcc
	mov	r0, sp
	strh	r2, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_72da8
	str	r0, [r4, #4]
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, r9
	cmp	r0, #0
	beq	.L_72db0
	mov	r0, sp
	strh	r2, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_72dac
	str	r0, [r4, #4]
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	b	.L_72e28
.L_72d98:
	.4byte	gUnk_3000014
.L_72d9c:
	.4byte	0x040000d4
.L_72da0:
	.4byte	0x02038000
.L_72da4:
	.4byte	0x81000020
.L_72da8:
	.4byte	0x02038900
.L_72dac:
	.4byte	0x02038040
.L_72db0:
	ldr	r0, .L_72dc4
	str	r0, [r4, #0]
	str	r5, [r4, #4]
	ldr	r0, .L_72dc8
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r6, #0
	bl	func_8000E54
	b	.L_72e28
.L_72dc4:
	.4byte	0x02038040
.L_72dc8:
	.4byte	0x80000020
.L_72dcc:
	ldr	r0, .L_72df4
	str	r0, [r4, #0]
	str	r5, [r4, #4]
	ldr	r7, .L_72df8
	str	r7, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r6, #0
	bl	func_8000E54
	mov	r0, r9
	cmp	r0, #0
	beq	.L_72e28
	str	r5, [r4, #0]
	ldr	r0, .L_72dfc
	str	r0, [r4, #4]
	str	r7, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_8000E94
	b	.L_72e28
.L_72df4:
	.4byte	0x02038900
.L_72df8:
	.4byte	0x80000020
.L_72dfc:
	.4byte	0x02038040
.L_72e00:
	ldr	r4, .L_72e3c
	ldr	r7, .L_72e40
	str	r7, [r4, #0]
	ldr	r0, .L_72e44
	str	r0, [r4, #4]
	ldr	r5, .L_72e48
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_8000E94
	mov	r0, r8
	cmp	r0, #0
	beq	.L_72e28
	str	r7, [r4, #0]
	ldr	r0, .L_72e4c
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_8000EAC
.L_72e28:
	cmp	r6, #0
	bne	.L_72e58
	ldr	r0, .L_72e50
	ldr	r1, .L_72e54
	ldrb	r0, [r0, #0]
	neg	r0, r0
	lsr	r0, r0, #31
	strb	r0, [r1, #0]
	b	.L_72e66
	.align	2, 0
.L_72e3c:
	.4byte	0x040000d4
.L_72e40:
	.4byte	0x02038000
.L_72e44:
	.4byte	0x02038040
.L_72e48:
	.4byte	0x80000020
.L_72e4c:
	.4byte	0x02038900
.L_72e50:
	.4byte	0x0203800a
.L_72e54:
	.4byte	gTitleScreenStyle
.L_72e58:
	bl	func_8000CE0
	ldr	r1, .L_72e80
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_8072CA0
.L_72e66:
.ifdef VERSION_JP
	ldr	r0, .L_72e84
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_72e88
	strb	r1, [r0, #0]
.else
	ldr	r1, .L_72e84
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_72e88
	mov	r0, #1
	strb	r0, [r1, #0]
.endif
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.align 2, 0
.L_72e80:
	.4byte	gTitleScreenStyle
.L_72e84:
	.4byte	gLanguage
.L_72e88:
	.4byte	gUnk_300001D


thumb_func_start func_8072E8C
func_8072E8C:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r4, #0
	ldr	r6, .L_72f00
	cmp	r0, #2
	beq	.L_72ea2
	ldr	r6, .L_72f04
	cmp	r0, #1
	bne	.L_72ea2
	add	r6, #64	@ 0x40
.L_72ea2:
	mov	r2, #0
	add	r1, r6, #0
	ldr	r5, [r1, #0]
	add	r7, r1, #0
	add	r7, #12
	mov	r3, #3
.L_72eae:
	ldmia	r1!, {r0}
	add	r2, r2, r0
	ldmia	r1!, {r0}
	add	r2, r2, r0
	ldmia	r1!, {r0}
	add	r2, r2, r0
	ldmia	r1!, {r0}
	add	r2, r2, r0
	sub	r3, #1
	cmp	r3, #0
	bge	.L_72eae
	cmp	r5, r2
	beq	.L_72ecc
	mov	r0, #1
	orr	r4, r0
.L_72ecc:
	add	r2, r7, #0
	mov	r3, #0
	ldr	r7, .L_72f08
	mov	r5, #2
.L_72ed4:
	add	r1, r3, r7
	ldrb	r0, [r2, #0]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_72ee0
	orr	r4, r5
.L_72ee0:
	add	r3, #1
	add	r2, #1
	cmp	r3, #19
	ble	.L_72ed4
	add	r1, r6, #0
	ldmia	r1!, {r2}
	ldr	r0, [r1, #0]
	mvn	r0, r0
	cmp	r2, r0
	beq	.L_72ef8
	mov	r0, #4
	orr	r4, r0
.L_72ef8:
	add	r0, r4, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_72f00:
	.4byte	0x02038900
.L_72f04:
	.4byte	0x02038000
.L_72f08:
.ifdef VERSION_JP
	.4byte	sUnk_84009A8
.else
	.4byte	sUnk_8400994
.endif


thumb_func_start func_8072F0C
func_8072F0C:
	push	{r4, r5, lr}
	ldr	r1, .L_72f8c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r2, .L_72f90
	ldr	r0, .L_72f94
	ldrb	r0, [r0, #0]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_72f98
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r4, .L_72f9c
	ldr	r1, .L_72fa0
	add	r0, r4, #0
	bl	func_8073B10
	ldr	r0, .L_72fa4
	ldr	r1, .L_72fa8
	bl	func_8073B10
	add	r5, r4, #0
	add	r5, #16
	mov	r0, #0
	stmia	r5!, {r0}
	sub	r0, #1
	str	r0, [r5, #0]
	sub	r5, #4
	bl	func_8072FB0
	mov	r1, #0
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #1
.L_72f50:
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	sub	r2, #1
	cmp	r2, #0
	bne	.L_72f50
	ldr	r0, .L_72fac
	str	r1, [r0, #0]
	stmia	r5!, {r1}
	mvn	r1, r1
	str	r1, [r5, #0]
	bl	func_8000EC4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72f8c:
	.4byte	gUnk_3000C3F
.L_72f90:
	.4byte	gHasTemporarySave
.L_72f94:
	.4byte	gUnk_3000023
.L_72f98:
	.4byte	gSaveFlag
.L_72f9c:
	.4byte	0x02039000
.L_72fa0:
	.4byte	sUnk_8400974
.L_72fa4:
	.4byte	0x02039a80
.L_72fa8:
	.4byte	sUnk_8400984
.L_72fac:
	.4byte	gUnk_3000040


thumb_func_start func_8072FB0
func_8072FB0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, .L_7331c
	ldr	r0, .L_73320
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73324
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73328
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_7332c
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73330
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73334
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	ldr	r5, .L_73338
	ldr	r6, .L_7333c
	ldr	r7, .L_73340
	ldr	r0, .L_73344
	mov	ip, r0
	ldr	r1, .L_73348
	mov	r8, r1
	mov	r1, #0
	mov	r3, #3
.L_73000:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73000
	ldrh	r0, [r5, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r6, #2]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73036
	mov	r1, #0
	mov	r3, #3
.L_73028:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73028
.L_73036:
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	mov	r2, ip
	ldrh	r0, [r2, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73060
	mov	r1, #0
	mov	r3, #3
.L_73052:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73052
.L_73060:
	add	r0, r4, #0
	mov	r1, r8
	mov	r2, #60	@ 0x3c
	bl	memcpy
	add	r4, #60	@ 0x3c
	ldr	r0, .L_7334c
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73350
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73354
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73358
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_7335c
	ldr	r0, [r0, #0]
	stmia	r4!, {r0}
	ldr	r0, .L_73360
	ldr	r0, [r0, #0]
	stmia	r4!, {r0}
	add	r1, r4, #0
	ldr	r0, .L_73364
	ldmia	r0!, {r3, r5, r6}
	stmia	r1!, {r3, r5, r6}
	add	r4, #12
	add	r1, r4, #0
	ldr	r0, .L_73368
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	add	r4, #12
	ldr	r2, .L_7336c
	mov	r5, #253	@ 0xfd
	lsl	r5, r5, #2
	add	r3, r2, r5
.L_730b4:
	add	r1, r4, #0
	add	r0, r2, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r6, r7}
	stmia	r1!, {r6, r7}
	add	r4, #44	@ 0x2c
	add	r2, #44	@ 0x2c
	cmp	r2, r3
	ble	.L_730b4
	ldr	r0, .L_73370
	mov	r9, r0
	ldr	r1, .L_73374
	mov	r8, r1
	ldr	r2, .L_73378
	mov	ip, r2
	ldr	r3, .L_7337c
	mov	sl, r3
	ldr	r3, .L_73380
	mov	r2, #7
.L_730e4:
	add	r1, r4, #0
	add	r0, r3, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	add	r4, #12
	add	r3, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_730e4
	mov	r1, r9
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r2, .L_73384
	ldrb	r0, [r2, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r3, .L_73388
	ldrb	r0, [r3, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r5, .L_7338c
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73132
	mov	r3, #0
	mov	r1, #3
.L_73124:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73124
.L_73132:
	mov	r6, r8
	ldrb	r0, [r6, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r7, ip
	ldrb	r0, [r7, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r1, sl
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r2, .L_73390
	ldrb	r0, [r2, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_7316e
	mov	r3, #0
	mov	r1, #3
.L_73160:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73160
.L_7316e:
	ldr	r3, .L_73394
	ldrb	r0, [r3, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r5, .L_73398
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r6, r9
	ldrb	r0, [r6, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r7, .L_7339c
	ldrb	r0, [r7, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_731aa
	mov	r3, #0
	mov	r1, #3
.L_7319c:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7319c
.L_731aa:
	ldr	r1, .L_733a0
	ldr	r0, [r1, #0]
	stmia	r4!, {r0}
	ldr	r2, .L_733a4
	ldr	r0, [r2, #0]
	stmia	r4!, {r0}
	ldr	r3, .L_733a8
	ldr	r0, [r3, #0]
	stmia	r4!, {r0}
	mov	r2, #0
	ldr	r1, .L_733ac
.L_731c0:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_731c0
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_731e8
	mov	r3, #0
	mov	r1, #3
.L_731da:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_731da
.L_731e8:
	mov	r2, #0
	ldr	r1, .L_733b0
.L_731ec:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_731ec
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73214
	mov	r3, #0
	mov	r1, #3
.L_73206:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73206
.L_73214:
	mov	r1, #0
	ldr	r5, .L_733b4
.L_73218:
	lsl	r0, r1, #6
	add	r3, r1, #1
	add	r1, r0, r5
	mov	r2, #63	@ 0x3f
.L_73220:
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r1, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73220
	add	r1, r3, #0
	cmp	r1, #15
	ble	.L_73218
	mov	r2, #0
	ldr	r1, .L_733b8
.L_73238:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_73238
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73260
	mov	r3, #0
	mov	r1, #3
.L_73252:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73252
.L_73260:
	mov	r2, #0
	ldr	r1, .L_733bc
.L_73264:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #2
	ble	.L_73264
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_7328c
	mov	r3, #0
	mov	r1, #3
.L_7327e:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7327e
.L_7328c:
	mov	r2, #0
	ldr	r1, .L_733c0
.L_73290:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_73290
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_732b8
	mov	r3, #0
	mov	r1, #3
.L_732aa:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_732aa
.L_732b8:
	mov	r1, #0
	ldr	r5, .L_733c4
.L_732bc:
	add	r3, r1, #1
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r1, r0, r5
	mov	r2, #3
.L_732c8:
	ldmia	r1!, {r0}
	stmia	r4!, {r0}
	sub	r2, #1
	cmp	r2, #0
	bge	.L_732c8
	add	r1, r3, #0
	cmp	r1, #4
	ble	.L_732bc
	ldr	r5, .L_733c8
	ldr	r0, [r5, #0]
	stmia	r4!, {r0}
	ldr	r6, .L_733cc
	ldr	r0, [r6, #0]
	ldr	r1, [r6, #4]
	stmia	r4!, {r0, r1}
	ldr	r7, .L_733d0
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r1, .L_733d4
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r2, .L_733d8
	ldrh	r0, [r2, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r3, .L_733dc
	ldrh	r0, [r3, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r5, .L_733e0
	ldrh	r0, [r5, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r6, .L_733e4
	ldrh	r0, [r6, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r7, .L_733e8
	b	.L_733ec
	.align	2, 0
.L_7331c:
	.4byte	0x02039018
.L_73320:
	.4byte	gUnk_3000023
.L_73324:
	.4byte	gCurrentPassage
.L_73328:
	.4byte	gCurrentStageNumber
.L_7332c:
	.4byte	gUnk_3000025
.L_73330:
	.4byte	gUnk_300342C
.L_73334:
	.4byte	gTimerState
.L_73338:
	.4byte	gUnk_300003E
.L_7333c:
	.4byte	gGameMusicState
.L_73340:
	.4byte	gUnk_300003A
.L_73344:
	.4byte	gUnk_300003C
.L_73348:
	.4byte	gWarioData
.L_7334c:
	.4byte	gUnk_3001938
.L_73350:
	.4byte	gCurrentCarriedSprite
.L_73354:
	.4byte	gUnk_3001930
.L_73358:
	.4byte	gCurrentWarioEffect
.L_7335c:
	.4byte	gHeartMeter
.L_73360:
	.4byte	gHeartGauge
.L_73364:
	.4byte	gWarioDustEffect1
.L_73368:
	.4byte	gWarioDustEffect2
.L_7336c:
	.4byte	gSpriteData
.L_73370:
	.4byte	gSwitchPressed
.L_73374:
	.4byte	gCollectedNEJewelPiece
.L_73378:
	.4byte	gCollectedSEJewelPiece
.L_7337c:
	.4byte	gCollectedSWJewelPiece
.L_73380:
	.4byte	gSecondarySpriteData
.L_73384:
	.4byte	gUnk_3000C04
.L_73388:
	.4byte	gUnk_3000C05
.L_7338c:
	.4byte	gUnk_3000C06
.L_73390:
	.4byte	gCollectedNWJewelPiece
.L_73394:
	.4byte	gCollectedCD
.L_73398:
	.4byte	gCollectedKeyzer
.L_7339c:
	.4byte	gUnk_3000C0E
.L_733a0:
	.4byte	gTotalScore
.L_733a4:
	.4byte	gStageScore
.L_733a8:
	.4byte	gUnk_3000BEC
.L_733ac:
	.4byte	gUnk_3000524
.L_733b0:
	.4byte	gUnk_3000544
.L_733b4:
	.4byte	gPersistentSpriteData
.L_733b8:
	.4byte	gSwitchStates
.L_733bc:
	.4byte	gUnk_3000BF0
.L_733c0:
	.4byte	gScoreDigits
.L_733c4:
	.4byte	gCurrentCollection
.L_733c8:
	.4byte	gUnk_30000D8
.L_733cc:
	.4byte	gUnk_3003224
.L_733d0:
	.4byte	gUnk_3001876
.L_733d4:
	.4byte	gUnk_3001878
.L_733d8:
	.4byte	gBg1XPosition
.L_733dc:
	.4byte	gBg1YPosition
.L_733e0:
	.4byte	gUnk_300187E
.L_733e4:
	.4byte	gUnk_3001880
.L_733e8:
	.4byte	gUnk_3001882
.L_733ec:
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r1, .L_73410
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r0, r4, #0
	ldr	r1, .L_73414
	bl	func_8073B24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_73410:
	.4byte	gUnk_3001884
.L_73414:
	.4byte	sUnk_840094C


thumb_func_start func_8073418
func_8073418:
	push	{r4, lr}
	ldr	r0, .L_73448
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_73442
	bl	func_807345C
	ldr	r4, .L_7344c
	ldr	r3, .L_73450
	ldr	r0, .L_73454
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_73458
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	strb	r0, [r4, #0]
.L_73442:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_73448:
	.4byte	gHasTemporarySave
.L_7344c:
	.4byte	gCurrentStageID
.L_73450:
	.4byte	sUnk_86391C4
.L_73454:
	.4byte	gCurrentStageNumber
.L_73458:
	.4byte	gCurrentPassage


thumb_func_start func_807345C
func_807345C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, .L_737ac
	ldr	r1, .L_737b0
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	ldr	r1, .L_737b4
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	ldr	r1, .L_737b8
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	ldr	r1, .L_737bc
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	ldr	r1, .L_737c0
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	ldr	r1, .L_737c4
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, r4, #0
	ldr	r3, .L_737c8
	ldr	r5, .L_737cc
	ldr	r6, .L_737d0
	ldr	r7, .L_737d4
	ldr	r0, .L_737d8
	mov	ip, r0
	mov	r1, #3
.L_734a8:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_734a8
	ldrh	r0, [r4, #0]
	strh	r0, [r3, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #2]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_734d8
	mov	r1, #3
.L_734cc:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_734cc
.L_734d8:
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_734fc
	mov	r1, #3
.L_734f0:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_734f0
.L_734fc:
	mov	r0, ip
	add	r1, r4, #0
	mov	r2, #60	@ 0x3c
	bl	memcpy
	add	r4, #60	@ 0x3c
	ldr	r2, .L_737dc
	ldmia	r4!, {r0, r1}
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_737e0
	ldmia	r4!, {r0, r1}
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_737e4
	ldmia	r4!, {r0, r1}
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_737e8
	ldmia	r4!, {r0, r1}
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r1, .L_737ec
	ldmia	r4!, {r0}
	str	r0, [r1, #0]
	ldr	r1, .L_737f0
	ldmia	r4!, {r0}
	str	r0, [r1, #0]
	ldr	r1, .L_737f4
	add	r0, r4, #0
	ldmia	r0!, {r2, r3, r5}
	stmia	r1!, {r2, r3, r5}
	add	r4, #12
	ldr	r1, .L_737f8
	add	r0, r4, #0
	ldmia	r0!, {r2, r6, r7}
	stmia	r1!, {r2, r6, r7}
	add	r4, #12
	ldr	r2, .L_737fc
	mov	r5, #253	@ 0xfd
	lsl	r5, r5, #2
	add	r3, r2, r5
.L_73550:
	add	r1, r2, #0
	add	r0, r4, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r6, r7}
	stmia	r1!, {r6, r7}
	add	r4, #44	@ 0x2c
	add	r2, #44	@ 0x2c
	cmp	r2, r3
	ble	.L_73550
	ldr	r0, .L_73800
	mov	r9, r0
	ldr	r1, .L_73804
	mov	ip, r1
	ldr	r2, .L_73808
	mov	r8, r2
	ldr	r3, .L_7380c
	mov	sl, r3
	ldr	r3, .L_73810
	mov	r2, #7
.L_73580:
	add	r1, r3, #0
	add	r0, r4, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	add	r4, #12
	add	r3, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73580
	ldrb	r0, [r4, #0]
	mov	r1, r9
	strb	r0, [r1, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r2, .L_73814
	strb	r0, [r2, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r3, .L_73818
	strb	r0, [r3, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r5, .L_7381c
	strb	r0, [r5, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_735ca
	mov	r1, #3
.L_735be:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_735be
.L_735ca:
	ldrb	r0, [r4, #0]
	mov	r6, ip
	strb	r0, [r6, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	mov	r7, r8
	strb	r0, [r7, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r2, .L_73820
	strb	r0, [r2, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73602
	mov	r1, #3
.L_735f6:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_735f6
.L_73602:
	ldrb	r0, [r4, #0]
	ldr	r3, .L_73824
	strb	r0, [r3, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r5, .L_73828
	strb	r0, [r5, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	mov	r6, r9
	strb	r0, [r6, #0]
	add	r4, #1
	ldrb	r0, [r4, #0]
	ldr	r7, .L_7382c
	strb	r0, [r7, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_7363a
	mov	r1, #3
.L_7362e:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7362e
.L_7363a:
	ldmia	r4!, {r0}
	ldr	r1, .L_73830
	str	r0, [r1, #0]
	ldmia	r4!, {r0}
	ldr	r2, .L_73834
	str	r0, [r2, #0]
	ldmia	r4!, {r0}
	ldr	r3, .L_73838
	str	r0, [r3, #0]
	mov	r2, #0
	ldr	r3, .L_7383c
.L_73650:
	add	r1, r2, r3
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_73650
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73674
	mov	r1, #3
.L_73668:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73668
.L_73674:
	mov	r2, #0
	ldr	r3, .L_73840
.L_73678:
	add	r1, r2, r3
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_73678
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_7369c
	mov	r1, #3
.L_73690:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73690
.L_7369c:
	mov	r1, #0
	ldr	r5, .L_73844
.L_736a0:
	lsl	r0, r1, #6
	add	r3, r1, #1
	add	r1, r0, r5
	mov	r2, #63	@ 0x3f
.L_736a8:
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r1, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_736a8
	add	r1, r3, #0
	cmp	r1, #15
	ble	.L_736a0
	mov	r2, #0
	ldr	r3, .L_73848
.L_736c0:
	add	r1, r2, r3
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_736c0
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_736e4
	mov	r1, #3
.L_736d8:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_736d8
.L_736e4:
	mov	r2, #0
	ldr	r3, .L_7384c
.L_736e8:
	add	r1, r2, r3
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #2
	ble	.L_736e8
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_7370c
	mov	r1, #3
.L_73700:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73700
.L_7370c:
	mov	r2, #0
	ldr	r3, .L_73850
.L_73710:
	add	r1, r2, r3
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_73710
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73734
	mov	r1, #3
.L_73728:
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73728
.L_73734:
	mov	r1, #0
	ldr	r5, .L_73854
.L_73738:
	add	r3, r1, #1
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r1, r0, r5
	mov	r2, #3
.L_73744:
	ldmia	r4!, {r0}
	stmia	r1!, {r0}
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73744
	add	r1, r3, #0
	cmp	r1, #4
	ble	.L_73738
	ldmia	r4!, {r0}
	ldr	r5, .L_73858
	str	r0, [r5, #0]
	ldmia	r4!, {r0, r1}
	ldr	r6, .L_7385c
	str	r0, [r6, #0]
	str	r1, [r6, #4]
	ldrh	r0, [r4, #0]
	ldr	r7, .L_73860
	strh	r0, [r7, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r1, .L_73864
	strh	r0, [r1, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r2, .L_73868
	strh	r0, [r2, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r3, .L_7386c
	strh	r0, [r3, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r5, .L_73870
	strh	r0, [r5, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r6, .L_73874
	strh	r0, [r6, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	ldr	r7, .L_73878
	strh	r0, [r7, #0]
	ldrh	r0, [r4, #2]
	ldr	r1, .L_7387c
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_737ac:
	.4byte	0x02039018
.L_737b0:
	.4byte	gUnk_3000023
.L_737b4:
	.4byte	gCurrentPassage
.L_737b8:
	.4byte	gCurrentStageNumber
.L_737bc:
	.4byte	gUnk_3000025
.L_737c0:
	.4byte	gUnk_300342C
.L_737c4:
	.4byte	gTimerState
.L_737c8:
	.4byte	gUnk_300003E
.L_737cc:
	.4byte	gGameMusicState
.L_737d0:
	.4byte	gUnk_300003A
.L_737d4:
	.4byte	gUnk_300003C
.L_737d8:
	.4byte	gWarioData
.L_737dc:
	.4byte	gUnk_3001938
.L_737e0:
	.4byte	gCurrentCarriedSprite
.L_737e4:
	.4byte	gUnk_3001930
.L_737e8:
	.4byte	gCurrentWarioEffect
.L_737ec:
	.4byte	gHeartMeter
.L_737f0:
	.4byte	gHeartGauge
.L_737f4:
	.4byte	gWarioDustEffect1
.L_737f8:
	.4byte	gWarioDustEffect2
.L_737fc:
	.4byte	gSpriteData
.L_73800:
	.4byte	gSwitchPressed
.L_73804:
	.4byte	gCollectedNEJewelPiece
.L_73808:
	.4byte	gCollectedSEJewelPiece
.L_7380c:
	.4byte	gCollectedSWJewelPiece
.L_73810:
	.4byte	gSecondarySpriteData
.L_73814:
	.4byte	gUnk_3000C04
.L_73818:
	.4byte	gUnk_3000C05
.L_7381c:
	.4byte	gUnk_3000C06
.L_73820:
	.4byte	gCollectedNWJewelPiece
.L_73824:
	.4byte	gCollectedCD
.L_73828:
	.4byte	gCollectedKeyzer
.L_7382c:
	.4byte	gUnk_3000C0E
.L_73830:
	.4byte	gTotalScore
.L_73834:
	.4byte	gStageScore
.L_73838:
	.4byte	gUnk_3000BEC
.L_7383c:
	.4byte	gUnk_3000524
.L_73840:
	.4byte	gUnk_3000544
.L_73844:
	.4byte	gPersistentSpriteData
.L_73848:
	.4byte	gSwitchStates
.L_7384c:
	.4byte	gUnk_3000BF0
.L_73850:
	.4byte	gScoreDigits
.L_73854:
	.4byte	gCurrentCollection
.L_73858:
	.4byte	gUnk_30000D8
.L_7385c:
	.4byte	gUnk_3003224
.L_73860:
	.4byte	gUnk_3001876
.L_73864:
	.4byte	gUnk_3001878
.L_73868:
	.4byte	gBg1XPosition
.L_7386c:
	.4byte	gBg1YPosition
.L_73870:
	.4byte	gUnk_300187E
.L_73874:
	.4byte	gUnk_3001880
.L_73878:
	.4byte	gUnk_3001882
.L_7387c:
	.4byte	gUnk_3001884


thumb_func_start func_8073880
func_8073880:
	push	{r4, r5, lr}
	ldr	r4, .L_738e8
	ldr	r1, .L_738ec
	add	r0, r4, #0
	bl	func_8073B10
	ldr	r0, .L_738f0
	ldr	r1, .L_738f4
	bl	func_8073B10
	add	r5, r4, #0
	add	r5, #16
	mov	r0, #0
	stmia	r5!, {r0}
	sub	r0, #1
	str	r0, [r5, #0]
	sub	r5, #4
	bl	func_80738FC
	mov	r1, #0
	mov	r2, #14
.L_738aa:
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	ldmia	r4!, {r0}
	add	r1, r1, r0
	sub	r2, #1
	cmp	r2, #0
	bge	.L_738aa
	stmia	r5!, {r1}
	mvn	r1, r1
	str	r1, [r5, #0]
	ldr	r1, .L_738f8
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_8000EEC
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_738e8:
	.4byte	0x02038100
.L_738ec:
	.4byte	sUnk_8400954
.L_738f0:
	.4byte	0x02038260
.L_738f4:
	.4byte	sUnk_8400964
.L_738f8:
	.4byte	0x020382e0


thumb_func_start func_80738FC
func_80738FC:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_739ec
	ldr	r0, .L_739f0
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	ldr	r0, .L_739f4
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	ldr	r0, .L_739f8
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	add	r2, r1, #0
	ldr	r5, .L_739fc
	ldr	r6, .L_73a00
	ldr	r7, .L_73a04
	ldr	r0, .L_73a08
	mov	ip, r0
	mov	r4, #0
	mov	r3, #3
.L_73928:
	strb	r4, [r1, #0]
	add	r1, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73928
	ldrh	r0, [r5, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	add	r2, r1, #0
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_73958
	mov	r4, #0
	mov	r3, #3
.L_7394a:
	strb	r4, [r1, #0]
	add	r1, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_7394a
.L_73958:
	ldr	r0, [r6, #0]
	stmia	r1!, {r0}
	mov	r3, #0
	ldr	r6, .L_73a0c
	mov	r5, #0
.L_73962:
	add	r4, r5, r6
	mov	r2, #5
.L_73966:
	ldmia	r4!, {r0}
	stmia	r1!, {r0}
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73966
	add	r5, #24
	add	r3, #1
	cmp	r3, #6
	ble	.L_73962
	mov	r3, #0
	ldr	r5, .L_73a10
.L_7397c:
	add	r4, r3, #1
	lsl	r0, r3, #4
	add	r3, r0, r5
	mov	r2, #3
.L_73984:
	ldmia	r3!, {r0}
	stmia	r1!, {r0}
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73984
	add	r3, r4, #0
	cmp	r3, #6
	ble	.L_7397c
	ldr	r3, .L_73a14
	mov	r2, #2
.L_73998:
	ldrh	r0, [r3, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	add	r3, #2
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73998
	mov	r2, #3
	mov	r4, #0
	mov	r3, #3
.L_739ac:
	strb	r4, [r1, #0]
	add	r1, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_739ac
	ldrb	r0, [r7, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	add	r2, r1, #0
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_739dc
	mov	r4, #0
	mov	r3, #3
.L_739ce:
	strb	r4, [r1, #0]
	add	r1, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_739ce
.L_739dc:
	add	r0, r1, #0
	mov	r1, ip
	bl	func_8073B24
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_739ec:
	.4byte	0x02038118
.L_739f0:
	.4byte	gDifficulty
.L_739f4:
	.4byte	gCurrentPassage
.L_739f8:
	.4byte	gCurrentStageNumber
.L_739fc:
	.4byte	gMedalCount
.L_73a00:
	.4byte	gTotalScore
.L_73a04:
	.4byte	gUnk_300001C
.L_73a08:
	.4byte	sUnk_840094C
.L_73a0c:
	.4byte	gCurrentCollection
.L_73a10:
	.4byte	gHighScoreTable
.L_73a14:
	.4byte	gMinigameHighScores


thumb_func_start func_8073A18
func_8073A18:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_73ae8
	ldr	r1, .L_73aec
	ldrb	r0, [r3, #0]
	strb	r0, [r1, #0]
	add	r3, #1
	ldr	r1, .L_73af0
	ldrb	r0, [r3, #0]
	strb	r0, [r1, #0]
	add	r3, #1
	ldr	r1, .L_73af4
	ldrb	r0, [r3, #0]
	strb	r0, [r1, #0]
	add	r3, #1
	add	r1, r3, #0
	ldr	r4, .L_73af8
	ldr	r5, .L_73afc
	ldr	r7, .L_73b00
	mov	r2, #3
.L_73a3e:
	add	r3, #1
	add	r1, #1
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	bne	.L_73a3e
	ldrh	r0, [r3, #0]
	strh	r0, [r4, #0]
	add	r3, #2
	add	r1, r3, #0
	mov	r0, #3
	and	r0, r3
	cmp	r0, #0
	beq	.L_73a68
	mov	r2, #3
.L_73a5c:
	add	r3, #1
	add	r1, #1
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	bne	.L_73a5c
.L_73a68:
	ldmia	r3!, {r0}
	str	r0, [r5, #0]
	mov	r2, #0
	ldr	r6, .L_73b04
	mov	r5, #0
.L_73a72:
	add	r4, r5, r6
	mov	r1, #5
.L_73a76:
	ldmia	r3!, {r0}
	stmia	r4!, {r0}
	sub	r1, #1
	cmp	r1, #0
	bge	.L_73a76
	add	r5, #24
	add	r2, #1
	cmp	r2, #6
	ble	.L_73a72
	mov	r2, #0
	ldr	r5, .L_73b08
.L_73a8c:
	add	r4, r2, #1
	lsl	r0, r2, #4
	add	r2, r0, r5
	mov	r1, #3
.L_73a94:
	ldmia	r3!, {r0}
	stmia	r2!, {r0}
	sub	r1, #1
	cmp	r1, #0
	bge	.L_73a94
	add	r2, r4, #0
	cmp	r2, #6
	ble	.L_73a8c
	ldr	r2, .L_73b0c
	mov	r1, #2
.L_73aa8:
	ldrh	r0, [r3, #0]
	strh	r0, [r2, #0]
	add	r3, #2
	add	r2, #2
	sub	r1, #1
	cmp	r1, #0
	bge	.L_73aa8
	mov	r1, #3
	mov	r2, #3
.L_73aba:
	add	r3, #1
	add	r1, #1
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	bne	.L_73aba
	ldrb	r0, [r3, #0]
	strb	r0, [r7, #0]
	add	r3, #1
	add	r1, r3, #0
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_73ae2
	mov	r2, #3
.L_73ad8:
	add	r1, #1
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	bne	.L_73ad8
.L_73ae2:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_73ae8:
	.4byte	0x02038118
.L_73aec:
	.4byte	gDifficulty
.L_73af0:
	.4byte	gCurrentPassage
.L_73af4:
	.4byte	gCurrentStageNumber
.L_73af8:
	.4byte	gMedalCount
.L_73afc:
	.4byte	gTotalScore
.L_73b00:
	.4byte	gUnk_300001C
.L_73b04:
	.4byte	gCurrentCollection
.L_73b08:
	.4byte	gHighScoreTable
.L_73b0c:
	.4byte	gMinigameHighScores


thumb_func_start func_8073B10
func_8073B10:
	add	r3, r0, #0
	mov	r2, #0
.L_73b14:
	add	r0, r1, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #0]
	add	r2, #1
	add	r3, #1
	cmp	r2, #15
	ble	.L_73b14
	bx	lr


thumb_func_start func_8073B24
func_8073B24:
	add	r3, r0, #0
	mov	r2, #0
.L_73b28:
	add	r0, r1, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #0]
	add	r2, #1
	add	r3, #1
	cmp	r2, #7
	ble	.L_73b28
	bx	lr


thumb_func_start func_8073B38
func_8073B38:
	push	{r4, r5, lr}
	sub	sp, #16
	mov	r5, #0
	ldr	r0, .L_73b94
	strb	r5, [r0, #0]
	ldr	r0, .L_73b98
	ldr	r4, .L_73b9c
	add	r1, r4, #0
	mov	r2, #16
	bl	SramWriteChecked
	neg	r1, r0
	orr	r1, r0
	lsr	r5, r1, #31
	add	r0, r4, #0
	mov	r1, sp
	mov	r2, #16
	bl	SramWriteUnchecked
	mov	r2, #0
.L_73b60:
	mov	r0, sp
	add	r1, r0, r2
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	add	r2, #1
	cmp	r2, #15
	ble	.L_73b60
	ldr	r1, .L_73b9c
	mov	r0, sp
	mov	r2, #16
	bl	SramWriteChecked
	cmp	r0, #0
	beq	.L_73b82
	mov	r0, #2
	orr	r5, r0
.L_73b82:
	ldr	r1, .L_73b94
	neg	r0, r5
	orr	r0, r5
	lsr	r0, r0, #31
	strb	r0, [r1, #0]
	add	sp, #16
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_73b94:
	.4byte	gUnk_3000014
.L_73b98:
	.4byte	sUnk_840093C
.L_73b9c:
	.4byte	0x0e000980


thumb_func_start func_8073BA0
func_8073BA0:
	push	{lr}
	ldr	r2, .L_73bcc
	ldr	r1, .L_73bd0
	ldr	r3, .L_73bd4
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_73bd8
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #4]
	ldr	r0, .L_73bdc
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	bl	func_8000F90
	pop	{r0}
	bx	r0
.L_73bcc:
	.4byte	0x040000d4
.L_73bd0:
	.4byte	sUnk_84009BC
.L_73bd4:
	.4byte	gSelectedSaveFile
.L_73bd8:
	.4byte	sUnk_84009C4
.L_73bdc:
	.4byte	0x80000100


thumb_func_start func_8073BE0
func_8073BE0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r1, #0
	ldr	r4, .L_73c30
	str	r0, [r4, #0]
	str	r1, [r4, #4]
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	ldr	r0, .L_73c34
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_73c38
	strb	r1, [r0, #0]
	ldr	r0, .L_73c3c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_73c0a
	bl	func_800101C
.L_73c0a:
	add	r6, r4, #0
	mov	r8, r6
	mov	r7, #0
.L_73c10:
	lsr	r4, r7, #24
	add	r0, r4, #0
	bl	func_8073CDC
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #2
	bne	.L_73c44
	add	r0, r4, #0
	bl	func_80742D8
	cmp	r0, #0
	beq	.L_73c40
	mov	r0, #3
	b	.L_73c42
	.align	2, 0
.L_73c30:
	.4byte	gUnk_3003BF8
.L_73c34:
	.4byte	gSelectedSaveFile
.L_73c38:
	.4byte	gSaveFlag
.L_73c3c:
	.4byte	gUnk_3000014
.L_73c40:
	mov	r0, #1
.L_73c42:
	strb	r0, [r6, #0]
.L_73c44:
	lsr	r0, r7, #24
	add	r1, r5, #0
	bl	func_8073E9C
	cmp	r0, #0
	bne	.L_73c54
	mov	r0, #2
	strb	r0, [r6, #0]
.L_73c54:
	add	r6, #8
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	add	r7, r7, r0
	mov	r0, r8
	add	r0, #8
	cmp	r6, r0
	ble	.L_73c10
	ldr	r4, .L_73c94
	mov	r0, #0
	strb	r0, [r4, #0]
	bl	func_8074140
	add	r1, r0, #0
	strb	r1, [r4, #0]
	ldr	r3, .L_73c98
	ldr	r2, .L_73c9c
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_73ca4
	ldr	r0, .L_73ca0
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #1]
	strb	r1, [r0, #0]
	b	.L_73cc4
.L_73c94:
	.4byte	gSelectedSaveFile
.L_73c98:
	.4byte	gSaveFlag
.L_73c9c:
	.4byte	gUnk_3003BF8
.L_73ca0:
	.4byte	gHasTemporarySave
.L_73ca4:
	lsl	r0, r1, #24
	mov	r1, #0
	cmp	r0, #0
	bne	.L_73cae
	mov	r1, #1
.L_73cae:
	lsl	r0, r1, #3
	add	r2, r0, r2
	ldrb	r0, [r2, #0]
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_73cc4
	strb	r1, [r4, #0]
	ldr	r1, .L_73cd4
	ldrb	r0, [r2, #1]
	strb	r0, [r1, #0]
.L_73cc4:
	ldr	r1, .L_73cd8
	mov	r0, #0
	strb	r0, [r1, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_73cd4:
	.4byte	gHasTemporarySave
.L_73cd8:
	.4byte	gUnk_300001C


thumb_func_start func_8073CDC
func_8073CDC:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r0, .L_73d28
	strb	r4, [r0, #0]
	mov	r0, #0
	add	r1, r4, #0
	bl	func_8073DA4
	add	r5, r0, #0
	mov	r0, #1
	add	r1, r4, #0
	bl	func_8073DA4
	add	r3, r0, #0
	cmp	r5, #0
	bne	.L_73d40
	ldr	r2, .L_73d2c
	ldr	r0, .L_73d30
	lsl	r1, r4, #2
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_73d34
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	str	r0, [r2, #4]
	ldr	r0, .L_73d38
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	bl	func_8000F90
	ldr	r0, .L_73d3c
	lsl	r1, r4, #3
	add	r0, r1, r0
	strb	r5, [r0, #5]
	b	.L_73d78
	.align	2, 0
.L_73d28:
	.4byte	gSelectedSaveFile
.L_73d2c:
	.4byte	0x040000d4
.L_73d30:
	.4byte	sUnk_84009BC
.L_73d34:
	.4byte	sUnk_84009C4
.L_73d38:
	.4byte	0x80000100
.L_73d3c:
	.4byte	gUnk_3003BF8
.L_73d40:
	cmp	r5, #1
	bne	.L_73d58
	ldr	r0, .L_73d54
	lsl	r1, r4, #3
	add	r2, r1, r0
	mov	r0, #2
	strb	r0, [r2, #5]
	cmp	r3, #0
	beq	.L_73d78
	b	.L_73d74
.L_73d54:
	.4byte	gUnk_3003BF8
.L_73d58:
	ldr	r0, .L_73d6c
	lsl	r1, r4, #3
	add	r2, r1, r0
	mov	r0, #4
	strb	r0, [r2, #5]
	cmp	r3, #0
	bne	.L_73d70
	mov	r0, #2
	b	.L_73d76
	.align	2, 0
.L_73d6c:
	.4byte	gUnk_3003BF8
.L_73d70:
	cmp	r3, #1
	bne	.L_73d78
.L_73d74:
	mov	r0, #3
.L_73d76:
	strb	r0, [r2, #5]
.L_73d78:
	ldr	r0, .L_73d90
	add	r4, r1, r0
	ldrb	r0, [r4, #5]
	cmp	r0, #4
	bne	.L_73d94
	bl	func_8000F90
	bl	func_8000F64
	mov	r0, #0
	strb	r0, [r4, #5]
	b	.L_73d9e
.L_73d90:
	.4byte	gUnk_3003BF8
.L_73d94:
	cmp	r5, #0
	beq	.L_73d9c
	mov	r0, #1
	b	.L_73d9e
.L_73d9c:
	mov	r0, #2
.L_73d9e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8073DA4
func_8073DA4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	lsl	r0, r0, #24
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	mov	r6, #0
	mov	ip, r6
	mov	r7, #0
	cmp	r0, #0
	bne	.L_73dc4
	ldr	r1, .L_73dc0
	b	.L_73dc6
.L_73dc0:
	.4byte	sUnk_84009BC
.L_73dc4:
	ldr	r1, .L_73e84
.L_73dc6:
	lsl	r0, r2, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldr	r1, .L_73e88
	ldr	r0, [r5, #16]
	str	r0, [r1, #0]
	add	r3, r5, #0
	mov	r2, #0
	mov	r4, #14
.L_73dd8:
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	sub	r4, #1
	cmp	r4, #0
	bge	.L_73dd8
	ldr	r1, [r1, #0]
	cmp	r1, r2
	bne	.L_73e0c
	ldr	r0, [r5, #20]
	mvn	r0, r0
	cmp	r1, r0
	beq	.L_73e10
.L_73e0c:
	mov	r0, #1
	orr	r6, r0
.L_73e10:
	add	r1, r5, #0
	mov	r4, #0
	ldr	r0, .L_73e8c
	mov	r8, r0
	mov	r2, #1
.L_73e1a:
	mov	r3, r8
	add	r0, r4, r3
	ldrb	r0, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r0, r3
	beq	.L_73e2c
	mov	r0, ip
	orr	r0, r2
	mov	ip, r0
.L_73e2c:
	add	r4, #1
	add	r1, #1
	cmp	r4, #15
	ble	.L_73e1a
	mov	r3, #176	@ 0xb0
	lsl	r3, r3, #1
	add	r1, r5, r3
	mov	r4, #0
	ldr	r0, .L_73e90
	mov	r8, r0
	mov	r2, #1
.L_73e42:
	mov	r3, r8
	add	r0, r4, r3
	ldrb	r0, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r0, r3
	beq	.L_73e50
	orr	r7, r2
.L_73e50:
	add	r4, #1
	add	r1, #1
	cmp	r4, #15
	ble	.L_73e42
	mov	r1, ip
	add	r0, r1, r7
	orr	r6, r0
	cmp	r6, #1
	ble	.L_73e74
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r0, .L_73e94
	mov	r3, sp
	str	r3, [r0, #0]
	str	r5, [r0, #4]
	ldr	r1, .L_73e98
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
.L_73e74:
	add	r0, r6, #0
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_73e84:
	.4byte	sUnk_84009C4
.L_73e88:
	.4byte	gUnk_3000040
.L_73e8c:
	.4byte	sUnk_8400954
.L_73e90:
	.4byte	sUnk_8400964
.L_73e94:
	.4byte	0x040000d4
.L_73e98:
	.4byte	0x85000078


thumb_func_start func_8073E9C
func_8073E9C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	mov	r9, r1
	mov	r6, #0
	mov	r8, r6
	mov	ip, r6
	ldr	r0, .L_73f84
	strb	r7, [r0, #0]
	ldr	r1, .L_73f88
	lsl	r0, r7, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldr	r1, .L_73f8c
	ldr	r0, [r5, #16]
	str	r0, [r1, #0]
	add	r3, r5, #0
	mov	r2, #0
	mov	r4, #224	@ 0xe0
	lsl	r4, r4, #1
.L_73ed2:
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	ldmia	r3!, {r0}
	add	r2, r2, r0
	sub	r4, #1
	cmp	r4, #0
	bne	.L_73ed2
	ldr	r1, [r1, #0]
	cmp	r1, r2
	bne	.L_73f06
	ldr	r0, [r5, #20]
	mvn	r0, r0
	cmp	r1, r0
	beq	.L_73f0a
.L_73f06:
	mov	r0, #1
	orr	r6, r0
.L_73f0a:
	add	r1, r5, #0
	mov	r4, #0
	lsl	r7, r7, #3
	mov	sl, r7
	ldr	r3, .L_73f90
	mov	r2, #1
.L_73f16:
	add	r0, r4, r3
	ldrb	r0, [r0, #0]
	ldrb	r7, [r1, #0]
	cmp	r0, r7
	beq	.L_73f26
	mov	r0, r8
	orr	r0, r2
	mov	r8, r0
.L_73f26:
	add	r4, #1
	add	r1, #1
	cmp	r4, #15
	ble	.L_73f16
	mov	r7, #168	@ 0xa8
	lsl	r7, r7, #4
	add	r1, r5, r7
	mov	r4, #0
	ldr	r3, .L_73f94
	mov	r2, #1
.L_73f3a:
	add	r0, r4, r3
	ldrb	r0, [r0, #0]
	ldrb	r7, [r1, #0]
	cmp	r0, r7
	beq	.L_73f4a
	mov	r0, ip
	orr	r0, r2
	mov	ip, r0
.L_73f4a:
	add	r4, #1
	add	r1, #1
	cmp	r4, #15
	ble	.L_73f3a
	mov	r0, r8
	add	r0, ip
	orr	r6, r0
	mov	r1, r9
	cmp	r1, #2
	bne	.L_73f62
	cmp	r6, #1
	ble	.L_73fa4
.L_73f62:
	mov	r4, #0
	str	r4, [sp, #0]
	ldr	r0, .L_73f98
	mov	r7, sp
	str	r7, [r0, #0]
	str	r5, [r0, #4]
	ldr	r1, .L_73f9c
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
	bl	func_8000FBC
	ldr	r0, .L_73fa0
	add	r0, sl
	strb	r4, [r0, #1]
	mov	r6, #3
	b	.L_73fc2
	.align	2, 0
.L_73f84:
	.4byte	gSelectedSaveFile
.L_73f88:
	.4byte	sUnk_84009CC
.L_73f8c:
	.4byte	gUnk_3000040
.L_73f90:
	.4byte	sUnk_8400974
.L_73f94:
	.4byte	sUnk_8400984
.L_73f98:
	.4byte	0x040000d4
.L_73f9c:
	.4byte	0x85000e00
.L_73fa0:
	.4byte	gUnk_3003BF8
.L_73fa4:
	cmp	r6, #1
	bne	.L_73fb4
	ldr	r0, .L_73fb0
	add	r0, sl
	strb	r6, [r0, #5]
	b	.L_73fc2
.L_73fb0:
	.4byte	gUnk_3003BF8
.L_73fb4:
	ldr	r0, .L_73fd4
	add	r0, sl
	ldrb	r2, [r5, #24]
	mov	r1, #128	@ 0x80
	orr	r1, r2
	strb	r1, [r0, #1]
	mov	r6, #0
.L_73fc2:
	add	r0, r6, #0
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_73fd4:
	.4byte	gUnk_3003BF8


thumb_func_start func_8073FD8
func_8073FD8:
	push	{r4, lr}
	ldr	r0, .L_74020
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_74004
	ldr	r1, .L_74024
	ldr	r2, .L_74028
	ldr	r0, [r2, #4]
	str	r0, [r1, #0]
	ldr	r0, [r2, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_7402c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_74030
	ldr	r0, [r2, #4]
	str	r0, [r1, #0]
	ldr	r0, [r2, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_74034
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_74004:
	ldr	r4, .L_74038
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_74010
	bl	func_8073A18
.L_74010:
	ldrb	r0, [r4, #0]
	cmp	r0, #3
	bne	.L_7401a
	bl	func_8074394
.L_7401a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_74020:
	.4byte	gSelectedSaveFile
.L_74024:
	.4byte	0x040000d4
.L_74028:
	.4byte	sUnk_84009BC
.L_7402c:
	.4byte	0x80000200
.L_74030:
	.4byte	sUnk_84009CC
.L_74034:
	.4byte	0x80001c00
.L_74038:
	.4byte	gSaveFlag


thumb_func_start func_807403C
func_807403C:
	push	{lr}
	ldr	r0, .L_74070
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_74068
	ldr	r1, .L_74074
	ldr	r2, .L_74078
	ldr	r0, [r2, #4]
	str	r0, [r1, #0]
	ldr	r0, [r2, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_7407c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_74080
	ldr	r0, [r2, #4]
	str	r0, [r1, #0]
	ldr	r0, [r2, #0]
	str	r0, [r1, #4]
	ldr	r0, .L_74084
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_74068:
	bl	func_8073A18
	pop	{r0}
	bx	r0
.L_74070:
	.4byte	gSelectedSaveFile
.L_74074:
	.4byte	0x040000d4
.L_74078:
	.4byte	sUnk_84009BC
.L_7407c:
	.4byte	0x80000200
.L_74080:
	.4byte	sUnk_84009CC
.L_74084:
	.4byte	0x80001c00


thumb_func_start func_8074088
func_8074088:
	push	{r4, r5, lr}
	ldr	r2, .L_7412c
	mov	r0, #1
	strb	r0, [r2, #0]
	add	r2, #1
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #0
	strb	r0, [r2, #0]
	add	r2, #1
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #255	@ 0xff
	strb	r0, [r2, #0]
	add	r2, #1
	strb	r0, [r2, #0]
	add	r2, #1
	ldr	r1, .L_74130
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r3, #0
	ldr	r5, .L_74134
	add	r4, r1, #0
.L_740bc:
	ldrb	r0, [r4, #0]
	lsl	r1, r0, #3
	add	r1, r1, r0
	add	r1, r3, r1
	add	r1, r1, r5
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r3, #1
	add	r2, #1
	cmp	r3, #8
	ble	.L_740bc
	mov	r3, #0
	ldr	r1, .L_74138
.L_740d6:
	add	r0, r3, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	add	r3, #1
	add	r2, #1
	cmp	r3, #15
	ble	.L_740d6
	mov	r2, #0
	ldr	r1, .L_7412c
	mov	r3, #3
.L_740ea:
	ldrh	r0, [r1, #0]
	add	r0, r2, r0
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	add	r1, #2
	sub	r3, #1
	cmp	r3, #0
	bge	.L_740ea
	ldr	r1, .L_7413c
	strh	r2, [r1, #0]
	mvn	r0, r2
	strh	r0, [r1, #2]
	bl	func_8000FE8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7412c:
	.4byte	0x02038080
.L_74130:
	.4byte	gSelectedSaveFile
.L_74134:
	.4byte	sUnk_84009DC
.L_74138:
	.4byte	sUnk_84009F0
.L_7413c:
	.4byte	0x02038082


thumb_func_start func_8074140
func_8074140:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_741d4
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_741e8
	mov	r4, #0
	ldr	r1, .L_741d4
	mov	r3, #3
.L_74150:
	ldrh	r0, [r1, #0]
	add	r0, r4, r0
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r6, [r1, #0]
	add	r0, r0, r6
	lsl	r0, r0, #16
	add	r1, #2
	lsr	r0, r0, #16
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r1, #2
	sub	r3, #1
	cmp	r3, #0
	bge	.L_74150
	ldr	r1, .L_741d8
	ldrh	r0, [r1, #0]
	cmp	r0, r4
	bne	.L_741e8
	ldr	r2, .L_741dc
	ldrb	r5, [r2, #0]
	add	r2, #1
	mov	r4, #0
	ldr	r1, .L_741e0
	lsl	r0, r5, #3
	add	r0, r0, r5
	add	r1, r0, r1
	mov	r3, #8
.L_74198:
	ldrb	r0, [r2, #0]
	ldrb	r6, [r1, #0]
	cmp	r0, r6
	beq	.L_741a6
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
.L_741a6:
	add	r1, #1
	sub	r3, #1
	add	r2, #1
	cmp	r3, #0
	bge	.L_74198
	mov	r3, #0
	ldr	r6, .L_741e4
.L_741b4:
	add	r1, r3, r6
	ldrb	r0, [r2, #0]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_741c4
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
.L_741c4:
	add	r3, #1
	add	r2, #1
	cmp	r3, #15
	ble	.L_741b4
	cmp	r4, #0
	bne	.L_741e8
	add	r0, r5, #0
	b	.L_741ea
.L_741d4:
	.4byte	0x02038080
.L_741d8:
	.4byte	0x02038082
.L_741dc:
	.4byte	0x02038086
.L_741e0:
	.4byte	sUnk_84009DC
.L_741e4:
	.4byte	sUnk_84009F0
.L_741e8:
	mov	r0, #0
.L_741ea:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_80741F0
func_80741F0:
	push	{r4, r5, lr}
	ldr	r0, .L_74220
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #6
	bhi	.L_742b6
	ldr	r0, .L_74224
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #5
	bhi	.L_7422c
	ldr	r3, .L_74228
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	cmp	r0, #50	@ 0x32
	beq	.L_742b6
	b	.L_74230
.L_74220:
	.4byte	gCurrentPassage
.L_74224:
	.4byte	gCurrentStageNumber
.L_74228:
	.4byte	sUnk_86391C4
.L_7422c:
	mov	r0, #6
	strb	r0, [r4, #0]
.L_74230:
	ldr	r1, .L_742bc
	mov	r0, #1
	strb	r0, [r1, #0]
	add	r1, #1
	ldrb	r0, [r5, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	add	r1, #1
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_742c0
	mov	r2, #0
	ldr	r4, .L_742c4
	add	r3, r5, #0
.L_74252:
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r2, r0
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r2, #1
	add	r1, #1
	cmp	r2, #7
	ble	.L_74252
	mov	r2, #0
	ldr	r4, .L_742c8
	ldr	r3, .L_742cc
.L_7426c:
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r2, r0
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	add	r2, #1
	add	r1, #1
	cmp	r2, #7
	ble	.L_7426c
	ldr	r3, .L_742d0
	mov	r0, #0
	stmia	r3!, {r0}
	sub	r0, #1
	stmia	r3!, {r0}
	ldr	r0, .L_742d4
	str	r0, [r3, #0]
	mov	r1, #0
	ldr	r3, .L_742bc
	mov	r2, #1
.L_74294:
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	ldmia	r3!, {r0}
	add	r1, r1, r0
	sub	r2, #1
	cmp	r2, #0
	bge	.L_74294
	ldr	r3, .L_742d0
	stmia	r3!, {r1}
	mvn	r0, r1
	str	r0, [r3, #0]
	bl	func_8000F3C
.L_742b6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_742bc:
	.4byte	0x020382e0
.L_742c0:
	.4byte	0x020382f0
.L_742c4:
	.4byte	sUnk_8400A00
.L_742c8:
	.4byte	sUnk_8400A30
.L_742cc:
	.4byte	gCurrentStageNumber
.L_742d0:
	.4byte	0x020382e4
.L_742d4:
	.4byte	0x3164724e


thumb_func_start func_80742D8
func_80742D8:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	ldr	r1, .L_74310
	lsr	r0, r0, #22
	add	r0, r0, r1
	ldr	r2, [r0, #0]
	add	r7, r2, #0
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_7438c
	add	r2, #1
	ldrb	r6, [r2, #0]
	ldrb	r5, [r2, #1]
	cmp	r6, #6
	bhi	.L_7438c
	cmp	r5, #5
	bhi	.L_74318
	ldr	r2, .L_74314
	lsl	r1, r5, #2
	lsl	r0, r6, #1
	add	r0, r0, r6
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	cmp	r0, #50	@ 0x32
	bne	.L_7431c
	b	.L_7438c
.L_74310:
	.4byte	sUnk_84009D4
.L_74314:
	.4byte	sUnk_86391C4
.L_74318:
	cmp	r5, #6
	bhi	.L_7438c
.L_7431c:
	mov	r3, #0
	add	r1, r7, #0
	ldr	r2, [r7, #4]
	mov	r4, #1
.L_74324:
	ldmia	r1!, {r0}
	add	r3, r3, r0
	ldmia	r1!, {r0}
	add	r3, r3, r0
	ldmia	r1!, {r0}
	add	r3, r3, r0
	ldmia	r1!, {r0}
	add	r3, r3, r0
	sub	r4, #1
	cmp	r4, #0
	bge	.L_74324
	cmp	r2, r3
	bne	.L_7438c
	mov	r3, #0
	add	r2, r7, #0
	add	r2, #16
	lsl	r1, r6, #3
	lsl	r5, r5, #3
	ldr	r0, .L_74384
	add	r1, r1, r0
	mov	r4, #7
.L_7434e:
	ldrb	r0, [r2, #0]
	ldrb	r6, [r1, #0]
	cmp	r0, r6
	beq	.L_74358
	add	r3, #1
.L_74358:
	add	r1, #1
	sub	r4, #1
	add	r2, #1
	cmp	r4, #0
	bge	.L_7434e
	ldr	r0, .L_74388
	add	r1, r5, r0
	mov	r4, #7
.L_74368:
	ldrb	r0, [r2, #0]
	ldrb	r5, [r1, #0]
	cmp	r0, r5
	beq	.L_74372
	add	r3, #1
.L_74372:
	add	r1, #1
	sub	r4, #1
	add	r2, #1
	cmp	r4, #0
	bge	.L_74368
	cmp	r3, #0
	bne	.L_7438c
	mov	r0, #1
	b	.L_7438e
.L_74384:
	.4byte	sUnk_8400A00
.L_74388:
	.4byte	sUnk_8400A30
.L_7438c:
	mov	r0, #0
.L_7438e:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8074394
func_8074394:
	ldr	r0, .L_743ac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_743aa
	ldr	r0, .L_743b0
	ldrb	r1, [r0, #0]
	ldrb	r2, [r0, #1]
	ldr	r0, .L_743b4
	strb	r1, [r0, #0]
	ldr	r0, .L_743b8
	strb	r2, [r0, #0]
.L_743aa:
	bx	lr
.L_743ac:
	.4byte	0x020382e0
.L_743b0:
	.4byte	0x020382e1
.L_743b4:
	.4byte	gCurrentPassage
.L_743b8:
	.4byte	gCurrentStageNumber


.section .rodata

.global sUnk_840093C
sUnk_840093C:
	.ascii "Wari4_AGB_BackUp"

.global sUnk_840094C
sUnk_840094C:
	.ascii "SAVE_END"

.global sUnk_8400954
sUnk_8400954:
	.ascii "AutoSAVEWar4key1"

.global sUnk_8400964
sUnk_8400964:
	.ascii "key2AutoSAVEWar4"

.global sUnk_8400974
sUnk_8400974:
	.ascii "DisContinueKey1b"

.global sUnk_8400984
sUnk_8400984:
	.ascii "DisContinue2bKey"

.global sUnk_8400994
sUnk_8400994:
	.ascii "AGBWarioLand-USver00"

.global sUnk_84009A8
sUnk_84009A8:
	.ascii "WARIOLANDNIPPONVer00"

.global sUnk_84009BC
sUnk_84009BC:
	.4byte 0x2038100, 0x2038500

.global sUnk_84009C4
sUnk_84009C4:
	.4byte 0x2038300, 0x2038700

.global sUnk_84009CC
sUnk_84009CC:
	.4byte 0x2039000, 0x203C800

.global sUnk_84009D4
sUnk_84009D4:
	.4byte 0x20382E0, 0x20386E0

.global sUnk_84009DC
sUnk_84009DC:
	.ascii "WAR4SAVEA", "BSAVEWAR4"

.align 2, 0

.global sUnk_84009F0
sUnk_84009F0:
	.ascii "WARABGSELECTSAVE"

.global sUnk_8400A00
sUnk_8400A00:
	.ascii " FIRST  ", "  GREEN ", "   RED  ", " YELLOW ", "    BLUE", " GOLDEN "

.global sUnk_8400A30
sUnk_8400A30:
	.ascii "StAGe000", "01sTAgEn", "WarioSt2", "AgbWar03", "STe4boSS", "MinIGaMe", "sElecTWn"
