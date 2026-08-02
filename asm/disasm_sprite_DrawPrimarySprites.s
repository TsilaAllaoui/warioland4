	.align 2, 0
	.global DrawPrimarySprites
	.thumb_func
	.type DrawPrimarySprites, %function
DrawPrimarySprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_1d964
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_1d974
	mov	r4, #0
	ldr	r0, .L_1d968
	mov	r8, r0
	ldr	r5, .L_1d96c
	ldr	r6, .L_1d970
.L_1d8dc:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #3
	bne	.L_1d914
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	DrawCurrentPrimarySprite
.L_1d914:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d8dc
	mov	r4, #0
	ldr	r7, .L_1d968
	mov	r8, r7
	ldr	r5, .L_1d96c
	ldr	r6, .L_1d970
.L_1d924:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1d95c
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	DrawCurrentPrimarySprite
.L_1d95c:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d924
	b	.L_1da58
.L_1d964:
	.4byte	gCurrentStageNumber
.L_1d968:
	.4byte	gSpriteData
.L_1d96c:
	.4byte	gCurrentSprite
.L_1d970:
	.4byte	gCurrentSpriteOamData
.L_1d974:
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1d97e:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #3
	bne	.L_1d9b6
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	DrawCurrentPrimarySprite
.L_1d9b6:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d97e
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1d9c6:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1da04
	ldrb	r0, [r2, #23]
	cmp	r0, #14
	beq	.L_1da04
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	DrawCurrentPrimarySprite
.L_1da04:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d9c6
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1da14:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1da52
	ldrb	r0, [r2, #23]
	cmp	r0, #14
	bne	.L_1da52
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	DrawCurrentPrimarySprite
.L_1da52:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1da14
.L_1da58:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1da64:
	.4byte	gSpriteData
.L_1da68:
	.4byte	gCurrentSprite
.L_1da6c:
	.4byte	gCurrentSpriteOamData


	.size DrawPrimarySprites, .-DrawPrimarySprites
