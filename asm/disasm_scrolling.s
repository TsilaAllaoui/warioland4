.include "macros.s.inc"


thumb_func_start func_806C828
func_806C828:
	push	{r4, r5, r6, lr}
	bl	ScreenShakeUpdateY
	add	r6, r0, #0
	bl	ScreenShakeUpdateX
	ldr	r1, .L_6c8b4
	ldrh	r2, [r1, #0]
	lsr	r2, r2, #2
	ldr	r1, .L_6c8b8
	add	r5, r1, #0
	and	r2, r5
	ldr	r1, .L_6c8bc
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	and	r1, r5
	ldr	r4, .L_6c8c0
	add	r2, r2, r0
	strh	r2, [r4, #4]
	add	r1, r1, r6
	strh	r1, [r4, #6]
	ldr	r1, .L_6c8c4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	and	r1, r5
	add	r1, r1, r0
	strh	r1, [r4, #8]
	ldr	r1, .L_6c8c8
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	and	r1, r5
	add	r1, r1, r6
	strh	r1, [r4, #10]
	ldr	r1, .L_6c8cc
	ldrh	r1, [r1, #0]
	ldr	r2, .L_6c8d0
	lsr	r1, r1, #2
	ldrh	r2, [r2, #2]
	add	r1, r1, r2
	and	r1, r5
	add	r1, r1, r0
	strh	r1, [r4, #0]
	ldr	r0, .L_6c8d4
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	and	r0, r5
	add	r0, r0, r6
	strh	r0, [r4, #2]
	bl	func_806C8E4
	bl	func_806C9D4
	ldr	r0, .L_6c8d8
	ldrh	r1, [r0, #0]
	ldr	r0, .L_6c8dc
	lsr	r1, r1, #2
	ldrh	r0, [r0, #2]
	add	r1, r1, r0
	and	r1, r5
	ldr	r0, .L_6c8e0
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	and	r0, r5
	strh	r1, [r4, #12]
	asr	r6, r6, #1
	add	r0, r0, r6
	strh	r0, [r4, #14]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_6c8b4:
	.4byte	gBg1XPosition
.L_6c8b8:
	.4byte	0x1FF
.L_6c8bc:
	.4byte	gBg1YPosition
.L_6c8c0:
	.4byte	gBackgroundScroll
.L_6c8c4:
	.4byte	gBg2XPosition
.L_6c8c8:
	.4byte	gBg2YPosition
.L_6c8cc:
	.4byte	gBg0XPosition
.L_6c8d0:
	.4byte	gBg0ScrollEffect
.L_6c8d4:
	.4byte	gBg0YPosition
.L_6c8d8:
	.4byte	gUnk_3001882
.L_6c8dc:
	.4byte	gUnk_3003214
.L_6c8e0:
	.4byte	gUnk_3001884


thumb_func_start func_806C8E4
func_806C8E4:
	push	{r4, lr}
	mov	r2, #0
	mov	r3, #0
	ldr	r0, .L_6c900
	ldrb	r1, [r0, #25]
	add	r4, r0, #0
	cmp	r1, #6
	bhi	.L_6c944
	lsl	r0, r1, #2
	ldr	r1, .L_6c904
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6c900:
	.4byte	gCurrentRoomHeader
.L_6c904:
	.4byte	.L_6c908
.L_6c908:
	.4byte	.L_6c944
	.4byte	.L_6c924
	.4byte	.L_6c92a
	.4byte	.L_6c930
	.4byte	.L_6c936
	.4byte	.L_6c93c
	.4byte	.L_6c940
.L_6c924:
	mov	r2, #2
	mov	r3, #0
	b	.L_6c944
.L_6c92a:
	mov	r2, #0
	mov	r3, #2
	b	.L_6c944
.L_6c930:
	mov	r2, #2
	mov	r3, #2
	b	.L_6c944
.L_6c936:
	mov	r2, #1
	mov	r3, #2
	b	.L_6c944
.L_6c93c:
	mov	r2, #2
	b	.L_6c942
.L_6c940:
	mov	r2, #1
.L_6c942:
	mov	r3, #1
.L_6c944:
	cmp	r2, #0
	bne	.L_6c958
	ldr	r0, .L_6c950
	ldr	r1, .L_6c954
	b	.L_6c960
	.align	2, 0
.L_6c950:
	.4byte	gUnk_3001882
.L_6c954:
	.4byte	gRoomCameraBounds
.L_6c958:
	cmp	r2, #1
	bne	.L_6c970
	ldr	r0, .L_6c968
	ldr	r1, .L_6c96c
.L_6c960:
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	b	.L_6c97a
	.align	2, 0
.L_6c968:
	.4byte	gUnk_3001882
.L_6c96c:
	.4byte	gBg1XPosition
.L_6c970:
	ldr	r1, .L_6c994
	ldr	r0, .L_6c998
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	strh	r0, [r1, #0]
.L_6c97a:
	cmp	r3, #0
	bne	.L_6c9a4
	ldr	r2, .L_6c99c
	ldr	r0, .L_6c9a0
	ldrh	r1, [r0, #4]
	strh	r1, [r2, #0]
	ldrb	r0, [r4, #24]
	cmp	r0, #1
	bne	.L_6c9c6
	add	r0, r1, #0
	sub	r0, #32
	strh	r0, [r2, #0]
	b	.L_6c9c6
.L_6c994:
	.4byte	gUnk_3001882
.L_6c998:
	.4byte	gBg1XPosition
.L_6c99c:
	.4byte	gUnk_3001884
.L_6c9a0:
	.4byte	gRoomCameraBounds
.L_6c9a4:
	cmp	r3, #1
	bne	.L_6c9bc
	ldr	r0, .L_6c9b4
	ldr	r1, .L_6c9b8
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	b	.L_6c9c6
	.align	2, 0
.L_6c9b4:
	.4byte	gUnk_3001884
.L_6c9b8:
	.4byte	gBg1YPosition
.L_6c9bc:
	ldr	r1, .L_6c9cc
	ldr	r0, .L_6c9d0
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #1
	strh	r0, [r1, #0]
.L_6c9c6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6c9cc:
	.4byte	gUnk_3001884
.L_6c9d0:
	.4byte	gBg1YPosition


thumb_func_start func_806C9D4
func_806C9D4:
	ldr	r0, .L_6c9fc
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_6c9f8
	cmp	r1, #1
	bne	.L_6c9f2
	ldrb	r1, [r2, #1]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_6c9f2
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
.L_6c9f2:
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
.L_6c9f8:
	bx	lr
	.align	2, 0
.L_6c9fc:
	.4byte	gUnk_3003214


thumb_func_start func_806CA00
func_806CA00:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	str	r0, [sp, #8]
	ldr	r2, .L_6ca60
	ldrb	r0, [r2, #1]
	add	r1, sp, #4
	strb	r0, [r1, #0]
	ldrb	r3, [r2, #2]
	mov	r0, sp
	add	r0, #5
	strb	r3, [r0, #0]
	ldrb	r2, [r2, #3]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r0, sp
	mov	r2, #3
	bl	memcpy
	ldr	r0, .L_6ca64
	mov	ip, r0
	mov	r5, #0
.L_6ca32:
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r2, sp
	add	r0, r2, r5
	ldrb	r1, [r0, #0]
	mov	r0, #16
	and	r0, r1
	add	r1, r5, #1
	mov	sl, r1
	mov	r2, #160	@ 0xa0
	add	r2, ip
	mov	r9, r2
	cmp	r0, #0
	bne	.L_6ca52
	b	.L_6ccb8
.L_6ca52:
	cmp	r5, #0
	bne	.L_6ca70
	ldr	r0, .L_6ca68
	ldrh	r1, [r0, #0]
	ldr	r0, .L_6ca6c
	b	.L_6ca8a
	.align	2, 0
.L_6ca60:
	.4byte	gCurrentRoomHeader
.L_6ca64:
	.4byte	gUnk_3003928
.L_6ca68:
	.4byte	gBg0YPosition
.L_6ca6c:
	.4byte	gBg0XPosition
.L_6ca70:
	cmp	r5, #1
	bne	.L_6ca84
	ldr	r0, .L_6ca7c
	ldrh	r1, [r0, #0]
	ldr	r0, .L_6ca80
	b	.L_6ca8a
.L_6ca7c:
	.4byte	gBg1YPosition
.L_6ca80:
	.4byte	gBg1XPosition
.L_6ca84:
	ldr	r0, .L_6ccd4
	ldrh	r1, [r0, #0]
	ldr	r0, .L_6ccd8
.L_6ca8a:
	ldrh	r4, [r0, #0]
	ldr	r2, [sp, #8]
	lsl	r0, r2, #16
	lsr	r2, r0, #16
	lsr	r0, r1, #6
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	asr	r3, r0, #16
	add	r0, r5, #1
	mov	sl, r0
	mov	r1, #160	@ 0xa0
	add	r1, ip
	mov	r9, r1
	cmp	r3, #0
	bge	.L_6caac
	b	.L_6ccb8
.L_6caac:
	ldr	r1, .L_6ccdc
	lsl	r0, r5, #3
	add	r5, r0, r1
	ldrh	r0, [r5, #6]
	cmp	r3, r0
	ble	.L_6caba
	b	.L_6ccb8
.L_6caba:
	mov	r1, ip
	strh	r2, [r1, #4]
	lsr	r0, r4, #6
	sub	r0, #2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r0, #0
	bge	.L_6cacc
	mov	r2, #0
.L_6cacc:
	mov	r0, ip
	strh	r2, [r0, #2]
	mov	r1, #19
	mov	r8, r1
	ldrh	r0, [r5, #4]
	cmp	r0, #19
	bge	.L_6cadc
	mov	r8, r0
.L_6cadc:
	mov	r2, r8
	lsl	r2, r2, #2
	mov	r8, r2
	mov	r0, ip
	strb	r2, [r0, #0]
	ldrh	r0, [r5, #4]
	mov	r2, ip
	ldrh	r1, [r2, #4]
	mul	r0, r1
	ldrh	r1, [r2, #2]
	add	r4, r0, r1
	mov	r6, #0
	cmp	r6, r8
	blt	.L_6cafa
	b	.L_6ccb8
.L_6cafa:
	add	r7, r5, #0
	ldr	r5, .L_6cce0
	mov	r3, ip
	add	r3, #6
.L_6cb02:
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	blt	.L_6cb4c
	b	.L_6ccb8
.L_6cb4c:
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	blt	.L_6cb96
	b	.L_6ccb8
.L_6cb96:
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	bge	.L_6ccb8
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	bge	.L_6ccb8
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	bge	.L_6ccb8
	ldr	r1, [r7, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #1
	cmp	r6, r8
	bge	.L_6ccb8
	b	.L_6cb02
.L_6ccb8:
	mov	r5, sl
	mov	ip, r9
	cmp	r5, #2
	bgt	.L_6ccc2
	b	.L_6ca32
.L_6ccc2:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6ccd4:
	.4byte	gBg2YPosition
.L_6ccd8:
	.4byte	gBg2XPosition
.L_6ccdc:
	.4byte	gBackgroundInfo
.L_6cce0:
	.4byte	gUnk_30031F4


thumb_func_start func_806CCE4
func_806CCE4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	ldr	r0, .L_6cf24
	mov	sl, r0
	mov	r0, #0
.L_6ccf6:
	mov	r1, sl
	ldrb	r7, [r1, #0]
	add	r2, r0, #1
	str	r2, [sp, #4]
	add	r1, #160	@ 0xa0
	str	r1, [sp, #0]
	cmp	r7, #0
	bne	.L_6cd08
	b	.L_6cf06
.L_6cd08:
	lsl	r0, r0, #12
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	add	r6, r0, r1
	mov	r2, sl
	ldrh	r1, [r2, #4]
	mov	r0, #15
	and	r0, r1
	lsl	r0, r0, #7
	add	r6, r6, r0
	ldrh	r5, [r2, #2]
	mov	r3, #0
	cmp	r3, r7
	blt	.L_6cd26
	b	.L_6cf06
.L_6cd26:
	mov	r0, #15
	mov	r9, r0
	mov	r1, #16
	mov	r8, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	mov	ip, r2
.L_6cd34:
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6cd48
	add	r1, ip
.L_6cd48:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	mov	r4, sl
	add	r4, #6
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	blt	.L_6cd86
	b	.L_6cf06
.L_6cd86:
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6cd9a
	add	r1, ip
.L_6cd9a:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	blt	.L_6cdd4
	b	.L_6cf06
.L_6cdd4:
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6cde8
	add	r1, ip
.L_6cde8:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	bge	.L_6cf06
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6ce34
	add	r1, ip
.L_6ce34:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	bge	.L_6cf06
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6ce80
	add	r1, ip
.L_6ce80:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	bge	.L_6cf06
	add	r0, r5, #0
	mov	r1, r9
	and	r0, r1
	lsl	r1, r0, #1
	add	r0, r5, #0
	mov	r2, r8
	and	r0, r2
	cmp	r0, #0
	beq	.L_6cecc
	add	r1, ip
.L_6cecc:
	lsl	r1, r1, #1
	add	r1, r1, r6
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	add	r3, #1
	add	r2, r1, #0
	add	r2, #64	@ 0x40
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	add	r3, #1
	add	r1, #66	@ 0x42
	lsl	r0, r3, #1
	add	r0, r4, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r3, #1
	add	r5, #1
	cmp	r3, r7
	bge	.L_6cf06
	b	.L_6cd34
.L_6cf06:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	mov	sl, r1
	cmp	r0, #2
	bgt	.L_6cf12
	b	.L_6ccf6
.L_6cf12:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6cf24:
	.4byte	gUnk_3003928


thumb_func_start func_806CF28
func_806CF28:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	str	r0, [sp, #8]
	ldr	r2, .L_6cf88
	ldrb	r0, [r2, #1]
	add	r1, sp, #4
	strb	r0, [r1, #0]
	ldrb	r3, [r2, #2]
	mov	r0, sp
	add	r0, #5
	strb	r3, [r0, #0]
	ldrb	r2, [r2, #3]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r0, sp
	mov	r2, #3
	bl	memcpy
	ldr	r0, .L_6cf8c
	mov	ip, r0
	mov	r5, #0
.L_6cf5a:
	mov	r0, #0
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r2, sp
	add	r0, r2, r5
	ldrb	r1, [r0, #0]
	mov	r0, #16
	and	r0, r1
	add	r1, r5, #1
	mov	sl, r1
	mov	r2, #120	@ 0x78
	add	r2, ip
	mov	r9, r2
	cmp	r0, #0
	bne	.L_6cf7a
	b	.L_6d1ec
.L_6cf7a:
	cmp	r5, #0
	bne	.L_6cf98
	ldr	r0, .L_6cf90
	ldrh	r4, [r0, #0]
	ldr	r0, .L_6cf94
	b	.L_6cfb2
	.align	2, 0
.L_6cf88:
	.4byte	gCurrentRoomHeader
.L_6cf8c:
	.4byte	gUnk_30037C0
.L_6cf90:
	.4byte	gBg0YPosition
.L_6cf94:
	.4byte	gBg0XPosition
.L_6cf98:
	cmp	r5, #1
	bne	.L_6cfac
	ldr	r0, .L_6cfa4
	ldrh	r4, [r0, #0]
	ldr	r0, .L_6cfa8
	b	.L_6cfb2
.L_6cfa4:
	.4byte	gBg1YPosition
.L_6cfa8:
	.4byte	gBg1XPosition
.L_6cfac:
	ldr	r0, .L_6d208
	ldrh	r4, [r0, #0]
	ldr	r0, .L_6d20c
.L_6cfb2:
	ldrh	r1, [r0, #0]
	ldr	r2, [sp, #8]
	lsl	r0, r2, #16
	lsr	r2, r0, #16
	lsr	r0, r1, #6
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	asr	r3, r0, #16
	add	r0, r5, #1
	mov	sl, r0
	mov	r1, #120	@ 0x78
	add	r1, ip
	mov	r9, r1
	cmp	r3, #0
	bge	.L_6cfd4
	b	.L_6d1ec
.L_6cfd4:
	ldr	r1, .L_6d210
	lsl	r0, r5, #3
	add	r5, r0, r1
	ldrh	r0, [r5, #4]
	cmp	r3, r0
	ble	.L_6cfe2
	b	.L_6d1ec
.L_6cfe2:
	mov	r1, ip
	strh	r2, [r1, #2]
	lsr	r0, r4, #6
	sub	r0, #2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r0, #0
	bge	.L_6cff4
	mov	r2, #0
.L_6cff4:
	mov	r0, ip
	strh	r2, [r0, #4]
	mov	r1, #14
	mov	r8, r1
	ldrh	r0, [r5, #6]
	cmp	r0, #14
	bge	.L_6d004
	mov	r8, r0
.L_6d004:
	mov	r2, r8
	lsl	r2, r2, #2
	mov	r8, r2
	mov	r0, ip
	strb	r2, [r0, #0]
	ldrh	r0, [r5, #4]
	mov	r2, ip
	ldrh	r1, [r2, #4]
	mul	r0, r1
	ldrh	r1, [r2, #2]
	add	r4, r0, r1
	mov	r7, #0
	cmp	r7, r8
	blt	.L_6d022
	b	.L_6d1ec
.L_6d022:
	add	r6, r5, #0
	ldr	r5, .L_6d214
	mov	r3, ip
	add	r3, #6
.L_6d02a:
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	blt	.L_6d076
	b	.L_6d1ec
.L_6d076:
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	blt	.L_6d0c2
	b	.L_6d1ec
.L_6d0c2:
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	bge	.L_6d1ec
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	bge	.L_6d1ec
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	bge	.L_6d1ec
	ldr	r1, [r6, #0]
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	lsl	r2, r0, #2
	ldr	r1, [r5, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r2, #1
	add	r3, #2
	ldr	r1, [r5, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	add	r3, #2
	add	r7, #4
	ldrh	r0, [r6, #4]
	add	r4, r4, r0
	cmp	r7, r8
	bge	.L_6d1ec
	b	.L_6d02a
.L_6d1ec:
	mov	r5, sl
	mov	ip, r9
	cmp	r5, #2
	bgt	.L_6d1f6
	b	.L_6cf5a
.L_6d1f6:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6d208:
	.4byte	gBg2YPosition
.L_6d20c:
	.4byte	gBg2XPosition
.L_6d210:
	.4byte	gBackgroundInfo
.L_6d214:
	.4byte	gUnk_30031F4


thumb_func_start func_806D218
func_806D218:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r1, .L_6d39c
	mov	r0, #0
.L_6d224:
	ldrb	r7, [r1, #0]
	add	r2, r0, #1
	mov	r8, r2
	mov	r2, #120	@ 0x78
	add	r2, r2, r1
	mov	r9, r2
	cmp	r7, #0
	bne	.L_6d236
	b	.L_6d386
.L_6d236:
	lsl	r3, r0, #12
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	add	r6, r3, r0
	ldrh	r2, [r1, #2]
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_6d24c
	ldr	r0, .L_6d3a0
	add	r6, r3, r0
.L_6d24c:
	mov	r0, #15
	and	r2, r0
	lsl	r0, r2, #2
	add	r6, r6, r0
	ldrh	r4, [r1, #4]
	mov	r5, #0
	cmp	r5, r7
	blt	.L_6d25e
	b	.L_6d386
.L_6d25e:
	mov	r2, #15
	mov	ip, r2
	add	r3, r1, #6
.L_6d264:
	add	r0, r4, #0
	mov	r1, ip
	and	r0, r1
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	add	r0, r4, #0
	mov	r2, ip
	and	r0, r2
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	add	r0, r4, #0
	mov	r1, ip
	and	r0, r1
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	add	r0, r4, #0
	mov	r2, ip
	and	r0, r2
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	add	r0, r4, #0
	mov	r1, ip
	and	r0, r1
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	add	r0, r4, #0
	mov	r2, ip
	and	r0, r2
	lsl	r0, r0, #7
	add	r0, r0, r6
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #2]
	add	r3, #2
	add	r2, r0, #0
	add	r2, #64	@ 0x40
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #0]
	add	r3, #2
	add	r0, #66	@ 0x42
	ldrh	r1, [r3, #0]
	strh	r1, [r0, #0]
	add	r3, #2
	add	r5, #4
	add	r4, #1
	cmp	r5, r7
	bge	.L_6d386
	b	.L_6d264
.L_6d386:
	mov	r0, r8
	mov	r1, r9
	cmp	r0, #2
	bgt	.L_6d390
	b	.L_6d224
.L_6d390:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6d39c:
	.4byte	gUnk_30037C0
.L_6d3a0:
	.4byte	0x6000800


thumb_func_start func_806D3A4
func_806D3A4:
	ldr	r2, .L_6d3bc
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_6d3b8
.L_6d3b0:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_6d3b0
.L_6d3b8:
	bx	lr
	.align	2, 0
.L_6d3bc:
	.4byte	0x40000D4
