.include "macros.s.inc"
thumb_func_start DrawPassageScreenSprites
DrawPassageScreenSprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	mov	r7, #0
	ldr	r2, .L_85700
	ldrb	r6, [r2, #0]
	lsl	r0, r6, #3
	ldr	r3, .L_85704
	add	r5, r0, r3
	ldr	r0, .L_85708
	ldrb	r1, [r0, #0]
	mov	r4, #4
	str	r4, [sp, #4]
	cmp	r1, #0
	beq	.L_855a8
	mov	r0, #1
	str	r0, [sp, #4]
.L_855a8:
	mov	r1, #0
	str	r1, [sp, #0]
	ldr	r2, [sp, #4]
	cmp	r7, r2
	blt	.L_855b4
	b	.L_8597c
.L_855b4:
	mov	r8, r1
	mov	r4, #0
	str	r4, [sp, #8]
.L_855ba:
	ldr	r0, .L_8570c
	ldr	r1, [sp, #8]
	add	r2, r1, r0
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_855c8
	b	.L_8572c
.L_855c8:
	ldr	r0, .L_85710
	add	r0, r8
	ldr	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_855fc
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
	bne	.L_855fc
	strh	r0, [r2, #2]
.L_855fc:
	ldr	r2, [sp, #8]
	ldr	r4, .L_8570c
	add	r0, r2, r4
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85616
	b	.L_85c5c
.L_85616:
	cmp	r7, r6
	bge	.L_8567c
	mov	ip, r8
	ldr	r0, .L_85714
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85704
	add	r4, r0, r2
	sub	r7, r6, r7
.L_8562e:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85708
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85718
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_8571c
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8562e
	add	r7, r6, #0
.L_8567c:
	ldr	r0, .L_85720
	add	r0, r8
	ldr	r3, [r0, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85690
	b	.L_85c5c
.L_85690:
	cmp	r7, r6
	blt	.L_85696
	b	.L_85964
.L_85696:
	ldr	r4, .L_85708
	mov	ip, r4
	ldr	r0, .L_85724
	mov	sl, r0
	lsl	r0, r7, #3
	ldr	r1, .L_85704
	add	r4, r0, r1
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	sub	r7, r6, r7
.L_856ac:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_85728
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_8571c
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85714
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_856ac
	b	.L_85962
.L_85700:
	.4byte	gOamSlotsUsed
.L_85704:
	.4byte	gOamBuffer
.L_85708:
	.4byte	gUnk_3003C4A
.L_8570c:
	.4byte	gUnk_3004708
.L_85710:
	.4byte	sUnk_863C4AC
.L_85714:
	.4byte	0xFFFFFE00
.L_85718:
	.4byte	sUnk_863C584
.L_8571c:
	.4byte	0x1FF
.L_85720:
	.4byte	sUnk_863C4BC
.L_85724:
	.4byte	sUnk_863C5A4
.L_85728:
	.4byte	sUnk_863C5AC
.L_8572c:
	ldr	r2, .L_85ab8
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r8
	ldr	r3, .L_85abc
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #31
	cmp	r0, #0
	beq	.L_857ba
	ldr	r0, .L_85ac0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85754
	b	.L_85c5c
.L_85754:
	cmp	r7, r6
	bge	.L_857ba
	mov	ip, r8
	ldr	r4, .L_85ac4
	mov	sl, r4
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	lsl	r0, r7, #3
	ldr	r1, .L_85ac8
	add	r4, r0, r1
	sub	r7, r6, r7
.L_8576c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8576c
	add	r7, r6, #0
.L_857ba:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #30
	cmp	r0, #0
	bge	.L_85848
	ldr	r0, .L_85ad8
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_857e2
	b	.L_85c5c
.L_857e2:
	cmp	r7, r6
	bge	.L_85848
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_857fa:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_857fa
	add	r7, r6, #0
.L_85848:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #29
	cmp	r0, #0
	bge	.L_858d6
	ldr	r0, .L_85adc
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85870
	b	.L_85c5c
.L_85870:
	cmp	r7, r6
	bge	.L_858d6
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_85888:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85888
	add	r7, r6, #0
.L_858d6:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #28
	cmp	r0, #0
	bge	.L_85964
	ldr	r0, .L_85ae0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_858fe
	b	.L_85c5c
.L_858fe:
	cmp	r7, r6
	bge	.L_85964
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_85916:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85916
.L_85962:
	add	r7, r6, #0
.L_85964:
	mov	r3, #4
	add	r8, r3
	ldr	r4, [sp, #8]
	add	r4, #8
	str	r4, [sp, #8]
	ldr	r0, [sp, #0]
	add	r0, #1
	str	r0, [sp, #0]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	.L_8597c
	b	.L_855ba
.L_8597c:
	ldr	r2, .L_85acc
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_85a26
	mov	r3, #0
	str	r3, [sp, #0]
	mov	r8, r3
.L_8598a:
	ldr	r4, .L_85ab8
	ldrb	r0, [r4, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r0, .L_85abc
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	bge	.L_85a18
	ldr	r0, .L_85ae4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_859b2
	b	.L_85c5c
.L_859b2:
	cmp	r7, r6
	bge	.L_85a18
	mov	ip, r8
	mov	r1, #13
	neg	r1, r1
	mov	sl, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	ldr	r0, .L_85ad4
	mov	r9, r0
	sub	r7, r6, r7
.L_859ca:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #20
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85ac4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_859ca
	add	r7, r6, #0
.L_85a18:
	mov	r3, #4
	add	r8, r3
	ldr	r4, [sp, #0]
	add	r4, #1
	str	r4, [sp, #0]
	cmp	r4, #3
	ble	.L_8598a
.L_85a26:
	ldr	r0, .L_85ae8
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_85b12
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r2, .L_85ae8
	ldrb	r1, [r2, #0]
	mov	r0, #5
	sub	r0, r0, r1
	ldr	r3, [sp, #0]
	cmp	r3, r0
	bge	.L_85b12
.L_85a40:
	ldr	r0, .L_85aec
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85a50
	b	.L_85c5c
.L_85a50:
	ldr	r4, [sp, #0]
	add	r4, #1
	mov	r8, r4
	cmp	r7, r6
	bge	.L_85b02
	ldr	r0, [sp, #0]
	lsl	r0, r0, #2
	mov	ip, r0
	ldr	r1, .L_85ac4
	mov	sl, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	ldr	r0, .L_85ad4
	mov	r9, r0
	sub	r7, r6, r7
.L_85a70:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85af0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	b	.L_85af4
.L_85ab8:
	.4byte	gCurrentPassage
.L_85abc:
	.4byte	gCurrentCollection
.L_85ac0:
	.4byte	sUnk_864131C
.L_85ac4:
	.4byte	0xFFFFFE00
.L_85ac8:
	.4byte	gOamBuffer
.L_85acc:
	.4byte	gUnk_3003C4A
.L_85ad0:
	.4byte	sUnk_863C584
.L_85ad4:
	.4byte	0x1FF
.L_85ad8:
	.4byte	sUnk_864133C
.L_85adc:
	.4byte	sUnk_864132C
.L_85ae0:
	.4byte	sUnk_864130C
.L_85ae4:
	.4byte	sUnk_86413BC
.L_85ae8:
	.4byte	gStageEntrySelectedStage
.L_85aec:
	.4byte	sUnk_86413CC
.L_85af0:
	.4byte	sUnk_863C5B4
.L_85af4:
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85a70
	add	r7, r6, #0
.L_85b02:
	mov	r3, r8
	str	r3, [sp, #0]
	ldr	r4, .L_85c6c
	ldrb	r1, [r4, #0]
	mov	r0, #5
	sub	r0, r0, r1
	cmp	r3, r0
	blt	.L_85a40
.L_85b12:
	ldr	r0, .L_85c70
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_85bac
	ldr	r0, .L_85c74
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85b2a
	b	.L_85c5c
.L_85b2a:
	cmp	r7, r6
	bge	.L_85bac
	ldr	r1, .L_85c78
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	ldr	r2, .L_85c7c
	mov	sl, r2
	ldr	r4, .L_85c80
	mov	r9, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_85c84
	mov	r8, r0
	sub	r7, r6, r7
.L_85b48:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, sl
	ldrb	r0, [r1, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r9
	ldrb	r0, [r1, #0]
	mov	r1, #4
	sub	r1, r1, r0
	lsl	r1, r1, #2
	str	r1, [sp, #12]
	ldr	r1, .L_85c88
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	ldr	r1, [sp, #12]
	add	r0, r1, r0
	ldr	r1, .L_85c8c
	add	r0, r0, r1
	str	r0, [sp, #12]
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85c90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85b48
	add	r7, r6, #0
.L_85bac:
	ldr	r2, .L_85c94
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_85c98
	ldr	r4, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r3
	cmp	r0, r1
	bcs	.L_85be2
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	bne	.L_85be2
	strh	r3, [r2, #2]
.L_85be2:
	ldrh	r0, [r2, #2]
	mov	r3, r8
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_85c5c
	cmp	r7, r6
	bge	.L_85c58
	ldr	r1, .L_85c78
	mov	r8, r2
	ldr	r4, .L_85c90
	mov	sl, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_85c84
	mov	r9, r0
	sub	r7, r6, r7
.L_85c0e:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85c0e
.L_85c58:
	ldr	r3, .L_85c9c
	strb	r6, [r3, #0]
.L_85c5c:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_85c6c:
	.4byte	gStageEntrySelectedStage
.L_85c70:
	.4byte	gUnk_3004700
.L_85c74:
	.4byte	sUnk_86413CC
.L_85c78:
	.4byte	gOamBuffer
.L_85c7c:
	.4byte	gUnk_3004729
.L_85c80:
	.4byte	gUnk_3004728
.L_85c84:
	.4byte	0x1FF
.L_85c88:
	.4byte	gUnk_3003C4A
.L_85c8c:
	.4byte	sUnk_863C5B4
.L_85c90:
	.4byte	0xFFFFFE00
.L_85c94:
	.4byte	gStageEntryMainSpriteState
.L_85c98:
	.4byte	gUnk_3003C40
.L_85c9c:
	.4byte	gOamSlotsUsed
