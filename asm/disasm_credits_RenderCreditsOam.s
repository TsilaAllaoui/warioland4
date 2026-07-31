.align 2, 0
.global RenderCreditsOam
.thumb
.type RenderCreditsOam, %function
RenderCreditsOam:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	ldr	r7, .L_93938
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r1, .L_9393c
	ldr	r2, .L_93940
	add	r0, r2, #0
	ldrh	r3, [r1, #4]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r1, #0
	cmp	r0, #32
	bhi	.L_9392c
	ldrb	r0, [r2, #0]
	add	r0, #1
	mov	r1, #3
	and	r0, r1
	strb	r0, [r2, #0]
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	strh	r0, [r2, #4]
	ldr	r1, .L_93944
	ldrb	r0, [r2, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #2]
.L_9392c:
	ldrb	r0, [r2, #2]
	cmp	r0, #0
	beq	.L_93948
	sub	r0, #1
	strb	r0, [r2, #2]
	b	.L_93954
.L_93938:
	.4byte	gOamBuffer
.L_9393c:
	.4byte	gCreditsBannerSpriteState
.L_93940:
	.4byte	0xfffffe40
.L_93944:
	.4byte	sCreditsBannerFrameDurations
.L_93948:
	ldrh	r0, [r2, #4]
	sub	r0, #8
	ldr	r4, .L_93a0c
	add	r1, r4, #0
	and	r0, r1
	strh	r0, [r2, #4]
.L_93954:
	ldrh	r0, [r2, #4]
	mov	r8, r0
	ldrh	r1, [r2, #6]
	mov	r9, r1
	ldr	r5, .L_93a10
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	mov	r6, #0
	ldr	r3, .L_93a14
	mov	sl, r3
	ldr	r0, .L_93a18
	mov	ip, r0
	cmp	r6, r2
	bge	.L_939ca
	mov	r5, #13
	neg	r5, r5
	ldr	r3, .L_93a1c
	add	r6, r2, #0
.L_93986:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	ldr	r0, .L_93a0c
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93a20
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93986
	ldr	r6, [sp, #8]
.L_939ca:
	ldr	r1, .L_93a24
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_93a30
	ldr	r0, .L_93a28
	mov	r2, sl
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93a00
	mov	r0, #0
	mov	r4, sl
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93a00
	strb	r0, [r4, #0]
.L_93a00:
	add	r5, r3, #0
	ldr	r1, .L_93a2c
	ldrh	r0, [r1, #4]
	sub	r0, #72	@ 0x48
	b	.L_93a66
	.align	2, 0
.L_93a0c:
	.4byte	0x000001ff
.L_93a10:
	.4byte	sCreditsBannerAnimation
.L_93a14:
	.4byte	gCreditsDifficultyLabelSpriteState
.L_93a18:
	.4byte	gCreditsDifficultyEffectSpriteState
.L_93a1c:
	.4byte	gOamBuffer
.L_93a20:
	.4byte	0xfffffe00
.L_93a24:
	.4byte	gDifficulty
.L_93a28:
	.4byte	sCreditsEasyDifficultyLabelAnimation
.L_93a2c:
	.4byte	gCreditsAnchorSpriteState
.L_93a30:
	ldr	r0, .L_93ca0
	mov	r2, sl
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93a5e
	mov	r0, #0
	mov	r4, sl
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93a5e
	strb	r0, [r4, #0]
.L_93a5e:
	add	r5, r3, #0
	ldr	r1, .L_93ca4
	ldrh	r0, [r1, #4]
	sub	r0, #8
.L_93a66:
	mov	r8, r0
	mov	r2, sl
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	ldr	r3, .L_93ca4
	ldrh	r1, [r3, #4]
	ldr	r0, .L_93ca8
	cmp	r1, r0
	bhi	.L_93aea
	ldrh	r4, [r2, #6]
	mov	r9, r4
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93aea
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93aa6:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93cb4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93aa6
	ldr	r6, [sp, #8]
.L_93aea:
	mov	r1, ip
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_93bac
	ldr	r2, .L_93cb8
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bhi	.L_93bac
	ldr	r0, .L_93cbc
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	mov	r3, ip
	ldrb	r2, [r3, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93b2c
	mov	r0, #0
	mov	r4, ip
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r2, [r4, #0]
	lsl	r0, r2, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_93b2c
	sub	r0, r2, #1
	strb	r0, [r4, #0]
	strb	r1, [r4, #2]
.L_93b2c:
	mov	r1, ip
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	mov	r2, #50	@ 0x32
	mov	r8, r2
	mov	r4, #140	@ 0x8c
	mov	r9, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93bac
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	ldr	r3, .L_93cb4
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93b68:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93b68
	ldr	r6, [sp, #8]
.L_93bac:
	ldr	r1, .L_93cc0
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_93c66
	ldr	r0, .L_93cc4
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r3, .L_93cc0
	ldrb	r2, [r3, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93be6
	mov	r0, #0
	ldr	r4, .L_93cc0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r2, [r4, #0]
	lsl	r0, r2, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_93be6
	sub	r0, r2, #1
	strb	r0, [r4, #0]
	strb	r1, [r4, #2]
.L_93be6:
	ldr	r1, .L_93cc0
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrh	r2, [r1, #4]
	mov	r8, r2
	ldrh	r4, [r1, #6]
	mov	r9, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93c66
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	ldr	r3, .L_93cb4
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93c22:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
.L_93c30:
	.4byte	0x80383402
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93c22
	ldr	r6, [sp, #8]
.L_93c66:
	ldr	r1, .L_93cb8
	ldrb	r3, [r1, #0]
	cmp	r3, #0
	bne	.L_93ccc
	ldr	r0, .L_93cc8
	ldr	r2, .L_93ca4
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r4, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93c9c
	ldr	r0, .L_93ca4
	strb	r3, [r0, #1]
	ldrb	r0, [r0, #0]
	add	r0, #1
	ldr	r1, .L_93ca4
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93c9c
	strb	r3, [r1, #0]
.L_93c9c:
	add	r5, r4, #0
	b	.L_93d08
.L_93ca0:
	.4byte	sCreditsHardDifficultyLabelAnimation
.L_93ca4:
	.4byte	gCreditsAnchorSpriteState
.L_93ca8:
	.4byte	0x0000013f
.L_93cac:
	.4byte	gOamBuffer
.L_93cb0:
	.4byte	0x000001ff
.L_93cb4:
	.4byte	0xfffffe00
.L_93cb8:
	.4byte	gDifficulty
.L_93cbc:
	.4byte	sCreditsEasyDifficultyEffectAnimation
.L_93cc0:
	.4byte	gCreditsTreasureBurstSpriteState
.L_93cc4:
	.4byte	sCreditsHardTreasureBurstAnimation
.L_93cc8:
	.4byte	sCreditsEasyAnchorAnimation
.L_93ccc:
	cmp	r3, #1
	bne	.L_93cd8
	ldr	r0, .L_93cd4
	b	.L_93cda
.L_93cd4:
	.4byte	sCreditsNormalAnchorAnimation
.L_93cd8:
	ldr	r0, .L_93dac
.L_93cda:
	ldr	r2, .L_93db0
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93d06
	mov	r0, #0
	ldr	r4, .L_93db0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93d06
	strb	r0, [r4, #0]
.L_93d06:
	add	r5, r3, #0
.L_93d08:
	ldr	r1, .L_93db0
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrh	r2, [r1, #4]
	mov	r8, r2
	ldrh	r3, [r1, #6]
	mov	r9, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93d88
	ldr	r1, .L_93db4
	ldr	r2, .L_93db8
	mov	sl, r2
	ldr	r3, .L_93dbc
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
.L_93d40:
	.4byte	0x1b869802
.L_93d44:
	ldrh	r0, [r4, #0]
	add	r4, #2
.L_93d48:
	.4byte	0x37028038
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
.L_93d6c:
	.4byte	0x34028038
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93d44
	ldr	r6, [sp, #8]
.L_93d88:
	ldr	r1, .L_93dc0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_93e68
	mov	r2, #144	@ 0x90
	mov	r9, r2
	ldr	r5, .L_93dc4
	ldr	r3, .L_93db0
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	mov	r1, #0
.L_93da0:
	cmp	r1, #0
	bne	.L_93dc8
	ldr	r4, .L_93db0
	ldrh	r0, [r4, #4]
	add	r0, #16
	b	.L_93dce
.L_93dac:
	.4byte	sCreditsHardAnchorAnimation
.L_93db0:
	.4byte	gCreditsAnchorSpriteState
.L_93db4:
	.4byte	gOamBuffer
.L_93db8:
	.4byte	0x000001ff
.L_93dbc:
	.4byte	0xfffffe00
.L_93dc0:
	.4byte	gDifficulty
.L_93dc4:
	.4byte	sCreditsEasyAnchorCompanionAnimation
.L_93dc8:
	ldr	r2, .L_93e58
	ldrh	r0, [r2, #4]
	sub	r0, #36	@ 0x24
.L_93dce:
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r3, [sp, #8]
	add	r3, r3, r0
	str	r3, [sp, #8]
	add	r4, #2
	add	r1, #1
	mov	sl, r1
	cmp	r6, r3
	bge	.L_93e50
	lsl	r0, r6, #3
	ldr	r1, .L_93e5c
	add	r3, r0, r1
	ldr	r2, .L_93e60
	mov	ip, r2
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93df2:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93e64
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93df2
	ldr	r6, [sp, #8]
.L_93e50:
	mov	r1, sl
	cmp	r1, #1
	ble	.L_93da0
	b	.L_93fb8
.L_93e58:
	.4byte	gCreditsAnchorSpriteState
.L_93e5c:
	.4byte	gOamBuffer
.L_93e60:
	.4byte	0x000001ff
.L_93e64:
	.4byte	0xfffffe00
.L_93e68:
	cmp	r0, #1
	beq	.L_93e6e
	b	.L_93fb8
.L_93e6e:
	mov	r1, #144	@ 0x90
	mov	r9, r1
	ldr	r5, .L_93e8c
	ldr	r2, .L_93e90
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	mov	r1, #0
.L_93e7e:
	cmp	r1, #0
	bne	.L_93e94
	ldr	r3, .L_93e90
	ldrh	r0, [r3, #4]
	sub	r0, #25
	b	.L_93e9a
	.align	2, 0
.L_93e8c:
	.4byte	sCreditsNormalAnchorCompanionAnimation
.L_93e90:
	.4byte	gCreditsAnchorSpriteState
.L_93e94:
	ldr	r4, .L_940a8
	ldrh	r0, [r4, #4]
	sub	r0, #47	@ 0x2f
.L_93e9a:
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	add	r1, #1
	mov	sl, r1
	cmp	r6, r2
	bge	.L_93f1c
	lsl	r0, r6, #3
	ldr	r1, .L_940ac
	add	r3, r0, r1
	ldr	r2, .L_940b0
	mov	ip, r2
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93ebe:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_940b4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93ebe
	ldr	r6, [sp, #8]
.L_93f1c:
	mov	r1, sl
	cmp	r1, #1
	ble	.L_93e7e
	ldr	r1, .L_940a8
	ldrh	r0, [r1, #4]
	add	r0, #42	@ 0x2a
	mov	r8, r0
	mov	r2, #144	@ 0x90
	mov	r9, r2
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	ldr	r3, .L_940b8
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93fb8
	ldr	r1, .L_940ac
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r2, .L_940b0
	mov	sl, r2
	mov	r0, #15
	neg	r0, r0
	mov	ip, r0
	mov	r5, #13
	neg	r5, r5
	ldr	r1, [sp, #8]
	sub	r6, r1, r6
.L_93f5e:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_940b4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93f5e
	ldr	r6, [sp, #8]
.L_93fb8:
	ldr	r1, .L_940bc
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_94082
	ldr	r5, .L_940c0
	ldrh	r0, [r5, #0]
	add	r0, #16
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #0]
	ldr	r2, .L_940c4
	mov	r8, r2
	ldrh	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, #2
	add	r2, sp
	mov	sl, r2
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r3, sp, #4
	mov	r9, r3
	strh	r0, [r3, #0]
	ldrh	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, sp
	add	r1, #6
	strh	r0, [r1, #0]
	ldr	r2, .L_940ac
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	mov	r3, sl
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	mov	r4, r9
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_94082:
	ldr	r0, .L_940c8
	ldrb	r1, [r0, #0]
	mov	sl, r0
	cmp	r1, #3
	bls	.L_9408e
	b	.L_9421a
.L_9408e:
	ldr	r5, .L_940cc
	ldrh	r0, [r0, #12]
	mov	r9, r0
	ldr	r1, .L_940bc
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_940d0
	ldr	r1, .L_940a8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	b	.L_940ec
	.align	2, 0
.L_940a8:
	.4byte	gCreditsAnchorSpriteState
.L_940ac:
	.4byte	gOamBuffer
.L_940b0:
	.4byte	0x000001ff
.L_940b4:
	.4byte	0xfffffe00
.L_940b8:
	.4byte	sCreditsNormalAnchorAffineAnimation
.L_940bc:
	.4byte	gDifficulty
.L_940c0:
	.4byte	gCreditsTreasureAffineAngle
.L_940c4:
	.4byte	sSinCosTable
.L_940c8:
	.4byte	gCreditsTreasureAnim
.L_940cc:
	.4byte	sCreditsTreasureSparkleAnimation
.L_940d0:
	ldr	r0, .L_940e0
	ldrb	r2, [r0, #0]
	cmp	r2, #1
	bne	.L_940e4
	mov	r2, #1
	neg	r2, r2
	add	r9, r2
	b	.L_940ec
.L_940e0:
	.4byte	gCreditsAnchorSpriteState
.L_940e4:
	cmp	r2, #3
	bne	.L_940ec
	mov	r3, #1
	add	r9, r3
.L_940ec:
	ldr	r4, .L_94380
	ldrh	r0, [r4, #4]
	mov	r2, sl
	ldrh	r1, [r2, #10]
	sub	r0, r0, r1
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
.L_940fc:
	.4byte	0x181b9b02
	str	r3, [sp, #8]
	add	r4, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #12]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #16]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #20]
	cmp	r6, r3
	bge	.L_94184
	ldr	r1, .L_94384
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r5, .L_94388
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	ldr	r1, [sp, #8]
	sub	r6, r1, r6
.L_9412c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	and	r1, r5
	ldrh	r2, [r3, #2]
	ldr	r0, .L_9438c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
.L_9416c:
	.4byte	0x46607959
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9412c
	ldr	r6, [sp, #8]
.L_94184:
	ldr	r0, .L_94390
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r5, [r0, r3]
	mov	r4, sl
	mov	r1, #6
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
.L_941a4:
	.4byte	0x4a7a8008
	mov	r3, #0
	ldrsh	r4, [r2, r3]
	mov	r1, sl
	mov	r2, #6
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	ldr	r0, .L_94390
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, sl
	mov	r2, #8
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	mov	r4, sl
	mov	r1, #8
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_94384
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #38]	@ 0x26
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #46]	@ 0x2e
	ldr	r4, [sp, #16]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #54]	@ 0x36
	strh	r0, [r2, #62]	@ 0x3e
.L_9421a:
	ldr	r0, .L_94394
	ldrb	r1, [r0, #0]
	mov	sl, r0
	cmp	r1, #0
	bne	.L_94226
	b	.L_9436a
.L_94226:
	ldr	r0, .L_94380
	ldrh	r1, [r0, #4]
	ldr	r0, .L_94398
	ldrh	r0, [r0, #10]
	sub	r1, r1, r0
	mov	r8, r1
	mov	r0, sl
	ldrh	r0, [r0, #4]
	mov	r9, r0
	ldr	r5, .L_9439c
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #12]
	mov	r3, sp
	add	r3, #4
	str	r3, [sp, #16]
	mov	r0, sp
	add	r0, #6
	str	r0, [sp, #20]
	cmp	r6, r1
	bge	.L_942c4
	ldr	r1, .L_94384
	mov	r5, #4
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r1, .L_94388
	mov	ip, r1
	ldr	r2, [sp, #8]
	sub	r6, r2, r6
.L_9426c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_9438c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	orr	r0, r5
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	orr	r0, r5
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9426c
	ldr	r6, [sp, #8]
.L_942c4:
	ldr	r0, .L_94390
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	mov	r2, sl
	mov	r3, #2
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r0, .L_94390
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, sl
	mov	r3, #2
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #12]
	strh	r0, [r4, #0]
	ldr	r0, .L_94390
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, sl
	mov	r2, #2
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	mov	r4, sl
	mov	r1, #2
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_94384
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #70	@ 0x46
	strh	r0, [r1, #0]
	ldr	r3, [sp, #12]
	ldrh	r0, [r3, #0]
	add	r1, #8
	strh	r0, [r1, #0]
	ldr	r4, [sp, #16]
	ldrh	r0, [r4, #0]
	add	r1, #8
	strh	r0, [r1, #0]
	ldr	r0, [sp, #20]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #94	@ 0x5e
	strh	r1, [r0, #0]
.L_9436a:
	ldr	r0, .L_943a0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_943a8
	ldr	r5, .L_943a4
	ldr	r1, .L_94380
	ldrh	r0, [r1, #6]
	sub	r0, #2
	mov	r9, r0
	b	.L_943c8
	.align	2, 0
.L_94380:
	.4byte	gCreditsAnchorSpriteState
.L_94384:
	.4byte	gOamBuffer
.L_94388:
	.4byte	0x000001ff
.L_9438c:
	.4byte	0xfffffe00
.L_94390:
	.4byte	sSinCosTable
.L_94394:
	.4byte	gCreditsTreasureDrop
.L_94398:
	.4byte	gCreditsTreasureAnim
.L_9439c:
	.4byte	sCreditsTreasureDropAnimation
.L_943a0:
	.4byte	gDifficulty
.L_943a4:
	.4byte	sCreditsEasyForegroundLayerAnimation
.L_943a8:
	cmp	r0, #1
	bne	.L_943c0
	ldr	r5, .L_943b8
	ldr	r0, .L_943bc
	ldrh	r1, [r0, #6]
	mov	r9, r1
	b	.L_943c8
	.align	2, 0
.L_943b8:
	.4byte	sCreditsNormalForegroundLayerAnimation
.L_943bc:
	.4byte	gCreditsAnchorSpriteState
.L_943c0:
	ldr	r5, .L_94670
	ldr	r0, .L_94674
	ldrh	r2, [r0, #6]
	mov	r9, r2
.L_943c8:
	ldr	r3, .L_94674
	ldrh	r3, [r3, #4]
.L_943cc:
	.4byte	0x4ca94698
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	ldr	r2, .L_94678
	mov	sl, r2
	ldr	r5, .L_9467c
	cmp	r6, r1
	bge	.L_94440
	ldr	r1, .L_94680
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
.L_943f4:
	.4byte	0x184300f0
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_943fc:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
.L_94408:
	.4byte	0x34028820
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	ldr	r0, .L_94684
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_94688
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_943fc
	ldr	r6, [sp, #8]
.L_94440:
	ldr	r2, .L_9468c
	ldrb	r1, [r2, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_9446e
	mov	r3, sl
	ldrh	r0, [r3, #4]
	sub	r0, #1
	ldr	r4, .L_94684
	add	r1, r4, #0
	and	r0, r1
	strh	r0, [r3, #4]
	ldr	r2, .L_94690
	ldrh	r0, [r2, #4]
	sub	r0, #1
	and	r0, r1
	strh	r0, [r2, #4]
	ldr	r3, .L_94694
	ldrh	r0, [r3, #4]
	sub	r0, #1
	and	r0, r1
	strh	r0, [r3, #4]
.L_9446e:
	mov	r4, sl
	ldrh	r4, [r4, #4]
	mov	r8, r4
	mov	r0, sl
	ldrh	r0, [r0, #6]
	mov	r9, r0
	ldr	r1, .L_94698
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	cmp	r6, r2
	bge	.L_944dc
	ldr	r1, .L_94680
	ldr	r3, .L_94684
	mov	sl, r3
	ldr	r0, .L_94688
	mov	ip, r0
	lsl	r0, r6, #3
	add	r3, r0, r1
	sub	r6, r2, r6
.L_9449c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9449c
	ldr	r6, [sp, #8]
.L_944dc:
	ldr	r1, .L_94690
	ldrh	r1, [r1, #4]
	mov	r8, r1
	ldr	r2, .L_94690
	ldrh	r2, [r2, #6]
	mov	r9, r2
	ldr	r3, .L_9469c
	ldr	r4, [r3, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_9454c
	ldr	r1, .L_94680
	ldr	r2, .L_94684
	mov	sl, r2
	ldr	r3, .L_94688
	mov	ip, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_9450c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9450c
	ldr	r6, [sp, #8]
.L_9454c:
	ldr	r1, .L_94694
	ldrh	r1, [r1, #4]
	mov	r8, r1
	ldr	r2, .L_94694
	ldrh	r2, [r2, #6]
	mov	r9, r2
	ldr	r3, .L_946a0
	ldr	r4, [r3, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_945bc
	ldr	r1, .L_94680
	ldr	r2, .L_94684
	mov	sl, r2
	ldr	r3, .L_94688
	mov	ip, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_9457c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9457c
	ldr	r6, [sp, #8]
.L_945bc:
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_946a4
	add	r0, r0, r1
	ldrb	r1, [r5, #1]
	ldrb	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_945e6
	mov	r0, #0
	strb	r0, [r5, #1]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r2, .L_946a4
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_945e6
	strb	r0, [r5, #0]
.L_945e6:
	ldrb	r0, [r5, #1]
	add	r0, #1
	strb	r0, [r5, #1]
	ldrh	r3, [r5, #4]
	mov	r8, r3
	ldrh	r4, [r5, #6]
	mov	r9, r4
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_946a4
	add	r5, r0, r1
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	cmp	r6, r2
	bge	.L_94656
	ldr	r1, .L_94680
	ldr	r5, .L_94684
	ldr	r3, .L_94688
	mov	sl, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	sub	r6, r2, r6
.L_9461a:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	and	r1, r5
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9461a
.L_94656:
	mov	r3, sp
	ldrb	r4, [r3, #8]
	ldr	r3, .L_946a8
	strb	r4, [r3, #0]
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_94670:
	.4byte	sCreditsHardForegroundLayerAnimation
.L_94674:
	.4byte	gCreditsAnchorSpriteState
.L_94678:
	.4byte	gCreditsForegroundLayerSpriteState
.L_9467c:
	.4byte	gCreditsClosingSpriteState
.L_94680:
	.4byte	gOamBuffer
.L_94684:
	.4byte	0x000001ff
.L_94688:
	.4byte	0xfffffe00
.L_9468c:
	.4byte	gMainTimer
.L_94690:
	.4byte	gCreditsMiddleLayerSpriteState
.L_94694:
	.4byte	gCreditsBackgroundLayerSpriteState
.L_94698:
	.4byte	sCreditsForegroundStripAnimation
.L_9469c:
	.4byte	sCreditsMiddleStripAnimation
.L_946a0:
	.4byte	sCreditsBackgroundStripAnimation
.L_946a4:
	.4byte	sCreditsClosingAnimation
.L_946a8:
	.4byte	gOamSlotsUsed
