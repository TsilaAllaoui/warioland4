.include "macros.s.inc"


thumb_func_start func_806D3C0
func_806D3C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_6d460
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_6d4ac
	ldr	r2, .L_6d464
	mov	r0, #255	@ 0xff
	strb	r0, [r2, #1]
	mov	r0, #1
	neg	r0, r0
	strb	r0, [r2, #2]
	ldr	r1, .L_6d468
	ldrh	r0, [r1, #18]
	lsr	r0, r0, #6
	mov	r9, r0
	ldrh	r0, [r1, #20]
	lsr	r0, r0, #6
	mov	r8, r0
	ldr	r1, .L_6d46c
	ldrh	r0, [r1, #12]
	mov	r3, r8
	mul	r3, r0
	add	r0, r3, #0
	add	r0, r9
	lsl	r0, r0, #16
	ldr	r1, [r1, #8]
	lsr	r0, r0, #15
	add	r0, r0, r1
	ldrh	r7, [r0, #0]
	ldr	r0, .L_6d470
	ldr	r1, [r0, #8]
	lsl	r0, r7, #1
	add	r0, r0, r1
	ldrh	r7, [r0, #0]
	strh	r7, [r2, #4]
	ldr	r1, .L_6d474
	ldr	r0, .L_6d478
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	mov	r6, #0
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_6d4ac
	add	r5, r2, #0
	mov	sl, r5
.L_6d42a:
	ldrb	r1, [r4, #2]
	ldrb	r2, [r4, #3]
	ldrb	r3, [r4, #4]
	ldrb	r0, [r4, #5]
	mov	ip, r0
	ldr	r5, .L_6d47c
	ldrb	r0, [r5, #0]
	ldrb	r5, [r4, #1]
	cmp	r0, r5
	bne	.L_6d4a2
	cmp	r1, r9
	bhi	.L_6d4a2
	cmp	r9, r2
	bhi	.L_6d4a2
	cmp	r3, r8
	bhi	.L_6d4a2
	cmp	r8, ip
	bhi	.L_6d4a2
	sub	r0, r7, #2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #5
	bhi	.L_6d480
	mov	r0, #128	@ 0x80
	ldr	r1, .L_6d464
	strb	r0, [r1, #2]
	b	.L_6d486
.L_6d460:
	.4byte	gMainTimer
.L_6d464:
	.4byte	gUnk_300004C
.L_6d468:
	.4byte	gWarioData
.L_6d46c:
	.4byte	gBackgroundInfo
.L_6d470:
	.4byte	gUnk_30031F4
.L_6d474:
	.4byte	sUnk_878F21C
.L_6d478:
	.4byte	gUnk_3000023
.L_6d47c:
	.4byte	gCurrentRoom
.L_6d480:
	mov	r0, #0
	ldr	r2, .L_6d4bc
	strb	r0, [r2, #2]
.L_6d486:
	add	r0, r6, #0
	mov	r1, #10
	bl	__divsi3
	mov	r3, sl
	strb	r0, [r3, #1]
	add	r0, r6, #0
	mov	r1, #10
	bl	__modsi3
	mov	r5, sl
	ldrb	r1, [r5, #2]
	orr	r0, r1
	strb	r0, [r5, #2]
.L_6d4a2:
	add	r4, #12
	add	r6, #1
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_6d42a
.L_6d4ac:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6d4bc:
	.4byte	gUnk_300004C


thumb_func_start func_806D4C0
func_806D4C0:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #36	@ 0x24
	lsl	r4, r0, #16
	lsr	r3, r4, #16
	add	r7, r3, #0
	lsl	r2, r1, #16
	lsr	r0, r2, #16
	add	r5, r0, #0
	ldr	r6, .L_6d4e0
	ldrh	r0, [r6, #12]
	lsl	r0, r0, #6
	cmp	r5, r0
	blt	.L_6d4e8
	ldr	r0, .L_6d4e4
	b	.L_6d5b2
	.align	2, 0
.L_6d4e0:
	.4byte	gBackgroundInfo
.L_6d4e4:
	.4byte	0x1000001
.L_6d4e8:
	ldrh	r0, [r6, #14]
	lsl	r0, r0, #6
	cmp	r3, r0
	blt	.L_6d4f4
	mov	r0, #0
	b	.L_6d5b2
.L_6d4f4:
	add	r3, sp, #12
	lsr	r1, r4, #22
	str	r1, [r3, #8]
	lsr	r2, r2, #22
	str	r2, [r3, #4]
	ldrh	r0, [r6, #12]
	mul	r1, r0
	add	r1, r1, r2
	ldr	r2, .L_6d550
	ldr	r0, [r6, #8]
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	ldr	r2, [r2, #4]
	add	r0, r2, r0
	ldrb	r4, [r0, #0]
	str	r4, [sp, #4]
	ldr	r0, [r6, #16]
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	add	r2, r2, r0
	ldrb	r0, [r2, #0]
	str	r0, [sp, #8]
	str	r4, [sp, #12]
	mov	r0, #63	@ 0x3f
	and	r7, r0
	str	r7, [r3, #8]
	and	r5, r0
	str	r5, [r3, #4]
	mov	r0, #0
	str	r0, [r3, #20]
	mov	r2, #0
	ldr	r1, [sp, #12]
	add	r4, r3, #0
	cmp	r1, #12
	bgt	.L_6d558
	ldr	r0, .L_6d554
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	add	r0, r4, #0
	bl	_call_via_r1
	add	r2, r0, #0
	b	.L_6d56c
	.align	2, 0
.L_6d550:
	.4byte	gUnk_30031F4
.L_6d554:
	.4byte	sUnk_878F2E4
.L_6d558:
	add	r0, r1, #0
	sub	r0, #20
	cmp	r0, #43	@ 0x2b
	bhi	.L_6d56a
	add	r0, r4, #0
	bl	func_806D89C
	add	r2, r0, #0
	b	.L_6d56c
.L_6d56a:
	str	r2, [sp, #12]
.L_6d56c:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	bne	.L_6d5b0
	ldr	r0, [sp, #8]
	str	r0, [sp, #12]
	cmp	r0, #12
	bne	.L_6d598
	ldr	r0, .L_6d590
	ldrb	r0, [r0, #3]
	cmp	r0, #16
	bne	.L_6d598
	ldr	r0, .L_6d594
	ldr	r1, [r0, #48]	@ 0x30
	add	r0, r4, #0
	bl	_call_via_r1
	b	.L_6d5ae
	.align	2, 0
.L_6d590:
	.4byte	gCurrentRoomHeader
.L_6d594:
	.4byte	sUnk_878F2E4
.L_6d598:
	ldr	r0, [sp, #12]
	sub	r0, #38	@ 0x26
	cmp	r0, #7
	bhi	.L_6d5b0
	ldr	r0, .L_6d5bc
	ldrb	r0, [r0, #3]
	cmp	r0, #16
	bne	.L_6d5b0
	add	r0, r4, #0
	bl	func_806D89C
.L_6d5ae:
	add	r2, r0, #0
.L_6d5b0:
	add	r0, r2, #0
.L_6d5b2:
	add	sp, #36	@ 0x24
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_6d5bc:
	.4byte	gCurrentRoomHeader


thumb_func_start func_806D5C0
func_806D5C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	lsl	r4, r0, #16
	lsr	r0, r4, #16
	mov	r9, r0
	lsl	r5, r1, #16
	lsr	r1, r5, #16
	mov	sl, r1
	ldr	r1, .L_6d5f4
	ldrh	r0, [r1, #12]
	lsl	r0, r0, #6
	cmp	sl, r0
	bge	.L_6d5ea
	ldrh	r0, [r1, #14]
	lsl	r0, r0, #6
	cmp	r9, r0
	blt	.L_6d5fc
.L_6d5ea:
	ldr	r1, .L_6d5f8
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	b	.L_6d71a
.L_6d5f4:
	.4byte	gBackgroundInfo
.L_6d5f8:
	.4byte	gUnk_30000A0
.L_6d5fc:
	mov	r0, r9
	mov	r1, sl
	bl	GetBackgroundCollisionAtPosition
	add	r0, sp, #8
	lsr	r1, r4, #22
	str	r1, [r0, #8]
	lsr	r1, r5, #22
	str	r1, [r0, #4]
	mov	r5, #1
	mov	r8, r0
	mov	r7, r8
	ldr	r3, .L_6d660
	mov	r4, sp
	add	r4, #2
	mov	r6, sp
.L_6d61c:
	ldr	r0, .L_6d664
	lsl	r2, r5, #3
	add	r2, r2, r0
	ldrh	r1, [r2, #4]
	ldr	r0, [r7, #8]
	mul	r1, r0
	ldr	r0, [r7, #4]
	add	r0, r0, r1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #0]
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_6d670
	cmp	r5, #1
	bne	.L_6d670
	ldrh	r0, [r7, #8]
	ldrh	r1, [r7, #4]
	ldrh	r2, [r6, #2]
	str	r3, [sp, #32]
	bl	func_806F524
	ldr	r3, [sp, #32]
	cmp	r0, #0
	beq	.L_6d66c
	ldrb	r0, [r3, #0]
	cmp	r0, #3
	bne	.L_6d668
	strh	r5, [r6, #2]
	b	.L_6d66c
.L_6d660:
	.4byte	gUnk_3000028
.L_6d664:
	.4byte	gBackgroundInfo
.L_6d668:
	mov	r2, #0
	strh	r2, [r6, #2]
.L_6d66c:
	mov	r0, #0
	strb	r0, [r3, #0]
.L_6d670:
	ldr	r0, .L_6d6b8
	ldrh	r1, [r4, #0]
	ldr	r0, [r0, #4]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r5, #1
	cmp	r5, #2
	ble	.L_6d61c
	mov	r0, sp
	ldrh	r0, [r0, #2]
	str	r0, [sp, #8]
	mov	r1, #63	@ 0x3f
	mov	r0, r9
	and	r0, r1
	mov	r2, r8
	str	r0, [r2, #8]
	mov	r0, sl
	and	r0, r1
	str	r0, [r2, #4]
	mov	r0, #1
	str	r0, [r2, #20]
	mov	r5, #0
	ldr	r1, [sp, #8]
	cmp	r1, #12
	bgt	.L_6d6c0
	ldr	r0, .L_6d6bc
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	r0, r8
	bl	_call_via_r1
	add	r5, r0, #0
	b	.L_6d6d4
.L_6d6b8:
	.4byte	gUnk_30031F4
.L_6d6bc:
	.4byte	sUnk_878F2E4
.L_6d6c0:
	add	r0, r1, #0
	sub	r0, #20
	cmp	r0, #43	@ 0x2b
	bhi	.L_6d6d2
	mov	r0, r8
	bl	func_806D89C
	add	r5, r0, #0
	b	.L_6d6d4
.L_6d6d2:
	str	r5, [sp, #8]
.L_6d6d4:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.L_6d718
	mov	r0, sp
	ldrh	r0, [r0, #4]
	str	r0, [sp, #8]
	cmp	r0, #12
	bne	.L_6d700
	ldr	r0, .L_6d6f8
	ldrb	r0, [r0, #3]
	cmp	r0, #16
	bne	.L_6d700
	ldr	r0, .L_6d6fc
	ldr	r1, [r0, #48]	@ 0x30
	mov	r0, r8
	bl	_call_via_r1
	b	.L_6d716
.L_6d6f8:
	.4byte	gCurrentRoomHeader
.L_6d6fc:
	.4byte	sUnk_878F2E4
.L_6d700:
	ldr	r0, [sp, #8]
	sub	r0, #38	@ 0x26
	cmp	r0, #7
	bhi	.L_6d718
	ldr	r0, .L_6d72c
	ldrb	r0, [r0, #3]
	cmp	r0, #16
	bne	.L_6d718
	mov	r0, r8
	bl	func_806D89C
.L_6d716:
	add	r5, r0, #0
.L_6d718:
	add	r0, r5, #0
.L_6d71a:
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_6d72c:
	.4byte	gCurrentRoomHeader


thumb_func_start func_806D730
func_806D730:
	ldr	r0, [r0, #0]
	bx	lr


thumb_func_start func_806D734
func_806D734:
	ldr	r0, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	orr	r0, r1
	bx	lr
	.align	2, 0


thumb_func_start func_806D740
func_806D740:
	add	r2, r0, #0
	ldr	r1, [r2, #8]
	ldr	r0, [r2, #4]
	cmp	r1, r0
	blt	.L_6d754
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d756
.L_6d754:
	ldr	r1, [r2, #0]
.L_6d756:
	add	r0, r1, #0
	bx	lr
	.align	2, 0


thumb_func_start func_806D75C
func_806D75C:
	add	r2, r0, #0
	ldr	r0, [r2, #4]
	mov	r1, #63	@ 0x3f
	sub	r1, r1, r0
	ldr	r0, [r2, #8]
	cmp	r0, r1
	blt	.L_6d774
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d776
.L_6d774:
	ldr	r1, [r2, #0]
.L_6d776:
	add	r0, r1, #0
	bx	lr
	.align	2, 0


thumb_func_start func_806D77C
func_806D77C:
	add	r2, r0, #0
	ldr	r0, [r2, #4]
	asr	r0, r0, #1
	ldr	r1, [r2, #8]
	cmp	r1, r0
	blt	.L_6d792
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d794
.L_6d792:
	ldr	r1, [r2, #0]
.L_6d794:
	add	r0, r1, #0
	bx	lr


thumb_func_start func_806D798
func_806D798:
	add	r2, r0, #0
	ldr	r0, [r2, #4]
	add	r0, #63	@ 0x3f
	asr	r0, r0, #1
	ldr	r1, [r2, #8]
	cmp	r1, r0
	blt	.L_6d7b0
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d7b2
.L_6d7b0:
	ldr	r1, [r2, #0]
.L_6d7b2:
	add	r0, r1, #0
	bx	lr
	.align	2, 0


thumb_func_start func_806D7B8
func_806D7B8:
	add	r2, r0, #0
	ldr	r0, [r2, #4]
	asr	r0, r0, #1
	mov	r1, #63	@ 0x3f
	sub	r1, r1, r0
	ldr	r0, [r2, #8]
	cmp	r0, r1
	blt	.L_6d7d2
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d7d4
.L_6d7d2:
	ldr	r1, [r2, #0]
.L_6d7d4:
	add	r0, r1, #0
	bx	lr


thumb_func_start func_806D7D8
func_806D7D8:
	add	r2, r0, #0
	ldr	r0, [r2, #4]
	mov	r1, #63	@ 0x3f
	sub	r1, r1, r0
	asr	r1, r1, #1
	ldr	r0, [r2, #8]
	cmp	r0, r1
	blt	.L_6d7f2
	ldr	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	orr	r1, r0
	b	.L_6d7f4
.L_6d7f2:
	ldr	r1, [r2, #0]
.L_6d7f4:
	add	r0, r1, #0
	bx	lr


thumb_func_start func_806D7F8
func_806D7F8:
	push	{lr}
	add	r1, r0, #0
	mov	r2, #0
	ldr	r0, [r1, #20]
	cmp	r0, #0
	bne	.L_6d81c
	ldr	r0, .L_6d818
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	beq	.L_6d81c
	mov	r0, #1
	str	r0, [r1, #0]
	add	r0, r1, #0
	bl	func_806D734
	b	.L_6d824
.L_6d818:
	.4byte	gWarioData
.L_6d81c:
	str	r2, [r1, #0]
	add	r0, r1, #0
	bl	func_806D730
.L_6d824:
	add	r2, r0, #0
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start func_806D82C
func_806D82C:
	push	{lr}
	add	r1, r0, #0
	mov	r2, #0
	ldr	r0, [r1, #20]
	cmp	r0, #0
	bne	.L_6d842
	str	r2, [r1, #0]
	add	r0, r1, #0
	bl	func_806D730
	b	.L_6d84c
.L_6d842:
	mov	r0, #1
	str	r0, [r1, #0]
	add	r0, r1, #0
	bl	func_806D734
.L_6d84c:
	add	r2, r0, #0
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start func_806D854
func_806D854:
	push	{lr}
	add	r1, r0, #0
	mov	r2, #0
	ldr	r0, [r1, #20]
	cmp	r0, #0
	bne	.L_6d878
	ldr	r0, .L_6d874
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_6d878
	str	r2, [r1, #0]
	add	r0, r1, #0
	bl	func_806D730
	b	.L_6d882
	.align	2, 0
.L_6d874:
	.4byte	gWarioData
.L_6d878:
	mov	r0, #1
	str	r0, [r1, #0]
	add	r0, r1, #0
	bl	func_806D734
.L_6d882:
	add	r2, r0, #0
	add	r0, r2, #0
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806D88C
func_806D88C:
	push	{lr}
	mov	r1, #0
	str	r1, [r0, #0]
	bl	func_806D730
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806D89C
func_806D89C:
	push	{r4, lr}
	add	r2, r0, #0
.L_6d8a0:
	mov	r4, #0
	ldr	r0, [r2, #0]
.L_6d8a4:
	sub	r0, #20
	cmp	r0, #43	@ 0x2b
.L_6d8a8:
	bls	.L_6d8ac
	b	.L_6d9d4
.L_6d8ac:
	lsl	r0, r0, #2
	ldr	r1, .L_6d8b8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6d8b8:
	.4byte	.L_6d8bc
.L_6d8bc:
	.4byte	.L_6d96c
	.4byte	.L_6d96c
	.4byte	.L_6d96c
	.4byte	.L_6d96c
	.4byte	.L_6d976
	.4byte	.L_6d976
	.4byte	.L_6d976
	.4byte	.L_6d976
	.4byte	.L_6d9d4
	.4byte	.L_6d980
	.4byte	.L_6d980
	.4byte	.L_6d980
	.4byte	.L_6d980
	.4byte	.L_6d98a
	.4byte	.L_6d98a
	.4byte	.L_6d98a
	.4byte	.L_6d98a
	.4byte	.L_6d9d4
	.4byte	.L_6d994
	.4byte	.L_6d994
	.4byte	.L_6d994
	.4byte	.L_6d994
	.4byte	.L_6d99e
	.4byte	.L_6d99e
	.4byte	.L_6d99e
	.4byte	.L_6d99e
	.4byte	.L_6d9d4
	.4byte	.L_6d9a8
	.4byte	.L_6d9a8
	.4byte	.L_6d9a8
	.4byte	.L_6d9a8
	.4byte	.L_6d9b2
	.4byte	.L_6d9b2
	.4byte	.L_6d9b2
	.4byte	.L_6d9b2
	.4byte	.L_6d9d4
	.4byte	.L_6d9bc
	.4byte	.L_6d9bc
	.4byte	.L_6d9bc
	.4byte	.L_6d9bc
	.4byte	.L_6d9c6
	.4byte	.L_6d9c6
	.4byte	.L_6d9c6
	.4byte	.L_6d9c6
.L_6d96c:
	ldr	r0, [r2, #0]
	sub	r0, #19
	str	r0, [r2, #12]
	mov	r0, #1
	b	.L_6d9d8
.L_6d976:
	ldr	r0, [r2, #0]
	sub	r0, #23
	str	r0, [r2, #12]
	mov	r0, #1
	b	.L_6d9ce
.L_6d980:
	ldr	r0, [r2, #0]
	sub	r0, #28
	str	r0, [r2, #12]
	mov	r0, #2
	b	.L_6d9d8
.L_6d98a:
	ldr	r0, [r2, #0]
	sub	r0, #32
	str	r0, [r2, #12]
	mov	r0, #2
	b	.L_6d9ce
.L_6d994:
	ldr	r0, [r2, #0]
	sub	r0, #37	@ 0x25
	str	r0, [r2, #12]
	mov	r0, #3
	b	.L_6d9d8
.L_6d99e:
	ldr	r0, [r2, #0]
	sub	r0, #41	@ 0x29
	str	r0, [r2, #12]
	mov	r0, #3
	b	.L_6d9ce
.L_6d9a8:
	ldr	r0, [r2, #0]
	sub	r0, #46	@ 0x2e
	str	r0, [r2, #12]
	mov	r0, #4
	b	.L_6d9d8
.L_6d9b2:
	ldr	r0, [r2, #0]
	sub	r0, #50	@ 0x32
	str	r0, [r2, #12]
	mov	r0, #4
	b	.L_6d9ce
.L_6d9bc:
	ldr	r0, [r2, #0]
	sub	r0, #55	@ 0x37
	str	r0, [r2, #12]
	mov	r0, #5
	b	.L_6d9d8
.L_6d9c6:
	ldr	r0, [r2, #0]
	sub	r0, #59	@ 0x3b
	str	r0, [r2, #12]
	mov	r0, #5
.L_6d9ce:
	str	r0, [r2, #16]
	mov	r4, #1
	b	.L_6d9da
.L_6d9d4:
	mov	r0, #0
	str	r0, [r2, #12]
.L_6d9d8:
	str	r0, [r2, #16]
.L_6d9da:
	mov	r0, #0
	ldr	r1, [r2, #16]
	cmp	r1, #5
	bhi	.L_6dab8
	lsl	r0, r1, #2
	ldr	r1, .L_6d9ec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_6d9ec:
	.4byte	.L_6d9f0
.L_6d9f0:
	.4byte	.L_6da54
	.4byte	.L_6da08
	.4byte	.L_6da20
	.4byte	.L_6da3c
	.4byte	.L_6da60
	.4byte	.L_6da8e
.L_6da08:
	ldr	r1, .L_6da1c
	ldr	r0, [r2, #12]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r3, #1
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, r4
	bne	.L_6da84
	b	.L_6da54
.L_6da1c:
	.4byte	gSwitchStates
.L_6da20:
	ldr	r1, .L_6da38
	ldr	r0, [r2, #12]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, r4
	beq	.L_6da54
	add	r0, r2, #0
	bl	func_806D7F8
	b	.L_6dab8
.L_6da38:
	.4byte	gSwitchStates
.L_6da3c:
	ldr	r1, .L_6da50
	ldr	r0, [r2, #12]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, r4
	beq	.L_6da54
	mov	r0, #12
	b	.L_6da56
.L_6da50:
	.4byte	gSwitchStates
.L_6da54:
	mov	r0, #0
.L_6da56:
	str	r0, [r2, #0]
	add	r0, r2, #0
	bl	func_806D730
	b	.L_6dab8
.L_6da60:
	ldr	r1, .L_6da80
	ldr	r0, [r2, #12]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r3, #1
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, r4
	beq	.L_6da84
	mov	r0, #2
	str	r0, [r2, #0]
	add	r0, r2, #0
.L_6da78:
	bl	func_806D740
	b	.L_6dab8
	.align	2, 0
.L_6da80:
	.4byte	gSwitchStates
.L_6da84:
	str	r3, [r2, #0]
	add	r0, r2, #0
	bl	func_806D734
	b	.L_6dab8
.L_6da8e:
	ldr	r1, .L_6daac
	ldr	r0, [r2, #12]
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	mov	r3, #1
	add	r0, r3, #0
	and	r0, r1
.L_6da9c:
	cmp	r0, r4
	beq	.L_6dab0
	mov	r0, #3
	str	r0, [r2, #0]
	add	r0, r2, #0
	bl	func_806D75C
	b	.L_6dab8
.L_6daac:
	.4byte	gSwitchStates
.L_6dab0:
	str	r3, [r2, #0]
	add	r0, r2, #0
	bl	func_806D734
.L_6dab8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
