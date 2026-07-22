.include "macros.s.inc"


thumb_func_start func_80701F4
func_80701F4:
	push	{lr}
	bl	func_8070208
	bl	func_806D3A4
	bl	func_8070248
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8070208
func_8070208:
	push	{r4, r5, lr}
	ldr	r4, .L_70234
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #0]
	ldr	r0, .L_70238
	str	r0, [r4, #4]
	ldr	r5, .L_7023c
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	ldr	r0, .L_70240
	str	r0, [r4, #0]
	ldr	r0, .L_70244
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70234:
	.4byte	0x040000d4
.L_70238:
	.4byte	0x02020400
.L_7023c:
	.4byte	0x80000100
.L_70240:
	.4byte	0x05000200
.L_70244:
	.4byte	0x02020600


thumb_func_start func_8070248
func_8070248:
	push	{r4, r5, lr}
	ldr	r4, .L_70274
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #0]
	ldr	r0, .L_70278
	str	r0, [r4, #4]
	ldr	r5, .L_7027c
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	ldr	r0, .L_70280
	str	r0, [r4, #0]
	ldr	r0, .L_70284
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70274:
	.4byte	0x040000d4
.L_70278:
	.4byte	0x02020000
.L_7027c:
	.4byte	0x80000100
.L_70280:
	.4byte	0x05000200
.L_70284:
	.4byte	0x02020200


thumb_func_start func_8070288
func_8070288:
	push	{r4, r5, lr}
	ldr	r4, .L_702b0
	ldr	r0, .L_702b4
	str	r0, [r4, #0]
	ldr	r0, .L_702b8
	str	r0, [r4, #4]
	ldr	r5, .L_702bc
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	ldr	r0, .L_702c0
	str	r0, [r4, #0]
	ldr	r0, .L_702c4
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_702b0:
	.4byte	0x040000d4
.L_702b4:
	.4byte	0x02020400
.L_702b8:
	.4byte	0x02020000
.L_702bc:
	.4byte	0x80000100
.L_702c0:
	.4byte	0x02020600
.L_702c4:
	.4byte	0x02020200


thumb_func_start func_80702C8
func_80702C8:
	push	{r4, r5, lr}
	ldr	r4, .L_702f0
	ldr	r0, .L_702f4
	str	r0, [r4, #0]
	ldr	r0, .L_702f8
	str	r0, [r4, #4]
	ldr	r5, .L_702fc
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	ldr	r0, .L_70300
	str	r0, [r4, #0]
	ldr	r0, .L_70304
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_702f0:
	.4byte	0x040000d4
.L_702f4:
	.4byte	0x02020800
.L_702f8:
	.4byte	0x02020000
.L_702fc:
	.4byte	0x80000100
.L_70300:
	.4byte	0x02020a00
.L_70304:
	.4byte	0x02020200


thumb_func_start func_8070308
func_8070308:
	push	{r4, r5, lr}
	ldr	r4, .L_70330
	ldr	r0, .L_70334
	str	r0, [r4, #0]
	ldr	r0, .L_70338
	str	r0, [r4, #4]
	ldr	r5, .L_7033c
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	ldr	r0, .L_70340
	str	r0, [r4, #0]
	ldr	r0, .L_70344
	str	r0, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_70330:
	.4byte	0x040000d4
.L_70334:
	.4byte	0x02020800
.L_70338:
	.4byte	0x02020000
.L_7033c:
	.4byte	0x80000100
.L_70340:
	.4byte	0x02020600
.L_70344:
	.4byte	0x02020200


thumb_func_start func_8070348
func_8070348:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	mov	r1, sp
	ldr	r0, .L_703d0
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldr	r7, .L_703d4
	ldr	r6, .L_703d8
	ldr	r0, [sp, #0]
	mov	sl, r0
	ldr	r2, [sp, #4]
	mov	r9, r2
	ldr	r3, [sp, #8]
	mov	r8, r3
	mov	r5, #255	@ 0xff
.L_7036e:
	ldrh	r1, [r6, #0]
	mov	r3, #31
	and	r3, r1
	mov	r4, #248	@ 0xf8
	lsl	r4, r4, #2
	add	r0, r4, #0
	add	r2, r1, #0
	and	r2, r0
	lsr	r2, r2, #5
	mov	r4, #248	@ 0xf8
	lsl	r4, r4, #7
	add	r0, r4, #0
	and	r1, r0
	lsr	r4, r1, #10
	mov	r0, sl
	mul	r0, r3
	mov	r1, r9
	mul	r1, r2
	add	r0, r0, r1
	mov	r1, r8
	mul	r1, r4
	add	r0, r0, r1
	mov	r1, #3
	bl	__divsi3
	cmp	r0, #31
	ble	.L_703a6
	mov	r0, #31
.L_703a6:
	mov	r4, #31
	and	r4, r0
	lsl	r0, r4, #5
	orr	r0, r4
	lsl	r1, r4, #10
	orr	r0, r1
	strh	r0, [r7, #0]
	sub	r5, #1
	add	r7, #2
	add	r6, #2
	cmp	r5, #0
	bge	.L_7036e
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_703d0:
	.4byte	sUnk_83F9E00
.L_703d4:
	.4byte	0x02020800
.L_703d8:
	.4byte	0x02020400


thumb_func_start func_80703DC
func_80703DC:
	ldr	r3, .L_70428
	ldrb	r2, [r3, #4]
	cmp	r2, #0
	beq	.L_70424
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_70404
	ldr	r1, .L_7042c
	ldr	r0, .L_70430
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_70434
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	and	r0, r2
	strb	r0, [r3, #4]
.L_70404:
	ldrb	r2, [r3, #4]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_70424
	ldr	r1, .L_7042c
	ldr	r0, .L_70438
	str	r0, [r1, #0]
	ldr	r0, .L_7043c
	str	r0, [r1, #4]
	ldr	r0, .L_70434
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #253	@ 0xfd
	and	r0, r2
	strb	r0, [r3, #4]
.L_70424:
	bx	lr
	.align	2, 0
.L_70428:
	.4byte	gColorFading
.L_7042c:
	.4byte	0x040000d4
.L_70430:
	.4byte	0x02020000
.L_70434:
	.4byte	0x80000100
.L_70438:
	.4byte	0x02020200
.L_7043c:
	.4byte	0x05000200


thumb_func_start ColorFadingProcess
ColorFadingProcess:
	push	{r4, lr}
	ldr	r3, .L_7048c
	ldrb	r2, [r3, #4]
	cmp	r2, #0
	beq	.L_704a4
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_7046a
	ldr	r1, .L_70490
	ldr	r0, .L_70494
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_70498
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	and	r0, r2
	strb	r0, [r3, #4]
.L_7046a:
	ldrb	r2, [r3, #4]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_70528
	ldr	r1, .L_70490
	ldr	r0, .L_7049c
	str	r0, [r1, #0]
	ldr	r0, .L_704a0
	str	r0, [r1, #4]
	ldr	r0, .L_70498
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #253	@ 0xfd
	and	r0, r2
	strb	r0, [r3, #4]
	b	.L_70528
.L_7048c:
	.4byte	gColorFading
.L_70490:
	.4byte	0x040000d4
.L_70494:
	.4byte	0x02020000
.L_70498:
	.4byte	0x80000100
.L_7049c:
	.4byte	0x02020200
.L_704a0:
	.4byte	0x05000200
.L_704a4:
	ldr	r4, .L_704dc
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	beq	.L_704ec
	mov	r0, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L_70528
	ldr	r2, .L_704e0
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_704e4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_704e8
	add	r0, r0, r1
	str	r0, [r2, #4]
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #253	@ 0xfd
	b	.L_70524
.L_704dc:
	.4byte	gBossDefeatTimer
.L_704e0:
	.4byte	0x040000d4
.L_704e4:
	.4byte	0x02020e00
.L_704e8:
	.4byte	0x05000200
.L_704ec:
	ldr	r4, .L_70530
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	beq	.L_70528
	mov	r0, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L_70528
	ldr	r2, .L_70534
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_70538
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	add	r0, r0, r1
	str	r0, [r2, #4]
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
.L_70524:
	and	r0, r3
	strb	r0, [r4, #4]
.L_70528:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70530:
	.4byte	gUnk_30000FC
.L_70534:
	.4byte	0x040000d4
.L_70538:
	.4byte	0x02020c00


thumb_func_start func_807053C
func_807053C:
	push	{r4, lr}
	ldr	r4, .L_70578
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	beq	.L_70588
	mov	r0, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L_705c4
	ldr	r2, .L_7057c
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_70580
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_70584
	add	r0, r0, r1
	str	r0, [r2, #4]
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #253	@ 0xfd
	b	.L_705c0
	.align	2, 0
.L_70578:
	.4byte	gBossDefeatTimer
.L_7057c:
	.4byte	0x040000d4
.L_70580:
	.4byte	0x02020e00
.L_70584:
	.4byte	0x05000200
.L_70588:
	ldr	r4, .L_705cc
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	beq	.L_705c4
	mov	r0, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L_705c4
	ldr	r2, .L_705d0
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	ldr	r1, .L_705d4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #5
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	add	r0, r0, r1
	str	r0, [r2, #4]
	ldrb	r0, [r4, #2]
	lsl	r0, r0, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
.L_705c0:
	and	r0, r3
	strb	r0, [r4, #4]
.L_705c4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_705cc:
	.4byte	gUnk_30000FC
.L_705d0:
	.4byte	0x040000d4
.L_705d4:
	.4byte	0x02020c00


thumb_func_start func_80705D8
func_80705D8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r9, r0
	lsl	r1, r1, #24
	lsr	r4, r1, #24
	mov	r2, #0
	ldr	r0, .L_70610
	mov	sl, r0
.L_705f4:
	cmp	r2, #0
	bne	.L_70620
	ldr	r1, .L_70614
	mov	r8, r1
	mov	r3, sl
	ldrb	r1, [r3, #3]
	mov	r0, #1
	and	r0, r1
	ldr	r6, .L_70618
	cmp	r0, #0
	beq	.L_70634
	ldr	r6, .L_7061c
	b	.L_70634
	.align	2, 0
.L_70610:
	.4byte	gColorFading
.L_70614:
	.4byte	0x02020000
.L_70618:
	.4byte	0x02020400
.L_7061c:
	.4byte	0x02020800
.L_70620:
	ldr	r7, .L_70690
	mov	r8, r7
	mov	r0, sl
	ldrb	r1, [r0, #3]
	mov	r0, #2
	and	r0, r1
	ldr	r6, .L_70694
	cmp	r0, #0
	beq	.L_70634
	ldr	r6, .L_70698
.L_70634:
	add	r2, #1
	str	r2, [sp, #0]
	mov	r1, #31
	mov	ip, r1
	mov	r5, #31
	mov	r2, #255	@ 0xff
	str	r2, [sp, #4]
.L_70642:
	ldrh	r1, [r6, #0]
	add	r2, r5, #0
	and	r2, r1
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #2
	and	r0, r1
	lsr	r3, r0, #5
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #7
	and	r0, r1
	lsr	r1, r0, #10
	mov	r7, sl
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	bne	.L_706be
	mov	r0, r9
	cmp	r0, #0
	bne	.L_7069c
	sub	r0, r5, r2
	mul	r0, r4
	asr	r0, r0, #5
	mov	r2, ip
	sub	r0, r2, r0
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	sub	r0, r5, r3
	mul	r0, r4
	asr	r0, r0, #5
	mov	r3, ip
	sub	r0, r3, r0
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	sub	r0, r5, r1
	mul	r0, r4
	asr	r0, r0, #5
	mov	r7, ip
	sub	r0, r7, r0
	b	.L_70700
	.align	2, 0
.L_70690:
	.4byte	0x02020200
.L_70694:
	.4byte	0x02020600
.L_70698:
	.4byte	0x02020a00
.L_7069c:
	sub	r0, r5, r2
	mul	r0, r4
	asr	r0, r0, #5
	add	r0, r2, r0
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	sub	r0, r5, r3
	mul	r0, r4
	asr	r0, r0, #5
	add	r0, r3, r0
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	sub	r0, r5, r1
	mul	r0, r4
	asr	r0, r0, #5
	add	r0, r1, r0
	b	.L_70700
.L_706be:
	mov	r0, r9
	cmp	r0, #0
	bne	.L_706e0
	add	r0, r2, #0
	mul	r0, r4
	asr	r0, r0, #5
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	add	r0, r3, #0
	mul	r0, r4
	asr	r0, r0, #5
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	add	r0, r1, #0
	mul	r0, r4
	asr	r0, r0, #5
	b	.L_70700
.L_706e0:
	add	r0, r2, #0
	mul	r0, r4
	asr	r0, r0, #5
	sub	r0, r2, r0
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	add	r0, r3, #0
	mul	r0, r4
	asr	r0, r0, #5
	sub	r0, r3, r0
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	add	r0, r1, #0
	mul	r0, r4
	asr	r0, r0, #5
	sub	r0, r1, r0
.L_70700:
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	lsl	r0, r3, #5
	orr	r2, r0
	lsl	r0, r1, #10
	orr	r2, r0
	mov	r1, r8
	strh	r2, [r1, #0]
	ldr	r2, [sp, #4]
	sub	r2, #1
	str	r2, [sp, #4]
	mov	r3, #2
	add	r8, r3
	add	r6, #2
	cmp	r2, #0
	bge	.L_70642
	ldr	r7, [sp, #0]
	lsl	r0, r7, #24
	lsr	r2, r0, #24
	cmp	r2, #1
	bhi	.L_7072c
	b	.L_705f4
.L_7072c:
	mov	r0, #3
	ldr	r1, .L_70744
	strb	r0, [r1, #4]
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70744:
	.4byte	gColorFading


thumb_func_start func_8070748
func_8070748:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	ldr	r0, .L_70774
	ldrb	r1, [r0, #5]
	mov	r9, r0
	cmp	r1, #0
	beq	.L_70778
	mov	r0, #0
	mov	r1, r9
	strb	r0, [r1, #5]
	mov	r0, #1
	strb	r0, [r1, #4]
	b	.L_708c8
	.align	2, 0
.L_70774:
	.4byte	gColorFading
.L_70778:
	mov	r1, r9
	ldrb	r0, [r1, #2]
	cmp	r0, #32
	bne	.L_70784
	mov	r0, #1
	b	.L_708ca
.L_70784:
	lsl	r0, r2, #24
	asr	r0, r0, #24
	mov	ip, r0
	cmp	r0, #0
	bge	.L_7079e
	mov	r0, #255	@ 0xff
	mov	r2, ip
	eor	r0, r2
	add	r0, #1
	mov	ip, r0
	mov	r0, #1
	mov	r8, r0
	b	.L_707a4
.L_7079e:
	mov	r8, ip
	mov	r1, #1
	mov	ip, r1
.L_707a4:
	mov	r2, r9
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #1]
	cmp	r0, r8
	bge	.L_707b4
	b	.L_708c8
.L_707b4:
	mov	r0, #0
	mov	r1, r9
	strb	r0, [r1, #1]
	ldrb	r0, [r1, #2]
	add	r0, ip
	strb	r0, [r1, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #32
	bls	.L_707cc
	mov	r0, #32
	strb	r0, [r1, #2]
.L_707cc:
	mov	r2, r9
	ldrb	r2, [r2, #2]
	mov	r8, r2
	ldr	r0, .L_707e4
	str	r0, [sp, #0]
	cmp	r3, #0
	bne	.L_707f0
	ldr	r1, .L_707e8
	mov	sl, r1
	ldr	r2, .L_707ec
	str	r2, [sp, #4]
	b	.L_707f8
.L_707e4:
	.4byte	0x02020000
.L_707e8:
	.4byte	0x02020400
.L_707ec:
	.4byte	0x02020800
.L_707f0:
	ldr	r0, .L_70840
	str	r0, [sp, #4]
	ldr	r1, .L_70844
	mov	sl, r1
.L_707f8:
	mov	r2, #255	@ 0xff
	mov	ip, r2
.L_707fc:
	mov	r0, sl
	ldrh	r1, [r0, #0]
	mov	r3, #31
	and	r3, r1
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #2
	and	r0, r1
	lsr	r5, r0, #5
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #7
	and	r0, r1
	lsr	r7, r0, #10
	ldr	r2, [sp, #4]
	ldrh	r1, [r2, #0]
	mov	r2, #31
	and	r2, r1
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #2
	and	r0, r1
	lsr	r4, r0, #5
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #7
	and	r0, r1
	lsr	r6, r0, #10
	cmp	r2, r3
	bls	.L_70848
	sub	r0, r2, r3
	mov	r1, r8
	mul	r1, r0
	add	r0, r1, #0
	asr	r0, r0, #5
	add	r0, r3, r0
	b	.L_70854
	.align	2, 0
.L_70840:
	.4byte	0x02020400
.L_70844:
	.4byte	0x02020800
.L_70848:
	sub	r0, r3, r2
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	asr	r0, r0, #5
	sub	r0, r3, r0
.L_70854:
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r4, r5
	bls	.L_7086a
	sub	r0, r4, r5
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	asr	r0, r0, #5
	add	r0, r5, r0
	b	.L_70876
.L_7086a:
	sub	r0, r5, r4
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	asr	r0, r0, #5
	sub	r0, r5, r0
.L_70876:
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r6, r7
	bls	.L_7088c
	sub	r0, r6, r7
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	asr	r0, r0, #5
	add	r0, r7, r0
	b	.L_70898
.L_7088c:
	sub	r0, r7, r6
	mov	r2, r8
	mul	r2, r0
	add	r0, r2, #0
	asr	r0, r0, #5
	sub	r0, r7, r0
.L_70898:
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsl	r0, r3, #5
	orr	r1, r0
	lsl	r0, r2, #10
	orr	r1, r0
	ldr	r0, [sp, #0]
	strh	r1, [r0, #0]
	mov	r1, #1
	neg	r1, r1
	add	ip, r1
	add	r0, #2
	str	r0, [sp, #0]
	mov	r2, #2
	add	sl, r2
	ldr	r0, [sp, #4]
	add	r0, #2
	str	r0, [sp, #4]
	mov	r1, ip
	cmp	r1, #0
	bge	.L_707fc
	mov	r0, #1
	mov	r2, r9
	strb	r0, [r2, #5]
.L_708c8:
	mov	r0, #0
.L_708ca:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_80708DC
func_80708DC:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	lsl	r0, r6, #5
	ldr	r1, .L_70958
	add	r4, r0, r1
	lsl	r5, r6, #4
	cmp	r5, #255	@ 0xff
	bgt	.L_7092e
.L_708ee:
	ldrh	r2, [r4, #0]
	mov	r0, #31
	and	r0, r2
	mov	r3, #248	@ 0xf8
	lsl	r3, r3, #2
	add	r1, r3, #0
	add	r3, r2, #0
	and	r3, r1
	lsr	r3, r3, #5
	mov	r7, #248	@ 0xf8
	lsl	r7, r7, #7
	add	r1, r7, #0
	and	r2, r1
	lsr	r2, r2, #10
	add	r0, r0, r3
	add	r0, r0, r2
	mov	r1, #3
	bl	__divsi3
	add	r2, r0, #0
	cmp	r2, #31
	ble	.L_7091c
	mov	r2, #31
.L_7091c:
	lsl	r0, r2, #10
	lsl	r1, r2, #5
	orr	r0, r1
	orr	r0, r2
	strh	r0, [r4, #0]
	add	r5, #1
	add	r4, #2
	cmp	r5, #255	@ 0xff
	ble	.L_708ee
.L_7092e:
	ldr	r2, .L_7095c
	lsl	r1, r6, #5
	ldr	r3, .L_70958
	add	r0, r1, r3
	str	r0, [r2, #0]
	ldr	r7, .L_70960
	add	r0, r1, r7
	str	r0, [r2, #4]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	sub	r0, r0, r1
	asr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70958:
	.4byte	0x05000200
.L_7095c:
	.4byte	0x040000d4
.L_70960:
	.4byte	0x02020600


thumb_func_start func_8070964
func_8070964:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	lsl	r1, r1, #24
	lsr	r5, r1, #24
	lsl	r2, r2, #24
	lsr	r6, r2, #24
	cmp	r3, #0
	bne	.L_70978
	b	.L_70a72
.L_70978:
	ldr	r1, .L_709c8
	mov	r0, #0
	strb	r3, [r1, #0]
	mov	r4, #127	@ 0x7f
	and	r4, r3
	strb	r5, [r1, #1]
	strb	r6, [r1, #2]
	strb	r0, [r1, #3]
	strb	r0, [r1, #5]
	cmp	r4, #4
	ble	.L_70998
	sub	r4, #4
	mov	r0, #1
	strb	r0, [r1, #5]
	sub	r0, r3, #4
	strb	r0, [r1, #0]
.L_70998:
	mov	r7, #0
	ldr	r0, .L_709cc
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_709a8
	cmp	r0, #6
	bne	.L_709dc
.L_709a8:
	ldr	r1, .L_709d0
	lsl	r2, r5, #5
	ldr	r3, .L_709d4
	add	r0, r2, r3
	str	r0, [r1, #0]
	ldr	r3, .L_709d8
	add	r0, r2, r3
	str	r0, [r1, #4]
	lsl	r3, r6, #4
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #24
	orr	r0, r3
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	b	.L_709fa
	.align	2, 0
.L_709c8:
	.4byte	gBossDefeatTimer
.L_709cc:
	.4byte	gSubGameMode
.L_709d0:
	.4byte	0x040000d4
.L_709d4:
	.4byte	0x05000200
.L_709d8:
	.4byte	0x02021200
.L_709dc:
	ldr	r1, .L_70a18
	lsl	r2, r5, #5
	ldr	r3, .L_70a1c
	add	r0, r2, r3
	str	r0, [r1, #0]
	ldr	r3, .L_70a20
	add	r0, r2, r3
	str	r0, [r1, #4]
	lsl	r3, r6, #4
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #24
	orr	r0, r3
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r7, #1
.L_709fa:
	cmp	r4, #1
	bne	.L_70a2c
	ldr	r4, .L_70a24
	add	r1, r2, r4
	cmp	r3, #0
	beq	.L_70a56
	ldr	r0, .L_70a28
	add	r4, r0, #0
	add	r0, r3, #0
.L_70a0c:
	strh	r4, [r1, #0]
	sub	r0, #1
	add	r1, #2
	cmp	r0, #0
	bne	.L_70a0c
	b	.L_70a56
.L_70a18:
	.4byte	0x040000d4
.L_70a1c:
	.4byte	0x02020600
.L_70a20:
	.4byte	0x02021200
.L_70a24:
	.4byte	0x05000200
.L_70a28:
	.4byte	0x00007fff
.L_70a2c:
	cmp	r4, #2
	beq	.L_70a72
	cmp	r4, #3
	bne	.L_70a50
	ldr	r4, .L_70a4c
	add	r1, r2, r4
	cmp	r3, #0
	beq	.L_70a56
	mov	r4, #0
	add	r0, r3, #0
.L_70a40:
	strh	r4, [r1, #0]
	sub	r0, #1
	add	r1, #2
	cmp	r0, #0
	bne	.L_70a40
	b	.L_70a56
.L_70a4c:
	.4byte	0x05000200
.L_70a50:
	cmp	r4, #4
	bne	.L_70a56
	mov	r7, #0
.L_70a56:
	cmp	r7, #0
	beq	.L_70a72
	ldr	r1, .L_70a78
	ldr	r4, .L_70a7c
	add	r0, r2, r4
	str	r0, [r1, #0]
	ldr	r4, .L_70a80
	add	r0, r2, r4
	str	r0, [r1, #4]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #24
	orr	r0, r3
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_70a72:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_70a78:
	.4byte	0x040000d4
.L_70a7c:
	.4byte	0x05000200
.L_70a80:
	.4byte	0x02020600


thumb_func_start func_8070A84
func_8070A84:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	lsl	r1, r1, #24
	lsr	r5, r1, #24
	lsl	r2, r2, #24
	lsr	r6, r2, #24
	cmp	r3, #0
	bne	.L_70a98
	b	.L_70ba8
.L_70a98:
	ldr	r1, .L_70afc
	mov	r0, #0
	strb	r3, [r1, #0]
	mov	r4, #127	@ 0x7f
	and	r4, r3
	strb	r5, [r1, #1]
	strb	r6, [r1, #2]
	strb	r0, [r1, #3]
	strb	r0, [r1, #5]
	cmp	r4, #4
	ble	.L_70ab8
	sub	r4, #4
	mov	r0, #1
	strb	r0, [r1, #5]
	sub	r0, r3, #4
	strb	r0, [r1, #0]
.L_70ab8:
	mov	r3, #0
	ldr	r0, .L_70b00
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	cmp	r0, #2
	beq	.L_70ac8
	cmp	r0, #6
	bne	.L_70b0c
.L_70ac8:
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	beq	.L_70ada
	cmp	r0, #4
	beq	.L_70ada
	cmp	r0, #6
	beq	.L_70ada
	cmp	r0, #8
	bne	.L_70b2a
.L_70ada:
	ldr	r2, .L_70b04
	lsl	r1, r5, #5
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	add	r0, r1, r0
	str	r0, [r2, #0]
	ldr	r0, .L_70b08
	add	r1, r1, r0
	str	r1, [r2, #4]
	lsl	r0, r6, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	b	.L_70b2a
	.align	2, 0
.L_70afc:
	.4byte	gUnk_30000FC
.L_70b00:
	.4byte	gSubGameMode
.L_70b04:
	.4byte	0x040000d4
.L_70b08:
	.4byte	0x02021000
.L_70b0c:
	ldr	r2, .L_70b4c
	lsl	r0, r5, #5
	ldr	r3, .L_70b50
	add	r1, r0, r3
	str	r1, [r2, #0]
	ldr	r1, .L_70b54
	add	r0, r0, r1
	str	r0, [r2, #4]
	lsl	r0, r6, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r3, #1
.L_70b2a:
	cmp	r4, #1
	bne	.L_70b5c
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	lsl	r0, r5, #5
	add	r1, r0, r1
	lsl	r0, r6, #4
	cmp	r0, #0
	beq	.L_70b86
	ldr	r4, .L_70b58
	add	r2, r4, #0
.L_70b40:
	strh	r2, [r1, #0]
	sub	r0, #1
	add	r1, #2
	cmp	r0, #0
	bne	.L_70b40
	b	.L_70b86
.L_70b4c:
	.4byte	0x040000d4
.L_70b50:
	.4byte	0x02020400
.L_70b54:
	.4byte	0x02021000
.L_70b58:
	.4byte	0x00007fff
.L_70b5c:
	cmp	r4, #2
	beq	.L_70ba8
	cmp	r4, #3
	bne	.L_70b80
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	lsl	r0, r5, #5
	add	r1, r0, r1
	lsl	r0, r6, #4
	cmp	r0, #0
	beq	.L_70b86
	mov	r2, #0
.L_70b74:
	strh	r2, [r1, #0]
	sub	r0, #1
	add	r1, #2
	cmp	r0, #0
	bne	.L_70b74
	b	.L_70b86
.L_70b80:
	cmp	r4, #4
	bne	.L_70b86
	mov	r3, #0
.L_70b86:
	cmp	r3, #0
	beq	.L_70ba8
	ldr	r2, .L_70bb0
	lsl	r1, r5, #5
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	add	r0, r1, r0
	str	r0, [r2, #0]
	ldr	r0, .L_70bb4
	add	r1, r1, r0
	str	r1, [r2, #4]
	lsl	r0, r6, #4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_70ba8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70bb0:
	.4byte	0x040000d4
.L_70bb4:
	.4byte	0x02020400


thumb_func_start func_8070BB8
func_8070BB8:
	push	{r4, lr}
	ldr	r4, .L_70c1c
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_70c32
	ldrb	r1, [r4, #0]
	add	r3, r1, #0
	cmp	r3, #0
	beq	.L_70c32
	mov	r0, #128	@ 0x80
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_70c32
	cmp	r3, #4
	bls	.L_70be2
	mov	r0, #1
	strb	r0, [r4, #5]
	sub	r0, r1, #4
	strb	r0, [r4, #0]
.L_70be2:
	ldrb	r0, [r4, #5]
	cmp	r0, #0
	beq	.L_70bf4
	ldr	r0, .L_70c20
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_70c32
.L_70bf4:
	ldrb	r0, [r4, #3]
	add	r0, #1
	strb	r0, [r4, #3]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #32
	bhi	.L_70c2c
	ldrb	r1, [r4, #1]
	lsl	r1, r1, #5
	ldr	r2, .L_70c24
	add	r0, r1, r2
	ldr	r2, .L_70c28
	add	r1, r1, r2
	add	r2, r4, #0
	bl	func_8070CB8
	mov	r0, #2
	strb	r0, [r4, #4]
	b	.L_70c32
	.align	2, 0
.L_70c1c:
	.4byte	gBossDefeatTimer
.L_70c20:
	.4byte	gMainTimer
.L_70c24:
	.4byte	0x02020e00
.L_70c28:
	.4byte	0x02021200
.L_70c2c:
	strb	r2, [r4, #0]
	strb	r2, [r4, #3]
	strb	r2, [r4, #5]
.L_70c32:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8070C38
func_8070C38:
	push	{r4, lr}
	ldr	r4, .L_70c9c
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_70cb2
	ldrb	r1, [r4, #0]
	add	r3, r1, #0
	cmp	r3, #0
	beq	.L_70cb2
	mov	r0, #128	@ 0x80
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_70cb2
	cmp	r3, #4
	bls	.L_70c62
	mov	r0, #1
	strb	r0, [r4, #5]
	sub	r0, r1, #4
	strb	r0, [r4, #0]
.L_70c62:
	ldrb	r0, [r4, #5]
	cmp	r0, #0
	beq	.L_70c74
	ldr	r0, .L_70ca0
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_70cb2
.L_70c74:
	ldrb	r0, [r4, #3]
	add	r0, #1
	strb	r0, [r4, #3]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #32
	bhi	.L_70cac
	ldrb	r1, [r4, #1]
	lsl	r1, r1, #5
	ldr	r2, .L_70ca4
	add	r0, r1, r2
	ldr	r2, .L_70ca8
	add	r1, r1, r2
	add	r2, r4, #0
	bl	func_8070CB8
	mov	r0, #1
	strb	r0, [r4, #4]
	b	.L_70cb2
	.align	2, 0
.L_70c9c:
	.4byte	gUnk_30000FC
.L_70ca0:
	.4byte	gMainTimer
.L_70ca4:
	.4byte	0x02020c00
.L_70ca8:
	.4byte	0x02021000
.L_70cac:
	strb	r2, [r4, #0]
	strb	r2, [r4, #3]
	strb	r2, [r4, #5]
.L_70cb2:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8070CB8
func_8070CB8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	add	r7, r1, #0
	add	r5, r2, #0
	ldrb	r0, [r5, #2]
	mov	r6, #0
	cmp	r0, #0
	beq	.L_70d10
	ldr	r0, .L_70d1c
	mov	r9, r0
.L_70cd2:
	ldrh	r2, [r7, #0]
	mov	r0, #31
	and	r0, r2
	mov	r3, #248	@ 0xf8
	lsl	r3, r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsr	r1, r1, #5
	mov	r4, #248	@ 0xf8
	lsl	r4, r4, #7
	add	r3, r4, #0
	and	r2, r3
	lsr	r2, r2, #10
	ldrb	r4, [r5, #0]
	sub	r4, #1
	lsl	r4, r4, #2
	add	r4, r9
	ldrb	r3, [r5, #3]
	ldr	r4, [r4, #0]
	bl	_call_via_r4
	mov	r1, r8
	strh	r0, [r1, #0]
	add	r6, #1
	mov	r3, #2
	add	r8, r3
	add	r7, #2
	ldrb	r0, [r5, #2]
	lsl	r0, r0, #4
	cmp	r6, r0
	blt	.L_70cd2
.L_70d10:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_70d1c:
	.4byte	sUnk_878F5CC


thumb_func_start func_8070D20
func_8070D20:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	mov	r6, #31
	sub	r0, r6, r0
	mul	r0, r3
	asr	r0, r0, #5
	mov	r5, #31
	sub	r0, r5, r0
	and	r0, r5
	sub	r1, r6, r1
	add	r4, r1, #0
	mul	r4, r3
	asr	r4, r4, #5
	sub	r4, r5, r4
	and	r4, r5
	sub	r6, r6, r2
	add	r1, r6, #0
	mul	r1, r3
	asr	r1, r1, #5
	sub	r1, r5, r1
	and	r1, r5
	lsl	r4, r4, #5
	orr	r0, r4
	lsl	r1, r1, #10
	orr	r0, r1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8070D68
func_8070D68:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	mov	r5, #31
	sub	r4, r5, r0
	mul	r4, r3
	asr	r4, r4, #5
	add	r0, r0, r4
	mov	r6, #31
	and	r0, r6
	sub	r4, r5, r1
	mul	r4, r3
	asr	r4, r4, #5
	add	r1, r1, r4
	and	r1, r6
	sub	r5, r5, r2
	mul	r3, r5
	asr	r3, r3, #5
	add	r2, r2, r3
	and	r2, r6
	lsl	r1, r1, #5
	orr	r0, r1
	lsl	r2, r2, #10
	orr	r0, r2
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8070DAC
func_8070DAC:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	mul	r0, r3
	asr	r0, r0, #5
	mov	r5, #31
	and	r0, r5
	add	r4, r1, #0
	mul	r4, r3
	asr	r4, r4, #5
	and	r4, r5
	add	r1, r2, #0
	mul	r1, r3
	asr	r1, r1, #5
	and	r1, r5
	lsl	r4, r4, #5
	orr	r0, r4
	lsl	r1, r1, #10
	orr	r0, r1
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8070DE4
func_8070DE4:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	add	r4, r0, #0
	mul	r4, r3
	asr	r4, r4, #5
	sub	r0, r0, r4
	mov	r5, #31
	and	r0, r5
	add	r4, r1, #0
	mul	r4, r3
	asr	r4, r4, #5
	sub	r1, r1, r4
	and	r1, r5
	mul	r3, r2
	asr	r3, r3, #5
	sub	r2, r2, r3
	and	r2, r5
	lsl	r1, r1, #5
	orr	r0, r1
	lsl	r2, r2, #10
	orr	r0, r2
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8070E24
func_8070E24:
	push	{lr}
	ldr	r0, .L_70e48
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_70e32
	b	.L_70fce
.L_70e32:
	ldr	r0, .L_70e4c
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #14
	bhi	.L_70e5c
	ldr	r0, .L_70e50
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_70e54
	mov	r0, #17
	b	.L_70e5a
.L_70e48:
	.4byte	gSubGameMode
.L_70e4c:
	.4byte	gUnk_3000035
.L_70e50:
	.4byte	gTimerState
.L_70e54:
	cmp	r0, #1
	bls	.L_70e5c
	mov	r0, #15
.L_70e5a:
	strb	r0, [r2, #0]
.L_70e5c:
	mov	r3, #2
	ldr	r1, .L_70e88
	mov	r0, #1
	ldrsb	r0, [r1, r0]
	cmp	r0, #3
	bgt	.L_70e72
	mov	r0, #2
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	bne	.L_70e72
	mov	r3, #1
.L_70e72:
	ldrb	r0, [r2, #0]
	sub	r0, #1
	cmp	r0, #16
	bls	.L_70e7c
	b	.L_70fce
.L_70e7c:
	lsl	r0, r0, #2
	ldr	r1, .L_70e8c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_70e88:
	.4byte	gUnk_3000BF0
.L_70e8c:
	.4byte	.L_70e90
.L_70e90:
	.4byte	.L_70ed4
	.4byte	.L_70edc
	.4byte	.L_70eec
	.4byte	.L_70f04
	.4byte	.L_70f0a
	.4byte	.L_70f24
	.4byte	.L_70f40
	.4byte	.L_70f58
	.4byte	.L_70f40
	.4byte	.L_70f74
	.4byte	.L_70f24
	.4byte	.L_70f40
	.4byte	.L_70f58
	.4byte	.L_70f88
	.4byte	.L_70f9c
	.4byte	.L_70fb4
	.4byte	.L_70fce
.L_70ed4:
	mov	r0, #1
	bl	func_806C0E8
	b	.L_70fc0
.L_70edc:
	ldr	r0, .L_70ee8
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_70ee6
	b	.L_70fce
.L_70ee6:
	b	.L_70f4a
.L_70ee8:
	.4byte	gWarioPauseTimer
.L_70eec:
	ldr	r0, .L_70efc
	ldrh	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_70fce
	ldr	r0, .L_70f00
	strb	r1, [r0, #1]
	b	.L_70f4a
	.align	2, 0
.L_70efc:
	.4byte	gWarioPauseTimer
.L_70f00:
	.4byte	gColorFading
.L_70f04:
	mov	r0, #3
	bl	func_8071600
.L_70f0a:
	bl	func_8070208
	mov	r0, #0
	bl	func_8070FDC
	ldr	r1, .L_70f20
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	strb	r0, [r1, #5]
	b	.L_70fc6
.L_70f20:
	.4byte	gColorFading
.L_70f24:
	add	r1, r3, #0
	mov	r0, #0
	bl	func_8070748
	cmp	r0, #0
	beq	.L_70fce
	ldr	r1, .L_70f3c
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	b	.L_70fc6
	.align	2, 0
.L_70f3c:
	.4byte	gColorFading
.L_70f40:
	ldr	r1, .L_70f54
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	strb	r0, [r1, #5]
.L_70f4a:
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	b	.L_70fce
	.align	2, 0
.L_70f54:
	.4byte	gColorFading
.L_70f58:
	add	r1, r3, #0
	mov	r0, #1
	bl	func_8070748
	cmp	r0, #0
	beq	.L_70fce
	ldr	r1, .L_70f70
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	b	.L_70fc6
	.align	2, 0
.L_70f70:
	.4byte	gColorFading
.L_70f74:
	mov	r0, #1
	bl	func_8070FDC
	ldr	r1, .L_70f84
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	b	.L_70fc6
.L_70f84:
	.4byte	gColorFading
.L_70f88:
	ldr	r1, .L_70f98
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	mov	r0, #5
	strb	r0, [r2, #0]
	b	.L_70fce
	.align	2, 0
.L_70f98:
	.4byte	gColorFading
.L_70f9c:
	bl	func_8070208
	bl	func_8070348
	ldr	r1, .L_70fb0
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #2]
	strb	r0, [r1, #5]
	b	.L_70fc6
.L_70fb0:
	.4byte	gColorFading
.L_70fb4:
	mov	r0, #0
	mov	r1, #2
	bl	func_8070748
	cmp	r0, #0
	beq	.L_70fce
.L_70fc0:
	ldr	r1, .L_70fd4
	mov	r0, #0
	strb	r0, [r1, #1]
.L_70fc6:
	ldr	r1, .L_70fd8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_70fce:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_70fd4:
	.4byte	gColorFading
.L_70fd8:
	.4byte	gUnk_3000035


thumb_func_start func_8070FDC
func_8070FDC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r0
	ldr	r7, .L_71084
	ldr	r6, .L_71088
	mov	r0, #0
	strh	r0, [r7, #0]
	strh	r0, [r6, #0]
	add	r7, #2
	add	r6, #2
	mov	r0, #1
	mov	r8, r0
	mov	r5, sp
	ldr	r1, .L_7108c
	mov	sl, r1
	ldr	r0, .L_71090
	mov	r9, r0
.L_7100a:
	ldrb	r0, [r6, #0]
	mov	r4, #31
	and	r4, r0
	strb	r4, [r5, #0]
	ldrh	r0, [r6, #0]
	mov	r2, #248	@ 0xf8
	lsl	r2, r2, #2
	and	r2, r0
	lsr	r2, r2, #5
	strb	r2, [r5, #1]
	ldrh	r0, [r6, #0]
	mov	r3, #248	@ 0xf8
	lsl	r3, r3, #7
	and	r3, r0
	lsr	r3, r3, #10
	strb	r3, [r5, #2]
	mov	r0, r9
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #1
	add	r1, ip
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, sl
	ldrb	r0, [r0, #0]
	add	r4, r4, r0
	strb	r4, [r5, #0]
	mov	r1, r9
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, ip
	lsl	r1, r0, #1
	add	r1, r1, r0
	mov	r0, sl
	add	r0, #1
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	add	r2, r2, r0
	strb	r2, [r5, #1]
	mov	r0, r9
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #1
	add	r1, ip
	lsl	r0, r1, #1
	add	r0, r0, r1
	ldr	r1, .L_71094
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	add	r3, r3, r0
	strb	r3, [r5, #2]
	add	r4, r7, #2
	add	r6, #2
	mov	r3, r8
	add	r3, #1
	mov	r1, sp
	mov	r2, #2
.L_71078:
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #31
	ble	.L_71098
	mov	r0, #31
	b	.L_7109e
.L_71084:
	.4byte	0x02020800
.L_71088:
	.4byte	0x02020400
.L_7108c:
	.4byte	sUnk_83F9E0C
.L_71090:
	.4byte	gUnk_3000023
.L_71094:
	.4byte	sUnk_83F9E0C + 2  @ Unsure what's going on here
.L_71098:
	cmp	r0, #0
	bge	.L_710a0
	mov	r0, #0
.L_7109e:
	strb	r0, [r1, #0]
.L_710a0:
	add	r1, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_71078
	mov	r0, #0
	ldrsb	r0, [r5, r0]
	mov	r1, #1
	ldrsb	r1, [r5, r1]
	lsl	r1, r1, #5
	orr	r0, r1
	mov	r1, #2
	ldrsb	r1, [r5, r1]
	lsl	r1, r1, #10
	orr	r0, r1
	strh	r0, [r7, #0]
	mov	r8, r3
	add	r7, r4, #0
	cmp	r3, #255	@ 0xff
	ble	.L_7100a
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80710D8
func_80710D8:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	lsl	r1, r1, #24
	lsr	r4, r1, #24
	mov	r6, #0
	ldr	r0, .L_71114
	ldrb	r2, [r0, #2]
	add	r3, r0, #0
	cmp	r2, #0
	bne	.L_71128
	cmp	r5, #0
	bne	.L_710f6
	ldr	r0, .L_71118
	strh	r6, [r0, #0]
.L_710f6:
	strb	r6, [r3, #3]
	ldr	r7, .L_7111c
	cmp	r4, #0
	bne	.L_711a2
	ldr	r0, .L_71120
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_711a2
	ldr	r0, .L_71124
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	bls	.L_711a2
	mov	r0, #1
	strb	r0, [r3, #3]
	b	.L_711a2
.L_71114:
	.4byte	gColorFading
.L_71118:
	.4byte	gBldy
.L_7111c:
	.4byte	sUnk_83F9EA2
.L_71120:
	.4byte	gSwitchPressed
.L_71124:
	.4byte	gUnk_3000035
.L_71128:
	ldr	r1, .L_71144
	add	r0, r4, r1
	ldrb	r0, [r0, #0]
	add	r7, r1, #0
	cmp	r2, r0
	bne	.L_7119c
	cmp	r5, #0
	beq	.L_7116c
	ldrb	r0, [r3, #0]
	cmp	r0, #1
	bne	.L_7114c
	ldr	r1, .L_71148
	mov	r0, #191	@ 0xbf
	b	.L_71150
.L_71144:
	.4byte	sUnk_83F9EA2
.L_71148:
	.4byte	0x04000050
.L_7114c:
	ldr	r1, .L_71160
	mov	r0, #255	@ 0xff
.L_71150:
	strh	r0, [r1, #0]
	ldr	r0, .L_71164
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r0, .L_71168
	strh	r1, [r0, #0]
	b	.L_7118a
	.align	2, 0
.L_71160:
	.4byte	0x04000050
.L_71164:
	.4byte	gBldy
.L_71168:
	.4byte	0x04000054
.L_7116c:
	ldrb	r1, [r3, #3]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_7117c
	bl	func_8070308
	b	.L_71180
.L_7117c:
	bl	func_8070288
.L_71180:
	ldr	r1, .L_71194
	mov	r0, #3
	strb	r0, [r1, #4]
	add	r3, r1, #0
	ldr	r7, .L_71198
.L_7118a:
	ldrb	r0, [r3, #2]
	add	r0, #1
	strb	r0, [r3, #2]
	b	.L_711a2
	.align	2, 0
.L_71194:
	.4byte	gColorFading
.L_71198:
	.4byte	sUnk_83F9EA2
.L_7119c:
	cmp	r2, r0
	bls	.L_711a2
	mov	r6, #1
.L_711a2:
	add	r2, r3, #0
	add	r1, r4, r7
	ldrb	r0, [r2, #2]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bcs	.L_711cc
	cmp	r4, #2
	bne	.L_711b6
	add	r1, r0, #0
	b	.L_711be
.L_711b6:
	ldr	r1, .L_711e0
	ldrb	r0, [r3, #2]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
.L_711be:
	add	r0, r5, #0
	bl	func_80705D8
	ldr	r1, .L_711e4
	ldrb	r0, [r1, #2]
	add	r0, #1
	strb	r0, [r1, #2]
.L_711cc:
	cmp	r6, #0
	beq	.L_711d6
	ldr	r1, .L_711e4
	mov	r0, #0
	strb	r0, [r1, #2]
.L_711d6:
	add	r0, r6, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_711e0:
	.4byte	sUnk_83F9DF8
.L_711e4:
	.4byte	gColorFading


thumb_func_start func_80711E8
func_80711E8:
	push	{lr}
	ldr	r0, .L_711fc
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	blt	.L_71228
	cmp	r0, #2
	ble	.L_71200
	cmp	r0, #5
	beq	.L_7120a
	b	.L_71228
.L_711fc:
	.4byte	gColorFading
.L_71200:
	bl	func_8071260
	bl	func_80712B4
	b	.L_71228
.L_7120a:
	bl	func_8070208
	bl	func_80712B4
	cmp	r0, #0
	beq	.L_71228
	ldr	r1, .L_7122c
	ldr	r0, .L_71230
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_71234
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_71228:
	pop	{r0}
	bx	r0
.L_7122c:
	.4byte	0x040000d4
.L_71230:
	.4byte	0x02020800
.L_71234:
	.4byte	0x80000100


thumb_func_start func_8071238
func_8071238:
	push	{lr}
	ldr	r0, .L_7124c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	blt	.L_7125a
	cmp	r0, #2
	ble	.L_71250
	cmp	r0, #5
	beq	.L_71256
	b	.L_7125a
.L_7124c:
	.4byte	gColorFading
.L_71250:
	bl	func_8071260
	b	.L_7125a
.L_71256:
	bl	func_8070208
.L_7125a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8071260
func_8071260:
	push	{r4, r5, lr}
	ldr	r4, .L_712a0
	mov	r0, #0
	strb	r0, [r4, #2]
	bl	func_8070208
	mov	r1, #0
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_71276
	ldr	r1, .L_712a4
.L_71276:
	ldr	r5, .L_712a8
	ldr	r4, .L_712ac
	mov	r3, #160	@ 0xa0
	lsl	r3, r3, #19
	ldr	r2, .L_712b0
	mov	r0, #255	@ 0xff
.L_71282:
	strh	r1, [r5, #0]
	strh	r1, [r4, #0]
	strh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r5, #2
	add	r4, #2
	add	r3, #2
	add	r2, #2
	sub	r0, #1
	cmp	r0, #0
	bge	.L_71282
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_712a0:
	.4byte	gColorFading
.L_712a4:
	.4byte	0x00007fff
.L_712a8:
	.4byte	0x02020000
.L_712ac:
	.4byte	0x02020200
.L_712b0:
	.4byte	0x05000200


thumb_func_start func_80712B4
func_80712B4:
	push	{lr}
	ldr	r0, .L_712c4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_712c8
	mov	r0, #0
	b	.L_712f4
	.align	2, 0
.L_712c4:
	.4byte	gSwitchPressed
.L_712c8:
	mov	r2, #0
	ldr	r1, .L_712e0
	ldrb	r0, [r1, #0]
	cmp	r0, #14
	bhi	.L_712e8
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_712e4
	strb	r2, [r0, #5]
	strb	r2, [r0, #4]
	b	.L_712f2
	.align	2, 0
.L_712e0:
	.4byte	gUnk_3000035
.L_712e4:
	.4byte	gColorFading
.L_712e8:
	mov	r0, #17
	strb	r0, [r1, #0]
	bl	func_8070348
	mov	r2, #1
.L_712f2:
	add	r0, r2, #0
.L_712f4:
	pop	{r1}
	bx	r1


thumb_func_start func_80712F8
func_80712F8:
	push	{r4, r5, lr}
	ldr	r4, .L_71334
	ldrb	r1, [r4, #4]
	cmp	r1, #0
	bne	.L_7130c
	ldr	r0, .L_71338
	strh	r1, [r0, #0]
	mov	r0, #221	@ 0xdd
	bl	m4aSongNumStart
.L_7130c:
	ldrb	r0, [r4, #4]
	add	r1, r0, #1
	strb	r1, [r4, #4]
	lsl	r0, r1, #24
	cmp	r0, #0
	bne	.L_7131e
	mov	r0, #255	@ 0xff
	orr	r1, r0
	strb	r1, [r4, #4]
.L_7131e:
	ldrb	r0, [r4, #4]
	lsr	r0, r0, #1
	add	r1, r0, #2
	mov	r5, #0
	ldrb	r0, [r4, #0]
	cmp	r0, r1
	ble	.L_7133c
	sub	r0, r0, r1
	strb	r0, [r4, #0]
	b	.L_71340
	.align	2, 0
.L_71334:
	.4byte	gWindow
.L_71338:
	.4byte	gBldy
.L_7133c:
	strb	r5, [r4, #0]
	mov	r5, #1
.L_71340:
	ldr	r0, .L_71350
	ldrb	r2, [r0, #2]
	add	r3, r0, #0
	cmp	r2, r1
	ble	.L_71354
	sub	r0, r2, r1
	strb	r0, [r3, #2]
	b	.L_7135a
.L_71350:
	.4byte	gWindow
.L_71354:
	mov	r0, #0
	strb	r0, [r3, #2]
	add	r5, #1
.L_7135a:
	ldrb	r2, [r3, #1]
	mov	r4, #240	@ 0xf0
	sub	r0, r4, r1
	cmp	r2, r0
	bge	.L_7136a
	add	r0, r2, r1
	strb	r0, [r3, #1]
	b	.L_7136e
.L_7136a:
	strb	r4, [r3, #1]
	add	r5, #1
.L_7136e:
	ldrb	r2, [r3, #3]
	mov	r4, #160	@ 0xa0
	sub	r0, r4, r1
	cmp	r2, r0
	bge	.L_7137e
	add	r0, r2, r1
	strb	r0, [r3, #3]
	b	.L_71382
.L_7137e:
	strb	r4, [r3, #3]
	add	r5, #1
.L_71382:
	asr	r5, r5, #2
	cmp	r5, #0
	beq	.L_7138c
	mov	r0, #0
	strb	r0, [r3, #4]
.L_7138c:
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8071394
func_8071394:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #16
	ldr	r4, .L_713cc
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	bne	.L_713aa
	add	r0, #1
	strb	r0, [r4, #4]
	mov	r0, #222	@ 0xde
	bl	m4aSongNumStart
.L_713aa:
	add	r7, r4, #0
	ldr	r3, .L_713d0
	ldr	r2, .L_713d4
	ldr	r4, .L_713d8
	mov	r1, #0
	add	r0, sp, #12
.L_713b6:
	str	r1, [r0, #0]
	sub	r0, #4
	cmp	r0, sp
	bge	.L_713b6
	ldrh	r1, [r3, #18]
	ldrh	r0, [r2, #0]
	sub	r6, r1, r0
	cmp	r6, #0
	bge	.L_713dc
	mov	r6, #0
	b	.L_713e4
.L_713cc:
	.4byte	gWindow
.L_713d0:
	.4byte	gWarioData
.L_713d4:
	.4byte	gBg1XPosition
.L_713d8:
	.4byte	gBg1YPosition
.L_713dc:
	asr	r6, r6, #2
	cmp	r6, #240	@ 0xf0
	ble	.L_713e4
	mov	r6, #240	@ 0xf0
.L_713e4:
	ldrh	r1, [r3, #20]
	ldrh	r0, [r4, #0]
	add	r0, #63	@ 0x3f
	sub	r5, r1, r0
	cmp	r5, #0
	bge	.L_713f4
	mov	r5, #0
	b	.L_713fc
.L_713f4:
	asr	r5, r5, #2
	cmp	r5, #160	@ 0xa0
	ble	.L_713fc
	mov	r5, #160	@ 0xa0
.L_713fc:
	ldrb	r0, [r7, #0]
	sub	r0, r6, r0
	str	r0, [sp, #0]
	ldrb	r0, [r7, #1]
	sub	r0, r0, r6
	str	r0, [sp, #4]
	ldrb	r0, [r7, #2]
	sub	r0, r5, r0
	str	r0, [sp, #8]
	ldrb	r0, [r7, #3]
	sub	r0, r0, r5
	str	r0, [sp, #12]
	mov	r3, #0
	mov	r4, #0
	mov	r2, sp
.L_7141a:
	lsl	r0, r3, #2
	add	r0, sp
	ldr	r1, [r0, #0]
	ldr	r0, [r2, #0]
	cmp	r1, r0
	bgt	.L_71428
	add	r3, r4, #0
.L_71428:
	add	r2, #4
	add	r4, #1
	cmp	r4, #3
	ble	.L_7141a
	lsl	r0, r3, #2
	add	r0, sp
	ldr	r0, [r0, #0]
	sub	r1, r0, #2
	asr	r0, r0, #3
	sub	r4, r1, r0
	mov	r2, #0
	mov	r1, sp
	mov	r3, #3
.L_71442:
	ldr	r0, [r1, #0]
	cmp	r4, r0
	bge	.L_7144e
	sub	r0, r0, r4
	str	r0, [r1, #0]
	b	.L_71450
.L_7144e:
	str	r2, [r1, #0]
.L_71450:
	add	r1, #4
	sub	r3, #1
	cmp	r3, #0
	bge	.L_71442
	ldr	r3, [sp, #0]
	cmp	r3, #0
	beq	.L_7146e
	ldrb	r1, [r7, #0]
	sub	r0, r6, r3
	cmp	r1, r0
	bge	.L_7146c
	add	r0, r1, r3
	strb	r0, [r7, #0]
	b	.L_7146e
.L_7146c:
	strb	r6, [r7, #0]
.L_7146e:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L_71484
	ldrb	r1, [r7, #1]
	add	r0, r6, r3
	cmp	r1, r0
	ble	.L_71482
	sub	r0, r1, r3
	strb	r0, [r7, #1]
	b	.L_71484
.L_71482:
	strb	r6, [r7, #1]
.L_71484:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L_7149a
	ldrb	r1, [r7, #2]
	sub	r0, r5, r3
	cmp	r1, r0
	bge	.L_71498
	add	r0, r1, r3
	strb	r0, [r7, #2]
	b	.L_7149a
.L_71498:
	strb	r5, [r7, #2]
.L_7149a:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L_714b0
	ldrb	r1, [r7, #3]
	add	r0, r5, r3
	cmp	r1, r0
	ble	.L_714ae
	sub	r0, r1, r3
	strb	r0, [r7, #3]
	b	.L_714b0
.L_714ae:
	strb	r5, [r7, #3]
.L_714b0:
	mov	r4, #0
	ldrb	r0, [r7, #0]
	cmp	r0, r6
	bne	.L_714dc
	ldrb	r0, [r7, #1]
	cmp	r0, r6
	bne	.L_714dc
	ldrb	r0, [r7, #2]
	cmp	r0, r5
	bne	.L_714dc
	ldrb	r0, [r7, #3]
	cmp	r0, r5
	bne	.L_714dc
	ldr	r1, .L_714e8
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	ldr	r1, .L_714ec
	mov	r0, #16
	strh	r0, [r1, #0]
	mov	r4, #1
	mov	r0, #0
	strb	r0, [r7, #4]
.L_714dc:
	add	r0, r4, #0
	add	sp, #16
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_714e8:
	.4byte	gBldCnt
.L_714ec:
	.4byte	gBldy


thumb_func_start func_80714F0
func_80714F0:
	push	{r4, lr}
	sub	sp, #36	@ 0x24
	ldr	r1, .L_71544
	mov	r0, sp
	mov	r2, #17
	bl	memcpy
	ldr	r4, .L_71548
	ldrb	r0, [r4, #4]
	cmp	r0, #1
	bne	.L_7150c
	ldr	r0, .L_7154c
	bl	m4aSongNumStart
.L_7150c:
	add	r3, r4, #0
	add	r1, sp, #20
	mov	r2, #0
	add	r0, sp, #32
.L_71514:
	str	r2, [r0, #0]
	sub	r0, #4
	cmp	r0, r1
	bge	.L_71514
	mov	r4, #80	@ 0x50
	ldrb	r1, [r3, #4]
	mov	r2, sp
	add	r0, r2, r1
	mov	r2, #0
	ldrsb	r2, [r0, r2]
	cmp	r1, #0
	beq	.L_71530
	add	r0, r1, #1
	strb	r0, [r3, #4]
.L_71530:
	cmp	r2, #0
	beq	.L_71566
	ldrb	r1, [r3, #2]
	sub	r0, r4, r2
	cmp	r1, r0
	bge	.L_71550
	add	r0, r1, r2
	strb	r0, [r3, #2]
	b	.L_71552
	.align	2, 0
.L_71544:
	.4byte	sUnk_83F9EA5
.L_71548:
	.4byte	gWindow
.L_7154c:
	.4byte	0x000001c1
.L_71550:
	strb	r4, [r3, #2]
.L_71552:
	cmp	r2, #0
	beq	.L_71566
	ldrb	r1, [r3, #3]
	add	r0, r4, r2
	cmp	r1, r0
	ble	.L_71564
	sub	r0, r1, r2
	strb	r0, [r3, #3]
	b	.L_71566
.L_71564:
	strb	r4, [r3, #3]
.L_71566:
	mov	r2, #0
	add	r1, r3, #0
	ldrb	r0, [r1, #2]
	cmp	r0, r4
	bne	.L_7158c
	ldrb	r0, [r1, #3]
	cmp	r0, r4
	bne	.L_7158c
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	bne	.L_71582
	mov	r0, #1
	strb	r0, [r1, #4]
	b	.L_7158c
.L_71582:
	cmp	r0, #17
	bne	.L_7158c
	mov	r2, #1
	mov	r0, #0
	strb	r0, [r3, #4]
.L_7158c:
	add	r0, r2, #0
	add	sp, #36	@ 0x24
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


.section .rodata

.global sUnk_83F9DF8
sUnk_83F9DF8:
	.byte 0x3, 0x7, 0xB, 0xF, 0x13, 0x17, 0x1B, 0x20

.global sUnk_83F9E00
sUnk_83F9E00:
	.4byte 1, 1, 1

.global sUnk_83F9E0C
sUnk_83F9E0C:
	.byte 0x0A, 0xFB, 0x00
	.byte 0x00, 0xFB, 0x0A
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05
	.byte 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x05

.global sUnk_83F9EA2
sUnk_83F9EA2:
	.byte 0x08, 0x08, 0x20

.global sUnk_83F9EA5
sUnk_83F9EA5:
	.byte 0x0C, 0xFE, 0x00
	.byte 0xFF, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00
	.byte 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x01
	.byte 0x00, 0x01, 0x00

.align 2, 0
