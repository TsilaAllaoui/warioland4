	.align 2, 0
	.global UpdateCurrentSpriteVisibility
	.thumb_func
	.type UpdateCurrentSpriteVisibility, %function
UpdateCurrentSpriteVisibility:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	ldr	r1, .L_1dda0
	ldrh	r0, [r1, #0]
	mov	sl, r0
	mov	r0, #1
	mov	r2, sl
	and	r0, r2
	mov	ip, r1
	cmp	r0, #0
	bne	.L_1dd0c
	b	.L_1de64
.L_1dd0c:
	ldr	r0, .L_1dda4
	ldrh	r0, [r0, #0]
	mov	r8, r0
	ldr	r0, .L_1dda8
	ldrh	r0, [r0, #0]
	str	r0, [sp, #0]
	ldrh	r3, [r1, #8]
	mov	r9, r3
	ldrh	r7, [r1, #10]
	str	r7, [sp, #4]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r3, r0, #0
	mov	r2, r8
	add	r1, r2, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r7, r9
	add	r0, r7, r3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r0, ip
	add	r0, #33	@ 0x21
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #8]
	mov	r0, ip
	add	r0, #32
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #2
	add	r0, r0, r2
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r7, [sp, #0]
	add	r0, r7, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, [sp, #4]
	add	r3, r1, r3
	lsl	r3, r3, #16
	mov	r1, ip
	add	r1, #34	@ 0x22
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	sub	r2, r0, r1
	lsl	r2, r2, #16
	lsr	r4, r3, #16
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #2
	add	r1, r1, r7
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r2, r3
	bcs	.L_1ddac
	cmp	r4, r0
	bcs	.L_1ddac
	ldr	r0, [sp, #8]
	cmp	r0, r6
	bcs	.L_1ddac
	cmp	r6, r5
	bcs	.L_1ddac
	mov	r0, #2
	mov	r1, sl
	orr	r0, r1
	mov	r2, ip
	strh	r0, [r2, #0]
	b	.L_1de64
.L_1dda0:
	.4byte	gCurrentSprite
.L_1dda4:
	.4byte	gBg1YPosition
.L_1dda8:
	.4byte	gBg1XPosition
.L_1ddac:
	mov	r3, ip
	ldrh	r1, [r3, #0]
	ldr	r0, .L_1de30
	and	r0, r1
	strh	r0, [r3, #0]
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #2
	add	r2, r7, #0
	mov	r0, r8
	add	r1, r0, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r3, r9
	add	r0, r3, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r7, .L_1de34
	add	r3, r7, #0
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r0, #152	@ 0x98
	lsl	r0, r0, #3
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r1, [sp, #0]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r7, [sp, #4]
	add	r2, r7, r2
	lsl	r2, r2, #16
	add	r3, r0, r3
	lsl	r3, r3, #16
	lsr	r1, r2, #16
	mov	r7, #192	@ 0xc0
	lsl	r7, r7, #3
	add	r0, r0, r7
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r3, r2
	bcs	.L_1de0e
	cmp	r1, r0
	bcs	.L_1de0e
	cmp	r6, r4
	bcs	.L_1de0e
	cmp	r4, r5
	bcc	.L_1de64
.L_1de0e:
	mov	r3, ip
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_1de64
	mov	r0, #16
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_1de38
	strh	r2, [r3, #0]
	b	.L_1de64
.L_1de30:
	.4byte	0x0000fffd
.L_1de34:
	.4byte	0xfffffdc0
.L_1de38:
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r1, #23]
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_1de64
	ldr	r1, .L_1de74
	ldr	r0, .L_1de78
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	mov	r2, ip
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r1, r0, r1
	ldrb	r2, [r1, #0]
	mov	r0, #15
	and	r0, r2
	cmp	r0, #1
	bne	.L_1de64
	sub	r0, r2, #1
	strb	r0, [r1, #0]
.L_1de64:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1de74:
	.4byte	gPersistentSpriteData
.L_1de78:
	.4byte	gCurrentRoom


	.size UpdateCurrentSpriteVisibility, .-UpdateCurrentSpriteVisibility
