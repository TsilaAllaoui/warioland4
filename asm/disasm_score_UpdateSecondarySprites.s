thumb_func_start UpdateSecondarySprites
UpdateSecondarySprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r6, #0
	ldr	r2, .L_752d8
	ldr	r0, .L_752dc
	mov	r8, r0
	mov	r9, r6
.L_7520e:
	mov	r1, r9
	add	r4, r1, r2
	ldrb	r1, [r4, #0]
	mov	r0, #5
	and	r0, r1
	cmp	r0, #5
	bne	.L_7524c
	ldr	r5, .L_752e0
	add	r1, r5, #0
	add	r0, r4, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldrb	r0, [r5, #2]
	lsl	r0, r0, #2
	add	r0, r8
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	ldrb	r1, [r5, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_75242
	add	r0, r6, #0
	bl	DrawCurrentSecondarySprite
.L_75242:
	add	r1, r4, #0
	add	r0, r5, #0
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldr	r2, .L_752d8
.L_7524c:
	mov	r7, #12
	add	r9, r7
	add	r6, #1
	cmp	r6, #7
	ble	.L_7520e
	mov	r6, #0
	ldr	r0, .L_752d8
	mov	r9, r0
	ldr	r1, .L_752dc
	mov	r8, r1
.L_75260:
	mov	r2, r9
	ldrb	r0, [r2, #0]
	mov	r4, #5
	and	r4, r0
	cmp	r4, #1
	bne	.L_75298
	ldr	r5, .L_752e0
	add	r1, r5, #0
	mov	r0, r9
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldrb	r0, [r5, #2]
	lsl	r0, r0, #2
	add	r0, r8
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	ldrb	r0, [r5, #0]
	and	r4, r0
	cmp	r4, #0
	beq	.L_75290
	add	r0, r6, #0
	bl	DrawCurrentSecondarySprite
.L_75290:
	mov	r1, r9
	add	r0, r5, #0
	ldmia	r0!, {r3, r4, r7}
	stmia	r1!, {r3, r4, r7}
.L_75298:
	mov	r0, #12
	add	r9, r0
	add	r6, #1
	cmp	r6, #7
	ble	.L_75260
	bl	UpdateStageTimerAndScoreDrain
	ldr	r0, .L_752e4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752b2
	bl	UploadStageScoreDigitTiles
.L_752b2:
	ldr	r0, .L_752e8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752be
	bl	UploadStageTimerDigitTiles
.L_752be:
	ldr	r0, .L_752ec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752ca
	bl	UploadStageTimerColonTiles
.L_752ca:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_752d8:
	.4byte	gSecondarySpriteData
.L_752dc:
	.4byte	sSecondarySpriteAITable
.L_752e0:
	.4byte	gCurrentSecondarySprite
.L_752e4:
	.4byte	gStageScoreDigitsDirty
.L_752e8:
	.4byte	gStageTimerDigitsState
.L_752ec:
	.4byte	gStageTimerColonState
