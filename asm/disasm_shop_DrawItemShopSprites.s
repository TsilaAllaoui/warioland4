.align 2, 0
.global DrawItemShopSprites
.thumb
.type DrawItemShopSprites, %function
DrawItemShopSprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r0, #0
	mov	r8, r0
	ldr	r1, .L_908a8
	ldrb	r7, [r1, #0]
	lsl	r0, r7, #3
	ldr	r4, .L_908ac
	add	r6, r0, r4
	ldr	r2, .L_908b0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_908b4
	ldr	r5, [r3, #0]
	mov	ip, r5
	lsl	r0, r0, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_90710
	mov	r0, r8
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_90710
	mov	r1, r8
	strh	r1, [r2, #2]
	ldr	r0, .L_908b8
	cmp	ip, r0
	bne	.L_90710
	ldr	r0, .L_908bc
	str	r0, [r3, #0]
.L_90710:
	ldrh	r0, [r2, #2]
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	ble	.L_90726
	b	.L_90990
.L_90726:
	ldr	r5, .L_908c0
	cmp	r8, r7
	bge	.L_9078e
	ldr	r1, .L_908ac
	ldr	r2, .L_908c4
	mov	sl, r2
	ldr	r3, .L_908c8
	mov	ip, r3
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	sub	r2, r7, r2
	mov	r8, r2
.L_90746:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #120	@ 0x78
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #20
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_90746
	mov	r8, r7
.L_9078e:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldrh	r1, [r5, #2]
	ldr	r3, .L_908cc
	ldr	r2, [r3, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_907ca
	mov	r0, #0
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_907ca
	strh	r0, [r5, #2]
	ldr	r0, .L_908d0
	cmp	r2, r0
	bne	.L_907ca
	mov	r0, #1
	strh	r0, [r5, #2]
.L_907ca:
	ldrh	r0, [r5, #2]
	ldr	r2, .L_908cc
	ldr	r1, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	ble	.L_907e2
	b	.L_90990
.L_907e2:
	cmp	r8, r7
	bge	.L_9084c
	ldr	r1, .L_908ac
	ldr	r3, .L_908c4
	mov	sl, r3
	ldr	r0, .L_908c8
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	mov	r3, r8
	lsl	r0, r3, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r0, r7, r0
	mov	r8, r0
.L_90802:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #6]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #4
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_90802
	mov	r8, r7
.L_9084c:
	mov	r2, #0
	mov	ip, r2
.L_90850:
	ldr	r0, .L_908d4
	add	r0, ip
	ldrb	r2, [r0, #0]
	mov	r3, ip
	lsl	r1, r3, #1
	add	r0, r1, r3
	add	r0, r0, r2
	lsl	r0, r0, #2
	ldr	r5, .L_908d8
	add	r0, r0, r5
	ldr	r3, [r0, #0]
	add	r5, r1, #0
	cmp	r2, #1
	bne	.L_908e0
	ldr	r2, .L_908dc
	ldrh	r1, [r2, #0]
	add	r1, #1
	mov	r4, #0
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_9089c
	strh	r4, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_9089c
	strh	r0, [r2, #2]
.L_9089c:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	b	.L_908e2
	.align	2, 0
.L_908a8:
	.4byte	gOamSlotsUsed
.L_908ac:
	.4byte	gOamBuffer
.L_908b0:
	.4byte	gItemShopShopkeeperAnimationState
.L_908b4:
	.4byte	gItemShopShopkeeperAnimation
.L_908b8:
	.4byte	sItemShopShopkeeperVoiceAnimation
.L_908bc:
	.4byte	sItemShopShopkeeperIdleAnimation
.L_908c0:
	.4byte	gItemShopCursor
.L_908c4:
	.4byte	0x000001ff
.L_908c8:
	.4byte	0xfffffe00
.L_908cc:
	.4byte	gItemShopCursorAnimation
.L_908d0:
	.4byte	sItemShopCursorPurchaseAnimation
.L_908d4:
	.4byte	gItemShopItemAvailability
.L_908d8:
	.4byte	sUnk_872FF9C
.L_908dc:
	.4byte	gItemShopItemIconAnimationState
.L_908e0:
	ldr	r4, [r3, #0]
.L_908e2:
	ldrh	r0, [r4, #0]
	add	r7, r7, r0
	add	r4, #2
	cmp	r7, #128	@ 0x80
	bgt	.L_90990
	mov	r0, ip
	add	r0, #1
	str	r0, [sp, #0]
	cmp	r8, r7
	bge	.L_90982
	ldr	r0, .L_90920
	add	r0, r0, r5
	mov	sl, r0
	ldr	r0, .L_90924
	add	r0, r0, r5
	mov	r9, r0
	ldr	r0, .L_90928
	add	r0, r0, r5
	mov	ip, r0
	ldr	r0, .L_9092c
	add	r5, r5, r0
	str	r5, [sp, #4]
.L_9090e:
	ldr	r1, .L_90930
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_90934
	mov	r2, sl
	ldrh	r0, [r2, #0]
	mov	r3, r9
	ldrh	r1, [r3, #0]
	b	.L_9093c
.L_90920:
	.4byte	sUnk_872FF58
.L_90924:
	.4byte	sUnk_872FF4C
.L_90928:
	.4byte	sUnk_872FF38
.L_9092c:
	.4byte	sUnk_872FF24
.L_90930:
	.4byte	gCurrentPassage
.L_90934:
	mov	r5, ip
	ldrh	r0, [r5, #0]
	ldr	r2, [sp, #4]
	ldrh	r1, [r2, #0]
.L_9093c:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r5, r8
	lsl	r3, r5, #3
	ldr	r5, .L_909a0
	add	r3, r3, r5
	add	r0, r2, r0
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, r1
	ldr	r0, .L_909a4
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_909a8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r7
	blt	.L_9090e
.L_90982:
	ldr	r1, [sp, #0]
.L_90984:
	.4byte	0x2909468c
	bgt	.L_9098c
	b	.L_90850
.L_9098c:
	ldr	r2, .L_909ac
	strb	r7, [r2, #0]
.L_90990:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
.L_90998:
	.4byte	0xbcf046aa
	pop	{r0}
	bx	r0
.L_909a0:
	.4byte	gOamBuffer
.L_909a4:
	.4byte	0x000001ff
.L_909a8:
	.4byte	0xfffffe00
.L_909ac:
	.4byte	gOamSlotsUsed
