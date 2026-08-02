.syntax divided
.align 2, 0
.global RenderPauseScreenOam
.thumb
.type RenderPauseScreenOam, %function
RenderPauseScreenOam:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	mov	r6, #0
	ldr	r0, .L_891c4
	ldrb	r1, [r0, #0]
	mov	ip, r1
	lsl	r0, r1, #3
	ldr	r4, .L_891c8
	add	r7, r0, r4
	ldr	r2, .L_891cc
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_891d0
	ldr	r5, [r3, #0]
	mov	r8, r5
	lsl	r0, r0, #3
	add	r0, r8
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r5, r2, #0
	cmp	r0, r1
	bcs	.L_8911a
	mov	r1, #1
	strh	r1, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r8
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8911a
	strh	r6, [r5, #2]
	ldr	r0, .L_891d4
	cmp	r8, r0
	bne	.L_8911a
	strh	r1, [r5, #2]
.L_8911a:
	ldrh	r0, [r5, #2]
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r0, ip
	cmp	r0, #128	@ 0x80
	ble	.L_89132
	b	.L_898dc
.L_89132:
	cmp	r6, ip
	bge	.L_891a2
	ldr	r1, .L_891c8
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r1, .L_891d8
	mov	r9, r1
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	mov	r0, ip
	sub	r6, r0, r6
.L_8914c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #4]
	lsl	r0, r0, #2
	ldr	r1, .L_891dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #4]
	lsl	r0, r0, #2
	ldr	r1, .L_891e0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_891e4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_8914c
	mov	r6, ip
.L_891a2:
	add	r2, r5, #0
	ldrb	r0, [r2, #4]
	sub	r0, #3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_8926a
	ldr	r0, .L_891e8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_891f0
	ldr	r1, .L_891ec
	ldrb	r0, [r2, #4]
	sub	r0, #3
	lsl	r0, r0, #2
	b	.L_891fa
	.align	2, 0
.L_891c4:
	.4byte	gOamSlotsUsed
.L_891c8:
	.4byte	gOamBuffer
.L_891cc:
	.4byte	gPauseScreenState
.L_891d0:
	.4byte	gPauseScreenAnimation
.L_891d4:
	.4byte	sUnk_86D3F58
.L_891d8:
	.4byte	0x000001ff
.L_891dc:
	.4byte	sUnk_86D36B8
.L_891e0:
	.4byte	sUnk_86D36A4
.L_891e4:
	.4byte	0xfffffe00
.L_891e8:
	.4byte	gLanguage
.L_891ec:
	.4byte	sUnk_86D370C
.L_891f0:
	ldr	r1, .L_895a0
	ldrb	r0, [r5, #4]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r1, #8
.L_891fa:
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_8920e
	b	.L_898dc
.L_8920e:
	cmp	r6, ip
	bge	.L_8926a
	ldr	r1, .L_895a4
	ldr	r0, .L_895a8
	mov	r8, r0
	ldr	r2, .L_895ac
	mov	r9, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	mov	r0, ip
	sub	r6, r0, r6
.L_89228:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89228
	mov	r6, ip
.L_8926a:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r5, .L_895a4
	add	r2, r2, r5
	mov	r4, #0
	mov	r0, #32
	mov	sl, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_895ac
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #176	@ 0xb0
	orr	r0, r1
	strh	r0, [r2, #2]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r0, .L_895b0
	mov	r8, r0
	and	r0, r1
	mov	r1, #203	@ 0xcb
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, #96	@ 0x60
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r1, .L_895a4
	add	r2, r2, r1
	mov	r0, sl
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r3, #63	@ 0x3f
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r9, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #184	@ 0xb8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #132	@ 0x84
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r0, .L_895a4
	add	r2, r2, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #200	@ 0xc8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #134	@ 0x86
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r0, .L_895a4
	add	r2, r2, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, #112	@ 0x70
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	mov	r2, #5
	add	ip, r2
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r1, r6, #3
	ldr	r0, .L_895a4
	add	r1, r1, r0
	mov	r2, sl
	strb	r2, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r3, #0
	and	r0, r2
	mov	r2, r9
	orr	r0, r2
	strb	r0, [r1, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #40	@ 0x28
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r3, r0
	mov	r5, #128	@ 0x80
	orr	r3, r5
	strb	r3, [r1, #3]
	strh	r4, [r7, #0]
	ldrh	r0, [r1, #4]
	mov	r2, r8
	and	r2, r0
	mov	r0, #148	@ 0x94
	orr	r2, r0
	strh	r2, [r1, #4]
	ldrb	r0, [r1, #5]
	mov	r5, #15
	and	r5, r0
	mov	r0, #112	@ 0x70
	orr	r5, r0
	strb	r5, [r1, #5]
	add	r6, #1
	add	r7, #4
	mov	r5, #0
	str	r5, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #8]
.L_8940c:
	ldr	r1, [sp, #0]
	ldr	r2, .L_895b4
	add	r0, r1, r2
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_894d2
	ldr	r0, .L_895b8
	ldr	r5, [sp, #8]
	add	r0, r5, r0
	ldr	r3, [r0, #0]
	ldr	r2, .L_895bc
	add	r5, r5, r2
	ldrh	r1, [r5, #0]
	add	r1, #1
	strh	r1, [r5, #0]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_89452
	mov	r0, #1
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_89452
	strh	r0, [r5, #2]
.L_89452:
	ldr	r1, [sp, #8]
	add	r0, r1, r2
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r2, ip
	cmp	r2, #128	@ 0x80
	ble	.L_8946c
	b	.L_898dc
.L_8946c:
	cmp	r6, ip
	bge	.L_894d2
	ldr	r5, .L_895c0
	mov	r9, r5
	ldr	r0, .L_895ac
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r8, r1
	ldr	r4, .L_895c4
	lsl	r0, r6, #3
	ldr	r2, .L_895a4
	add	r5, r0, r2
	mov	r0, ip
	sub	r6, r0, r6
.L_8948a:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r5, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_895a8
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r5, #5]
	add	r7, #4
	add	r5, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_8948a
	mov	r6, ip
.L_894d2:
	ldr	r0, .L_895c8
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_8956c
	ldr	r5, [sp, #0]
	ldr	r0, .L_895b4
	add	r1, r5, r0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8956c
	ldr	r0, .L_895cc
	ldrb	r1, [r1, #0]
	sub	r1, #1
	lsl	r1, r1, #4
	ldr	r2, [sp, #8]
	add	r1, r2, r1
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_89506
	b	.L_898dc
.L_89506:
	cmp	r6, ip
	bge	.L_8956c
	ldr	r0, .L_895c0
	mov	r9, r0
	ldr	r1, .L_895ac
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	ldr	r4, .L_895c4
	lsl	r0, r6, #3
	ldr	r1, .L_895a4
	add	r5, r0, r1
	mov	r2, ip
	sub	r6, r2, r6
.L_89524:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r5, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r0, .L_895a8
	and	r1, r0
	ldrh	r2, [r5, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r5, #5]
	add	r7, #4
	add	r5, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89524
	mov	r6, ip
.L_8956c:
	ldr	r1, [sp, #8]
	add	r1, #4
	str	r1, [sp, #8]
	ldr	r2, [sp, #0]
	add	r2, #1
	str	r2, [sp, #0]
	cmp	r2, #3
	bgt	.L_8957e
	b	.L_8940c
.L_8957e:
	ldr	r5, .L_895c8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_8962c
	ldr	r0, .L_895d0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	cmp	r6, ip
	bge	.L_8962c
	ldr	r1, .L_895a4
	ldr	r0, .L_895c0
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	b	.L_895d4
.L_895a0:
	.4byte	sUnk_86D370C
.L_895a4:
	.4byte	gOamBuffer
.L_895a8:
	.4byte	0x000001ff
.L_895ac:
	.4byte	0xfffffe00
.L_895b0:
	.4byte	0xfffffc00
.L_895b4:
	.4byte	gPauseJewelPieceStates
.L_895b8:
	.4byte	sUnk_86D36FC
.L_895bc:
	.4byte	gPauseJewelAnimationStates
.L_895c0:
	.4byte	sUnk_86D36CC
.L_895c4:
	.4byte	gUnk_3003C4A
.L_895c8:
	.4byte	gPauseAllJewelPiecesCollected
.L_895cc:
	.4byte	sUnk_86D36DC
.L_895d0:
	.4byte	sUnk_86D3DB0
.L_895d4:
	mov	r9, r2
	ldr	r5, .L_89808
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r5, .L_8980c
	mov	r0, ip
	sub	r6, r0, r6
.L_895e4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r5
	ldrh	r2, [r4, #2]
	ldr	r0, .L_89810
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_895e4
	mov	r6, ip
.L_8962c:
	ldr	r2, .L_89814
	ldrb	r4, [r2, #0]
	cmp	r4, #1
	beq	.L_89652
	ldr	r3, .L_89818
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_89706
.L_89652:
	ldr	r3, .L_89824
	cmp	r4, #1
	bne	.L_8965a
	ldr	r3, .L_89828
.L_8965a:
	ldr	r2, .L_8982c
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
	bcs	.L_8968a
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
	bne	.L_8968a
	strh	r0, [r2, #2]
.L_8968a:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_896a0
	b	.L_898dc
.L_896a0:
	cmp	r6, ip
	bge	.L_89706
	ldr	r1, .L_89830
	ldr	r0, .L_89834
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	ldr	r5, .L_89808
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r5, .L_8980c
	mov	r0, ip
	sub	r6, r0, r6
.L_896be:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r5
	ldrh	r2, [r4, #2]
	ldr	r0, .L_89810
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_896be
	mov	r6, ip
.L_89706:
	ldr	r0, .L_89838
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #1
	bls	.L_89732
	ldr	r3, .L_89818
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	bge	.L_897e2
.L_89732:
	ldr	r0, .L_89808
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_897e2
	ldr	r3, .L_8983c
	cmp	r4, #1
	bhi	.L_89742
	ldr	r3, .L_89840
.L_89742:
	ldr	r2, .L_89844
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
	bcs	.L_89772
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
	bne	.L_89772
	strh	r0, [r2, #2]
.L_89772:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r2, ip
	cmp	r2, #128	@ 0x80
	ble	.L_89788
	b	.L_898dc
.L_89788:
	cmp	r6, ip
	bge	.L_897e2
	ldr	r1, .L_89830
	ldr	r5, .L_8980c
	mov	r8, r5
	ldr	r0, .L_89810
	mov	r9, r0
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	sub	r6, r2, r6
.L_897a0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #200	@ 0xc8
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_897a0
	mov	r6, ip
.L_897e2:
	ldr	r2, .L_89848
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	ldr	r0, .L_8984c
	cmp	r1, r0
	ble	.L_898d6
	ldr	r0, .L_89850
	cmp	r1, r0
	ble	.L_89858
	ldr	r0, .L_89854
	b	.L_8986e
	.align	2, 0
.L_89808:
	.4byte	gUnk_3003C4A
.L_8980c:
	.4byte	0x000001ff
.L_89810:
	.4byte	0xfffffe00
.L_89814:
	.4byte	gCollectedKeyzer
.L_89818:
	.4byte	gCurrentCollection
.L_8981c:
	.4byte	gCurrentStageNumber
.L_89820:
	.4byte	gCurrentPassage
.L_89824:
	.4byte	sUnk_86D3D08
.L_89828:
	.4byte	sUnk_86D3CF8
.L_8982c:
	.4byte	gPauseKeyzerAnimationState
.L_89830:
	.4byte	gOamBuffer
.L_89834:
	.4byte	sUnk_86D36D4
.L_89838:
	.4byte	gCollectedCD
.L_8983c:
	.4byte	sUnk_86D3FD0
.L_89840:
	.4byte	sUnk_86D3F80
.L_89844:
	.4byte	gPauseCdAnimationState
.L_89848:
	.4byte	gHighScoreTable
.L_8984c:
	.4byte	0x00000257
.L_89850:
	.4byte	0x000003e7
.L_89854:
	.4byte	sUnk_86D4008
.L_89858:
	ldr	r0, .L_89864
	cmp	r1, r0
	ble	.L_8986c
	ldr	r0, .L_89868
	b	.L_8986e
	.align	2, 0
.L_89864:
	.4byte	0x0000031f
.L_89868:
	.4byte	sUnk_86D4018
.L_8986c:
	ldr	r0, .L_898ec
.L_8986e:
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	bgt	.L_898dc
	cmp	r6, ip
	bge	.L_898d6
	ldr	r1, .L_898f0
	ldr	r0, .L_898f4
	mov	r8, r0
	ldr	r2, .L_898f8
	mov	r9, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	mov	r0, ip
	sub	r6, r0, r6
.L_89896:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #48	@ 0x30
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #168	@ 0xa8
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89896
.L_898d6:
	mov	r0, ip
	ldr	r5, .L_898fc
	strb	r0, [r5, #0]
.L_898dc:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_898ec:
	.4byte	sUnk_86D4028
.L_898f0:
	.4byte	gOamBuffer
.L_898f4:
	.4byte	0x000001ff
.L_898f8:
	.4byte	0xfffffe00
.L_898fc:
	.4byte	gOamSlotsUsed
