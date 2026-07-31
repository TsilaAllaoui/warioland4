
.align 2, 0
.global SpawnSecondarySprite
.thumb
.type SpawnSecondarySprite, %function
SpawnSecondarySprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	ip, r0
	lsl	r1, r1, #16
	lsr	r7, r1, #16
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	mov	r8, r2
	mov	r4, #0
	mov	r2, #0
	ldr	r0, .L_76780
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_76750
.L_7670c:
	add	r2, #1
	cmp	r2, #7
	bgt	.L_76722
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7670c
	mov	r4, #1
.L_76722:
	cmp	r4, #0
	bne	.L_76750
	mov	r5, #255	@ 0xff
	mov	r2, #0
	ldr	r0, .L_76780
	add	r3, r0, #2
.L_7672e:
	ldrb	r0, [r3, #0]
	mov	r1, #0
	cmp	r0, #73	@ 0x49
	bhi	.L_76738
	ldrb	r1, [r3, #2]
.L_76738:
	cmp	r4, r1
	bcs	.L_76742
	add	r4, r1, #0
	lsl	r0, r2, #24
	lsr	r5, r0, #24
.L_76742:
	add	r3, #12
	add	r2, #1
	cmp	r2, #7
	ble	.L_7672e
	cmp	r5, #255	@ 0xff
	beq	.L_76774
	add	r2, r5, #0
.L_76750:
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r6
	mov	r2, #0
	mov	r1, #1
	strb	r1, [r0, #0]
	mov	r1, #0
	mov	r3, ip
	strh	r3, [r0, #8]
	strh	r7, [r0, #10]
	strh	r2, [r0, #6]
	strb	r1, [r0, #1]
	mov	r2, r8
	strb	r2, [r0, #2]
	strb	r1, [r0, #3]
	strb	r1, [r0, #4]
	strb	r1, [r0, #5]
.L_76774:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_76780:
	.4byte	gSecondarySpriteData
