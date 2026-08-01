.syntax divided
.align 2, 0
.global UpdateVortexCutsceneAffine
.thumb
.type UpdateVortexCutsceneAffine, %function
UpdateVortexCutsceneAffine:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_7fff0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7fff8
	ldr	r0, .L_7fff4
	ldrh	r1, [r0, #0]
	add	r1, #5
	b	.L_7fffe
	.align	2, 0
.L_7fff0:
	.4byte	gUnk_3003C34
.L_7fff4:
	.4byte	gUnk_3003D68
.L_7fff8:
	ldr	r0, .L_800e0
	ldrh	r1, [r0, #0]
	add	r1, #251	@ 0xfb
.L_7fffe:
	mov	r2, #255	@ 0xff
	and	r1, r2
	strh	r1, [r0, #0]
	add	r7, r0, #0
	ldr	r0, .L_800e4
	mov	r8, r0
	ldrh	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #2
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r5, .L_800e8
	strh	r0, [r5, #4]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #6]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #8]
	ldrh	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #10]
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	mov	r3, #128	@ 0x80
	sub	r1, r3, r1
	lsl	r1, r1, #8
	mov	r0, #4
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #4
	sub	r0, r0, r2
	lsl	r0, r0, #3
	sub	r1, r1, r0
	mov	r0, #6
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #2
	add	r0, r0, r2
	lsl	r0, r0, #4
	sub	r1, r1, r0
	str	r1, [r5, #12]
	mov	r1, #2
	ldrsh	r0, [r5, r1]
	sub	r3, r3, r0
	lsl	r3, r3, #8
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #4
	sub	r0, r0, r1
	lsl	r0, r0, #3
	sub	r3, r3, r0
	mov	r0, #10
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #4
	sub	r3, r3, r0
	str	r3, [r5, #16]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_800e0:
	.4byte	gUnk_3003D68
.L_800e4:
	.4byte	sSinCosTable
.L_800e8:
	.4byte	gStageEntryHorizontalScroll
.size UpdateVortexCutsceneAffine, .-UpdateVortexCutsceneAffine
