.align 2, 0
.global RenderPassageClearOam
.thumb
.type RenderPassageClearOam, %function
RenderPassageClearOam:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	mov	r0, #0
	mov	r9, r0
	ldr	r0, .L_84168
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r0, #3
	ldr	r1, .L_8416c
	add	r6, r0, r1
	ldr	r0, .L_84170
	ldrb	r2, [r0, #4]
	cmp	r2, #2
	bne	.L_83ec4
	add	r2, r0, #0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r2, .L_84174
	add	r3, r0, #0
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_83e3c
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_83e3c
	mov	r4, r9
	strh	r4, [r3, #0]
	strh	r4, [r3, #2]
	mov	r0, #0
	strb	r0, [r3, #4]
.L_83e3c:
	ldr	r1, .L_84170
	ldrb	r0, [r1, #4]
	cmp	r0, #2
	bne	.L_83ec4
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_83e5a
	b	.L_845dc
.L_83e5a:
	cmp	r9, r8
	bge	.L_83ec4
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_8417c
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_83e78:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	sub	r0, #4
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	sub	r1, #2
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_83e78
	mov	r9, r8
.L_83ec4:
	ldr	r0, .L_84184
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_83fc0
	ldr	r3, .L_84188
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldr	r2, .L_8418c
	ldrh	r1, [r3, #0]
	lsl	r0, r1, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, r1
	bcs	.L_83f04
	mov	r0, #1
	strh	r0, [r3, #0]
	ldr	r1, .L_84190
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_83f04
	mov	r0, #0
	strh	r2, [r3, #0]
	strh	r2, [r1, #0]
	strb	r0, [r4, #0]
.L_83f04:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_83fc0
	mov	r2, #0
	str	r2, [sp, #8]
.L_83f0e:
	ldr	r3, .L_84190
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #3
	ldr	r4, .L_8418c
	add	r0, r0, r4
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_83f28
	b	.L_845dc
.L_83f28:
	ldr	r1, [sp, #8]
	lsl	r1, r1, #2
	mov	ip, r1
	ldr	r2, [sp, #8]
	add	r2, #1
	mov	sl, r2
	cmp	r9, r8
	bge	.L_83f9c
	ldr	r7, .L_84194
	add	r7, ip
	mov	r3, r9
	lsl	r0, r3, #3
	ldr	r1, .L_8416c
	add	r5, r0, r1
	mov	r2, r8
	sub	r2, r2, r3
	mov	r9, r2
.L_83f4a:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r3, r1
	ldr	r3, .L_8417c
	and	r1, r3
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0
	bne	.L_83f4a
	mov	r9, r8
.L_83f9c:
	ldr	r2, .L_84194
	add	r2, ip
	ldr	r0, .L_84198
	add	r0, ip
	ldr	r1, [r0, #0]
	ldrh	r0, [r2, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_8419c
	add	r0, ip
	ldr	r1, [r0, #0]
	ldrh	r0, [r2, #2]
	add	r0, r0, r1
	strh	r0, [r2, #2]
	mov	r2, sl
	str	r2, [sp, #8]
	cmp	r2, #5
	ble	.L_83f0e
.L_83fc0:
	ldr	r0, .L_841a0
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_83fd2
	b	.L_845dc
.L_83fd2:
	ldr	r7, .L_841a4
	cmp	r9, r8
	bge	.L_8403a
	ldr	r1, .L_8416c
	ldr	r0, .L_84178
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r3, r9
	lsl	r0, r3, #3
	add	r5, r0, r1
	mov	r0, r8
	sub	r0, r0, r3
	mov	r9, r0
.L_83ff0:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r1, sl
	ldrb	r0, [r1, #6]
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r1, #4]
	add	r1, r3, r1
	ldr	r2, .L_8417c
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_83ff0
	mov	r9, r8
.L_8403a:
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_840fc
	ldrh	r1, [r7, #0]
	add	r1, #1
	strh	r1, [r7, #0]
	ldr	r2, .L_841a8
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_84078
	mov	r0, #1
	strh	r0, [r7, #0]
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_84078
	ldr	r1, .L_84170
	strh	r0, [r1, #0]
	strh	r0, [r7, #2]
	mov	r0, #0
	strb	r0, [r7, #4]
.L_84078:
	ldrb	r0, [r7, #4]
	cmp	r0, #0
	beq	.L_840fc
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_84094
	b	.L_845dc
.L_84094:
	cmp	r9, r8
	bge	.L_840fc
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_8417c
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_840b2:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	sub	r1, #16
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84180
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_840b2
	mov	r9, r8
.L_840fc:
	ldr	r1, .L_84170
	ldrb	r3, [r1, #4]
	cmp	r3, #1
	beq	.L_84106
	b	.L_84210
.L_84106:
	ldrh	r1, [r1, #0]
	add	r1, #1
	ldr	r2, .L_84170
	strh	r1, [r2, #0]
	ldr	r2, .L_841ac
	ldr	r4, .L_84170
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8413e
	strh	r3, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8413e
	strh	r0, [r4, #0]
	strh	r0, [r4, #2]
	mov	r0, #0
	strb	r0, [r4, #4]
.L_8413e:
	ldr	r1, .L_84170
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	.L_84210
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_8415c
	b	.L_845dc
.L_8415c:
	cmp	r9, r8
	bge	.L_84210
	ldr	r1, .L_8416c
	ldr	r7, .L_84178
	b	.L_841b0
	.align	2, 0
.L_84168:
	.4byte	gOamSlotsUsed
.L_8416c:
	.4byte	gOamBuffer
.L_84170:
	.4byte	gPassageClearMainAnimationState
.L_84174:
	.4byte	sPassageClearMainAnimation
.L_84178:
	.4byte	gStageEntryMainSpriteState
.L_8417c:
	.4byte	0x1FF
.L_84180:
	.4byte	0xFFFFFE00
.L_84184:
	.4byte	gPassageClearBonusAnimationActive
.L_84188:
	.4byte	gPassageClearBonusAnimationTimer
.L_8418c:
	.4byte	sPassageClearBonusItemAnimation
.L_84190:
	.4byte	gPassageClearBonusAnimationFrame
.L_84194:
	.4byte	gPassageClearBonusItemPositions
.L_84198:
	.4byte	sPassageClearBonusItemXVelocities
.L_8419c:
	.4byte	sPassageClearBonusItemYVelocities
.L_841a0:
	.4byte	gPassageClearBannerOam
.L_841a4:
	.4byte	gPassageClearSecondaryAnimationState
.L_841a8:
	.4byte	sPassageClearSecondaryAltAnimation
.L_841ac:
	.4byte	sPassageClearSecondaryAnimation
.L_841b0:
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
	mov	r2, r9
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r3, .L_84560
	mov	sl, r3
	mov	r0, r8
	sub	r0, r0, r2
	mov	r9, r0
.L_841c6:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r3
	sub	r0, #4
	strb	r0, [r5, #0]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r3, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_84564
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_841c6
	mov	r9, r8
.L_84210:
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_84568
	mov	sl, r2
.L_84218:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_842ee
	ldr	r0, .L_8456c
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_8423a
	b	.L_845dc
.L_8423a:
	cmp	r9, r8
	bge	.L_842d4
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8424e:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r2, #4
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	add	r0, #4
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8424e
	mov	r9, r8
.L_842d4:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #60	@ 0x3c
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_842ee
	strb	r1, [r2, #4]
.L_842ee:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_84218
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_84574
	mov	sl, r2
.L_84304:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_843d2
	ldr	r0, .L_84578
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_84326
	b	.L_845dc
.L_84326:
	cmp	r9, r8
	bge	.L_843b8
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8433a:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	add	r0, #2
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8433a
	mov	r9, r8
.L_843b8:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #52	@ 0x34
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_843d2
	strb	r1, [r2, #4]
.L_843d2:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_84304
	mov	r1, #0
	str	r1, [sp, #8]
	ldr	r2, .L_8457c
	mov	sl, r2
.L_843e8:
	mov	r3, sl
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_844bc
	ldr	r0, .L_84580
	ldrb	r1, [r3, #4]
	sub	r1, #1
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_8440a
	b	.L_845dc
.L_8440a:
	cmp	r9, r8
	bge	.L_844a2
	mov	r7, sl
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_84570
	add	r5, r0, r2
	mov	r3, r8
	sub	r3, r3, r1
	mov	r9, r3
.L_8441e:
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r3
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #1]
	mov	r2, #4
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r3, [r4, #0]
	add	r4, #2
	strh	r3, [r6, #0]
	add	r6, #2
	mov	r0, #0
	ldrsh	r2, [r7, r0]
	add	r2, r3, r2
	ldr	r0, .L_84560
	and	r2, r0
	ldrh	r0, [r5, #2]
	ldr	r3, .L_84564
	add	r1, r3, #0
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r7, #4]
	sub	r0, #1
	mov	r1, #3
	bl	__divsi3
	mov	r1, #7
	and	r0, r1
	lsl	r0, r0, #1
	ldrb	r1, [r5, #3]
	mov	r3, #15
	neg	r3, r3
	add	r2, r3, #0
	and	r1, r2
	orr	r1, r0
	strb	r1, [r5, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r6, #0]
	add	r4, #2
	ldrb	r0, [r5, #5]
	mov	r2, #13
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	add	r3, #14
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bne	.L_8441e
	mov	r9, r8
.L_844a2:
	mov	r1, sl
	ldrh	r0, [r1, #2]
	add	r0, #32
	mov	r1, #0
	mov	r2, sl
	strh	r0, [r2, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r3, #170	@ 0xaa
	lsl	r3, r3, #4
	cmp	r0, r3
	ble	.L_844bc
	strb	r1, [r2, #4]
.L_844bc:
	mov	r4, #8
	add	sl, r4
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #4
	ble	.L_843e8
	mov	r1, #0
	str	r1, [sp, #8]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #12]
	ldr	r3, .L_84584
	mov	r9, r3
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	add	r4, sp, #4
	mov	sl, r4
	ldr	r6, .L_84570
.L_844e2:
	ldr	r5, .L_84588
	ldr	r0, [sp, #8]
	add	r5, r0, r5
	ldr	r1, .L_8458c
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	ldrb	r0, [r5, #0]
	add	r0, r0, r1
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r9
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r9
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r3, sp
	strh	r0, [r3, #2]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r9
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r4, sl
	strh	r0, [r4, #0]
	b	.L_84590
	.align	2, 0
.L_84560:
	.4byte	0x1FF
.L_84564:
	.4byte	0xFFFFFE00
.L_84568:
	.4byte	gPassageClearFastParticles
.L_8456c:
	.4byte	sPassageClearFastParticleOamFrames
.L_84570:
	.4byte	gOamBuffer
.L_84574:
	.4byte	gPassageClearMediumParticles
.L_84578:
	.4byte	sPassageClearMediumParticleOamFrames
.L_8457c:
	.4byte	gPassageClearSlowParticles
.L_84580:
	.4byte	sPassageClearSlowParticleOamFrames
.L_84584:
	.4byte	sSinCosTable
.L_84588:
	.4byte	gPassageClearParticleAffineAngles
.L_8458c:
	.4byte	sPassageClearParticleAngleSteps
.L_84590:
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r9
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r6, #6]
	mov	r3, sp
	ldrh	r1, [r3, #2]
	strh	r1, [r6, #14]
	mov	r4, sl
	ldrh	r1, [r4, #0]
	strh	r1, [r6, #22]
	strh	r0, [r6, #30]
	add	r6, #32
	ldr	r0, [sp, #8]
	add	r0, #1
	str	r0, [sp, #8]
	cmp	r0, #5
	ble	.L_844e2
	ldr	r0, .L_845ec
	mov	r1, r8
	strb	r1, [r0, #0]
.L_845dc:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_845ec:
	.4byte	gOamSlotsUsed
